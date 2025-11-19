void sub_1000B6710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, __int128 __p, int a23, __int16 a24, char a25, char a26)
{
  sub_1000C20C4(&a9);
  sub_1000C20C4(&__p);
  if (*(v26 - 121) < 0)
  {
    operator delete(*(v26 - 144));
  }

  if (*(v26 - 89) < 0)
  {
    operator delete(*(v26 - 112));
  }

  _Unwind_Resume(a1);
}

void sub_1000B6944(int a1, uint64_t a2)
{
  v3 = sub_1000C2128(a2, "cellularSignalBars");
  LODWORD(v45.__r_.__value_.__l.__data_) = 0;
  sub_1000C3DC4(v3, &v45);
  if (SLODWORD(v45.__r_.__value_.__l.__data_) <= 2)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 112), OS_LOG_TYPE_DEBUG))
    {
      sub_100206244();
    }

    return;
  }

  sub_100007ECC(&__str, "");
  v4 = sub_1000C2128(a2, "speechBadFrameCount");
  LODWORD(v45.__r_.__value_.__l.__data_) = 0;
  sub_1000C3DC4(v4, &v45);
  if (SLODWORD(v45.__r_.__value_.__l.__data_) <= 0)
  {
    v6 = sub_1000C2128(a2, "speechLostFrameCount");
    LODWORD(v45.__r_.__value_.__l.__data_) = 0;
    sub_1000C3DC4(v6, &v45);
    if (SLODWORD(v45.__r_.__value_.__l.__data_) < 6)
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 112), OS_LOG_TYPE_DEBUG))
      {
        sub_1002061B0();
      }

      goto LABEL_101;
    }

    v5 = "Loss Frame Rate";
  }

  else
  {
    v5 = "Bad Frame Rate";
  }

  std::string::assign(&__str, v5);
  sub_100007ECC(&v51, "");
  if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v51.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v51.__r_.__value_.__l.__size_;
  }

  v8 = &v45;
  sub_100013A6C(&v45, size + 9);
  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v8 = v45.__r_.__value_.__r.__words[0];
  }

  if (size)
  {
    if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v51;
    }

    else
    {
      v9 = v51.__r_.__value_.__r.__words[0];
    }

    memmove(v8, v9, size);
  }

  strcpy(v8 + size, "callType:");
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  v51 = v45;
  v10 = sub_1000C2128(a2, "callType");
  v53 = 0;
  sub_1000C3DC4(v10, &v53);
  sub_1000C1F58(v53, &v45);
  if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v51;
  }

  else
  {
    v11 = v51.__r_.__value_.__r.__words[0];
  }

  if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = HIBYTE(v51.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v12 = v51.__r_.__value_.__l.__size_;
  }

  v13 = std::string::insert(&v45, 0, v11, v12);
  v14 = v13->__r_.__value_.__r.__words[0];
  *buf = v13->__r_.__value_.__l.__size_;
  *&buf[7] = *(&v13->__r_.__value_.__r.__words[1] + 7);
  v15 = HIBYTE(v13->__r_.__value_.__r.__words[2]);
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  v51.__r_.__value_.__r.__words[0] = v14;
  v51.__r_.__value_.__l.__size_ = *buf;
  *(&v51.__r_.__value_.__r.__words[1] + 7) = *&buf[7];
  *(&v51.__r_.__value_.__s + 23) = v15;
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = HIBYTE(v51.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v16 = v51.__r_.__value_.__l.__size_;
  }

  v17 = &v45;
  sub_100013A6C(&v45, v16 + 15);
  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v17 = v45.__r_.__value_.__r.__words[0];
  }

  if (v16)
  {
    if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = &v51;
    }

    else
    {
      v18 = v51.__r_.__value_.__r.__words[0];
    }

    memmove(v17, v18, v16);
  }

  strcpy(v17 + v16, " statDirection:");
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  v51 = v45;
  v19 = sub_1000C2128(a2, "statDirection");
  v54 = 0;
  sub_1000C3DC4(v19, &v54);
  v20 = "Invalid";
  if (v54 == 1)
  {
    v20 = "DL";
  }

  if (v54)
  {
    v21 = v20;
  }

  else
  {
    v21 = "UL";
  }

  sub_100007ECC(&v45, v21);
  if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v51;
  }

  else
  {
    v22 = v51.__r_.__value_.__r.__words[0];
  }

  if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = HIBYTE(v51.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v23 = v51.__r_.__value_.__l.__size_;
  }

  v24 = std::string::insert(&v45, 0, v22, v23);
  v25 = v24->__r_.__value_.__r.__words[0];
  *buf = v24->__r_.__value_.__l.__size_;
  *&buf[7] = *(&v24->__r_.__value_.__r.__words[1] + 7);
  v26 = HIBYTE(v24->__r_.__value_.__r.__words[2]);
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  v51.__r_.__value_.__r.__words[0] = v25;
  v51.__r_.__value_.__l.__size_ = *buf;
  *(&v51.__r_.__value_.__r.__words[1] + 7) = *&buf[7];
  *(&v51.__r_.__value_.__s + 23) = v26;
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v27 = HIBYTE(v51.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v27 = v51.__r_.__value_.__l.__size_;
  }

  v28 = &v45;
  sub_100013A6C(&v45, v27 + 20);
  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v28 = v45.__r_.__value_.__r.__words[0];
  }

  if (v27)
  {
    if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = &v51;
    }

    else
    {
      v29 = v51.__r_.__value_.__r.__words[0];
    }

    memmove(v28, v29, v27);
  }

  strcpy(v28 + v27, " cellularSignalBars:");
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  v51 = v45;
  v30 = sub_1000C2128(a2, "cellularSignalBars");
  v55 = 0;
  sub_1000C3DC4(v30, &v55);
  std::to_string(&v45, v55);
  if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v31 = &v51;
  }

  else
  {
    v31 = v51.__r_.__value_.__r.__words[0];
  }

  if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v32 = HIBYTE(v51.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v32 = v51.__r_.__value_.__l.__size_;
  }

  v33 = std::string::insert(&v45, 0, v31, v32);
  v34 = v33->__r_.__value_.__r.__words[0];
  *buf = v33->__r_.__value_.__l.__size_;
  *&buf[7] = *(&v33->__r_.__value_.__r.__words[1] + 7);
  v35 = HIBYTE(v33->__r_.__value_.__r.__words[2]);
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  v51.__r_.__value_.__r.__words[0] = v34;
  v51.__r_.__value_.__l.__size_ = *buf;
  *(&v51.__r_.__value_.__r.__words[1] + 7) = *&buf[7];
  *(&v51.__r_.__value_.__s + 23) = v35;
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  sub_100007ECC(&v45, "Cellular");
  memset(&v49, 0, sizeof(v49));
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  v50 = 65537;
  std::string::assign(&v46, "Audio Quality");
  std::string::operator=((&v47 + 8), &__str);
  std::string::operator=(&v49, &v51);
  v36 = *(qword_1002DBE98 + 112);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "WISABC:#I Rule satisfied and triggering ABC for event: IMSCallAudioFrameStats", buf, 2u);
  }

  sub_1000C367C(v37, &v45);
  sub_1001075F8(v37);
  if (v44 < 0)
  {
    operator delete(__p);
  }

  if (v42 < 0)
  {
    operator delete(v41);
  }

  if (v40 < 0)
  {
    operator delete(v39);
  }

  if (v38 < 0)
  {
    operator delete(v37[0]);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48) < 0)
  {
    operator delete(*(&v47 + 1));
  }

  if (SBYTE7(v47) < 0)
  {
    operator delete(v46);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

LABEL_101:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_1000B7000(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, __int128 __p, int a23, __int16 a24, char a25, char a26)
{
  sub_1000C20C4(&a9);
  sub_1000C20C4(&__p);
  if (*(v26 - 121) < 0)
  {
    operator delete(*(v26 - 144));
  }

  if (*(v26 - 97) < 0)
  {
    operator delete(*(v26 - 120));
  }

  _Unwind_Resume(a1);
}

void sub_1000B7234(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1000C2128(a2, "cellularSignalBars");
  LODWORD(v47.__r_.__value_.__l.__data_) = 0;
  sub_1000C3DC4(v4, &v47);
  if (SLODWORD(v47.__r_.__value_.__l.__data_) <= 2)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 112), OS_LOG_TYPE_DEBUG))
    {
      sub_100206370();
    }

    return;
  }

  sub_100007ECC(&__str, "");
  v5 = sub_1000C2128(a2, "AverageSpeechLossCount");
  LODWORD(v47.__r_.__value_.__l.__data_) = 0;
  sub_1000C3DC4(v5, &v47);
  if (SLODWORD(v47.__r_.__value_.__l.__data_) <= 2)
  {
    v7 = sub_1000C2128(a2, "ContinuousSpeechLossCount");
    LODWORD(v47.__r_.__value_.__l.__data_) = 0;
    sub_1000C3DC4(v7, &v47);
    if (SLODWORD(v47.__r_.__value_.__l.__data_) < 7)
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 112), OS_LOG_TYPE_DEBUG))
      {
        sub_1002062DC();
      }

      goto LABEL_104;
    }

    v6 = "Cont Speech Loss per Speech Segment";
  }

  else
  {
    v6 = "Avg Speech Loss per Speech Segment";
  }

  std::string::assign(&__str, v6);
  sub_100007ECC(&v53, "");
  if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v53.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v53.__r_.__value_.__l.__size_;
  }

  v9 = &v47;
  sub_100013A6C(&v47, size + 9);
  if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v9 = v47.__r_.__value_.__r.__words[0];
  }

  if (size)
  {
    if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v53;
    }

    else
    {
      v10 = v53.__r_.__value_.__r.__words[0];
    }

    memmove(v9, v10, size);
  }

  strcpy(v9 + size, "callType:");
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  v53 = v47;
  v11 = sub_1000C2128(a2, "callType");
  v55 = 0;
  sub_1000C3DC4(v11, &v55);
  sub_1000C1F58(v55, &v47);
  if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v53;
  }

  else
  {
    v12 = v53.__r_.__value_.__r.__words[0];
  }

  if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = HIBYTE(v53.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v13 = v53.__r_.__value_.__l.__size_;
  }

  v14 = std::string::insert(&v47, 0, v12, v13);
  v15 = v14->__r_.__value_.__r.__words[0];
  *buf = v14->__r_.__value_.__l.__size_;
  *&buf[7] = *(&v14->__r_.__value_.__r.__words[1] + 7);
  v16 = HIBYTE(v14->__r_.__value_.__r.__words[2]);
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  v53.__r_.__value_.__r.__words[0] = v15;
  v53.__r_.__value_.__l.__size_ = *buf;
  *(&v53.__r_.__value_.__r.__words[1] + 7) = *&buf[7];
  *(&v53.__r_.__value_.__s + 23) = v16;
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(v53.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = v53.__r_.__value_.__l.__size_;
  }

  v18 = &v47;
  sub_100013A6C(&v47, v17 + 15);
  if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v18 = v47.__r_.__value_.__r.__words[0];
  }

  if (v17)
  {
    if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v53;
    }

    else
    {
      v19 = v53.__r_.__value_.__r.__words[0];
    }

    memmove(v18, v19, v17);
  }

  strcpy(v18 + v17, " statDirection:");
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  v53 = v47;
  v20 = sub_1000C2128(a2, "statDirection");
  v56 = 0;
  sub_1000C3DC4(v20, &v56);
  v21 = "Invalid";
  if (v56 == 1)
  {
    v21 = "DL";
  }

  if (v56)
  {
    v22 = v21;
  }

  else
  {
    v22 = "UL";
  }

  sub_100007ECC(&v47, v22);
  if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = &v53;
  }

  else
  {
    v23 = v53.__r_.__value_.__r.__words[0];
  }

  if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = HIBYTE(v53.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v24 = v53.__r_.__value_.__l.__size_;
  }

  v25 = std::string::insert(&v47, 0, v23, v24);
  v26 = v25->__r_.__value_.__r.__words[0];
  *buf = v25->__r_.__value_.__l.__size_;
  *&buf[7] = *(&v25->__r_.__value_.__r.__words[1] + 7);
  v27 = HIBYTE(v25->__r_.__value_.__r.__words[2]);
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  v53.__r_.__value_.__r.__words[0] = v26;
  v53.__r_.__value_.__l.__size_ = *buf;
  *(&v53.__r_.__value_.__r.__words[1] + 7) = *&buf[7];
  *(&v53.__r_.__value_.__s + 23) = v27;
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = HIBYTE(v53.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v28 = v53.__r_.__value_.__l.__size_;
  }

  v29 = &v47;
  sub_100013A6C(&v47, v28 + 20);
  if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v29 = v47.__r_.__value_.__r.__words[0];
  }

  if (v28)
  {
    if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v30 = &v53;
    }

    else
    {
      v30 = v53.__r_.__value_.__r.__words[0];
    }

    memmove(v29, v30, v28);
  }

  strcpy(v29 + v28, " cellularSignalBars:");
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  v53 = v47;
  v31 = sub_1000C2128(a2, "cellularSignalBars");
  v57 = 0;
  sub_1000C3DC4(v31, &v57);
  std::to_string(&v47, v57);
  if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v32 = &v53;
  }

  else
  {
    v32 = v53.__r_.__value_.__r.__words[0];
  }

  if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v33 = HIBYTE(v53.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v33 = v53.__r_.__value_.__l.__size_;
  }

  v34 = std::string::insert(&v47, 0, v32, v33);
  v35 = v34->__r_.__value_.__r.__words[0];
  *buf = v34->__r_.__value_.__l.__size_;
  *&buf[7] = *(&v34->__r_.__value_.__r.__words[1] + 7);
  v36 = HIBYTE(v34->__r_.__value_.__r.__words[2]);
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  v53.__r_.__value_.__r.__words[0] = v35;
  v53.__r_.__value_.__l.__size_ = *buf;
  *(&v53.__r_.__value_.__r.__words[1] + 7) = *&buf[7];
  *(&v53.__r_.__value_.__s + 23) = v36;
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  sub_100007ECC(&v47, "Cellular");
  memset(&v51, 0, sizeof(v51));
  v50 = 0u;
  v49 = 0u;
  v48 = 0u;
  v52 = 65537;
  std::string::assign(&v48, "Audio Quality");
  std::string::operator=((&v49 + 8), &__str);
  std::string::operator=(&v51, &v53);
  v37 = *(qword_1002DBE98 + 112);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 23) >= 0)
    {
      v38 = a1;
    }

    else
    {
      v38 = *a1;
    }

    *buf = 136315138;
    *&buf[4] = v38;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "WISABC:#I Triggering ABC for event: %s", buf, 0xCu);
  }

  sub_1000C367C(v39, &v47);
  sub_1001075F8(v39);
  if (v46 < 0)
  {
    operator delete(__p);
  }

  if (v44 < 0)
  {
    operator delete(v43);
  }

  if (v42 < 0)
  {
    operator delete(v41);
  }

  if (v40 < 0)
  {
    operator delete(v39[0]);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50) < 0)
  {
    operator delete(*(&v49 + 1));
  }

  if (SBYTE7(v49) < 0)
  {
    operator delete(v48);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

LABEL_104:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_1000B7918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, __int128 __p, int a23, __int16 a24, char a25, char a26)
{
  sub_1000C20C4(&a9);
  sub_1000C20C4(&__p);
  if (*(v26 - 137) < 0)
  {
    operator delete(*(v26 - 160));
  }

  if (*(v26 - 113) < 0)
  {
    operator delete(*(v26 - 136));
  }

  _Unwind_Resume(a1);
}

void sub_1000B7B4C(std::string::size_type a1, uint64_t a2)
{
  sub_100007ECC(&v48, "");
  sub_100007ECC(&v47, "");
  sub_100007ECC(&v46, "");
  sub_100007ECC(v45, "");
  v4 = sub_1000C2128(a2, "error_string");
  sub_1000C22F0(v4, &v35);
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  v47 = v35;
  v5 = sub_1000C2128(a2, "message_type");
  sub_1000C22F0(v5, &v35);
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  v46 = v35;
  v6 = sub_1000C2128(a2, "is_success");
  v35.__r_.__value_.__s.__data_[0] = 0;
  sub_1000C4064(v6, &v35);
  v7 = v35.__r_.__value_.__s.__data_[0];
  v8 = sub_1000C2128(a2, "is_chatbot");
  v35.__r_.__value_.__s.__data_[0] = 0;
  sub_1000C4064(v8, &v35);
  v9 = v35.__r_.__value_.__s.__data_[0];
  v10 = sub_1000C2128(a2, "direction");
  sub_1000C22F0(v10, &v35);
  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  v48 = v35;
  if (!v7)
  {
    goto LABEL_14;
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v46.__r_.__value_.__l.__size_ != 4)
    {
      goto LABEL_65;
    }

    v11 = v46.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) != 4)
    {
      goto LABEL_65;
    }

    v11 = &v46;
  }

  if (LODWORD(v11->__r_.__value_.__l.__data_) == 1819047278)
  {
LABEL_14:
    std::operator+<char>();
    v12 = std::string::append(&v43, " error_string: ");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v44.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v44.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v47;
    }

    else
    {
      v14 = v47.__r_.__value_.__r.__words[0];
    }

    if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v47.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v47.__r_.__value_.__l.__size_;
    }

    v16 = std::string::append(&v44, v14, size);
    v17 = *&v16->__r_.__value_.__l.__data_;
    v49.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
    *&v49.__r_.__value_.__l.__data_ = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v18 = std::string::append(&v49, " isChatbot: ");
    v19 = *&v18->__r_.__value_.__l.__data_;
    v35.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v35.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v42, v9);
    if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v42;
    }

    else
    {
      v20 = v42.__r_.__value_.__r.__words[0];
    }

    if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = HIBYTE(v42.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v21 = v42.__r_.__value_.__l.__size_;
    }

    v22 = std::string::append(&v35, v20, v21);
    v23 = v22->__r_.__value_.__r.__words[0];
    v50[0] = v22->__r_.__value_.__l.__size_;
    *(v50 + 7) = *(&v22->__r_.__value_.__r.__words[1] + 7);
    v24 = HIBYTE(v22->__r_.__value_.__r.__words[2]);
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    if ((v45[23] & 0x80000000) != 0)
    {
      operator delete(*v45);
    }

    *v45 = v23;
    *&v45[8] = v50[0];
    *&v45[15] = *(v50 + 7);
    v45[23] = v24;
    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v43.__r_.__value_.__l.__data_);
    }

    sub_100007ECC(&v35, "Telephony");
    sub_100007ECC(&v36, "RCS");
    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_10000FFF8(&v38, v48.__r_.__value_.__l.__data_, v48.__r_.__value_.__l.__size_);
    }

    else
    {
      v38 = v48;
    }

    if ((v45[23] & 0x80000000) != 0)
    {
      sub_10000FFF8(&v39, *v45, *&v45[8]);
    }

    else
    {
      v39 = *v45;
      v40 = *&v45[16];
    }

    v41 = 0x10000;
    v25 = *(qword_1002DBE98 + 112);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      if (*(a1 + 23) >= 0)
      {
        v26 = a1;
      }

      else
      {
        v26 = *a1;
      }

      LODWORD(v49.__r_.__value_.__l.__data_) = 136315138;
      *(v49.__r_.__value_.__r.__words + 4) = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "WISABC:#I Triggering ABC for event: %s", &v49, 0xCu);
    }

    sub_1000C367C(__dst, &v35);
    sub_1001075F8(__dst);
    if (v34 < 0)
    {
      operator delete(__p);
    }

    if (v32 < 0)
    {
      operator delete(v31);
    }

    if (v30 < 0)
    {
      operator delete(v29);
    }

    if (v28 < 0)
    {
      operator delete(__dst[0]);
    }

    if (SHIBYTE(v40) < 0)
    {
      operator delete(v39);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    if (v37 < 0)
    {
      operator delete(v36);
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }
  }

LABEL_65:
  if ((v45[23] & 0x80000000) != 0)
  {
    operator delete(*v45);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }
}

void sub_1000B803C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (*(v57 - 193) < 0)
  {
    operator delete(*(v57 - 216));
  }

  if (*(v57 - 169) < 0)
  {
    operator delete(*(v57 - 192));
  }

  if (*(v57 - 137) < 0)
  {
    operator delete(*(v57 - 160));
  }

  if (*(v57 - 105) < 0)
  {
    operator delete(*(v57 - 128));
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *sub_1000B8280(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1000C2128(a2, "is_registered");
  LOBYTE(v31) = 0;
  sub_1000C4064(v4, &v31);
  v5 = sub_1000C2128(a2, "is_provisioned");
  LOBYTE(v31) = 0;
  result = sub_1000C4064(v5, &v31);
  if ((v31 & 1) == 0)
  {
    sub_10000A448(&v31);
    v7 = sub_100008EEC(&v31, "is_registered: ", 15);
    *(v7 + *(*v7 - 24) + 8) |= 1u;
    v8 = std::ostream::operator<<();
    v9 = sub_100008EEC(v8, " is_provisioned: ", 17);
    *(v9 + *(*v9 - 24) + 8) |= 1u;
    std::ostream::operator<<();
    std::stringbuf::str();
    sub_100007ECC(v20, "Telephony");
    sub_100007ECC(&v22, "RCS");
    sub_100007ECC(&v24, "RCSMessageProvisionRegistrationDaily");
    if (SHIBYTE(v30) < 0)
    {
      sub_10000FFF8(&v26, v29[0], v29[1]);
    }

    else
    {
      v26 = *v29;
      v27 = v30;
    }

    v28 = 0x10000;
    v10 = *(qword_1002DBE98 + 112);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      if (*(a1 + 23) >= 0)
      {
        v11 = a1;
      }

      else
      {
        v11 = *a1;
      }

      *buf = 136315138;
      v36 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "WISABC:#I Triggering ABC for event: %s", buf, 0xCu);
    }

    sub_1000C367C(v12, v20);
    sub_1001075F8(v12);
    if (v19 < 0)
    {
      operator delete(__p);
    }

    if (v17 < 0)
    {
      operator delete(v16);
    }

    if (v15 < 0)
    {
      operator delete(v14);
    }

    if (v13 < 0)
    {
      operator delete(v12[0]);
    }

    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26);
    }

    if (v25 < 0)
    {
      operator delete(v24);
    }

    if (v23 < 0)
    {
      operator delete(v22);
    }

    if (v21 < 0)
    {
      operator delete(v20[0]);
    }

    if (SHIBYTE(v30) < 0)
    {
      operator delete(v29[0]);
    }

    if (v34 < 0)
    {
      operator delete(v33[7].__locale_);
    }

    std::locale::~locale(v33);
    std::ostream::~ostream();
    return std::ios::~ios();
  }

  return result;
}

void sub_1000B8620(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, char a50)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  sub_100039C48(&a50);
  _Unwind_Resume(a1);
}

void sub_1000B86DC(uint64_t *a1, uint64_t a2)
{
  v52 = 0uLL;
  v53 = 0;
  __p = 0uLL;
  locale = 0;
  v48 = 0uLL;
  v49 = 0;
  memset(&v47, 0, sizeof(v47));
  sub_100007ECC(&v60, "null");
  sub_100007ECC(v62, "kFullXml");
  sub_100007ECC(v63, "kRefreshXml");
  sub_100007ECC(&v64, "kClientAuthenticityXml");
  sub_100007ECC(v66, "kClientAuthenticityResponseXml");
  sub_100007ECC(v67, "kAccessControlXml");
  sub_100007ECC(v68, "kCodeResponse");
  sub_100007ECC(v69, "kEmptyClientAuthOutput");
  sub_100007ECC(v70, "kResponseWithNeedsPSAccess");
  sub_100007ECC(v71, "kAttestationResponse");
  sub_1000C4190(v46, &v60, 10);
  for (i = 0; i != -240; i -= 24)
  {
    if (v71[i + 23] < 0)
    {
      operator delete(*&v71[i]);
    }
  }

  v5 = sub_1000C2128(a2, "response");
  v54 = 0;
  sub_1000C3DC4(v5, &v54);
  sub_1000C1FB0(v54, &v60);
  if (SHIBYTE(locale) < 0)
  {
    operator delete(__p);
  }

  __p = v60;
  locale = v61.__locale_;
  v6 = sub_1000C2128(a2, "code");
  v55 = 0;
  sub_1000C3DC4(v6, &v55);
  v7 = v55;
  v8 = sub_1000C2128(a2, "phase");
  v56 = 0;
  sub_1000C3DC4(v8, &v56);
  sub_1000C1F84(v56, &v60);
  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52);
  }

  v53 = v61.__locale_;
  v52 = v60;
  if (SHIBYTE(v61.__locale_) < 0)
  {
    if (*(&v52 + 1) != 22)
    {
      v10 = v7 != 200;
      goto LABEL_23;
    }

    v9 = v52;
  }

  else
  {
    if (HIBYTE(v61.__locale_) != 22)
    {
      v10 = v7 != 200;
      goto LABEL_20;
    }

    v9 = &v52;
  }

  if (bswap64(*v9) == 0x6B496E697469616CLL && bswap64(v9[1]) == 0x496E736563757265 && bswap64(*(v9 + 14)) == 0x7265416363657373 && v7 != 200 && v7 != 511)
  {
    v12 = "RCSMessageProvisioningInitialInsecureAccess";
    goto LABEL_33;
  }

  v10 = v7 != 200;
  if ((HIBYTE(v61.__locale_) & 0x80) != 0)
  {
LABEL_23:
    if (*(&v52 + 1) == 22)
    {
      v11 = v52;
LABEL_25:
      if (!(*v11 ^ 0x6C616974696E496BLL | *(v11 + 1) ^ 0x6572756365736E49 | *(v11 + 14) ^ 0x7373656363416572))
      {
        goto LABEL_28;
      }

      goto LABEL_26;
    }

    goto LABEL_26;
  }

LABEL_20:
  if (HIBYTE(v61.__locale_) == 22)
  {
    v11 = &v52;
    goto LABEL_25;
  }

LABEL_26:
  if (v10)
  {
    v12 = "RCSMessageProvisioningOtherPhase";
    goto LABEL_33;
  }

LABEL_28:
  if (sub_100064950(v46, &__p))
  {
    goto LABEL_85;
  }

  v12 = "RCSMessageProvisioningXMLs";
LABEL_33:
  std::string::assign(&v47, v12);
  v13 = sub_1000C2128(a2, "transport");
  v57 = 0;
  sub_1000C3DC4(v13, &v57);
  sub_1000C1FDC(v57, &v60);
  if (SHIBYTE(v49) < 0)
  {
    operator delete(v48);
  }

  v48 = v60;
  v49 = v61.__locale_;
  sub_10000A448(&v60);
  v14 = sub_100008EEC(&v60, "Phase: ", 7);
  if (SHIBYTE(v53) >= 0)
  {
    v15 = &v52;
  }

  else
  {
    v15 = v52;
  }

  if (SHIBYTE(v53) >= 0)
  {
    v16 = HIBYTE(v53);
  }

  else
  {
    v16 = *(&v52 + 1);
  }

  v17 = sub_100008EEC(v14, v15, v16);
  sub_100008EEC(v17, " Code: ", 7);
  v18 = std::ostream::operator<<();
  v19 = sub_100008EEC(v18, " Response: ", 11);
  if (SHIBYTE(locale) >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (SHIBYTE(locale) >= 0)
  {
    v21 = HIBYTE(locale);
  }

  else
  {
    v21 = *(&__p + 1);
  }

  v22 = sub_100008EEC(v19, p_p, v21);
  v23 = sub_100008EEC(v22, " Transport: ", 12);
  if (SHIBYTE(v49) >= 0)
  {
    v24 = &v48;
  }

  else
  {
    v24 = v48;
  }

  if (SHIBYTE(v49) >= 0)
  {
    v25 = HIBYTE(v49);
  }

  else
  {
    v25 = *(&v48 + 1);
  }

  sub_100008EEC(v23, v24, v25);
  std::stringbuf::str();
  sub_100007ECC(v36, "Telephony");
  sub_100007ECC(&v38, "RCS");
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_10000FFF8(&v40, v47.__r_.__value_.__l.__data_, v47.__r_.__value_.__l.__size_);
  }

  else
  {
    v40 = v47;
  }

  if (SHIBYTE(v45) < 0)
  {
    sub_10000FFF8(&v41, v44[0], v44[1]);
  }

  else
  {
    v41 = *v44;
    v42 = v45;
  }

  v43 = 0x10000;
  v26 = *(qword_1002DBE98 + 112);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 23) >= 0)
    {
      v27 = a1;
    }

    else
    {
      v27 = *a1;
    }

    *buf = 136315138;
    v59 = v27;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "WISABC:#I Triggering ABC for event: %s", buf, 0xCu);
  }

  sub_1000C367C(__dst, v36);
  sub_1001075F8(__dst);
  if (v35 < 0)
  {
    operator delete(v34);
  }

  if (v33 < 0)
  {
    operator delete(v32);
  }

  if (v31 < 0)
  {
    operator delete(v30);
  }

  if (v29 < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (v39 < 0)
  {
    operator delete(v38);
  }

  if (v37 < 0)
  {
    operator delete(v36[0]);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(v44[0]);
  }

  if (v65 < 0)
  {
    operator delete(v64);
  }

  std::locale::~locale(&v61);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_85:
  sub_10006559C(v46);
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49) < 0)
  {
    operator delete(v48);
  }

  if (SHIBYTE(locale) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52);
  }
}

void sub_1000B8E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, void *a62, uint64_t a63)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  sub_100039C48(&a75);
  sub_10006559C(&a51);
  if (a61 < 0)
  {
    operator delete(a56);
  }

  if (a67 < 0)
  {
    operator delete(a62);
  }

  if (a72 < 0)
  {
    operator delete(a69);
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  _Unwind_Resume(a1);
}

void sub_1000B90F0(uint64_t *a1, uint64_t a2)
{
  sub_100007ECC(&v59, "");
  v4 = sub_1000C2128(a2, "is_successful");
  v54[0].__r_.__value_.__s.__data_[0] = 0;
  sub_1000C4064(v4, v54);
  v5 = v54[0].__r_.__value_.__s.__data_[0];
  v6 = sub_1000C2128(a2, "error_code");
  LODWORD(v54[0].__r_.__value_.__l.__data_) = 0;
  sub_1000C3DC4(v6, v54);
  data = v54[0].__r_.__value_.__l.__data_;
  v8 = sub_1000C2128(a2, "failure_reason");
  sub_1000C22F0(v8, v54);
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  v59 = v54[0];
  v9 = sub_1000C2128(a2, "latency");
  v60 = 0;
  sub_1000C3DC4(v9, &v60);
  v10 = v60;
  if (v5)
  {
    if (data != 200 || v60 < 10001)
    {
      goto LABEL_80;
    }

    v11 = "RCSSIPSessionSetupLatency";
    goto LABEL_12;
  }

  size = HIBYTE(v59.__r_.__value_.__r.__words[2]);
  if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v59.__r_.__value_.__l.__size_;
  }

  if (size && data != 200)
  {
    v11 = "RCSSIPSessionSetup";
LABEL_12:
    sub_100007ECC(&v58, "");
    v13 = sub_1000C2128(a2, "direction");
    sub_1000C22F0(v13, v54);
    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }

    v58 = v54[0];
    sub_100007ECC(&v57, "");
    v14 = sub_1000C2128(a2, "invite_type");
    sub_1000C22F0(v14, v54);
    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__r_.__value_.__l.__data_);
    }

    v57 = v54[0];
    sub_10000A448(v54);
    v15 = sub_100008EEC(v54, "direction: ", 11);
    if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v58;
    }

    else
    {
      v16 = v58.__r_.__value_.__r.__words[0];
    }

    if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v17 = v58.__r_.__value_.__l.__size_;
    }

    v18 = sub_100008EEC(v15, v16, v17);
    v19 = sub_100008EEC(v18, " failure_reason: ", 17);
    if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v59;
    }

    else
    {
      v20 = v59.__r_.__value_.__r.__words[0];
    }

    if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = HIBYTE(v59.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v21 = v59.__r_.__value_.__l.__size_;
    }

    v22 = sub_100008EEC(v19, v20, v21);
    sub_100008EEC(v22, " error_code: ", 13);
    v23 = std::ostream::operator<<();
    v24 = sub_100008EEC(v23, " invite_type: ", 14);
    if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = &v57;
    }

    else
    {
      v25 = v57.__r_.__value_.__r.__words[0];
    }

    if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v26 = v57.__r_.__value_.__l.__size_;
    }

    v27 = sub_100008EEC(v24, v25, v26);
    v28 = sub_100008EEC(v27, " latency:", 9);
    if (v10 >> 4 >= 0x271)
    {
      v29 = ">10secs";
    }

    else
    {
      v29 = "5-10secs";
    }

    if (v10 >= 5000)
    {
      v30 = v29;
    }

    else
    {
      v30 = "<5secs";
    }

    sub_100007ECC(__p, v30);
    if ((v44 & 0x80u) == 0)
    {
      v31 = __p;
    }

    else
    {
      v31 = __p[0];
    }

    if ((v44 & 0x80u) == 0)
    {
      v32 = v44;
    }

    else
    {
      v32 = __p[1];
    }

    sub_100008EEC(v28, v31, v32);
    if (v44 < 0)
    {
      operator delete(__p[0]);
    }

    std::stringbuf::str();
    sub_100007ECC(__p, "Telephony");
    sub_100007ECC(&v45, "RCS");
    sub_100007ECC(&v47, v11);
    if (SHIBYTE(v53) < 0)
    {
      sub_10000FFF8(&v49, v52[0], v52[1]);
    }

    else
    {
      v49 = *v52;
      v50 = v53;
    }

    v51 = 0x10000;
    v33 = *(qword_1002DBE98 + 112);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      if (*(a1 + 23) >= 0)
      {
        v34 = a1;
      }

      else
      {
        v34 = *a1;
      }

      *buf = 136315138;
      v62 = v34;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "WISABC:#I Triggering ABC for event: %s", buf, 0xCu);
    }

    sub_1000C367C(v35, __p);
    sub_1001075F8(v35);
    if (v42 < 0)
    {
      operator delete(v41);
    }

    if (v40 < 0)
    {
      operator delete(v39);
    }

    if (v38 < 0)
    {
      operator delete(v37);
    }

    if (v36 < 0)
    {
      operator delete(v35[0]);
    }

    if (SHIBYTE(v50) < 0)
    {
      operator delete(v49);
    }

    if (v48 < 0)
    {
      operator delete(v47);
    }

    if (v46 < 0)
    {
      operator delete(v45);
    }

    if (v44 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v53) < 0)
    {
      operator delete(v52[0]);
    }

    if (v56 < 0)
    {
      operator delete(v55);
    }

    std::locale::~locale(&v54[0].__r_.__value_.__r.__words[2]);
    std::ostream::~ostream();
    std::ios::~ios();
    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }
  }

LABEL_80:
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }
}

void sub_1000B96E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, char a50)
{
  if (*(v50 - 105) < 0)
  {
    operator delete(*(v50 - 128));
  }

  _Unwind_Resume(a1);
}

void sub_1000B98B0(uint64_t *a1, uint64_t a2)
{
  memset(&v50, 0, sizeof(v50));
  memset(&v49, 0, sizeof(v49));
  sub_100007ECC(&v48, "");
  v4 = sub_1000C2128(a2, "is_successful");
  v45[0].__r_.__value_.__s.__data_[0] = 0;
  sub_1000C4064(v4, v45);
  v5 = v45[0].__r_.__value_.__s.__data_[0];
  v6 = sub_1000C2128(a2, "direction");
  sub_1000C22F0(v6, v45);
  v50 = v45[0];
  v7 = sub_1000C2128(a2, "sip_error_code");
  LODWORD(v45[0].__r_.__value_.__l.__data_) = 0;
  sub_1000C3DC4(v7, v45);
  data = v45[0].__r_.__value_.__l.__data_;
  v9 = sub_1000C2128(a2, "latency");
  v51 = 0;
  sub_1000C3DC4(v9, &v51);
  v10 = v51;
  if ((v5 & 1) == 0 && data != 200)
  {
    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v50.__r_.__value_.__l.__size_ != 2 || *v50.__r_.__value_.__l.__data_ != 20301)
      {
        if (v50.__r_.__value_.__l.__size_ != 2)
        {
          goto LABEL_78;
        }

        v11 = v50.__r_.__value_.__r.__words[0];
        goto LABEL_11;
      }
    }

    else
    {
      if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) != 2)
      {
        goto LABEL_78;
      }

      if (LOWORD(v50.__r_.__value_.__l.__data_) != 20301)
      {
        v11 = &v50;
LABEL_11:
        if (LOWORD(v11->__r_.__value_.__l.__data_) != 21581)
        {
          goto LABEL_78;
        }

        v12 = "RCSPagerMessageReceiveIPT";
        goto LABEL_24;
      }
    }

    v12 = "RCSPagerMessageSendIPT";
LABEL_24:
    std::string::assign(&v48, v12);
    v14 = sub_1000C2128(a2, "message_type");
    sub_1000C22F0(v14, v45);
    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }

    v49 = v45[0];
    sub_10000A448(v45);
    v15 = sub_100008EEC(v45, "message_type: ", 14);
    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v49;
    }

    else
    {
      v16 = v49.__r_.__value_.__r.__words[0];
    }

    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v49.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v49.__r_.__value_.__l.__size_;
    }

    v18 = sub_100008EEC(v15, v16, size);
    sub_100008EEC(v18, " sip_error_code: ", 17);
    v19 = std::ostream::operator<<();
    v20 = sub_100008EEC(v19, " latency: ", 10);
    if (v10 >> 4 >= 0x271)
    {
      v21 = ">10secs";
    }

    else
    {
      v21 = "5-10secs";
    }

    if (v10 >= 5000)
    {
      v22 = v21;
    }

    else
    {
      v22 = "<5secs";
    }

    sub_100007ECC(__p, v22);
    if ((v36 & 0x80u) == 0)
    {
      v23 = __p;
    }

    else
    {
      v23 = __p[0];
    }

    if ((v36 & 0x80u) == 0)
    {
      v24 = v36;
    }

    else
    {
      v24 = __p[1];
    }

    sub_100008EEC(v20, v23, v24);
    if (v36 < 0)
    {
      operator delete(__p[0]);
    }

    std::stringbuf::str();
    sub_100007ECC(__p, "Telephony");
    sub_100007ECC(&v37, "RCS");
    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_10000FFF8(&v39, v48.__r_.__value_.__l.__data_, v48.__r_.__value_.__l.__size_);
    }

    else
    {
      v39 = v48;
    }

    if (SHIBYTE(v44) < 0)
    {
      sub_10000FFF8(&v40, v43[0], v43[1]);
    }

    else
    {
      v40 = *v43;
      v41 = v44;
    }

    v42 = 0x10000;
    v25 = *(qword_1002DBE98 + 112);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      if (*(a1 + 23) >= 0)
      {
        v26 = a1;
      }

      else
      {
        v26 = *a1;
      }

      *buf = 136315138;
      v53 = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "WISABC:#I Triggering ABC for event: %s", buf, 0xCu);
    }

    sub_1000C367C(__dst, __p);
    sub_1001075F8(__dst);
    if (v34 < 0)
    {
      operator delete(v33);
    }

    if (v32 < 0)
    {
      operator delete(v31);
    }

    if (v30 < 0)
    {
      operator delete(v29);
    }

    if (v28 < 0)
    {
      operator delete(__dst[0]);
    }

    if (SHIBYTE(v41) < 0)
    {
      operator delete(v40);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    if (v38 < 0)
    {
      operator delete(v37);
    }

    if (v36 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v44) < 0)
    {
      operator delete(v43[0]);
    }

    if (v47 < 0)
    {
      operator delete(v46);
    }

    std::locale::~locale(&v45[0].__r_.__value_.__r.__words[2]);
    std::ostream::~ostream();
    std::ios::~ios();
    goto LABEL_78;
  }

  if (v5 && data == 200 && v51 >= 5001)
  {
    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v50.__r_.__value_.__l.__size_ != 2)
      {
        goto LABEL_78;
      }

      v13 = v50.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) != 2)
      {
        goto LABEL_78;
      }

      v13 = &v50;
    }

    if (LOWORD(v13->__r_.__value_.__l.__data_) == 20301)
    {
      v12 = "RCSPagerMessageSendLatencyIPT";
      goto LABEL_24;
    }
  }

LABEL_78:
  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }
}

void sub_1000B9EB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, char a51)
{
  if (*(v51 - 161) < 0)
  {
    operator delete(*(v51 - 184));
  }

  if (*(v51 - 137) < 0)
  {
    operator delete(*(v51 - 160));
  }

  if (*(v51 - 105) < 0)
  {
    operator delete(*(v51 - 128));
  }

  _Unwind_Resume(a1);
}

void sub_1000B9FEC(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    if (os_log_type_enabled(*(qword_1002DBE98 + 112), OS_LOG_TYPE_ERROR))
    {
      sub_1002063A4(v2);
    }

    __cxa_end_catch();
    JUMPOUT(0x1000B9E48);
  }

  if (*(v3 - 161) < 0)
  {
    operator delete(*(v3 - 184));
  }

  if (*(v3 - 137) < 0)
  {
    operator delete(*(v3 - 160));
  }

  if (*(v3 - 105) < 0)
  {
    operator delete(*(v3 - 128));
  }

  _Unwind_Resume(a1);
}

void sub_1000BA044(uint64_t *a1, uint64_t a2)
{
  memset(&v50, 0, sizeof(v50));
  memset(&v49, 0, sizeof(v49));
  sub_100007ECC(&v48, "");
  v4 = sub_1000C2128(a2, "is_successful");
  v45[0].__r_.__value_.__s.__data_[0] = 0;
  sub_1000C4064(v4, v45);
  v5 = v45[0].__r_.__value_.__s.__data_[0];
  v6 = sub_1000C2128(a2, "msrp_error_code");
  LODWORD(v45[0].__r_.__value_.__l.__data_) = 0;
  sub_1000C3DC4(v6, v45);
  data = v45[0].__r_.__value_.__l.__data_;
  v8 = sub_1000C2128(a2, "direction");
  sub_1000C22F0(v8, v45);
  v49 = v45[0];
  v9 = sub_1000C2128(a2, "latency");
  v51 = 0;
  sub_1000C3DC4(v9, &v51);
  v10 = v51;
  if ((v5 & 1) == 0 && data != 200)
  {
    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v49.__r_.__value_.__l.__size_ != 2 || *v49.__r_.__value_.__l.__data_ != 20301)
      {
        if (v49.__r_.__value_.__l.__size_ != 2)
        {
          goto LABEL_78;
        }

        v11 = v49.__r_.__value_.__r.__words[0];
        goto LABEL_11;
      }
    }

    else
    {
      if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) != 2)
      {
        goto LABEL_78;
      }

      if (LOWORD(v49.__r_.__value_.__l.__data_) != 20301)
      {
        v11 = &v49;
LABEL_11:
        if (LOWORD(v11->__r_.__value_.__l.__data_) != 21581)
        {
          goto LABEL_78;
        }

        v12 = "RCSMSRPMessageReceiveIPT";
        goto LABEL_24;
      }
    }

    v12 = "RCSMSRPMessageSendIPT";
LABEL_24:
    std::string::assign(&v48, v12);
    v14 = sub_1000C2128(a2, "message_type");
    sub_1000C22F0(v14, v45);
    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    v50 = v45[0];
    sub_10000A448(v45);
    v15 = sub_100008EEC(v45, "message_type: ", 14);
    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v50;
    }

    else
    {
      v16 = v50.__r_.__value_.__r.__words[0];
    }

    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v50.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v50.__r_.__value_.__l.__size_;
    }

    v18 = sub_100008EEC(v15, v16, size);
    sub_100008EEC(v18, " msrp_error_code: ", 18);
    v19 = std::ostream::operator<<();
    v20 = sub_100008EEC(v19, " latency:", 9);
    if (v10 >> 4 >= 0x271)
    {
      v21 = ">10secs";
    }

    else
    {
      v21 = "5-10secs";
    }

    if (v10 >= 5000)
    {
      v22 = v21;
    }

    else
    {
      v22 = "<5secs";
    }

    sub_100007ECC(__p, v22);
    if ((v36 & 0x80u) == 0)
    {
      v23 = __p;
    }

    else
    {
      v23 = __p[0];
    }

    if ((v36 & 0x80u) == 0)
    {
      v24 = v36;
    }

    else
    {
      v24 = __p[1];
    }

    sub_100008EEC(v20, v23, v24);
    if (v36 < 0)
    {
      operator delete(__p[0]);
    }

    std::stringbuf::str();
    sub_100007ECC(__p, "Telephony");
    sub_100007ECC(&v37, "RCS");
    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_10000FFF8(&v39, v48.__r_.__value_.__l.__data_, v48.__r_.__value_.__l.__size_);
    }

    else
    {
      v39 = v48;
    }

    if (SHIBYTE(v44) < 0)
    {
      sub_10000FFF8(&v40, v43[0], v43[1]);
    }

    else
    {
      v40 = *v43;
      v41 = v44;
    }

    v42 = 0x10000;
    v25 = *(qword_1002DBE98 + 112);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      if (*(a1 + 23) >= 0)
      {
        v26 = a1;
      }

      else
      {
        v26 = *a1;
      }

      *buf = 136315138;
      v53 = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "WISABC:#I Triggering ABC for event: %s", buf, 0xCu);
    }

    sub_1000C367C(__dst, __p);
    sub_1001075F8(__dst);
    if (v34 < 0)
    {
      operator delete(v33);
    }

    if (v32 < 0)
    {
      operator delete(v31);
    }

    if (v30 < 0)
    {
      operator delete(v29);
    }

    if (v28 < 0)
    {
      operator delete(__dst[0]);
    }

    if (SHIBYTE(v41) < 0)
    {
      operator delete(v40);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    if (v38 < 0)
    {
      operator delete(v37);
    }

    if (v36 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v44) < 0)
    {
      operator delete(v43[0]);
    }

    if (v47 < 0)
    {
      operator delete(v46);
    }

    std::locale::~locale(&v45[0].__r_.__value_.__r.__words[2]);
    std::ostream::~ostream();
    std::ios::~ios();
    goto LABEL_78;
  }

  if (v5 && data == 200 && v51 >= 5001)
  {
    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v49.__r_.__value_.__l.__size_ != 2)
      {
        goto LABEL_78;
      }

      v13 = v49.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) != 2)
      {
        goto LABEL_78;
      }

      v13 = &v49;
    }

    if (LOWORD(v13->__r_.__value_.__l.__data_) == 20301)
    {
      v12 = "RCSMSRPMessageSendLatencyIPT";
      goto LABEL_24;
    }
  }

LABEL_78:
  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }
}

void sub_1000BA644(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, char a51)
{
  if (*(v51 - 161) < 0)
  {
    operator delete(*(v51 - 184));
  }

  if (*(v51 - 137) < 0)
  {
    operator delete(*(v51 - 160));
  }

  if (*(v51 - 105) < 0)
  {
    operator delete(*(v51 - 128));
  }

  _Unwind_Resume(a1);
}

void sub_1000BA780(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    if (os_log_type_enabled(*(qword_1002DBE98 + 112), OS_LOG_TYPE_ERROR))
    {
      sub_1002063A4(v2);
    }

    __cxa_end_catch();
    JUMPOUT(0x1000BA5DCLL);
  }

  if (*(v3 - 161) < 0)
  {
    operator delete(*(v3 - 184));
  }

  if (*(v3 - 137) < 0)
  {
    operator delete(*(v3 - 160));
  }

  if (*(v3 - 105) < 0)
  {
    operator delete(*(v3 - 128));
  }

  _Unwind_Resume(a1);
}

void sub_1000BA7D8(uint64_t *a1, uint64_t a2)
{
  memset(&v44, 0, sizeof(v44));
  memset(&v43, 0, sizeof(v43));
  v4 = sub_1000C2128(a2, "authStatusForSimConfig0");
  sub_1000C22F0(v4, v40);
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  v44 = v40[0];
  v5 = sub_1000C2128(a2, "authStatusForSimConfig1");
  sub_1000C22F0(v5, v40);
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  v43 = v40[0];
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0 && v44.__r_.__value_.__l.__size_ == 33)
  {
    if (!memcmp(v44.__r_.__value_.__l.__data_, "CCStwSatSmsAuthStatusUnauthorized", 0x21uLL))
    {
      goto LABEL_38;
    }
  }

  else if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0 && v44.__r_.__value_.__l.__size_ == 28)
  {
    v6 = *v44.__r_.__value_.__l.__data_ == 0x7461537774534343 && *(v44.__r_.__value_.__r.__words[0] + 8) == 0x5368747541736D53;
    v7 = v6 && *(v44.__r_.__value_.__r.__words[0] + 16) == 0x6B6E557375746174;
    if (v7 && *(v44.__r_.__value_.__r.__words[0] + 24) == 1853321070)
    {
      goto LABEL_38;
    }
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0 && v43.__r_.__value_.__l.__size_ == 33)
  {
    if (memcmp(v43.__r_.__value_.__l.__data_, "CCStwSatSmsAuthStatusUnauthorized", 0x21uLL))
    {
      goto LABEL_79;
    }
  }

  else
  {
    if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0 || v43.__r_.__value_.__l.__size_ != 28)
    {
      goto LABEL_79;
    }

    v9 = *v43.__r_.__value_.__l.__data_ == 0x7461537774534343 && *(v43.__r_.__value_.__r.__words[0] + 8) == 0x5368747541736D53;
    v10 = v9 && *(v43.__r_.__value_.__r.__words[0] + 16) == 0x6B6E557375746174;
    if (!v10 || *(v43.__r_.__value_.__r.__words[0] + 24) != 1853321070)
    {
      goto LABEL_79;
    }
  }

LABEL_38:
  sub_10000A448(v40);
  v12 = sub_100008EEC(v40, "authStatusForSimConfig0: ", 25);
  if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &v44;
  }

  else
  {
    v13 = v44.__r_.__value_.__r.__words[0];
  }

  if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v44.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v44.__r_.__value_.__l.__size_;
  }

  v15 = sub_100008EEC(v12, v13, size);
  v16 = sub_100008EEC(v15, " authStatusForSimConfig1: ", 26);
  if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v43;
  }

  else
  {
    v17 = v43.__r_.__value_.__r.__words[0];
  }

  if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = HIBYTE(v43.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v18 = v43.__r_.__value_.__l.__size_;
  }

  sub_100008EEC(v16, v17, v18);
  std::stringbuf::str();
  sub_100007ECC(v29, "Cellular");
  sub_100007ECC(&v31, "STW");
  sub_100007ECC(&v33, "AuthError");
  if (SHIBYTE(v39) < 0)
  {
    sub_10000FFF8(&v35, v38[0], v38[1]);
  }

  else
  {
    v35 = *v38;
    v36 = v39;
  }

  v37 = 65537;
  v19 = *(qword_1002DBE98 + 112);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 23) >= 0)
    {
      v20 = a1;
    }

    else
    {
      v20 = *a1;
    }

    *buf = 136315138;
    v46 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "WISABC:#I Triggering ABC for event: %s", buf, 0xCu);
  }

  sub_1000C367C(v21, v29);
  sub_1001075F8(v21);
  if (v28 < 0)
  {
    operator delete(__p);
  }

  if (v26 < 0)
  {
    operator delete(v25);
  }

  if (v24 < 0)
  {
    operator delete(v23);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(v35);
  }

  if (v34 < 0)
  {
    operator delete(v33);
  }

  if (v32 < 0)
  {
    operator delete(v31);
  }

  if (v30 < 0)
  {
    operator delete(v29[0]);
  }

  if (SHIBYTE(v39) < 0)
  {
    operator delete(v38[0]);
  }

  if (v42 < 0)
  {
    operator delete(v41);
  }

  std::locale::~locale(&v40[0].__r_.__value_.__r.__words[2]);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_79:
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }
}

void sub_1000BACF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, char a50)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  sub_100039C48(&a50);
  if (*(v50 - 105) < 0)
  {
    operator delete(*(v50 - 128));
  }

  if (*(v50 - 73) < 0)
  {
    operator delete(*(v50 - 96));
  }

  _Unwind_Resume(a1);
}

void sub_1000BADB0(void *a1, int a2)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    if (os_log_type_enabled(*(qword_1002DBE98 + 112), OS_LOG_TYPE_ERROR))
    {
      sub_1002063A4(v2);
    }

    __cxa_end_catch();
    JUMPOUT(0x1000BACA0);
  }

  JUMPOUT(0x1000BAD88);
}

void sub_1000BAE08(uint64_t *a1, uint64_t a2)
{
  memset(&v43, 0, sizeof(v43));
  memset(&v42, 0, sizeof(v42));
  v4 = sub_1000C2128(a2, "cellServiceStatus");
  sub_1000C22F0(v4, &v39);
  v5 = sub_1000C2128(a2, "result");
  __c[0] = 0;
  sub_1000C4064(v5, __c);
  std::string::operator=(&v43, __c[0]);
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v39.__r_.__value_.__l.__size_ == 32)
    {
      v9 = *v39.__r_.__value_.__l.__data_ != 0x6C65437774534343 || *(v39.__r_.__value_.__r.__words[0] + 8) != 0x656369767265536CLL || *(v39.__r_.__value_.__r.__words[0] + 16) != 0x416B737574617453 || *(v39.__r_.__value_.__r.__words[0] + 24) != 0x656C62616C696176;
      operator delete(v39.__r_.__value_.__l.__data_);
      if (!v9)
      {
        v10 = sub_1000C2128(a2, "requestReason");
        sub_1000C22F0(v10, &v39);
        if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v42.__r_.__value_.__l.__data_);
        }

        v42 = v39;
        v11 = sub_1000C2128(a2, "result");
        v44 = 0;
        sub_1000C4064(v11, &v44);
        std::to_string(&v39, v44);
        if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v43.__r_.__value_.__l.__data_);
        }

        v43 = v39;
        sub_10000A448(&v39);
        v12 = sub_100008EEC(&v39, "RequestResult: ", 15);
        if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v13 = &v43;
        }

        else
        {
          v13 = v43.__r_.__value_.__r.__words[0];
        }

        if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v43.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v43.__r_.__value_.__l.__size_;
        }

        v15 = sub_100008EEC(v12, v13, size);
        v16 = sub_100008EEC(v15, " ReasonForRequestingSatellite: ", 31);
        if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v17 = &v42;
        }

        else
        {
          v17 = v42.__r_.__value_.__r.__words[0];
        }

        if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = HIBYTE(v42.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v18 = v42.__r_.__value_.__l.__size_;
        }

        sub_100008EEC(v16, v17, v18);
        std::stringbuf::str();
        sub_100007ECC(__c, "Cellular");
        sub_100007ECC(&v30, "STW");
        sub_100007ECC(&v32, "CellServiceStatusAvailable");
        if (SHIBYTE(v38) < 0)
        {
          sub_10000FFF8(&v34, v37[0], v37[1]);
        }

        else
        {
          v34 = *v37;
          v35 = v38;
        }

        v36 = 65537;
        v19 = *(qword_1002DBE98 + 112);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          if (*(a1 + 23) >= 0)
          {
            v20 = a1;
          }

          else
          {
            v20 = *a1;
          }

          *buf = 136315138;
          v46 = v20;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "WISABC:#I Triggering ABC for event: %s", buf, 0xCu);
        }

        sub_1000C367C(v21, __c);
        sub_1001075F8(v21);
        if (v28 < 0)
        {
          operator delete(__p);
        }

        if (v26 < 0)
        {
          operator delete(v25);
        }

        if (v24 < 0)
        {
          operator delete(v23);
        }

        if (v22 < 0)
        {
          operator delete(v21[0]);
        }

        if (SHIBYTE(v35) < 0)
        {
          operator delete(v34);
        }

        if (v33 < 0)
        {
          operator delete(v32);
        }

        if (v31 < 0)
        {
          operator delete(v30);
        }

        if (__c[23] < 0)
        {
          operator delete(*__c);
        }

        if (SHIBYTE(v38) < 0)
        {
          operator delete(v37[0]);
        }

        if (v41 < 0)
        {
          operator delete(v40);
        }

        std::locale::~locale(&v39.__r_.__value_.__r.__words[2]);
        std::ostream::~ostream();
        std::ios::~ios();
      }
    }

    else
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }
}

void sub_1000BB2C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, char a50)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  sub_100039C48(&a50);
  if (*(v50 - 121) < 0)
  {
    operator delete(*(v50 - 144));
  }

  if (*(v50 - 89) < 0)
  {
    operator delete(*(v50 - 112));
  }

  _Unwind_Resume(a1);
}

void sub_1000BB410(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    if (os_log_type_enabled(*(qword_1002DBE98 + 112), OS_LOG_TYPE_ERROR))
    {
      sub_1002063A4(v43);
    }

    __cxa_end_catch();
    JUMPOUT(0x1000BB274);
  }

  JUMPOUT(0x1000BB3E8);
}

void sub_1000BB484(uint64_t *a1, uint64_t a2)
{
  memset(&v61, 0, sizeof(v61));
  memset(&v60, 0, sizeof(v60));
  memset(&v59, 0, sizeof(v59));
  memset(&v58, 0, sizeof(v58));
  memset(&v57, 0, sizeof(v57));
  v4 = sub_1000C2128(a2, "messageSendResult");
  sub_1000C22F0(v4, &v54);
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  v59 = v54;
  if ((SHIBYTE(v54.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) == 9)
    {
      v5 = &v59;
      goto LABEL_8;
    }

LABEL_12:
    v9 = 0;
    goto LABEL_13;
  }

  if (v59.__r_.__value_.__l.__size_ != 9)
  {
    goto LABEL_12;
  }

  v5 = v59.__r_.__value_.__r.__words[0];
LABEL_8:
  v6 = v5->__r_.__value_.__r.__words[0];
  v7 = v5->__r_.__value_.__s.__data_[8];
  if (v6 != 0x656C6C65636E6143 || v7 != 100)
  {
    goto LABEL_12;
  }

  std::string::assign(&v58, "MessageError");
  v9 = 1;
LABEL_13:
  v10 = sub_1000C2128(a2, "messageSendLatency");
  v62 = 0;
  sub_1000C3DC4(v10, &v62);
  v11 = v62;
  v12 = sub_1000C2128(a2, "signalEnvironmentClassification");
  sub_1000C22F0(v12, &v54);
  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  v57 = v54;
  if (v11 < 50001)
  {
    goto LABEL_47;
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v57.__r_.__value_.__l.__size_ == 5 && *v57.__r_.__value_.__l.__data_ == 1634891090 && *(v57.__r_.__value_.__r.__words[0] + 4) == 108)
    {
      goto LABEL_49;
    }

    if (v57.__r_.__value_.__l.__size_ == 11 && *v57.__r_.__value_.__l.__data_ == 0x6E61436E61627255 && *(v57.__r_.__value_.__r.__words[0] + 3) == 0x6E6F796E61436E61)
    {
      goto LABEL_49;
    }

    if (v57.__r_.__value_.__l.__size_ != 11)
    {
      goto LABEL_47;
    }

    v14 = v57.__r_.__value_.__r.__words[0];
    goto LABEL_37;
  }

  if (HIBYTE(v57.__r_.__value_.__r.__words[2]) == 5)
  {
    if (LODWORD(v57.__r_.__value_.__l.__data_) == 1634891090 && v57.__r_.__value_.__s.__data_[4] == 108)
    {
      goto LABEL_49;
    }

LABEL_47:
    if ((v9 & 1) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_50;
  }

  if (HIBYTE(v57.__r_.__value_.__r.__words[2]) != 11)
  {
    goto LABEL_47;
  }

  if (v57.__r_.__value_.__r.__words[0] == 0x6E61436E61627255 && *(v57.__r_.__value_.__r.__words + 3) == 0x6E6F796E61436E61)
  {
    goto LABEL_49;
  }

  v14 = &v57;
LABEL_37:
  v17 = v14->__r_.__value_.__r.__words[0];
  v18 = *(v14->__r_.__value_.__r.__words + 3);
  if (v17 != 0x616C696176616E55 || v18 != 0x656C62616C696176)
  {
    goto LABEL_47;
  }

LABEL_49:
  std::string::assign(&v58, "MessageDelay");
LABEL_50:
  v21 = sub_1000C2128(a2, "messageType");
  sub_1000C22F0(v21, &v54);
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  v61 = v54;
  v22 = sub_1000C2128(a2, "messageSize");
  v63 = 0;
  sub_1000C3DC4(v22, &v63);
  std::to_string(&v54, v63);
  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  v60 = v54;
  sub_10000A448(&v54);
  v23 = sub_100008EEC(&v54, "messageType: ", 13);
  if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = &v61;
  }

  else
  {
    v24 = v61.__r_.__value_.__r.__words[0];
  }

  if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v61.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v61.__r_.__value_.__l.__size_;
  }

  v26 = sub_100008EEC(v23, v24, size);
  v27 = sub_100008EEC(v26, " messageSize: ", 14);
  if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = &v60;
  }

  else
  {
    v28 = v60.__r_.__value_.__r.__words[0];
  }

  if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v29 = v60.__r_.__value_.__l.__size_;
  }

  v30 = sub_100008EEC(v27, v28, v29);
  v31 = sub_100008EEC(v30, " msgSendResult: ", 16);
  if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v32 = &v59;
  }

  else
  {
    v32 = v59.__r_.__value_.__r.__words[0];
  }

  if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v33 = HIBYTE(v59.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v33 = v59.__r_.__value_.__l.__size_;
  }

  sub_100008EEC(v31, v32, v33);
  std::stringbuf::str();
  sub_100007ECC(v44, "Cellular");
  sub_100007ECC(&v46, "STW");
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_10000FFF8(&v48, v58.__r_.__value_.__l.__data_, v58.__r_.__value_.__l.__size_);
  }

  else
  {
    v48 = v58;
  }

  if (SHIBYTE(v53) < 0)
  {
    sub_10000FFF8(&v49, v52[0], v52[1]);
  }

  else
  {
    v49 = *v52;
    v50 = v53;
  }

  v51 = 65537;
  v34 = *(qword_1002DBE98 + 112);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 23) >= 0)
    {
      v35 = a1;
    }

    else
    {
      v35 = *a1;
    }

    *buf = 136315138;
    v65 = v35;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "WISABC:#I Triggering ABC for event: %s", buf, 0xCu);
  }

  sub_1000C367C(v36, v44);
  sub_1001075F8(v36);
  if (v43 < 0)
  {
    operator delete(__p);
  }

  if (v41 < 0)
  {
    operator delete(v40);
  }

  if (v39 < 0)
  {
    operator delete(v38);
  }

  if (v37 < 0)
  {
    operator delete(v36[0]);
  }

  if (SHIBYTE(v50) < 0)
  {
    operator delete(v49);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (v47 < 0)
  {
    operator delete(v46);
  }

  if (v45 < 0)
  {
    operator delete(v44[0]);
  }

  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52[0]);
  }

  if (v56 < 0)
  {
    operator delete(v55);
  }

  std::locale::~locale(&v54.__r_.__value_.__r.__words[2]);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_104:
  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }
}

void sub_1000BBB7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, char a50)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(exception_object);
    if (os_log_type_enabled(*(qword_1002DBE98 + 112), OS_LOG_TYPE_ERROR))
    {
      sub_1002063A4(v50);
    }

    __cxa_end_catch();
    JUMPOUT(0x1000BB574);
  }

  if (*(v51 - 217) < 0)
  {
    operator delete(*(v51 - 240));
  }

  if (*(v51 - 193) < 0)
  {
    operator delete(*(v51 - 216));
  }

  if (*(v51 - 169) < 0)
  {
    operator delete(*(v51 - 192));
  }

  if (*(v51 - 137) < 0)
  {
    operator delete(*(v51 - 160));
  }

  if (*(v51 - 105) < 0)
  {
    operator delete(*(v51 - 128));
  }

  _Unwind_Resume(exception_object);
}

void sub_1000BBDA8(uint64_t *a1, uint64_t a2)
{
  memset(&v39, 0, sizeof(v39));
  v3 = sub_1000C2128(a2, "messageType");
  sub_1000C22F0(v3, v36);
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  v39 = v36[0];
  if ((SHIBYTE(v36[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (HIBYTE(v36[0].__r_.__value_.__r.__words[2]) == 15)
    {
      if (v39.__r_.__value_.__r.__words[0] != 0x45636972656E6547 || *(v39.__r_.__value_.__r.__words + 7) != 0x67734D726F727245)
      {
        goto LABEL_63;
      }

      goto LABEL_28;
    }

    if (HIBYTE(v36[0].__r_.__value_.__r.__words[2]) != 20)
    {
      goto LABEL_63;
    }

    v4 = &v39;
    goto LABEL_14;
  }

  if (v39.__r_.__value_.__l.__size_ != 15 || (*v39.__r_.__value_.__l.__data_ == 0x45636972656E6547 ? (v5 = *(v39.__r_.__value_.__r.__words[0] + 7) == 0x67734D726F727245) : (v5 = 0), !v5))
  {
    if (v39.__r_.__value_.__l.__size_ != 20)
    {
      goto LABEL_63;
    }

    v4 = v39.__r_.__value_.__r.__words[0];
LABEL_14:
    v6 = v4->__r_.__value_.__r.__words[0];
    size = v4->__r_.__value_.__l.__size_;
    v8 = v4->__r_.__value_.__r.__words[2];
    if (v6 != 0x6567617373654D69 || size != 0x6F7272456574694CLL || v8 != 1735609714)
    {
      goto LABEL_63;
    }
  }

LABEL_28:
  sub_10000A448(v36);
  v12 = sub_100008EEC(v36, "messageType: ", 13);
  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &v39;
  }

  else
  {
    v13 = v39.__r_.__value_.__r.__words[0];
  }

  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v14 = v39.__r_.__value_.__l.__size_;
  }

  sub_100008EEC(v12, v13, v14);
  std::stringbuf::str();
  sub_100007ECC(v25, "Cellular");
  sub_100007ECC(&v27, "STW");
  sub_100007ECC(&v29, "MessageError");
  if (SHIBYTE(v35) < 0)
  {
    sub_10000FFF8(&v31, v34[0], v34[1]);
  }

  else
  {
    v31 = *v34;
    v32 = v35;
  }

  v33 = 65537;
  v15 = *(qword_1002DBE98 + 112);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 23) >= 0)
    {
      v16 = a1;
    }

    else
    {
      v16 = *a1;
    }

    *buf = 136315138;
    v41 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "WISABC:#I Triggering ABC for event: %s", buf, 0xCu);
  }

  sub_1000C367C(v17, v25);
  sub_1001075F8(v17);
  if (v24 < 0)
  {
    operator delete(__p);
  }

  if (v22 < 0)
  {
    operator delete(v21);
  }

  if (v20 < 0)
  {
    operator delete(v19);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31);
  }

  if (v30 < 0)
  {
    operator delete(v29);
  }

  if (v28 < 0)
  {
    operator delete(v27);
  }

  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(v34[0]);
  }

  if (v38 < 0)
  {
    operator delete(v37);
  }

  std::locale::~locale(&v36[0].__r_.__value_.__r.__words[2]);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_63:
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }
}

void sub_1000BC208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, char a50)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  sub_100039C48(&a50);
  if (*(v50 - 89) < 0)
  {
    operator delete(*(v50 - 112));
  }

  _Unwind_Resume(a1);
}

unsigned __int8 *sub_1000BC2E4(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1000C2128(a2, "qualifiedHandlesCount");
  LODWORD(v30) = 0;
  sub_1000C3DC4(v4, &v30);
  v5 = v30;
  v6 = sub_1000C2128(a2, "qualifiedHandlesIML");
  LODWORD(v30) = 0;
  result = sub_1000C3DC4(v6, &v30);
  if (v5 < v30)
  {
    sub_10000A448(&v30);
    sub_100008EEC(&v30, "NumQualifiedContacts: ", 22);
    v8 = std::ostream::operator<<();
    sub_100008EEC(v8, " NumQualifiediMLContacts: ", 26);
    std::ostream::operator<<();
    std::stringbuf::str();
    sub_100007ECC(v19, "Cellular");
    sub_100007ECC(&v21, "STW");
    sub_100007ECC(&v23, "QualifiedContactsError");
    if (SHIBYTE(v29) < 0)
    {
      sub_10000FFF8(&v25, v28[0], v28[1]);
    }

    else
    {
      v25 = *v28;
      v26 = v29;
    }

    v27 = 65537;
    v9 = *(qword_1002DBE98 + 112);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      if (*(a1 + 23) >= 0)
      {
        v10 = a1;
      }

      else
      {
        v10 = *a1;
      }

      *buf = 136315138;
      v35 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "WISABC:#I Triggering ABC for event: %s", buf, 0xCu);
    }

    sub_1000C367C(v11, v19);
    sub_1001075F8(v11);
    if (v18 < 0)
    {
      operator delete(__p);
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }

    if (v14 < 0)
    {
      operator delete(v13);
    }

    if (v12 < 0)
    {
      operator delete(v11[0]);
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25);
    }

    if (v24 < 0)
    {
      operator delete(v23);
    }

    if (v22 < 0)
    {
      operator delete(v21);
    }

    if (v20 < 0)
    {
      operator delete(v19[0]);
    }

    if (SHIBYTE(v29) < 0)
    {
      operator delete(v28[0]);
    }

    if (v33 < 0)
    {
      operator delete(v32[7].__locale_);
    }

    std::locale::~locale(v32);
    std::ostream::~ostream();
    return std::ios::~ios();
  }

  return result;
}

void sub_1000BC640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, char a50)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  sub_100039C48(&a50);
  _Unwind_Resume(a1);
}

void sub_1000BC6FC(uint64_t *a1, uint64_t a2)
{
  memset(&v58, 0, sizeof(v58));
  memset(&v57, 0, sizeof(v57));
  memset(&v56, 0, sizeof(v56));
  memset(&v55, 0, sizeof(v55));
  v4 = sub_1000C2128(a2, "cellularRadioTech");
  sub_1000C22F0(v4, &v52);
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  v58 = v52;
  v5 = sub_1000C2128(a2, "IMMetricsCollectorFzErrorKey");
  LODWORD(v52.__r_.__value_.__l.__data_) = 0;
  sub_1000C3DC4(v5, &v52);
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v58.__r_.__value_.__l.__size_ == 9)
    {
      v6 = v58.__r_.__value_.__r.__words[0];
      goto LABEL_8;
    }

LABEL_14:
    v10 = 0;
    goto LABEL_15;
  }

  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) != 9)
  {
    goto LABEL_14;
  }

  v6 = &v58;
LABEL_8:
  v7 = v6->__r_.__value_.__r.__words[0];
  v8 = v6->__r_.__value_.__s.__data_[8];
  v10 = v7 == 0x74696C6C65746153 && v8 == 101;
LABEL_15:
  v11 = SLODWORD(v52.__r_.__value_.__l.__data_) > 0 && v10;
  v12 = sub_1000C2128(a2, "signalEnvironmentClassification");
  sub_1000C22F0(v12, &v52);
  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  v57 = v52;
  v13 = sub_1000C2128(a2, "IMMetricsCollectorSendDurationKey");
  v59 = 0;
  sub_1000C3DC4(v13, &v59);
  std::to_string(&v52, v59);
  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  v55 = v52;
  v14 = sub_1000C2128(a2, "IMMetricsCollectorConnectionTypeKey");
  v60 = 0;
  sub_1000C3DC4(v14, &v60);
  std::to_string(&v52, v60);
  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  v56 = v52;
  if (v11)
  {
    sub_10000A448(&v52);
    v15 = sub_100008EEC(&v52, "RAT:", 4);
    if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v58;
    }

    else
    {
      v16 = v58.__r_.__value_.__r.__words[0];
    }

    if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v58.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v58.__r_.__value_.__l.__size_;
    }

    v18 = sub_100008EEC(v15, v16, size);
    v19 = sub_100008EEC(v18, "Duration:", 9);
    if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v55;
    }

    else
    {
      v20 = v55.__r_.__value_.__r.__words[0];
    }

    if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = HIBYTE(v55.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v21 = v55.__r_.__value_.__l.__size_;
    }

    v22 = sub_100008EEC(v19, v20, v21);
    v23 = sub_100008EEC(v22, " Environment:", 13);
    if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = &v57;
    }

    else
    {
      v24 = v57.__r_.__value_.__r.__words[0];
    }

    if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v25 = v57.__r_.__value_.__l.__size_;
    }

    v26 = sub_100008EEC(v23, v24, v25);
    v27 = sub_100008EEC(v26, " ConnectionTypeKey:", 19);
    if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v28 = &v56;
    }

    else
    {
      v28 = v56.__r_.__value_.__r.__words[0];
    }

    if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = HIBYTE(v56.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v29 = v56.__r_.__value_.__l.__size_;
    }

    v30 = sub_100008EEC(v27, v28, v29);
    sub_100008EEC(v30, " FzErrorKey:", 12);
    std::ostream::operator<<();
    std::stringbuf::str();
    sub_100007ECC(v41, "Cellular");
    sub_100007ECC(&v43, "STW");
    sub_100007ECC(&v45, "SMSMessageError");
    if (SHIBYTE(v51) < 0)
    {
      sub_10000FFF8(&v47, v50[0], v50[1]);
    }

    else
    {
      v47 = *v50;
      v48 = v51;
    }

    v49 = 65537;
    v31 = *(qword_1002DBE98 + 112);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      if (*(a1 + 23) >= 0)
      {
        v32 = a1;
      }

      else
      {
        v32 = *a1;
      }

      *buf = 136315138;
      v62 = v32;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "WISABC:#I Triggering ABC for event: %s", buf, 0xCu);
    }

    sub_1000C367C(v33, v41);
    sub_1001075F8(v33);
    if (v40 < 0)
    {
      operator delete(__p);
    }

    if (v38 < 0)
    {
      operator delete(v37);
    }

    if (v36 < 0)
    {
      operator delete(v35);
    }

    if (v34 < 0)
    {
      operator delete(v33[0]);
    }

    if (SHIBYTE(v48) < 0)
    {
      operator delete(v47);
    }

    if (v46 < 0)
    {
      operator delete(v45);
    }

    if (v44 < 0)
    {
      operator delete(v43);
    }

    if (v42 < 0)
    {
      operator delete(v41[0]);
    }

    if (SHIBYTE(v51) < 0)
    {
      operator delete(v50[0]);
    }

    if (v54 < 0)
    {
      operator delete(v53);
    }

    std::locale::~locale(&v52.__r_.__value_.__r.__words[2]);
    std::ostream::~ostream();
    std::ios::~ios();
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }
}

void sub_1000BCCB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, char a50)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  sub_100039C48(&a50);
  if (*(v50 - 201) < 0)
  {
    operator delete(*(v50 - 224));
  }

  if (*(v50 - 169) < 0)
  {
    operator delete(*(v50 - 192));
  }

  if (*(v50 - 137) < 0)
  {
    operator delete(*(v50 - 160));
  }

  if (*(v50 - 105) < 0)
  {
    operator delete(*(v50 - 128));
  }

  _Unwind_Resume(a1);
}

void sub_1000BCEAC(uint64_t *a1, uint64_t a2)
{
  memset(&v60, 0, sizeof(v60));
  memset(&v59, 0, sizeof(v59));
  memset(&v58, 0, sizeof(v58));
  memset(&v57, 0, sizeof(v57));
  v4 = sub_1000C2128(a2, "cellularRadioTech");
  sub_1000C22F0(v4, &v54);
  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  v60 = v54;
  v5 = sub_1000C2128(a2, "IMMetricsCollectorFzErrorKey");
  LODWORD(v54.__r_.__value_.__l.__data_) = 0;
  sub_1000C3DC4(v5, &v54);
  data = v54.__r_.__value_.__l.__data_;
  v7 = sub_1000C2128(a2, "IMMetricsCollectorMessageErrorKey");
  LODWORD(v54.__r_.__value_.__l.__data_) = 0;
  sub_1000C3DC4(v7, &v54);
  if ((SHIBYTE(v60.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) == 9)
    {
      v8 = &v60;
      goto LABEL_8;
    }

LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

  if (v60.__r_.__value_.__l.__size_ != 9)
  {
    goto LABEL_12;
  }

  v8 = v60.__r_.__value_.__r.__words[0];
LABEL_8:
  v9 = v8->__r_.__value_.__r.__words[0];
  v10 = v8->__r_.__value_.__s.__data_[8];
  if (v9 != 0x74696C6C65746153 || v10 != 101)
  {
    goto LABEL_12;
  }

  v12 = data > 0 || (LODWORD(v54.__r_.__value_.__l.__data_) - 1) < 3;
LABEL_13:
  v13 = sub_1000C2128(a2, "signalEnvironmentClassification");
  sub_1000C22F0(v13, &v54);
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  v59 = v54;
  v14 = sub_1000C2128(a2, "IMMetricsCollectorSendDurationKey");
  v61 = 0;
  sub_1000C3DC4(v14, &v61);
  std::to_string(&v54, v61);
  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  v57 = v54;
  v15 = sub_1000C2128(a2, "IMMetricsCollectorConnectionTypeKey");
  v62 = 0;
  sub_1000C3DC4(v15, &v62);
  std::to_string(&v54, v62);
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  v58 = v54;
  if (v12)
  {
    sub_10000A448(&v54);
    v16 = sub_100008EEC(&v54, "RAT:", 4);
    if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v60;
    }

    else
    {
      v17 = v60.__r_.__value_.__r.__words[0];
    }

    if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v60.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v60.__r_.__value_.__l.__size_;
    }

    v19 = sub_100008EEC(v16, v17, size);
    v20 = sub_100008EEC(v19, "Duration:", 9);
    if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &v57;
    }

    else
    {
      v21 = v57.__r_.__value_.__r.__words[0];
    }

    if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v22 = v57.__r_.__value_.__l.__size_;
    }

    v23 = sub_100008EEC(v20, v21, v22);
    v24 = sub_100008EEC(v23, " Environment:", 13);
    if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = &v59;
    }

    else
    {
      v25 = v59.__r_.__value_.__r.__words[0];
    }

    if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = HIBYTE(v59.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v26 = v59.__r_.__value_.__l.__size_;
    }

    v27 = sub_100008EEC(v24, v25, v26);
    v28 = sub_100008EEC(v27, " ConnectionTypeKey:", 19);
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

    v31 = sub_100008EEC(v28, v29, v30);
    sub_100008EEC(v31, " FzErrorKey:", 12);
    std::ostream::operator<<();
    std::stringbuf::str();
    sub_100007ECC(v43, "Cellular");
    sub_100007ECC(&v45, "STW");
    sub_100007ECC(&v47, "iMLMessageError");
    if (SHIBYTE(v53) < 0)
    {
      sub_10000FFF8(&v49, v52[0], v52[1]);
    }

    else
    {
      v49 = *v52;
      v50 = v53;
    }

    v51 = 65537;
    v33 = *(qword_1002DBE98 + 112);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      if (*(a1 + 23) >= 0)
      {
        v34 = a1;
      }

      else
      {
        v34 = *a1;
      }

      *buf = 136315138;
      v64 = v34;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "WISABC:#I Triggering ABC for event: %s", buf, 0xCu);
    }

    sub_1000C367C(v35, v43);
    sub_1001075F8(v35);
    if (v42 < 0)
    {
      operator delete(__p);
    }

    if (v40 < 0)
    {
      operator delete(v39);
    }

    if (v38 < 0)
    {
      operator delete(v37);
    }

    if (v36 < 0)
    {
      operator delete(v35[0]);
    }

    if (SHIBYTE(v50) < 0)
    {
      operator delete(v49);
    }

    if (v48 < 0)
    {
      operator delete(v47);
    }

    if (v46 < 0)
    {
      operator delete(v45);
    }

    if (v44 < 0)
    {
      operator delete(v43[0]);
    }

    if (SHIBYTE(v53) < 0)
    {
      operator delete(v52[0]);
    }

    if (v56 < 0)
    {
      operator delete(v55);
    }

    std::locale::~locale(&v54.__r_.__value_.__r.__words[2]);
    std::ostream::~ostream();
    std::ios::~ios();
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }
}

void sub_1000BD488(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, char a50)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  sub_100039C48(&a50);
  if (*(v50 - 201) < 0)
  {
    operator delete(*(v50 - 224));
  }

  if (*(v50 - 169) < 0)
  {
    operator delete(*(v50 - 192));
  }

  if (*(v50 - 137) < 0)
  {
    operator delete(*(v50 - 160));
  }

  if (*(v50 - 105) < 0)
  {
    operator delete(*(v50 - 128));
  }

  _Unwind_Resume(a1);
}

void sub_1000BD688(uint64_t *a1, uint64_t a2)
{
  memset(&v35, 0, sizeof(v35));
  v4 = sub_1000C2128(a2, "currentlyConnected");
  v32[0].__r_.__value_.__s.__data_[0] = 0;
  sub_1000C4064(v4, v32);
  v5 = v32[0].__r_.__value_.__s.__data_[0];
  v6 = sub_1000C2128(a2, "currentMode");
  LODWORD(v32[0].__r_.__value_.__l.__data_) = 0;
  sub_1000C3DC4(v6, v32);
  if (LODWORD(v32[0].__r_.__value_.__l.__data_) <= 1 && (v5 & 1) != 0)
  {
    v7 = sub_1000C2128(a2, "cellularRadioTech");
    sub_1000C22F0(v7, v32);
    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    v35 = v32[0];
    sub_10000A448(v32);
    v8 = sub_100008EEC(v32, "cellularRadioTech: ", 19);
    if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v35;
    }

    else
    {
      v9 = v35.__r_.__value_.__r.__words[0];
    }

    if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v35.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v35.__r_.__value_.__l.__size_;
    }

    sub_100008EEC(v8, v9, size);
    std::stringbuf::str();
    sub_100007ECC(v21, "Cellular");
    sub_100007ECC(&v23, "STW");
    sub_100007ECC(&v25, "OTGError");
    if (SHIBYTE(v31) < 0)
    {
      sub_10000FFF8(&v27, v30[0], v30[1]);
    }

    else
    {
      v27 = *v30;
      v28 = v31;
    }

    v29 = 65537;
    v11 = *(qword_1002DBE98 + 112);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      if (*(a1 + 23) >= 0)
      {
        v12 = a1;
      }

      else
      {
        v12 = *a1;
      }

      *buf = 136315138;
      v37 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "WISABC:#I Triggering ABC for event: %s", buf, 0xCu);
    }

    sub_1000C367C(v13, v21);
    sub_1001075F8(v13);
    if (v20 < 0)
    {
      operator delete(__p);
    }

    if (v18 < 0)
    {
      operator delete(v17);
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }

    if (v14 < 0)
    {
      operator delete(v13[0]);
    }

    if (SHIBYTE(v28) < 0)
    {
      operator delete(v27);
    }

    if (v26 < 0)
    {
      operator delete(v25);
    }

    if (v24 < 0)
    {
      operator delete(v23);
    }

    if (v22 < 0)
    {
      operator delete(v21[0]);
    }

    if (SHIBYTE(v31) < 0)
    {
      operator delete(v30[0]);
    }

    if (v34 < 0)
    {
      operator delete(v33);
    }

    std::locale::~locale(&v32[0].__r_.__value_.__r.__words[2]);
    std::ostream::~ostream();
    std::ios::~ios();
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }
}

void sub_1000BDA38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, char a50)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  sub_100039C48(&a50);
  if (*(v50 - 73) < 0)
  {
    operator delete(*(v50 - 96));
  }

  _Unwind_Resume(a1);
}

void sub_1000BDB60(std::string::size_type a1, uint64_t a2)
{
  v4 = sub_1000C2128(a2, "is_RCS");
  v13 = 0;
  sub_1000C4064(v4, &v13);
  if (v13 == 1)
  {
    v5 = *(qword_1002DBE98 + 112);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      if (*(a1 + 23) >= 0)
      {
        v6 = a1;
      }

      else
      {
        v6 = *a1;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "WISABC:#I Event: %s is for RCS", &buf, 0xCu);
    }

    sub_1000C233C(a1, a2);
    return;
  }

  v7 = sub_1000C2128(a2, "cellularRadioTech");
  sub_1000C22F0(v7, &buf);
  if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) != 7)
    {
      return;
    }

    if (LODWORD(buf.__r_.__value_.__l.__data_) != 541414476 || *(buf.__r_.__value_.__r.__words + 3) != 1314147872)
    {
      return;
    }

    goto LABEL_24;
  }

  if (buf.__r_.__value_.__l.__size_ != 7)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
    return;
  }

  v10 = *buf.__r_.__value_.__l.__data_ != 541414476 || *(buf.__r_.__value_.__r.__words[0] + 3) != 1314147872;
  operator delete(buf.__r_.__value_.__l.__data_);
  if (!v10)
  {
LABEL_24:
    v11 = *(qword_1002DBE98 + 112);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      if (*(a1 + 23) >= 0)
      {
        v12 = a1;
      }

      else
      {
        v12 = *a1;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "WISABC:#I Event: %s is for NTN", &buf, 0xCu);
    }

    sub_1000C2D18(a1, a2);
  }
}

void sub_1000BDD70(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    if (os_log_type_enabled(*(qword_1002DBE98 + 112), OS_LOG_TYPE_ERROR))
    {
      sub_1002067D4(v2);
    }

    __cxa_end_catch();
    JUMPOUT(0x1000BDD40);
  }

  _Unwind_Resume(a1);
}

void sub_1000BDDBC(uint64_t *a1, uint64_t a2)
{
  memset(&v54, 0, sizeof(v54));
  memset(&v53, 0, sizeof(v53));
  memset(&v52, 0, sizeof(v52));
  sub_100007ECC(&v51, "");
  v4 = sub_1000C2128(a2, "is_success");
  v48.__r_.__value_.__s.__data_[0] = 0;
  sub_1000C4064(v4, &v48);
  v5 = v48.__r_.__value_.__s.__data_[0];
  v6 = sub_1000C2128(a2, "latency");
  v55 = 0;
  sub_1000C3DC4(v6, &v55);
  v7 = v55;
  if (v5)
  {
    if (v55 < 5001)
    {
      goto LABEL_75;
    }

    std::string::assign(&v51, "RCSSIPReferLatency");
  }

  else
  {
    std::string::assign(&v51, "RCSSIPRefer");
  }

  v8 = sub_1000C2128(a2, "sip_error_code");
  v56 = 0;
  sub_1000C3DC4(v8, &v56);
  std::to_string(&v48, v56);
  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  v54 = v48;
  v9 = sub_1000C2128(a2, "method");
  sub_1000C22F0(v9, &v48);
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  v53 = v48;
  v10 = sub_1000C2128(a2, "failure_reason");
  sub_1000C22F0(v10, &v48);
  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  v52 = v48;
  sub_10000A448(&v48);
  v11 = sub_100008EEC(&v48, "sip_error_code: ", 16);
  if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v54;
  }

  else
  {
    v12 = v54.__r_.__value_.__r.__words[0];
  }

  if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v54.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v54.__r_.__value_.__l.__size_;
  }

  v14 = sub_100008EEC(v11, v12, size);
  v15 = sub_100008EEC(v14, " method: ", 9);
  if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v53;
  }

  else
  {
    v16 = v53.__r_.__value_.__r.__words[0];
  }

  if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(v53.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = v53.__r_.__value_.__l.__size_;
  }

  v18 = sub_100008EEC(v15, v16, v17);
  v19 = sub_100008EEC(v18, " failure_reason: ", 17);
  if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v52;
  }

  else
  {
    v20 = v52.__r_.__value_.__r.__words[0];
  }

  if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = HIBYTE(v52.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = v52.__r_.__value_.__l.__size_;
  }

  v22 = sub_100008EEC(v19, v20, v21);
  v23 = sub_100008EEC(v22, " latency: ", 10);
  if (v7 >> 4 >= 0x271)
  {
    v24 = ">10secs";
  }

  else
  {
    v24 = "5-10secs";
  }

  if (v7 >= 5000)
  {
    v25 = v24;
  }

  else
  {
    v25 = "<5secs";
  }

  sub_100007ECC(__p, v25);
  if ((v39 & 0x80u) == 0)
  {
    v26 = __p;
  }

  else
  {
    v26 = __p[0];
  }

  if ((v39 & 0x80u) == 0)
  {
    v27 = v39;
  }

  else
  {
    v27 = __p[1];
  }

  sub_100008EEC(v23, v26, v27);
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  sub_100007ECC(__p, "Telephony");
  sub_100007ECC(&v40, "RCS");
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_10000FFF8(&v42, v51.__r_.__value_.__l.__data_, v51.__r_.__value_.__l.__size_);
  }

  else
  {
    v42 = v51;
  }

  if (SHIBYTE(v47) < 0)
  {
    sub_10000FFF8(&v43, v46[0], v46[1]);
  }

  else
  {
    v43 = *v46;
    v44 = v47;
  }

  v45 = 0x10000;
  v28 = *(qword_1002DBE98 + 112);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 23) >= 0)
    {
      v29 = a1;
    }

    else
    {
      v29 = *a1;
    }

    *buf = 136315138;
    v58 = v29;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "WISABC:#I Triggering ABC for event: %s", buf, 0xCu);
  }

  sub_1000C367C(__dst, __p);
  sub_1001075F8(__dst);
  if (v37 < 0)
  {
    operator delete(v36);
  }

  if (v35 < 0)
  {
    operator delete(v34);
  }

  if (v33 < 0)
  {
    operator delete(v32);
  }

  if (v31 < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if (v41 < 0)
  {
    operator delete(v40);
  }

  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v47) < 0)
  {
    operator delete(v46[0]);
  }

  if (v50 < 0)
  {
    operator delete(v49);
  }

  std::locale::~locale(&v48.__r_.__value_.__r.__words[2]);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_75:
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }
}

void sub_1000BE398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, char a51)
{
  if (*(v51 - 177) < 0)
  {
    operator delete(*(v51 - 200));
  }

  if (*(v51 - 153) < 0)
  {
    operator delete(*(v51 - 176));
  }

  if (*(v51 - 121) < 0)
  {
    operator delete(*(v51 - 144));
  }

  if (*(v51 - 89) < 0)
  {
    operator delete(*(v51 - 112));
  }

  _Unwind_Resume(a1);
}

void sub_1000BE588(uint64_t *a1, uint64_t a2)
{
  sub_100007ECC(&v44, "");
  v4 = sub_1000C2128(a2, "is_success");
  LOBYTE(v49) = 0;
  sub_1000C4064(v4, &v49);
  v5 = v49;
  v6 = sub_1000C2128(a2, "delay");
  v45 = 0;
  sub_1000C3DC4(v6, &v45);
  v7 = v45;
  v8 = sub_1000C2128(a2, "sip_error_code");
  v46 = 0;
  sub_1000C3DC4(v8, &v46);
  v9 = v46;
  v49 = 0xC800000000;
  LODWORD(v50) = 404;
  v42 = 0;
  v43 = 0;
  v41 = 0;
  sub_1000C420C(&v41, &v49, &v50 + 4, 3uLL);
  v10 = v41;
  v11 = v41;
  if (v41 != v42)
  {
    v12 = "RCSSIPOptions";
    v11 = v41;
    while (*v11 != v9)
    {
      if (++v11 == v42)
      {
        goto LABEL_11;
      }
    }
  }

  if (v11 == v42)
  {
    v12 = "RCSSIPOptions";
  }

  else
  {
    if (!v5 || v7 < 2001)
    {
      goto LABEL_65;
    }

    v12 = "RCSSIPOptionsDelay";
  }

LABEL_11:
  std::string::assign(&v44, v12);
  sub_10000A448(&v49);
  v13 = sub_100008EEC(&v49, "sip_error_code: ", 16);
  std::to_string(&v32, v9);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v32;
  }

  else
  {
    v14 = v32.__r_.__value_.__r.__words[0];
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v32.__r_.__value_.__l.__size_;
  }

  v16 = sub_100008EEC(v13, v14, size);
  v17 = sub_100008EEC(v16, " delay: ", 8);
  if (v7 >> 4 >= 0x271)
  {
    v18 = ">10secs";
  }

  else
  {
    v18 = "5-10secs";
  }

  if (v7 >= 5000)
  {
    v19 = v18;
  }

  else
  {
    v19 = "<5secs";
  }

  sub_100007ECC(__p, v19);
  if (v40 >= 0)
  {
    v20 = __p;
  }

  else
  {
    v20 = __p[0];
  }

  if (v40 >= 0)
  {
    v21 = HIBYTE(v40);
  }

  else
  {
    v21 = __p[1];
  }

  sub_100008EEC(v17, v20, v21);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  std::stringbuf::str();
  sub_100007ECC(&v32, "Telephony");
  sub_100007ECC(&v33, "RCS");
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_10000FFF8(&v35, v44.__r_.__value_.__l.__data_, v44.__r_.__value_.__l.__size_);
  }

  else
  {
    v35 = v44;
  }

  if (SHIBYTE(v40) < 0)
  {
    sub_10000FFF8(&v36, __p[0], __p[1]);
  }

  else
  {
    v36 = *__p;
    v37 = v40;
  }

  v38 = 0x10000;
  v22 = *(qword_1002DBE98 + 112);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 23) >= 0)
    {
      v23 = a1;
    }

    else
    {
      v23 = *a1;
    }

    *buf = 136315138;
    v48 = v23;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "WISABC:#I Triggering ABC for event: %s", buf, 0xCu);
  }

  sub_1000C367C(v24, &v32);
  sub_1001075F8(v24);
  if (v31 < 0)
  {
    operator delete(v30);
  }

  if (v29 < 0)
  {
    operator delete(v28);
  }

  if (v27 < 0)
  {
    operator delete(v26);
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(v36);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (v34 < 0)
  {
    operator delete(v33);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v40) < 0)
  {
    operator delete(__p[0]);
  }

  if (v52 < 0)
  {
    operator delete(v51[7].__locale_);
  }

  std::locale::~locale(v51);
  std::ostream::~ostream();
  std::ios::~ios();
  v10 = v41;
LABEL_65:
  if (v10)
  {
    v42 = v10;
    operator delete(v10);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }
}

void sub_1000BEA94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  sub_100039C48(&a62);
  if (a50)
  {
    operator delete(a50);
  }

  if (a58 < 0)
  {
    operator delete(a53);
  }

  _Unwind_Resume(a1);
}

void sub_1000BEC14(uint64_t *a1, uint64_t a2)
{
  memset(&v48, 0, sizeof(v48));
  memset(&v47, 0, sizeof(v47));
  v4 = sub_1000C2128(a2, "msrp_end_reason");
  sub_1000C22F0(v4, v44);
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  v47 = v44[0];
  v5 = sub_1000C2128(a2, "msrp_error_code");
  LODWORD(v44[0].__r_.__value_.__l.__data_) = 0;
  sub_1000C3DC4(v5, v44);
  data = v44[0].__r_.__value_.__l.__data_;
  v7 = sub_1000C2128(a2, "sip_error_code");
  LODWORD(v44[0].__r_.__value_.__l.__data_) = 0;
  sub_1000C3DC4(v7, v44);
  v8 = v44[0].__r_.__value_.__l.__data_;
  v9 = sub_1000C2128(a2, "sip_end_reason");
  sub_1000C22F0(v9, v44);
  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  v48 = v44[0];
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v47.__r_.__value_.__l.__size_ == 2)
    {
      v10 = v47.__r_.__value_.__r.__words[0];
LABEL_10:
      if (LOWORD(v10->__r_.__value_.__l.__data_) == 19279)
      {
        goto LABEL_68;
      }
    }
  }

  else if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) == 2)
  {
    v10 = &v47;
    goto LABEL_10;
  }

  sub_10000A448(v44);
  v11 = sub_100008EEC(v44, "msrp_end_reason: ", 17);
  if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v47;
  }

  else
  {
    v12 = v47.__r_.__value_.__r.__words[0];
  }

  if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v47.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v47.__r_.__value_.__l.__size_;
  }

  v14 = sub_100008EEC(v11, v12, size);
  v15 = sub_100008EEC(v14, " msrp_error_code: ", 18);
  std::to_string(&v36, data);
  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v36;
  }

  else
  {
    v16 = v36.__r_.__value_.__r.__words[0];
  }

  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(v36.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = v36.__r_.__value_.__l.__size_;
  }

  v18 = sub_100008EEC(v15, v16, v17);
  v19 = sub_100008EEC(v18, " sip_end_reason: ", 17);
  if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v48;
  }

  else
  {
    v20 = v48.__r_.__value_.__r.__words[0];
  }

  if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = HIBYTE(v48.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = v48.__r_.__value_.__l.__size_;
  }

  v22 = sub_100008EEC(v19, v20, v21);
  v23 = sub_100008EEC(v22, " sip_error_code: ", 17);
  std::to_string(&v43, v8);
  if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = &v43;
  }

  else
  {
    v24 = v43.__r_.__value_.__r.__words[0];
  }

  if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = HIBYTE(v43.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v25 = v43.__r_.__value_.__l.__size_;
  }

  sub_100008EEC(v23, v24, v25);
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  std::stringbuf::str();
  sub_100007ECC(&v36, "Telephony");
  sub_100007ECC(&v37, "RCS");
  sub_100007ECC(&v39, "MSRPSessionEndStats");
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_10000FFF8(&v41, v43.__r_.__value_.__l.__data_, v43.__r_.__value_.__l.__size_);
  }

  else
  {
    v41 = v43;
  }

  v42 = 0x10000;
  v26 = *(qword_1002DBE98 + 112);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 23) >= 0)
    {
      v27 = a1;
    }

    else
    {
      v27 = *a1;
    }

    *buf = 136315138;
    v50 = v27;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "WISABC:#I Triggering ABC for event: %s", buf, 0xCu);
  }

  sub_1000C367C(v28, &v36);
  sub_1001075F8(v28);
  if (v35 < 0)
  {
    operator delete(__p);
  }

  if (v33 < 0)
  {
    operator delete(v32);
  }

  if (v31 < 0)
  {
    operator delete(v30);
  }

  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (v40 < 0)
  {
    operator delete(v39);
  }

  if (v38 < 0)
  {
    operator delete(v37);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (v46 < 0)
  {
    operator delete(v45);
  }

  std::locale::~locale(&v44[0].__r_.__value_.__r.__words[2]);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_68:
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }
}

void sub_1000BF124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, char a50)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  sub_100039C48(&a50);
  if (*(v50 - 121) < 0)
  {
    operator delete(*(v50 - 144));
  }

  if (*(v50 - 89) < 0)
  {
    operator delete(*(v50 - 112));
  }

  _Unwind_Resume(a1);
}

void sub_1000BF274(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1000C2128(a2, "success");
  buf.__r_.__value_.__s.__data_[0] = 0;
  sub_1000C4064(v4, &buf);
  if (buf.__r_.__value_.__s.__data_[0] != 1)
  {
    v6 = sub_1000C2128(a2, "bootstrap");
    v40 = 0;
    sub_1000C4064(v6, &v40);
    if (v40)
    {
      v7 = "true";
    }

    else
    {
      v7 = "false";
    }

    v8 = sub_1000C2128(a2, "cellular");
    v41 = 0;
    sub_1000C4064(v8, &v41);
    if (v41)
    {
      v9 = "true";
    }

    else
    {
      v9 = "false";
    }

    sub_100007ECC(&buf, v9);
    v10 = std::string::insert(&buf, 0, "isCellular: ");
    v11 = v10->__r_.__value_.__r.__words[0];
    size = v10->__r_.__value_.__l.__size_;
    v39[0] = v10->__r_.__value_.__r.__words[2];
    *(v39 + 3) = *(&v10->__r_.__value_.__r.__words[2] + 3);
    v13 = SHIBYTE(v10->__r_.__value_.__r.__words[2]);
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    sub_100007ECC(&buf, v7);
    v14 = std::string::insert(&buf, 0, "isBootstrap: ");
    v15 = v14->__r_.__value_.__r.__words[0];
    v16 = v14->__r_.__value_.__l.__size_;
    v38[0] = v14->__r_.__value_.__r.__words[2];
    *(v38 + 3) = *(&v14->__r_.__value_.__r.__words[2] + 3);
    v17 = SHIBYTE(v14->__r_.__value_.__r.__words[2]);
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    sub_100007ECC(&buf, "Telephony");
    sub_100007ECC(&v29, "Activation Failure");
    if (v13 < 0)
    {
      sub_10000FFF8(v31, v11, size);
    }

    else
    {
      v31[0] = v11;
      v31[1] = size;
      *v32 = v39[0];
      *&v32[3] = *(v39 + 3);
      v33 = v13;
    }

    if (v17 < 0)
    {
      sub_10000FFF8(v34, v15, v16);
    }

    else
    {
      v34[0] = v15;
      v34[1] = v16;
      *v35 = v38[0];
      *&v35[3] = *(v38 + 3);
      v36 = v17;
    }

    v37 = 65537;
    v18 = *(qword_1002DBE98 + 112);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      if (*(a1 + 23) >= 0)
      {
        v19 = a1;
      }

      else
      {
        v19 = *a1;
      }

      *v42 = 136315138;
      v43 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "WISABC:#I Triggering ABC for event: %s", v42, 0xCu);
    }

    sub_1000C367C(__dst, &buf);
    sub_1001075F8(__dst);
    if (v27 < 0)
    {
      operator delete(__p);
    }

    if (v25 < 0)
    {
      operator delete(v24);
    }

    if (v23 < 0)
    {
      operator delete(v22);
    }

    if (v21 < 0)
    {
      operator delete(__dst[0]);
    }

    if (v36 < 0)
    {
      operator delete(v34[0]);
    }

    if (v33 < 0)
    {
      operator delete(v31[0]);
    }

    if (v30 < 0)
    {
      operator delete(v29);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
      if ((v17 & 0x80000000) == 0)
      {
LABEL_41:
        if ((v13 & 0x80000000) == 0)
        {
          return;
        }

LABEL_45:
        operator delete(v11);
        return;
      }
    }

    else if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

    operator delete(v15);
    if ((v13 & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_45;
  }

  v5 = *(qword_1002DBE98 + 112);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "WISABC:#I success is true for Event: com.apple.setupassistant.ios.activation and hence skipping rule", &buf, 2u);
  }
}

void sub_1000BF620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (v43 < 0)
  {
    operator delete(v41);
  }

  if (v42 < 0)
  {
    operator delete(v40);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000BF74C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C2128(a2, "was_successful");
  v69[0].__r_.__value_.__s.__data_[0] = 0;
  sub_1000C4064(v4, v69);
  if (v69[0].__r_.__value_.__s.__data_[0] == 1)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 112), OS_LOG_TYPE_ERROR))
    {
      sub_100206C08(a1);
    }

    return;
  }

  memset(&v79, 0, sizeof(v79));
  sub_100007ECC(&v78, "RCS/iMessage/SMS/MMS Failures");
  v5 = sub_1000C2128(a2, "cellularRadioTech");
  sub_1000C22F0(v5, v69);
  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v79.__r_.__value_.__l.__data_);
  }

  v79 = v69[0];
  v6 = sub_1000C2128(a2, "is_partially_active_sim");
  v80 = 0;
  sub_1000C4064(v6, &v80);
  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v79.__r_.__value_.__l.__size_ == 9 && *v79.__r_.__value_.__l.__data_ == 0x74696C6C65746153 && *(v79.__r_.__value_.__r.__words[0] + 8) == 101)
    {
      goto LABEL_29;
    }

    if (v79.__r_.__value_.__l.__size_ != 7)
    {
      goto LABEL_19;
    }

    v9 = v79.__r_.__value_.__r.__words[0];
LABEL_22:
    data = v9->__r_.__value_.__l.__data_;
    v11 = *(v9->__r_.__value_.__r.__words + 3);
    v7 = data == 541414476 && v11 == 1314147872;
    goto LABEL_25;
  }

  if (HIBYTE(v79.__r_.__value_.__r.__words[2]) == 7)
  {
    v9 = &v79;
    goto LABEL_22;
  }

  if (HIBYTE(v79.__r_.__value_.__r.__words[2]) == 9)
  {
    v7 = v79.__r_.__value_.__r.__words[0] == 0x74696C6C65746153 && v79.__r_.__value_.__s.__data_[8] == 101;
LABEL_25:
    v12 = v7;
    if ((v12 | v80))
    {
      goto LABEL_29;
    }

    goto LABEL_30;
  }

LABEL_19:
  if (v80)
  {
LABEL_29:
    std::string::assign(&v78, "Satellite/GF/Partial SIM Message Errors");
  }

LABEL_30:
  memset(&v77, 0, sizeof(v77));
  memset(&v76, 0, sizeof(v76));
  memset(&v75, 0, sizeof(v75));
  memset(&v74, 0, sizeof(v74));
  memset(&__p, 0, sizeof(__p));
  memset(&v72, 0, sizeof(v72));
  sub_10000A448(v69);
  v13 = sub_1000C2128(a2, "send_duration");
  v81 = 0.0;
  sub_1000C43E0(v13, &v81, v14);
  if (v81 == 0.0)
  {
    v15 = "0secs";
  }

  else if (v81 <= 0.0 || v81 > 2.0)
  {
    if (v81 <= 2.0 || v81 > 10.0)
    {
      if (v81 <= 10.0)
      {
        goto LABEL_41;
      }

      v15 = ">10secs";
    }

    else
    {
      v15 = "2-10secs";
    }
  }

  else
  {
    v15 = "0-2secs";
  }

  std::string::assign(&v77, v15);
LABEL_41:
  v16 = sub_1000C2128(a2, "message_size");
  v82 = 0;
  sub_1000C3DC4(v16, &v82);
  if (!v82)
  {
    v17 = "0B";
    goto LABEL_51;
  }

  if (v82 < 0x3E9)
  {
    v17 = "1-1000B";
LABEL_51:
    std::string::assign(&v76, v17);
    goto LABEL_52;
  }

  if (v82 - 1001 < 0xF3E58)
  {
    v17 = "1-1000KB";
    goto LABEL_51;
  }

  if (v82 - 1000001 < 0x5E69EC0)
  {
    v17 = "1-100MB";
    goto LABEL_51;
  }

  if (v82 >= 100000001)
  {
    v17 = ">100MB";
    goto LABEL_51;
  }

LABEL_52:
  v18 = sub_1000C2128(a2, "primaryNetworkInterface");
  sub_1000C22F0(v18, &v60);
  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  v74 = v60;
  v19 = sub_1000C2128(a2, "error_cause");
  sub_1000C22F0(v19, &v60);
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  v75 = v60;
  v20 = sub_1000C2128(a2, "type");
  sub_1000C22F0(v20, &v60);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v60;
  v21 = sub_1000C2128(a2, "subtype");
  sub_1000C22F0(v21, &v60);
  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  v72 = v60;
  v22 = sub_100008EEC(v69, "duration:", 9);
  if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = &v77;
  }

  else
  {
    v23 = v77.__r_.__value_.__r.__words[0];
  }

  if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v77.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v77.__r_.__value_.__l.__size_;
  }

  v25 = sub_100008EEC(v22, v23, size);
  v26 = sub_100008EEC(v25, " size:", 6);
  if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v27 = &v76;
  }

  else
  {
    v27 = v76.__r_.__value_.__r.__words[0];
  }

  if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = HIBYTE(v76.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v28 = v76.__r_.__value_.__l.__size_;
  }

  v29 = sub_100008EEC(v26, v27, v28);
  v30 = sub_100008EEC(v29, " cause:", 7);
  if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v31 = &v75;
  }

  else
  {
    v31 = v75.__r_.__value_.__r.__words[0];
  }

  if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v32 = HIBYTE(v75.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v32 = v75.__r_.__value_.__l.__size_;
  }

  v33 = sub_100008EEC(v30, v31, v32);
  v34 = sub_100008EEC(v33, " type:", 6);
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
    v36 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v36 = __p.__r_.__value_.__l.__size_;
  }

  v37 = sub_100008EEC(v34, p_p, v36);
  v38 = sub_100008EEC(v37, " subtype:", 9);
  if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v39 = &v72;
  }

  else
  {
    v39 = v72.__r_.__value_.__r.__words[0];
  }

  if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v40 = HIBYTE(v72.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v40 = v72.__r_.__value_.__l.__size_;
  }

  v41 = sub_100008EEC(v38, v39, v40);
  v42 = sub_100008EEC(v41, " interface:", 11);
  if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v43 = &v74;
  }

  else
  {
    v43 = v74.__r_.__value_.__r.__words[0];
  }

  if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v44 = HIBYTE(v74.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v44 = v74.__r_.__value_.__l.__size_;
  }

  v45 = sub_100008EEC(v42, v43, v44);
  sub_100008EEC(v45, " partialSim:", 12);
  v46 = std::ostream::operator<<();
  v47 = sub_100008EEC(v46, " rat:", 5);
  if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v48 = &v79;
  }

  else
  {
    v48 = v79.__r_.__value_.__r.__words[0];
  }

  if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v49 = HIBYTE(v79.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v49 = v79.__r_.__value_.__l.__size_;
  }

  sub_100008EEC(v47, v48, v49);
  std::stringbuf::str();
  sub_100007ECC(&v60, "Telephony");
  sub_100007ECC(&v61, "Message Failures");
  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_10000FFF8(&v63, v78.__r_.__value_.__l.__data_, v78.__r_.__value_.__l.__size_);
  }

  else
  {
    v63 = v78;
  }

  if (SHIBYTE(v68) < 0)
  {
    sub_10000FFF8(&v64, v67[0], v67[1]);
  }

  else
  {
    v64 = *v67;
    v65 = v68;
  }

  v66 = 65537;
  v50 = *(qword_1002DBE98 + 112);
  if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 23) >= 0)
    {
      v51 = a1;
    }

    else
    {
      v51 = *a1;
    }

    *buf = 136315138;
    v84 = v51;
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "WISABC:#I Triggering ABC for event: %s", buf, 0xCu);
  }

  sub_1000C367C(v52, &v60);
  sub_1001075F8(v52);
  if (v59 < 0)
  {
    operator delete(v58);
  }

  if (v57 < 0)
  {
    operator delete(v56);
  }

  if (v55 < 0)
  {
    operator delete(v54);
  }

  if (v53 < 0)
  {
    operator delete(v52[0]);
  }

  if (SHIBYTE(v65) < 0)
  {
    operator delete(v64);
  }

  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  if (v62 < 0)
  {
    operator delete(v61);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v68) < 0)
  {
    operator delete(v67[0]);
  }

  if (v71 < 0)
  {
    operator delete(v70);
  }

  std::locale::~locale(&v69[0].__r_.__value_.__r.__words[2]);
  std::ostream::~ostream();
  std::ios::~ios();
  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v76.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v79.__r_.__value_.__l.__data_);
  }
}

void sub_1000C002C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  sub_100039C48(&a50);
  if (SLOBYTE(STACK[0x207]) < 0)
  {
    operator delete(a72);
  }

  if (SLOBYTE(STACK[0x227]) < 0)
  {
    operator delete(STACK[0x210]);
  }

  if (*(v72 - 233) < 0)
  {
    operator delete(*(v72 - 256));
  }

  if (*(v72 - 201) < 0)
  {
    operator delete(*(v72 - 224));
  }

  if (*(v72 - 177) < 0)
  {
    operator delete(*(v72 - 200));
  }

  if (*(v72 - 153) < 0)
  {
    operator delete(*(v72 - 176));
  }

  if (*(v72 - 129) < 0)
  {
    operator delete(*(v72 - 152));
  }

  if (*(v72 - 105) < 0)
  {
    operator delete(*(v72 - 128));
  }

  _Unwind_Resume(a1);
}

void sub_1000C0358(uint64_t *a1, uint64_t a2)
{
  sub_100007ECC(&v41, "null");
  v4 = sub_1000C2128(a2, "error_type");
  *v36 = 0;
  sub_1000C3DC4(v4, v36);
  v5 = *v36;
  switch(*v36)
  {
    case 0:
      v6 = "MISSING_SEQUENCE_NUMBER";
      goto LABEL_7;
    case 2:
      v6 = "ZERO_SAR_BUDGET";
      goto LABEL_7;
    case 3:
      v6 = "AR_BUFFER_ERROR";
LABEL_7:
      std::string::assign(&v41, v6);
      sub_100007ECC(&v40, "null");
      v7 = sub_1000C2128(a2, "budget_subsystem");
      v42 = 0;
      sub_1000C3DC4(v7, &v42);
      if (!v5)
      {
        std::string::assign(&v40, "CELLULAR");
      }

      v8 = sub_1000C2128(a2, "buffer_error_cause");
      v43 = 0;
      sub_1000C3DC4(v8, &v43);
      v9 = sub_1000C2128(a2, "missing_sn_count");
      v44 = 0;
      sub_1000C3DC4(v9, &v44);
      sub_10000A448(v36);
      v10 = sub_100008EEC(v36, "budget_subsystem:", 17);
      if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = &v40;
      }

      else
      {
        v11 = v40.__r_.__value_.__r.__words[0];
      }

      if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v40.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v40.__r_.__value_.__l.__size_;
      }

      v13 = sub_100008EEC(v10, v11, size);
      sub_100008EEC(v13, " buffer_error_cause:", 20);
      v14 = std::ostream::operator<<();
      sub_100008EEC(v14, " missing_sn_count:", 18);
      std::ostream::operator<<();
      std::stringbuf::str();
      sub_100007ECC(v26, "Telephony");
      sub_100007ECC(&v28, "HSAR Health Monitor");
      if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_10000FFF8(&v30, v41.__r_.__value_.__l.__data_, v41.__r_.__value_.__l.__size_);
      }

      else
      {
        v30 = v41;
      }

      if (SHIBYTE(v35) < 0)
      {
        sub_10000FFF8(&v31, v34[0], v34[1]);
      }

      else
      {
        v31 = *v34;
        v32 = v35;
      }

      v33 = 65537;
      v15 = *(qword_1002DBE98 + 112);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        if (*(a1 + 23) >= 0)
        {
          v16 = a1;
        }

        else
        {
          v16 = *a1;
        }

        *buf = 136315138;
        v46 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "WISABC:#I Triggering ABC for event: %s", buf, 0xCu);
      }

      sub_1000C367C(__dst, v26);
      sub_1001075F8(__dst);
      if (v25 < 0)
      {
        operator delete(__p);
      }

      if (v23 < 0)
      {
        operator delete(v22);
      }

      if (v21 < 0)
      {
        operator delete(v20);
      }

      if (v19 < 0)
      {
        operator delete(__dst[0]);
      }

      if (SHIBYTE(v32) < 0)
      {
        operator delete(v31);
      }

      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30.__r_.__value_.__l.__data_);
      }

      if (v29 < 0)
      {
        operator delete(v28);
      }

      if (v27 < 0)
      {
        operator delete(v26[0]);
      }

      if (SHIBYTE(v35) < 0)
      {
        operator delete(v34[0]);
      }

      if (v39 < 0)
      {
        operator delete(v38[7].__locale_);
      }

      std::locale::~locale(v38);
      std::ostream::~ostream();
      std::ios::~ios();
      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }

      goto LABEL_50;
  }

  v17 = *(qword_1002DBE98 + 112);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "WISABC:#I Invalid error_type for Event: com.apple.Telephony.hsarHealthMonitor and hence skipping rule", v36, 2u);
  }

LABEL_50:
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }
}

void sub_1000C082C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, char a51)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  sub_100039C48(&a51);
  if (*(v51 - 121) < 0)
  {
    operator delete(*(v51 - 144));
  }

  if (*(v51 - 97) < 0)
  {
    operator delete(*(v51 - 120));
  }

  _Unwind_Resume(a1);
}

void sub_1000C0994(uint64_t *a1, uint64_t a2)
{
  memset(&v39, 0, sizeof(v39));
  v4 = sub_1000C2128(a2, "reason");
  sub_1000C22F0(v4, v35);
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  v39 = v35[0];
  if (SHIBYTE(v35[0].__r_.__value_.__r.__words[2]) < 0)
  {
    if (v39.__r_.__value_.__l.__size_ == 8)
    {
      v5 = v39.__r_.__value_.__r.__words[0];
LABEL_8:
      if (v5->__r_.__value_.__r.__words[0] == 0x726F7272456F4E6BLL)
      {
        goto LABEL_53;
      }
    }
  }

  else if (SHIBYTE(v35[0].__r_.__value_.__r.__words[2]) == 8)
  {
    v5 = &v39;
    goto LABEL_8;
  }

  memset(&v38, 0, sizeof(v38));
  v6 = sub_1000C2128(a2, "service");
  sub_1000C22F0(v6, v35);
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  v38 = v35[0];
  sub_10000A448(v35);
  v7 = sub_100008EEC(v35, "reason: ", 8);
  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v39;
  }

  else
  {
    v8 = v39.__r_.__value_.__r.__words[0];
  }

  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v39.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v39.__r_.__value_.__l.__size_;
  }

  v10 = sub_100008EEC(v7, v8, size);
  v11 = sub_100008EEC(v10, " service: ", 10);
  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v38;
  }

  else
  {
    v12 = v38.__r_.__value_.__r.__words[0];
  }

  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v13 = v38.__r_.__value_.__l.__size_;
  }

  sub_100008EEC(v11, v12, v13);
  std::stringbuf::str();
  sub_100007ECC(v24, "Telephony");
  sub_100007ECC(&v26, "RCS");
  sub_100007ECC(&v28, "DNSResolution");
  if (SHIBYTE(v34) < 0)
  {
    sub_10000FFF8(&v30, v33[0], v33[1]);
  }

  else
  {
    v30 = *v33;
    v31 = v34;
  }

  v32 = 65537;
  v14 = *(qword_1002DBE98 + 112);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 23) >= 0)
    {
      v15 = a1;
    }

    else
    {
      v15 = *a1;
    }

    *buf = 136315138;
    v41 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "WISABC:#I Triggering ABC for event: %s", buf, 0xCu);
  }

  sub_1000C367C(v16, v24);
  sub_1001075F8(v16);
  if (v23 < 0)
  {
    operator delete(__p);
  }

  if (v21 < 0)
  {
    operator delete(v20);
  }

  if (v19 < 0)
  {
    operator delete(v18);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30);
  }

  if (v29 < 0)
  {
    operator delete(v28);
  }

  if (v27 < 0)
  {
    operator delete(v26);
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33[0]);
  }

  if (v37 < 0)
  {
    operator delete(v36);
  }

  std::locale::~locale(&v35[0].__r_.__value_.__r.__words[2]);
  std::ostream::~ostream();
  std::ios::~ios();
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

LABEL_53:
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }
}

void sub_1000C0DC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, char a50)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  sub_100039C48(&a50);
  if (*(v50 - 105) < 0)
  {
    operator delete(*(v50 - 128));
  }

  if (*(v50 - 73) < 0)
  {
    operator delete(*(v50 - 96));
  }

  _Unwind_Resume(a1);
}

void sub_1000C0EFC(uint64_t *a1, uint64_t a2)
{
  memset(&v44, 0, sizeof(v44));
  memset(&v43, 0, sizeof(v43));
  memset(&v42, 0, sizeof(v42));
  v4 = sub_1000C2128(a2, "port");
  v45 = 0;
  sub_1000C3DC4(v4, &v45);
  std::to_string(&v39, v45);
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  v44 = v39;
  v5 = sub_1000C2128(a2, "reason");
  sub_1000C22F0(v5, &v39);
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  v43 = v39;
  v6 = sub_1000C2128(a2, "primaryNetworkInterface");
  sub_1000C22F0(v6, &v39);
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  v42 = v39;
  sub_10000A448(&v39);
  v7 = sub_100008EEC(&v39, "port: ", 6);
  if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v44;
  }

  else
  {
    v8 = v44.__r_.__value_.__r.__words[0];
  }

  if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v44.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v44.__r_.__value_.__l.__size_;
  }

  v10 = sub_100008EEC(v7, v8, size);
  v11 = sub_100008EEC(v10, " reason: ", 9);
  if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v43;
  }

  else
  {
    v12 = v43.__r_.__value_.__r.__words[0];
  }

  if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = HIBYTE(v43.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v13 = v43.__r_.__value_.__l.__size_;
  }

  v14 = sub_100008EEC(v11, v12, v13);
  v15 = sub_100008EEC(v14, " primaryNetworkInterface: ", 26);
  if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v42;
  }

  else
  {
    v16 = v42.__r_.__value_.__r.__words[0];
  }

  if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(v42.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = v42.__r_.__value_.__l.__size_;
  }

  sub_100008EEC(v15, v16, v17);
  std::stringbuf::str();
  sub_100007ECC(v28, "Telephony");
  sub_100007ECC(&v30, "RCS");
  sub_100007ECC(&v32, "RCSServerTermination");
  if (SHIBYTE(v38) < 0)
  {
    sub_10000FFF8(&v34, v37[0], v37[1]);
  }

  else
  {
    v34 = *v37;
    v35 = v38;
  }

  v36 = 65537;
  v18 = *(qword_1002DBE98 + 112);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 23) >= 0)
    {
      v19 = a1;
    }

    else
    {
      v19 = *a1;
    }

    *buf = 136315138;
    v47 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "WISABC:#I Triggering ABC for event: %s", buf, 0xCu);
  }

  sub_1000C367C(v20, v28);
  sub_1001075F8(v20);
  if (v27 < 0)
  {
    operator delete(__p);
  }

  if (v25 < 0)
  {
    operator delete(v24);
  }

  if (v23 < 0)
  {
    operator delete(v22);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(v34);
  }

  if (v33 < 0)
  {
    operator delete(v32);
  }

  if (v31 < 0)
  {
    operator delete(v30);
  }

  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37[0]);
  }

  if (v41 < 0)
  {
    operator delete(v40);
  }

  std::locale::~locale(&v39.__r_.__value_.__r.__words[2]);
  std::ostream::~ostream();
  std::ios::~ios();
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }
}

void sub_1000C137C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, char a50)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  sub_100039C48(&a50);
  if (*(v50 - 153) < 0)
  {
    operator delete(*(v50 - 176));
  }

  if (*(v50 - 121) < 0)
  {
    operator delete(*(v50 - 144));
  }

  if (*(v50 - 89) < 0)
  {
    operator delete(*(v50 - 112));
  }

  _Unwind_Resume(a1);
}

void sub_1000C1510(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C2128(a2, "IsSuccess");
  LOBYTE(v64) = 0;
  sub_1000C4064(v4, &v64);
  if (v64 == 1)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 112), OS_LOG_TYPE_DEBUG))
    {
      sub_100206EF0(a1);
    }

    return;
  }

  sub_100007ECC(&v74, "CTMessage");
  sub_100007ECC(&v73, "null");
  sub_100007ECC(&v72, "null");
  sub_100007ECC(&v71, "null");
  sub_100007ECC(&v70, "null");
  sub_100007ECC(&v69, "null");
  sub_100007ECC(&v68, "null");
  sub_10000A448(&v64);
  v5 = sub_1000C2128(a2, "ErrorReason");
  sub_1000C22F0(v5, &v56);
  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  v71 = v56;
  v6 = sub_1000C2128(a2, "MessageSubtype");
  sub_1000C22F0(v6, &v56);
  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  v72 = v56;
  v7 = sub_1000C2128(a2, "IsChatbot");
  v75 = 0;
  sub_1000C4064(v7, &v75);
  if (v75)
  {
    v8 = "true";
  }

  else
  {
    v8 = "false";
  }

  std::string::assign(&v70, v8);
  v9 = sub_1000C2128(a2, "IsGroup");
  v76 = 0;
  sub_1000C4064(v9, &v76);
  if (v76)
  {
    v10 = "true";
  }

  else
  {
    v10 = "false";
  }

  std::string::assign(&v69, v10);
  v11 = sub_1000C2128(a2, "IsOutgoingMessage");
  v77 = 0;
  sub_1000C4064(v11, &v77);
  if (v77)
  {
    v12 = "true";
  }

  else
  {
    v12 = "false";
  }

  std::string::assign(&v68, v12);
  v13 = sub_1000C2128(a2, "isThirdParty");
  v78 = 0;
  sub_1000C4064(v13, &v78);
  if (v78 == 1)
  {
    std::string::assign(&v74, "ThirdPartyMessage");
  }

  v14 = sub_1000C2128(a2, "MessageType");
  sub_1000C22F0(v14, &v56);
  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  v73 = v56;
  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v73.__r_.__value_.__l.__size_ != 3)
    {
      goto LABEL_30;
    }

    v15 = v73.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) != 3)
    {
      goto LABEL_30;
    }

    v15 = &v73;
  }

  data_low = LOWORD(v15->__r_.__value_.__l.__data_);
  v17 = v15->__r_.__value_.__s.__data_[2];
  if (data_low == 17234 && v17 == 83)
  {
    v36 = sub_100008EEC(&v64, "ErrorReason:", 12);
    if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v37 = &v71;
    }

    else
    {
      v37 = v71.__r_.__value_.__r.__words[0];
    }

    if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v71.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v71.__r_.__value_.__l.__size_;
    }

    v39 = sub_100008EEC(v36, v37, size);
    v40 = sub_100008EEC(v39, " IsChatbot:", 11);
    if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v41 = &v70;
    }

    else
    {
      v41 = v70.__r_.__value_.__r.__words[0];
    }

    if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v42 = HIBYTE(v70.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v42 = v70.__r_.__value_.__l.__size_;
    }

    v43 = sub_100008EEC(v40, v41, v42);
    v44 = sub_100008EEC(v43, " IsGroup:", 9);
    if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v45 = &v69;
    }

    else
    {
      v45 = v69.__r_.__value_.__r.__words[0];
    }

    if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v46 = HIBYTE(v69.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v46 = v69.__r_.__value_.__l.__size_;
    }

    v47 = sub_100008EEC(v44, v45, v46);
    v27 = sub_100008EEC(v47, " IsOutgoingMessage:", 19);
    if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v28 = &v68;
    }

    else
    {
      v28 = v68.__r_.__value_.__r.__words[0];
    }

    if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = HIBYTE(v68.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v29 = v68.__r_.__value_.__l.__size_;
    }

    goto LABEL_48;
  }

LABEL_30:
  v19 = sub_100008EEC(&v64, "ErrorReason:", 12);
  if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v71;
  }

  else
  {
    v20 = v71.__r_.__value_.__r.__words[0];
  }

  if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = HIBYTE(v71.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = v71.__r_.__value_.__l.__size_;
  }

  v22 = sub_100008EEC(v19, v20, v21);
  v23 = sub_100008EEC(v22, " IsOutgoingMessage:", 19);
  if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = &v68;
  }

  else
  {
    v24 = v68.__r_.__value_.__r.__words[0];
  }

  if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = HIBYTE(v68.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v25 = v68.__r_.__value_.__l.__size_;
  }

  v26 = sub_100008EEC(v23, v24, v25);
  v27 = sub_100008EEC(v26, " IsGroup:", 9);
  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = &v69;
  }

  else
  {
    v28 = v69.__r_.__value_.__r.__words[0];
  }

  if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = HIBYTE(v69.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v29 = v69.__r_.__value_.__l.__size_;
  }

LABEL_48:
  v30 = sub_100008EEC(v27, v28, v29);
  v31 = sub_100008EEC(v30, " MessageSubtype:", 16);
  if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v32 = &v72;
  }

  else
  {
    v32 = v72.__r_.__value_.__r.__words[0];
  }

  if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v33 = HIBYTE(v72.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v33 = v72.__r_.__value_.__l.__size_;
  }

  sub_100008EEC(v31, v32, v33);
  std::stringbuf::str();
  sub_100007ECC(&v56, "Telephony");
  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_10000FFF8(&v57, v74.__r_.__value_.__l.__data_, v74.__r_.__value_.__l.__size_);
  }

  else
  {
    v57 = v74;
  }

  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_10000FFF8(&v58, v73.__r_.__value_.__l.__data_, v73.__r_.__value_.__l.__size_);
  }

  else
  {
    v58 = v73;
  }

  if (SHIBYTE(v63) < 0)
  {
    sub_10000FFF8(&v59, v62[0], v62[1]);
  }

  else
  {
    v59 = *v62;
    v60 = v63;
  }

  v61 = 65537;
  v34 = *(qword_1002DBE98 + 112);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 23) >= 0)
    {
      v35 = a1;
    }

    else
    {
      v35 = *a1;
    }

    *buf = 136315138;
    v80 = v35;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "WISABC:#I Triggering ABC for event: %s", buf, 0xCu);
  }

  sub_1000C367C(__dst, &v56);
  sub_1001075F8(__dst);
  if (v55 < 0)
  {
    operator delete(__p);
  }

  if (v53 < 0)
  {
    operator delete(v52);
  }

  if (v51 < 0)
  {
    operator delete(v50);
  }

  if (v49 < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v60) < 0)
  {
    operator delete(v59);
  }

  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v63) < 0)
  {
    operator delete(v62[0]);
  }

  if (v67 < 0)
  {
    operator delete(v66[7].__locale_);
  }

  std::locale::~locale(v66);
  std::ostream::~ostream();
  std::ios::~ios();
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v70.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }
}

void sub_1000C1CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  sub_100039C48(&a51);
  if (SLOBYTE(STACK[0x20F]) < 0)
  {
    operator delete(a72);
  }

  if (*(v72 - 233) < 0)
  {
    operator delete(*(v72 - 256));
  }

  if (*(v72 - 209) < 0)
  {
    operator delete(*(v72 - 232));
  }

  if (*(v72 - 185) < 0)
  {
    operator delete(*(v72 - 208));
  }

  if (*(v72 - 153) < 0)
  {
    operator delete(*(v72 - 176));
  }

  if (*(v72 - 121) < 0)
  {
    operator delete(*(v72 - 144));
  }

  if (*(v72 - 89) < 0)
  {
    operator delete(*(v72 - 112));
  }

  _Unwind_Resume(a1);
}

void sub_1000C1E24(void *a1, int a2)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    if (os_log_type_enabled(*(qword_1002DBE98 + 112), OS_LOG_TYPE_ERROR))
    {
      sub_1002063A4(v2);
    }

    __cxa_end_catch();
    JUMPOUT(0x1000C1A74);
  }

  JUMPOUT(0x1000C1D6CLL);
}

_BYTE *sub_1000C1F58@<X0>(unsigned int a1@<W0>, _BYTE *a2@<X8>)
{
  if (a1 > 3)
  {
    v2 = "Invalid";
  }

  else
  {
    v2 = off_1002AF520[a1];
  }

  return sub_100007ECC(a2, v2);
}

_BYTE *sub_1000C1F84@<X0>(unsigned int a1@<W0>, _BYTE *a2@<X8>)
{
  if (a1 > 7)
  {
    v2 = "Invalid";
  }

  else
  {
    v2 = off_1002AF540[a1];
  }

  return sub_100007ECC(a2, v2);
}

_BYTE *sub_1000C1FB0@<X0>(unsigned int a1@<W0>, _BYTE *a2@<X8>)
{
  if (a1 > 0x12)
  {
    v2 = "Invalid";
  }

  else
  {
    v2 = off_1002AF580[a1];
  }

  return sub_100007ECC(a2, v2);
}

_BYTE *sub_1000C1FDC@<X0>(unsigned int a1@<W0>, _BYTE *a2@<X8>)
{
  if (a1 > 5)
  {
    v2 = "Invalid";
  }

  else
  {
    v2 = off_1002AF618[a1];
  }

  return sub_100007ECC(a2, v2);
}

uint64_t sub_1000C2008@<X0>(char *__s@<X1>, const void **a2@<X0>, void **a3@<X8>)
{
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v7 = strlen(__s);
  result = sub_100013A6C(a3, v6 + v7);
  if (*(a3 + 23) < 0)
  {
    a3 = *a3;
  }

  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    result = memmove(a3, v9, v6);
  }

  v10 = a3 + v6;
  if (v7)
  {
    result = memmove(v10, __s, v7);
  }

  v10[v7] = 0;
  return result;
}

uint64_t sub_1000C20C4(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1000C2128(uint64_t a1, char *__s)
{
  if (!*a1)
  {
    *a1 = 1;
    operator new();
  }

  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v7 = sub_1000C3984(a1);
    sub_100007ECC(&v10, v7);
    v8 = std::string::insert(&v10, 0, "cannot use operator[] with a string argument with ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v12 = v8->__r_.__value_.__r.__words[2];
    *__p = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    sub_1000C3840(305, __p, exception);
  }

  v3 = *(a1 + 8);
  sub_100007ECC(__p, __s);
  v10.__r_.__value_.__r.__words[0] = __p;
  v4 = sub_1000C3CAC(v3, __p);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  return v4 + 56;
}

void sub_1000C2278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1000C22F0@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return sub_1000C3F24(a1, a2);
}

void sub_1000C2320(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000C233C(uint64_t *a1, uint64_t a2)
{
  memset(&v72, 0, sizeof(v72));
  memset(&v71, 0, sizeof(v71));
  v4 = sub_1000C2128(a2, "result");
  sub_1000C22F0(v4, v64);
  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  v72 = v64[0];
  v5 = sub_1000C2128(a2, "type");
  sub_1000C22F0(v5, v64);
  v71 = v64[0];
  v6 = sub_1000C2128(a2, "latency");
  v73 = 0;
  sub_1000C4280(v6, &v73);
  v7 = v73;
  if (v73 <= 10000)
  {
    if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v72.__r_.__value_.__l.__size_ != 19)
      {
        goto LABEL_104;
      }

      v35 = v72.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) != 19)
      {
        goto LABEL_104;
      }

      v35 = &v72;
    }

    v36 = v35->__r_.__value_.__r.__words[0];
    size = v35->__r_.__value_.__l.__size_;
    v38 = *(&v35->__r_.__value_.__r.__words[1] + 3);
    if (v36 == 0x4C4C41435F4D5441 && size == 0x5F7375746174535FLL && v38 == 0x3030325F73757461)
    {
      goto LABEL_125;
    }

LABEL_104:
    if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v71.__r_.__value_.__l.__size_ == 12 && *v71.__r_.__value_.__l.__data_ == 0x5F4745525F4D5441 && *(v71.__r_.__value_.__r.__words[0] + 8) == 1414090313)
      {
LABEL_130:
        v8 = 0;
        goto LABEL_5;
      }

      if (v71.__r_.__value_.__l.__size_ != 10)
      {
        goto LABEL_125;
      }

      v43 = v71.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (HIBYTE(v71.__r_.__value_.__r.__words[2]) != 10)
      {
        if (HIBYTE(v71.__r_.__value_.__r.__words[2]) != 12)
        {
          goto LABEL_125;
        }

        if (v71.__r_.__value_.__r.__words[0] != 0x5F4745525F4D5441 || LODWORD(v71.__r_.__value_.__r.__words[1]) != 1414090313)
        {
          goto LABEL_125;
        }

        goto LABEL_130;
      }

      v43 = &v71;
    }

    v44 = v43->__r_.__value_.__r.__words[0];
    v45 = LOWORD(v43->__r_.__value_.__r.__words[1]);
    if (v44 != 0x5F4745525F4D5441 || v45 != 17746)
    {
      goto LABEL_125;
    }

    goto LABEL_130;
  }

  v8 = 1;
LABEL_5:
  memset(&v70, 0, sizeof(v70));
  memset(&v69, 0, sizeof(v69));
  memset(&v68, 0, sizeof(v68));
  memset(&v67, 0, sizeof(v67));
  sub_10000A448(v64);
  v9 = sub_1000C2128(a2, "q_reason");
  sub_1000C22F0(v9, &v55);
  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v70.__r_.__value_.__l.__data_);
  }

  v70 = v55;
  v10 = sub_1000C2128(a2, "rereg_reason");
  sub_1000C22F0(v10, &v55);
  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  v69 = v55;
  v11 = sub_1000C2128(a2, "primaryNetworkInterface");
  sub_1000C22F0(v11, &v55);
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  v68 = v55;
  if (v8)
  {
    v12 = "10secs-1min";
    if (v7 > 60000)
    {
      v12 = "1min-5mins";
    }

    if (v7 <= 300000)
    {
      v13 = v12;
    }

    else
    {
      v13 = ">5mins";
    }

    std::string::assign(&v67, v13);
    v14 = sub_100008EEC(v64, "latency: ", 9);
    if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v67;
    }

    else
    {
      v15 = v67.__r_.__value_.__r.__words[0];
    }

    if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = HIBYTE(v67.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v16 = v67.__r_.__value_.__l.__size_;
    }

    v17 = sub_100008EEC(v14, v15, v16);
    v18 = sub_100008EEC(v17, " result: ", 9);
    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v72;
    }

    else
    {
      v19 = v72.__r_.__value_.__r.__words[0];
    }

    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = HIBYTE(v72.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v20 = v72.__r_.__value_.__l.__size_;
    }
  }

  else
  {
    v21 = sub_100008EEC(v64, "result: ", 8);
    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v72;
    }

    else
    {
      v22 = v72.__r_.__value_.__r.__words[0];
    }

    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = HIBYTE(v72.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v23 = v72.__r_.__value_.__l.__size_;
    }

    v24 = sub_100008EEC(v21, v22, v23);
    v25 = sub_100008EEC(v24, " q_reason: ", 11);
    if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &v70;
    }

    else
    {
      v26 = v70.__r_.__value_.__r.__words[0];
    }

    if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = HIBYTE(v70.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v27 = v70.__r_.__value_.__l.__size_;
    }

    v28 = sub_100008EEC(v25, v26, v27);
    v18 = sub_100008EEC(v28, " rereg_reason: ", 15);
    if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v69;
    }

    else
    {
      v19 = v69.__r_.__value_.__r.__words[0];
    }

    if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = HIBYTE(v69.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v20 = v69.__r_.__value_.__l.__size_;
    }
  }

  v29 = sub_100008EEC(v18, v19, v20);
  v30 = sub_100008EEC(v29, " primaryNetworkInterface: ", 26);
  if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v31 = &v68;
  }

  else
  {
    v31 = v68.__r_.__value_.__r.__words[0];
  }

  if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v32 = HIBYTE(v68.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v32 = v68.__r_.__value_.__l.__size_;
  }

  sub_100008EEC(v30, v31, v32);
  std::stringbuf::str();
  sub_100007ECC(&v55, "Telephony");
  sub_100007ECC(&v56, "RCS");
  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_10000FFF8(&v58, v71.__r_.__value_.__l.__data_, v71.__r_.__value_.__l.__size_);
  }

  else
  {
    v58 = v71;
  }

  if (SHIBYTE(v63) < 0)
  {
    sub_10000FFF8(&v59, v62[0], v62[1]);
  }

  else
  {
    v59 = *v62;
    v60 = v63;
  }

  v61 = 65537;
  v33 = *(qword_1002DBE98 + 112);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 23) >= 0)
    {
      v34 = a1;
    }

    else
    {
      v34 = *a1;
    }

    *buf = 136315138;
    v75 = v34;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "WISABC:#I Triggering ABC for event: %s", buf, 0xCu);
  }

  sub_1000C367C(__dst, &v55);
  sub_1001075F8(__dst);
  if (v54 < 0)
  {
    operator delete(__p);
  }

  if (v52 < 0)
  {
    operator delete(v51);
  }

  if (v50 < 0)
  {
    operator delete(v49);
  }

  if (v48 < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v60) < 0)
  {
    operator delete(v59);
  }

  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  if (v57 < 0)
  {
    operator delete(v56);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v63) < 0)
  {
    operator delete(v62[0]);
  }

  if (v66 < 0)
  {
    operator delete(v65);
  }

  std::locale::~locale(&v64[0].__r_.__value_.__r.__words[2]);
  std::ostream::~ostream();
  std::ios::~ios();
  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v70.__r_.__value_.__l.__data_);
  }

LABEL_125:
  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }
}

void sub_1000C2D18(uint64_t *a1, uint64_t a2)
{
  memset(&v63, 0, sizeof(v63));
  memset(&v62, 0, sizeof(v62));
  v4 = sub_1000C2128(a2, "result");
  sub_1000C22F0(v4, v58);
  v5 = v58[0].__r_.__value_.__r.__words[0];
  v6 = HIBYTE(v58[0].__r_.__value_.__r.__words[2]);
  v7 = sub_1000C2128(a2, "type");
  sub_1000C22F0(v7, v58);
  v63 = v58[0];
  v8 = sub_1000C2128(a2, "rat_info");
  sub_1000C22F0(v8, v58);
  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  v62 = v58[0];
  v9 = sub_1000C2128(a2, "primaryNetworkInterface");
  sub_1000C22F0(v9, v58);
  v10 = v58[0].__r_.__value_.__r.__words[0];
  v11 = SHIBYTE(v58[0].__r_.__value_.__r.__words[2]);
  if ((*(&v63.__r_.__value_.__s + 23) & 0x80) == 0)
  {
    if (HIBYTE(v63.__r_.__value_.__r.__words[2]) != 10)
    {
      if (HIBYTE(v63.__r_.__value_.__r.__words[2]) == 12)
      {
        if (v63.__r_.__value_.__r.__words[0] != 0x5F4745525F4D5441 || LODWORD(v63.__r_.__value_.__r.__words[1]) != 1414090313)
        {
          goto LABEL_102;
        }
      }

      else
      {
        if (HIBYTE(v63.__r_.__value_.__r.__words[2]) != 20)
        {
          goto LABEL_102;
        }

        v12 = v63.__r_.__value_.__r.__words[0] == 0x5F4745525F4D5441 && v63.__r_.__value_.__l.__size_ == 0x4752454D455F4552;
        if (!v12 || LODWORD(v63.__r_.__value_.__r.__words[2]) != 1497583173)
        {
          goto LABEL_102;
        }
      }

      goto LABEL_43;
    }

    v17 = &v63;
LABEL_38:
    v19 = v17->__r_.__value_.__r.__words[0];
    v20 = LOWORD(v17->__r_.__value_.__r.__words[1]);
    if (v19 != 0x5F4745525F4D5441 || v20 != 17746)
    {
      goto LABEL_102;
    }

    goto LABEL_43;
  }

  if (v63.__r_.__value_.__l.__size_ != 12 || (*v63.__r_.__value_.__l.__data_ == 0x5F4745525F4D5441 ? (v14 = *(v63.__r_.__value_.__r.__words[0] + 8) == 1414090313) : (v14 = 0), !v14))
  {
    if (v63.__r_.__value_.__l.__size_ != 20 || (*v63.__r_.__value_.__l.__data_ == 0x5F4745525F4D5441 ? (v15 = *(v63.__r_.__value_.__r.__words[0] + 8) == 0x4752454D455F4552) : (v15 = 0), v15 ? (v16 = *(v63.__r_.__value_.__r.__words[0] + 16) == 1497583173) : (v16 = 0), !v16))
    {
      if (v63.__r_.__value_.__l.__size_ != 10)
      {
        goto LABEL_102;
      }

      v17 = v63.__r_.__value_.__r.__words[0];
      goto LABEL_38;
    }
  }

LABEL_43:
  if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v62;
  }

  else
  {
    v22 = v62.__r_.__value_.__r.__words[0];
  }

  if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(v62.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v62.__r_.__value_.__l.__size_;
  }

  if (size >= 4)
  {
    v24 = v22 + size;
    v25 = size;
    v26 = v22;
    do
    {
      v27 = memchr(v26, 73, v25 - 3);
      if (!v27)
      {
        break;
      }

      if (*v27 == 1162167625)
      {
        if (v27 != v24 && v27 - v22 != -1)
        {
LABEL_64:
          memset(&v61, 0, sizeof(v61));
          sub_10000A448(v58);
          v30 = sub_1000C2128(a2, "cellularRadioTech");
          sub_1000C22F0(v30, &v48);
          if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v61.__r_.__value_.__l.__data_);
          }

          v61 = v48;
          v31 = sub_1000C2128(a2, "mcc");
          v64 = 0;
          sub_1000C3DC4(v31, &v64);
          v32 = sub_1000C2128(a2, "mnc");
          v65 = 0;
          sub_1000C3DC4(v32, &v65);
          sub_100008EEC(v58, "mcc: ", 5);
          v33 = std::ostream::operator<<();
          sub_100008EEC(v33, " mnc: ", 6);
          v34 = std::ostream::operator<<();
          v35 = sub_100008EEC(v34, " rat: ", 6);
          if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v36 = &v61;
          }

          else
          {
            v36 = v61.__r_.__value_.__r.__words[0];
          }

          if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v37 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v37 = v61.__r_.__value_.__l.__size_;
          }

          sub_100008EEC(v35, v36, v37);
          std::stringbuf::str();
          sub_100007ECC(&v48, "Telephony");
          sub_100007ECC(&v49, "NTN");
          sub_100007ECC(&v51, "IMS_REG_GF");
          if (SHIBYTE(v57) < 0)
          {
            sub_10000FFF8(&v53, v56[0], v56[1]);
          }

          else
          {
            v53 = *v56;
            v54 = v57;
          }

          v55 = 65537;
          v38 = *(qword_1002DBE98 + 112);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
          {
            if (*(a1 + 23) >= 0)
            {
              v39 = a1;
            }

            else
            {
              v39 = *a1;
            }

            *buf = 136315138;
            v67 = v39;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "WISABC:#I Triggering ABC for event: %s", buf, 0xCu);
          }

          sub_1000C367C(v40, &v48);
          sub_1001075F8(v40);
          if (v47 < 0)
          {
            operator delete(__p);
          }

          if (v45 < 0)
          {
            operator delete(v44);
          }

          if (v43 < 0)
          {
            operator delete(v42);
          }

          if (v41 < 0)
          {
            operator delete(v40[0]);
          }

          if (SHIBYTE(v54) < 0)
          {
            operator delete(v53);
          }

          if (v52 < 0)
          {
            operator delete(v51);
          }

          if (v50 < 0)
          {
            operator delete(v49);
          }

          if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v48.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v57) < 0)
          {
            operator delete(v56[0]);
          }

          if (v60 < 0)
          {
            operator delete(v59);
          }

          std::locale::~locale(&v58[0].__r_.__value_.__r.__words[2]);
          std::ostream::~ostream();
          std::ios::~ios();
          if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v61.__r_.__value_.__l.__data_);
          }

          goto LABEL_102;
        }

        break;
      }

      v26 = (v27 + 1);
      v25 = v24 - v26;
    }

    while (v24 - v26 >= 4);
    v28 = v22;
    do
    {
      v29 = memchr(v28, 51, size - 3);
      if (!v29)
      {
        break;
      }

      if (*v29 == 1347438387)
      {
        if (v29 == v24 || v29 - v22 == -1)
        {
          break;
        }

        goto LABEL_64;
      }

      v28 = (v29 + 1);
      size = v24 - v28;
    }

    while (v24 - v28 >= 4);
  }

LABEL_102:
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  if ((SHIBYTE(v63.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v6 & 0x80) == 0)
    {
      return;
    }

LABEL_110:
    operator delete(v5);
    return;
  }

  operator delete(v63.__r_.__value_.__l.__data_);
  if (v6 < 0)
  {
    goto LABEL_110;
  }
}

void sub_1000C342C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, char a50)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  sub_100039C48(&a50);
  if (*(v54 - 201) < 0)
  {
    operator delete(*(v54 - 224));
  }

  if (v53 < 0)
  {
    operator delete(v51);
  }

  if (*(v54 - 169) < 0)
  {
    operator delete(*(v54 - 192));
  }

  if (*(v54 - 137) < 0)
  {
    operator delete(*(v54 - 160));
  }

  if (v52 < 0)
  {
    operator delete(v50);
  }

  _Unwind_Resume(a1);
}

void sub_1000C35B0(void *a1, int a2)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    if (os_log_type_enabled(*(qword_1002DBE98 + 112), OS_LOG_TYPE_ERROR))
    {
      sub_1002063A4(v2);
    }

    __cxa_end_catch();
    JUMPOUT(0x1000C33BCLL);
  }

  JUMPOUT(0x1000C357CLL);
}

uint64_t sub_1000C3638(uint64_t a1)
{
  xpc_release(*(a1 + 24));
  *(a1 + 24) = 0;
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

char *sub_1000C367C(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_10000FFF8(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_10000FFF8(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  if (*(a2 + 71) < 0)
  {
    sub_10000FFF8(__dst + 48, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(__dst + 8) = *(a2 + 8);
    *(__dst + 3) = v6;
  }

  if (*(a2 + 95) < 0)
  {
    sub_10000FFF8(__dst + 72, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    *(__dst + 11) = *(a2 + 11);
    *(__dst + 72) = v7;
  }

  *(__dst + 24) = *(a2 + 24);
  return __dst;
}

void sub_1000C374C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000C37B0(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1000C380C(exception, a1);
}

std::logic_error *sub_1000C380C(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_1000C3840(int a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_100007ECC(&__p, "type_error");
  sub_1000C3A00(a1, &v14);
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  v9 = std::string::append(&v14, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v16 = v9->__r_.__value_.__r.__words[2];
  *v15 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (v13 < 0)
  {
    operator delete(__p);
  }

  if (v16 >= 0)
  {
    v11 = v15;
  }

  else
  {
    v11 = v15[0];
  }

  sub_1000C3B84(a3, a1, v11);
  *a3 = off_1002AF508;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_1000C393C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const char *sub_1000C3984(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 > 9)
  {
    return "number";
  }

  else
  {
    return off_1002AF648[v1];
  }
}

void sub_1000C39AC(std::runtime_error *a1)
{
  a1->__vftable = off_1002AF4E0;
  std::runtime_error::~runtime_error(a1 + 1);

  std::exception::~exception(a1);
}

void sub_1000C3A00(int a1@<W1>, std::string *a2@<X8>)
{
  std::operator+<char>();
  v4 = std::string::append(&v12, ".");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v13.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v13.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, a1);
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

  v8 = std::string::append(&v13, p_p, size);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v14, "] ");
  *a2 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void sub_1000C3B20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v26 - 41) < 0)
  {
    operator delete(*(v26 - 64));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000C3B84(uint64_t a1, int a2, char *a3)
{
  *a1 = off_1002AF4E0;
  *(a1 + 8) = a2;
  std::runtime_error::runtime_error((a1 + 16), a3);
  return a1;
}

void sub_1000C3BF0(std::runtime_error *a1)
{
  a1->__vftable = off_1002AF4E0;
  std::runtime_error::~runtime_error(a1 + 1);

  std::exception::~exception(a1);
}

void sub_1000C3C44(std::runtime_error *a1)
{
  a1->__vftable = off_1002AF4E0;
  std::runtime_error::~runtime_error(a1 + 1);
  std::exception::~exception(a1);

  operator delete();
}

uint64_t sub_1000C3CAC(uint64_t a1, const void **a2)
{
  v2 = *sub_100068404(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_1000C3D5C(std::runtime_error *a1)
{
  a1->__vftable = off_1002AF4E0;
  std::runtime_error::~runtime_error(a1 + 1);
  std::exception::~exception(a1);

  operator delete();
}

unsigned __int8 *sub_1000C3DC4(unsigned __int8 *result, int *a2)
{
  v2 = result;
  v3 = *result;
  if (v3 > 5)
  {
    if (v3 == 7)
    {
      v4 = *(result + 1);
      goto LABEL_10;
    }

    if (v3 == 6)
    {
      goto LABEL_4;
    }

LABEL_7:
    exception = __cxa_allocate_exception(0x20uLL);
    v6 = sub_1000C3984(v2);
    sub_100007ECC(&v9, v6);
    v7 = std::string::insert(&v9, 0, "type must be number, but is ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v11 = v7->__r_.__value_.__r.__words[2];
    v10 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    sub_1000C3840(302, &v10, exception);
  }

  if (v3 == 4)
  {
    v4 = result[8];
    goto LABEL_10;
  }

  if (v3 != 5)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = *(result + 2);
LABEL_10:
  *a2 = v4;
  return result;
}

void sub_1000C3EC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

std::string *sub_1000C3F24(uint64_t a1, std::string *this)
{
  if (*a1 != 3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v8 = sub_1000C3984(a1);
    sub_100007ECC(&v11, v8);
    v9 = std::string::insert(&v11, 0, "type must be string, but is ");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v13 = v9->__r_.__value_.__r.__words[2];
    v12 = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    sub_1000C3840(302, &v12, exception);
  }

  v3 = *(a1 + 8);
  v5 = *(a1 + 8);

  return std::string::operator=(this, v5);
}

void sub_1000C4004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

unsigned __int8 *sub_1000C4064(unsigned __int8 *result, _BYTE *a2)
{
  v2 = result;
  if (*result != 4)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v4 = sub_1000C3984(v2);
    sub_100007ECC(&v7, v4);
    v5 = std::string::insert(&v7, 0, "type must be BOOLean, but is ");
    v6 = *&v5->__r_.__value_.__l.__data_;
    v9 = v5->__r_.__value_.__r.__words[2];
    v8 = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    sub_1000C3840(302, &v8, exception);
  }

  *a2 = result[8];
  return result;
}

void sub_1000C4130(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t sub_1000C4190(uint64_t a1, const void **a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 24 * a3;
    do
    {
      sub_100065624(a1, a2);
      a2 += 3;
      v5 -= 24;
    }

    while (v5);
  }

  return a1;
}

uint64_t sub_1000C420C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100050C48(result, a4);
  }

  return result;
}

void sub_1000C4264(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *sub_1000C4280(unsigned __int8 *result, uint64_t *a2)
{
  v2 = result;
  v3 = *result;
  if (v3 > 5)
  {
    if (v3 == 7)
    {
      v4 = *(result + 1);
      goto LABEL_10;
    }

    if (v3 == 6)
    {
      goto LABEL_4;
    }

LABEL_7:
    exception = __cxa_allocate_exception(0x20uLL);
    v6 = sub_1000C3984(v2);
    sub_100007ECC(&v9, v6);
    v7 = std::string::insert(&v9, 0, "type must be number, but is ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v11 = v7->__r_.__value_.__r.__words[2];
    v10 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    sub_1000C3840(302, &v10, exception);
  }

  if (v3 == 4)
  {
    v4 = result[8];
    goto LABEL_10;
  }

  if (v3 != 5)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = *(result + 1);
LABEL_10:
  *a2 = v4;
  return result;
}

void sub_1000C4380(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

unsigned __int8 *sub_1000C43E0(unsigned __int8 *result, float *a2, float a3)
{
  v3 = result;
  v4 = *result;
  if (v4 > 5)
  {
    if (v4 == 7)
    {
      v5 = *(result + 1);
      goto LABEL_10;
    }

    if (v4 == 6)
    {
      v5 = *(result + 1);
      goto LABEL_10;
    }

LABEL_11:
    exception = __cxa_allocate_exception(0x20uLL);
    v7 = sub_1000C3984(v3);
    sub_100007ECC(&v10, v7);
    v8 = std::string::insert(&v10, 0, "type must be number, but is ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v12 = v8->__r_.__value_.__r.__words[2];
    v11 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    sub_1000C3840(302, &v11, exception);
  }

  if (v4 == 4)
  {
    LOBYTE(a3) = result[8];
    v5 = LODWORD(a3);
    goto LABEL_10;
  }

  if (v4 != 5)
  {
    goto LABEL_11;
  }

  v5 = *(result + 1);
LABEL_10:
  *a2 = v5;
  return result;
}

void sub_1000C44F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t *sub_1000C4554@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  if (*(result + 23) < 0)
  {
    v3 = *result;
  }

  return result;
}

void sub_1000C456C()
{
  if (*(v0 + 23) < 0)
  {
    v1 = *v0;
  }
}

BOOL sub_1000C45B8@<W0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 112);

  return os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
}

void sub_1000C45E0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void sub_1000C4600()
{
  qword_1002D8550 = "com.apple.Baseband.cellularSIValidationFailure";
  *algn_1002D8558 = "com.apple.Baseband.cellularNrDlPdcpStats";
  qword_1002D8560 = "com.apple.Baseband.cellularNrUlPdcpStats";
  unk_1002D8568 = "com.apple.Telephony.hsarHealthMonitor";
  qword_1002D8570 = "com.apple.Baseband.cellularMobilityPerfInfo";
  unk_1002D8578 = "com.apple.Baseband.cellularNrScgRemoval";
  qword_1002D8580 = "com.apple.Baseband.cellularSftLlcReg";
  qword_1002D8470 = "com.apple.AVConference.IMSCallSummaryStats";
  *algn_1002D8478 = "com.apple.AVConference.IMSCallAudioFrameStats";
  qword_1002D8480 = "com.apple.AVConference.IMSCallAudioDistortionSummary";
  unk_1002D8488 = "com.apple.Telephony.RCSMessageProvisionRegistration";
  qword_1002D8490 = "com.apple.Telephony.RCSMessageSendReceive";
  unk_1002D8498 = "com.apple.Telephony.RCSMessageProvisioning";
  qword_1002D84A0 = "com.apple.Telephony.RCSMessageSessionSetup";
  unk_1002D84A8 = "com.apple.Telephony.RCSPagerMessageSendReceive";
  qword_1002D84B0 = "com.apple.Telephony.RCSMSRPMessageSendReceive";
  unk_1002D84B8 = "com.apple.Telephony.RCSMessageSIPOptions";
  qword_1002D84C0 = "com.apple.Telephony.RCSSIPRefer";
  unk_1002D84C8 = "com.apple.Telephony.RCSMessageSessionEnd";
  qword_1002D84D0 = "com.apple.Telephony.metricCCStwCPSummary";
  unk_1002D84D8 = "com.apple.Telephony.metricCCStwRequest";
  qword_1002D84E0 = "com.apple.Telephony.metricCCStwMessageOutgoing";
  unk_1002D84E8 = "com.apple.telephony.metricCCStwMessageIncoming";
  qword_1002D84F0 = "com.apple.IDS.QualifiedContacts";
  unk_1002D84F8 = "com.apple.Messages.IMMetricsCollectorEventSMSSentMessageSingleComponent";
  qword_1002D8500 = "com.apple.Messages.IMMetricsCollectorEventIMessageSentMessageSingleComponent";
  unk_1002D8508 = "com.apple.IDS.OffTheGridMode";
  qword_1002D8510 = "com.apple.Telephony.atm_Registration_Result";
  unk_1002D8518 = "com.apple.setupassistant.ios.activation";
  qword_1002D8520 = "com.apple.Messages.IMMetricsCollectorEventSentMessage";
  unk_1002D8528 = "com.apple.Telephony.DNSResolution";
  qword_1002D8530 = "com.apple.Telephony.RCSServerTermination";
  unk_1002D8538 = "com.apple.Telephony.UnifiedCTMessage";
  qword_1002D8540 = "com.apple.Baseband.cellularRrcConnEvent";
  unk_1002D8548 = "com.apple.Baseband.cellularDataStallMitigation";
}

uint64_t sub_1000C4B00(uint64_t a1)
{
  v24 = 0u;
  v25 = 0u;
  v26 = 1065353216;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 8);
    v4 = v3 + 8 * v2;
    do
    {
      v5 = *(*v3 + 16);
      if (v5)
      {
        v6 = *(*v3 + 8);
        v7 = 8 * v5;
        do
        {
          *buf = *(*v6 + 68);
          sub_1000C4E24(&v24, buf);
          v6 += 8;
          v7 -= 8;
        }

        while (v7);
      }

      v3 += 8;
    }

    while (v3 != v4);
  }

  v8 = *(a1 + 72);
  v9 = *(a1 + 80);
  if (v9)
  {
    for (i = 8 * v9; i; i -= 8)
    {
      v11 = *v8;
      *buf = *(*v8 + 8);
      sub_1000C5054(&v24, buf);
      v12 = *(v11 + 36);
      if ((v12 & 2) == 0)
      {
        *(v11 + 36) = v12 | 2;
        *(v11 + 12) = 1;
        v13 = *(v11 + 8);
        if (v13 < 0x100)
        {
          v14 = 0;
LABEL_14:
          *(v11 + 36) = v12 | 0xA;
          *(v11 + 20) = v14;
          goto LABEL_15;
        }

        if (v13 <= 0x1FF)
        {
          v14 = 1;
          goto LABEL_14;
        }
      }

LABEL_15:
      ++v8;
    }
  }

  if (*(&v25 + 1))
  {
    for (j = v25; j; j = *j)
    {
      v16 = *(j + 4);
      v17 = *(qword_1002DBE98 + 104);
      if (v16)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v28 = v16;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "config:#E MetricFile config for file#%d was missing from device config; dropping it.", buf, 8u);
        }
      }

      else
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          v28 = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "config:#I MetricFile config for file#%d was missing; we grandfather this one in as a 'primary' file.", buf, 8u);
        }

        v18 = *(a1 + 84);
        v19 = *(a1 + 80);
        if (v19 >= v18)
        {
          if (v18 == *(a1 + 88))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72), v18 + 1);
            v18 = *(a1 + 84);
          }

          *(a1 + 84) = v18 + 1;
          sub_1000C4DC0();
        }

        v20 = *(a1 + 72);
        *(a1 + 80) = v19 + 1;
        v21 = *(v20 + 8 * v19);
        v22 = *(v21 + 36);
        *(v21 + 8) = *(j + 4);
        *(v21 + 12) = 1;
        *(v21 + 36) = v22 | 0xB;
        *(v21 + 20) = 0;
      }
    }
  }

  return sub_10003678C(&v24);
}

void sub_1000C4DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10003678C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1000C4E24(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t *sub_1000C5054(void *a1, unsigned int *a2)
{
  result = sub_10006620C(a1, a2);
  if (result)
  {
    sub_1000C508C(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_1000C508C(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_100064FBC(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *sub_1000C50D0(void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a1 + 1;
  v3 = a2[1];
  a1[3] = *a2;
  a1[4] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  ctu::OsLogLogger::OsLogLogger((a1 + 5), "com.apple.wis.wirelessinsightsd", "cond");
  return a1;
}

void sub_1000C5138(_Unwind_Exception *a1)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    sub_100008350(v3);
  }

  sub_1000C6148(v1, *(v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_1000C515C(uint64_t a1)
{
  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_100008350(v2);
  }

  sub_1000C6148(a1, *(a1 + 8));
  return a1;
}

void sub_1000C5300(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 104);
  if (v2)
  {
    v4 = *(a2 + 96);
    v5 = 8 * v2;
    while (1)
    {
      v6 = *v4;
      if (*(*v4 + 68))
      {
        break;
      }

      v7 = *(a1 + 40);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        v8 = v7;
        v9 = "cond:#E TriggerConditionMap: skip trigger spec (no trigger id)";
LABEL_10:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, v12, 2u);
      }

LABEL_11:
      ++v4;
      v5 -= 8;
      if (!v5)
      {
        return;
      }
    }

    if (*(v6 + 20))
    {
      v10 = *(v6 + 16);
      v15 = *(v6 + 20);
      sub_1000C54B8(v6 + 32, &v14);
      *v12 = v10;
      v13 = v14;
      sub_1000C61CC();
    }

    v11 = *(a1 + 40);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    *v12 = 0;
    v8 = v11;
    v9 = "cond:#E TriggerConditionMap: skip trigger spec (no source trigger id)";
    goto LABEL_10;
  }
}

void sub_1000C5450(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_100206F64(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000C546C(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_1000C515C(result);

    operator delete();
  }

  return result;
}

uint64_t sub_1000C54B8@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 8);
  if (v3)
  {
    __src[0] = 0;
    __src[1] = 0;
    v4 = 8 * v3;
    v18 = 0;
    for (i = *result; ; ++i)
    {
      sub_1000C5BC0(*i, &v20);
      v6 = v20;
      if (v20)
      {
        v7 = __src[1];
        if (__src[1] >= v18)
        {
          v9 = __src[0];
          v10 = __src[1] - __src[0];
          v11 = (__src[1] - __src[0]) >> 3;
          v12 = v11 + 1;
          if ((v11 + 1) >> 61)
          {
            sub_100033FD0();
          }

          v13 = v18 - __src[0];
          if ((v18 - __src[0]) >> 2 > v12)
          {
            v12 = v13 >> 2;
          }

          if (v13 >= 0x7FFFFFFFFFFFFFF8)
          {
            v14 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v14 = v12;
          }

          v19[4] = __src;
          if (v14)
          {
            sub_1000C63BC(__src, v14);
          }

          v20 = 0;
          *(8 * v11) = v6;
          v8 = (8 * v11 + 8);
          memcpy(0, v9, v10);
          v15 = __src[0];
          v16 = v18;
          __src[0] = 0;
          __src[1] = v8;
          v18 = 0;
          v19[2] = v15;
          v19[3] = v16;
          v19[0] = v15;
          v19[1] = v15;
          sub_1000C6404(v19);
        }

        else
        {
          *__src[1] = v20;
          v8 = v7 + 8;
        }

        __src[1] = v8;
      }

      v4 -= 8;
      if (!v4)
      {
        operator new();
      }
    }
  }

  *a2 = 0;
  return result;
}

void sub_1000C5668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18)
{
  a18 = &a9;
  sub_1000C6088(&a18);
  _Unwind_Resume(a1);
}

void sub_1000C56BC(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, const void **a4@<X8>)
{
  v33 = a2;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  v7 = sub_100018D8C(a1, &v33);
  v9 = v8;
  if (v7 == v8)
  {
    v10 = *(a1 + 40);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      return;
    }

    *buf = 67109120;
    LODWORD(v35) = v33;
    v11 = "cond:#I TriggerConditionMap has no conditions for trigger 0x%x";
    v12 = v10;
    v13 = 8;
    goto LABEL_28;
  }

  sub_100068C0C(&v32, a3);
  v14 = 0;
  do
  {
    v15 = *(v7 + 10);
    v16 = v7[6];
    if (!v16 || (*(*v16 + 16))(v16, a1 + 24, &v32))
    {
      v18 = a4[1];
      v17 = a4[2];
      if (v18 >= v17)
      {
        v20 = *a4;
        v21 = v18 - *a4;
        v22 = v21 >> 2;
        v23 = (v21 >> 2) + 1;
        if (v23 >> 62)
        {
          sub_100033FD0();
        }

        v24 = v17 - v20;
        if (v24 >> 1 > v23)
        {
          v23 = v24 >> 1;
        }

        if (v24 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v25 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v25 = v23;
        }

        if (v25)
        {
          sub_10000A8C0(a4, v25);
        }

        *(4 * v22) = v15;
        v19 = 4 * v22 + 4;
        memcpy(0, v20, v21);
        v26 = *a4;
        *a4 = 0;
        a4[1] = v19;
        a4[2] = 0;
        if (v26)
        {
          operator delete(v26);
        }
      }

      else
      {
        *v18 = v15;
        v19 = (v18 + 4);
      }

      a4[1] = v19;
    }

    v27 = v7[1];
    if (v27)
    {
      do
      {
        v28 = v27;
        v27 = *v27;
      }

      while (v27);
    }

    else
    {
      do
      {
        v28 = v7[2];
        v29 = *v28 == v7;
        v7 = v28;
      }

      while (!v29);
    }

    ++v14;
    v7 = v28;
  }

  while (v28 != v9);
  v30 = *(a1 + 40);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    v31 = (a4[1] - *a4) >> 2;
    *buf = 134218496;
    v35 = v14;
    v36 = 2048;
    v37 = v31;
    v38 = 1024;
    v39 = v33;
    v11 = "cond:#I TriggerConditionMap evaluated %zd rules: %zd passed for trigger 0x%x";
    v12 = v30;
    v13 = 28;
LABEL_28:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, v11, buf, v13);
  }
}