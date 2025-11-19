void sub_10075E178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (v39 < 0)
  {
    operator delete(v38);
  }

  sub_10001021C(&a14);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  sub_10042E114(&a30);
  _Unwind_Resume(a1);
}

BOOL sub_10075E230(uint64_t a1, std::string::size_type a2)
{
  v4 = (*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
  *v25 = 0u;
  v26 = 0u;
  sub_10075DC40(a1, a2, v25);
  if (BYTE8(v26) == 1)
  {
    __dst[0] = 0;
    __dst[1] = 0;
    v24 = 0;
    v5 = SBYTE7(v26);
    if (SBYTE7(v26) < 0)
    {
      sub_100005F2C(__dst, v25[0], v25[1]);
    }

    else
    {
      *__dst = *v25;
      v24 = v26;
    }

    v7 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = __dst;
      if (v24 < 0)
      {
        v8 = __dst[0];
      }

      *buf = 136446210;
      *&buf[4] = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Removing directory: %{public}s", buf, 0xCu);
    }

    v9 = (*(**(a1 + 64) + 112))(*(a1 + 64), __dst);
    v10 = *(a1 + 16);
    std::operator+<char>();
    v11 = std::string::append(&v21, ", ", 2uLL);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&__p, v9);
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

    v15 = std::string::append(&v22, p_p, size);
    v16 = *&v15->__r_.__value_.__l.__data_;
    *&buf[16] = *(&v15->__r_.__value_.__l + 2);
    *buf = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    sub_100A9B39C(a1 + 24, v10, buf);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    v6 = v9 == 0;
    if (v9)
    {
      v17 = *v4;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = __dst;
        if (v24 < 0)
        {
          v18 = __dst[0];
        }

        *buf = 136446466;
        *&buf[4] = v18;
        *&buf[12] = 2048;
        *&buf[14] = v9;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Failed to erase: %{public}s, error: %ld", buf, 0x16u);
      }
    }

    if (SHIBYTE(v24) < 0)
    {
      operator delete(__dst[0]);
      if ((v5 & 0x80000000) == 0)
      {
        return v6;
      }
    }

    else if ((v5 & 0x80000000) == 0)
    {
      return v6;
    }

    operator delete(v25[0]);
    return v6;
  }

  return 0;
}

void sub_10075E5D0(uint64_t a1, std::string::size_type a2, std::string::size_type a3)
{
  v6 = (*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
  v33 = 0u;
  v34 = 0u;
  sub_10075DC40(a1, a2, &v33);
  if (BYTE8(v34) != 1)
  {
    return;
  }

  memset(&__p, 0, sizeof(__p));
  v7 = SBYTE7(v34);
  if (SBYTE7(v34) < 0)
  {
    sub_100005F2C(&__p, v33, *(&v33 + 1));
  }

  else
  {
    *&__p.__r_.__value_.__l.__data_ = v33;
    __p.__r_.__value_.__r.__words[2] = v34;
  }

  v8 = *(a1 + 64);
  memset(&buf, 0, sizeof(buf));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(&buf, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    buf = __p;
  }

  ctu::path_join_impl();
  v9 = (*(*v8 + 88))(v8, &buf);
  v10 = v9;
  if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (!v9)
    {
      goto LABEL_51;
    }

LABEL_12:
    v11 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a3 + 23) >= 0)
      {
        v12 = a3;
      }

      else
      {
        v12 = *a3;
      }

      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136446466;
      *(buf.__r_.__value_.__r.__words + 4) = v12;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2082;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = p_p;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Removing %{public}s from: %{public}s", &buf, 0x16u);
    }

    v14 = *(a1 + 64);
    memset(&buf, 0, sizeof(buf));
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&buf, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      buf = __p;
    }

    ctu::path_join_impl();
    v15 = (*(*v14 + 112))(v14, &buf);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if (v15)
    {
      v16 = *v6;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a3 + 23) >= 0)
        {
          v17 = a3;
        }

        else
        {
          v17 = *a3;
        }

        v18 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v18 = __p.__r_.__value_.__r.__words[0];
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136446722;
        *(buf.__r_.__value_.__r.__words + 4) = v17;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2082;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v18;
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2048;
        v36 = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Failed to erase %{public}s from: %{public}s, error: %zu", &buf, 0x20u);
      }
    }

    v19 = *(a1 + 16);
    memset(&__dst, 0, sizeof(__dst));
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&__dst, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      __dst = __p;
    }

    ctu::path_join_impl();
    v20 = std::string::insert(&__dst, 0, "Erase file: ", 0xCuLL);
    v21 = *&v20->__r_.__value_.__l.__data_;
    v30.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
    *&v30.__r_.__value_.__l.__data_ = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v22 = std::string::append(&v30, ", ", 2uLL);
    v23 = *&v22->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v28, v15);
    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = &v28;
    }

    else
    {
      v24 = v28.__r_.__value_.__r.__words[0];
    }

    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v28.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v28.__r_.__value_.__l.__size_;
    }

    v26 = std::string::append(&v31, v24, size);
    v27 = *&v26->__r_.__value_.__l.__data_;
    buf.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
    *&buf.__r_.__value_.__l.__data_ = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    sub_100A9B39C(a1 + 24, v19, &buf);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    goto LABEL_51;
  }

  operator delete(buf.__r_.__value_.__l.__data_);
  if (v10)
  {
    goto LABEL_12;
  }

LABEL_51:
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v7 & 0x80000000) == 0)
    {
      return;
    }

LABEL_55:
    operator delete(v33);
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v7 < 0)
  {
    goto LABEL_55;
  }
}

void sub_10075EA7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (v42 < 0)
  {
    operator delete(*(v43 - 144));
  }

  _Unwind_Resume(exception_object);
}

void sub_10075EB58(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v37[0] = 0;
  v37[1] = 0;
  v38 = 0;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  sub_10000BB50(&v40, a2);
  ctu::basename();
  v6 = (*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
  if (((*(**(a1 + 64) + 88))(*(a1 + 64), v3) & 1) == 0)
  {
    *a3 = 0;
    *(a3 + 1232) = 0;
    goto LABEL_59;
  }

  theData = 0;
  (*(**(a1 + 64) + 168))(&theData);
  if (!theData)
  {
    v13 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v37;
      if (v38 < 0)
      {
        v14 = v37[0];
      }

      v40 = 136446210;
      *v41 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Failed to read existing XML: %{public}s", &v40, 0xCu);
    }

    *a3 = 0;
    *(a3 + 1232) = 0;
    goto LABEL_58;
  }

  __dst = 0;
  v34 = 0;
  v35 = 0;
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  sub_10065F5EC(&__dst, BytePtr, Length);
  v9 = HIBYTE(v35);
  if (v35 < 0)
  {
    v9 = v34;
  }

  if (!v9)
  {
    v15 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v37;
      if (v38 < 0)
      {
        v16 = v37[0];
      }

      v40 = 136315138;
      *v41 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Failed to parse XML: %s", &v40, 0xCu);
    }

    *a3 = 0;
    *(a3 + 1232) = 0;
    goto LABEL_56;
  }

  bzero(&v40, 0x4D8uLL);
  sub_100463BEC((a1 + 24), v6, &__dst, &v40);
  if (v51)
  {
    v32.__r_.__value_.__r.__words[0] = 0;
    v10 = (*(**(a1 + 64) + 240))(*(a1 + 64), v3, &v32);
    if (!v10)
    {
      v27 = *&v32.__r_.__value_.__l.__data_;
      v50 = *&v32.__r_.__value_.__l.__data_;
      v28 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        v29 = v37;
        if (v38 < 0)
        {
          v29 = v37[0];
        }

        *buf = 136446466;
        *&buf[4] = v29;
        *&buf[12] = 2048;
        *&buf[14] = v27;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I XML read: [%{public}s, created: %ld]", buf, 0x16u);
      }

      *a3 = 0;
      *(a3 + 1232) = 0;
      if (v51 == 1)
      {
        sub_100763A24(a3, &v40);
        *(a3 + 1224) = v50;
        *(a3 + 1232) = 1;
      }

      goto LABEL_44;
    }

    v11 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v37;
      if (v38 < 0)
      {
        v12 = v37[0];
      }

      *buf = 136446466;
      *&buf[4] = v12;
      *&buf[12] = 1024;
      *&buf[14] = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Invalid timestamp: %{public}s [%d]", buf, 0x12u);
    }
  }

  else
  {
    v17 = *v6;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v37;
      if (v38 < 0)
      {
        v18 = v37[0];
      }

      *buf = 136446210;
      *&buf[4] = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Removing invalid XML: %{public}s", buf, 0xCu);
    }

    v19 = (*(**(a1 + 64) + 112))(*(a1 + 64), v3);
    v20 = *(a1 + 16);
    std::operator+<char>();
    v21 = std::string::append(&v31, ", ", 2uLL);
    v22 = *&v21->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&__p, v19);
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

    v25 = std::string::append(&v32, p_p, size);
    v26 = *&v25->__r_.__value_.__l.__data_;
    *&buf[16] = *(&v25->__r_.__value_.__l + 2);
    *buf = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    sub_100A9B39C(a1 + 24, v20, buf);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }
  }

  *a3 = 0;
  *(a3 + 1232) = 0;
LABEL_44:
  if (v51 == 1)
  {
    if (v49[448] == 1)
    {
      sub_10038E6A4(v49);
    }

    if (v48 == 1)
    {
      sub_100009970(v47, v47[1]);
    }

    if (v46[528] == 1)
    {
      sub_10038E7C0(v46);
    }

    if (v45[24] == 1)
    {
      *buf = v45;
      sub_1002CB430(buf);
      sub_100009970(v44, v44[1]);
    }

    if (v43 == 1 && v42 < 0)
    {
      operator delete(*&v41[4]);
    }
  }

LABEL_56:
  if (SHIBYTE(v35) < 0)
  {
    operator delete(__dst);
  }

LABEL_58:
  sub_10002D760(&theData);
LABEL_59:
  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37[0]);
  }
}

void sub_10075F164(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, const void *a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, char a47)
{
  if (a45 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  sub_10038E5E8(&a47);
  if (a32 < 0)
  {
    operator delete(a27);
  }

  sub_10002D760(&a33);
  if (a39 < 0)
  {
    operator delete(a34);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10075F22C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1002CB0A8();
  __p[1] = 0;
  v11 = 0;
  __p[0] = 0;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v11 = *(a2 + 16);
  }

  ctu::path_join_impl();
  v6 = (*(**(a1 + 64) + 88))(*(a1 + 64), __p);
  if ((*(**(a1 + 64) + 240))(*(a1 + 64), __p, a3))
  {
    *a3 = 0;
    v7 = *(*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = __p;
      if (v11 < 0)
      {
        v8 = __p[0];
      }

      *buf = 136446210;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Unable to read timestamp: %{public}s", buf, 0xCu);
    }
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}

void sub_10075F408(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  __p[0] = 0;
  __p[1] = 0;
  v14 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v14 = *(a2 + 16);
  }

  ctu::path_join_impl();
  v5 = (*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
  if ((*(**(a1 + 64) + 88))(*(a1 + 64), __p))
  {
    theDict = 0;
    (*(**(a1 + 64) + 152))(&theDict);
    if (theDict)
    {
      CFDictionaryGetValue(theDict, @"Server");
      ctu::cf::assign();
      v10 = *v5;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = __p;
        if (v14 < 0)
        {
          v11 = __p[0];
        }

        *buf = 136446210;
        v16 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Missing keys in server information: %{public}s", buf, 0xCu);
      }

      *a3 = 0;
      a3[24] = 0;
    }

    else
    {
      v8 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        v9 = __p;
        if (v14 < 0)
        {
          v9 = __p[0];
        }

        *buf = 136446210;
        v16 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Missing server information: %{public}s", buf, 0xCu);
      }

      *a3 = 0;
      a3[24] = 0;
    }

    sub_10001021C(&theDict);
  }

  else
  {
    v6 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = __p;
      if (v14 < 0)
      {
        v7 = __p[0];
      }

      *buf = 136446210;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I File not found: %{public}s", buf, 0xCu);
    }

    *a3 = 0;
    a3[24] = 0;
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10075F720(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, const void *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  operator delete(v23);
  sub_10001021C(&a17);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10075F780(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  v6 = (*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
  v7 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v16 = *(a1 + 24);
    v17 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100A9C4F8(&v16, a2, &__p);
    if (v11 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    buf = 136446210;
    *buf_4 = p_p;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Preparing collection from directory: %{public}s", &buf, 0xCu);
    if (v11 < 0)
    {
      operator delete(__p);
    }

    if (v17)
    {
      sub_100004A34(v17);
    }
  }

  v15 = 0u;
  *__src = 0u;
  sub_10075F408(a1, a2, __src);
  if (BYTE8(v15))
  {
    __dst[1] = 0;
    __dst[0] = 0;
    v13 = 0;
    if (SBYTE7(v15) < 0)
    {
      sub_100005F2C(__dst, __src[0], __src[1]);
    }

    else
    {
      *__dst = *__src;
      v13 = v15;
    }

    bzero(&__p, 0x4D8uLL);
    sub_10038EB74();
  }

  if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
  {
    sub_10177CD94();
  }

  *a3 = 0;
  a3[1] = 0;
  if (BYTE8(v15) == 1 && SBYTE7(v15) < 0)
  {
    operator delete(__src[0]);
  }
}

void sub_10076069C(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10038E5E8(&STACK[0x5A0]);
  if (a3)
  {
    sub_100004A34(a3);
  }

  sub_10038E5E8(va);
  if (SLOBYTE(STACK[0x507]) < 0)
  {
    operator delete(STACK[0x4F0]);
  }

  if (LOBYTE(STACK[0x528]) == 1 && SLOBYTE(STACK[0x527]) < 0)
  {
    operator delete(STACK[0x510]);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1007607C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *v26 = 0u;
  v27 = 0u;
  sub_10075CD40(a1, a2, v26);
  if (BYTE8(v27))
  {
    v25 = 0;
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = a3;
    }

    else
    {
      v7 = *a3;
    }

    if (v6 >= 0)
    {
      v8 = *(a3 + 23);
    }

    else
    {
      v8 = *(a3 + 8);
    }

    v24 = 0;
    v25 = CFDataCreate(0, v7, v8);
    __dst[0] = 0;
    __dst[1] = 0;
    if ((BYTE8(v27) & 1) == 0)
    {
      sub_1000D1644();
    }

    if (SBYTE7(v27) < 0)
    {
      sub_100005F2C(__dst, v26[0], v26[1]);
    }

    else
    {
      *__dst = *v26;
      v24 = v27;
    }

    ctu::path_join_impl();
    v11 = (*(**(a1 + 64) + 200))(*(a1 + 64), __dst, v25, 0);
    v12 = *(**(a1 + 8) + 16);
    if (v11)
    {
      v13 = *v12();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 23) >= 0)
        {
          v14 = a2;
        }

        else
        {
          v14 = *a2;
        }

        v15 = *(a1 + 32);
        v21 = *(a1 + 24);
        v22 = v15;
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100A9C4F8(&v21, __dst, __p);
        if (v31 >= 0)
        {
          v16 = __p;
        }

        else
        {
          v16 = *__p;
        }

        *buf = 136446466;
        v33 = v14;
        v34 = 2082;
        v35 = v16;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I XML stored for [%{public}s] : %{public}s", buf, 0x16u);
        if (v31 < 0)
        {
          operator delete(*__p);
        }

        if (v22)
        {
          sub_100004A34(v22);
        }
      }

      if ((BYTE8(v27) & 1) == 0)
      {
        sub_1000D1644();
      }

      v10 = sub_10075C9DC(a1, a2, v26);
    }

    else
    {
      v17 = *v12();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        if ((BYTE8(v27) & 1) == 0)
        {
          sub_1000D1644();
        }

        v19 = v26;
        if (SBYTE7(v27) < 0)
        {
          v19 = v26[0];
        }

        if (*(a2 + 23) >= 0)
        {
          v20 = a2;
        }

        else
        {
          v20 = *a2;
        }

        *__p = 136446466;
        *&__p[4] = v19;
        v29 = 2082;
        v30 = v20;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to store to folder: [%{public}s] for server: [%{public}s]", __p, 0x16u);
      }

      v10 = 0;
    }

    if (SHIBYTE(v24) < 0)
    {
      operator delete(__dst[0]);
    }

    sub_10002D760(&v25);
  }

  else
  {
    v9 = (*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      sub_10177CE7C();
    }

    v10 = 0;
  }

  if (BYTE8(v27) == 1 && SBYTE7(v27) < 0)
  {
    operator delete(v26[0]);
  }

  return v10;
}

void sub_100760B44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_10002D760(&a17);
  if (a24 == 1 && a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100760BC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  *v24 = 0u;
  v25 = 0u;
  sub_10075CD40(a1, a2, v24);
  if (BYTE8(v25))
  {
    sub_10000501C(v30, "AttestationKey.txt");
    __p[0] = 0;
    __p[1] = 0;
    v23 = 0;
    if (SBYTE7(v25) < 0)
    {
      sub_100005F2C(__p, v24[0], v24[1]);
    }

    else
    {
      *__p = *v24;
      v23 = v25;
    }

    ctu::path_join_impl();
    if (v33 < 0)
    {
      operator delete(*v30);
    }

    v21 = 0;
    v8 = *(a3 + 23);
    if (v8 >= 0)
    {
      v9 = a3;
    }

    else
    {
      v9 = *a3;
    }

    if (v8 >= 0)
    {
      v10 = *(a3 + 23);
    }

    else
    {
      v10 = *(a3 + 8);
    }

    v21 = CFDataCreate(0, v9, v10);
    v7 = (*(**(a1 + 64) + 200))(*(a1 + 64), __p, v21, 0);
    v11 = *(**(a1 + 8) + 16);
    if (v7)
    {
      v12 = *v11();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v4 + 23) < 0)
        {
          v4 = *v4;
        }

        v13 = *(a1 + 32);
        v19 = *(a1 + 24);
        v20 = v13;
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100A9C4F8(&v19, __p, v30);
        if (v33 >= 0)
        {
          v14 = v30;
        }

        else
        {
          v14 = *v30;
        }

        *buf = 136446466;
        v27 = v4;
        v28 = 2082;
        v29 = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Attestation key stored for [%{public}s] : %{public}s", buf, 0x16u);
        if (v33 < 0)
        {
          operator delete(*v30);
        }

        if (v20)
        {
          sub_100004A34(v20);
        }
      }
    }

    else
    {
      v15 = *v11();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        if ((BYTE8(v25) & 1) == 0)
        {
          sub_1000D1644();
        }

        v17 = v24;
        if (SBYTE7(v25) < 0)
        {
          v17 = v24[0];
        }

        if (*(v4 + 23) >= 0)
        {
          v18 = v4;
        }

        else
        {
          v18 = *v4;
        }

        *v30 = 136446466;
        *&v30[4] = v17;
        v31 = 2082;
        v32 = v18;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to store to folder: [%{public}s] for server: [%{public}s]", v30, 0x16u);
      }
    }

    sub_10002D760(&v21);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v6 = (*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      sub_10177CEEC();
    }

    v7 = 0;
  }

  if (BYTE8(v25) == 1 && SBYTE7(v25) < 0)
  {
    operator delete(v24[0]);
  }

  return v7;
}

void sub_100760F18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, const void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  sub_10002D760(&a12);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a26 == 1 && a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

void sub_100760FC0(uint64_t a1@<X0>, std::string::size_type a2@<X1>, uint64_t a3@<X8>)
{
  v6 = (*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
  *v29 = 0u;
  v30 = 0u;
  sub_10075DC40(a1, a2, v29);
  if (BYTE8(v30))
  {
    memset(buf, 0, sizeof(buf));
    v28 = 0;
    sub_10000501C(__p, "AttestationKey.txt");
    memset(buf, 0, sizeof(buf));
    v28 = 0;
    v7 = SBYTE7(v30);
    if (SBYTE7(v30) < 0)
    {
      sub_100005F2C(buf, v29[0], v29[1]);
    }

    else
    {
      *buf = *v29;
      v28 = v30;
    }

    ctu::path_join_impl();
    if (SHIBYTE(v26) < 0)
    {
      operator delete(__p[0]);
    }

    if ((*(**(a1 + 64) + 88))(*(a1 + 64), buf))
    {
      theData = 0;
      (*(**(a1 + 64) + 168))(&theData);
      if (theData)
      {
        __p[0] = 0;
        __p[1] = 0;
        v26 = 0;
        BytePtr = CFDataGetBytePtr(theData);
        Length = CFDataGetLength(theData);
        sub_10065F5EC(__p, BytePtr, Length);
        v11 = HIBYTE(v26);
        v12 = HIBYTE(v26);
        if (v26 < 0)
        {
          v11 = __p[1];
        }

        if (v11)
        {
          *a3 = *__p;
          *(a3 + 16) = v26;
        }

        else
        {
          v17 = *v6;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = *(a1 + 32);
            v20 = *(a1 + 24);
            v21 = v18;
            if (v18)
            {
              atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            sub_100A9C4F8(&v20, buf, v31);
            if (v32 >= 0)
            {
              v19 = v31;
            }

            else
            {
              v19 = *v31;
            }

            *v33 = 136315138;
            v34 = v19;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Failed to parse attestation file: %s", v33, 0xCu);
            if (v32 < 0)
            {
              operator delete(*v31);
            }

            if (v21)
            {
              sub_100004A34(v21);
            }

            v12 = HIBYTE(v26);
          }

          *a3 = 0;
          *(a3 + 8) = 0;
          *(a3 + 16) = 0;
          if (v12 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      else
      {
        v14 = *v6;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(a1 + 32);
          v22 = *(a1 + 24);
          v23 = v15;
          if (v15)
          {
            atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_100A9C4F8(&v22, buf, __p);
          if (v26 >= 0)
          {
            v16 = __p;
          }

          else
          {
            v16 = __p[0];
          }

          *v31 = 136446210;
          *&v31[4] = v16;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Failed to read existing XML: %{public}s", v31, 0xCu);
          if (SHIBYTE(v26) < 0)
          {
            operator delete(__p[0]);
          }

          if (v23)
          {
            sub_100004A34(v23);
          }
        }

        *a3 = 0;
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
      }

      sub_10002D760(&theData);
    }

    else
    {
      v13 = *(*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I No stored attestation key", __p, 2u);
      }

      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
    }

    if ((SHIBYTE(v28) & 0x80000000) == 0)
    {
      if ((v7 & 0x80000000) == 0)
      {
        return;
      }

LABEL_48:
      operator delete(v29[0]);
      return;
    }

    operator delete(*buf);
    if (v7 < 0)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v8 = *(*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I No stored server folder", buf, 2u);
    }

    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }
}

void sub_100761424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, const void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_10002D760(&a14);
  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1007614DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  *v21 = 0u;
  v22 = 0u;
  sub_10075CD40(a1, a2, v21);
  if (BYTE8(v22))
  {
    sub_10000501C(v27, "Vapid.txt");
    __p[0] = 0;
    __p[1] = 0;
    v20 = 0;
    if (SBYTE7(v22) < 0)
    {
      sub_100005F2C(__p, v21[0], v21[1]);
    }

    else
    {
      *__p = *v21;
      v20 = v22;
    }

    ctu::path_join_impl();
    if (v30 < 0)
    {
      operator delete(*v27);
    }

    v18 = 0;
    v18 = CFDataCreate(0, *a3, *(a3 + 8) - *a3);
    v7 = (*(**(a1 + 64) + 200))(*(a1 + 64), __p, v18, 0);
    v8 = *(**(a1 + 8) + 16);
    if (v7)
    {
      v9 = *v8();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v4 + 23) < 0)
        {
          v4 = *v4;
        }

        v10 = *(a1 + 32);
        v16 = *(a1 + 24);
        v17 = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100A9C4F8(&v16, __p, v27);
        if (v30 >= 0)
        {
          v11 = v27;
        }

        else
        {
          v11 = *v27;
        }

        *buf = 136446466;
        v24 = v4;
        v25 = 2082;
        v26 = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I VAPID stored for [%{public}s] : %{public}s", buf, 0x16u);
        if (v30 < 0)
        {
          operator delete(*v27);
        }

        if (v17)
        {
          sub_100004A34(v17);
        }
      }
    }

    else
    {
      v12 = *v8();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        if ((BYTE8(v22) & 1) == 0)
        {
          sub_1000D1644();
        }

        v14 = v21;
        if (SBYTE7(v22) < 0)
        {
          v14 = v21[0];
        }

        if (*(v4 + 23) >= 0)
        {
          v15 = v4;
        }

        else
        {
          v15 = *v4;
        }

        *v27 = 136446466;
        *&v27[4] = v14;
        v28 = 2082;
        v29 = v15;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to store VAPID to folder: [%{public}s] for server: [%{public}s]", v27, 0x16u);
      }
    }

    sub_10002D760(&v18);
    if (SHIBYTE(v20) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v6 = (*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      sub_10177CF5C();
    }

    v7 = 0;
  }

  if (BYTE8(v22) == 1 && SBYTE7(v22) < 0)
  {
    operator delete(v21[0]);
  }

  return v7;
}

void sub_100761820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, const void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  sub_10002D760(&a12);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a26 == 1 && a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

void sub_1007618C8(uint64_t a1@<X0>, std::string::size_type a2@<X1>, void **a3@<X8>)
{
  v6 = (*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
  *v27 = 0u;
  v28 = 0u;
  sub_10075DC40(a1, a2, v27);
  if (BYTE8(v28))
  {
    memset(buf, 0, sizeof(buf));
    v26 = 0;
    sub_10000501C(&__p, "Vapid.txt");
    memset(buf, 0, sizeof(buf));
    v26 = 0;
    if (SBYTE7(v28) < 0)
    {
      sub_100005F2C(buf, v27[0], v27[1]);
    }

    else
    {
      *buf = *v27;
      v26 = v28;
    }

    ctu::path_join_impl();
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p);
    }

    if ((*(**(a1 + 64) + 88))(*(a1 + 64), buf))
    {
      theData = 0;
      (*(**(a1 + 64) + 168))(&theData);
      if (theData)
      {
        __p = 0;
        v23 = 0;
        v24 = 0;
        BytePtr = CFDataGetBytePtr(theData);
        v9 = CFDataGetBytePtr(theData);
        Length = CFDataGetLength(theData);
        __p = 0;
        v23 = 0;
        v24 = 0;
        sub_1000DCF88(&__p, BytePtr, &v9[Length], &v9[Length] - BytePtr);
        v12 = __p;
        v11 = v23;
        if (__p == v23)
        {
          v15 = *v6;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = *(a1 + 32);
            v18 = *(a1 + 24);
            v19 = v16;
            if (v16)
            {
              atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            sub_100A9C4F8(&v18, buf, v29);
            if (v30 >= 0)
            {
              v17 = v29;
            }

            else
            {
              v17 = v29[0];
            }

            *v31 = 136315138;
            v32 = v17;
            _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to read VAPID file: %s", v31, 0xCu);
            if (v30 < 0)
            {
              operator delete(v29[0]);
            }

            if (v19)
            {
              sub_100004A34(v19);
            }

            v12 = __p;
          }

          *a3 = 0;
          a3[1] = 0;
          a3[2] = 0;
          if (v12)
          {
            v23 = v12;
            operator delete(v12);
          }
        }

        else
        {
          *a3 = __p;
          a3[1] = v11;
          a3[2] = v24;
        }
      }

      else
      {
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
        {
          v14 = *(a1 + 32);
          v20[0] = *(a1 + 24);
          v20[1] = v14;
          if (v14)
          {
            atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
          }

          sub_100A9C4F8(v20, buf, &__p);
          sub_10177CFCC();
        }

        *a3 = 0;
        a3[1] = 0;
        a3[2] = 0;
      }

      sub_10002D760(&theData);
    }

    else
    {
      v13 = *(*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I No stored VAPID key", &__p, 2u);
      }

      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(*buf);
    }

    if ((BYTE8(v28) & 1) != 0 && SBYTE7(v28) < 0)
    {
      operator delete(v27[0]);
    }
  }

  else
  {
    v7 = *(*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I No stored server folder", buf, 2u);
    }

    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_100761CF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, const void *a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a13)
  {
    sub_100004A34(a13);
  }

  sub_10002D760(&a14);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100761DA8(uint64_t a1, std::string::size_type a2)
{
  v4 = (*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
  *v14 = 0u;
  v15 = 0u;
  sub_10075DC40(a1, a2, v14);
  if (BYTE8(v15))
  {
    sub_10000501C(__p, "Vapid.txt");
    v12[0] = 0;
    v12[1] = 0;
    v13 = 0;
    v5 = SBYTE7(v15);
    if (SBYTE7(v15) < 0)
    {
      sub_100005F2C(v12, v14[0], v14[1]);
    }

    else
    {
      *v12 = *v14;
      v13 = v15;
    }

    ctu::path_join_impl();
    if (v17 < 0)
    {
      operator delete(*__p);
    }

    if ((*(**(a1 + 64) + 88))(*(a1 + 64), v12))
    {
      v8 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v12;
        if (v13 < 0)
        {
          v9 = v12[0];
        }

        *__p = 136446210;
        *&__p[4] = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Removing file: %{public}s", __p, 0xCu);
      }

      if (!(*(**(a1 + 64) + 112))(*(a1 + 64), v12))
      {
        v7 = 1;
LABEL_20:
        if (SHIBYTE(v13) < 0)
        {
          operator delete(v12[0]);
          if ((v5 & 0x80000000) == 0)
          {
            return v7;
          }
        }

        else if ((v5 & 0x80000000) == 0)
        {
          return v7;
        }

        operator delete(v14[0]);
        return v7;
      }

      if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
      {
        sub_10177D03C();
      }
    }

    else
    {
      v10 = *(*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I No stored VAPID key", __p, 2u);
      }
    }

    v7 = 0;
    goto LABEL_20;
  }

  v6 = *(*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
  v7 = 0;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12[0]) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I No stored server folder", v12, 2u);
    return 0;
  }

  return v7;
}

void sub_1007620B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (v28 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100762124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  *v24 = 0u;
  v25 = 0u;
  sub_10075CD40(a1, a2, v24);
  if (BYTE8(v25))
  {
    sub_10000501C(v30, "PushURL.txt");
    __p[0] = 0;
    __p[1] = 0;
    v23 = 0;
    if (SBYTE7(v25) < 0)
    {
      sub_100005F2C(__p, v24[0], v24[1]);
    }

    else
    {
      *__p = *v24;
      v23 = v25;
    }

    ctu::path_join_impl();
    if (v33 < 0)
    {
      operator delete(*v30);
    }

    v21 = 0;
    v8 = *(a3 + 23);
    if (v8 >= 0)
    {
      v9 = a3;
    }

    else
    {
      v9 = *a3;
    }

    if (v8 >= 0)
    {
      v10 = *(a3 + 23);
    }

    else
    {
      v10 = *(a3 + 8);
    }

    v21 = CFDataCreate(0, v9, v10);
    v7 = (*(**(a1 + 64) + 200))(*(a1 + 64), __p, v21, 0);
    v11 = *(**(a1 + 8) + 16);
    if (v7)
    {
      v12 = *v11();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v4 + 23) < 0)
        {
          v4 = *v4;
        }

        v13 = *(a1 + 32);
        v19 = *(a1 + 24);
        v20 = v13;
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100A9C4F8(&v19, __p, v30);
        if (v33 >= 0)
        {
          v14 = v30;
        }

        else
        {
          v14 = *v30;
        }

        *buf = 136446466;
        v27 = v4;
        v28 = 2082;
        v29 = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Push URL stored for [%{public}s] : %{public}s", buf, 0x16u);
        if (v33 < 0)
        {
          operator delete(*v30);
        }

        if (v20)
        {
          sub_100004A34(v20);
        }
      }
    }

    else
    {
      v15 = *v11();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        if ((BYTE8(v25) & 1) == 0)
        {
          sub_1000D1644();
        }

        v17 = v24;
        if (SBYTE7(v25) < 0)
        {
          v17 = v24[0];
        }

        if (*(v4 + 23) >= 0)
        {
          v18 = v4;
        }

        else
        {
          v18 = *v4;
        }

        *v30 = 136446466;
        *&v30[4] = v17;
        v31 = 2082;
        v32 = v18;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to store Push URL to folder: [%{public}s] for server: [%{public}s]", v30, 0x16u);
      }
    }

    sub_10002D760(&v21);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v6 = (*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      sub_10177D0B8();
    }

    v7 = 0;
  }

  if (BYTE8(v25) == 1 && SBYTE7(v25) < 0)
  {
    operator delete(v24[0]);
  }

  return v7;
}

void sub_100762478(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, const void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  sub_10002D760(&a12);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a26 == 1 && a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

void sub_100762520(uint64_t a1@<X0>, std::string::size_type a2@<X1>, uint64_t a3@<X8>)
{
  v6 = (*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
  *v27 = 0u;
  v28 = 0u;
  sub_10075DC40(a1, a2, v27);
  if (BYTE8(v28))
  {
    __dst[0] = 0;
    __dst[1] = 0;
    v26 = 0;
    sub_10000501C(__p, "PushURL.txt");
    __dst[0] = 0;
    __dst[1] = 0;
    v26 = 0;
    v7 = SBYTE7(v28);
    if (SBYTE7(v28) < 0)
    {
      sub_100005F2C(__dst, v27[0], v27[1]);
    }

    else
    {
      *__dst = *v27;
      v26 = v28;
    }

    ctu::path_join_impl();
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p[0]);
    }

    if ((*(**(a1 + 64) + 88))(*(a1 + 64), __dst))
    {
      theData = 0;
      (*(**(a1 + 64) + 168))(&theData);
      if (theData)
      {
        __p[0] = 0;
        __p[1] = 0;
        v24 = 0;
        BytePtr = CFDataGetBytePtr(theData);
        v10 = CFDataGetBytePtr(theData);
        Length = CFDataGetLength(theData);
        sub_1001E0090(__p, BytePtr, &v10[Length], &v10[Length] - BytePtr);
        v12 = HIBYTE(v24);
        v13 = HIBYTE(v24);
        if (v24 < 0)
        {
          v12 = __p[1];
        }

        if (v12)
        {
          *a3 = *__p;
          *(a3 + 16) = v24;
        }

        else
        {
          v16 = *v6;
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = *(a1 + 32);
            v19 = *(a1 + 24);
            v20 = v17;
            if (v17)
            {
              atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            sub_100A9C4F8(&v19, __dst, v29);
            if (v30 >= 0)
            {
              v18 = v29;
            }

            else
            {
              v18 = v29[0];
            }

            *buf = 136315138;
            v32 = v18;
            _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to read Push URL file: %s", buf, 0xCu);
            if (v30 < 0)
            {
              operator delete(v29[0]);
            }

            if (v20)
            {
              sub_100004A34(v20);
            }

            v13 = HIBYTE(v24);
          }

          *a3 = 0;
          *(a3 + 8) = 0;
          *(a3 + 16) = 0;
          if (v13 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      else
      {
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
        {
          v15 = *(a1 + 32);
          v21[0] = *(a1 + 24);
          v21[1] = v15;
          if (v15)
          {
            atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
          }

          sub_100A9C4F8(v21, __dst, __p);
          sub_10177D1A0();
        }

        *a3 = 0;
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
      }

      sub_10002D760(&theData);
    }

    else
    {
      v14 = (*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
      if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
      {
        sub_10177D164();
      }

      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
    }

    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
      if ((v7 & 0x80000000) == 0)
      {
        return;
      }

LABEL_32:
      operator delete(v27[0]);
      return;
    }

    operator delete(__dst[0]);
    if (v7 < 0)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v8 = (*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      sub_10177D128();
    }

    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }
}

void sub_100762908(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, const void *a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_10002D760(&a13);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1007629C0(uint64_t a1, std::string::size_type a2)
{
  v4 = (*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
  *v14 = 0u;
  v15 = 0u;
  sub_10075DC40(a1, a2, v14);
  if (BYTE8(v15))
  {
    sub_10000501C(__p, "PushURL.txt");
    v12[0] = 0;
    v12[1] = 0;
    v13 = 0;
    v5 = SBYTE7(v15);
    if (SBYTE7(v15) < 0)
    {
      sub_100005F2C(v12, v14[0], v14[1]);
    }

    else
    {
      *v12 = *v14;
      v13 = v15;
    }

    ctu::path_join_impl();
    if (v17 < 0)
    {
      operator delete(*__p);
    }

    if ((*(**(a1 + 64) + 88))(*(a1 + 64), v12))
    {
      v8 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v12;
        if (v13 < 0)
        {
          v9 = v12[0];
        }

        *__p = 136446210;
        *&__p[4] = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Removing file: %{public}s", __p, 0xCu);
      }

      if (!(*(**(a1 + 64) + 112))(*(a1 + 64), v12))
      {
        v7 = 1;
LABEL_21:
        if (SHIBYTE(v13) < 0)
        {
          operator delete(v12[0]);
          if ((v5 & 0x80000000) == 0)
          {
            return v7;
          }
        }

        else if ((v5 & 0x80000000) == 0)
        {
          return v7;
        }

        operator delete(v14[0]);
        return v7;
      }

      if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
      {
        sub_10177D03C();
      }
    }

    else
    {
      v10 = (*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
      {
        sub_10177D164();
      }
    }

    v7 = 0;
    goto LABEL_21;
  }

  v6 = (*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
  {
    sub_10177D128();
  }

  return 0;
}

void sub_100762C88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (v28 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_100762CF8(uint64_t a1, const char *a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v31 = 0;
  if (*(a1 + 63) < 0)
  {
    sub_100005F2C(__p, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    *__p = *(a1 + 40);
    v31 = *(a1 + 56);
  }

  ctu::path_join_impl();
  v29 = 0;
  theDict = 0;
  (*(**(a1 + 64) + 152))(&theDict);
  v4 = theDict;
  if (theDict)
  {
    if (a2[23] >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    ctu::cf::MakeCFString::MakeCFString(key, v5);
    Value = CFDictionaryGetValue(v4, *key);
    v7 = Value;
    LODWORD(v28) = 0;
    if (Value)
    {
      v8 = CFGetTypeID(Value);
      if (v8 == CFNumberGetTypeID())
      {
        ctu::cf::assign(&v28, v7, v9);
      }
    }

    v10 = v28;
    ctu::cf::MakeCFString::~MakeCFString(key);
    v11 = v10 + 1;
    if ((v10 + 1) >= 5)
    {
      v12 = *(*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        if (a2[23] >= 0)
        {
          v13 = a2;
        }

        else
        {
          v13 = *a2;
        }

        *key = 136446210;
        *&key[4] = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Forbidden-rety-count has reached maximum for: %{public}s", key, 0xCu);
      }

      v11 = 5;
    }

    v14 = kCFAllocatorDefault;
    MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, theDict);
    v16 = v29;
    v29 = MutableCopy;
    *key = v16;
    sub_1000296E0(key);
  }

  else
  {
    v14 = kCFAllocatorDefault;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v18 = v29;
      v29 = Mutable;
      *key = v18;
      sub_1000296E0(key);
    }

    v11 = 1;
  }

  sub_10001021C(&theDict);
  theDict = 0;
  *key = v11;
  v19 = CFNumberCreate(v14, kCFNumberLongLongType, key);
  if (v19)
  {
    theDict = v19;
    *key = 0;
    sub_100029A48(key);
    v20 = theDict;
  }

  else
  {
    v20 = 0;
  }

  v28 = v20;
  theDict = 0;
  sub_100029A48(&theDict);
  v21 = v29;
  if (a2[23] >= 0)
  {
    v22 = a2;
  }

  else
  {
    v22 = *a2;
  }

  ctu::cf::MakeCFString::MakeCFString(key, v22);
  CFDictionarySetValue(v21, *key, v20);
  ctu::cf::MakeCFString::~MakeCFString(key);
  v23 = *(*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    if (a2[23] >= 0)
    {
      v24 = a2;
    }

    else
    {
      v24 = *a2;
    }

    *key = 136446466;
    *&key[4] = v24;
    v34 = 1024;
    LODWORD(v35) = v11;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Storing forbidden-rety-count for: %{public}s as: %u", key, 0x12u);
  }

  if (((*(**(a1 + 64) + 184))(*(a1 + 64), __p, v29, 0) & 1) == 0)
  {
    v25 = *(*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = __p;
      if (v31 < 0)
      {
        v26 = __p[0];
      }

      if (a2[23] >= 0)
      {
        v27 = a2;
      }

      else
      {
        v27 = *a2;
      }

      *key = 136446466;
      *&key[4] = v26;
      v34 = 2082;
      v35 = v27;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to store forbidden count to folder %{public}s for server: [%{public}s]", key, 0x16u);
    }
  }

  sub_100029A48(&v28);
  sub_1000296E0(&v29);
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10076315C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17, __int16 a18, char a19, char a20)
{
  sub_10001021C(&a17);
  sub_1000296E0(&a10);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1007631F4(uint64_t a1, uint64_t a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v14 = 0;
  if (*(a1 + 63) < 0)
  {
    sub_100005F2C(__p, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    *__p = *(a1 + 40);
    v14 = *(a1 + 56);
  }

  ctu::path_join_impl();
  v12 = 0;
  (*(**(a1 + 64) + 152))(&v12);
  v4 = v12;
  if (v12)
  {
    if (*(a2 + 23) >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    ctu::cf::MakeCFString::MakeCFString(&key, v5);
    Value = CFDictionaryGetValue(v4, key);
    v7 = Value;
    v15 = 0;
    if (Value)
    {
      v8 = CFGetTypeID(Value);
      if (v8 == CFNumberGetTypeID())
      {
        ctu::cf::assign(&v15, v7, v9);
        v7 = v15 > 4;
      }

      else
      {
        v7 = 0;
      }
    }

    ctu::cf::MakeCFString::~MakeCFString(&key);
  }

  else
  {
    v7 = 0;
  }

  sub_10001021C(&v12);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  return v7;
}

void sub_100763330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  sub_10001021C(&a10);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100763370(uint64_t a1, std::string::size_type a2)
{
  v30 = &v30;
  v31 = &v30;
  v32 = 0;
  v4 = (*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
  v5 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    v7 = *(a1 + 32);
    v28 = *(a1 + 24);
    v29 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100A9C4F8(&v28, (a1 + 40), v37);
    if ((v37[23] & 0x80u) == 0)
    {
      v8 = v37;
    }

    else
    {
      v8 = *v37;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136446466;
    *(buf.__r_.__value_.__r.__words + 4) = v6;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2082;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Attempting to find %{public}s in: %{public}s", &buf, 0x16u);
    if (v37[23] < 0)
    {
      operator delete(*v37);
    }

    if (v29)
    {
      sub_100004A34(v29);
    }
  }

  v9 = (a1 + 40);
  v10 = (*(**(a1 + 64) + 96))(*(a1 + 64), a1 + 40, &v30, 1);
  if (v10)
  {
    v11 = *v4;
    v12 = os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT);
    v13 = 0;
    if (v12)
    {
      if (*(a1 + 63) < 0)
      {
        v9 = *v9;
      }

      *v37 = 136446466;
      *&v37[4] = v9;
      *&v37[12] = 2048;
      *&v37[14] = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Failed to gather contents of: %{public}s, error: %zu", v37, 0x16u);
      v13 = 0;
    }
  }

  else
  {
    memset(v37, 0, sizeof(v37));
    for (i = v31; i != &v30; i = i[1])
    {
      ctu::basename();
      sub_1000D1054(v37, &buf);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }
    }

    v15 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000D1184(*v37, *&v37[8], ", ", 2uLL, &buf);
      v16 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
      LODWORD(__dst.__r_.__value_.__l.__data_) = 136446210;
      *(__dst.__r_.__value_.__r.__words + 4) = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Available files/dirs: %{public}s", &__dst, 0xCu);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }
    }

    v17 = v31;
    if (v31 == &v30)
    {
LABEL_62:
      v13 = 0;
    }

    else
    {
      while (1)
      {
        memset(&buf, 0, sizeof(buf));
        if (*(v17 + 39) < 0)
        {
          sub_100005F2C(&buf, v17[2], v17[3]);
        }

        else
        {
          buf = *(v17 + 2);
        }

        v18 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
        if ((*(**(a1 + 64) + 224))(*(a1 + 64), v18))
        {
          memset(&__dst, 0, sizeof(__dst));
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_100005F2C(&__dst, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
          }

          else
          {
            __dst = buf;
          }

          ctu::path_join_impl();
          if ((*(**(a1 + 64) + 88))(*(a1 + 64), &__dst))
          {
            v20 = *v4;
            if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
            {
              v21 = *(a1 + 32);
              v24 = *(a1 + 24);
              v25 = v21;
              if (v21)
              {
                atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              sub_100A9C4F8(&v24, &__dst, __p);
              if (v27 >= 0)
              {
                v22 = __p;
              }

              else
              {
                v22 = __p[0];
              }

              *v33 = 136446210;
              v34 = v22;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Server was provisioned: %{public}s", v33, 0xCu);
              if (v27 < 0)
              {
                operator delete(__p[0]);
              }

              if (v25)
              {
                sub_100004A34(v25);
              }
            }

            v19 = 1;
          }

          else
          {
            v19 = 0;
          }

          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v19 = 12;
        }

        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        if (v19 != 12 && v19)
        {
          break;
        }

        v17 = v17[1];
        if (v17 == &v30)
        {
          goto LABEL_62;
        }
      }

      v13 = 1;
    }

    buf.__r_.__value_.__r.__words[0] = v37;
    sub_1000087B4(&buf);
  }

  sub_10042E114(&v30);
  return v13;
}

void sub_100763898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  a30 = (v35 - 128);
  sub_1000087B4(&a30);
  sub_10042E114(&a18);
  _Unwind_Resume(a1);
}

uint64_t sub_100763934(uint64_t a1)
{
  v2 = sub_100A2B1D8();
  sub_10000501C(__p, v2);
  v3 = sub_100763370(a1, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_100763990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007639AC(uint64_t a1)
{
  v2 = sub_1006491D4();
  sub_10000501C(__p, v2);
  v3 = sub_100763370(a1, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_100763A08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100763A24(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 32) = 0;
  if (*(a2 + 32) == 1)
  {
    *a1 = *a2;
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    *(a1 + 32) = 1;
  }

  v5 = *(a2 + 40);
  v6 = *(a2 + 56);
  *(a1 + 64) = 0;
  v7 = (a1 + 64);
  *(a1 + 56) = v6;
  *(a1 + 40) = v5;
  *(a1 + 112) = 0;
  if (*(a2 + 112) == 1)
  {
    sub_100465C84(v7, a2 + 64);
    *(a1 + 112) = 1;
  }

  *(a1 + 120) = 0;
  *(a1 + 648) = 0;
  if (*(a2 + 648) == 1)
  {
    sub_100763D98(a1 + 120, (a2 + 120));
    *(a1 + 648) = 1;
  }

  sub_10076400C(a1 + 656, (a2 + 656));
  *(a1 + 720) = 0;
  *(a1 + 1168) = 0;
  if (*(a2 + 1168) == 1)
  {
    v8 = *(a2 + 720);
    *(a1 + 736) = *(a2 + 736);
    *(a1 + 720) = v8;
    *(a1 + 744) = 0;
    *(a1 + 832) = 0;
    if (*(a2 + 832) == 1)
    {
      v9 = *(a2 + 744);
      *(a1 + 760) = *(a2 + 760);
      *(a1 + 744) = v9;
      *(a2 + 760) = 0;
      *(a2 + 752) = 0;
      *(a2 + 744) = 0;
      v10 = *(a2 + 768);
      *(a1 + 784) = *(a2 + 784);
      *(a1 + 768) = v10;
      *(a2 + 784) = 0;
      *(a2 + 776) = 0;
      *(a2 + 768) = 0;
      v11 = *(a2 + 792);
      *(a1 + 808) = *(a2 + 808);
      *(a1 + 792) = v11;
      *(a2 + 808) = 0;
      *(a2 + 800) = 0;
      *(a2 + 792) = 0;
      v12 = *(a2 + 816);
      *(a1 + 824) = *(a2 + 824);
      *(a1 + 816) = v12;
      *(a1 + 832) = 1;
    }

    *(a1 + 840) = 0;
    *(a1 + 976) = 0;
    if (*(a2 + 976) == 1)
    {
      v13 = *(a2 + 840);
      *(a1 + 856) = *(a2 + 856);
      *(a1 + 840) = v13;
      v14 = *(a2 + 864);
      *(a1 + 880) = *(a2 + 880);
      *(a1 + 864) = v14;
      *(a2 + 872) = 0u;
      *(a2 + 864) = 0;
      v15 = *(a2 + 888);
      *(a1 + 904) = *(a2 + 904);
      *(a1 + 888) = v15;
      *(a2 + 896) = 0u;
      *(a2 + 888) = 0;
      v16 = *(a2 + 912);
      *(a1 + 928) = *(a2 + 928);
      *(a1 + 912) = v16;
      *(a2 + 928) = 0;
      *(a2 + 912) = 0u;
      v17 = *(a2 + 936);
      *(a1 + 952) = *(a2 + 952);
      *(a1 + 936) = v17;
      *(a2 + 952) = 0;
      *(a2 + 936) = 0u;
      *(a1 + 960) = *(a2 + 960);
      *(a1 + 976) = 1;
    }

    *(a1 + 984) = 0;
    *(a1 + 1080) = 0;
    if (*(a2 + 1080) == 1)
    {
      v18 = *(a2 + 984);
      v19 = *(a2 + 1000);
      *(a1 + 1016) = *(a2 + 1016);
      *(a1 + 984) = v18;
      *(a1 + 1000) = v19;
      v20 = *(a2 + 1024);
      *(a1 + 1040) = *(a2 + 1040);
      *(a1 + 1024) = v20;
      *(a2 + 1040) = 0;
      *(a2 + 1032) = 0;
      *(a2 + 1024) = 0;
      *(a1 + 1048) = 0;
      *(a1 + 1072) = 0;
      if (*(a2 + 1072) == 1)
      {
        v21 = *(a2 + 1048);
        *(a1 + 1064) = *(a2 + 1064);
        *(a1 + 1048) = v21;
        *(a2 + 1064) = 0;
        *(a2 + 1056) = 0;
        *(a2 + 1048) = 0;
        *(a1 + 1072) = 1;
      }

      *(a1 + 1080) = 1;
    }

    *(a1 + 1088) = 0;
    *(a1 + 1128) = 0;
    if (*(a2 + 1128) == 1)
    {
      v22 = *(a2 + 1088);
      *(a1 + 1104) = *(a2 + 1104);
      *(a1 + 1088) = v22;
      *(a2 + 1104) = 0;
      *(a2 + 1096) = 0;
      *(a2 + 1088) = 0;
      *(a1 + 1112) = *(a2 + 1112);
      *(a1 + 1128) = 1;
    }

    *(a1 + 1136) = 0;
    *(a1 + 1160) = 0;
    if (*(a2 + 1160) == 1)
    {
      v23 = *(a2 + 1136);
      *(a1 + 1152) = *(a2 + 1152);
      *(a1 + 1136) = v23;
      *(a2 + 1152) = 0;
      *(a2 + 1144) = 0;
      *(a2 + 1136) = 0;
      *(a1 + 1160) = 1;
    }

    *(a1 + 1168) = 1;
  }

  v24 = *(a2 + 1176);
  v25 = *(a2 + 1208);
  *(a1 + 1192) = *(a2 + 1192);
  *(a1 + 1208) = v25;
  *(a1 + 1176) = v24;
  return a1;
}

__n128 sub_100763D98(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v2;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    v3 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v3;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    *(a1 + 48) = 1;
  }

  *(a1 + 56) = *(a2 + 7);
  v4 = a2 + 4;
  v5 = *(a2 + 8);
  *(a1 + 64) = v5;
  v6 = a1 + 64;
  v7 = *(a2 + 9);
  *(a1 + 72) = v7;
  if (v7)
  {
    *(v5 + 16) = v6;
    *(a2 + 7) = v4;
    *v4 = 0;
    *(a2 + 9) = 0;
  }

  else
  {
    *(a1 + 56) = v6;
  }

  *(a1 + 80) = *(a2 + 10);
  v8 = a2 + 11;
  v9 = *(a2 + 11);
  *(a1 + 88) = v9;
  v10 = a1 + 88;
  v11 = *(a2 + 12);
  *(a1 + 96) = v11;
  if (v11)
  {
    *(v9 + 16) = v10;
    *(a2 + 10) = v8;
    *v8 = 0;
    *(a2 + 12) = 0;
  }

  else
  {
    *(a1 + 80) = v10;
  }

  v12 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 15);
  *(a1 + 104) = v12;
  *(a2 + 14) = 0;
  *(a2 + 15) = 0;
  *(a2 + 13) = 0;
  v13 = a2[8];
  *(a1 + 144) = *(a2 + 18);
  *(a1 + 128) = v13;
  *(a2 + 17) = 0;
  *(a2 + 18) = 0;
  *(a2 + 16) = 0;
  v14 = *(a2 + 152);
  *(a1 + 168) = *(a2 + 21);
  *(a1 + 152) = v14;
  v15 = a2[11];
  *(a1 + 192) = *(a2 + 24);
  *(a1 + 176) = v15;
  *(a2 + 22) = 0;
  *(a2 + 23) = 0;
  *(a2 + 24) = 0;
  v16 = *(a2 + 200);
  *(a1 + 216) = *(a2 + 27);
  *(a1 + 200) = v16;
  *(a2 + 25) = 0;
  *(a2 + 26) = 0;
  *(a2 + 27) = 0;
  v17 = a2[14];
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 224) = v17;
  *(a2 + 28) = 0;
  *(a2 + 29) = 0;
  *(a2 + 30) = 0;
  v18 = *(a2 + 248);
  *(a1 + 264) = *(a2 + 33);
  *(a1 + 248) = v18;
  *(a2 + 31) = 0;
  *(a2 + 32) = 0;
  *(a2 + 33) = 0;
  v19 = a2[17];
  *(a1 + 288) = *(a2 + 36);
  *(a1 + 272) = v19;
  *(a2 + 34) = 0;
  *(a2 + 35) = 0;
  *(a2 + 36) = 0;
  v20 = *(a2 + 296);
  *(a1 + 312) = *(a2 + 39);
  *(a1 + 296) = v20;
  *(a2 + 37) = 0;
  *(a2 + 38) = 0;
  *(a2 + 39) = 0;
  v21 = a2[20];
  *(a1 + 336) = *(a2 + 42);
  *(a1 + 320) = v21;
  *(a2 + 40) = 0;
  *(a2 + 41) = 0;
  *(a2 + 42) = 0;
  v22 = *(a2 + 344);
  *(a1 + 360) = *(a2 + 45);
  *(a1 + 344) = v22;
  *(a2 + 43) = 0;
  *(a2 + 44) = 0;
  *(a2 + 45) = 0;
  v23 = a2[23];
  *(a1 + 384) = *(a2 + 48);
  *(a1 + 368) = v23;
  *(a2 + 46) = 0;
  *(a2 + 47) = 0;
  *(a2 + 48) = 0;
  v24 = *(a2 + 392);
  *(a1 + 408) = *(a2 + 51);
  *(a1 + 392) = v24;
  *(a2 + 49) = 0;
  *(a2 + 50) = 0;
  *(a2 + 51) = 0;
  v25 = a2[26];
  *(a1 + 432) = *(a2 + 54);
  *(a1 + 416) = v25;
  *(a2 + 52) = 0;
  *(a2 + 53) = 0;
  *(a2 + 54) = 0;
  v26 = *(a2 + 440);
  *(a1 + 456) = *(a2 + 57);
  *(a1 + 440) = v26;
  *(a2 + 55) = 0;
  *(a2 + 56) = 0;
  *(a2 + 57) = 0;
  v27 = a2[29];
  *(a1 + 480) = *(a2 + 60);
  *(a1 + 464) = v27;
  *(a2 + 58) = 0;
  *(a2 + 59) = 0;
  *(a2 + 60) = 0;
  result = *(a2 + 488);
  v29 = *(a2 + 504);
  *(a1 + 520) = *(a2 + 260);
  *(a1 + 488) = result;
  *(a1 + 504) = v29;
  return result;
}

uint64_t sub_10076400C(uint64_t result, __int128 *a2)
{
  *result = 0;
  *(result + 56) = 0;
  if (*(a2 + 56) == 1)
  {
    v2 = *a2;
    *(result + 11) = *(a2 + 11);
    *result = v2;
    *(result + 32) = *(a2 + 4);
    v3 = a2 + 5;
    v4 = *(a2 + 5);
    *(result + 40) = v4;
    v5 = result + 40;
    v6 = *(a2 + 6);
    *(result + 48) = v6;
    if (v6)
    {
      *(v4 + 16) = v5;
      *(a2 + 4) = v3;
      *v3 = 0;
      *(a2 + 6) = 0;
    }

    else
    {
      *(result + 32) = v5;
    }

    *(result + 56) = 1;
  }

  return result;
}

uint64_t *sub_100764124(void **a1, uint64_t **a2, unint64_t a3)
{
  v3 = a1;
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      v5 = *a2;
      if (sub_1000068BC(*a2 + 2, a1 + 2) >= 1)
      {
        v7 = *v5;
        v6 = v5[1];
        *(v7 + 8) = v6;
        *v6 = v7;
        v8 = *v3;
        v8[1] = v5;
        *v5 = v8;
        *v3 = v5;
        v5[1] = v3;
        return v5;
      }
    }

    else
    {
      v10 = a3 >> 1;
      v11 = (a3 >> 1) + 1;
      v12 = a1;
      do
      {
        v12 = v12[1];
        --v11;
      }

      while (v11 > 1);
      v13 = sub_100764124(a1, v12, a3 >> 1);
      v3 = sub_100764124(v12, a2, a3 - v10);
      if (sub_1000068BC(v3 + 2, (v13 + 16)) < 1)
      {
        v19 = *(v13 + 8);
        i = v3;
        v3 = v13;
      }

      else
      {
          ;
        }

        v15 = *i;
        v16 = *(*i + 1);
        v17 = *v3;
        v17[1] = v16;
        *v16 = v17;
        v18 = *v13;
        v19 = *(v13 + 8);
        v18[1] = v3;
        *v3 = v18;
        *v13 = v15;
        v15[1] = v13;
      }

      if (v19 != i && i != a2)
      {
        v20 = i;
        do
        {
          if (sub_1000068BC(i + 2, v19 + 2) < 1)
          {
            v19 = v19[1];
          }

          else
          {
              ;
            }

            v22 = *j;
            v23 = *(*j + 1);
            v24 = *i;
            v24[1] = v23;
            *v23 = v24;
            if (v20 == i)
            {
              v20 = j;
            }

            v26 = *v19;
            v25 = v19[1];
            v26[1] = i;
            *i = v26;
            *v19 = v22;
            v22[1] = v19;
            v19 = v25;
            i = j;
          }
        }

        while (v19 != v20 && i != a2);
      }
    }
  }

  return v3;
}

void CSIRadioModulePrivate::ModuleResetInvoker::~ModuleResetInvoker(CSIRadioModulePrivate::ModuleResetInvoker *this)
{
  *this = off_101E78CA8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

{
  *this = off_101E78CA8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void CSIRadioModulePrivate::ModuleResetInvoker::reset(CSIRadioModulePrivate::ModuleResetInvoker *this, const char *a2, uint64_t a3)
{
  v4 = *(this + 2);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(this + 1);
      if (v9)
      {
        (*(*v9 + 160))(v9, a2, a3);
      }

      sub_100004A34(v8);
    }
  }
}

uint64_t CSIRadioModulePrivate::CSIRadioModulePrivate(uint64_t a1, uint64_t *a2)
{
  *a1 = off_101E2A308;
  *(a1 + 8) = off_101EAA468;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = off_101E65D98;
  LogGroupName = sGetLogGroupName();
  ctu::OsLogContext::OsLogContext(&v11, kCtLoggingSystemName, LogGroupName);
  ctu::OsLogLogger::OsLogLogger(v12, &v11);
  ctu::OsLogLogger::OsLogLogger((a1 + 40), v12);
  ctu::OsLogLogger::~OsLogLogger(v12);
  ctu::OsLogContext::~OsLogContext(&v11);
  *a1 = off_101E78CD8;
  *(a1 + 8) = off_101E78F40;
  *(a1 + 16) = off_101E78F68;
  *(a1 + 48) = dispatch_queue_create("CSIRadioModulePrivate", 0);
  ATCSMutex::ATCSMutex((a1 + 56), "radio module lock");
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  sub_10000501C(&__p, "RadioModule");
  v5 = *(a1 + 48);
  v8 = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  ctu::RestModule::RestModule();
  if (v8)
  {
    dispatch_release(v8);
  }

  if (v10 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 116) = 0;
  v6 = *a2;
  *a2 = 0;
  *(a1 + 120) = v6;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 244) = 1;
  *(a1 + 272) = 0;
  *(a1 + 280) = 8;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 332) = 0;
  *(a1 + 340) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 344) = 0;
  *(a1 + 368) = 0;
  ATCSCondition::ATCSCondition((a1 + 376), "state change wait");
  sub_1005A8414(a1 + 384);
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  sub_100983C74(a1 + 424);
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 492) = 0u;
  *(a1 + 508) = 2500;
  *(a1 + 512) = 1;
  *(a1 + 568) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  ATCSTimer::ATCSTimer((a1 + 576));
  sub_10000501C((a1 + 632), "com.apple.CommCenter.RadioNotReady");
  *(a1 + 656) = "GsmRadioModule::fPreviousBootUptime";
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 712) = a1 + 712;
  *(a1 + 720) = a1 + 712;
  *(a1 + 728) = 0;
  *(a1 + 736) = a1 + 736;
  *(a1 + 744) = a1 + 736;
  *(a1 + 752) = 0;
  *(a1 + 760) = a1 + 760;
  *(a1 + 768) = a1 + 760;
  *(a1 + 808) = 0;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  return a1;
}

void sub_100764780(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, dispatch_object_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, char a19)
{
  ATCSTimer::~ATCSTimer((v19 + 576));
  v22 = *(v19 + 568);
  if (v22)
  {
    sub_100004A34(v22);
  }

  v23 = *(v19 + 552);
  if (v23)
  {
    sub_100004A34(v23);
  }

  v24 = *(v19 + 536);
  if (v24)
  {
    dispatch_group_leave(v24);
    v25 = *(v19 + 536);
    if (v25)
    {
      dispatch_release(v25);
    }
  }

  v26 = *(v19 + 528);
  if (v26)
  {
    dispatch_group_leave(v26);
    v27 = *(v19 + 528);
    if (v27)
    {
      dispatch_release(v27);
    }
  }

  v28 = *(v19 + 496);
  if (v28)
  {
    sub_100004A34(v28);
  }

  if (*(v19 + 487) < 0)
  {
    operator delete(*v20);
  }

  sub_100767398(v19 + 424);
  if (*(v19 + 407) < 0)
  {
    operator delete(*(v19 + 384));
  }

  ATCSCondition::~ATCSCondition((v19 + 376));
  v29 = *(v19 + 352);
  if (v29)
  {
    sub_100004A34(v29);
  }

  sub_1003336BC(v19 + 288);
  sub_1007673E8(v19 + 248);
  sub_100767468(v19 + 208);
  sub_1002FED80(v19 + 168);
  sub_10000FF50(v19 + 128);
  v30 = *(v19 + 120);
  *(v19 + 120) = 0;
  if (v30)
  {
    (*(*v30 + 8))(v30);
  }

  v31 = *(v19 + 104);
  if (v31)
  {
    sub_100004A34(v31);
  }

  v32 = *(v19 + 88);
  if (v32)
  {
    sub_100004A34(v32);
  }

  v33 = *(v19 + 72);
  if (v33)
  {
    sub_100004A34(v33);
  }

  ATCSMutex::~ATCSMutex((v19 + 56));
  v34 = *(v19 + 48);
  if (v34)
  {
    dispatch_release(v34);
  }

  ctu::OsLogLogger::~OsLogLogger((v19 + 40));
  v35 = *(v19 + 32);
  if (v35)
  {
    std::__shared_weak_count::__release_weak(v35);
  }

  TMKXPCServer.shutdown()();
  TMKXPCServer.shutdown()();
  TMKXPCServer.shutdown()();
  _Unwind_Resume(a1);
}

void CSIRadioModulePrivate::~CSIRadioModulePrivate(CSIRadioModulePrivate *this)
{
  *this = off_101E78CD8;
  *(this + 1) = off_101E78F40;
  *(this + 2) = off_101E78F68;
  v2 = *(this + 101);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(this + 99);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_1004EDC58(this + 95);
  sub_100664770(this + 92);
  sub_100674700(this + 89);
  v4 = *(this + 88);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(this + 86);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(this + 84);
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (*(this + 655) < 0)
  {
    operator delete(*(this + 79));
  }

  ATCSTimer::~ATCSTimer((this + 576));
  v7 = *(this + 71);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = *(this + 69);
  if (v8)
  {
    sub_100004A34(v8);
  }

  v9 = *(this + 67);
  if (v9)
  {
    dispatch_group_leave(v9);
    v10 = *(this + 67);
    if (v10)
    {
      dispatch_release(v10);
    }
  }

  v11 = *(this + 66);
  if (v11)
  {
    dispatch_group_leave(v11);
    v12 = *(this + 66);
    if (v12)
    {
      dispatch_release(v12);
    }
  }

  v13 = *(this + 62);
  if (v13)
  {
    sub_100004A34(v13);
  }

  if (*(this + 487) < 0)
  {
    operator delete(*(this + 58));
  }

  sub_100083940(this + 57);
  *(this + 53) = off_101E2BFC0;
  sub_10004A724(this + 55);
  if (*(this + 407) < 0)
  {
    operator delete(*(this + 48));
  }

  ATCSCondition::~ATCSCondition((this + 376));
  v14 = *(this + 44);
  if (v14)
  {
    sub_100004A34(v14);
  }

  sub_1003336BC(this + 288);
  sub_1007673E8(this + 248);
  sub_100767468(this + 208);
  sub_1002FED80(this + 168);
  sub_10000FF50(this + 128);
  v15 = *(this + 15);
  *(this + 15) = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = *(this + 13);
  if (v16)
  {
    sub_100004A34(v16);
  }

  v17 = *(this + 11);
  if (v17)
  {
    sub_100004A34(v17);
  }

  v18 = *(this + 9);
  if (v18)
  {
    sub_100004A34(v18);
  }

  ATCSMutex::~ATCSMutex((this + 56));
  v19 = *(this + 6);
  if (v19)
  {
    dispatch_release(v19);
  }

  ctu::OsLogLogger::~OsLogLogger((this + 40));
  v20 = *(this + 4);
  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }

  TMKXPCServer.shutdown()();
  TMKXPCServer.shutdown()();

  TMKXPCServer.shutdown()();
}

void sub_100764F58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100764FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (!a16)
  {
    JUMPOUT(0x100764FA4);
  }

  JUMPOUT(0x100764FA0);
}

uint64_t CSIRadioModulePrivate::getOsVersion@<X0>(CSIRadioModulePrivate *this@<X0>, uint64_t a2@<X8>)
{
  ATCSMutex::lock((this + 56));
  if (*(this + 407) < 0)
  {
    sub_100005F2C(a2, *(this + 48), *(this + 49));
  }

  else
  {
    *a2 = *(this + 24);
    *(a2 + 16) = *(this + 50);
  }

  return ATCSMutex::unlock((this + 56));
}

uint64_t CSIRadioModulePrivate::startTracing_nl(CSIRadioModulePrivate *this)
{
  result = *(this + 61);
  if (result)
  {
    sub_100765064();
  }

  return result;
}

uint64_t CSIRadioModulePrivate::handleTraceStart(CSIRadioModulePrivate *this, int a2)
{
  ATCSMutex::lock((this + 56));
  v4 = *(this + 69);
  *(this + 34) = 0u;
  if (v4)
  {
    sub_100004A34(v4);
  }

  if (a2)
  {
    v5 = *(this + 91);
    if (v5 - 1 >= 3)
    {
      v8 = *(this + 5);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        return ATCSMutex::unlock((this + 56));
      }

      v12 = 136315138;
      v13 = CSIRadioModulePrivate::stateAsString(v5);
      v9 = "#I State is %s, skipping start";
      goto LABEL_14;
    }

    (*(**(this + 8) + 48))(*(this + 8));
    if (*(this + 19))
    {
      v6 = *(this + 5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Failed to enter low power before, trying again", &v12, 2u);
      }

      v7 = *(this + 91);
      if (v7 == 1)
      {
        CSIRadioModulePrivate::enterLowPowerInternal(this);
        return ATCSMutex::unlock((this + 56));
      }

      v8 = *(this + 5);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        return ATCSMutex::unlock((this + 56));
      }

      v10 = CSIRadioModulePrivate::stateAsString(v7);
      v12 = 136315138;
      v13 = v10;
      v9 = "#I State is %s, trying again later";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, &v12, 0xCu);
    }
  }

  return ATCSMutex::unlock((this + 56));
}

BOOL CSIRadioModulePrivate::enterLowPowerInternal(CSIRadioModulePrivate *this)
{
  if ((ATCSMutex::isLocked((this + 56)) & 1) == 0)
  {
    __TUAssertTrigger();
  }

  CSIRadioModulePrivate::changeState(this, 2u);
  ATCSMutex::unlock((this + 56));
  sub_100080308(this + 424, 3u, 0, 0, 0);
  (*(*this + 552))(this);
  (*(*this + 560))(this);
  ATCSMutex::lock((this + 56));
  v2 = *(this + 91);
  if (v2 == 2)
  {
    CSIRadioModulePrivate::changeState(this, 3u);
    CSIRadioModulePrivate::invokeAndDeleteCompletionInfo(this, 1);
    v3 = *(this + 5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Completed entering low power", &v6, 2u);
    }
  }

  else
  {
    v4 = *(this + 5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = CSIRadioModulePrivate::stateAsString(v2);
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Failed entering low power due to state change to %s", &v6, 0xCu);
    }

    CSIRadioModulePrivate::invokeAndDeleteCompletionInfo(this, 0);
  }

  return v2 == 2;
}

void CSIRadioModulePrivate::resetCleanup_nl(uint64_t a1, char *a2, int a3, uint64_t a4, uint64_t **a5)
{
  v9 = *(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a5 + 23) < 0)
    {
      a5 = *a5;
    }

    v10 = CSIRadioModulePrivate::stateAsString(*(a1 + 364));
    *buf = 136446978;
    *&buf[4] = a5;
    *&buf[12] = 2080;
    *&buf[14] = a2;
    *&buf[22] = 1024;
    *&buf[24] = a3;
    *&buf[28] = 2080;
    *&buf[30] = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Reset requested at %{public}s: %s, with logs = %d, rm state: %s", buf, 0x26u);
  }

  v11 = *(a1 + 364);
  v12 = v11 >= 7;
  v13 = v11 - 7;
  if (!v12)
  {
LABEL_6:
    memset(buf, 0, sizeof(buf));
    v14 = *(a1 + 40);
    v15 = os_signpost_id_generate(v14);
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v16 = *(a1 + 40);
      if (os_signpost_enabled(v16))
      {
        *v34 = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_BEGIN, v15, "BasebandReset", "", v34, 2u);
      }
    }

    *v34 = off_101E79510;
    v35 = v34;
    *buf = v15;
    *&buf[8] = os_retain(v14);
    sub_1000148FC(&buf[16], v34);
    sub_10001499C(v34);
    sub_10000501C(&__p, "BasebandReset");
    v31[0] = *buf;
    v31[1] = *&buf[8];
    sub_1000148FC(&v32, &buf[16]);
    *buf = 0;
    *&buf[8] = 0;
    sub_100014A28(&buf[16]);
    Registry::createXpcJetsamAssertion();
    v17 = *v34;
    *v34 = 0;
    *&v34[8] = 0;
    v18 = *(a1 + 552);
    *(a1 + 544) = v17;
    if (v18)
    {
      sub_100004A34(v18);
      if (*&v34[8])
      {
        sub_100004A34(*&v34[8]);
      }
    }

    sub_100014DA8(v31);
    if (v29 < 0)
    {
      operator delete(__p);
    }

    (*(*a1 + 584))(a1, a1 + 632);
    v19 = sub_10000501C(v34, a2);
    v20 = std::string::insert(v19, 0, "modem reset: ", 0xDuLL);
    v21 = v20->__r_.__value_.__r.__words[0];
    v30[0] = v20->__r_.__value_.__l.__size_;
    *(v30 + 7) = *(&v20->__r_.__value_.__r.__words[1] + 7);
    v22 = HIBYTE(v20->__r_.__value_.__r.__words[2]);
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v23 = (a1 + 464);
    if (*(a1 + 487) < 0)
    {
      operator delete(*v23);
    }

    v24 = v30[0];
    *(a1 + 464) = v21;
    *(a1 + 472) = v24;
    *(a1 + 479) = *(v30 + 7);
    *(a1 + 487) = v22;
    if (v34[23] < 0)
    {
      operator delete(*v34);
      if ((*(a1 + 487) & 0x80) == 0)
      {
        goto LABEL_18;
      }
    }

    else if ((v22 & 0x80) == 0)
    {
LABEL_18:
      (*(*a1 + 528))(a1, v23);
      ATCSMutex::unlock((a1 + 56));
      if (a3)
      {
        CSIRadioModulePrivate::resetInternalhandleStopComplete(a1);
      }

      v25 = *(a1 + 40);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *v34 = 136315138;
        *&v34[4] = a2;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I Silent Reset Requested: %s", v34, 0xCu);
      }

      if (*(a1 + 488))
      {
        sub_100765B20();
      }

      ATCSMutex::lock((a1 + 56));
      sub_100014DA8(buf);
      return;
    }

    v23 = *v23;
    goto LABEL_18;
  }

  if (v13 > 1)
  {
    __TUAssertTrigger();
    goto LABEL_6;
  }

  v26 = *(a1 + 40);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I Ignoring reset request", buf, 2u);
  }

  v27 = *(a1 + 528);
  *(a1 + 528) = 0;
  if (v27)
  {
    dispatch_group_leave(v27);
    dispatch_release(v27);
  }
}

void CSIRadioModulePrivate::resetInternalhandleStopComplete(NSObject **this)
{
  ATCSMutex::lock((this + 7));
  ((*this)[74].isa)(this);
  v2 = this[5];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = CSIRadioModulePrivate::stateAsString(*(this + 91));
    v4 = 136315138;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Reset in progress. Current state is '%s'", &v4, 0xCu);
  }

  if ((*(this + 91) | 2) != 7)
  {
    __TUAssertTrigger();
  }

  operator new();
}

void sub_100765AF0(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void CSIRadioModulePrivate::resetInternal(CSIRadioModulePrivate *this, const char *a2)
{
  if ((ATCSMutex::isLocked((this + 56)) & 1) == 0)
  {
    __TUAssertTrigger();
  }

  CSIRadioModulePrivate::changeState(this, 5u);
  ++*(this + 104);
  (*(**(this + 8) + 32))(*(this + 8), 0);
  v3 = *(this + 5);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    LOWORD(v5) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Baseband is reset, turning off Packet Interfaces", &v5, 2u);
  }

  v5 = 0;
  v6 = 0;
  sub_10020A8B4(v4, &v5);
  if (v5)
  {
    (*(*v5 + 480))(v5, 0, 0);
  }

  if (v6)
  {
    sub_100004A34(v6);
  }
}

void sub_100765D0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void CSIRadioModulePrivate::completeDumpState(uint64_t a1, std::string *a2)
{
  (*(*a1 + 488))(a1);
  memset(&v37, 0, sizeof(v37));
  std::string::basic_string(&v37, a2, 0, 0xFFuLL, buf);
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I --------------  STATE DUMP --------------------", buf, 2u);
    v4 = *(a1 + 40);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = &v37;
    if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v5 = v37.__r_.__value_.__r.__words[0];
    }

    *buf = 136315138;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Reason: %s", buf, 0xCu);
  }

  (*(*a1 + 496))(a1, a2);
  sub_1001449DC();
  sub_10014BF94(&event::dumpState[3]);
  v6 = sub_100081A98(&event::dumpState[1]);
  sub_100081ADC(v6);
  (*(**(a1 + 64) + 24))(*(a1 + 64));
  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = asStringBool(*(a1 + 200));
    *buf = 136315138;
    *&buf[4] = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I fBasebandFirmwareDead=%s", buf, 0xCu);
    v7 = *(a1 + 40);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = (*(*a1 + 576))(a1);
    *buf = 67109120;
    *&buf[4] = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I DormancyMask=%x", buf, 8u);
    v7 = *(a1 + 40);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = CSIBOOLAsString(*(a1 + 664) != 0);
    *buf = 136315138;
    *&buf[4] = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I fAirplaneModeAssertionForBrickMode=%s", buf, 0xCu);
    v7 = *(a1 + 40);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = CSIBOOLAsString(*(a1 + 680) != 0);
    *buf = 136315138;
    *&buf[4] = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I fAirplaneModeAssertionForBreadMode=%s", buf, 0xCu);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 784));
  v13 = ServiceMap;
  if (v14 < 0)
  {
    v15 = (v14 & 0x7FFFFFFFFFFFFFFFLL);
    v16 = 5381;
    do
    {
      v14 = v16;
      v17 = *v15++;
      v16 = (33 * v16) ^ v17;
    }

    while (v17);
  }

  std::mutex::lock(ServiceMap);
  *buf = v14;
  v18 = sub_100009510(&v13[1].__m_.__sig, buf);
  if (v18)
  {
    v20 = v18[3];
    v19 = v18[4];
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v13);
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v19);
      v21 = 0;
      if (!v20)
      {
        goto LABEL_26;
      }

      goto LABEL_24;
    }
  }

  else
  {
    v20 = 0;
  }

  std::mutex::unlock(v13);
  v19 = 0;
  v21 = 1;
  if (!v20)
  {
    goto LABEL_26;
  }

LABEL_24:
  v22 = *(a1 + 40);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = (*(*v20 + 64))(v20);
    *buf = 134217984;
    *&buf[4] = v23;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I CommCenter starts since boot=%zu", buf, 0xCu);
  }

LABEL_26:
  if ((v21 & 1) == 0)
  {
    sub_100004A34(v19);
  }

  v24 = *(a1 + 40);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    Registry::getXpcJetsamAssertionManager(&__p, *(a1 + 784));
    ctu::XpcJetsamAssertion::dumpState(buf, __p);
    if (v40 >= 0)
    {
      v25 = buf;
    }

    else
    {
      v25 = *buf;
    }

    *v43 = 136446210;
    v44 = v25;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I %{public}s", v43, 0xCu);
    if (SHIBYTE(v40) < 0)
    {
      operator delete(*buf);
    }

    if (v35)
    {
      sub_100004A34(v35);
    }

    v24 = *(a1 + 40);
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I **************************", buf, 2u);
  }

  __p = 0;
  v35 = 0;
  v36 = 0;
  (*(*a1 + 504))(a1, a2, &__p);
  v26 = *(a1 + 40);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    v28 = a2->__r_.__value_.__r.__words[0];
    Uptime = CSIRadioModulePrivate::getUptime(a1);
    if (v27 >= 0)
    {
      v30 = a2;
    }

    else
    {
      v30 = v28;
    }

    v31 = *(a1 + 416);
    p_p = &__p;
    if (v36 < 0)
    {
      p_p = __p;
    }

    *buf = 136315906;
    *&buf[4] = v30;
    *&buf[12] = 1024;
    *&buf[14] = Uptime;
    v39 = 1024;
    v40 = v31;
    v41 = 2080;
    v42 = p_p;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I reset: reason=%s;uptime=%d;count=%d;%s", buf, 0x22u);
  }

  v33 = *(a1 + 792);
  *buf = *(a1 + 784);
  *&buf[8] = v33;
  if (v33)
  {
    atomic_fetch_add_explicit((v33 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10083B6CC(buf);
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  sleep(1u);
  if (SHIBYTE(v36) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }
}

void sub_10076638C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22)
{
  if ((v23 & 1) == 0)
  {
    sub_100004A34(v22);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CSIRadioModulePrivate::getUptime(CSIRadioModulePrivate *this)
{
  ATCSMutex::lock((this + 56));
  v2 = CSISystemElapsedTimeSecs();
  v3 = *(this + 102);
  v4 = *(this + 103);
  ATCSMutex::unlock((this + 56));
  return (v2 - v3 + v4);
}

void CSIRadioModulePrivate::requestDumpMemory(CSIRadioModulePrivate *this, const char *a2)
{
  TMKXPCServer.shutdown()();
  v3 = *(this + 5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "CommCenterMemory";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I memory to be dumped into %s", &v4, 0xCu);
  }
}

uint64_t CSIRadioModulePrivate::inResetState(CSIRadioModulePrivate *this)
{
  v1 = *(this + 91);
  if (v1 >= 9)
  {
    sub_10177D254();
  }

  return (0x1E1u >> v1) & 1;
}

void CSIRadioModulePrivate::handleResetDPC(CSIRadioModulePrivate *this, void *a2)
{
  ATCSMutex::lock((this + 56));
  if (*(this + 91) == 5)
  {
    if (*(this + 160) != 1)
    {
      *(this + 102) = CSISystemElapsedTimeSecs();
      if (*(this + 103))
      {
        v3 = sub_10005D028();
        sub_10000501C(&__p, *(this + 82));
        v8 = 0;
        sub_1002D5E88(v3, &__p, &v8);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        *(this + 103) = 0;
      }

      CSIRadioModulePrivate::changeState(this, 6u);
      LODWORD(v4) = 1;
      goto LABEL_12;
    }
  }

  else
  {
    v5 = *(this + 5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Back to back reset, ignoring reset", &__p, 2u);
    }
  }

  v4 = *(this + 66);
  *(this + 66) = 0;
  if (v4)
  {
    dispatch_group_leave(v4);
    dispatch_release(v4);
    LODWORD(v4) = 0;
  }

LABEL_12:
  ATCSMutex::unlock((this + 56));
  if (v4)
  {
    (*(**(this + 8) + 56))(*(this + 8));
    v6 = *(this + 5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Reset complete", &__p, 2u);
    }

    v7 = *(this + 66);
    *(this + 66) = 0;
    if (v7)
    {
      dispatch_group_leave(v7);
      dispatch_release(v7);
    }
  }
}

void sub_10076670C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  ATCSMutex::unlock((v16 + 56));
  _Unwind_Resume(a1);
}

void CSIRadioModulePrivate::createPowerAssertion_nl(uint64_t a1)
{
  sub_100DB9C84();
  v2 = *(a1 + 808);
  *(a1 + 800) = v3;
  if (v2)
  {
    sub_100004A34(v2);
  }
}

void CSIRadioModulePrivate::releasePowerAssertion_nl(CSIRadioModulePrivate *this)
{
  v2 = *(this + 101);
  *(this + 50) = 0u;
  if (v2)
  {
    sub_100004A34(v2);
  }
}

void CSIRadioModulePrivate::addReasonToLastDump(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v3 = *(a2 + 16);
  }

  operator new();
}

void CSIRadioModulePrivate::addReasonToLastDumpInternal_sync(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 488))
  {
    sub_10000501C(&v8, "CSILog");
    sub_10000501C(&v7, "comment");
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(__p, *a2, *(a2 + 8));
    }

    else
    {
      *__p = *a2;
      v6 = *(a2 + 16);
    }

    sub_1006C97E4();
  }

  v3 = *(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Warning: Failed to add reason as TraceModule has not been setup yet.", v4, 2u);
  }
}

void sub_10076699C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t CSIRadioModulePrivate::enableTrace(uint64_t a1, uint64_t a2, int a3)
{
  v10[0] = 0;
  v10[1] = 0;
  v11 = 0;
  if (a3)
  {
    v5 = "true";
  }

  else
  {
    v5 = "false";
  }

  sub_10000501C(v10, v5);
  sub_10000501C(__p, "enabled");
  v6 = (*(*a1 + 240))(a1, a2, __p, v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[0]);
  }

  return v6;
}

void sub_100766AAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CSIRadioModulePrivate::setTraceProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 488))
  {
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(__dst, *a2, *(a2 + 8));
    }

    else
    {
      *__dst = *a2;
      v12 = *(a2 + 16);
    }

    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(v9, *a3, *(a3 + 8));
    }

    else
    {
      *v9 = *a3;
      v10 = *(a3 + 16);
    }

    if (*(a4 + 23) < 0)
    {
      sub_100005F2C(__p, *a4, *(a4 + 8));
    }

    else
    {
      *__p = *a4;
      v8 = *(a4 + 16);
    }

    sub_1006C97E4();
  }

  return 0;
}

void sub_100766BEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CSIRadioModulePrivate::getTraceProperty(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *string = 0;
  v13 = 0;
  v14 = 0;
  v5 = *(a1 + 488);
  if (v5)
  {
    v6 = sub_1006C8B14(v5, a2, a3, string);
    if (v14 >= 0)
    {
      v7 = string;
    }

    else
    {
      v7 = *string;
    }
  }

  else
  {
    v6 = 0;
    v7 = string;
  }

  v10 = xpc_string_create(v7);
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  v9[0] = *a4;
  v9[1] = "kRadioTracePropertyValue";
  sub_10000F688(v9, &v10, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v10);
  v10 = 0;
  if (SHIBYTE(v14) < 0)
  {
    operator delete(*string);
  }

  return v6;
}

void sub_100766D08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CSIRadioModulePrivate::queryTraceFullStatus(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *(a1 + 488);
  if (v3)
  {
    sub_10000501C(__p, "status");
    sub_1006C8B14(v3, a2, __p, a3);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_100766DA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CSIRadioModulePrivate::enableFastDormancySupport(CSIRadioModulePrivate *this, int a2, int a3)
{
  ATCSMutex::lock((this + 56));
  *(this + 512) = a2;
  if (a3)
  {
    v6 = sub_10005D028();
    sub_10000501C(&__p, "GsmRadioModule::kFastFastDormancySupportOn");
    v11 = *(this + 512);
    sub_100619254(v6, &__p, &v11);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v7 = (*(*this + 576))(this);
  if (!a2 || (v8 = *(this + 127), !v8) || (v9 = v7, !v7))
  {
    v8 = 0;
    v9 = 0;
  }

  (*(**(this + 15) + 64))(*(this + 15), v8, v9);
  return ATCSMutex::unlock((this + 56));
}

void sub_100766EE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  ATCSMutex::unlock((v15 + 56));
  _Unwind_Resume(a1);
}

_BYTE *CSIRadioModulePrivate::getLastTraceFileNamePrefix@<X0>(_BYTE *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 61);
  if (!v2)
  {
    return sub_10000501C(a2, "");
  }

  if (*(v2 + 335) < 0)
  {
    return sub_100005F2C(a2, *(v2 + 312), *(v2 + 320));
  }

  v3 = (v2 + 312);
  v4 = *v3;
  *(a2 + 16) = *(v3 + 2);
  *a2 = v4;
  return this;
}

uint64_t CSIRadioModulePrivate::setRadioLinkQualityMetric(uint64_t a1, uint64_t a2)
{
  ATCSMutex::lock((a1 + 56));
  CSIRadioModulePrivate::setRadioLinkQualityMetric_sync(a1, a2);
  return ATCSMutex::unlock((a1 + 56));
}

void CSIRadioModulePrivate::setRadioLinkQualityMetric_sync(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 120);
  if (!v2)
  {
    return;
  }

  v5 = *(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *&buf[4] = a2;
    LOWORD(v15[0]) = 2080;
    *(v15 + 2) = asString();
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Setting link quality to: %d (%s)", buf, 0x12u);
    v2 = *(a1 + 120);
  }

  (*(*v2 + 72))(v2, a2);
  WISPostSimpleMetricWithInteger();
  v13 = 0;
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (v6)
  {
    v13 = v6;
  }

  else
  {
    v7 = xpc_null_create();
    v13 = v7;
    if (!v7)
    {
      v8 = xpc_null_create();
      v7 = 0;
      goto LABEL_11;
    }
  }

  if (xpc_get_type(v7) != &_xpc_type_dictionary)
  {
    v8 = xpc_null_create();
LABEL_11:
    v13 = v8;
    goto LABEL_12;
  }

  xpc_retain(v7);
LABEL_12:
  xpc_release(v7);
  v11 = xpc_string_create(abm::kSetLinkQualityMetricCommand);
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  *buf = &v13;
  v15[0] = abm::kCTTxPowerCommandString;
  sub_10000F688(buf, &v11, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v11);
  v11 = 0;
  v9 = xpc_int64_create(a2);
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  *buf = &v13;
  v15[0] = abm::kCTTxPowerCommandData;
  sub_10000F688(buf, &v9, &v10);
  xpc_release(v10);
  v10 = 0;
  xpc_release(v9);
  v9 = 0;
  sub_10005B8C8(buf);
  (*(**buf + 424))(*buf, &v13);
  if (v15[0])
  {
    sub_100004A34(v15[0]);
  }

  xpc_release(v13);
}

void sub_100767244(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t object, uint64_t a15, uint64_t a16)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CSIRadioModulePrivate::resetStoredLogs(CSIRadioModulePrivate *this)
{
  ATCSMutex::lock((this + 56));
  if (*(this + 61))
  {
    sub_1006C7690();
  }

  return ATCSMutex::unlock((this + 56));
}

uint64_t CSIRadioModulePrivate::handleCmasCampOnlyModeChanged(uint64_t a1, int a2)
{
  ATCSMutex::lock((a1 + 56));
  v4 = *(a1 + 328);
  if (v4 != a2 && v4 <= 1)
  {
    v7 = *(a1 + 240);
    BYTE5(v7) = v4 == 1;
    sub_100080280(a1 + 208, &v7);
  }

  return ATCSMutex::unlock((a1 + 56));
}

uint64_t sub_100767398(uint64_t a1)
{
  sub_100083940((a1 + 32));
  *a1 = off_101E2BFC0;
  sub_10004A724((a1 + 16));
  return a1;
}

uint64_t sub_1007673E8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_100767468(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_100767560(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[2], v1, sub_100767634);
  __cxa_rethrow();
}

void sub_1007675A0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1007675F4(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100767634(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_100767690(result + 32, *(result + 40));
    sub_1000C0544(v1);

    operator delete();
  }

  return result;
}

void sub_100767690(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100767690(a1, *a2);
    sub_100767690(a1, a2[1]);
    sub_1007676EC((a2 + 4));

    operator delete(a2);
  }
}

void sub_1007676EC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void sub_100767760(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E790B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1007677DC(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *a1 = off_101E78CA8;
    a1[1] = v4;
    a1[2] = v3;
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v3);
  }

  else
  {
    *a1 = off_101E78CA8;
    a1[1] = v4;
    a1[2] = 0;
  }

  return a1;
}

void sub_100767860(uint64_t a1)
{
  v1 = **(a1 + 32);
  sub_100118C58(v1 + 116);
  sub_100767AA0((v1 + 168), v1 + 96);
  sub_100767B04((v1 + 208), v1 + 96);
  v2 = sub_100767B68((v1 + 248), v1 + 96);
  if (capabilities::ct::supportsCMASCampOnlyMode(v2))
  {
    v7 = CSIRadioModulePrivate::handleCmasCampOnlyModeChanged;
    v8 = 0;
    sub_100768808();
  }

  sub_10000501C(__p, "/cc/props/operating_mode_request");
  v7 = off_101E79348;
  v8 = v1 + 332;
  v9 = v1;
  v10 = &v7;
  ctu::RestModule::observeProperty();
  sub_1000062D4(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  Registry::createRestModuleOneTimeUseConnection(&v3, *(v1 + 784));
  ctu::RestModule::connect();
  if (v4)
  {
    sub_100004A34(v4);
  }

  sub_10000501C(__p, "/cc/events/request_dump_state");
  v7 = off_101E793C8;
  v8 = v1;
  v10 = &v7;
  ctu::RestModule::observeEvent();
  sub_1000062D4(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  sub_10000501C(__p, "/cc/props/is_postponement_ticket_available");
  v7 = off_101E79448;
  v8 = v1 + 340;
  v9 = v1;
  v10 = &v7;
  ctu::RestModule::observeProperty();
  sub_1000062D4(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100767A58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  sub_1000062D4(&a17);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100767AA0(void *a1, uint64_t a2)
{
  v4 = a2;
  sub_100767BCC(a1, &v4);
  result = a1[3];
  if (result)
  {
    return (*(*result + 48))(result, a1 + 4);
  }

  return result;
}

uint64_t sub_100767B04(void *a1, uint64_t a2)
{
  v4 = a2;
  sub_100767E48(a1, &v4);
  result = a1[3];
  if (result)
  {
    return (*(*result + 48))(result, a1 + 4);
  }

  return result;
}

uint64_t sub_100767B68(void *a1, uint64_t a2)
{
  v4 = a2;
  sub_100768320(a1, &v4);
  result = a1[3];
  if (result)
  {
    return (*(*result + 48))(result, a1 + 4);
  }

  return result;
}

void *sub_100767BCC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v5[0] = off_101E79128;
  v5[1] = v3;
  v5[3] = v5;
  sub_100300158(v5, a1);
  sub_1002FED80(v5);
  return a1;
}

uint64_t sub_100767CD0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E79128;
  a2[1] = v2;
  return result;
}

uint64_t sub_100767D04(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100767D50(uint64_t a1, BOOL *a2)
{
  v2 = xpc_BOOL_create(*a2);
  if (!v2)
  {
    v2 = xpc_null_create();
  }

  sub_10000501C(&__p, "/cc/props/baseband_firmware_dead");
  object = v2;
  if (v2)
  {
    xpc_retain(v2);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v2);
}

void sub_100767E00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  xpc_release(object);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v15);
  _Unwind_Resume(a1);
}

void *sub_100767E48(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v5[0] = off_101E791A8;
  v5[1] = v3;
  v5[3] = v5;
  sub_1007680B4(v5, a1);
  sub_100767468(v5);
  return a1;
}

uint64_t sub_100767F4C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E791A8;
  a2[1] = v2;
  return result;
}

uint64_t sub_100767F80(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100767FCC()
{
  v3 = 0;
  write_rest_value();
  sub_10000501C(&__p, "/cc/props/radio_mode");
  object = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v2 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v3);
}

void sub_100768070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

void *sub_1007680B4(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        memset(v5, 0, sizeof(v5));
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_100768314(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void *sub_100768320(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v5[0] = off_101E79238;
  v5[1] = v3;
  v5[3] = v5;
  sub_10076859C(v5, a1);
  sub_1007673E8(v5);
  return a1;
}

uint64_t sub_100768424(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E79238;
  a2[1] = v2;
  return result;
}

uint64_t sub_100768458(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1007684A4(uint64_t a1, unsigned __int8 *a2)
{
  v8 = 0;
  v2 = *a2;
  v3 = asString();
  ctu::rest::detail::write_enum_string_value(&v8, v2, v3, v4);
  sub_10000501C(&__p, "/cc/props/baseband_operating_mode");
  object = v8;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v8);
}

void sub_100768558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

void *sub_10076859C(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        memset(v5, 0, sizeof(v5));
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_1007687FC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_1007688F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1007689A4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E792C8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1007689DC(void *a1, xpc_object_t *a2)
{
  v4 = a1[1];
  v5 = *v4;
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v14 = *v4;
    ctu::rest::detail::read_enum_string_value(&v14, a2, v7);
    *v4 = v14;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    *v4 = xpc::dyn_cast_or_default(a2, 0, v7);
  }

  v10 = a1[3];
  v11 = a1[4];
  v12 = (a1[2] + (v11 >> 1));
  if (v11)
  {
    v10 = *(*v12 + v10);
  }

  return v10(v12, v5);
}

uint64_t sub_100768AD4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_100768B94(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E79348;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_100768BC4(uint64_t a1, xpc_object_t *a2)
{
  v4 = *(a1 + 8);
  if (xpc_get_type(*a2) == &_xpc_type_null)
  {
    if (*(v4 + 4))
    {
      *(v4 + 4) = 0;
    }
  }

  else
  {
    if ((v4[1] & 1) == 0)
    {
      *v4 = 0;
      *(v4 + 4) = 1;
    }

    type = xpc_get_type(*a2);
    if (type == &_xpc_type_string)
    {
      v11 = *v4;
      ctu::rest::detail::read_enum_string_value(&v11, a2, v6);
      *v4 = v11;
    }

    else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
    {
      *v4 = xpc::dyn_cast_or_default(a2, 0, v6);
    }
  }

  v9 = *(a1 + 16);
  ATCSMutex::lock((v9 + 56));
  if (*(v9 + 336) == 1)
  {
    (*(**(v9 + 64) + 120))(*(v9 + 64), *(v9 + 332));
  }

  return ATCSMutex::unlock((v9 + 56));
}

uint64_t sub_100768D0C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100768DC8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E793C8;
  a2[1] = v2;
  return result;
}

void sub_100768DF4(uint64_t a1)
{
  memset(v3, 0, 24);
  RequestDumpStatePayload::RequestDumpStatePayload();
  read_rest_value();
  v2 = *(a1 + 8);
  __dst = 0u;
  v5 = 0;
  v6 = *(v3 + 8);
  v7 = 0;
  (*(*v2 + 200))(v2, &__dst);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__dst);
  }
}

void sub_100768EF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 41) < 0)
  {
    operator delete(*(v21 - 64));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100768F44(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_100769004(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E79448;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_100769034(uint64_t a1, xpc *this, BOOL a3)
{
  v4 = *(a1 + 8);
  *v4 = xpc::dyn_cast_or_default(this, 0, a3);
  v5 = *(**(*(a1 + 16) + 64) + 40);

  return v5();
}

uint64_t sub_1007690A4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007690F0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = *(result + 24);
    v3 = *(result + 32);
    v4 = (v1 + (v3 >> 1));
    if (v3)
    {
      v2 = *(*v4 + v2);
    }

    return v2(v4, *(result + 8));
  }

  return result;
}

void sub_1007691D0(uint64_t a1, os_log_t *a2, os_signpost_id_t *a3)
{
  v3 = *a3;
  if (*a3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = *a2;
    if (os_signpost_enabled(*a2))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, v3, "BasebandReset", "", v5, 2u);
    }
  }
}

uint64_t sub_100769248(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100769294(CSIRadioModulePrivate **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Handle reset", v4, 2u);
  }

  CSIRadioModulePrivate::handleResetDPC(v1, v3);
  operator delete();
}

uint64_t *sub_100769340(uint64_t a1)
{
  v5 = a1;
  v2 = *a1;
  v3 = *(*a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Add reasont to last log dump", buf, 2u);
  }

  CSIRadioModulePrivate::addReasonToLastDumpInternal_sync(v2, a1 + 8);
  return sub_1000EF424(&v5);
}

void sub_1007693C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000EF424(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007693DC()
{
  {
    return __cxa_atexit(sub_100DBA2A0, &ctu::Singleton<ctu::power::assertion,ctu::power::assertion,ctu::PthreadMutexGuardPolicy<ctu::power::assertion>>::sInstance, &_mh_execute_header);
  }

  return result;
}

void iWLanNotifyCodeAsString(int a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 > 80000)
  {
    if (a1 <= 80005)
    {
      if (a1 <= 80002)
      {
        if (a1 == 80001)
        {
          v3 = "kNEIPSecNotifyCodeAppStatusWifiUnavailable";
        }

        else
        {
          v3 = "kNEIPSecNotifyCodeAppStatusNotReceiveIPAddress";
        }
      }

      else if (a1 == 80003)
      {
        v3 = "kNEIPSecNotifyCodeAppStatusFailToConfigInterface";
      }

      else if (a1 == 80004)
      {
        v3 = "kNEIPSecNotifyCodeAppStatusSetupFailure";
      }

      else
      {
        v3 = "kNEIPSecNotifyCodeAppStatusNameResolveFailure";
      }
    }

    else
    {
      if (a1 > 80008)
      {
        switch(a1)
        {
          case 80009:
            v3 = "kNEIPSecNotifyCodeAppStatusPolicyNotAllowed";
            goto LABEL_74;
          case 80010:
            v3 = "kNEIPSecNotifyCodeAppStatusLoginSessionInactive";
            goto LABEL_74;
          case 80012:
            v3 = "kNEIPSecNotifyCodeAppStatusAttachAPNConflict";
            goto LABEL_74;
        }

        goto LABEL_34;
      }

      if (a1 == 80006)
      {
        v3 = "kNEIPSecNotifyCodeAppStatusHandoverAddressConflict";
      }

      else if (a1 == 80007)
      {
        v3 = "kNEIPSecNotifyCodeAppStatusFailedToSetting";
      }

      else
      {
        v3 = "kNEIPSecNotifyCodeAppStatusSleepWithNoWoW";
      }
    }

LABEL_74:

    sub_10000501C(a2, v3);
    return;
  }

  if (a1 > 39)
  {
    switch(a1)
    {
      case 70000:
        v3 = "kNEIPSecNotifyCodeUnknown";
        goto LABEL_74;
      case 70001:
        v3 = "kNEIPSecNotifyCodeInternalError";
        goto LABEL_74;
      case 70002:
        v3 = "kNEIPSecNotifyCodeCouldNotSend";
        goto LABEL_74;
      case 70003:
        v3 = "kNEIPSecNotifyCodeInvalidArgs";
        goto LABEL_74;
      case 70004:
        v3 = "kNEIPSecNotifyCodeUserRequested";
        goto LABEL_74;
      case 70005:
        v3 = "kNEIPSecNotifyCodePeerRequested";
        goto LABEL_74;
      case 70006:
        v3 = "kNEIPSecNotifyCodeServerDidNotRespond";
        goto LABEL_74;
      case 70007:
        v3 = "kNEIPSecNotifyCodeServerStoppedResponding";
        goto LABEL_74;
      case 70008:
        v3 = "kNEIPSecNotifyCodeReceivedInvalidSyntax";
        goto LABEL_74;
      case 70009:
        v3 = "kNEIPSecNotifyCodeReceivedInvalidProposal";
        goto LABEL_74;
      case 70010:
        v3 = "kNEIPSecNotifyCodeReceivedInvalidSPI";
        goto LABEL_74;
      case 70011:
        v3 = "kNEIPSecNotifyCodeReceivedInvalidTS";
        goto LABEL_74;
      case 70012:
        v3 = "kNEIPSecNotifyCodeIKESocketFailure";
        goto LABEL_74;
      case 70013:
        v3 = "kNEIPSecNotifyCodeIKELocalAddressMissing";
        goto LABEL_74;
      case 70014:
        v3 = "kNEIPSecNotifyCodeIKERemoteAddressMissing";
        goto LABEL_74;
      case 70015:
        v3 = "kNEIPSecNotifyCodeIKERemotePortMissing";
        goto LABEL_74;
      case 70016:
        v3 = "kNEIPSecNotifyCodePacketCreateFailed";
        goto LABEL_74;
      case 70017:
        v3 = "kNEIPSecNotifyCodePacketProcessingFailed";
        goto LABEL_74;
      case 70018:
        v3 = "kNEIPSecNotifyCodeSAMigrationFailed";
        goto LABEL_74;
      case 70019:
        v3 = "kNEIPSecNotifyCodeInvalidConfiguration";
        goto LABEL_74;
      case 70020:
        v3 = "kNEIPSecNotifyCodeFailedToGenerateSPI";
        goto LABEL_74;
      case 70021:
        v3 = "kNEIPSecNotifyCodeCryptoFailed";
        goto LABEL_74;
      case 70022:
        v3 = "kNEIPSecNotifyCodeConfigurationEstablishmentFailed";
        goto LABEL_74;
      case 70023:
        v3 = "kNEIPSecNotifyCodeChildInstallSAFailed";
        goto LABEL_74;
      case 70024:
        v3 = "kNEIPSecNotifyCodeNoIKESA";
        goto LABEL_74;
      case 70025:
        v3 = "kNEIPSecNotifyCodeNoChildSA";
        goto LABEL_74;
      case 70026:
        v3 = "kNEIPSecNotifyCodeChildUninstallSAFailed";
        goto LABEL_74;
      case 70027:
        v3 = "kNEIPSecNotifyCodeAuthFailed";
        goto LABEL_74;
      default:
        if (a1 == 40)
        {
          v3 = "kNEIPSecNotifyCodeServerRejectedAddress";
        }

        else
        {
          if (a1 != 16407)
          {
            goto LABEL_34;
          }

          v3 = "kNEIPSecNotifyIKEStatusServerRedirect";
        }

        break;
    }

    goto LABEL_74;
  }

  if (a1 <= 13)
  {
    if (a1 == 4)
    {
      v3 = "kNEIPSecNotifyCodeServerRejectedSPI";
      goto LABEL_74;
    }

    if (a1 == 7)
    {
      v3 = "kNEIPSecNotifyCodeServerRejectedSyntax";
      goto LABEL_74;
    }
  }

  else
  {
    switch(a1)
    {
      case 14:
        v3 = "kNEIPSecNotifyCodeServerRejectedProposal";
        goto LABEL_74;
      case 24:
        v3 = "kNEIPSecNotifyCodeServerRejectedAuth";
        goto LABEL_74;
      case 38:
        v3 = "kNEIPSecNotifyCodeServerRejectedTS";
        goto LABEL_74;
    }
  }

LABEL_34:
  std::to_string(&v8, a1);
  v4 = std::string::insert(&v8, 0, "Unknown iWLanStatus(", 0x14uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v9.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v9.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v9, ")", 1uLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  *(a2 + 16) = *(&v6->__r_.__value_.__l + 2);
  *a2 = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

void sub_10076987C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007698B0(const __CFArray *a1, CSIPacketAddress *this)
{
  result = CSIPacketAddress::isZeroIP(this);
  if ((result & 1) == 0)
  {
    v5 = CSIPacketAddress::isIPv4(this) ? @"AssignedIPv4Address" : @"AssignedIPv6Address";
    result = CFArrayGetCount(a1);
    if (result >= 1)
    {
      v6 = result;
      v7 = 0;
      while (1)
      {
        value = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v7);
        v9 = ValueAtIndex;
        if (ValueAtIndex)
        {
          v10 = CFGetTypeID(ValueAtIndex);
          if (v10 == CFDictionaryGetTypeID())
          {
            MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v9);
            v12 = value;
            value = MutableCopy;
            *&__dst = v12;
            sub_1000296E0(&__dst);
            CFArraySetValueAtIndex(a1, v7, value);
            v13 = CFDictionaryGetValue(value, @"Name");
            v14 = v13;
            if (v13)
            {
              v15 = CFGetTypeID(v13);
              v16 = v15 == CFStringGetTypeID() ? v14 : 0;
            }

            else
            {
              v16 = 0;
            }

            if (CFStringCompare(v16, v5, 0) == kCFCompareEqualTo)
            {
              break;
            }
          }
        }

        result = sub_1000296E0(&value);
        if (v6 == ++v7)
        {
          return result;
        }
      }

      v27 = 0;
      CSIPacketAddress::operator std::string();
      if (SHIBYTE(v26) < 0)
      {
        sub_100005F2C(__p, v25[0], v25[1]);
      }

      else
      {
        *__p = *v25;
        v31 = v26;
      }

      v34 = 0;
      if (SHIBYTE(v31) < 0)
      {
        sub_100005F2C(&__dst, __p[0], __p[1]);
      }

      else
      {
        __dst = *__p;
        v33 = v31;
      }

      v35 = 0;
      if (ctu::cf::convert_copy())
      {
        v17 = v34;
        v34 = v35;
        v24[0] = v17;
        sub_100005978(v24);
      }

      if (SHIBYTE(v33) < 0)
      {
        operator delete(__dst);
      }

      v27 = v34;
      v34 = 0;
      sub_100005978(&v34);
      if (SHIBYTE(v31) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v26) < 0)
      {
        operator delete(v25[0]);
      }

      CFDictionarySetValue(value, @"Address", v27);
      if (CSIPacketAddress::isIPv6(this))
      {
        memset(v24, 0, sizeof(v24));
        sub_10000501C(&__dst, "ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff");
        CSIPacketAddress::CSIPacketAddress();
        if (SHIBYTE(v33) < 0)
        {
          operator delete(__dst);
        }

        PrefixLen = CSIPacketAddress::getPrefixLen(this);
        CSIPacketAddress::applyMaskPrefix(v24, PrefixLen);
        CSIPacketAddress::operator std::string();
        if (SHIBYTE(v22) < 0)
        {
          sub_100005F2C(__p, v21[0], v21[1]);
        }

        else
        {
          *__p = *v21;
          v31 = v22;
        }

        v29 = 0;
        if (SHIBYTE(v31) < 0)
        {
          sub_100005F2C(&__dst, __p[0], __p[1]);
        }

        else
        {
          __dst = *__p;
          v33 = v31;
        }

        v34 = 0;
        if (ctu::cf::convert_copy())
        {
          v19 = v29;
          v29 = v34;
          v35 = v19;
          sub_100005978(&v35);
        }

        if (SHIBYTE(v33) < 0)
        {
          operator delete(__dst);
        }

        v20 = v29;
        v23 = v29;
        v29 = 0;
        sub_100005978(&v29);
        if (SHIBYTE(v31) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v22) < 0)
        {
          operator delete(v21[0]);
        }

        CFDictionarySetValue(value, @"Netmask", v20);
        sub_100005978(&v23);
      }

      sub_100005978(&v27);
      return sub_1000296E0(&value);
    }
  }

  return result;
}

void sub_100769C60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, const void *a26, const void *a27, const void *a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  sub_100005978(&a28);
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  sub_100005978(&a26);
  sub_1000296E0(&a27);
  _Unwind_Resume(a1);
}

uint64_t sub_100769D60(uint64_t a1, void *a2, int a3, uint64_t a4, NSObject **a5, uint64_t *a6, uint64_t *a7)
{
  *(a1 + 24) = off_101E7BB90;
  *a1 = off_101E7BE58;
  PersonalitySpecificImpl::PersonalitySpecificImpl();
  *(a1 + 24) = off_101E7AA90;
  *a1 = off_101E7ADB8;
  v14 = *a5;
  object = v14;
  if (v14)
  {
    dispatch_retain(v14);
  }

  v15 = a6[1];
  v21 = *a6;
  v22 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1003561E4(a1 + 32, off_101E7A420, a2, a3, a4, &object, &v21);
  if (v22)
  {
    sub_100004A34(v22);
  }

  if (object)
  {
    dispatch_release(object);
  }

  *a1 = off_101E79608;
  *(a1 + 24) = off_101E79B60;
  *(a1 + 32) = off_101E7A108;
  *(a1 + 144) = off_101E7A3D8;
  v16 = *a7;
  *(a1 + 152) = *a7;
  v17 = a7[1];
  *(a1 + 160) = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 16), 1uLL, memory_order_relaxed);
    v16 = *a7;
  }

  (*(*v16 + 328))(v16);
  *(a1 + 232) = 0;
  *(a1 + 184) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0;
  CSIPacketAddress::CSIPacketAddress((a1 + 256));
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  CSIPacketAddress::CSIPacketAddress((a1 + 304));
  CSIPacketAddress::CSIPacketAddress((a1 + 328));
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  CSIPacketAddress::CSIPacketAddress((a1 + 376));
  CSIPacketAddress::CSIPacketAddress((a1 + 400));
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 1;
  *(a1 + 696) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 688) = a1 + 696;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 781) = 0u;
  *(a1 + 797) = 1;
  *(a1 + 856) = 0;
  *(a1 + 798) = 0u;
  *(a1 + 814) = 0u;
  *(a1 + 830) = 0;
  sub_1000224C8(a1 + 864, a1 + 832);
  Registry::getTimerService(&v19, *(a1 + 80));
  *(a1 + 824) = (**v19)(v19);
  if (v20)
  {
    sub_100004A34(v20);
  }

  return a1;
}

void sub_10076A0C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, _Unwind_Exception *exception_object, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, dispatch_object_t object)
{
  if (a13)
  {
    sub_100004A34(a13);
  }

  sub_10000FF50(v16 + 864);
  sub_10000FF50(v16 + 832);
  v24 = *(v16 + 784);
  *(v16 + 784) = 0;
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  v25 = *(v16 + 776);
  *(v16 + 776) = 0;
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  v26 = *(v16 + 768);
  *(v16 + 768) = 0;
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  v27 = *(v16 + 760);
  *(v16 + 760) = 0;
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  v28 = *v21;
  *v21 = 0;
  if (v28)
  {
    (*(*v28 + 8))(v28);
  }

  a12 = v16 + 720;
  sub_1000087B4(&a12);
  sub_100009970(v16 + 688, *(v16 + 696));
  a12 = v16 + 664;
  sub_1000087B4(&a12);
  if (*(v16 + 663) < 0)
  {
    operator delete(*(v16 + 640));
  }

  PDPMetricInfo::~PDPMetricInfo(v23);
  sub_10001021C((v16 + 432));
  v29 = *(v16 + 352);
  if (v29)
  {
    *(v16 + 360) = v29;
    operator delete(v29);
  }

  v30 = *(v16 + 280);
  if (v30)
  {
    *(v16 + 288) = v30;
    operator delete(v30);
  }

  sub_10001021C(v22);
  sub_1000296E0(v20);
  sub_1000296E0(v19);
  v31 = *(v16 + 216);
  *(v16 + 216) = 0;
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  v32 = *(v16 + 208);
  if (v32)
  {
    sub_100004A34(v32);
  }

  v33 = *(v16 + 184);
  *(v16 + 184) = 0;
  if (v33)
  {
    (*(*v33 + 8))(v33);
  }

  v34 = *(v16 + 176);
  if (v34)
  {
    sub_100004A34(v34);
  }

  v35 = *(v16 + 160);
  if (v35)
  {
    std::__shared_weak_count::__release_weak(v35);
  }

  TMKXPCServer.shutdown()();
  sub_100356498(v18, off_101E7A420);
  TechDataContextInterface::~TechDataContextInterface(v17);
  PersonalitySpecificImpl::~PersonalitySpecificImpl(v16);
  DataContextInterface::~DataContextInterface(v17);
  PersonalitySpecific::~PersonalitySpecific(v16);
  _Unwind_Resume(a1);
}

void sub_10076A390(uint64_t a1)
{
  *(a1 + 192) = 0;
  sub_10076A498(a1, 0);
  sub_100356BE0(a1 + 32, &v8);
  v2 = v8;
  sub_100004AA0(&v4, (a1 + 40));
  v3 = v4;
  if (v4)
  {
    v3 = &v4[*(*v4 - 688)];
  }

  v6 = v3;
  v7 = v5;
  v4 = 0;
  v5 = 0;
  (*(*v2 + 192))(v2, &v6);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (v5)
  {
    sub_100004A34(v5);
  }

  if (v9)
  {
    sub_100004A34(v9);
  }
}

void sub_10076A460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_10076A498(uint64_t a1, signed int a2)
{
  v4 = *(a1 + 72);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = sub_100772ED4(*(a1 + 224));
    v7 = 136315650;
    v8 = "setStatus";
    v9 = 2080;
    v10 = v5;
    v11 = 2080;
    v12 = sub_100772ED4(a2);
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: Changing state (change states) %s->%s", &v7, 0x20u);
  }

  v6 = *(a1 + 224);
  *(a1 + 224) = a2;
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      if (v6 != 3)
      {
        (*(*(a1 + 32) + 680))(a1 + 32);
        *(a1 + 800) = sub_100086B10(a1);
      }

      return;
    }

    if (a2 != 4)
    {
      return;
    }

LABEL_9:
    if (v6 != a2)
    {
      (*(*(a1 + 32) + 696))(a1 + 32);
    }

    return;
  }

  if (!a2)
  {
    sub_10076AD50(a1);
    return;
  }

  if (a2 == 1)
  {
    goto LABEL_9;
  }
}

void sub_10076A65C(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v15) = 136315138;
    *(&v15 + 4) = "startUsing";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s: ", &v15, 0xCu);
  }

  if ((*(a1 + 798) & 1) == 0)
  {
    ServiceMap = Registry::getServiceMap(*(a1 + 80));
    v4 = ServiceMap;
    if (v5 < 0)
    {
      v6 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
      v7 = 5381;
      do
      {
        v5 = v7;
        v8 = *v6++;
        v7 = (33 * v7) ^ v8;
      }

      while (v8);
    }

    std::mutex::lock(ServiceMap);
    *&v15 = v5;
    v9 = sub_100009510(&v4[1].__m_.__sig, &v15);
    if (v9)
    {
      v11 = v9[3];
      v10 = v9[4];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v4);
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v10);
        if (!v11)
        {
LABEL_18:
          sub_100004A34(v10);
          goto LABEL_19;
        }

LABEL_13:
        v15 = 0uLL;
        (*(*v11 + 1128))(&v15, v11);
        v12 = v15;
        if (v15)
        {
          v13 = PersonalitySpecificImpl::simSlot(a1);
          v14 = (*(*(a1 + 32) + 40))();
          (**v12)(v12, v13, v14);
        }

        if (*(&v15 + 1))
        {
          sub_100004A34(*(&v15 + 1));
        }

        if (!v10)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      std::mutex::unlock(v4);
      if (v11)
      {
        goto LABEL_13;
      }
    }

    else
    {
      std::mutex::unlock(v4);
    }

LABEL_19:
    *(a1 + 798) = 1;
  }
}

void sub_10076A878(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10076A8D8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 56)) = a2[9];
  *(a1 + 24) = a2[10];
  *(a1 + *(*a1 - 64)) = a2[11];
  *(a1 + 32) = a2[12];
  *(a1 + 144) = off_101E7A3D8;
  v5 = *(a1 + 752);
  *(a1 + 752) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a1 + 760);
  *(a1 + 760) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(a1 + 784);
  *(a1 + 784) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  *(a1 + 794) = 0;
  *(a1 + 792) = 0;
  *(a1 + 796) = 0;
  sub_10076AD50(a1);
  sub_10000FF50(a1 + 864);
  sub_10000FF50(a1 + 832);
  v8 = *(a1 + 784);
  *(a1 + 784) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(a1 + 776);
  *(a1 + 776) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(a1 + 768);
  *(a1 + 768) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(a1 + 760);
  *(a1 + 760) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *(a1 + 752);
  *(a1 + 752) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v20 = (a1 + 720);
  sub_1000087B4(&v20);
  sub_100009970(a1 + 688, *(a1 + 696));
  v20 = (a1 + 664);
  sub_1000087B4(&v20);
  if (*(a1 + 663) < 0)
  {
    operator delete(*(a1 + 640));
  }

  PDPMetricInfo::~PDPMetricInfo((a1 + 440));
  sub_10001021C((a1 + 432));
  v13 = *(a1 + 352);
  if (v13)
  {
    *(a1 + 360) = v13;
    operator delete(v13);
  }

  v14 = *(a1 + 280);
  if (v14)
  {
    *(a1 + 288) = v14;
    operator delete(v14);
  }

  sub_10001021C((a1 + 248));
  sub_1000296E0((a1 + 240));
  sub_1000296E0((a1 + 232));
  v15 = *(a1 + 216);
  *(a1 + 216) = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = *(a1 + 208);
  if (v16)
  {
    sub_100004A34(v16);
  }

  v17 = *(a1 + 184);
  *(a1 + 184) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = *(a1 + 176);
  if (v18)
  {
    sub_100004A34(v18);
  }

  v19 = *(a1 + 160);
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  TMKXPCServer.shutdown()();
  sub_100356498((a1 + 32), a2 + 6);
  TechDataContextInterface::~TechDataContextInterface((a1 + 24));
  PersonalitySpecificImpl::~PersonalitySpecificImpl(a1);
}

void sub_10076AD50(void *a1)
{
  v1 = a1[25];
  if (v1)
  {
    v3 = a1[9];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      (*(*v1 + 88))(__p, v1);
      if (v7 >= 0)
      {
        v4 = __p;
      }

      else
      {
        v4 = __p[0];
      }

      *buf = 136315394;
      v9 = "releaseIPSecInterface";
      v10 = 2080;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s: IPSec virtual interface %s released", buf, 0x16u);
      if (v7 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v5 = a1[26];
    a1[25] = 0;
    a1[26] = 0;
    if (v5)
    {
      sub_100004A34(v5);
    }
  }
}

void sub_10076AE70(PersonalitySpecific *a1)
{
  sub_10076A8D8(a1, &off_101E7A3F0);
  DataContextInterface::~DataContextInterface((v2 + 24));

  PersonalitySpecific::~PersonalitySpecific(a1);
}

void sub_10076AED8(PersonalitySpecific *a1)
{
  sub_10076AE70(a1);

  operator delete();
}

void sub_10076AF10(uint64_t a1)
{
  sub_10076AE70((a1 - 24));

  operator delete();
}

void sub_10076AF4C(uint64_t a1)
{
  sub_10076AE70((a1 - 32));

  operator delete();
}

void sub_10076AF88(uint64_t a1)
{
  sub_10076AE70((a1 - 144));

  operator delete();
}

void sub_10076AFC8(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v15) = 136315138;
    *(&v15 + 4) = "stopUsing";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s: tech", &v15, 0xCu);
  }

  *(a1 + 798) = 0;
  if (!*(a1 + 224))
  {
    sub_10076AD50(a1);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 80));
  v4 = ServiceMap;
  if (v5 < 0)
  {
    v6 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  std::mutex::lock(ServiceMap);
  *&v15 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v15);
  if (!v9)
  {
    std::mutex::unlock(v4);
    return;
  }

  v11 = v9[3];
  v10 = v9[4];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    std::mutex::unlock(v4);
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v10);
    if (!v11)
    {
LABEL_19:
      sub_100004A34(v10);
      return;
    }
  }

  else
  {
    std::mutex::unlock(v4);
    if (!v11)
    {
      return;
    }
  }

  v15 = 0uLL;
  (*(*v11 + 1128))(&v15, v11);
  v12 = v15;
  if (v15)
  {
    v13 = PersonalitySpecificImpl::simSlot(a1);
    v14 = (*(*(a1 + 32) + 40))();
    (*(*v12 + 8))(v12, v13, v14);
  }

  if (*(&v15 + 1))
  {
    sub_100004A34(*(&v15 + 1));
  }

  if (v10)
  {
    goto LABEL_19;
  }
}

void sub_10076B1E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10076B24C(uint64_t a1, const char *a2)
{
  v4 = *(a1 + 72);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "invalidateSession";
    *&buf[12] = 2080;
    *&buf[14] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: %s", buf, 0x16u);
  }

  sub_10022CF24(a1, 0);
  sub_10022D3B4(a1, 0);
  v5 = *(a1 + 752);
  *(a1 + 752) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a1 + 760);
  *(a1 + 760) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(a1 + 784);
  *(a1 + 784) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(a1 + 768);
  *(a1 + 768) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(a1 + 776);
  *(a1 + 776) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  *(a1 + 794) = 0;
  *(a1 + 792) = 0;
  *(a1 + 796) = 0;
  *(a1 + 424) = 0;
  v10 = *(a1 + 200);
  if (v10)
  {
    if (((*(*v10 + 32))(v10) & 1) == 0)
    {
      v11 = *(a1 + 72);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "invalidateSession";
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s: VirtualInterface removeAllAddresses failed", buf, 0xCu);
      }
    }

    if (((*(**(a1 + 200) + 40))(*(a1 + 200)) & 1) == 0)
    {
      v12 = *(a1 + 72);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "invalidateSession";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s: VirtualInterface updateAdHocService failed", buf, 0xCu);
      }
    }
  }

  v13 = *(a1 + 184);
  if (v13)
  {
    v14 = *(a1 + 72);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "invalidateSession";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s: IKESession reset start", buf, 0xCu);
      v13 = *(a1 + 184);
      *(a1 + 184) = 0;
      if (!v13)
      {
LABEL_26:
        v15 = *(a1 + 72);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "invalidateSession";
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s: IKESession reset done", buf, 0xCu);
        }

        goto LABEL_28;
      }
    }

    else
    {
      *(a1 + 184) = 0;
    }

    (*(*v13 + 8))(v13);
    goto LABEL_26;
  }

LABEL_28:
  if (*(a1 + 616))
  {
    *(a1 + 616) = 0;
    v16 = *(a1 + 72);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "invalidateSession";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s: fIPFamilyRequested reset", buf, 0xCu);
    }
  }

  v17 = *(a1 + 160);
  if (v17)
  {
    v18 = std::__shared_weak_count::lock(v17);
    if (v18)
    {
      v19 = *(a1 + 152);
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
    v18 = 0;
  }

  v20 = a1 + 32;
  v21 = (*(*(a1 + 32) + 40))(a1 + 32);
  (*(*v19 + 352))(v19, v21);
  if (v18)
  {
    sub_100004A34(v18);
  }

  sub_100008764((a1 + 720));
  v22 = *(a1 + 432);
  *(a1 + 432) = 0;
  *buf = v22;
  sub_10001021C(buf);
  *buf = a1 + 712;
  *&buf[8] = 0;
  sub_1001E9F04(buf, 4uLL);
  v23 = *(a1 + 216);
  if (v23)
  {
    *(a1 + 216) = 0;
    (*(*v23 + 8))(v23);
  }

  *(a1 + 192) = 0;
  *(a1 + 745) = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 80));
  v25 = ServiceMap;
  if (v26 < 0)
  {
    v27 = (v26 & 0x7FFFFFFFFFFFFFFFLL);
    v28 = 5381;
    do
    {
      v26 = v28;
      v29 = *v27++;
      v28 = (33 * v28) ^ v29;
    }

    while (v29);
  }

  std::mutex::lock(ServiceMap);
  *buf = v26;
  v30 = sub_100009510(&v25[1].__m_.__sig, buf);
  if (v30)
  {
    v32 = v30[3];
    v31 = v30[4];
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v25);
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v31);
      if (!v32)
      {
LABEL_54:
        sub_100004A34(v31);
        goto LABEL_55;
      }
    }

    else
    {
      std::mutex::unlock(v25);
      if (!v32)
      {
        goto LABEL_55;
      }
    }

    *buf = 0;
    *&buf[8] = 0;
    (*(*v32 + 1128))(buf, v32);
    v33 = *buf;
    if (*buf)
    {
      v34 = PersonalitySpecificImpl::simSlot(a1);
      v35 = (*(*v20 + 40))(a1 + 32);
      (*(*v33 + 24))(v33, v34, v35);
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (v31)
    {
      goto LABEL_54;
    }
  }

  else
  {
    std::mutex::unlock(v25);
  }

LABEL_55:
  sub_10076A498(a1, 0);
  if (capabilities::ct::supports5G(v36))
  {
    (*(*v20 + 440))(buf, a1 + 32);
    if (*buf)
    {
      (*(*v20 + 440))(&v42, a1 + 32);
      v37 = (*(*v42 + 208))(v42);
      if (v43)
      {
        sub_100004A34(v43);
      }
    }

    else
    {
      v37 = 0;
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (v37)
    {
      if (!strcmp(a2, "Handover is done") || !strcmp(a2, "kDataContextDeactivateHandover"))
      {
        v39 = *(a1 + 72);
        if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_80;
        }

        *buf = 0;
        v40 = "#I invalidateSession: WiFi->Cell HO successful, do not free pduSessionId";
      }

      else
      {
        if (strcmp(a2, "Internet activated") && strcmp(a2, "Wan IP Acquired") && strcmp(a2, "ePDG resolved") && strcmp(a2, "terminate while connecting") && strcmp(a2, "disconnected") && strcmp(a2, "IP online"))
        {
          v38 = *(a1 + 72);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I invalidateSession: TechContext Done, or cell->WiFi HO failure: Free pduSessionId", buf, 2u);
          }

          sub_100356BE0(a1 + 32, buf);
          (*(**buf + 368))(*buf);
          if (*&buf[8])
          {
            sub_100004A34(*&buf[8]);
          }

          goto LABEL_80;
        }

        v39 = *(a1 + 72);
        if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_80;
        }

        *buf = 0;
        v40 = "#I invalidateSession: May retry next ePDG. Do not free pduSessionId until retry fails";
      }

      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, v40, buf, 2u);
    }
  }

LABEL_80:
  v41 = *(a1 + 72);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "invalidateSession";
    *&buf[12] = 2080;
    *&buf[14] = a2;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I %s: done: %s", buf, 0x16u);
  }
}

void sub_10076BB8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10076BC00(capabilities::ct *a1)
{
  if (capabilities::ct::supports5G(a1))
  {
    v3 = *(a1 + 4);
    v2 = a1 + 32;
    (*(v3 + 440))(&v7, v2);
    if (v7)
    {
      (*(*v2 + 440))(&v5, v2);
      v4 = (*(*v5 + 208))(v5);
      if (v6)
      {
        sub_100004A34(v6);
      }
    }

    else
    {
      v4 = 0;
    }

    if (v8)
    {
      sub_100004A34(v8);
    }

    if (v4)
    {
      sub_100356BE0(v2, &v7);
      (*(*v7 + 368))(v7);
      if (v8)
      {
        sub_100004A34(v8);
      }
    }
  }
}

void sub_10076BD38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_10076BD68@<X0>(CFStringRef theString@<X1>, uint64_t a2@<X0>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  MutableCopy = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, theString);
  if (capabilities::ct::supportsCellRadio(MutableCopy))
  {
    v48 = MutableCopy;
    if (MutableCopy)
    {
      CFRetain(MutableCopy);
    }

    v47[1] = _NSConcreteStackBlock;
    v47[2] = 0x40000000;
    v47[3] = sub_10076C594;
    v47[4] = &unk_101E7A478;
    v47[5] = a2;
    v9 = DataUtils::replaceStringHolder();
    sub_100305E28(&v48);
    v47[0] = MutableCopy;
    if (MutableCopy)
    {
      CFRetain(MutableCopy);
    }

    v42 = _NSConcreteStackBlock;
    v43 = 0x40000000;
    v44 = sub_10076C74C;
    v45 = &unk_101E7A498;
    v46 = a2;
    v10 = DataUtils::replaceStringHolder();
    sub_100305E28(v47);
    __p[0] = 0;
    __p[1] = 0;
    v41 = 0;
    v11 = std::__shared_weak_count::lock(*(a2 + 160));
    v12 = **(a2 + 152);
    if (a4)
    {
      (*(v12 + 424))(__p);
      sub_100004A34(v11);
      v38[0] = 0;
      v38[1] = 0;
      v39 = 0;
      v13 = std::__shared_weak_count::lock(*(a2 + 160));
      (*(**(a2 + 152) + 416))(v38);
    }

    else
    {
      (*(v12 + 408))(__p);
      sub_100004A34(v11);
      v38[0] = 0;
      v38[1] = 0;
      v39 = 0;
      v13 = std::__shared_weak_count::lock(*(a2 + 160));
      (*(**(a2 + 152) + 400))(v38);
    }

    sub_100004A34(v13);
    v16 = HIBYTE(v41);
    if (v41 < 0)
    {
      v16 = __p[1];
    }

    if (!v16)
    {
      goto LABEL_19;
    }

    v17 = HIBYTE(v39);
    if (v39 < 0)
    {
      v17 = v38[1];
    }

    if (!v17)
    {
LABEL_19:
      v18 = std::__shared_weak_count::lock(*(a2 + 160));
      (*(**(a2 + 152) + 408))(buf);
      if (SHIBYTE(v41) < 0)
      {
        operator delete(__p[0]);
      }

      *__p = *buf;
      v41 = *&buf[16];
      buf[23] = 0;
      buf[0] = 0;
      sub_100004A34(v18);
      v19 = std::__shared_weak_count::lock(*(a2 + 160));
      (*(**(a2 + 152) + 400))(buf);
      if (SHIBYTE(v39) < 0)
      {
        operator delete(v38[0]);
      }

      *v38 = *buf;
      v39 = *&buf[16];
      buf[23] = 0;
      buf[0] = 0;
      sub_100004A34(v19);
    }

    v37 = MutableCopy;
    if (MutableCopy)
    {
      CFRetain(MutableCopy);
    }

    v34[1] = _NSConcreteStackBlock;
    v34[2] = 1174405120;
    v34[3] = sub_10076C904;
    v34[4] = &unk_101E7A4B8;
    if (SHIBYTE(v41) < 0)
    {
      sub_100005F2C(&v35, __p[0], __p[1]);
    }

    else
    {
      v35 = *__p;
      v36 = v41;
    }

    v20 = DataUtils::replaceStringHolder();
    sub_100305E28(&v37);
    v34[0] = MutableCopy;
    if (MutableCopy)
    {
      CFRetain(MutableCopy);
    }

    v28 = _NSConcreteStackBlock;
    v29 = 1174405120;
    v30 = sub_10076CB08;
    v31 = &unk_101E7A4E8;
    if (SHIBYTE(v39) < 0)
    {
      sub_100005F2C(&v32, v38[0], v38[1]);
    }

    else
    {
      v32 = *v38;
      v33 = v39;
    }

    v21 = DataUtils::replaceStringHolder();
    sub_100305E28(v34);
    v22 = *(a2 + 72);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v50 = 0uLL;
      v51 = 0;
      ctu::cf::assign();
      *v26 = v50;
      v27 = v51;
      if (((v9 | v10) | (v20 | v21)))
      {
        v23 = "";
      }

      else
      {
        v23 = "not ";
      }

      v24 = v26;
      if (v27 < 0)
      {
        v24 = v26[0];
      }

      *buf = 136315906;
      *&buf[4] = "fillInPersonalization";
      *&buf[12] = 2080;
      *&buf[14] = a3;
      *&buf[22] = 2080;
      v53 = v23;
      v54 = 2080;
      v55 = v24;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s: %s personalization (%schanged): %s", buf, 0x2Au);
      if (SHIBYTE(v27) < 0)
      {
        operator delete(v26[0]);
      }
    }

    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }

    if (SHIBYTE(v36) < 0)
    {
      operator delete(v35);
    }

    if (SHIBYTE(v39) < 0)
    {
      operator delete(v38[0]);
    }
  }

  else
  {
    v14 = *(a2 + 72);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_50;
    }

    v50 = 0uLL;
    v51 = 0;
    ctu::cf::assign();
    *__p = v50;
    v41 = v51;
    v15 = __p;
    if (v51 < 0)
    {
      v15 = __p[0];
    }

    *buf = 136315650;
    *&buf[4] = "fillInPersonalization";
    *&buf[12] = 2080;
    *&buf[14] = a3;
    *&buf[22] = 2080;
    v53 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s: No cellular support. Personalization failed. %s unchanged: %s", buf, 0x20u);
  }

  if (SHIBYTE(v41) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_50:
  sub_100060DE8(a5, &MutableCopy);
  return sub_100305E28(&MutableCopy);
}

void sub_10076C450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, const void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  sub_100305E28(&a23);
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  sub_100305E28((v47 - 192));
  _Unwind_Resume(a1);
}

void sub_10076C594(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 32);
  v4 = std::__shared_weak_count::lock(*(v3 + 160));
  (*(**(v3 + 152) + 392))(v6);
  if (SHIBYTE(v7) < 0)
  {
    sub_100005F2C(__dst, v6[0], v6[1]);
  }

  else
  {
    *__dst = *v6;
    v10 = v7;
  }

  v8 = 0;
  if (SHIBYTE(v10) < 0)
  {
    sub_100005F2C(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v12 = v10;
  }

  v13 = 0;
  if (ctu::cf::convert_copy())
  {
    v5 = v8;
    v8 = v13;
    v14 = v5;
    sub_100005978(&v14);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  *a2 = v8;
  v8 = 0;
  sub_100005978(&v8);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(v6[0]);
  }

  sub_100004A34(v4);
}

void sub_10076C6E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, const void *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  sub_100005978(&a15);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  sub_100004A34(v28);
  _Unwind_Resume(a1);
}

void sub_10076C74C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 32);
  v4 = std::__shared_weak_count::lock(*(v3 + 160));
  (*(**(v3 + 152) + 384))(v6);
  if (SHIBYTE(v7) < 0)
  {
    sub_100005F2C(__dst, v6[0], v6[1]);
  }

  else
  {
    *__dst = *v6;
    v10 = v7;
  }

  v8 = 0;
  if (SHIBYTE(v10) < 0)
  {
    sub_100005F2C(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v12 = v10;
  }

  v13 = 0;
  if (ctu::cf::convert_copy())
  {
    v5 = v8;
    v8 = v13;
    v14 = v5;
    sub_100005978(&v14);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  *a2 = v8;
  v8 = 0;
  sub_100005978(&v8);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(v6[0]);
  }

  sub_100004A34(v4);
}

void sub_10076C8A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, const void *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  sub_100005978(&a15);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  sub_100004A34(v28);
  _Unwind_Resume(a1);
}

void sub_10076C904(uint64_t a1@<X0>, void *a2@<X8>)
{
  __dst[0] = 0;
  __dst[1] = 0;
  v9 = 0;
  v3 = *(a1 + 55);
  if ((v3 & 0x80000000) == 0)
  {
    if (v3 != 2)
    {
      *__dst = *(a1 + 32);
      v9 = *(a1 + 48);
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v4 = *(a1 + 40);
  if (v4 == 2)
  {
LABEL_5:
    std::operator+<char>();
    goto LABEL_7;
  }

  sub_100005F2C(__dst, *(a1 + 32), v4);
LABEL_7:
  if (SHIBYTE(v9) < 0)
  {
    sub_100005F2C(v6, __dst[0], __dst[1]);
  }

  else
  {
    *v6 = *__dst;
    v7 = v9;
  }

  if (SHIBYTE(v7) < 0)
  {
    sub_100005F2C(__p, v6[0], v6[1]);
  }

  else
  {
    *__p = *v6;
    v12 = v7;
  }

  v10 = 0;
  if (SHIBYTE(v12) < 0)
  {
    sub_100005F2C(&v13, __p[0], __p[1]);
  }

  else
  {
    v13 = *__p;
    v14 = v12;
  }

  v15 = 0;
  if (ctu::cf::convert_copy())
  {
    v5 = v10;
    v10 = v15;
    v16 = v5;
    sub_100005978(&v16);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13);
  }

  *a2 = v10;
  v10 = 0;
  sub_100005978(&v10);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(v6[0]);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_10076CA9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, const void *a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  sub_100005978(&a22);
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void sub_10076CB08(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 55) < 0)
  {
    sub_100005F2C(v4, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    *v4 = *(a1 + 32);
    v5 = *(a1 + 48);
  }

  if (SHIBYTE(v5) < 0)
  {
    sub_100005F2C(__dst, v4[0], v4[1]);
  }

  else
  {
    *__dst = *v4;
    v8 = v5;
  }

  v6 = 0;
  if (SHIBYTE(v8) < 0)
  {
    sub_100005F2C(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v10 = v8;
  }

  v11 = 0;
  if (ctu::cf::convert_copy())
  {
    v3 = v6;
    v6 = v11;
    v12 = v3;
    sub_100005978(&v12);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  *a2 = v6;
  v6 = 0;
  sub_100005978(&v6);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v5) < 0)
  {
    operator delete(v4[0]);
  }
}

void sub_10076CC30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, const void *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  sub_100005978(&a15);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10076CC84(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"Proposals");
  if (Value && (v2 = Value, v3 = CFGetTypeID(Value), v3 == CFArrayGetTypeID()) && (Count = CFArrayGetCount(v2), Count >= 1))
  {
    v5 = Count;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v2, v6);
      if (ValueAtIndex)
      {
        v10 = ValueAtIndex;
        v11 = CFGetTypeID(ValueAtIndex);
        if (v11 == CFDictionaryGetTypeID())
        {
          ValueAtIndex = v10;
        }

        else
        {
          ValueAtIndex = 0;
        }
      }

      v12 = CFDictionaryGetValue(ValueAtIndex, @"EAPMethod");
      if (v12)
      {
        v13 = v12;
        v14 = CFGetTypeID(v12);
        if (v14 == CFStringGetTypeID())
        {
          if (CFStringCompare(v13, @"EAP-AKA", 0))
          {
            if (CFStringCompare(v13, @"EAP-SIM", 0) == kCFCompareEqualTo)
            {
              v7 = 1;
            }
          }

          else
          {
            v8 = 1;
          }
        }
      }

      ++v6;
    }

    while (v5 != v6);
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  return v8 | (v7 << 8);
}

BOOL sub_10076CDC0(Registry **a1)
{
  (*(*a1 + 2))(&v16);
  v2 = *(v16 + 49);
  if (v17)
  {
    sub_100004A34(v17);
  }

  if (v2)
  {
    return 0;
  }

  ServiceMap = Registry::getServiceMap(a1[10]);
  v5 = ServiceMap;
  if ((v6 & 0x8000000000000000) != 0)
  {
    v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v8 = 5381;
    do
    {
      v6 = v8;
      v9 = *v7++;
      v8 = (33 * v8) ^ v9;
    }

    while (v9);
  }

  std::mutex::lock(ServiceMap);
  v16 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v16);
  if (!v10)
  {
    v12 = 0;
LABEL_13:
    std::mutex::unlock(v5);
    v11 = 0;
    v13 = 1;
    if (!v12)
    {
      goto LABEL_11;
    }

LABEL_14:
    v14 = (*(*v12 + 792))(v12);
    (*(*a1 + 2))(&v16, a1);
    v3 = v14 == *(v16 + 52);
    if (v17)
    {
      sub_100004A34(v17);
    }

    goto LABEL_16;
  }

  v12 = v10[3];
  v11 = v10[4];
  if (!v11)
  {
    goto LABEL_13;
  }

  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v5);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v11);
  v13 = 0;
  if (v12)
  {
    goto LABEL_14;
  }

LABEL_11:
  v3 = 1;
LABEL_16:
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  return v3;
}

void sub_10076CF68(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10076CF88(uint64_t a1)
{
  if (*(a1 + 632))
  {
    return 0;
  }

  __p[0] = 0;
  __p[1] = 0;
  v7 = 0;
  v3 = std::__shared_weak_count::lock(*(a1 + 160));
  (*(**(a1 + 152) + 552))(__p);
  sub_100004A34(v3);
  if (v7 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  v1 = isXLAT464Interface(v4);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  return v1;
}

void sub_10076D04C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10076D078(uint64_t a1, char a2, _BOOL4 a3)
{
  v7 = (a1 + 232);
  v6 = *(a1 + 232);
  *(a1 + 232) = 0;
  *buf = v6;
  sub_1000296E0(buf);
  v181 = 0;
  (*(**(v7 - 8) + 48))(&v181);
  if (v181)
  {
    v180 = 0;
    (*(**(a1 + 168) + 40))(&v180);
    if (v180)
    {
      *(a1 + 797) = 1;
    }

    else
    {
      *(a1 + 797) = 0;
      v10 = *(a1 + 72);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "getSettings";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s: fIsWiFiCallingCertified is false", buf, 0xCu);
      }
    }

    if (a3)
    {
      v11 = *(a1 + 616);
      v12 = (v11 >> 1) & 1;
      v13 = v11 == 0;
      if (!v11)
      {
        LOBYTE(v11) = 1;
      }

      v155 = v11;
      if (v13)
      {
        v14 = 1;
      }

      else
      {
        v14 = v12;
      }
    }

    else
    {
      v14 = 1;
      v155 = 1;
    }

    v154 = v14;
    v15 = *(a1 + 72);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = asString();
      v17 = asStringBool(v155 & 1);
      v18 = asStringBool(v154);
      v19 = asString();
      *buf = 136316162;
      *&buf[4] = "getSettings";
      *&buf[12] = 2080;
      *&buf[14] = v16;
      *&buf[22] = 2080;
      v188 = v17;
      v189 = 2080;
      v190 = v18;
      v191 = 2080;
      v192 = v19;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s: ipFamily = %s canUseIPv4 = %s, canUseIPv6 = %s fIPFamilyRequested = %s", buf, 0x34u);
    }

    v20 = CFDictionaryGetValue(v181, @"EPDGResolutionFallbackEnabled");
    v21 = v20;
    if (v20)
    {
      v22 = CFGetTypeID(v20);
      if (v22 == CFBooleanGetTypeID())
      {
        buf[0] = 0;
        ctu::cf::assign(buf, v21, v23);
        v24 = buf[0];
        *(a1 + 795) = buf[0];
        v25 = *(a1 + 72);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = asStringBool(v24);
          *buf = 136315394;
          *&buf[4] = "getSettings";
          *&buf[12] = 2080;
          *&buf[14] = v26;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I %s: IWLANePDGResolutionFallbackEnabled is set to %s", buf, 0x16u);
        }
      }
    }

    v179 = 0;
    sub_10076F41C(@"IKE", v181, &v179);
    v27 = v179;
    if (v179)
    {
      v28 = CFDictionaryGetValue(v179, @"LocalIdentifier");
      v29 = v28;
      if (v28)
      {
        v30 = CFGetTypeID(v28);
        if (v30 == CFStringGetTypeID())
        {
          v31 = v29;
        }

        else
        {
          v31 = 0;
        }
      }

      else
      {
        v31 = 0;
      }

      if (sub_10022E09C(a1, v27, v31))
      {
        v34 = CFDictionaryGetValue(v179, @"Username");
        v35 = v34;
        if (v34)
        {
          v36 = CFGetTypeID(v34);
          if (v36 == CFStringGetTypeID())
          {
            *buf = 0;
            sub_10076BD68(v35, a1, "Username", 0, buf);
            CFDictionarySetValue(v179, @"Username", *buf);
            sub_100005978(buf);
          }
        }

        v37 = a1 + 32;
        sub_100356BE0(a1 + 32, buf);
        if ((*(**buf + 72))(*buf, 1, 18))
        {
          v38 = (*(**(a1 + 168) + 208))(*(a1 + 168));
          if (*&buf[8])
          {
            sub_100004A34(*&buf[8]);
          }

          if (v38)
          {
            CFDictionarySetValue(v179, @"RemoteIdentifier", @"EMERGENCY");
            goto LABEL_51;
          }
        }

        else if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }

        v39 = CFDictionaryGetValue(v179, @"RemoteIdentifier");
        v40 = v39;
        if (v39)
        {
          v41 = CFGetTypeID(v39);
          if (v41 == CFStringGetTypeID())
          {
            *buf = 0;
            MutableCopy = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, v40);
            *buf = MutableCopy;
            v178 = MutableCopy;
            if (MutableCopy)
            {
              CFRetain(MutableCopy);
            }

            v177[1] = _NSConcreteStackBlock;
            v177[2] = 0x40000000;
            v177[3] = sub_10076F4E4;
            v177[4] = &unk_101E7A518;
            v177[5] = a1;
            v43 = DataUtils::replaceStringHolder();
            sub_100305E28(&v178);
            if (v43)
            {
              CFDictionarySetValue(v179, @"RemoteIdentifier", *buf);
            }

            sub_100305E28(buf);
          }
        }

LABEL_51:
        v44 = CFDictionaryGetValue(v179, @"RemoteAddress");
        v45 = v44;
        if (v44)
        {
          v46 = CFGetTypeID(v44);
          if (v46 == CFStringGetTypeID())
          {
            *&value = 0;
            v47 = (*(**(a1 + 168) + 200))(*(a1 + 168));
            sub_10076BD68(v45, a1, "RemoteAddress", v47, &value);
            CFDictionarySetValue(v179, @"RemoteAddress", value);
            valuePtr = 0uLL;
            v184 = 0;
            memset(buf, 0, sizeof(buf));
            ctu::cf::assign();
            valuePtr = *buf;
            v184 = *&buf[16];
            v48 = *(a1 + 72);
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              p_valuePtr = &valuePtr;
              if (v184 < 0)
              {
                p_valuePtr = valuePtr;
              }

              *buf = 136315394;
              *&buf[4] = "getSettings";
              *&buf[12] = 2080;
              *&buf[14] = p_valuePtr;
              _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "#I %s: ePDG: %s", buf, 0x16u);
            }

            if (SHIBYTE(v184) < 0)
            {
              operator delete(valuePtr);
            }

            sub_100005978(&value);
          }
        }

        v50 = CFDictionaryGetValue(v179, @"InternalInterface");
        v51 = v50;
        if (v50)
        {
          v52 = CFGetTypeID(v50);
          if (v52 == CFStringGetTypeID())
          {
            *buf = 0;
            v53 = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, v51);
            *buf = v53;
            v177[0] = v53;
            if (v53)
            {
              CFRetain(v53);
            }

            v172 = _NSConcreteStackBlock;
            v173 = 0x40000000;
            v174 = sub_10076F648;
            v175 = &unk_101E7A538;
            v176 = a1;
            v54 = DataUtils::replaceStringHolder();
            sub_100305E28(v177);
            if (v54)
            {
              CFDictionarySetValue(v179, @"InternalInterface", *buf);
            }

            sub_100305E28(buf);
          }
        }

        *(a1 + 632) = 1;
        v55 = (*(**(a1 + 168) + 56))(*(a1 + 168));
        sub_100356BE0(a1 + 32, &valuePtr);
        (*(*valuePtr + 264))(buf);
        v56 = *buf;
        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }

        if (*(&valuePtr + 1))
        {
          sub_100004A34(*(&valuePtr + 1));
        }

        if (!v56)
        {
          goto LABEL_107;
        }

        sub_100356BE0(a1 + 32, &valuePtr);
        (*(*valuePtr + 264))(buf);
        v57 = (*(**buf + 176))(*buf);
        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }

        if (*(&valuePtr + 1))
        {
          sub_100004A34(*(&valuePtr + 1));
        }

        sub_100356BE0(a1 + 32, &valuePtr);
        (*(*valuePtr + 264))(buf);
        v58 = (*(**buf + 216))(*buf) == 0;
        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }

        v59 = v58 & v55;
        if (*(&valuePtr + 1))
        {
          sub_100004A34(*(&valuePtr + 1));
        }

        if (v59)
        {
          v60 = *(a1 + 72);
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            *&buf[4] = "getSettings";
            _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "#I %s: going over Cell Internet!", buf, 0xCu);
          }

          *(a1 + 632) = 0;
        }

        if (!v57 || !(*(**(a1 + 168) + 192))(*(a1 + 168)))
        {
          goto LABEL_107;
        }

        ServiceMap = Registry::getServiceMap(*(a1 + 80));
        v62 = ServiceMap;
        if (v63 < 0)
        {
          v64 = (v63 & 0x7FFFFFFFFFFFFFFFLL);
          v65 = 5381;
          do
          {
            v63 = v65;
            v66 = *v64++;
            v65 = (33 * v65) ^ v66;
          }

          while (v66);
        }

        std::mutex::lock(ServiceMap);
        *buf = v63;
        v67 = sub_100009510(&v62[1].__m_.__sig, buf);
        if (v67)
        {
          v69 = v67[3];
          v68 = v67[4];
          if (v68)
          {
            atomic_fetch_add_explicit(&v68->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v62);
            atomic_fetch_add_explicit(&v68->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v68);
            v71 = 0;
LABEL_94:
            if (v69 && capabilities::ct::supportsGemini(v70))
            {
              (*(*a1 + 16))(buf, a1);
              v72 = *(*buf + 49);
              if (*&buf[8])
              {
                sub_100004A34(*&buf[8]);
              }

              if (!v72)
              {
                v37 = a1 + 32;
                if ((**v69)(v69))
                {
                  if ((v71 & 1) == 0)
                  {
                    sub_100004A34(v68);
                  }

LABEL_106:
                  CFDictionarySetValue(v179, @"MOBIKESupported", kCFBooleanTrue);
                  goto LABEL_107;
                }

                LOBYTE(v55) = !sub_10076CDC0(a1);
              }
            }

            if ((v71 & 1) == 0)
            {
              sub_100004A34(v68);
            }

            v37 = a1 + 32;
            if (v55)
            {
              goto LABEL_106;
            }

LABEL_107:
            value = 0uLL;
            v171 = 0;
            sub_10076F7F8(a1, *(a1 + 632), &value);
            if (SHIBYTE(v171) < 0)
            {
              if (*(&value + 1))
              {
                v73 = v179;
                sub_100005F2C(__p, value, *(&value + 1));
                goto LABEL_112;
              }
            }

            else if (HIBYTE(v171))
            {
              v73 = v179;
              *__p = value;
              v169 = v171;
LABEL_112:
              if (SHIBYTE(v169) < 0)
              {
                sub_100005F2C(&valuePtr, __p[0], __p[1]);
              }

              else
              {
                valuePtr = *__p;
                v184 = v169;
              }

              v185 = 0;
              if (SHIBYTE(v184) < 0)
              {
                sub_100005F2C(buf, valuePtr, *(&valuePtr + 1));
              }

              else
              {
                *buf = valuePtr;
                *&buf[16] = v184;
              }

              v186 = 0;
              if (ctu::cf::convert_copy())
              {
                v76 = v185;
                v185 = v186;
                theDict[0] = v76;
                sub_100005978(theDict);
              }

              if (buf[23] < 0)
              {
                operator delete(*buf);
              }

              v182 = v185;
              v185 = 0;
              sub_100005978(&v185);
              if (SHIBYTE(v184) < 0)
              {
                operator delete(valuePtr);
              }

              CFDictionarySetValue(v73, @"OutgoingInterface", v182);
              sub_100005978(&v182);
              if (SHIBYTE(v169) < 0)
              {
                operator delete(__p[0]);
              }

              v77 = (*(*a1 + 664))(a1, v179);
              *(a1 + 808) = v77;
              *(a1 + 816) = v78;
              if (!v77 || !HIDWORD(v77) || !v78)
              {
                v79 = *(a1 + 72);
                if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315138;
                  *&buf[4] = "getSettings";
                  _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "#I %s: Short DPD reporting is not configured", buf, 0xCu);
                }
              }

              v80 = sub_10076CC84(v179);
              v81 = v80;
              if ((v80 & 1) == 0 && (v80 & 0x100) == 0)
              {
LABEL_144:
                *v167 = 0;
                sub_10076F41C(@"ChildSAs", v181, v167);
                if (!*v167)
                {
                  v85 = *(a1 + 72);
                  v9 = 0;
                  if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315138;
                    *&buf[4] = "getSettings";
                    _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "#I %s: Failed retrieving ChildSAs key from carrier bundle", buf, 0xCu);
                    v9 = 0;
                  }

                  goto LABEL_277;
                }

                *v166 = 0;
                sub_10076F41C(@"FirstChild", *v167, v166);
                if (!*v166)
                {
                  v86 = *(a1 + 72);
                  v9 = 0;
                  if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315138;
                    *&buf[4] = "getSettings";
                    _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "#I %s: Failed retrieving ChildSAs->FirstChild key from carrier bundle", buf, 0xCu);
                    v9 = 0;
                  }

                  goto LABEL_276;
                }

                v165 = 0;
                sub_10076FBA0(@"ConfigurationAttributeRequest", v179, &v165);
                if (!v165)
                {
                  v87 = *(a1 + 72);
                  v9 = 0;
                  if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315138;
                    *&buf[4] = "getSettings";
                    _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "#I %s: Failed to retrive ConfigurationAttributeRequest key", buf, 0xCu);
                    v9 = 0;
                  }

                  goto LABEL_275;
                }

                theArray = 0;
                sub_10076FBA0(@"TrafficSelectorsLocal", *v166, &theArray);
                if (!theArray)
                {
                  v88 = *(a1 + 72);
                  v9 = 0;
                  if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315138;
                    *&buf[4] = "getSettings";
                    _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "#I %s: Failed to retrive TrafficSelectorsLocal key", buf, 0xCu);
                    v9 = 0;
                  }

                  goto LABEL_274;
                }

                v163 = 0;
                sub_10076FBA0(@"TrafficSelectorsRemote", *v166, &v163);
                if (!v163)
                {
                  v89 = *(a1 + 72);
                  v9 = 0;
                  if (!os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
                  {
LABEL_273:
                    sub_1000279DC(&v163);
LABEL_274:
                    sub_1000279DC(&theArray);
LABEL_275:
                    sub_1000279DC(&v165);
LABEL_276:
                    sub_1000296E0(v166);
LABEL_277:
                    sub_1000296E0(v167);
LABEL_278:
                    if (SHIBYTE(v171) < 0)
                    {
                      operator delete(value);
                    }

                    goto LABEL_280;
                  }

                  *buf = 136315138;
                  *&buf[4] = "getSettings";
                  _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "#I %s: Failed to retrive TrafficSelectorsRemote key", buf, 0xCu);
LABEL_246:
                  v9 = 0;
                  goto LABEL_273;
                }

                sub_100356BE0(v37, buf);
                v82 = *buf;
                (*(*a1 + 16))(&v161, a1);
                v83 = (*(*v82 + 256))(v82, &v161);
                if (v162)
                {
                  sub_100004A34(v162);
                }

                if (*&buf[8])
                {
                  sub_100004A34(*&buf[8]);
                }

                if (a3)
                {
                  v153 = (*(*a1 + 536))(a1, v83);
                }

                else
                {
                  v153 = 0;
                }

                v90 = *(a1 + 72);
                if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
                {
                  v91 = asStringBool(a3);
                  v92 = asString();
                  v93 = asStringBool(v153);
                  *buf = 136315906;
                  *&buf[4] = "getSettings";
                  *&buf[12] = 2080;
                  *&buf[14] = v91;
                  *&buf[22] = 2080;
                  v188 = v92;
                  v189 = 2080;
                  v190 = v93;
                  _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "#I %s: handOver:%s, BB dataMode:%s, HandOverRequestAllowed:%s", buf, 0x2Au);
                }

                if ((a2 & 1) == 0 || (v155 & 1) == 0)
                {
LABEL_202:
                  v112 = !v154;
                  if ((a2 & 2) == 0)
                  {
                    v112 = 1;
                  }

                  if (v112)
                  {
                    goto LABEL_236;
                  }

                  theDict[0] = 0;
                  sub_10076FBA0(@"ConfigurationAttributeRequestv6", v181, theDict);
                  v113 = theDict[0];
                  if (theDict[0])
                  {
                    if ((a3 & v153) == 1)
                    {
                      sub_100356BE0(v37, &valuePtr);
                      (*(*valuePtr + 160))(buf);
                      sub_1007698B0(v113, buf);
                      if (*(&valuePtr + 1))
                      {
                        sub_100004A34(*(&valuePtr + 1));
                      }

                      goto LABEL_230;
                    }

                    v114 = *(a1 + 160);
                    if (v114)
                    {
                      v115 = std::__shared_weak_count::lock(v114);
                      if (v115)
                      {
                        v116 = *(a1 + 152);
                      }

                      else
                      {
                        v116 = 0;
                      }
                    }

                    else
                    {
                      v116 = 0;
                      v115 = 0;
                    }

                    if (((*(*&v116[*(*v116 - 336)] + 152))(&v116[*(*v116 - 336)]) & 1) != 0 || (*(**(a1 + 168) + 168))(*(a1 + 168)))
                    {
                      v117 = sub_10022E67C(a1, theDict[0], 2);
                      if (v115)
                      {
                        sub_100004A34(v115);
                      }

                      if (v117)
                      {
                        v118 = *(a1 + 72);
                        if (!os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_230;
                        }

                        *buf = 136315138;
                        *&buf[4] = "getSettings";
                        v119 = "#I %s: Implicit handover from AttachAPN for IPv6";
                        goto LABEL_229;
                      }
                    }

                    else if (v115)
                    {
                      sub_100004A34(v115);
                    }

                    v118 = *(a1 + 72);
                    if (!os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_230;
                    }

                    *buf = 136315138;
                    *&buf[4] = "getSettings";
                    v119 = "#I %s: Initial bringUp for IPv6";
LABEL_229:
                    _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, v119, buf, 0xCu);
LABEL_230:
                    v120 = v165;
                    v121 = theDict[0];
                    v195.length = CFArrayGetCount(theDict[0]);
                    v195.location = 0;
                    CFArrayAppendArray(v120, v121, v195);
                    v122 = CFDictionaryGetValue(v181, @"ExtraConfigurationAttributeRequestv6");
                    v123 = v122;
                    if (v122)
                    {
                      v124 = CFGetTypeID(v122);
                      if (v124 == CFArrayGetTypeID())
                      {
                        v125 = v165;
                        v196.length = CFArrayGetCount(v123);
                        v196.location = 0;
                        CFArrayAppendArray(v125, v123, v196);
                      }
                    }

                    v126 = CFDictionaryGetValue(v181, @"TrafficSelectorsv6");
                    v127 = v126;
                    if (v126)
                    {
                      v128 = CFGetTypeID(v126);
                      if (v128 == CFDictionaryGetTypeID())
                      {
                        CFArrayAppendValue(theArray, v127);
                        CFArrayAppendValue(v163, v127);
                        sub_1000279DC(theDict);
LABEL_236:
                        v129 = CFDictionaryContainsKey(v179, @"DisableSwitchToNATTPort");
                        if (!v129)
                        {
                          CFDictionarySetValue(v179, @"DisableSwitchToNATTPort", kCFBooleanTrue);
                        }

                        if (!capabilities::ct::supports5G(v129))
                        {
                          goto LABEL_257;
                        }

                        (*(*v37 + 440))(buf, v37);
                        if (*buf)
                        {
                          (*(*v37 + 440))(&valuePtr, v37);
                          v130 = (*(*valuePtr + 208))(valuePtr);
                          if (*(&valuePtr + 1))
                          {
                            sub_100004A34(*(&valuePtr + 1));
                          }
                        }

                        else
                        {
                          v130 = 0;
                        }

                        if (*&buf[8])
                        {
                          sub_100004A34(*&buf[8]);
                        }

                        if (v130)
                        {
                          sub_100356BE0(v37, buf);
                          v131 = (*(**buf + 168))(*buf);
                          v132 = *&buf[8];
                          if (*&buf[8])
                          {
                            sub_100004A34(*&buf[8]);
                          }

                          LODWORD(valuePtr) = v131;
                          if ((v131 & 0x80000000) == 0)
                          {
                            *buf = 0;
                            v133 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
                            *buf = v133;
                            v134 = *(a1 + 72);
                            if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
                            {
                              LOWORD(theDict[0]) = 0;
                              _os_log_impl(&_mh_execute_header, v134, OS_LOG_TYPE_DEFAULT, "#I add PDUSessionID to ikeData", theDict, 2u);
                              v133 = *buf;
                            }

                            CFDictionarySetValue(v179, @"PDUSessionID", v133);
                            v132 = sub_100029A48(buf);
                          }
                        }

                        else
                        {
LABEL_257:
                          v135 = *(a1 + 72);
                          v132 = os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT);
                          if (v132)
                          {
                            *buf = 0;
                            _os_log_impl(&_mh_execute_header, v135, OS_LOG_TYPE_DEFAULT, "#I Do no fill PDUSessionID for non-IMS", buf, 2u);
                          }
                        }

                        if (capabilities::ct::supportsCellRadio(v132))
                        {
                          v136 = CFDictionaryGetValue(v181, @"SupportIMEIRequest");
                          v137 = v136;
                          if (v136 && (v138 = CFGetTypeID(v136), v138 == CFBooleanGetTypeID()) && (buf[0] = 0, ctu::cf::assign(buf, v137, v139), buf[0] == 1))
                          {
                            v140 = *(a1 + 72);
                            if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
                            {
                              *buf = 0;
                              _os_log_impl(&_mh_execute_header, v140, OS_LOG_TYPE_DEFAULT, "#I SupportIMEIRequest is true", buf, 2u);
                            }

                            theDict[0] = 0;
                            theDict[1] = 0;
                            v160 = 0;
                            v141 = *(a1 + 160);
                            if (v141)
                            {
                              v141 = std::__shared_weak_count::lock(v141);
                              v142 = v141;
                              if (v141)
                              {
                                v141 = *(a1 + 152);
                              }
                            }

                            else
                            {
                              v142 = 0;
                            }

                            (v141->__vftable[9].__on_zero_shared)(theDict);
                            if (v142)
                            {
                              sub_100004A34(v142);
                            }

                            v146 = SHIBYTE(v160);
                            if (v160 >= 0)
                            {
                              v147 = HIBYTE(v160);
                            }

                            else
                            {
                              v147 = theDict[1];
                            }

                            v148 = *(a1 + 72);
                            v149 = os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT);
                            if (v147)
                            {
                              if (v149)
                              {
                                v150 = theDict[0];
                                if (v146 >= 0)
                                {
                                  v150 = theDict;
                                }

                                *buf = 136315138;
                                *&buf[4] = v150;
                                _os_log_impl(&_mh_execute_header, v148, OS_LOG_TYPE_DEFAULT, "#I IMEI: %s", buf, 0xCu);
                                LOBYTE(v146) = HIBYTE(v160);
                              }

                              v158 = 0;
                              if ((v146 & 0x80) != 0)
                              {
                                sub_100005F2C(__dst, theDict[0], theDict[1]);
                              }

                              else
                              {
                                *__dst = *theDict;
                                v157 = v160;
                              }

                              if (SHIBYTE(v157) < 0)
                              {
                                sub_100005F2C(&valuePtr, __dst[0], __dst[1]);
                              }

                              else
                              {
                                valuePtr = *__dst;
                                v184 = v157;
                              }

                              v182 = 0;
                              if (SHIBYTE(v184) < 0)
                              {
                                sub_100005F2C(buf, valuePtr, *(&valuePtr + 1));
                              }

                              else
                              {
                                *buf = valuePtr;
                                *&buf[16] = v184;
                              }

                              v185 = 0;
                              if (ctu::cf::convert_copy())
                              {
                                v151 = v182;
                                v182 = v185;
                                v186 = v151;
                                sub_100005978(&v186);
                              }

                              if (buf[23] < 0)
                              {
                                operator delete(*buf);
                              }

                              v158 = v182;
                              v182 = 0;
                              sub_100005978(&v182);
                              if (SHIBYTE(v184) < 0)
                              {
                                operator delete(valuePtr);
                              }

                              if (SHIBYTE(v157) < 0)
                              {
                                operator delete(__dst[0]);
                              }

                              if (v158)
                              {
                                CFDictionarySetValue(v179, @"IMEI", v158);
                              }

                              else
                              {
                                v152 = *(a1 + 72);
                                if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
                                {
                                  *buf = 0;
                                  _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "#E CFIMEI is empty", buf, 2u);
                                }
                              }

                              sub_100005978(&v158);
                            }

                            else if (v149)
                            {
                              *buf = 0;
                              _os_log_impl(&_mh_execute_header, v148, OS_LOG_TYPE_DEFAULT, "#E IMEI is empty", buf, 2u);
                            }

                            if (SHIBYTE(v160) < 0)
                            {
                              operator delete(theDict[0]);
                            }
                          }

                          else
                          {
                            v143 = *(a1 + 72);
                            if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
                            {
                              *buf = 0;
                              _os_log_impl(&_mh_execute_header, v143, OS_LOG_TYPE_DEFAULT, "#I SupportIMEIRequest is false", buf, 2u);
                            }
                          }
                        }

                        sub_1007812D8((a1 + 240), &v179);
                        sub_100010180(&valuePtr, v166);
                        v144 = (a1 + 248);
                        if ((a1 + 248) != &valuePtr)
                        {
                          *buf = *v144;
                          *v144 = valuePtr;
                          *&valuePtr = 0;
                          sub_10001021C(buf);
                        }

                        sub_10001021C(&valuePtr);
                        sub_1007812D8(v7, &v181);
                        v9 = 1;
                        goto LABEL_273;
                      }
                    }

                    v95 = *(a1 + 72);
                    if (!os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_245;
                    }

                    *buf = 136315138;
                    *&buf[4] = "getSettings";
                    v96 = "#I %s: Failed to retrive TrafficSelectorsv6 key";
                    goto LABEL_244;
                  }

                  v95 = *(a1 + 72);
                  if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315138;
                    *&buf[4] = "getSettings";
                    v96 = "#I %s: Failed to retrive ConfigurationAttributeRequestv6 key";
                    goto LABEL_244;
                  }

LABEL_245:
                  sub_1000279DC(theDict);
                  goto LABEL_246;
                }

                theDict[0] = 0;
                sub_10076FBA0(@"ConfigurationAttributeRequestv4", v181, theDict);
                v94 = theDict[0];
                if (!theDict[0])
                {
                  v95 = *(a1 + 72);
                  if (!os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_245;
                  }

                  *buf = 136315138;
                  *&buf[4] = "getSettings";
                  v96 = "#I %s: Failed to retrive ConfigurationAttributeRequestv4 key";
                  goto LABEL_244;
                }

                if ((a3 & v153) == 1)
                {
                  sub_100356BE0(v37, &valuePtr);
                  (*(*valuePtr + 160))(buf);
                  sub_1007698B0(v94, buf);
                  if (*(&valuePtr + 1))
                  {
                    sub_100004A34(*(&valuePtr + 1));
                  }

                  goto LABEL_196;
                }

                v97 = *(a1 + 160);
                if (v97)
                {
                  v98 = std::__shared_weak_count::lock(v97);
                  if (v98)
                  {
                    v99 = *(a1 + 152);
                  }

                  else
                  {
                    v99 = 0;
                  }
                }

                else
                {
                  v99 = 0;
                  v98 = 0;
                }

                if (((*(*&v99[*(*v99 - 336)] + 152))(&v99[*(*v99 - 336)]) & 1) != 0 || (*(**(a1 + 168) + 168))(*(a1 + 168)))
                {
                  v100 = sub_10022E67C(a1, theDict[0], 1);
                  if (v98)
                  {
                    sub_100004A34(v98);
                  }

                  if (v100)
                  {
                    v101 = *(a1 + 72);
                    if (!os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_196;
                    }

                    *buf = 136315138;
                    *&buf[4] = "getSettings";
                    v102 = "#I %s: Implicit handover from AttachAPN for IPv4";
                    goto LABEL_195;
                  }
                }

                else if (v98)
                {
                  sub_100004A34(v98);
                }

                v101 = *(a1 + 72);
                if (!os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_196;
                }

                *buf = 136315138;
                *&buf[4] = "getSettings";
                v102 = "#I %s: Initial bringUp for IPv4";
LABEL_195:
                _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, v102, buf, 0xCu);
LABEL_196:
                v103 = v165;
                v104 = theDict[0];
                v193.length = CFArrayGetCount(theDict[0]);
                v193.location = 0;
                CFArrayAppendArray(v103, v104, v193);
                v105 = CFDictionaryGetValue(v181, @"ExtraConfigurationAttributeRequestv4");
                v106 = v105;
                if (v105)
                {
                  v107 = CFGetTypeID(v105);
                  if (v107 == CFArrayGetTypeID())
                  {
                    v108 = v165;
                    v194.length = CFArrayGetCount(v106);
                    v194.location = 0;
                    CFArrayAppendArray(v108, v106, v194);
                  }
                }

                v109 = CFDictionaryGetValue(v181, @"TrafficSelectorsv4");
                v110 = v109;
                if (v109)
                {
                  v111 = CFGetTypeID(v109);
                  if (v111 == CFDictionaryGetTypeID())
                  {
                    CFArrayAppendValue(theArray, v110);
                    CFArrayAppendValue(v163, v110);
                    sub_1000279DC(theDict);
                    goto LABEL_202;
                  }
                }

                v95 = *(a1 + 72);
                if (!os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_245;
                }

                *buf = 136315138;
                *&buf[4] = "getSettings";
                v96 = "#I %s: Failed to retrive TrafficSelectorsv4 key";
LABEL_244:
                _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, v96, buf, 0xCu);
                goto LABEL_245;
              }

              *&valuePtr = 0;
              *&valuePtr = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
              theDict[0] = 0;
              theDict[0] = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
              if (theDict[0] && valuePtr)
              {
                *buf = 0;
                PersonalitySpecificImpl::simSlot(a1);
                subscriber::generateUuidStrFromSlotId();
                if (*buf)
                {
                  CFDictionarySetValue(valuePtr, kCTSimSupportUICCAuthenticationSlotUUIDKey, *buf);
                }

                if (v81)
                {
                  CFDictionarySetValue(theDict[0], @"EAPAKAProperties", valuePtr);
                }

                if ((v81 & 0x100) != 0)
                {
                  CFDictionarySetValue(theDict[0], @"EAPSIMProperties", valuePtr);
                }

                CFDictionarySetValue(v179, @"EAPProperties", theDict[0]);
                sub_100005978(buf);
                sub_1000296E0(theDict);
                sub_1000296E0(&valuePtr);
                goto LABEL_144;
              }

              v84 = *(a1 + 72);
              if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                *&buf[4] = "getSettings";
                _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "#I %s: Failed create EAP properties", buf, 0xCu);
              }

              sub_1000296E0(theDict);
              sub_1000296E0(&valuePtr);
LABEL_158:
              v9 = 0;
              goto LABEL_278;
            }

            v74 = *(a1 + 72);
            v9 = 0;
            if (!os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_278;
            }

            v75 = asString();
            *buf = 136315394;
            *&buf[4] = "getSettings";
            *&buf[12] = 2080;
            *&buf[14] = v75;
            _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "#I %s: Cannot find outgoing interface for %s", buf, 0x16u);
            goto LABEL_158;
          }
        }

        else
        {
          v69 = 0;
        }

        std::mutex::unlock(v62);
        v68 = 0;
        v71 = 1;
        goto LABEL_94;
      }

      v32 = *(a1 + 72);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "getSettings";
        v33 = "#I %s: Failed building LocalIdentifier";
        goto LABEL_40;
      }
    }

    else
    {
      v32 = *(a1 + 72);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "getSettings";
        v33 = "#I %s: Failed retrieving IKE key from carrier bundle";
LABEL_40:
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, v33, buf, 0xCu);
      }
    }

    v9 = 0;
LABEL_280:
    sub_1000296E0(&v179);
    sub_10001021C(&v180);
    goto LABEL_281;
  }

  v8 = *(a1 + 72);
  v9 = 0;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "getSettings";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s: copyTechSettings failed", buf, 0xCu);
    v9 = 0;
  }

LABEL_281:
  sub_1000296E0(&v181);
  return v9;
}

void sub_10076F05C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, const void *a26, const void *a27, const void *a28, const void *a29, const void *a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  sub_100005978((v48 - 216));
  if (*(v48 - 185) < 0)
  {
    operator delete(*(v48 - 208));
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  sub_1000279DC(&a26);
  sub_1000279DC(&a27);
  sub_1000279DC(&a28);
  sub_1000296E0(&a29);
  sub_1000296E0(&a30);
  if (a42 < 0)
  {
    operator delete(a37);
  }

  sub_1000296E0((v48 - 240));
  sub_10001021C((v48 - 232));
  sub_1000296E0((v48 - 224));
  _Unwind_Resume(a1);
}

void sub_10076F41C(void *key@<X1>, const __CFDictionary *a2@<X0>, CFMutableDictionaryRef *a3@<X8>)
{
  *a3 = 0;
  if (a2)
  {
    if (key)
    {
      Value = CFDictionaryGetValue(a2, key);
      v7 = Value;
      if (Value)
      {
        v8 = CFGetTypeID(Value);
        if (v8 == CFDictionaryGetTypeID())
        {
          MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v7);
          *a3 = MutableCopy;
          v10 = 0;
          sub_1000296E0(&v10);
          CFDictionarySetValue(a2, key, MutableCopy);
        }
      }
    }
  }
}

void sub_10076F4E4(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1003567A4((*(a1 + 32) + 32), v4);
  if (SHIBYTE(v5) < 0)
  {
    sub_100005F2C(__dst, v4[0], v4[1]);
  }

  else
  {
    *__dst = *v4;
    v8 = v5;
  }

  v6 = 0;
  if (SHIBYTE(v8) < 0)
  {
    sub_100005F2C(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v10 = v8;
  }

  v11 = 0;
  if (ctu::cf::convert_copy())
  {
    v3 = v6;
    v6 = v11;
    v12 = v3;
    sub_100005978(&v12);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  *a2 = v6;
  v6 = 0;
  sub_100005978(&v6);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v5) < 0)
  {
    operator delete(v4[0]);
  }
}