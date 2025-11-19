uint64_t DALTrace::setPropFileSize_sync(uint64_t a1, dispatch_object_t *a2, char *a3, const std::string *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v7);
  }

  v22 = 0;
  util::convert<int>(a4, &v22, 0);
  v8 = *(a1 + 108);
  if (v8)
  {
    v9 = v22 / 0x100000;
    if (!v22 || v8 < v9)
    {
      v14 = *(a1 + 40);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        LODWORD(__p.__r_.__value_.__l.__data_) = 67109376;
        HIDWORD(__p.__r_.__value_.__r.__words[0]) = v9;
        LOWORD(__p.__r_.__value_.__r.__words[1]) = 1024;
        *(&__p.__r_.__value_.__r.__words[1] + 2) = v8;
        _os_log_error_impl(&dword_23C1C4000, v14, OS_LOG_TYPE_ERROR, "Invalid input trace file size - %d MB (for history %d MB)", &__p, 0xEu);
        v10 = 0;
        if (!v7)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }

LABEL_20:
      v10 = 0;
      if (!v7)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }
  }

  if ((prop::bbtrace::set(a3, a4) & 1) == 0)
  {
    v13 = *(a1 + 40);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_23C1C4000, v13, OS_LOG_TYPE_ERROR, "Failed to set file size property!", &__p, 2u);
      v10 = 0;
      if (!v7)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }

    goto LABEL_20;
  }

  v21 = 0;
  memset(&__p, 0, sizeof(__p));
  if (prop::bbtrace::get(a3, &__p))
  {
    LODWORD(v10) = util::convert<unsigned int>(&__p, &v21, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    LODWORD(v10) = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_9:
      operator delete(__p.__r_.__value_.__l.__data_);
      v11 = v21;
      if (v21)
      {
        v10 = v10;
      }

      else
      {
        v10 = 0;
      }

      if ((v10 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_27;
    }
  }

  v11 = v21;
  if (v21)
  {
    v10 = v10;
  }

  else
  {
    v10 = 0;
  }

  if ((v10 & 1) == 0)
  {
LABEL_13:
    v12 = *(a1 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_23C1C4000, v12, OS_LOG_TYPE_ERROR, "Failed to get file size property!", &__p, 2u);
      if (!v7)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_27:
  v15 = *(a1 + 112);
  v16 = *(a1 + 40);
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (v11 == v15)
  {
    if (v17)
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = 67109120;
      HIDWORD(__p.__r_.__value_.__r.__words[0]) = v11;
      _os_log_impl(&dword_23C1C4000, v16, OS_LOG_TYPE_DEFAULT, "#I File size is already %u", &__p, 8u);
      if (!v7)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }
  }

  else
  {
    if (v17)
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = 67109376;
      HIDWORD(__p.__r_.__value_.__r.__words[0]) = v15 >> 10;
      LOWORD(__p.__r_.__value_.__r.__words[1]) = 1024;
      *(&__p.__r_.__value_.__r.__words[1] + 2) = v11 >> 10;
      _os_log_impl(&dword_23C1C4000, v16, OS_LOG_TYPE_DEFAULT, "#I Changing file size from %d KB to %d KB", &__p, 0xEu);
      v11 = v21;
    }

    *(a1 + 112) = v11;
    v18 = *(a1 + 128);
    if (v18)
    {
      abm::trace::TraceReader::updateFileSize(v18);
    }
  }

LABEL_35:
  if (v7)
  {
LABEL_36:
    dispatch_group_leave(v7);
    dispatch_release(v7);
  }

LABEL_37:
  v19 = *MEMORY[0x277D85DE8];
  return v10;
}

void sub_23C23DAEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16)
  {
    dispatch_group_leave(v16);
    dispatch_release(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DALTrace::setPropMaxMemoryFileCount_sync(uint64_t a1, dispatch_object_t *a2, char *a3, uint64_t a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v7);
  }

  if (prop::bbtrace::set(a3, a4))
  {
    v18 = 0;
    memset(&buf, 0, sizeof(buf));
    if (prop::bbtrace::get(a3, &buf))
    {
      v8 = util::convert<unsigned int>(&buf, &v18, 0);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_15:
        operator delete(buf.__r_.__value_.__l.__data_);
        if ((v8 & 1) == 0)
        {
LABEL_16:
          v14 = *(a1 + 40);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf.__r_.__value_.__l.__data_) = 0;
            _os_log_error_impl(&dword_23C1C4000, v14, OS_LOG_TYPE_ERROR, "Failed to get max memory file count property!", &buf, 2u);
          }

          goto LABEL_22;
        }

        goto LABEL_12;
      }
    }

    else
    {
      v8 = 0;
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_15;
      }
    }

    if ((v8 & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_12:
    v10 = v18;
    v11 = *(a1 + 116);
    v12 = *(a1 + 40);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v10 == v11)
    {
      if (v13)
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
        HIDWORD(buf.__r_.__value_.__r.__words[0]) = v10;
        _os_log_impl(&dword_23C1C4000, v12, OS_LOG_TYPE_DEFAULT, "#I Max memory file count is already set to %u", &buf, 8u);
      }
    }

    else
    {
      if (v13)
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 67109376;
        HIDWORD(buf.__r_.__value_.__r.__words[0]) = v11;
        LOWORD(buf.__r_.__value_.__r.__words[1]) = 1024;
        *(&buf.__r_.__value_.__r.__words[1] + 2) = v10;
        _os_log_impl(&dword_23C1C4000, v12, OS_LOG_TYPE_DEFAULT, "#I Setting max memory file count from %u to %u", &buf, 0xEu);
        v10 = v18;
      }

      *(a1 + 116) = v10;
      v15 = *(a1 + 128);
      if (v15)
      {
        abm::trace::TraceReader::updateMaxMemoryFileCount(v15);
      }
    }

    goto LABEL_22;
  }

  v9 = *(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_error_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_ERROR, "Failed to set max memory file count property!", &buf, 2u);
  }

  v8 = 0;
LABEL_22:
  if (v7)
  {
    dispatch_group_leave(v7);
    dispatch_release(v7);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_23C23DD70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16)
  {
    dispatch_group_leave(v16);
    dispatch_release(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DALTrace::setPropErrorHandling_sync(uint64_t a1, dispatch_object_t *a2, char *a3, const std::string *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v7);
  }

  memset(&__p, 0, sizeof(__p));
  if (prop::bbtrace::get(a3, &__p))
  {
    v20 = -1431655766;
    v8 = util::convert<int>(&__p, &v20, 0);
    v9 = v8;
    if (v8)
    {
      v10 = v20;
    }

    else
    {
      v10 = 0;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_8:
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((v9 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v10 = 0;
    v9 = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_8;
    }
  }

  if ((v9 & 1) == 0)
  {
LABEL_9:
    v11 = *(a1 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      v12 = "Failed to get trace error handling property!";
      goto LABEL_31;
    }

    goto LABEL_22;
  }

LABEL_13:
  if (prop::bbtrace::set(a3, a4))
  {
    LODWORD(__p.__r_.__value_.__l.__data_) = -1431655766;
    if (util::convert<int>(a4, &__p, 0))
    {
      data = __p.__r_.__value_.__l.__data_;
    }

    else
    {
      data = 0;
    }

    v14 = *(a1 + 40);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
LABEL_28:
      *(a1 + 264) = data;
      v17 = 1;
      if (!v7)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    if (v10 > 2)
    {
      v15 = "Unknown";
      if (data > 2)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v15 = off_278BB8C08[v10];
      if (data > 2)
      {
LABEL_20:
        v16 = "Unknown";
LABEL_27:
        LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
        *(__p.__r_.__value_.__r.__words + 4) = v15;
        WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
        *(&__p.__r_.__value_.__r.__words[1] + 6) = v16;
        _os_log_impl(&dword_23C1C4000, v14, OS_LOG_TYPE_DEFAULT, "#I Setting trace error handling from %s to %s", &__p, 0x16u);
        goto LABEL_28;
      }
    }

    v16 = off_278BB8C08[data];
    goto LABEL_27;
  }

  v11 = *(a1 + 40);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    v12 = "Failed to set trace error handling property!";
LABEL_31:
    _os_log_error_impl(&dword_23C1C4000, v11, OS_LOG_TYPE_ERROR, v12, &__p, 2u);
    v17 = 0;
    if (!v7)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_22:
  v17 = 0;
  if (v7)
  {
LABEL_23:
    dispatch_group_leave(v7);
    dispatch_release(v7);
  }

LABEL_24:
  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

void sub_23C23E008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16)
  {
    dispatch_group_leave(v16);
    dispatch_release(v16);
  }

  _Unwind_Resume(exception_object);
}

void DALTrace::getStateAsDict_sync(uint64_t a1@<X0>, uint64_t a2@<X1>, xpc_object_t *a3@<X8>)
{
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  v8 = MEMORY[0x277D86468];
  if (v6)
  {
    *a3 = v6;
  }

  else
  {
    v7 = xpc_null_create();
    *a3 = v7;
    if (!v7)
    {
      v9 = xpc_null_create();
      v7 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x23EECEE80](v7) == v8)
  {
    xpc_retain(v7);
    goto LABEL_9;
  }

  v9 = xpc_null_create();
LABEL_8:
  *a3 = v9;
LABEL_9:
  xpc_release(v7);
  v10 = *a3;
  if (MEMORY[0x23EECEE80](*a3) == v8)
  {
    if (*(a1 + 104))
    {
      v12 = "true";
    }

    else
    {
      v12 = "false";
    }

    v13 = xpc_string_create(v12);
    if (!v13)
    {
      v13 = xpc_null_create();
    }

    xpc_dictionary_set_value(v10, "Enabled", v13);
    v14 = xpc_null_create();
    xpc_release(v13);
    xpc_release(v14);
    v15 = *(a1 + 96);
    if (v15 > 8)
    {
      v16 = "Unknown";
    }

    else
    {
      v16 = off_278BB8C20[v15];
    }

    v17 = xpc_string_create(v16);
    if (!v17)
    {
      v17 = xpc_null_create();
    }

    xpc_dictionary_set_value(v10, "Mode", v17);
    v18 = xpc_null_create();
    xpc_release(v17);
    xpc_release(v18);
    v19 = *(a1 + 100);
    if (v19 == 1)
    {
      v20 = &buf.__r_.__value_.__s.__data_[9];
      *(&buf.__r_.__value_.__s + 23) = 9;
      qmemcpy(&buf, "Last_Used", 9);
    }

    else if (v19)
    {
      v20 = &buf.__r_.__value_.__s.__data_[11];
      *(&buf.__r_.__value_.__s + 23) = 11;
      qmemcpy(&buf, "UnSpecified", 11);
    }

    else
    {
      v20 = &buf.__r_.__value_.__s.__data_[7];
      *(&buf.__r_.__value_.__s + 23) = 7;
      qmemcpy(&buf, "Default", 7);
    }

    *v20 = 0;
    v21 = xpc_string_create(&buf);
    if (!v21)
    {
      v21 = xpc_null_create();
    }

    xpc_dictionary_set_value(v10, "Reset_Mode_Boot", v21);
    v22 = xpc_null_create();
    xpc_release(v21);
    xpc_release(v22);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    std::to_string(&buf, *(a1 + 120));
    __p = buf;
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v24 = xpc_string_create(p_p);
    if (!v24)
    {
      v24 = xpc_null_create();
    }

    v25 = *a3;
    xpc_dictionary_set_value(*a3, "TraceOwnership", v24);
    v26 = xpc_null_create();
    xpc_release(v24);
    xpc_release(v26);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      v27 = *(a1 + 200);
      if (v27 <= 2)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v27 = *(a1 + 200);
      if (v27 <= 2)
      {
LABEL_38:
        v28 = off_278BB8C68[v27];
        goto LABEL_41;
      }
    }

    v28 = "Unknown";
LABEL_41:
    v29 = xpc_string_create(v28);
    if (!v29)
    {
      v29 = xpc_null_create();
    }

    xpc_dictionary_set_value(v25, "Log_Mode", v29);
    v30 = xpc_null_create();
    xpc_release(v29);
    xpc_release(v30);
    v31 = (a1 + 208);
    if (*(a1 + 231) < 0)
    {
      v31 = *v31;
    }

    v32 = xpc_string_create(v31);
    if (!v32)
    {
      v32 = xpc_null_create();
    }

    xpc_dictionary_set_value(v25, "Log_Level", v32);
    v33 = xpc_null_create();
    xpc_release(v32);
    xpc_release(v33);
    v34 = *(a1 + 232);
    if (v34 > 2)
    {
      v35 = "Unknown";
    }

    else
    {
      v35 = off_278BB8C68[v34];
    }

    v36 = xpc_string_create(v35);
    if (!v36)
    {
      v36 = xpc_null_create();
    }

    xpc_dictionary_set_value(v25, "Sleep_Log_Mode", v36);
    v37 = xpc_null_create();
    xpc_release(v36);
    xpc_release(v37);
    v38 = (a1 + 240);
    if (*(a1 + 263) < 0)
    {
      v38 = *v38;
    }

    v39 = xpc_string_create(v38);
    if (!v39)
    {
      v39 = xpc_null_create();
    }

    xpc_dictionary_set_value(v25, "Sleep_Log_Level", v39);
    v40 = xpc_null_create();
    xpc_release(v39);
    xpc_release(v40);
    v41 = *(a1 + 108);
    if (v41)
    {
      memset(&__p, 0, sizeof(__p));
      std::to_string(&buf, v41);
      __p = buf;
    }

    else
    {
      *(&__p.__r_.__value_.__s + 23) = 8;
      strcpy(&__p, "Infinite");
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v42 = &__p;
    }

    else
    {
      v42 = __p.__r_.__value_.__r.__words[0];
    }

    v43 = xpc_string_create(v42);
    if (!v43)
    {
      v43 = xpc_null_create();
    }

    xpc_dictionary_set_value(*a3, "History", v43);
    v44 = xpc_null_create();
    xpc_release(v43);
    xpc_release(v44);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v45 = *(a1 + 112);
    memset(&__p, 0, sizeof(__p));
    std::to_string(&buf, v45);
    __p = buf;
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v46 = &__p;
    }

    else
    {
      v46 = __p.__r_.__value_.__r.__words[0];
    }

    v47 = xpc_string_create(v46);
    if (!v47)
    {
      v47 = xpc_null_create();
    }

    v48 = *a3;
    xpc_dictionary_set_value(*a3, "FileSize", v47);
    v49 = xpc_null_create();
    xpc_release(v47);
    xpc_release(v49);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (*(a1 + 296))
    {
      v50 = "true";
    }

    else
    {
      v50 = "false";
    }

    v51 = xpc_string_create(v50);
    if (!v51)
    {
      v51 = xpc_null_create();
    }

    xpc_dictionary_set_value(v48, "Retain_Previous_Trace", v51);
    v52 = xpc_null_create();
    xpc_release(v51);
    xpc_release(v52);
    v53 = *(a1 + 116);
    if (v53)
    {
      memset(&__p, 0, sizeof(__p));
      std::to_string(&buf, v53);
      __p = buf;
    }

    else
    {
      *(&__p.__r_.__value_.__s + 23) = 8;
      strcpy(&__p, "Infinite");
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v54 = &__p;
    }

    else
    {
      v54 = __p.__r_.__value_.__r.__words[0];
    }

    v55 = xpc_string_create(v54);
    if (!v55)
    {
      v55 = xpc_null_create();
    }

    v56 = *a3;
    xpc_dictionary_set_value(*a3, "MaxMemoryFileCount", v55);
    v57 = xpc_null_create();
    xpc_release(v55);
    xpc_release(v57);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (*(a2 + 23) >= 0)
    {
      v58 = a2;
    }

    else
    {
      v58 = *a2;
    }

    v59 = xpc_string_create(v58);
    if (!v59)
    {
      v59 = xpc_null_create();
    }

    xpc_dictionary_set_value(v56, *MEMORY[0x277CECCC8], v59);
    v60 = xpc_null_create();
    xpc_release(v59);
    xpc_release(v60);
    std::to_string(&buf, *(a1 + 320));
    v98 = buf;
    size = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      size = v98.__r_.__value_.__l.__size_;
      v64 = (v98.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v64 - v98.__r_.__value_.__l.__size_ < 5)
      {
        v65 = 0x7FFFFFFFFFFFFFF7;
        v62 = v98.__r_.__value_.__l.__size_ + 5;
        if (0x7FFFFFFFFFFFFFF7 - (v98.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v98.__r_.__value_.__l.__size_ + 5 - v64)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v63 = v98.__r_.__value_.__r.__words[0];
        if (v64 >= 0x3FFFFFFFFFFFFFF3)
        {
          v68 = 0;
LABEL_108:
          v69 = operator new(v65);
          v70 = v69;
          if (size)
          {
            memmove(v69, v63, size);
          }

          v71 = v70 + size;
          *(v71 + 4) = 115;
          *v71 = 1885490464;
          if (!v68)
          {
            operator delete(v63);
          }

          v98.__r_.__value_.__l.__size_ = v62;
          v98.__r_.__value_.__r.__words[2] = v65 | 0x8000000000000000;
          v98.__r_.__value_.__r.__words[0] = v70;
          v72 = (v70 + v62);
LABEL_119:
          *v72 = 0;
          __p = v98;
          memset(&v98, 0, sizeof(v98));
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v76 = &__p;
          }

          else
          {
            v76 = __p.__r_.__value_.__r.__words[0];
          }

          v77 = xpc_string_create(v76);
          if (!v77)
          {
            v77 = xpc_null_create();
          }

          xpc_dictionary_set_value(*a3, "PeakBandwidthMbps", v77);
          v78 = xpc_null_create();
          xpc_release(v77);
          xpc_release(v78);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v98.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_126:
              if (*(a1 + 324) != 1)
              {
                return;
              }

              goto LABEL_130;
            }
          }

          else if ((SHIBYTE(v98.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_126;
          }

          operator delete(v98.__r_.__value_.__l.__data_);
          if (*(a1 + 324) != 1)
          {
            return;
          }

LABEL_130:
          v79 = *(a1 + 328);
          memset(&v98, 0, sizeof(v98));
          std::to_string(&buf, v79);
          v98 = buf;
          v80 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
          if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
          {
            v80 = v98.__r_.__value_.__l.__size_;
            v83 = (v98.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
            if (v83 - v98.__r_.__value_.__l.__size_ < 3)
            {
              v84 = 0x7FFFFFFFFFFFFFF7;
              v81 = v98.__r_.__value_.__l.__size_ + 3;
              if (0x7FFFFFFFFFFFFFF7 - (v98.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v98.__r_.__value_.__l.__size_ + 3 - v83)
              {
                std::string::__throw_length_error[abi:ne200100]();
              }

              v82 = v98.__r_.__value_.__r.__words[0];
              if (v83 >= 0x3FFFFFFFFFFFFFF3)
              {
                v87 = 0;
LABEL_145:
                v88 = operator new(v84);
                v89 = v88;
                if (v80)
                {
                  memmove(v88, v82, v80);
                }

                v90 = v89 + v80;
                *(v90 + 2) = 115;
                *v90 = 27936;
                if (!v87)
                {
                  operator delete(v82);
                }

                v98.__r_.__value_.__l.__size_ = v81;
                v98.__r_.__value_.__r.__words[2] = v84 | 0x8000000000000000;
                v98.__r_.__value_.__r.__words[0] = v89;
                v91 = (v89 + v81);
LABEL_157:
                *v91 = 0;
                __p = v98;
                memset(&v98, 0, sizeof(v98));
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v95 = &__p;
                }

                else
                {
                  v95 = __p.__r_.__value_.__r.__words[0];
                }

                v96 = xpc_string_create(v95);
                if (!v96)
                {
                  v96 = xpc_null_create();
                }

                xpc_dictionary_set_value(*a3, "TraceFlushTimerInterval", v96);
                v97 = xpc_null_create();
                xpc_release(v96);
                xpc_release(v97);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                  if ((SHIBYTE(v98.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    return;
                  }
                }

                else if ((SHIBYTE(v98.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  return;
                }

                operator delete(v98.__r_.__value_.__l.__data_);
                return;
              }

LABEL_136:
              v85 = 2 * v83;
              if (v81 > 2 * v83)
              {
                v85 = v81;
              }

              if ((v85 | 7) == 0x17)
              {
                v86 = 25;
              }

              else
              {
                v86 = (v85 | 7) + 1;
              }

              if (v85 >= 0x17)
              {
                v84 = v86;
              }

              else
              {
                v84 = 23;
              }

              v87 = v83 == 22;
              goto LABEL_145;
            }

            v92 = v98.__r_.__value_.__r.__words[0];
          }

          else
          {
            if ((SHIBYTE(v98.__r_.__value_.__r.__words[2]) - 20) < 3)
            {
              v81 = SHIBYTE(v98.__r_.__value_.__r.__words[2]) + 3;
              v82 = &v98;
              v83 = 22;
              goto LABEL_136;
            }

            v92 = &v98;
          }

          v93 = v92 + v80;
          v93[2] = 115;
          *v93 = 27936;
          v94 = v80 + 3;
          if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
          {
            v98.__r_.__value_.__l.__size_ = v80 + 3;
          }

          else
          {
            *(&v98.__r_.__value_.__s + 23) = v94 & 0x7F;
          }

          v91 = v92 + v94;
          goto LABEL_157;
        }

LABEL_99:
        v66 = 2 * v64;
        if (v62 > 2 * v64)
        {
          v66 = v62;
        }

        if ((v66 | 7) == 0x17)
        {
          v67 = 25;
        }

        else
        {
          v67 = (v66 | 7) + 1;
        }

        if (v66 >= 0x17)
        {
          v65 = v67;
        }

        else
        {
          v65 = 23;
        }

        v68 = v64 == 22;
        goto LABEL_108;
      }

      v73 = v98.__r_.__value_.__r.__words[0];
    }

    else
    {
      if ((SHIBYTE(v98.__r_.__value_.__r.__words[2]) - 18) < 5)
      {
        v62 = SHIBYTE(v98.__r_.__value_.__r.__words[2]) + 5;
        v63 = &v98;
        v64 = 22;
        goto LABEL_99;
      }

      v73 = &v98;
    }

    v74 = v73 + size;
    v74[4] = 115;
    *v74 = 1885490464;
    v75 = size + 5;
    if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
    {
      v98.__r_.__value_.__l.__size_ = size + 5;
    }

    else
    {
      *(&v98.__r_.__value_.__s + 23) = v75 & 0x7F;
    }

    v72 = v73 + v75;
    goto LABEL_119;
  }

  v11 = *(a1 + 40);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_error_impl(&dword_23C1C4000, v11, OS_LOG_TYPE_ERROR, "Failed to create state dump", &buf, 2u);
  }
}

void sub_23C23EBB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (v22 < 0)
  {
    operator delete(__p);
    xpc::dict::~dict(v21);
    _Unwind_Resume(a1);
  }

  xpc::dict::~dict(v21);
  _Unwind_Resume(a1);
}

void DALTrace::setFlushTimer_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 184);
  if (v5 && (*(*v5 + 128))(v5))
  {
    v7 = *(a1 + 184);
    v8 = *a3;
    if (*a3)
    {
      v8 = _Block_copy(v8);
    }

    v9 = *(a3 + 8);
    aBlock = v8;
    object = v9;
    if (v9)
    {
      dispatch_retain(v9);
    }

    (*(*v7 + 192))(v7, a2, &aBlock);
    if (object)
    {
      dispatch_release(object);
    }

    if (aBlock)
    {
      _Block_release(aBlock);
    }
  }

  else
  {
    v10 = *(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(block[0]) = 0;
      _os_log_error_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_ERROR, "Trace command driver is not ready", block, 2u);
    }

    __p = operator new(0x28uLL);
    strcpy(__p, "Trace command driver is not ready");
    CreateError();
    operator delete(__p);
    if (*a3 && *(a3 + 8))
    {
      CFRetain(0xAAAAAAAAAAAAAAAALL);
      if (*a3)
      {
        v11 = _Block_copy(*a3);
      }

      else
      {
        v11 = 0;
      }

      v12 = *(a3 + 8);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 1174405120;
      block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke;
      block[3] = &__block_descriptor_tmp_195;
      if (v11)
      {
        v17 = _Block_copy(v11);
        v18 = 0xAAAAAAAAAAAAAAAALL;
      }

      else
      {
        v17 = 0;
        v18 = 0xAAAAAAAAAAAAAAAALL;
      }

      CFRetain(0xAAAAAAAAAAAAAAAALL);
      dispatch_async(v12, block);
      if (v18)
      {
        CFRelease(v18);
      }

      if (v17)
      {
        _Block_release(v17);
      }

      if (v11)
      {
        _Block_release(v11);
      }

      CFRelease(0xAAAAAAAAAAAAAAAALL);
    }

    CFRelease(0xAAAAAAAAAAAAAAAALL);
  }
}

void sub_23C23F0A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(va);
  _Unwind_Resume(a1);
}

void sub_23C23F0B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN8DALTrace32handleSleepTransitionToStreamingEN8dispatch13group_sessionE_block_invoke(void *a1, uint64_t *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a1[8];
  if (!v3)
  {
    goto LABEL_35;
  }

  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  v26 = v6;
  if (!v6)
  {
    goto LABEL_35;
  }

  if (a1[7])
  {
    v7 = *a2;
    if (*a2)
    {
      v8 = *(v5 + 40);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v7;
        _os_log_error_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_ERROR, "Failed to disable timer when entering sleep (%@)", buf, 0xCu);
      }

      *buf = operator new(0x30uLL);
      *&buf[8] = xmmword_23C32DC00;
      strcpy(*buf, "Failed to disable timer when entering sleep");
      v9 = *MEMORY[0x277CECC38];
      v10 = strlen(*MEMORY[0x277CECC38]);
      if (v10 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v11 = v10;
      if (v10 >= 0x17)
      {
        if ((v10 | 7) == 0x17)
        {
          v13 = 25;
        }

        else
        {
          v13 = (v10 | 7) + 1;
        }

        p_dst = operator new(v13);
        *(&__dst + 1) = v11;
        v24 = v13 | 0x8000000000000000;
        *&__dst = p_dst;
      }

      else
      {
        HIBYTE(v24) = v10;
        p_dst = &__dst;
        if (!v10)
        {
LABEL_16:
          *(p_dst + v11) = 0;
          v14 = *MEMORY[0x277CECD38];
          v15 = strlen(*MEMORY[0x277CECD38]);
          if (v15 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v16 = v15;
          if (v15 >= 0x17)
          {
            if ((v15 | 7) == 0x17)
            {
              v18 = 25;
            }

            else
            {
              v18 = (v15 | 7) + 1;
            }

            p_p = operator new(v18);
            *(&__p + 1) = v16;
            v22 = v18 | 0x8000000000000000;
            *&__p = p_p;
          }

          else
          {
            HIBYTE(v22) = v15;
            p_p = &__p;
            if (!v15)
            {
LABEL_25:
              p_p[v16] = 0;
              DALTrace::doErrorHandling(v5, buf, &__dst, &__p);
              if (SHIBYTE(v22) < 0)
              {
                operator delete(__p);
                if ((SHIBYTE(v24) & 0x80000000) == 0)
                {
LABEL_27:
                  if ((buf[23] & 0x80000000) == 0)
                  {
                    goto LABEL_28;
                  }

                  goto LABEL_32;
                }
              }

              else if ((SHIBYTE(v24) & 0x80000000) == 0)
              {
                goto LABEL_27;
              }

              operator delete(__dst);
              if ((buf[23] & 0x80000000) == 0)
              {
LABEL_28:
                v6 = v26;
                if (!v26)
                {
                  goto LABEL_35;
                }

                goto LABEL_33;
              }

LABEL_32:
              operator delete(*buf);
              v6 = v26;
              if (!v26)
              {
                goto LABEL_35;
              }

              goto LABEL_33;
            }
          }

          memmove(p_p, v14, v16);
          goto LABEL_25;
        }
      }

      memmove(p_dst, v9, v11);
      goto LABEL_16;
    }
  }

LABEL_33:
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v19 = v6;
    (v6->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v19);
  }

LABEL_35:
  v20 = *MEMORY[0x277D85DE8];
}

void sub_23C23F390(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a28 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  if ((a28 & 0x80000000) == 0)
  {
LABEL_4:
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a21);
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(a23);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void DALTrace::doErrorHandling(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  v8 = *(a1 + 152);
  v12 = 0;
  LOBYTE(v11) = 0;
  Timestamp::Timestamp(v9);
  abm::trace::TraceInfo::push();
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v9, v10);
  if (v12 < 0)
  {
    operator delete(v11);
  }

  TraceErrorHandler::handleError((a1 + 264), a2, a3, a4);
}

void sub_23C23F51C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, void *a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&a21, a22);
      if ((a29 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&a21, a22);
  if ((a29 & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(a24);
  _Unwind_Resume(a1);
}

void ___ZN8DALTrace32handleSleepTransitionToStreamingEN8dispatch13group_sessionE_block_invoke_73(void *a1, uint64_t *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  v29 = 0;
  v30 = 0;
  v4 = a1[8];
  if (!v4)
  {
    goto LABEL_39;
  }

  v30 = std::__shared_weak_count::lock(v4);
  if (!v30)
  {
    goto LABEL_42;
  }

  v29 = a1[7];
  if (!v29)
  {
    goto LABEL_39;
  }

  v6 = *a2;
  if (!*a2)
  {
    goto LABEL_28;
  }

  v7 = *(v3 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    *&buf[4] = v6;
    _os_log_error_impl(&dword_23C1C4000, v7, OS_LOG_TYPE_ERROR, "Failed to set log level when entering sleep (%@)", buf, 0xCu);
  }

  *buf = operator new(0x30uLL);
  *&buf[8] = xmmword_23C32DC00;
  strcpy(*buf, "Failed to set log level when entering sleep");
  v8 = *MEMORY[0x277CECC38];
  v9 = strlen(*MEMORY[0x277CECC38]);
  if (v9 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v10 = v9;
  if (v9 >= 0x17)
  {
    if ((v9 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v9 | 7) + 1;
    }

    p_dst = operator new(v12);
    *(&__dst + 1) = v10;
    v28 = v12 | 0x8000000000000000;
    *&__dst = p_dst;
    goto LABEL_15;
  }

  HIBYTE(v28) = v9;
  p_dst = &__dst;
  if (v9)
  {
LABEL_15:
    memmove(p_dst, v8, v10);
  }

  *(p_dst + v10) = 0;
  v13 = *MEMORY[0x277CECD38];
  v14 = strlen(*MEMORY[0x277CECD38]);
  if (v14 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v15 = v14;
  if (v14 >= 0x17)
  {
    if ((v14 | 7) == 0x17)
    {
      v17 = 25;
    }

    else
    {
      v17 = (v14 | 7) + 1;
    }

    p_p = operator new(v17);
    *(&__p + 1) = v15;
    v26 = v17 | 0x8000000000000000;
    *&__p = p_p;
    goto LABEL_24;
  }

  HIBYTE(v26) = v14;
  p_p = &__p;
  if (v14)
  {
LABEL_24:
    memmove(p_p, v13, v15);
  }

  *(p_p + v15) = 0;
  DALTrace::doErrorHandling(v3, buf, &__dst, &__p);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p);
    if ((SHIBYTE(v28) & 0x80000000) == 0)
    {
LABEL_27:
      if ((buf[23] & 0x80000000) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_38;
    }
  }

  else if ((SHIBYTE(v28) & 0x80000000) == 0)
  {
    goto LABEL_27;
  }

  operator delete(__dst);
  if ((buf[23] & 0x80000000) == 0)
  {
LABEL_28:
    if (*(v3 + 324) == 1)
    {
      goto LABEL_29;
    }

    goto LABEL_39;
  }

LABEL_38:
  operator delete(*buf);
  if (*(v3 + 324) == 1)
  {
LABEL_29:
    v18 = a1[9];
    if (v18)
    {
      v19 = _Block_copy(v18);
      v20 = a1[10];
      v23 = v19;
      v24 = v20;
      if (!v20)
      {
LABEL_32:
        DALTrace::disableTimer_sync(v3, &v23);
        if (v20)
        {
          dispatch_release(v20);
        }

        if (v19)
        {
          _Block_release(v19);
        }

        goto LABEL_39;
      }
    }

    else
    {
      v19 = 0;
      v20 = a1[10];
      v23 = 0;
      v24 = v20;
      if (!v20)
      {
        goto LABEL_32;
      }
    }

    dispatch_retain(v20);
    goto LABEL_32;
  }

LABEL_39:
  v21 = v30;
  if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

LABEL_42:
  v22 = *MEMORY[0x277D85DE8];
}

void sub_23C23F8BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c30_ZTSN8dispatch13group_sessionE56c29_ZTSNSt3__18weak_ptrI5TraceEE72c79_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE(void *a1, void *a2)
{
  v4 = a2[5];
  a1[5] = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = a1[5];
    if (v5)
    {
      dispatch_group_enter(v5);
    }
  }

  v6 = a2[6];
  a1[6] = v6;
  if (v6)
  {
    dispatch_retain(v6);
    v7 = a1[6];
    if (v7)
    {
      dispatch_group_enter(v7);
    }
  }

  v8 = a2[8];
  a1[7] = a2[7];
  a1[8] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 16), 1uLL, memory_order_relaxed);
  }

  v9 = a2[9];
  if (v9)
  {
    v9 = _Block_copy(v9);
  }

  v10 = a2[10];
  a1[9] = v9;
  a1[10] = v10;
  if (v10)
  {

    dispatch_retain(v10);
  }
}

void __destroy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c30_ZTSN8dispatch13group_sessionE56c29_ZTSNSt3__18weak_ptrI5TraceEE72c79_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[8];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    dispatch_group_leave(v5);
    v6 = a1[6];
    if (v6)
    {
      dispatch_release(v6);
    }
  }

  v7 = a1[5];
  if (v7)
  {
    dispatch_group_leave(v7);
    v8 = a1[5];
    if (v8)
    {

      dispatch_release(v8);
    }
  }
}

void ___ZN8DALTrace32handleSleepTransitionToStreamingEN8dispatch13group_sessionE_block_invoke_76(void *a1, uint64_t *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  v29 = 0;
  v30 = 0;
  v4 = a1[8];
  if (v4)
  {
    v30 = std::__shared_weak_count::lock(v4);
    if (!v30)
    {
      goto LABEL_38;
    }

    v29 = a1[7];
    if (v29)
    {
      v6 = *a2;
      if (!*a2)
      {
        goto LABEL_28;
      }

      v7 = *(v3 + 40);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v6;
        _os_log_error_impl(&dword_23C1C4000, v7, OS_LOG_TYPE_ERROR, "Failed to set log mode when entering sleep (%@)", buf, 0xCu);
      }

      *buf = operator new(0x30uLL);
      *&buf[8] = xmmword_23C32DC10;
      strcpy(*buf, "Failed to set log mode when entering sleep");
      v8 = *MEMORY[0x277CECC38];
      v9 = strlen(*MEMORY[0x277CECC38]);
      if (v9 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v10 = v9;
      if (v9 >= 0x17)
      {
        if ((v9 | 7) == 0x17)
        {
          v12 = 25;
        }

        else
        {
          v12 = (v9 | 7) + 1;
        }

        p_dst = operator new(v12);
        *(&__dst + 1) = v10;
        v28 = v12 | 0x8000000000000000;
        *&__dst = p_dst;
      }

      else
      {
        HIBYTE(v28) = v9;
        p_dst = &__dst;
        if (!v9)
        {
LABEL_16:
          *(p_dst + v10) = 0;
          v13 = *MEMORY[0x277CECD38];
          v14 = strlen(*MEMORY[0x277CECD38]);
          if (v14 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v15 = v14;
          if (v14 >= 0x17)
          {
            if ((v14 | 7) == 0x17)
            {
              v17 = 25;
            }

            else
            {
              v17 = (v14 | 7) + 1;
            }

            p_p = operator new(v17);
            *(&__p + 1) = v15;
            v26 = v17 | 0x8000000000000000;
            *&__p = p_p;
          }

          else
          {
            HIBYTE(v26) = v14;
            p_p = &__p;
            if (!v14)
            {
LABEL_25:
              p_p[v15] = 0;
              DALTrace::doErrorHandling(v3, buf, &__dst, &__p);
              if (SHIBYTE(v26) < 0)
              {
                operator delete(__p);
                if ((SHIBYTE(v28) & 0x80000000) == 0)
                {
LABEL_27:
                  if ((buf[23] & 0x80000000) == 0)
                  {
                    goto LABEL_28;
                  }

                  goto LABEL_41;
                }
              }

              else if ((SHIBYTE(v28) & 0x80000000) == 0)
              {
                goto LABEL_27;
              }

              operator delete(__dst);
              if ((buf[23] & 0x80000000) == 0)
              {
LABEL_28:
                v18 = a1[9];
                if (v18)
                {
                  goto LABEL_29;
                }

                goto LABEL_42;
              }

LABEL_41:
              operator delete(*buf);
              v18 = a1[9];
              if (v18)
              {
LABEL_29:
                v19 = _Block_copy(v18);
                v20 = a1[10];
                v23 = v19;
                v24 = v20;
                if (!v20)
                {
LABEL_31:
                  DALTrace::setLogLevel_sync(v3, (v3 + 240), &v23);
                  if (v20)
                  {
                    dispatch_release(v20);
                  }

                  if (v19)
                  {
                    _Block_release(v19);
                  }

                  goto LABEL_35;
                }

LABEL_30:
                dispatch_retain(v20);
                goto LABEL_31;
              }

LABEL_42:
              v19 = 0;
              v20 = a1[10];
              v23 = 0;
              v24 = v20;
              if (!v20)
              {
                goto LABEL_31;
              }

              goto LABEL_30;
            }
          }

          memmove(p_p, v13, v15);
          goto LABEL_25;
        }
      }

      memmove(p_dst, v8, v10);
      goto LABEL_16;
    }
  }

LABEL_35:
  v21 = v30;
  if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

LABEL_38:
  v22 = *MEMORY[0x277D85DE8];
}

void sub_23C23FDC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN8DALTrace32handleSleepTransitionToStreamingEN8dispatch13group_sessionE_block_invoke_81(void *a1, uint64_t *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  v29 = 0;
  v30 = 0;
  v4 = a1[8];
  if (v4)
  {
    v30 = std::__shared_weak_count::lock(v4);
    if (!v30)
    {
      goto LABEL_38;
    }

    v29 = a1[7];
    if (v29)
    {
      v6 = *a2;
      if (!*a2)
      {
        goto LABEL_28;
      }

      v7 = *(v3 + 40);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v6;
        _os_log_error_impl(&dword_23C1C4000, v7, OS_LOG_TYPE_ERROR, "Failed to flush log when entering sleep (%@)", buf, 0xCu);
      }

      *buf = operator new(0x28uLL);
      *&buf[8] = xmmword_23C32D510;
      strcpy(*buf, "Failed to flush log when entering sleep");
      v8 = *MEMORY[0x277CECC38];
      v9 = strlen(*MEMORY[0x277CECC38]);
      if (v9 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v10 = v9;
      if (v9 >= 0x17)
      {
        if ((v9 | 7) == 0x17)
        {
          v12 = 25;
        }

        else
        {
          v12 = (v9 | 7) + 1;
        }

        p_dst = operator new(v12);
        *(&__dst + 1) = v10;
        v28 = v12 | 0x8000000000000000;
        *&__dst = p_dst;
      }

      else
      {
        HIBYTE(v28) = v9;
        p_dst = &__dst;
        if (!v9)
        {
LABEL_16:
          *(p_dst + v10) = 0;
          v13 = *MEMORY[0x277CECD38];
          v14 = strlen(*MEMORY[0x277CECD38]);
          if (v14 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v15 = v14;
          if (v14 >= 0x17)
          {
            if ((v14 | 7) == 0x17)
            {
              v17 = 25;
            }

            else
            {
              v17 = (v14 | 7) + 1;
            }

            p_p = operator new(v17);
            *(&__p + 1) = v15;
            v26 = v17 | 0x8000000000000000;
            *&__p = p_p;
          }

          else
          {
            HIBYTE(v26) = v14;
            p_p = &__p;
            if (!v14)
            {
LABEL_25:
              p_p[v15] = 0;
              DALTrace::doErrorHandling(v3, buf, &__dst, &__p);
              if (SHIBYTE(v26) < 0)
              {
                operator delete(__p);
                if ((SHIBYTE(v28) & 0x80000000) == 0)
                {
LABEL_27:
                  if ((buf[23] & 0x80000000) == 0)
                  {
                    goto LABEL_28;
                  }

                  goto LABEL_41;
                }
              }

              else if ((SHIBYTE(v28) & 0x80000000) == 0)
              {
                goto LABEL_27;
              }

              operator delete(__dst);
              if ((buf[23] & 0x80000000) == 0)
              {
LABEL_28:
                v18 = a1[9];
                if (v18)
                {
                  goto LABEL_29;
                }

                goto LABEL_42;
              }

LABEL_41:
              operator delete(*buf);
              v18 = a1[9];
              if (v18)
              {
LABEL_29:
                v19 = _Block_copy(v18);
                v20 = a1[10];
                v23 = v19;
                v24 = v20;
                if (!v20)
                {
LABEL_31:
                  DALTrace::setLogLevel_sync(v3, (v3 + 240), &v23);
                  if (v20)
                  {
                    dispatch_release(v20);
                  }

                  if (v19)
                  {
                    _Block_release(v19);
                  }

                  goto LABEL_35;
                }

LABEL_30:
                dispatch_retain(v20);
                goto LABEL_31;
              }

LABEL_42:
              v19 = 0;
              v20 = a1[10];
              v23 = 0;
              v24 = v20;
              if (!v20)
              {
                goto LABEL_31;
              }

              goto LABEL_30;
            }
          }

          memmove(p_p, v13, v15);
          goto LABEL_25;
        }
      }

      memmove(p_dst, v8, v10);
      goto LABEL_16;
    }
  }

LABEL_35:
  v21 = v30;
  if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

LABEL_38:
  v22 = *MEMORY[0x277D85DE8];
}

void sub_23C24018C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN8DALTrace31handleSleepTransitionToWrappingEN8dispatch13group_sessionE_block_invoke(void *a1, uint64_t *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a1[8];
  if (!v3)
  {
    goto LABEL_35;
  }

  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  v26 = v6;
  if (!v6)
  {
    goto LABEL_35;
  }

  if (a1[7])
  {
    v7 = *a2;
    if (*a2)
    {
      v8 = *(v5 + 40);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v7;
        _os_log_error_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_ERROR, "Failed to set log level when entering sleep (%@)", buf, 0xCu);
      }

      *buf = operator new(0x30uLL);
      *&buf[8] = xmmword_23C32DC00;
      strcpy(*buf, "Failed to set log level when entering sleep");
      v9 = *MEMORY[0x277CECC38];
      v10 = strlen(*MEMORY[0x277CECC38]);
      if (v10 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v11 = v10;
      if (v10 >= 0x17)
      {
        if ((v10 | 7) == 0x17)
        {
          v13 = 25;
        }

        else
        {
          v13 = (v10 | 7) + 1;
        }

        p_dst = operator new(v13);
        *(&__dst + 1) = v11;
        v24 = v13 | 0x8000000000000000;
        *&__dst = p_dst;
      }

      else
      {
        HIBYTE(v24) = v10;
        p_dst = &__dst;
        if (!v10)
        {
LABEL_16:
          *(p_dst + v11) = 0;
          v14 = *MEMORY[0x277CECD38];
          v15 = strlen(*MEMORY[0x277CECD38]);
          if (v15 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v16 = v15;
          if (v15 >= 0x17)
          {
            if ((v15 | 7) == 0x17)
            {
              v18 = 25;
            }

            else
            {
              v18 = (v15 | 7) + 1;
            }

            p_p = operator new(v18);
            *(&__p + 1) = v16;
            v22 = v18 | 0x8000000000000000;
            *&__p = p_p;
          }

          else
          {
            HIBYTE(v22) = v15;
            p_p = &__p;
            if (!v15)
            {
LABEL_25:
              p_p[v16] = 0;
              DALTrace::doErrorHandling(v5, buf, &__dst, &__p);
              if (SHIBYTE(v22) < 0)
              {
                operator delete(__p);
                if ((SHIBYTE(v24) & 0x80000000) == 0)
                {
LABEL_27:
                  if ((buf[23] & 0x80000000) == 0)
                  {
                    goto LABEL_28;
                  }

                  goto LABEL_32;
                }
              }

              else if ((SHIBYTE(v24) & 0x80000000) == 0)
              {
                goto LABEL_27;
              }

              operator delete(__dst);
              if ((buf[23] & 0x80000000) == 0)
              {
LABEL_28:
                v6 = v26;
                if (!v26)
                {
                  goto LABEL_35;
                }

                goto LABEL_33;
              }

LABEL_32:
              operator delete(*buf);
              v6 = v26;
              if (!v26)
              {
                goto LABEL_35;
              }

              goto LABEL_33;
            }
          }

          memmove(p_p, v14, v16);
          goto LABEL_25;
        }
      }

      memmove(p_dst, v9, v11);
      goto LABEL_16;
    }
  }

LABEL_33:
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v19 = v6;
    (v6->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v19);
  }

LABEL_35:
  v20 = *MEMORY[0x277D85DE8];
}

void sub_23C2404EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a28 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  if ((a28 & 0x80000000) == 0)
  {
LABEL_4:
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a21);
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(a23);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void ___ZN8DALTrace31handleSleepTransitionToWrappingEN8dispatch13group_sessionE_block_invoke_89(void *a1, uint64_t *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  v29 = 0;
  v30 = 0;
  v4 = a1[8];
  if (v4)
  {
    v30 = std::__shared_weak_count::lock(v4);
    if (!v30)
    {
      goto LABEL_38;
    }

    v29 = a1[7];
    if (v29)
    {
      v6 = *a2;
      if (!*a2)
      {
        goto LABEL_28;
      }

      v7 = *(v3 + 40);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v6;
        _os_log_error_impl(&dword_23C1C4000, v7, OS_LOG_TYPE_ERROR, "Failed to set log mode when entering sleep (%@)", buf, 0xCu);
      }

      *buf = operator new(0x30uLL);
      *&buf[8] = xmmword_23C32DC10;
      strcpy(*buf, "Failed to set log mode when entering sleep");
      v8 = *MEMORY[0x277CECC38];
      v9 = strlen(*MEMORY[0x277CECC38]);
      if (v9 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v10 = v9;
      if (v9 >= 0x17)
      {
        if ((v9 | 7) == 0x17)
        {
          v12 = 25;
        }

        else
        {
          v12 = (v9 | 7) + 1;
        }

        p_dst = operator new(v12);
        *(&__dst + 1) = v10;
        v28 = v12 | 0x8000000000000000;
        *&__dst = p_dst;
      }

      else
      {
        HIBYTE(v28) = v9;
        p_dst = &__dst;
        if (!v9)
        {
LABEL_16:
          *(p_dst + v10) = 0;
          v13 = *MEMORY[0x277CECD38];
          v14 = strlen(*MEMORY[0x277CECD38]);
          if (v14 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v15 = v14;
          if (v14 >= 0x17)
          {
            if ((v14 | 7) == 0x17)
            {
              v17 = 25;
            }

            else
            {
              v17 = (v14 | 7) + 1;
            }

            p_p = operator new(v17);
            *(&__p + 1) = v15;
            v26 = v17 | 0x8000000000000000;
            *&__p = p_p;
          }

          else
          {
            HIBYTE(v26) = v14;
            p_p = &__p;
            if (!v14)
            {
LABEL_25:
              p_p[v15] = 0;
              DALTrace::doErrorHandling(v3, buf, &__dst, &__p);
              if (SHIBYTE(v26) < 0)
              {
                operator delete(__p);
                if ((SHIBYTE(v28) & 0x80000000) == 0)
                {
LABEL_27:
                  if ((buf[23] & 0x80000000) == 0)
                  {
                    goto LABEL_28;
                  }

                  goto LABEL_41;
                }
              }

              else if ((SHIBYTE(v28) & 0x80000000) == 0)
              {
                goto LABEL_27;
              }

              operator delete(__dst);
              if ((buf[23] & 0x80000000) == 0)
              {
LABEL_28:
                v18 = a1[9];
                if (v18)
                {
                  goto LABEL_29;
                }

                goto LABEL_42;
              }

LABEL_41:
              operator delete(*buf);
              v18 = a1[9];
              if (v18)
              {
LABEL_29:
                v19 = _Block_copy(v18);
                v20 = a1[10];
                v23 = v19;
                v24 = v20;
                if (!v20)
                {
LABEL_31:
                  DALTrace::setLogLevel_sync(v3, (v3 + 240), &v23);
                  if (v20)
                  {
                    dispatch_release(v20);
                  }

                  if (v19)
                  {
                    _Block_release(v19);
                  }

                  goto LABEL_35;
                }

LABEL_30:
                dispatch_retain(v20);
                goto LABEL_31;
              }

LABEL_42:
              v19 = 0;
              v20 = a1[10];
              v23 = 0;
              v24 = v20;
              if (!v20)
              {
                goto LABEL_31;
              }

              goto LABEL_30;
            }
          }

          memmove(p_p, v13, v15);
          goto LABEL_25;
        }
      }

      memmove(p_dst, v8, v10);
      goto LABEL_16;
    }
  }

LABEL_35:
  v21 = v30;
  if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

LABEL_38:
  v22 = *MEMORY[0x277D85DE8];
}

void sub_23C2408A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN8DALTrace31handleSleepTransitionToWrappingEN8dispatch13group_sessionE_block_invoke_93(void *a1, uint64_t *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  v29 = 0;
  v30 = 0;
  v4 = a1[8];
  if (v4)
  {
    v30 = std::__shared_weak_count::lock(v4);
    if (!v30)
    {
      goto LABEL_38;
    }

    v29 = a1[7];
    if (v29)
    {
      v6 = *a2;
      if (!*a2)
      {
        goto LABEL_28;
      }

      v7 = *(v3 + 40);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v6;
        _os_log_error_impl(&dword_23C1C4000, v7, OS_LOG_TYPE_ERROR, "Failed to flush log when entering sleep from wrapping mode (%@)", buf, 0xCu);
      }

      *buf = operator new(0x40uLL);
      *&buf[8] = xmmword_23C32D520;
      strcpy(*buf, "Failed to flush log when entering sleep from wrapping mode");
      v8 = *MEMORY[0x277CECC38];
      v9 = strlen(*MEMORY[0x277CECC38]);
      if (v9 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v10 = v9;
      if (v9 >= 0x17)
      {
        if ((v9 | 7) == 0x17)
        {
          v12 = 25;
        }

        else
        {
          v12 = (v9 | 7) + 1;
        }

        p_dst = operator new(v12);
        *(&__dst + 1) = v10;
        v28 = v12 | 0x8000000000000000;
        *&__dst = p_dst;
      }

      else
      {
        HIBYTE(v28) = v9;
        p_dst = &__dst;
        if (!v9)
        {
LABEL_16:
          *(p_dst + v10) = 0;
          v13 = *MEMORY[0x277CECD38];
          v14 = strlen(*MEMORY[0x277CECD38]);
          if (v14 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v15 = v14;
          if (v14 >= 0x17)
          {
            if ((v14 | 7) == 0x17)
            {
              v17 = 25;
            }

            else
            {
              v17 = (v14 | 7) + 1;
            }

            p_p = operator new(v17);
            *(&__p + 1) = v15;
            v26 = v17 | 0x8000000000000000;
            *&__p = p_p;
          }

          else
          {
            HIBYTE(v26) = v14;
            p_p = &__p;
            if (!v14)
            {
LABEL_25:
              p_p[v15] = 0;
              DALTrace::doErrorHandling(v3, buf, &__dst, &__p);
              if (SHIBYTE(v26) < 0)
              {
                operator delete(__p);
                if ((SHIBYTE(v28) & 0x80000000) == 0)
                {
LABEL_27:
                  if ((buf[23] & 0x80000000) == 0)
                  {
                    goto LABEL_28;
                  }

                  goto LABEL_41;
                }
              }

              else if ((SHIBYTE(v28) & 0x80000000) == 0)
              {
                goto LABEL_27;
              }

              operator delete(__dst);
              if ((buf[23] & 0x80000000) == 0)
              {
LABEL_28:
                v18 = a1[9];
                if (v18)
                {
                  goto LABEL_29;
                }

                goto LABEL_42;
              }

LABEL_41:
              operator delete(*buf);
              v18 = a1[9];
              if (v18)
              {
LABEL_29:
                v19 = _Block_copy(v18);
                v20 = a1[10];
                v23 = v19;
                v24 = v20;
                if (!v20)
                {
LABEL_31:
                  DALTrace::setLogLevel_sync(v3, (v3 + 240), &v23);
                  if (v20)
                  {
                    dispatch_release(v20);
                  }

                  if (v19)
                  {
                    _Block_release(v19);
                  }

                  goto LABEL_35;
                }

LABEL_30:
                dispatch_retain(v20);
                goto LABEL_31;
              }

LABEL_42:
              v19 = 0;
              v20 = a1[10];
              v23 = 0;
              v24 = v20;
              if (!v20)
              {
                goto LABEL_31;
              }

              goto LABEL_30;
            }
          }

          memmove(p_p, v13, v15);
          goto LABEL_25;
        }
      }

      memmove(p_dst, v8, v10);
      goto LABEL_16;
    }
  }

LABEL_35:
  v21 = v30;
  if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

LABEL_38:
  v22 = *MEMORY[0x277D85DE8];
}

void sub_23C240C78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN8DALTrace31handleSleepTransitionToDisabledEN8dispatch13group_sessionE_block_invoke(void *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  v26 = 0;
  v27 = 0;
  v4 = a1[8];
  if (v4)
  {
    v27 = std::__shared_weak_count::lock(v4);
    if (!v27)
    {
      goto LABEL_35;
    }

    v26 = a1[7];
    if (v26)
    {
      v6 = *a2;
      if (!*a2)
      {
        goto LABEL_28;
      }

      v7 = *(v3 + 5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v6;
        _os_log_error_impl(&dword_23C1C4000, v7, OS_LOG_TYPE_ERROR, "Failed to set log mode when entering sleep (%@)", buf, 0xCu);
      }

      *buf = operator new(0x30uLL);
      *&buf[8] = xmmword_23C32DC10;
      strcpy(*buf, "Failed to set log mode when entering sleep");
      v8 = *MEMORY[0x277CECC38];
      v9 = strlen(*MEMORY[0x277CECC38]);
      if (v9 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v10 = v9;
      if (v9 >= 0x17)
      {
        if ((v9 | 7) == 0x17)
        {
          v12 = 25;
        }

        else
        {
          v12 = (v9 | 7) + 1;
        }

        p_dst = operator new(v12);
        *(&__dst + 1) = v10;
        v25 = v12 | 0x8000000000000000;
        *&__dst = p_dst;
      }

      else
      {
        HIBYTE(v25) = v9;
        p_dst = &__dst;
        if (!v9)
        {
LABEL_16:
          *(p_dst + v10) = 0;
          v13 = *MEMORY[0x277CECD38];
          v14 = strlen(*MEMORY[0x277CECD38]);
          if (v14 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v15 = v14;
          if (v14 >= 0x17)
          {
            if ((v14 | 7) == 0x17)
            {
              v17 = 25;
            }

            else
            {
              v17 = (v14 | 7) + 1;
            }

            p_p = operator new(v17);
            *(&__p + 1) = v15;
            v23 = v17 | 0x8000000000000000;
            *&__p = p_p;
          }

          else
          {
            HIBYTE(v23) = v14;
            p_p = &__p;
            if (!v14)
            {
LABEL_25:
              p_p[v15] = 0;
              DALTrace::doErrorHandling(v3, buf, &__dst, &__p);
              if (SHIBYTE(v23) < 0)
              {
                operator delete(__p);
                if ((SHIBYTE(v25) & 0x80000000) == 0)
                {
LABEL_27:
                  if ((buf[23] & 0x80000000) == 0)
                  {
                    goto LABEL_28;
                  }

                  goto LABEL_38;
                }
              }

              else if ((SHIBYTE(v25) & 0x80000000) == 0)
              {
                goto LABEL_27;
              }

              operator delete(__dst);
              if ((buf[23] & 0x80000000) == 0)
              {
LABEL_28:
                v18 = *(v3 + 5);
                if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_30;
                }

                goto LABEL_29;
              }

LABEL_38:
              operator delete(*buf);
              v18 = *(v3 + 5);
              if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
LABEL_30:
                DALTrace::stopTraceReader_sync(v3);
                v19 = *(v3 + 22);
                if (v19)
                {
                  *(v3 + 22) = 0;
                  dispatch_group_leave(v19);
                  dispatch_release(v19);
                }

                goto LABEL_32;
              }

LABEL_29:
              *buf = 0;
              _os_log_impl(&dword_23C1C4000, v18, OS_LOG_TYPE_DEFAULT, "#I Closing Transport", buf, 2u);
              goto LABEL_30;
            }
          }

          memmove(p_p, v13, v15);
          goto LABEL_25;
        }
      }

      memmove(p_dst, v8, v10);
      goto LABEL_16;
    }
  }

LABEL_32:
  v20 = v27;
  if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

LABEL_35:
  v21 = *MEMORY[0x277D85DE8];
}

void sub_23C241048(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a28 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  if ((a28 & 0x80000000) == 0)
  {
LABEL_4:
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a21);
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(a23);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_23C2410E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ___ZN8DALTrace37handleWakeTransistionToStreaming_syncEv_block_invoke(void *a1, uint64_t *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a1[7];
  if (!v3)
  {
    goto LABEL_35;
  }

  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  v26 = v6;
  if (!v6)
  {
    goto LABEL_35;
  }

  if (a1[6])
  {
    v7 = *a2;
    if (*a2)
    {
      v8 = *(v5 + 40);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v7;
        _os_log_error_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_ERROR, "Failed to enable timer when exiting sleep (%@)", buf, 0xCu);
      }

      *buf = operator new(0x30uLL);
      *&buf[8] = xmmword_23C32DC20;
      strcpy(*buf, "Failed to enable timer when exiting sleep");
      v9 = *MEMORY[0x277CECC38];
      v10 = strlen(*MEMORY[0x277CECC38]);
      if (v10 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v11 = v10;
      if (v10 >= 0x17)
      {
        if ((v10 | 7) == 0x17)
        {
          v13 = 25;
        }

        else
        {
          v13 = (v10 | 7) + 1;
        }

        p_dst = operator new(v13);
        *(&__dst + 1) = v11;
        v24 = v13 | 0x8000000000000000;
        *&__dst = p_dst;
      }

      else
      {
        HIBYTE(v24) = v10;
        p_dst = &__dst;
        if (!v10)
        {
LABEL_16:
          *(p_dst + v11) = 0;
          v14 = *MEMORY[0x277CECD38];
          v15 = strlen(*MEMORY[0x277CECD38]);
          if (v15 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v16 = v15;
          if (v15 >= 0x17)
          {
            if ((v15 | 7) == 0x17)
            {
              v18 = 25;
            }

            else
            {
              v18 = (v15 | 7) + 1;
            }

            p_p = operator new(v18);
            *(&__p + 1) = v16;
            v22 = v18 | 0x8000000000000000;
            *&__p = p_p;
          }

          else
          {
            HIBYTE(v22) = v15;
            p_p = &__p;
            if (!v15)
            {
LABEL_25:
              p_p[v16] = 0;
              DALTrace::doErrorHandling(v5, buf, &__dst, &__p);
              if (SHIBYTE(v22) < 0)
              {
                operator delete(__p);
                if ((SHIBYTE(v24) & 0x80000000) == 0)
                {
LABEL_27:
                  if ((buf[23] & 0x80000000) == 0)
                  {
                    goto LABEL_28;
                  }

                  goto LABEL_32;
                }
              }

              else if ((SHIBYTE(v24) & 0x80000000) == 0)
              {
                goto LABEL_27;
              }

              operator delete(__dst);
              if ((buf[23] & 0x80000000) == 0)
              {
LABEL_28:
                v6 = v26;
                if (!v26)
                {
                  goto LABEL_35;
                }

                goto LABEL_33;
              }

LABEL_32:
              operator delete(*buf);
              v6 = v26;
              if (!v26)
              {
                goto LABEL_35;
              }

              goto LABEL_33;
            }
          }

          memmove(p_p, v14, v16);
          goto LABEL_25;
        }
      }

      memmove(p_dst, v9, v11);
      goto LABEL_16;
    }
  }

LABEL_33:
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v19 = v6;
    (v6->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v19);
  }

LABEL_35:
  v20 = *MEMORY[0x277D85DE8];
}

void sub_23C2413B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a28 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  if ((a28 & 0x80000000) == 0)
  {
LABEL_4:
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a21);
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(a23);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void ___ZN8DALTrace37handleWakeTransistionToStreaming_syncEv_block_invoke_105(void *a1, uint64_t *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  v30 = 0;
  v31 = 0;
  v4 = a1[7];
  if (!v4)
  {
    goto LABEL_39;
  }

  v31 = std::__shared_weak_count::lock(v4);
  if (!v31)
  {
    goto LABEL_42;
  }

  v30 = a1[6];
  if (!v30)
  {
    goto LABEL_39;
  }

  v6 = *a2;
  if (!*a2)
  {
    goto LABEL_28;
  }

  v7 = *(v3 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    *&buf[4] = v6;
    _os_log_error_impl(&dword_23C1C4000, v7, OS_LOG_TYPE_ERROR, "Failed to set log level when exiting sleep (%@)", buf, 0xCu);
  }

  *buf = operator new(0x30uLL);
  *&buf[8] = xmmword_23C32DC10;
  strcpy(*buf, "Failed to set log level when exiting sleep");
  v8 = *MEMORY[0x277CECC38];
  v9 = strlen(*MEMORY[0x277CECC38]);
  if (v9 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v10 = v9;
  if (v9 >= 0x17)
  {
    if ((v9 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v9 | 7) + 1;
    }

    p_dst = operator new(v12);
    *(&__dst + 1) = v10;
    v29 = v12 | 0x8000000000000000;
    *&__dst = p_dst;
    goto LABEL_15;
  }

  HIBYTE(v29) = v9;
  p_dst = &__dst;
  if (v9)
  {
LABEL_15:
    memmove(p_dst, v8, v10);
  }

  *(p_dst + v10) = 0;
  v13 = *MEMORY[0x277CECD38];
  v14 = strlen(*MEMORY[0x277CECD38]);
  if (v14 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v15 = v14;
  if (v14 >= 0x17)
  {
    if ((v14 | 7) == 0x17)
    {
      v17 = 25;
    }

    else
    {
      v17 = (v14 | 7) + 1;
    }

    p_p = operator new(v17);
    *(&__p + 1) = v15;
    v27 = v17 | 0x8000000000000000;
    *&__p = p_p;
    goto LABEL_24;
  }

  HIBYTE(v27) = v14;
  p_p = &__p;
  if (v14)
  {
LABEL_24:
    memmove(p_p, v13, v15);
  }

  *(p_p + v15) = 0;
  DALTrace::doErrorHandling(v3, buf, &__dst, &__p);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p);
    if ((SHIBYTE(v29) & 0x80000000) == 0)
    {
LABEL_27:
      if ((buf[23] & 0x80000000) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_38;
    }
  }

  else if ((SHIBYTE(v29) & 0x80000000) == 0)
  {
    goto LABEL_27;
  }

  operator delete(__dst);
  if ((buf[23] & 0x80000000) == 0)
  {
LABEL_28:
    if (*(v3 + 324) == 1)
    {
      goto LABEL_29;
    }

    goto LABEL_39;
  }

LABEL_38:
  operator delete(*buf);
  if (*(v3 + 324) == 1)
  {
LABEL_29:
    v18 = *(v3 + 328);
    v19 = a1[8];
    if (v19)
    {
      v20 = _Block_copy(v19);
      v21 = a1[9];
      v24 = v20;
      v25 = v21;
      if (!v21)
      {
LABEL_32:
        DALTrace::enableTimer_sync(v3, v18, &v24);
        if (v21)
        {
          dispatch_release(v21);
        }

        if (v20)
        {
          _Block_release(v20);
        }

        goto LABEL_39;
      }
    }

    else
    {
      v20 = 0;
      v21 = a1[9];
      v24 = 0;
      v25 = v21;
      if (!v21)
      {
        goto LABEL_32;
      }
    }

    dispatch_retain(v21);
    goto LABEL_32;
  }

LABEL_39:
  v22 = v31;
  if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

LABEL_42:
  v23 = *MEMORY[0x277D85DE8];
}

void sub_23C241784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN8DALTrace37handleWakeTransistionToStreaming_syncEv_block_invoke_110(void *a1, uint64_t *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  v29 = 0;
  v30 = 0;
  v4 = a1[7];
  if (v4)
  {
    v30 = std::__shared_weak_count::lock(v4);
    if (!v30)
    {
      goto LABEL_38;
    }

    v29 = a1[6];
    if (v29)
    {
      v6 = *a2;
      if (!*a2)
      {
        goto LABEL_28;
      }

      v7 = *(v3 + 40);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v6;
        _os_log_error_impl(&dword_23C1C4000, v7, OS_LOG_TYPE_ERROR, "Failed to set log mode when exiting sleep (%@)", buf, 0xCu);
      }

      *buf = operator new(0x30uLL);
      *&buf[8] = xmmword_23C32DC20;
      strcpy(*buf, "Failed to set log mode when exiting sleep");
      v8 = *MEMORY[0x277CECC38];
      v9 = strlen(*MEMORY[0x277CECC38]);
      if (v9 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v10 = v9;
      if (v9 >= 0x17)
      {
        if ((v9 | 7) == 0x17)
        {
          v12 = 25;
        }

        else
        {
          v12 = (v9 | 7) + 1;
        }

        p_dst = operator new(v12);
        *(&__dst + 1) = v10;
        v28 = v12 | 0x8000000000000000;
        *&__dst = p_dst;
      }

      else
      {
        HIBYTE(v28) = v9;
        p_dst = &__dst;
        if (!v9)
        {
LABEL_16:
          *(p_dst + v10) = 0;
          v13 = *MEMORY[0x277CECD38];
          v14 = strlen(*MEMORY[0x277CECD38]);
          if (v14 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v15 = v14;
          if (v14 >= 0x17)
          {
            if ((v14 | 7) == 0x17)
            {
              v17 = 25;
            }

            else
            {
              v17 = (v14 | 7) + 1;
            }

            p_p = operator new(v17);
            *(&__p + 1) = v15;
            v26 = v17 | 0x8000000000000000;
            *&__p = p_p;
          }

          else
          {
            HIBYTE(v26) = v14;
            p_p = &__p;
            if (!v14)
            {
LABEL_25:
              p_p[v15] = 0;
              DALTrace::doErrorHandling(v3, buf, &__dst, &__p);
              if (SHIBYTE(v26) < 0)
              {
                operator delete(__p);
                if ((SHIBYTE(v28) & 0x80000000) == 0)
                {
LABEL_27:
                  if ((buf[23] & 0x80000000) == 0)
                  {
                    goto LABEL_28;
                  }

                  goto LABEL_41;
                }
              }

              else if ((SHIBYTE(v28) & 0x80000000) == 0)
              {
                goto LABEL_27;
              }

              operator delete(__dst);
              if ((buf[23] & 0x80000000) == 0)
              {
LABEL_28:
                v18 = a1[8];
                if (v18)
                {
                  goto LABEL_29;
                }

                goto LABEL_42;
              }

LABEL_41:
              operator delete(*buf);
              v18 = a1[8];
              if (v18)
              {
LABEL_29:
                v19 = _Block_copy(v18);
                v20 = a1[9];
                v23 = v19;
                v24 = v20;
                if (!v20)
                {
LABEL_31:
                  DALTrace::setLogLevel_sync(v3, (v3 + 208), &v23);
                  if (v20)
                  {
                    dispatch_release(v20);
                  }

                  if (v19)
                  {
                    _Block_release(v19);
                  }

                  goto LABEL_35;
                }

LABEL_30:
                dispatch_retain(v20);
                goto LABEL_31;
              }

LABEL_42:
              v19 = 0;
              v20 = a1[9];
              v23 = 0;
              v24 = v20;
              if (!v20)
              {
                goto LABEL_31;
              }

              goto LABEL_30;
            }
          }

          memmove(p_p, v13, v15);
          goto LABEL_25;
        }
      }

      memmove(p_dst, v8, v10);
      goto LABEL_16;
    }
  }

LABEL_35:
  v21 = v30;
  if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

LABEL_38:
  v22 = *MEMORY[0x277D85DE8];
}

void sub_23C241B4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN8DALTrace37handleWakeTransistionToStreaming_syncEv_block_invoke_115(void *a1, uint64_t *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  v29 = 0;
  v30 = 0;
  v4 = a1[7];
  if (v4)
  {
    v30 = std::__shared_weak_count::lock(v4);
    if (!v30)
    {
      goto LABEL_38;
    }

    v29 = a1[6];
    if (v29)
    {
      v6 = *a2;
      if (!*a2)
      {
        goto LABEL_28;
      }

      v7 = *(v3 + 40);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v6;
        _os_log_error_impl(&dword_23C1C4000, v7, OS_LOG_TYPE_ERROR, "Failed to flush log when exiting sleep (%@)", buf, 0xCu);
      }

      *buf = operator new(0x28uLL);
      *&buf[8] = xmmword_23C32DC30;
      strcpy(*buf, "Failed to flush log when exiting sleep");
      v8 = *MEMORY[0x277CECC38];
      v9 = strlen(*MEMORY[0x277CECC38]);
      if (v9 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v10 = v9;
      if (v9 >= 0x17)
      {
        if ((v9 | 7) == 0x17)
        {
          v12 = 25;
        }

        else
        {
          v12 = (v9 | 7) + 1;
        }

        p_dst = operator new(v12);
        *(&__dst + 1) = v10;
        v28 = v12 | 0x8000000000000000;
        *&__dst = p_dst;
      }

      else
      {
        HIBYTE(v28) = v9;
        p_dst = &__dst;
        if (!v9)
        {
LABEL_16:
          *(p_dst + v10) = 0;
          v13 = *MEMORY[0x277CECD38];
          v14 = strlen(*MEMORY[0x277CECD38]);
          if (v14 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v15 = v14;
          if (v14 >= 0x17)
          {
            if ((v14 | 7) == 0x17)
            {
              v17 = 25;
            }

            else
            {
              v17 = (v14 | 7) + 1;
            }

            p_p = operator new(v17);
            *(&__p + 1) = v15;
            v26 = v17 | 0x8000000000000000;
            *&__p = p_p;
          }

          else
          {
            HIBYTE(v26) = v14;
            p_p = &__p;
            if (!v14)
            {
LABEL_25:
              p_p[v15] = 0;
              DALTrace::doErrorHandling(v3, buf, &__dst, &__p);
              if (SHIBYTE(v26) < 0)
              {
                operator delete(__p);
                if ((SHIBYTE(v28) & 0x80000000) == 0)
                {
LABEL_27:
                  if ((buf[23] & 0x80000000) == 0)
                  {
                    goto LABEL_28;
                  }

                  goto LABEL_41;
                }
              }

              else if ((SHIBYTE(v28) & 0x80000000) == 0)
              {
                goto LABEL_27;
              }

              operator delete(__dst);
              if ((buf[23] & 0x80000000) == 0)
              {
LABEL_28:
                v18 = a1[8];
                if (v18)
                {
                  goto LABEL_29;
                }

                goto LABEL_42;
              }

LABEL_41:
              operator delete(*buf);
              v18 = a1[8];
              if (v18)
              {
LABEL_29:
                v19 = _Block_copy(v18);
                v20 = a1[9];
                v23 = v19;
                v24 = v20;
                if (!v20)
                {
LABEL_31:
                  DALTrace::setLogLevel_sync(v3, (v3 + 208), &v23);
                  if (v20)
                  {
                    dispatch_release(v20);
                  }

                  if (v19)
                  {
                    _Block_release(v19);
                  }

                  goto LABEL_35;
                }

LABEL_30:
                dispatch_retain(v20);
                goto LABEL_31;
              }

LABEL_42:
              v19 = 0;
              v20 = a1[9];
              v23 = 0;
              v24 = v20;
              if (!v20)
              {
                goto LABEL_31;
              }

              goto LABEL_30;
            }
          }

          memmove(p_p, v13, v15);
          goto LABEL_25;
        }
      }

      memmove(p_dst, v8, v10);
      goto LABEL_16;
    }
  }

LABEL_35:
  v21 = v30;
  if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

LABEL_38:
  v22 = *MEMORY[0x277D85DE8];
}

void sub_23C241F14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN8DALTrace36handleWakeTransistionToWrapping_syncEv_block_invoke(void *a1, uint64_t *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a1[7];
  if (!v3)
  {
    goto LABEL_35;
  }

  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  v26 = v6;
  if (!v6)
  {
    goto LABEL_35;
  }

  if (a1[6])
  {
    v7 = *a2;
    if (*a2)
    {
      v8 = *(v5 + 40);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v7;
        _os_log_error_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_ERROR, "Failed to set log level when exiting sleep (%@)", buf, 0xCu);
      }

      *buf = operator new(0x30uLL);
      *&buf[8] = xmmword_23C32DC10;
      strcpy(*buf, "Failed to set log level when exiting sleep");
      v9 = *MEMORY[0x277CECC38];
      v10 = strlen(*MEMORY[0x277CECC38]);
      if (v10 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v11 = v10;
      if (v10 >= 0x17)
      {
        if ((v10 | 7) == 0x17)
        {
          v13 = 25;
        }

        else
        {
          v13 = (v10 | 7) + 1;
        }

        p_dst = operator new(v13);
        *(&__dst + 1) = v11;
        v24 = v13 | 0x8000000000000000;
        *&__dst = p_dst;
      }

      else
      {
        HIBYTE(v24) = v10;
        p_dst = &__dst;
        if (!v10)
        {
LABEL_16:
          *(p_dst + v11) = 0;
          v14 = *MEMORY[0x277CECD38];
          v15 = strlen(*MEMORY[0x277CECD38]);
          if (v15 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v16 = v15;
          if (v15 >= 0x17)
          {
            if ((v15 | 7) == 0x17)
            {
              v18 = 25;
            }

            else
            {
              v18 = (v15 | 7) + 1;
            }

            p_p = operator new(v18);
            *(&__p + 1) = v16;
            v22 = v18 | 0x8000000000000000;
            *&__p = p_p;
          }

          else
          {
            HIBYTE(v22) = v15;
            p_p = &__p;
            if (!v15)
            {
LABEL_25:
              p_p[v16] = 0;
              DALTrace::doErrorHandling(v5, buf, &__dst, &__p);
              if (SHIBYTE(v22) < 0)
              {
                operator delete(__p);
                if ((SHIBYTE(v24) & 0x80000000) == 0)
                {
LABEL_27:
                  if ((buf[23] & 0x80000000) == 0)
                  {
                    goto LABEL_28;
                  }

                  goto LABEL_32;
                }
              }

              else if ((SHIBYTE(v24) & 0x80000000) == 0)
              {
                goto LABEL_27;
              }

              operator delete(__dst);
              if ((buf[23] & 0x80000000) == 0)
              {
LABEL_28:
                v6 = v26;
                if (!v26)
                {
                  goto LABEL_35;
                }

                goto LABEL_33;
              }

LABEL_32:
              operator delete(*buf);
              v6 = v26;
              if (!v26)
              {
                goto LABEL_35;
              }

              goto LABEL_33;
            }
          }

          memmove(p_p, v14, v16);
          goto LABEL_25;
        }
      }

      memmove(p_dst, v9, v11);
      goto LABEL_16;
    }
  }

LABEL_33:
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v19 = v6;
    (v6->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v19);
  }

LABEL_35:
  v20 = *MEMORY[0x277D85DE8];
}

void sub_23C242274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a28 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  if ((a28 & 0x80000000) == 0)
  {
LABEL_4:
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a21);
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(a23);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void ___ZN8DALTrace36handleWakeTransistionToWrapping_syncEv_block_invoke_124(void *a1, uint64_t *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  v29 = 0;
  v30 = 0;
  v4 = a1[7];
  if (v4)
  {
    v30 = std::__shared_weak_count::lock(v4);
    if (!v30)
    {
      goto LABEL_38;
    }

    v29 = a1[6];
    if (v29)
    {
      v6 = *a2;
      if (!*a2)
      {
        goto LABEL_28;
      }

      v7 = *(v3 + 40);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v6;
        _os_log_error_impl(&dword_23C1C4000, v7, OS_LOG_TYPE_ERROR, "Failed to set log mode when exiting sleep (%@)", buf, 0xCu);
      }

      *buf = operator new(0x30uLL);
      *&buf[8] = xmmword_23C32DC20;
      strcpy(*buf, "Failed to set log mode when exiting sleep");
      v8 = *MEMORY[0x277CECC38];
      v9 = strlen(*MEMORY[0x277CECC38]);
      if (v9 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v10 = v9;
      if (v9 >= 0x17)
      {
        if ((v9 | 7) == 0x17)
        {
          v12 = 25;
        }

        else
        {
          v12 = (v9 | 7) + 1;
        }

        p_dst = operator new(v12);
        *(&__dst + 1) = v10;
        v28 = v12 | 0x8000000000000000;
        *&__dst = p_dst;
      }

      else
      {
        HIBYTE(v28) = v9;
        p_dst = &__dst;
        if (!v9)
        {
LABEL_16:
          *(p_dst + v10) = 0;
          v13 = *MEMORY[0x277CECD38];
          v14 = strlen(*MEMORY[0x277CECD38]);
          if (v14 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v15 = v14;
          if (v14 >= 0x17)
          {
            if ((v14 | 7) == 0x17)
            {
              v17 = 25;
            }

            else
            {
              v17 = (v14 | 7) + 1;
            }

            p_p = operator new(v17);
            *(&__p + 1) = v15;
            v26 = v17 | 0x8000000000000000;
            *&__p = p_p;
          }

          else
          {
            HIBYTE(v26) = v14;
            p_p = &__p;
            if (!v14)
            {
LABEL_25:
              p_p[v15] = 0;
              DALTrace::doErrorHandling(v3, buf, &__dst, &__p);
              if (SHIBYTE(v26) < 0)
              {
                operator delete(__p);
                if ((SHIBYTE(v28) & 0x80000000) == 0)
                {
LABEL_27:
                  if ((buf[23] & 0x80000000) == 0)
                  {
                    goto LABEL_28;
                  }

                  goto LABEL_41;
                }
              }

              else if ((SHIBYTE(v28) & 0x80000000) == 0)
              {
                goto LABEL_27;
              }

              operator delete(__dst);
              if ((buf[23] & 0x80000000) == 0)
              {
LABEL_28:
                v18 = a1[8];
                if (v18)
                {
                  goto LABEL_29;
                }

                goto LABEL_42;
              }

LABEL_41:
              operator delete(*buf);
              v18 = a1[8];
              if (v18)
              {
LABEL_29:
                v19 = _Block_copy(v18);
                v20 = a1[9];
                v23 = v19;
                v24 = v20;
                if (!v20)
                {
LABEL_31:
                  DALTrace::setLogLevel_sync(v3, (v3 + 208), &v23);
                  if (v20)
                  {
                    dispatch_release(v20);
                  }

                  if (v19)
                  {
                    _Block_release(v19);
                  }

                  goto LABEL_35;
                }

LABEL_30:
                dispatch_retain(v20);
                goto LABEL_31;
              }

LABEL_42:
              v19 = 0;
              v20 = a1[9];
              v23 = 0;
              v24 = v20;
              if (!v20)
              {
                goto LABEL_31;
              }

              goto LABEL_30;
            }
          }

          memmove(p_p, v13, v15);
          goto LABEL_25;
        }
      }

      memmove(p_dst, v8, v10);
      goto LABEL_16;
    }
  }

LABEL_35:
  v21 = v30;
  if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

LABEL_38:
  v22 = *MEMORY[0x277D85DE8];
}

void sub_23C242630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN8DALTrace36handleWakeTransistionToWrapping_syncEv_block_invoke_128(void *a1, uint64_t *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a1[7];
  if (!v3)
  {
    goto LABEL_42;
  }

  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  v32 = v6;
  if (!v6)
  {
    goto LABEL_42;
  }

  v7 = v6;
  if (a1[6])
  {
    v8 = *a2;
    if (v8)
    {
      v9 = *(v5 + 40);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v8;
        _os_log_error_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_ERROR, "Failed to enable timer when ap wakes (%@)", buf, 0xCu);
      }

      *buf = operator new(0x28uLL);
      *&buf[8] = xmmword_23C32DC40;
      strcpy(*buf, "Failed to enable timer when ap wakes");
      v10 = *MEMORY[0x277CECC38];
      v11 = strlen(*MEMORY[0x277CECC38]);
      if (v11 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v12 = v11;
      if (v11 >= 0x17)
      {
        if ((v11 | 7) == 0x17)
        {
          v18 = 25;
        }

        else
        {
          v18 = (v11 | 7) + 1;
        }

        p_dst = operator new(v18);
        *(&__dst + 1) = v12;
        v30 = v18 | 0x8000000000000000;
        *&__dst = p_dst;
      }

      else
      {
        HIBYTE(v30) = v11;
        p_dst = &__dst;
        if (!v11)
        {
LABEL_23:
          *(p_dst + v12) = 0;
          v19 = *MEMORY[0x277CECD38];
          v20 = strlen(*MEMORY[0x277CECD38]);
          if (v20 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v21 = v20;
          if (v20 >= 0x17)
          {
            if ((v20 | 7) == 0x17)
            {
              v23 = 25;
            }

            else
            {
              v23 = (v20 | 7) + 1;
            }

            p_p = operator new(v23);
            *(&__p + 1) = v21;
            v28 = v23 | 0x8000000000000000;
            *&__p = p_p;
          }

          else
          {
            HIBYTE(v28) = v20;
            p_p = &__p;
            if (!v20)
            {
LABEL_32:
              p_p[v21] = 0;
              DALTrace::doErrorHandling(v5, buf, &__dst, &__p);
              if (SHIBYTE(v28) < 0)
              {
                operator delete(__p);
                if ((SHIBYTE(v30) & 0x80000000) == 0)
                {
LABEL_34:
                  if ((buf[23] & 0x80000000) == 0)
                  {
                    goto LABEL_35;
                  }

                  goto LABEL_39;
                }
              }

              else if ((SHIBYTE(v30) & 0x80000000) == 0)
              {
                goto LABEL_34;
              }

              operator delete(__dst);
              if ((buf[23] & 0x80000000) == 0)
              {
LABEL_35:
                v7 = v32;
                if (!v32)
                {
                  goto LABEL_42;
                }

                goto LABEL_40;
              }

LABEL_39:
              operator delete(*buf);
              v7 = v32;
              if (!v32)
              {
                goto LABEL_42;
              }

              goto LABEL_40;
            }
          }

          memmove(p_p, v19, v21);
          goto LABEL_32;
        }
      }

      memmove(p_dst, v10, v12);
      goto LABEL_23;
    }

    v14 = *(v5 + 200);
    v15 = a1[8];
    if (v15)
    {
      v16 = _Block_copy(v15);
      v17 = a1[9];
      v25 = v16;
      v26 = v17;
      if (!v17)
      {
LABEL_14:
        DALTrace::setLogMode_sync(v5, v14, 0, &v25, 10);
        if (v17)
        {
          dispatch_release(v17);
        }

        if (v16)
        {
          _Block_release(v16);
        }

        goto LABEL_40;
      }
    }

    else
    {
      v16 = 0;
      v17 = a1[9];
      v25 = 0;
      v26 = v17;
      if (!v17)
      {
        goto LABEL_14;
      }
    }

    dispatch_retain(v17);
    goto LABEL_14;
  }

LABEL_40:
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

LABEL_42:
  v24 = *MEMORY[0x277D85DE8];
}

void sub_23C242A08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN8DALTrace36handleWakeTransistionToWrapping_syncEv_block_invoke_133(void *a1, uint64_t *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  v29 = 0;
  v30 = 0;
  v4 = a1[7];
  if (v4)
  {
    v30 = std::__shared_weak_count::lock(v4);
    if (!v30)
    {
      goto LABEL_38;
    }

    v29 = a1[6];
    if (v29)
    {
      v6 = *a2;
      if (!*a2)
      {
        goto LABEL_28;
      }

      v7 = *(v3 + 40);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v6;
        _os_log_error_impl(&dword_23C1C4000, v7, OS_LOG_TYPE_ERROR, "Failed to flush log when exiting sleep from wrapping mode (%@)", buf, 0xCu);
      }

      *buf = operator new(0x40uLL);
      *&buf[8] = xmmword_23C32DC50;
      strcpy(*buf, "Failed to flush log when exiting sleep from wrapping mode");
      v8 = *MEMORY[0x277CECC38];
      v9 = strlen(*MEMORY[0x277CECC38]);
      if (v9 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v10 = v9;
      if (v9 >= 0x17)
      {
        if ((v9 | 7) == 0x17)
        {
          v12 = 25;
        }

        else
        {
          v12 = (v9 | 7) + 1;
        }

        p_dst = operator new(v12);
        *(&__dst + 1) = v10;
        v28 = v12 | 0x8000000000000000;
        *&__dst = p_dst;
      }

      else
      {
        HIBYTE(v28) = v9;
        p_dst = &__dst;
        if (!v9)
        {
LABEL_16:
          *(p_dst + v10) = 0;
          v13 = *MEMORY[0x277CECD38];
          v14 = strlen(*MEMORY[0x277CECD38]);
          if (v14 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v15 = v14;
          if (v14 >= 0x17)
          {
            if ((v14 | 7) == 0x17)
            {
              v17 = 25;
            }

            else
            {
              v17 = (v14 | 7) + 1;
            }

            p_p = operator new(v17);
            *(&__p + 1) = v15;
            v26 = v17 | 0x8000000000000000;
            *&__p = p_p;
          }

          else
          {
            HIBYTE(v26) = v14;
            p_p = &__p;
            if (!v14)
            {
LABEL_25:
              p_p[v15] = 0;
              DALTrace::doErrorHandling(v3, buf, &__dst, &__p);
              if (SHIBYTE(v26) < 0)
              {
                operator delete(__p);
                if ((SHIBYTE(v28) & 0x80000000) == 0)
                {
LABEL_27:
                  if ((buf[23] & 0x80000000) == 0)
                  {
                    goto LABEL_28;
                  }

                  goto LABEL_41;
                }
              }

              else if ((SHIBYTE(v28) & 0x80000000) == 0)
              {
                goto LABEL_27;
              }

              operator delete(__dst);
              if ((buf[23] & 0x80000000) == 0)
              {
LABEL_28:
                v18 = a1[8];
                if (v18)
                {
                  goto LABEL_29;
                }

                goto LABEL_42;
              }

LABEL_41:
              operator delete(*buf);
              v18 = a1[8];
              if (v18)
              {
LABEL_29:
                v19 = _Block_copy(v18);
                v20 = a1[9];
                v23 = v19;
                v24 = v20;
                if (!v20)
                {
LABEL_31:
                  DALTrace::setLogLevel_sync(v3, (v3 + 208), &v23);
                  if (v20)
                  {
                    dispatch_release(v20);
                  }

                  if (v19)
                  {
                    _Block_release(v19);
                  }

                  goto LABEL_35;
                }

LABEL_30:
                dispatch_retain(v20);
                goto LABEL_31;
              }

LABEL_42:
              v19 = 0;
              v20 = a1[9];
              v23 = 0;
              v24 = v20;
              if (!v20)
              {
                goto LABEL_31;
              }

              goto LABEL_30;
            }
          }

          memmove(p_p, v13, v15);
          goto LABEL_25;
        }
      }

      memmove(p_dst, v8, v10);
      goto LABEL_16;
    }
  }

LABEL_35:
  v21 = v30;
  if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

LABEL_38:
  v22 = *MEMORY[0x277D85DE8];
}

void sub_23C242DD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DALTrace::setPropRetainPreviousTrace_sync(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  if ((prop::bbtrace::set(a3, a4) & 1) == 0)
  {
    v9 = *(a1 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_ERROR, "Failed to set retain previous trace property", &__p, 2u);
    }

    v6 = 0;
    v10 = *MEMORY[0x277D85DE8];
    return v6;
  }

  v21 = 1;
  memset(&__p, 0, sizeof(__p));
  if (prop::bbtrace::get(a3, &__p))
  {
    v6 = util::convert<BOOL>(&__p, &v21, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_4;
    }

LABEL_11:
    if ((v6 & 1) == 0)
    {
LABEL_5:
      v7 = *(a1 + 40);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        LOWORD(__p.__r_.__value_.__l.__data_) = 0;
        _os_log_error_impl(&dword_23C1C4000, v7, OS_LOG_TYPE_ERROR, "Failed to get retain previous trace property", &__p, 2u);
        v8 = *MEMORY[0x277D85DE8];
        return v6;
      }

      goto LABEL_25;
    }

    goto LABEL_12;
  }

  v6 = 0;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  operator delete(__p.__r_.__value_.__l.__data_);
  if ((v6 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_12:
  v11 = v21;
  v12 = *(a1 + 296);
  v13 = *(a1 + 40);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v11 != v12)
  {
    if (v14)
    {
      v17 = "false";
      if (v12)
      {
        v18 = "true";
      }

      else
      {
        v18 = "false";
      }

      if (v11)
      {
        v17 = "true";
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
      *(__p.__r_.__value_.__r.__words + 4) = v18;
      WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
      *(&__p.__r_.__value_.__r.__words[1] + 6) = v17;
      _os_log_impl(&dword_23C1C4000, v13, OS_LOG_TYPE_DEFAULT, "#I Setting retain previous trace property from %s to %s", &__p, 0x16u);
      LOBYTE(v11) = v21;
    }

    *(a1 + 296) = v11;
    goto LABEL_25;
  }

  if (!v14)
  {
LABEL_25:
    v19 = *MEMORY[0x277D85DE8];
    return v6;
  }

  v15 = "false";
  if (v11)
  {
    v15 = "true";
  }

  LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
  *(__p.__r_.__value_.__r.__words + 4) = v15;
  _os_log_impl(&dword_23C1C4000, v13, OS_LOG_TYPE_DEFAULT, "#I Retain previous trace property is already set to %s", &__p, 0xCu);
  v16 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_23C2430FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DALTrace::setPropPeakBandwidthMbps_sync(uint64_t a1, int a2, char *a3, const std::string *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v23 = 0;
  util::convert<unsigned int>(a4, &v23, 0);
  v7 = v23;
  if (v23 >= 0xBB9)
  {
    v10 = *(a1 + 40);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
LABEL_11:
      v8 = 0;
      goto LABEL_12;
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 67109120;
    HIDWORD(__p.__r_.__value_.__r.__words[0]) = v7;
    v11 = "Invalid input trace bandwidth - %u Mbps";
    v12 = v10;
    v13 = 8;
LABEL_23:
    _os_log_error_impl(&dword_23C1C4000, v12, OS_LOG_TYPE_ERROR, v11, &__p, v13);
    goto LABEL_11;
  }

  if ((prop::bbtrace::set(a3, a4) & 1) == 0)
  {
    v14 = *(a1 + 40);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    v11 = "Failed to set peak bandwidth property";
    v12 = v14;
    v13 = 2;
    goto LABEL_23;
  }

  v22 = 0;
  memset(&__p, 0, sizeof(__p));
  if (prop::bbtrace::get(a3, &__p))
  {
    v8 = util::convert<unsigned int>(&__p, &v22, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v8 = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_5:
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((v8 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  if ((v8 & 1) == 0)
  {
LABEL_6:
    v9 = *(a1 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_ERROR, "Failed to get peak bandwidth property", &__p, 2u);
    }

    goto LABEL_12;
  }

LABEL_15:
  v17 = v22;
  v18 = *(a1 + 320);
  v19 = *(a1 + 40);
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (v17 == v18)
  {
    if (v20)
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = 67109120;
      HIDWORD(__p.__r_.__value_.__r.__words[0]) = v17;
      _os_log_impl(&dword_23C1C4000, v19, OS_LOG_TYPE_DEFAULT, "#I Peak bandwidth already set to : %u", &__p, 8u);
    }
  }

  else
  {
    if (v20)
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = 67109376;
      HIDWORD(__p.__r_.__value_.__r.__words[0]) = v18;
      LOWORD(__p.__r_.__value_.__r.__words[1]) = 1024;
      *(&__p.__r_.__value_.__r.__words[1] + 2) = v17;
      _os_log_impl(&dword_23C1C4000, v19, OS_LOG_TYPE_DEFAULT, "#I Setting peak bandwidth from %u Mbps to %u Mbps", &__p, 0xEu);
      v17 = v22;
    }

    *(a1 + 320) = v17;
    v21 = *(a1 + 128);
    if (v21)
    {
      abm::trace::TraceReader::updateTraceBandwidth(v21);
    }
  }

LABEL_12:
  v15 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_23C243394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL DALTrace::setPropFlushTimerInterval_sync(uint64_t a1, int a2, char *a3, const std::string *a4)
{
  v43 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 324) & 1) == 0)
  {
    v14 = *(a1 + 40);
    result = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (result)
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      v16 = "Unable to set timer when bbproxy is active";
LABEL_13:
      v17 = v14;
      v18 = 2;
LABEL_20:
      _os_log_error_impl(&dword_23C1C4000, v17, OS_LOG_TYPE_ERROR, v16, &buf, v18);
      result = 0;
      v21 = *MEMORY[0x277D85DE8];
      return result;
    }

LABEL_22:
    v22 = *MEMORY[0x277D85DE8];
    return result;
  }

  v5 = *(a1 + 200);
  if (v5 != 1)
  {
    v19 = *(a1 + 40);
    result = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v20 = "Unknown";
      if (!v5)
      {
        v20 = "Disabled";
      }

      if (v5 == 2)
      {
        v20 = "Background";
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = v20;
      v16 = "Flush timer can only be set when log mode is streaming, current log mode: %s";
      v17 = v19;
      v18 = 12;
      goto LABEL_20;
    }

    goto LABEL_22;
  }

  v41 = 0;
  util::convert<unsigned int>(a4, &v41, 0);
  if ((prop::bbtrace::set(a3, a4) & 1) == 0)
  {
    v14 = *(a1 + 40);
    result = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_22;
    }

    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    v16 = "Failed to set flush timer property";
    goto LABEL_13;
  }

  v40 = 0;
  memset(&buf, 0, sizeof(buf));
  v8 = prop::bbtrace::get(a3, &buf);
  if (v8)
  {
    v8 = util::convert<unsigned int>(&buf, &v40, 0);
  }

  if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v9 = v8;
    if (v8)
    {
      goto LABEL_8;
    }

LABEL_24:
    v24 = *(a1 + 40);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_23C1C4000, v24, OS_LOG_TYPE_ERROR, "Failed to get flush timer property", &buf, 2u);
    }

    goto LABEL_26;
  }

  v23 = v8;
  operator delete(buf.__r_.__value_.__l.__data_);
  v9 = v23;
  if ((v23 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_8:
  v10 = v40;
  v11 = *(a1 + 328);
  v12 = *(a1 + 40);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v10 != v11)
  {
    if (v13)
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 67109376;
      HIDWORD(buf.__r_.__value_.__r.__words[0]) = v10;
      LOWORD(buf.__r_.__value_.__r.__words[1]) = 1024;
      *(&buf.__r_.__value_.__r.__words[1] + 2) = v11;
      _os_log_impl(&dword_23C1C4000, v12, OS_LOG_TYPE_DEFAULT, "#I Setting flush timer from %u to %u", &buf, 0xEu);
    }

    v26 = *(a1 + 16);
    if (!v26 || (v27 = *(a1 + 8), (v28 = std::__shared_weak_count::lock(v26)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v29 = v28;
    p_shared_weak_owners = &v28->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v28->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v28->__on_zero_shared)(v28);
      std::__shared_weak_count::__release_weak(v29);
    }

    memset(&buf, 170, 16);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZN8DALTrace30setPropFlushTimerInterval_syncEN8dispatch5groupERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEESA__block_invoke;
    aBlock[3] = &__block_descriptor_tmp_143_0;
    aBlock[4] = a1;
    aBlock[5] = v27;
    v38 = v29;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    v39 = v40;
    v31 = _Block_copy(aBlock);
    v32 = *(a1 + 24);
    if (v32)
    {
      dispatch_retain(*(a1 + 24));
    }

    buf.__r_.__value_.__r.__words[0] = v31;
    buf.__r_.__value_.__l.__size_ = v32;
    v33 = v40;
    if (v31)
    {
      v34 = _Block_copy(v31);
    }

    else
    {
      v34 = 0;
    }

    v36[0] = v34;
    v36[1] = v32;
    if (v32)
    {
      dispatch_retain(v32);
    }

    DALTrace::enableTimer_sync(a1, v33, v36);
    if (v32)
    {
      dispatch_release(v32);
    }

    if (v34)
    {
      _Block_release(v34);
    }

    if (v32)
    {
      dispatch_release(v32);
    }

    if (v31)
    {
      _Block_release(v31);
    }

    if (v38)
    {
      std::__shared_weak_count::__release_weak(v38);
    }

    std::__shared_weak_count::__release_weak(v29);
    goto LABEL_51;
  }

  if (!v13)
  {
LABEL_26:
    result = v9;
    v25 = *MEMORY[0x277D85DE8];
    return result;
  }

  LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
  HIDWORD(buf.__r_.__value_.__r.__words[0]) = v10;
  _os_log_impl(&dword_23C1C4000, v12, OS_LOG_TYPE_DEFAULT, "#I Flush timer already set to %u", &buf, 8u);
LABEL_51:
  result = v9;
  v35 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23C243844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN8DALTrace30setPropFlushTimerInterval_syncEN8dispatch5groupERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEESA__block_invoke(uint64_t a1, uint64_t *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 48);
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (*(a1 + 40))
      {
        v8 = *a2;
        if (*a2)
        {
          v9 = *(v5 + 40);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v10 = *(a1 + 56);
            v14 = 67109378;
            v15 = v10;
            v16 = 2112;
            v17 = v8;
            _os_log_error_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_ERROR, "Failed to set flush timer interval to %u (%@)", &v14, 0x12u);
          }
        }

        else
        {
          v11 = *(a1 + 56);
          *(v5 + 328) = v11;
          v12 = *(v5 + 40);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v14 = 67109120;
            v15 = v11;
            _os_log_impl(&dword_23C1C4000, v12, OS_LOG_TYPE_DEFAULT, "#I Flush timer set to %u successfully", &v14, 8u);
          }
        }
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

BOOL DALTrace::moveBootLog_sync(uint64_t a1, const __CFDictionary **a2)
{
  v61 = *MEMORY[0x277D85DE8];
  v57[0] = 0;
  v57[1] = 0;
  v58 = 0;
  v56[0] = 0xAAAAAAAAAAAAAAAALL;
  v56[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v56, *a2);
  memset(&v55[3], 170, 24);
  strcpy(&__p, "kTraceFilterActionNone");
  HIBYTE(__p.st_gid) = 22;
  ctu::cf::MakeCFString::MakeCFString(v55, "kKeyTraceFilterAction");
  ctu::cf::map_adapter::getString();
  MEMORY[0x23EECD8F0](v55);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    operator delete(*&__p.st_dev);
  }

  memset(v55, 170, 24);
  v3 = *MEMORY[0x277CECB88];
  v4 = strlen(*MEMORY[0x277CECB88]);
  if (v4 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    p_p = operator new(v7);
    __p.st_ino = v5;
    *&__p.st_uid = v7 | 0x8000000000000000;
    *&__p.st_dev = p_p;
    goto LABEL_11;
  }

  HIBYTE(__p.st_gid) = v4;
  p_p = &__p;
  if (v4)
  {
LABEL_11:
    memmove(p_p, v3, v5);
  }

  v8 = *MEMORY[0x277CECBB8];
  *(&p_p->st_dev + v5) = 0;
  ctu::cf::MakeCFString::MakeCFString(&__dst, v8);
  ctu::cf::map_adapter::getString();
  MEMORY[0x23EECD8F0](&__dst);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    operator delete(*&__p.st_dev);
  }

  v9 = abm::trace::kSnapshotFolder[0];
  v10 = strlen(abm::trace::kSnapshotFolder[0]);
  if (v10 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    if ((v10 | 7) == 0x17)
    {
      v13 = 25;
    }

    else
    {
      v13 = (v10 | 7) + 1;
    }

    p_dst = operator new(v13);
    __dst.__r_.__value_.__l.__size_ = v11;
    __dst.__r_.__value_.__r.__words[2] = v13 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
    goto LABEL_22;
  }

  *(&__dst.__r_.__value_.__s + 23) = v10;
  p_dst = &__dst;
  if (v10)
  {
LABEL_22:
    memmove(p_dst, v9, v11);
  }

  p_dst->__r_.__value_.__s.__data_[v11] = 0;
  ctu::cf::MakeCFString::MakeCFString(&v52, "kKeyTraceDumpStatePath");
  ctu::cf::map_adapter::getString();
  MEMORY[0x23EECD8F0](&v52);
  if (SHIBYTE(v58) < 0)
  {
    operator delete(v57[0]);
  }

  *v57 = *&__p.st_dev;
  v58 = *&__p.st_uid;
  HIBYTE(__p.st_gid) = 0;
  LOBYTE(__p.st_dev) = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v14 = operator new(0x48uLL);
  __dst.__r_.__value_.__r.__words[0] = v14;
  *&__dst.__r_.__value_.__r.__words[1] = xmmword_23C32DC60;
  strcpy(v14, "/private/var/wireless/Library/Logs/AppleBasebandManager/Boot.scratch");
  qmemcpy(v51, "Manager/Boot.scrgs/AppleBasebandeless/Library/Lo/private/var/wir", sizeof(v51));
  v15.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v15.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&__p.st_blksize = v15;
  *__p.st_qspare = v15;
  __p.st_birthtimespec = v15;
  *&__p.st_size = v15;
  __p.st_mtimespec = v15;
  __p.st_ctimespec = v15;
  *&__p.st_uid = v15;
  __p.st_atimespec = v15;
  *&__p.st_dev = v15;
  if (stat(v14, &__p))
  {
    LODWORD(v16) = 0;
  }

  else
  {
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &__dst;
    }

    else
    {
      v17 = __dst.__r_.__value_.__r.__words[0];
    }

    v18 = opendir(v17);
    v16 = v18;
    if (v18)
    {
      v19 = readdir(v18);
      closedir(v16);
      LODWORD(v16) = v19 != 0;
    }
  }

  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v16)
    {
      goto LABEL_36;
    }

LABEL_47:
    v28 = *(a1 + 40);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p.st_dev) = 0;
      _os_log_impl(&dword_23C1C4000, v28, OS_LOG_TYPE_DEFAULT, "#I No boot log present", &__p, 2u);
    }

    v29 = 1;
    if (SHIBYTE(v55[2]) < 0)
    {
      goto LABEL_50;
    }

    goto LABEL_86;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
  if (!v16)
  {
    goto LABEL_47;
  }

LABEL_36:
  memset(&__p, 170, 24);
  v20 = abm::trace::kLogDirPrefix[0];
  v21 = SHIBYTE(v58);
  if (v58 >= 0)
  {
    v22 = HIBYTE(v58);
  }

  else
  {
    v22 = v57[1];
  }

  v23 = strlen(abm::trace::kLogDirPrefix[0]);
  v24 = v22 + v23;
  if (v22 + v23 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v25 = v23;
  if (v24 <= 0x16)
  {
    memset(&v52, 0, sizeof(v52));
    v27 = &v52;
    *(&v52.__r_.__value_.__s + 23) = v22 + v23;
    if (!v22)
    {
      goto LABEL_58;
    }

    goto LABEL_54;
  }

  if ((v24 | 7) == 0x17)
  {
    v26 = 25;
  }

  else
  {
    v26 = (v24 | 7) + 1;
  }

  v27 = operator new(v26);
  v52.__r_.__value_.__l.__size_ = v24;
  v52.__r_.__value_.__r.__words[2] = v26 | 0x8000000000000000;
  v52.__r_.__value_.__r.__words[0] = v27;
  if (v22)
  {
LABEL_54:
    if (v21 >= 0)
    {
      v31 = v57;
    }

    else
    {
      v31 = v57[0];
    }

    memmove(v27, v31, v22);
  }

LABEL_58:
  v32 = &v27[v22];
  if (v25)
  {
    memmove(v32, v20, v25);
  }

  v32[v25] = 0;
  if (SHIBYTE(v55[2]) >= 0)
  {
    v33 = v55;
  }

  else
  {
    v33 = v55[0];
  }

  if (SHIBYTE(v55[2]) >= 0)
  {
    v34 = HIBYTE(v55[2]);
  }

  else
  {
    v34 = v55[1];
  }

  v35 = std::string::append(&v52, v33, v34);
  v36 = *&v35->__r_.__value_.__l.__data_;
  __dst.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
  *&__dst.__r_.__value_.__l.__data_ = v36;
  v35->__r_.__value_.__l.__size_ = 0;
  v35->__r_.__value_.__r.__words[2] = 0;
  v35->__r_.__value_.__r.__words[0] = 0;
  v37 = strlen(abm::trace::kBootSnapshotDirectorySuffix[0]);
  v38 = std::string::append(&__dst, abm::trace::kBootSnapshotDirectorySuffix[0], v37);
  v39 = *&v38->__r_.__value_.__l.__data_;
  v54 = v38->__r_.__value_.__r.__words[2];
  *v53 = v39;
  v38->__r_.__value_.__l.__size_ = 0;
  v38->__r_.__value_.__r.__words[2] = 0;
  v38->__r_.__value_.__r.__words[0] = 0;
  support::fs::createUniquePath(v53, &__p);
  if ((SHIBYTE(v54) & 0x80000000) == 0)
  {
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_68;
    }

LABEL_78:
    operator delete(__dst.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_69;
    }

LABEL_79:
    operator delete(v52.__r_.__value_.__l.__data_);
    goto LABEL_69;
  }

  operator delete(v53[0]);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_78;
  }

LABEL_68:
  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_79;
  }

LABEL_69:
  support::fs::createDir(&__p, 0x1EDu, 1);
  v40 = operator new(0x48uLL);
  strcpy(&v40[2].__pn_.__r_.__value_.__s.__data_[16], "atch");
  *&v40->__pn_.__r_.__value_.__l.__data_ = v51[3];
  *&v40->__pn_.__r_.__value_.__r.__words[2] = v51[2];
  *&v40[1].__pn_.__r_.__value_.__r.__words[1] = v51[1];
  *&v40[2].__pn_.__r_.__value_.__l.__data_ = v51[0];
  if ((__p.st_gid & 0x80000000) == 0)
  {
    v42 = &__p;
  }

  else
  {
    v42 = *&__p.st_dev;
  }

  v43 = v40;
  rename(v40, v42, v41);
  v45 = v44;
  v29 = v44 == 0;
  operator delete(v43);
  v46 = *(a1 + 40);
  if (v45)
  {
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v47 = &__p;
      if ((__p.st_gid & 0x80000000) != 0)
      {
        v47 = *&__p.st_dev;
      }

      LODWORD(__dst.__r_.__value_.__l.__data_) = 136315394;
      *(__dst.__r_.__value_.__r.__words + 4) = "/private/var/wireless/Library/Logs/AppleBasebandManager/Boot.scratch";
      WORD2(__dst.__r_.__value_.__r.__words[1]) = 2080;
      *(&__dst.__r_.__value_.__r.__words[1] + 6) = v47;
      _os_log_error_impl(&dword_23C1C4000, v46, OS_LOG_TYPE_ERROR, "Failed to move %s to %s", &__dst, 0x16u);
    }
  }

  else if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    v48 = &__p;
    if ((__p.st_gid & 0x80000000) != 0)
    {
      v48 = *&__p.st_dev;
    }

    LODWORD(__dst.__r_.__value_.__l.__data_) = 136315138;
    *(__dst.__r_.__value_.__r.__words + 4) = v48;
    _os_log_impl(&dword_23C1C4000, v46, OS_LOG_TYPE_DEFAULT, "#I Boot log is placed in %s", &__dst, 0xCu);
  }

  if ((SHIBYTE(__p.st_gid) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v55[2]) & 0x80000000) == 0)
    {
      goto LABEL_86;
    }

LABEL_50:
    operator delete(v55[0]);
    if ((SHIBYTE(v55[5]) & 0x80000000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_51;
  }

  operator delete(*&__p.st_dev);
  if (SHIBYTE(v55[2]) < 0)
  {
    goto LABEL_50;
  }

LABEL_86:
  if ((SHIBYTE(v55[5]) & 0x80000000) == 0)
  {
LABEL_87:
    MEMORY[0x23EECD940](v56);
    if ((SHIBYTE(v58) & 0x80000000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_52;
  }

LABEL_51:
  operator delete(v55[3]);
  MEMORY[0x23EECD940](v56);
  if ((SHIBYTE(v58) & 0x80000000) == 0)
  {
LABEL_88:
    v49 = *MEMORY[0x277D85DE8];
    return v29;
  }

LABEL_52:
  operator delete(v57[0]);
  v30 = *MEMORY[0x277D85DE8];
  return v29;
}

void sub_23C24413C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, void *__p, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (a57 < 0)
  {
    operator delete(__p);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  MEMORY[0x23EECD940](&a43);
  if (a50 < 0)
  {
    operator delete(a45);
  }

  _Unwind_Resume(a1);
}

uint64_t Preferences::getPreference<BOOL>(uint64_t (***a1)(void, uint64_t), const char *a2, ctu::cf *a3)
{
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  ctu::cf::MakeCFString::MakeCFString(&v11, a2);
  v5 = (**a1)(a1, v11);
  v6 = v5;
  if (v5)
  {
    v7 = CFGetTypeID(v5);
    if (v7 == CFBooleanGetTypeID())
    {
      v9 = ctu::cf::assign(a3, v6, v8);
    }

    else
    {
      v9 = 0;
    }

    CFRelease(v6);
  }

  else
  {
    v9 = 0;
  }

  MEMORY[0x23EECD8F0](&v11);
  return v9;
}

void *std::__function::__value_func<void ()(xpc::dict const&)>::swap[abi:ne200100](void *result, void *a2)
{
  v8[3] = *MEMORY[0x277D85DE8];
  if (a2 == result)
  {
LABEL_8:
    v6 = *MEMORY[0x277D85DE8];
    return result;
  }

  v3 = result;
  result = result[3];
  v4 = a2[3];
  if (result != v3)
  {
    if (v4 != a2)
    {
      v3[3] = v4;
      a2[3] = result;
      v5 = *MEMORY[0x277D85DE8];
      return result;
    }

    (*(*v4 + 24))(a2[3], v3);
    result = (*(*a2[3] + 32))(a2[3]);
    a2[3] = v3[3];
    v3[3] = v3;
    goto LABEL_8;
  }

  if (v4 == a2)
  {
    memset(v8, 170, 24);
    (*(*result + 24))(result, v8);
    (*(*v3[3] + 32))(v3[3]);
    v3[3] = 0;
    (*(*a2[3] + 24))(a2[3], v3);
    (*(*a2[3] + 32))(a2[3]);
    a2[3] = 0;
    v3[3] = v3;
    (*(v8[0] + 24))(v8, a2);
    result = (*(v8[0] + 32))(v8);
  }

  else
  {
    (*(*result + 24))(result, a2);
    result = (*(*v3[3] + 32))(v3[3]);
    v3[3] = a2[3];
  }

  a2[3] = a2;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23C244618(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

abm::trace::TraceReader::Config *abm::trace::TraceReader::Config::Config(abm::trace::TraceReader::Config *this, const abm::trace::TraceReader::Config *a2)
{
  v4 = *a2;
  *this = *a2;
  if (v4)
  {
    dispatch_retain(v4);
  }

  *(this + 1) = *(a2 + 1);
  TraceFileCollection::Parameters::Parameters((this + 16), (a2 + 16));
  TraceFileCollection::Parameters::Parameters((this + 144), (a2 + 144));
  v5 = *(a2 + 34);
  *(this + 70) = *(a2 + 70);
  *(this + 34) = v5;
  *(this + 72) = *(a2 + 72);
  v6 = *(a2 + 40);
  if (!v6)
  {
    goto LABEL_6;
  }

  if (v6 != (a2 + 296))
  {
    v6 = (*(*v6 + 16))(v6);
LABEL_6:
    *(this + 40) = v6;
    *(this + 82) = *(a2 + 82);
    return this;
  }

  *(this + 40) = this + 296;
  (*(**(a2 + 40) + 24))(*(a2 + 40));
  *(this + 82) = *(a2 + 82);
  return this;
}

void sub_23C244720(_Unwind_Exception *a1)
{
  TraceFileCollection::Parameters::~Parameters((v1 + 144));
  TraceFileCollection::Parameters::~Parameters((v1 + 16));
  if (*v1)
  {
    dispatch_release(*v1);
  }

  _Unwind_Resume(a1);
}

TraceFileCollection::Parameters *TraceFileCollection::Parameters::Parameters(TraceFileCollection::Parameters *this, const TraceFileCollection::Parameters *a2)
{
  *this = *a2;
  if ((*(a2 + 31) & 0x80000000) == 0)
  {
    v4 = *(a2 + 8);
    *(this + 3) = *(a2 + 3);
    *(this + 8) = v4;
    *(this + 4) = 0;
    *(this + 5) = 0;
    *(this + 6) = 0;
    v6 = *(a2 + 4);
    v5 = *(a2 + 5);
    v7 = v5 - v6;
    if (v5 == v6)
    {
      goto LABEL_3;
    }

LABEL_6:
    if ((v7 & 0x8000000000000000) != 0)
    {
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v10 = operator new(v7);
    *(this + 4) = v10;
    *(this + 5) = v10;
    v11 = &v10[v7];
    *(this + 6) = &v10[v7];
    memcpy(v10, v6, v7);
    *(this + 5) = v11;
    if ((*(a2 + 79) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  std::string::__init_copy_ctor_external((this + 8), *(a2 + 1), *(a2 + 2));
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  v6 = *(a2 + 4);
  v9 = *(a2 + 5);
  v7 = v9 - v6;
  if (v9 != v6)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((*(a2 + 79) & 0x80000000) == 0)
  {
LABEL_4:
    v8 = *(a2 + 56);
    *(this + 9) = *(a2 + 9);
    *(this + 56) = v8;
    goto LABEL_9;
  }

LABEL_8:
  std::string::__init_copy_ctor_external((this + 56), *(a2 + 7), *(a2 + 8));
LABEL_9:
  if (*(a2 + 103) < 0)
  {
    std::string::__init_copy_ctor_external((this + 80), *(a2 + 10), *(a2 + 11));
  }

  else
  {
    v12 = *(a2 + 5);
    *(this + 12) = *(a2 + 12);
    *(this + 5) = v12;
  }

  v13 = *(a2 + 104);
  *(this + 30) = *(a2 + 30);
  *(this + 104) = v13;
  return this;
}

void sub_23C244888(_Unwind_Exception *a1)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
    TraceFileCollection::HeaderOptions::~HeaderOptions(v1);
    _Unwind_Resume(a1);
  }

  TraceFileCollection::HeaderOptions::~HeaderOptions(v1);
  _Unwind_Resume(a1);
}

void sub_23C2448C0(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 40) = v5;
    operator delete(v5);
    if ((*(v1 + 31) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v1 + 31) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v2);
  _Unwind_Resume(exception_object);
}

void TraceFileCollection::HeaderOptions::~HeaderOptions(TraceFileCollection::HeaderOptions *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void abm::trace::TraceReader::Config::~Config(abm::trace::TraceReader::Config *this)
{
  v2 = this + 296;
  v3 = *(this + 40);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    if ((*(this + 247) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    if ((*(this + 247) & 0x80000000) == 0)
    {
LABEL_5:
      if ((*(this + 223) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_20;
    }
  }

  operator delete(*(this + 28));
  if ((*(this + 223) & 0x80000000) == 0)
  {
LABEL_6:
    v4 = *(this + 22);
    if (!v4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_20:
  operator delete(*(this + 25));
  v4 = *(this + 22);
  if (v4)
  {
LABEL_7:
    *(this + 23) = v4;
    operator delete(v4);
  }

LABEL_8:
  if (*(this + 175) < 0)
  {
    operator delete(*(this + 19));
    if ((*(this + 119) & 0x80000000) == 0)
    {
LABEL_10:
      if ((*(this + 95) & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_24;
    }
  }

  else if ((*(this + 119) & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  operator delete(*(this + 12));
  if ((*(this + 95) & 0x80000000) == 0)
  {
LABEL_11:
    v5 = *(this + 6);
    if (!v5)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_24:
  operator delete(*(this + 9));
  v5 = *(this + 6);
  if (v5)
  {
LABEL_12:
    *(this + 7) = v5;
    operator delete(v5);
  }

LABEL_13:
  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  if (*this)
  {
    dispatch_release(*this);
  }
}

void TraceDataRateObserver::Parameters::~Parameters(TraceDataRateObserver::Parameters *this)
{
  v1 = this + 8;
  v2 = *(this + 4);
  if (v2 == v1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

void SharedData::create_default_global(atomic_ullong *a1@<X8>)
{
  v3 = operator new(0x60uLL);
  __p = v3;
  strcpy(v3, "/private/var/wireless/Library/Preferences/com.apple.AppleBasebandManager.Statistics.plist");
  v4.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v4.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v10.st_blksize = v4;
  *v10.st_qspare = v4;
  v10.st_birthtimespec = v4;
  *&v10.st_size = v4;
  v10.st_mtimespec = v4;
  v10.st_ctimespec = v4;
  *&v10.st_uid = v4;
  v10.st_atimespec = v4;
  v9 = xmmword_23C32DC70;
  *&v10.st_dev = v4;
  if (!stat(v3, &v10) && remove(v3, v5))
  {
    if (v9 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    unlink(p_p);
  }

  v7 = operator new(0x30uLL);
  MEMORY[0x23EECD950](v7, @"com.apple.AppleBasebandManager.data", *MEMORY[0x277CBF040]);
  v7[3] = 0;
  v7[4] = 0;
  *(v7 + 10) = 0;
  std::shared_ptr<SharedData>::shared_ptr[abi:ne200100]<SharedData,0>(a1, v7);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p);
  }
}

void sub_23C244D5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  operator delete(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

atomic_ullong *std::shared_ptr<SharedData>::shared_ptr[abi:ne200100]<SharedData,0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_284EFB538;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (a2)
  {
    v6 = *(a2 + 32);
    if (v6)
    {
      if (v6->__shared_owners_ == -1)
      {
        atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
        *(a2 + 24) = a2;
        *(a2 + 32) = v4;
        v7 = v4;
        std::__shared_weak_count::__release_weak(v6);
        v4 = v7;
        if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 24) = a2;
      *(a2 + 32) = v4;
      if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_7:
        v8 = v4;
        (*(*v4 + 16))();
        std::__shared_weak_count::__release_weak(v8);
      }
    }
  }

  return a1;
}

void sub_23C244EC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<SharedData>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<SharedData *,std::shared_ptr<SharedData>::__shared_ptr_default_delete<SharedData,SharedData>,std::allocator<SharedData>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<SharedData *,std::shared_ptr<SharedData>::__shared_ptr_default_delete<SharedData,SharedData>,std::allocator<SharedData>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = *(v1 + 32);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    v3 = MEMORY[0x23EECD960](v1);

    operator delete(v3);
  }
}

uint64_t std::__shared_ptr_pointer<SharedData *,std::shared_ptr<SharedData>::__shared_ptr_default_delete<SharedData,SharedData>,std::allocator<SharedData>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x800000023C32DD1DLL)
  {
    if (((v2 & 0x800000023C32DD1DLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000023C32DD1DLL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023C32DD1DLL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *std::unique_ptr<SharedData>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 32);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = MEMORY[0x23EECD960](v1);
    operator delete(v4);
    return v2;
  }

  return result;
}

uint64_t ctu::PthreadMutexGuardPolicy<SharedData>::~PthreadMutexGuardPolicy(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 72);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

atomic_ullong *std::shared_ptr<DALTrace>::shared_ptr[abi:ne200100]<DALTrace,std::shared_ptr<DALTrace> ctu::SharedSynchronizable<Trace>::make_shared_ptr<DALTrace>(DALTrace*)::{lambda(DALTrace*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_284EFB588;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 8) = a2;
      *(a2 + 16) = v4;
      v8 = v4;
      std::__shared_weak_count::__release_weak(v6);
      v4 = v8;
      if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_8;
      }
    }

    return a1;
  }

  atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
  *(a2 + 8) = a2;
  *(a2 + 16) = v4;
  if (atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

LABEL_8:
  v9 = v4;
  (*(*v4 + 16))();
  std::__shared_weak_count::__release_weak(v9);
  return a1;
}

void sub_23C24520C(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<DALTrace> ctu::SharedSynchronizable<Trace>::make_shared_ptr<DALTrace>(DALTrace*)::{lambda(DALTrace*)#1}::operator() const(DALTrace*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<DALTrace *,std::shared_ptr<DALTrace> ctu::SharedSynchronizable<Trace>::make_shared_ptr<DALTrace>(DALTrace*)::{lambda(DALTrace *)#1},std::allocator<DALTrace>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<DALTrace *,std::shared_ptr<DALTrace> ctu::SharedSynchronizable<Trace>::make_shared_ptr<DALTrace>(DALTrace*)::{lambda(DALTrace *)#1},std::allocator<DALTrace>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI5TraceE15make_shared_ptrI8DALTraceEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI5TraceE15make_shared_ptrI8DALTraceEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI5TraceE15make_shared_ptrI8DALTraceEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI5TraceE15make_shared_ptrI8DALTraceEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<DALTrace> ctu::SharedSynchronizable<Trace>::make_shared_ptr<DALTrace>(DALTrace*)::{lambda(DALTrace*)#1}::operator() const(DALTrace*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void ___ZNK3ctu20SharedSynchronizableI5TraceE20execute_wrapped_syncIZN8DALTrace4initENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEENS5_8weak_ptrIN3abm19BasebandTracingTaskEEEN8dispatch5groupEE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSJ__block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  v2 = *(v1 + 7);
  if (*(v1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v31, *v1, *(v1 + 1));
  }

  else
  {
    v3 = *v1;
    v31.__r_.__value_.__r.__words[2] = *(v1 + 2);
    *&v31.__r_.__value_.__l.__data_ = v3;
  }

  v4 = *(v1 + 4);
  v29 = *(v1 + 3);
  v30 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(v1 + 5);
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  **(v1 + 6) = Trace::init(v2, &v31.__r_.__value_.__l.__data_, &v29, &object);
  if (object)
  {
    dispatch_release(object);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_weak(v30);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
    if (**(v1 + 6))
    {
LABEL_14:
      *(&__p.__r_.__value_.__s + 23) = 7;
      strcpy(&__p, "Enabled");
      memset(buf, 0, sizeof(buf));
      *&v34 = 0;
      if (prop::bbtrace::get(&__p, buf))
      {
        util::convert<BOOL>(buf, (v2 + 104), 0);
      }

      if (SBYTE7(v34) < 0)
      {
        operator delete(*buf);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_18;
        }
      }

      else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      operator delete(__p.__r_.__value_.__l.__data_);
LABEL_18:
      DALTrace::initBootSessionPrefs_sync(v2);
      *(&__p.__r_.__value_.__s + 23) = 7;
      strcpy(&__p, "History");
      memset(buf, 0, sizeof(buf));
      *&v34 = 0;
      if (prop::bbtrace::get(&__p, buf))
      {
        util::convert<int>(buf, (v2 + 108), 0);
      }

      if (SBYTE7(v34) < 0)
      {
        operator delete(*buf);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_22;
        }
      }

      else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }

      operator delete(__p.__r_.__value_.__l.__data_);
LABEL_22:
      *(&__p.__r_.__value_.__s + 23) = 18;
      strcpy(&__p, "MaxMemoryFileCount");
      memset(buf, 0, sizeof(buf));
      *&v34 = 0;
      if (prop::bbtrace::get(&__p, buf))
      {
        util::convert<unsigned int>(buf, (v2 + 116), 0);
      }

      if (SBYTE7(v34) < 0)
      {
        operator delete(*buf);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_26;
        }
      }

      else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_26;
      }

      operator delete(__p.__r_.__value_.__l.__data_);
LABEL_26:
      *(&__p.__r_.__value_.__s + 23) = 8;
      strcpy(&__p, "FileSize");
      memset(buf, 0, sizeof(buf));
      *&v34 = 0;
      if (prop::bbtrace::get(&__p, buf))
      {
        util::convert<unsigned int>(buf, (v2 + 112), 0);
      }

      if (SBYTE7(v34) < 0)
      {
        operator delete(*buf);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_30;
        }
      }

      else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

      operator delete(__p.__r_.__value_.__l.__data_);
LABEL_30:
      *(&__p.__r_.__value_.__s + 23) = 6;
      strcpy(&__p, "SizeIO");
      memset(buf, 0, sizeof(buf));
      *&v34 = 0;
      if (prop::bbtrace::get(&__p, buf))
      {
        util::convert<unsigned int>(buf, (v2 + 144), 0);
      }

      if (SBYTE7(v34) < 0)
      {
        operator delete(*buf);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_34;
        }
      }

      else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_34;
      }

      operator delete(__p.__r_.__value_.__l.__data_);
LABEL_34:
      *(&__p.__r_.__value_.__s + 23) = 14;
      strcpy(&__p, "NumberOfReadIO");
      memset(buf, 0, sizeof(buf));
      *&v34 = 0;
      if (prop::bbtrace::get(&__p, buf))
      {
        util::convert<unsigned int>(buf, (v2 + 148), 0);
      }

      if (SBYTE7(v34) < 0)
      {
        operator delete(*buf);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_38;
        }
      }

      else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_38:
        *(&__p.__r_.__value_.__s + 23) = 8;
        strcpy(&__p, "Log_Mode");
        memset(buf, 0, sizeof(buf));
        *&v34 = 0;
        if (prop::bbtrace::get(&__p, buf))
        {
          v32 = -1431655766;
          if (util::convert<int>(buf, &v32, 0))
          {
            *(v2 + 200) = v32;
          }
        }

        if (SBYTE7(v34) < 0)
        {
          operator delete(*buf);
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_43;
          }
        }

        else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_43:
          *(&__p.__r_.__value_.__s + 23) = 14;
          strcpy(&__p, "Sleep_Log_Mode");
          memset(buf, 0, sizeof(buf));
          *&v34 = 0;
          if (prop::bbtrace::get(&__p, buf))
          {
            v32 = -1431655766;
            if (util::convert<int>(buf, &v32, 0))
            {
              *(v2 + 232) = v32;
            }
          }

          if (SBYTE7(v34) < 0)
          {
            operator delete(*buf);
            if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_48;
            }
          }

          else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_48;
          }

          operator delete(__p.__r_.__value_.__l.__data_);
LABEL_48:
          *(&__p.__r_.__value_.__s + 23) = 21;
          strcpy(&__p, "Retain_Previous_Trace");
          memset(buf, 0, sizeof(buf));
          *&v34 = 0;
          if (prop::bbtrace::get(&__p, buf))
          {
            util::convert<BOOL>(buf, (v2 + 296), 0);
          }

          if (SBYTE7(v34) < 0)
          {
            operator delete(*buf);
            if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_52;
            }
          }

          else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_52;
          }

          operator delete(__p.__r_.__value_.__l.__data_);
LABEL_52:
          *(&__p.__r_.__value_.__s + 23) = 17;
          *&__p.__r_.__value_.__l.__data_ = *"PeakBandwidthMbps";
          LOWORD(__p.__r_.__value_.__r.__words[2]) = str_18_0[16];
          memset(buf, 0, sizeof(buf));
          *&v34 = 0;
          if (prop::bbtrace::get(&__p, buf))
          {
            util::convert<unsigned int>(buf, (v2 + 320), 0);
          }

          if (SBYTE7(v34) < 0)
          {
            operator delete(*buf);
            if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_56;
            }
          }

          else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_56;
          }

          operator delete(__p.__r_.__value_.__l.__data_);
LABEL_56:
          __p.__r_.__value_.__r.__words[0] = operator new(0x19uLL);
          *&__p.__r_.__value_.__r.__words[1] = xmmword_23C32CA60;
          strcpy(__p.__r_.__value_.__l.__data_, "TraceFlushTimerInterval");
          memset(buf, 0, sizeof(buf));
          *&v34 = 0;
          if (prop::bbtrace::get(&__p, buf))
          {
            util::convert<unsigned int>(buf, (v2 + 328), 0);
          }

          if (SBYTE7(v34) < 0)
          {
            operator delete(*buf);
            if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_60;
            }
          }

          else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_60;
          }

          operator delete(__p.__r_.__value_.__l.__data_);
LABEL_60:
          *(&__p.__r_.__value_.__s + 23) = 14;
          strcpy(&__p, "Error_Handling");
          memset(buf, 0, sizeof(buf));
          *&v34 = 0;
          if (prop::bbtrace::get(&__p, buf))
          {
            v32 = -1431655766;
            if (util::convert<int>(buf, &v32, 0))
            {
              v6 = v32;
            }

            else
            {
              v6 = 2;
            }

            if ((SBYTE7(v34) & 0x80000000) == 0)
            {
LABEL_71:
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              *(v2 + 264) = v6;
              memset(&__p, 0, sizeof(__p));
              BYTE7(v34) = 9;
              strcpy(buf, "Log_Level");
              prop::bbtrace::get(buf, &__p);
              if (SBYTE7(v34) < 0)
              {
                operator delete(*buf);
              }

              *&v8 = 0xAAAAAAAAAAAAAAAALL;
              *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v35 = v8;
              v36 = v8;
              *buf = v8;
              v34 = v8;
              std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](buf, ".*\\.bin", 0);
              v9 = std::regex_match[abi:ne200100]<std::char_traits<char>,std::allocator<char>,char,std::regex_traits<char>>(&__p, buf, 0);
              v10 = v36;
              if (v36 && !atomic_fetch_add((v36 + 8), 0xFFFFFFFFFFFFFFFFLL))
              {
                (v10->__on_zero_shared)(v10);
                std::__shared_weak_count::__release_weak(v10);
                std::locale::~locale(buf);
                if (v9)
                {
LABEL_78:
                  v11 = (v2 + 208);
                  if ((v2 + 208) != &__p)
                  {
                    if (*(v2 + 231) < 0)
                    {
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

                      std::string::__assign_no_alias<false>(v11, p_p, size);
                    }

                    else if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
                    {
                      std::string::__assign_no_alias<true>(v11, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
                    }

                    else
                    {
                      *v11 = *&__p.__r_.__value_.__l.__data_;
                      *(v2 + 224) = *(&__p.__r_.__value_.__l + 2);
                    }
                  }

                  goto LABEL_122;
                }
              }

              else
              {
                std::locale::~locale(buf);
                if (v9)
                {
                  goto LABEL_78;
                }
              }

              *buf = -1431655766;
              if (util::convert<int>(&__p, buf, 0))
              {
                if (*buf > 4u)
                {
                  v12 = "Unknown";
                }

                else
                {
                  v12 = off_278BB8C80[*buf];
                }

                std::string::__assign_external((v2 + 208), v12);
              }

              else
              {
                v13 = *(v2 + 40);
                if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
                {
                  v14 = &__p;
                  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v14 = __p.__r_.__value_.__r.__words[0];
                  }

                  *buf = 136315138;
                  *&buf[4] = v14;
                  _os_log_error_impl(&dword_23C1C4000, v13, OS_LOG_TYPE_ERROR, "Failed to convert level %s", buf, 0xCu);
                }
              }

LABEL_122:
              BYTE7(v34) = 15;
              strcpy(buf, "Sleep_Log_Level");
              prop::bbtrace::get(buf, &__p);
              if (SBYTE7(v34) < 0)
              {
                operator delete(*buf);
              }

              *&v17 = 0xAAAAAAAAAAAAAAAALL;
              *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v35 = v17;
              v36 = v17;
              *buf = v17;
              v34 = v17;
              std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](buf, ".*\\.bin", 0);
              v18 = std::regex_match[abi:ne200100]<std::char_traits<char>,std::allocator<char>,char,std::regex_traits<char>>(&__p, buf, 0);
              v19 = v36;
              if (v36 && !atomic_fetch_add((v36 + 8), 0xFFFFFFFFFFFFFFFFLL))
              {
                (v19->__on_zero_shared)(v19);
                std::__shared_weak_count::__release_weak(v19);
                std::locale::~locale(buf);
                if (v18)
                {
LABEL_127:
                  v20 = (v2 + 240);
                  if ((v2 + 240) != &__p)
                  {
                    if (*(v2 + 263) < 0)
                    {
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

                      std::string::__assign_no_alias<false>(v20, v24, v25);
                    }

                    else if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
                    {
                      std::string::__assign_no_alias<true>(v20, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
                    }

                    else
                    {
                      *v20 = *&__p.__r_.__value_.__l.__data_;
                      *(v2 + 256) = *(&__p.__r_.__value_.__l + 2);
                    }
                  }

LABEL_149:
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }

                  goto LABEL_151;
                }
              }

              else
              {
                std::locale::~locale(buf);
                if (v18)
                {
                  goto LABEL_127;
                }
              }

              *buf = -1431655766;
              if (util::convert<int>(&__p, buf, 0))
              {
                if (*buf > 4u)
                {
                  v21 = "Unknown";
                }

                else
                {
                  v21 = off_278BB8C80[*buf];
                }

                std::string::__assign_external((v2 + 240), v21);
              }

              else
              {
                v22 = *(v2 + 40);
                if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                {
                  v23 = &__p;
                  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v23 = __p.__r_.__value_.__r.__words[0];
                  }

                  *buf = 136315138;
                  *&buf[4] = v23;
                  _os_log_error_impl(&dword_23C1C4000, v22, OS_LOG_TYPE_ERROR, "Failed to convert sleep log level %s", buf, 0xCu);
                }
              }

              goto LABEL_149;
            }
          }

          else
          {
            v6 = 2;
            if ((SBYTE7(v34) & 0x80000000) == 0)
            {
              goto LABEL_71;
            }
          }

          operator delete(*buf);
          goto LABEL_71;
        }

        operator delete(__p.__r_.__value_.__l.__data_);
        goto LABEL_43;
      }

      operator delete(__p.__r_.__value_.__l.__data_);
      goto LABEL_38;
    }
  }

  else if (**(v1 + 6))
  {
    goto LABEL_14;
  }

  v7 = *(v2 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_23C1C4000, v7, OS_LOG_TYPE_ERROR, "Failed to initialize Trace!", buf, 2u);
  }

LABEL_151:
  v26 = *MEMORY[0x277D85DE8];
}

void sub_23C245E20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, dispatch_object_t object, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<DALTrace::init(std::string,std::weak_ptr<abm::BasebandTracingTask>,dispatch::group)::$_1>(DALTrace::init(std::string,std::weak_ptr<abm::BasebandTracingTask>,dispatch::group)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<DALTrace::init(std::string,std::weak_ptr<abm::BasebandTracingTask>,dispatch::group)::$_1,std::default_delete<DALTrace::init(std::string,std::weak_ptr<abm::BasebandTracingTask>,dispatch::group)::$_1>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v1 = 0x7FFFFFFFFFFFFFF7;
  v2 = *a1;
  v3 = **a1;
  v4 = abm::trace::kScratchFolder[0];
  v5 = strlen(abm::trace::kScratchFolder[0]);
  if (v5 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    if ((v5 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v5 | 7) + 1;
    }

    p_dst = operator new(v12);
    *(&__dst + 1) = v6;
    v29 = v12 | 0x8000000000000000;
    *&__dst = p_dst;
LABEL_11:
    memmove(p_dst, v4, v6);
    *(p_dst + v6) = 0;
    v8 = SHIBYTE(v29);
    if ((SHIBYTE(v29) & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

  HIBYTE(v29) = v5;
  p_dst = &__dst;
  if (v5)
  {
    goto LABEL_11;
  }

  LOBYTE(__dst) = 0;
  v8 = SHIBYTE(v29);
  if ((SHIBYTE(v29) & 0x8000000000000000) == 0)
  {
LABEL_5:
    if (v8 - 7 < 0x10)
    {
      v9 = v8 + 16;
      v10 = &__dst;
      v11 = 22;
LABEL_15:
      v13 = 2 * v11;
      if (v9 > 2 * v11)
      {
        v13 = v9;
      }

      if ((v13 | 7) == 0x17)
      {
        v14 = 25;
      }

      else
      {
        v14 = (v13 | 7) + 1;
      }

      if (v13 >= 0x17)
      {
        v1 = v14;
      }

      else
      {
        v1 = 23;
      }

      v15 = v11 == 22;
      goto LABEL_24;
    }

    v19 = &__dst;
LABEL_31:
    *(v19 + v8) = *"BBTrace.scratch/";
    v20 = v8 + 16;
    if (SHIBYTE(v29) < 0)
    {
      *(&__dst + 1) = v8 + 16;
    }

    else
    {
      HIBYTE(v29) = v20 & 0x7F;
    }

    v18 = v19 + v20;
    goto LABEL_35;
  }

LABEL_12:
  v8 = *(&__dst + 1);
  v11 = (v29 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v11 - *(&__dst + 1) >= 0x10)
  {
    v19 = __dst;
    goto LABEL_31;
  }

  v9 = *(&__dst + 1) + 16;
  if (0x7FFFFFFFFFFFFFF7 - (v29 & 0x7FFFFFFFFFFFFFFFLL) < *(&__dst + 1) + 16 - v11)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v10 = __dst;
  if (v11 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_15;
  }

  v15 = 0;
LABEL_24:
  v16 = operator new(v1);
  v17 = v16;
  if (v8)
  {
    memmove(v16, v10, v8);
  }

  *&v17[v8] = *"BBTrace.scratch/";
  if (!v15)
  {
    operator delete(v10);
  }

  *(&__dst + 1) = v9;
  v29 = v1 | 0x8000000000000000;
  *&__dst = v17;
  v18 = &v17[v9];
LABEL_35:
  *v18 = 0;
  *__p = __dst;
  v31 = v29;
  v29 = 0;
  __dst = 0uLL;
  abm::trace::TraceInfo::create();
  v21 = v32;
  v32 = 0uLL;
  v22 = *(v3 + 160);
  *(v3 + 152) = v21;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
    v23 = *(&v32 + 1);
    if (!*(&v32 + 1))
    {
LABEL_39:
      if ((SHIBYTE(v31) & 0x80000000) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_46;
    }
  }

  else
  {
    v23 = *(&v32 + 1);
    if (!*(&v32 + 1))
    {
      goto LABEL_39;
    }
  }

  if (atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_39;
  }

  (v23->__on_zero_shared)(v23);
  std::__shared_weak_count::__release_weak(v23);
  if ((SHIBYTE(v31) & 0x80000000) == 0)
  {
LABEL_40:
    if ((SHIBYTE(v29) & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

LABEL_47:
    operator delete(__dst);
    operator delete(v2);
    v24 = a1;
    if (!a1)
    {
      return;
    }

    goto LABEL_48;
  }

LABEL_46:
  operator delete(__p[0]);
  if (SHIBYTE(v29) < 0)
  {
    goto LABEL_47;
  }

LABEL_41:
  operator delete(v2);
  v24 = a1;
  if (!a1)
  {
    return;
  }

LABEL_48:
  v25 = v24[2];
  if (v25)
  {
    if (!atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v26 = v24;
      (v25->__on_zero_shared)(v25);
      std::__shared_weak_count::__release_weak(v25);
      v24 = v26;
    }
  }

  operator delete(v24);
}

void sub_23C2462A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a15 & 0x80000000) == 0)
  {
    operator delete(v21);
    std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  operator delete(v21);
  std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_23C246310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  operator delete(v9);
  std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<DALTrace::prepare(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>(DALTrace::prepare(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<DALTrace::prepare(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,dispatch_queue_s *::default_delete<DALTrace::prepare(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>)::{lambda(void *)#1}::__invoke(dispatch_group_t **a1)
{
  v2 = *a1;
  v3 = (*a1)[1];
  isa = v3[11].isa;
  if (isa)
  {
    dispatch_retain(v3[11].isa);
    dispatch_group_enter(isa);
  }

  if (v3[13].isa)
  {
    DALTrace::prepare_sync(v3);
  }

  else
  {
    v5 = v3[5].isa;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23C1C4000, v5, OS_LOG_TYPE_DEFAULT, "#I Trace is not enabled; skip prepare processing", buf, 2u);
    }
  }

  if (isa)
  {
    dispatch_group_leave(isa);
    dispatch_release(isa);
  }

  if (*v2)
  {
    dispatch_group_leave(*v2);
    if (*v2)
    {
      dispatch_release(*v2);
    }
  }

  operator delete(v2);
  v6 = a1[2];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  operator delete(a1);
}

void sub_23C246458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t *a10)
{
  if (v10)
  {
    dispatch_group_leave(v10);
    dispatch_release(v10);
  }

  std::unique_ptr<DALTrace::prepare(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,std::default_delete<DALTrace::prepare(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

dispatch_group_t **std::unique_ptr<DALTrace::prepare(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,std::default_delete<DALTrace::prepare(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>::~unique_ptr[abi:ne200100](dispatch_group_t **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*v1)
    {
      dispatch_group_leave(*v1);
      if (*v1)
      {
        dispatch_release(*v1);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<DALTrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>(DALTrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<DALTrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,dispatch_queue_s *::default_delete<DALTrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>)::{lambda(void *)#1}::__invoke(dispatch_group_t **a1)
{
  v2 = *a1;
  v3 = (*a1)[2];
  v4 = *(v3 + 88);
  if (v4)
  {
    dispatch_retain(*(v3 + 88));
    dispatch_group_enter(v4);
  }

  v5 = v2[1];
  if (*(v3 + 104) == 1)
  {
    v8.gr_name = v2[1];
    if (v5)
    {
      dispatch_retain(v5);
    }

    DALTrace::start_sync(v3, &v8);
  }

  else
  {
    *&v8.gr_gid = v2[1];
    if (v5)
    {
      dispatch_retain(v5);
    }

    v8.gr_name = 0;
    v8.gr_passwd = 0;
    DALTrace::stop_sync(v3, &v8.gr_gid, &v8);
  }

  if (v5)
  {
    dispatch_release(v5);
  }

  if (v4)
  {
    dispatch_group_leave(v4);
    dispatch_release(v4);
  }

  v6 = v2[1];
  if (v6)
  {
    dispatch_release(v6);
  }

  if (*v2)
  {
    dispatch_group_leave(*v2);
    if (*v2)
    {
      dispatch_release(*v2);
    }
  }

  operator delete(v2);
  v7 = a1[2];
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  operator delete(a1);
}

void sub_23C246634(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void *);
  va_copy(va2, va1);
  v7 = va_arg(va2, dispatch_group_t *);
  dispatch::callback<void({block_pointer})(void)>::~callback(va2);
  if (v3)
  {
    dispatch_release(v3);
  }

  if (v2)
  {
    dispatch_group_leave(v2);
    dispatch_release(v2);
  }

  std::unique_ptr<DALTrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,std::default_delete<DALTrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>::~unique_ptr[abi:ne200100](va1);
  std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

dispatch_group_t **std::unique_ptr<DALTrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,std::default_delete<DALTrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>::~unique_ptr[abi:ne200100](dispatch_group_t **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[1];
    if (v3)
    {
      dispatch_release(v3);
    }

    if (*v1)
    {
      dispatch_group_leave(*v1);
      if (*v1)
      {
        dispatch_release(*v1);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<DALTrace::stop(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>(DALTrace::stop(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<DALTrace::stop(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,dispatch_queue_s *::default_delete<DALTrace::stop(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 88);
  if (v4)
  {
    dispatch_retain(*(*v2 + 88));
    dispatch_group_enter(v4);
  }

  if (*(v3 + 104))
  {
    v5 = v2[2];
    v13 = v5;
    if (v5)
    {
      dispatch_retain(v5);
    }

    *buf = 0;
    v12 = 0;
    DALTrace::stop_sync(v3, &v13, buf);
    if (v5)
    {
      dispatch_release(v5);
    }
  }

  else
  {
    v6 = *(v3 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23C1C4000, v6, OS_LOG_TYPE_DEFAULT, "#I Trace is not enabled; skip processing trace stop", buf, 2u);
    }
  }

  if (v4)
  {
    dispatch_group_leave(v4);
    dispatch_release(v4);
  }

  v7 = v2[2];
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = v2[1];
  if (v8)
  {
    dispatch_group_leave(v8);
    v9 = v2[1];
    if (v9)
    {
      dispatch_release(v9);
    }
  }

  operator delete(v2);
  v10 = *(a1 + 2);
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  operator delete(a1);
}

void sub_23C24684C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, char a11)
{
  dispatch::callback<void({block_pointer})(void)>::~callback(&a11);
  if (v12)
  {
    dispatch_release(v12);
    if (!v11)
    {
LABEL_3:
      std::unique_ptr<DALTrace::stop(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,std::default_delete<DALTrace::stop(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
      std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
      _Unwind_Resume(a1);
    }
  }

  else if (!v11)
  {
    goto LABEL_3;
  }

  dispatch_group_leave(v11);
  dispatch_release(v11);
  std::unique_ptr<DALTrace::stop(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,std::default_delete<DALTrace::stop(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<DALTrace::stop(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,std::default_delete<DALTrace::stop(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[2];
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = v1[1];
    if (v4)
    {
      dispatch_group_leave(v4);
      v5 = v1[1];
      if (v5)
      {
        dispatch_release(v5);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<DALTrace::abort(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>(DALTrace::abort(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<DALTrace::abort(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,dispatch_queue_s *::default_delete<DALTrace::abort(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t *a1)
{
  v2 = *a1;
  v14 = v2;
  v3 = *v2;
  v4 = *(*v2 + 88);
  if (v4)
  {
    dispatch_retain(*(*v2 + 88));
    dispatch_group_enter(v4);
  }

  v19[0] = 0xAAAAAAAAAAAAAAAALL;
  v19[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v19, *(v2 + 16));
  memset(__s1, 170, sizeof(__s1));
  v5 = *MEMORY[0x277CECC20];
  memset(v17, 0, sizeof(v17));
  ctu::cf::MakeCFString::MakeCFString(&v15, v5);
  ctu::cf::map_adapter::getString();
  MEMORY[0x23EECD8F0](&v15);
  if (SHIBYTE(v17[2]) < 0)
  {
    operator delete(v17[0]);
  }

  memset(v17, 170, sizeof(v17));
  v15 = operator new(0x28uLL);
  v16 = xmmword_23C32C700;
  strcpy(v15, "kCollectTelephonyLogsWithCoredump");
  ctu::cf::MakeCFString::MakeCFString(&v20, "kKeyTraceAction");
  ctu::cf::map_adapter::getString();
  MEMORY[0x23EECD8F0](&v20);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15);
  }

  v6 = *MEMORY[0x277CECC38];
  v7 = strlen(*MEMORY[0x277CECC38]);
  if ((SHIBYTE(__s1[2]) & 0x8000000000000000) != 0)
  {
    if (v7 == __s1[1])
    {
      if (v7 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (!memcmp(__s1[0], v6, v7))
      {
        goto LABEL_24;
      }
    }
  }

  else if (v7 == SHIBYTE(__s1[2]) && !memcmp(__s1, v6, v7))
  {
LABEL_24:
    v12 = *(v2 + 24);
    v15 = v12;
    if (v12)
    {
      dispatch_retain(v12);
    }

    DALTrace::abort_sync(v3, &v15);
    if (v12)
    {
      dispatch_release(v12);
    }

    goto LABEL_28;
  }

  if (SHIBYTE(v17[2]) < 0)
  {
    if (v17[1] != 15)
    {
      goto LABEL_28;
    }

    v8 = v17[0];
  }

  else
  {
    if (SHIBYTE(v17[2]) != 15)
    {
      goto LABEL_28;
    }

    v8 = v17;
  }

  v9 = *v8;
  v10 = *(v8 + 7);
  if (v9 == *"kReinitAllTrace" && v10 == *"AllTrace")
  {
    goto LABEL_24;
  }

LABEL_28:
  if ((SHIBYTE(v17[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(__s1[2]) & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

LABEL_37:
    operator delete(__s1[0]);
    MEMORY[0x23EECD940](v19);
    if (!v4)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  operator delete(v17[0]);
  if (SHIBYTE(__s1[2]) < 0)
  {
    goto LABEL_37;
  }

LABEL_30:
  MEMORY[0x23EECD940](v19);
  if (v4)
  {
LABEL_31:
    dispatch_group_leave(v4);
    dispatch_release(v4);
  }

LABEL_32:
  std::unique_ptr<DALTrace::abort(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,std::default_delete<DALTrace::abort(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>::~unique_ptr[abi:ne200100](&v14);
  v13 = a1[2];
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  operator delete(a1);
}

void sub_23C246BDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (v29)
  {
    dispatch_release(v29);
  }

  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  MEMORY[0x23EECD940](v30 - 72);
  if (v28)
  {
    dispatch_group_leave(v28);
    dispatch_release(v28);
  }

  std::unique_ptr<DALTrace::abort(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,std::default_delete<DALTrace::abort(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_23C246C90()
{
  if (!v0)
  {
    JUMPOUT(0x23C246C78);
  }

  JUMPOUT(0x23C246C68);
}

void **std::unique_ptr<DALTrace::abort(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,std::default_delete<DALTrace::abort(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>::~unique_ptr[abi:ne200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[3];
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = v2[2];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = v2[1];
    if (v5)
    {
      dispatch_group_leave(v5);
      v6 = v2[1];
      if (v6)
      {
        dispatch_release(v6);
      }
    }

    operator delete(v2);
  }

  return a1;
}

void dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<DALTrace::shutdown(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>(DALTrace::shutdown(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<DALTrace::shutdown(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,dispatch_queue_s *::default_delete<DALTrace::shutdown(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(v3 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C1C4000, v4, OS_LOG_TYPE_DEFAULT, "#I Shutdown received", buf, 2u);
  }

  v5 = *(v3 + 88);
  if (v5)
  {
    dispatch_retain(*(v3 + 88));
    dispatch_group_enter(v5);
  }

  v6 = dispatch_group_create();
  v7 = v6;
  if (v6)
  {
    dispatch_retain(v6);
    dispatch_group_enter(v7);
  }

  *buf = MEMORY[0x277D85DD0];
  v20 = 1174405120;
  v21 = ___ZZN8DALTrace8shutdownEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEENK3__0clEv_block_invoke;
  v22 = &__block_descriptor_tmp_180;
  v23 = v3;
  v8 = *v2;
  group = v8;
  if (v8)
  {
    dispatch_retain(v8);
    if (group)
    {
      dispatch_group_enter(group);
    }
  }

  v25 = v7;
  if (v7)
  {
    dispatch_retain(v7);
    if (v25)
    {
      dispatch_group_enter(v25);
    }
  }

  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
    if (object)
    {
      dispatch_group_enter(object);
    }
  }

  v27 = *(v2 + 8);
  v9 = *(v2 + 16);
  v28 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = _Block_copy(buf);
  v11 = *(v3 + 24);
  if (v11)
  {
    dispatch_retain(*(v3 + 24));
  }

  v29[0] = v10;
  v29[1] = v11;
  DALTrace::setLogMode_sync(v3, 0, 0, v29, 10);
  if (v11)
  {
    dispatch_release(v11);
  }

  if (v10)
  {
    _Block_release(v10);
  }

  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(v5);
  }

  v12 = *v2;
  if (*v2)
  {
    dispatch_retain(v12);
    dispatch_group_enter(v12);
  }

  v13 = *(v2 + 8);
  v14 = *(v2 + 16);
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 16), 1uLL, memory_order_relaxed);
  }

  v15 = *(v3 + 24);
  v16 = operator new(0x28uLL);
  *v16 = v5;
  v16[1] = v12;
  v16[2] = v13;
  v16[3] = v14;
  v16[4] = v3;
  v30 = 0;
  dispatch_group_notify_f(v7, v15, v16, dispatch::detail::group_notify<DALTrace::shutdown(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0::operator() const(void)::{lambda(void)#1}>(dispatch_group_s *,dispatch_queue_s *,DALTrace::shutdown(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0::operator() const(void)::{lambda(void)#1} &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);
  std::unique_ptr<DALTrace::shutdown(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<DALTrace::shutdown(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v30);
  if (v28)
  {
    std::__shared_weak_count::__release_weak(v28);
  }

  if (object)
  {
    dispatch_group_leave(object);
    if (object)
    {
      dispatch_release(object);
    }
  }

  if (v25)
  {
    dispatch_group_leave(v25);
    if (v25)
    {
      dispatch_release(v25);
    }
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  if (v7)
  {
    dispatch_group_leave(v7);
    dispatch_release(v7);
    dispatch_release(v7);
  }

  if (v5)
  {
    dispatch_group_leave(v5);
    dispatch_release(v5);
  }

  v17 = *(v2 + 16);
  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  if (*v2)
  {
    dispatch_group_leave(*v2);
    if (*v2)
    {
      dispatch_release(*v2);
    }
  }

  operator delete(v2);
  v18 = a1[2];
  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  operator delete(a1);
}

void sub_23C24707C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, dispatch_group_t a24, dispatch_group_t object, dispatch_group_t group, uint64_t a27, std::__shared_weak_count *a28)
{
  DALTrace::shutdown(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0::operator() const(void)::{lambda(void)#1}::~(&a12);
  if (a28)
  {
    std::__shared_weak_count::__release_weak(a28);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  if (object)
  {
    dispatch_group_leave(object);
    if (object)
    {
      dispatch_release(object);
    }
  }

  if (a24)
  {
    dispatch_group_leave(a24);
    if (a24)
    {
      dispatch_release(a24);
    }
  }

  if (v29)
  {
    dispatch_group_leave(v29);
    dispatch_release(v29);
    dispatch_release(v29);
    if (!v28)
    {
      goto LABEL_17;
    }
  }

  else if (!v28)
  {
LABEL_17:
    std::unique_ptr<DALTrace::shutdown(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,std::default_delete<DALTrace::shutdown(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>::~unique_ptr[abi:ne200100](&a11);
    std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
    _Unwind_Resume(a1);
  }

  dispatch_group_leave(v28);
  dispatch_release(v28);
  goto LABEL_17;
}

void *std::unique_ptr<DALTrace::shutdown(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,std::default_delete<DALTrace::shutdown(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 16);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    if (*v1)
    {
      dispatch_group_leave(*v1);
      if (*v1)
      {
        dispatch_release(*v1);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void ___ZZN8DALTrace8shutdownEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEENK3__0clEv_block_invoke(void *a1, uint64_t *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a1[9];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      if (a1[8])
      {
        v7 = *a2;
        if (*a2)
        {
          v8 = *(v5 + 40);
          v9 = v6;
          v10 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
          v6 = v9;
          if (v10)
          {
            v13 = 138412290;
            v14 = v7;
            _os_log_error_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_ERROR, "Failed to flush log (%@)", &v13, 0xCu);
            v6 = v9;
            if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              goto LABEL_8;
            }

            goto LABEL_7;
          }
        }
      }

      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_7:
        v11 = v6;
        (v6->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v11);
      }
    }
  }

LABEL_8:
  v12 = *MEMORY[0x277D85DE8];
}

void __copy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c30_ZTSN8dispatch13group_sessionE56c30_ZTSN8dispatch13group_sessionE64c29_ZTSNSt3__18weak_ptrI5TraceEE(void *a1, void *a2)
{
  v4 = a2[5];
  a1[5] = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = a1[5];
    if (v5)
    {
      dispatch_group_enter(v5);
    }
  }

  v6 = a2[6];
  a1[6] = v6;
  if (v6)
  {
    dispatch_retain(v6);
    v7 = a1[6];
    if (v7)
    {
      dispatch_group_enter(v7);
    }
  }

  v8 = a2[7];
  a1[7] = v8;
  if (v8)
  {
    dispatch_retain(v8);
    v9 = a1[7];
    if (v9)
    {
      dispatch_group_enter(v9);
    }
  }

  v10 = a2[9];
  a1[8] = a2[8];
  a1[9] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 16), 1uLL, memory_order_relaxed);
  }
}

void __destroy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c30_ZTSN8dispatch13group_sessionE56c30_ZTSN8dispatch13group_sessionE64c29_ZTSNSt3__18weak_ptrI5TraceEE(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = a1[7];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  v5 = a1[6];
  if (v5)
  {
    dispatch_group_leave(v5);
    v6 = a1[6];
    if (v6)
    {
      dispatch_release(v6);
    }
  }

  v7 = a1[5];
  if (v7)
  {
    dispatch_group_leave(v7);
    v8 = a1[5];
    if (v8)
    {

      dispatch_release(v8);
    }
  }
}

uint64_t DALTrace::shutdown(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0::operator() const(void)::{lambda(void)#1}::~(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = *(a1 + 8);
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  if (*a1)
  {
    dispatch_group_leave(*a1);
    if (*a1)
    {
      dispatch_release(*a1);
    }
  }

  return a1;
}

void *std::unique_ptr<DALTrace::shutdown(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<DALTrace::shutdown(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 24);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = *(v1 + 8);
    if (v4)
    {
      dispatch_group_leave(v4);
      v5 = *(v1 + 8);
      if (v5)
      {
        dispatch_release(v5);
      }
    }

    if (*v1)
    {
      dispatch_group_leave(*v1);
      if (*v1)
      {
        dispatch_release(*v1);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void *dispatch::detail::group_notify<DALTrace::shutdown(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0::operator() const(void)::{lambda(void)#1}>(dispatch_group_s *,dispatch_queue_s *,DALTrace::shutdown(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0::operator() const(void)::{lambda(void)#1} &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v13 = a1;
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    v16 = v4;
    if (v4)
    {
      if (!a1[2])
      {
        goto LABEL_25;
      }

      v5 = *(v3 + 184);
      if (v5)
      {
        v6 = a1[1];
        object = v6;
        if (v6)
        {
          dispatch_retain(v6);
        }

        (*(*v5 + 120))(v5, &object);
        if (object)
        {
          dispatch_release(object);
        }
      }

      v7 = *(v3 + 40);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23C1C4000, v7, OS_LOG_TYPE_DEFAULT, "#I Closing Transport", buf, 2u);
      }

      DALTrace::stopTraceReader_sync(v3);
      v8 = *(v3 + 176);
      if (v8)
      {
        *(v3 + 176) = 0;
        dispatch_group_leave(v8);
        dispatch_release(v8);
      }

      v9 = *(v3 + 192);
      *(v3 + 184) = 0;
      *(v3 + 192) = 0;
      if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }

      v10 = *(v3 + 136);
      *(v3 + 128) = 0;
      *(v3 + 136) = 0;
      if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
      }

      *(v3 + 168) = 0;
      v4 = v16;
      if (v16)
      {
LABEL_25:
        if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v11 = v4;
          (v4->__on_zero_shared)(v4);
          std::__shared_weak_count::__release_weak(v11);
        }
      }
    }
  }

  return std::unique_ptr<DALTrace::shutdown(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<DALTrace::shutdown(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v13);
}

void sub_23C2476B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, char a11)
{
  if (object)
  {
    dispatch_release(object);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a11);
    std::unique_ptr<DALTrace::shutdown(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<DALTrace::shutdown(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a9);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a11);
  std::unique_ptr<DALTrace::shutdown(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<DALTrace::shutdown(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<DALTrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>(DALTrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<DALTrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,dispatch_queue_s *::default_delete<DALTrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t *a1)
{
  v2 = *a1;
  v15 = v2;
  v3 = *v2;
  if (*(*v2 + 104))
  {
    if (*(v3 + 152) && (*buf = operator new(0x20uLL), *&buf[8] = xmmword_23C32C720, strcpy(*buf, "Trace State Configuration"), DALTrace::getStateAsDict_sync(v3, v2 + 16, &v29), abm::trace::TraceInfo::push(), xpc_release(v29), v29 = 0, buf[23] < 0))
    {
      operator delete(*buf);
      v4 = *(v2 + 40);
      v28 = v4;
      if (!v4)
      {
LABEL_6:
        DALTrace::moveBootLog_sync(v3, &v28);
        if (v4)
        {
          CFRelease(v4);
        }

        v26 = 0xAAAAAAAAAAAAAAAALL;
        v27 = 0xAAAAAAAAAAAAAAAALL;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1174405120;
        aBlock[2] = ___ZZN8DALTrace8snapshotEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEENK3__0clEv_block_invoke;
        aBlock[3] = &__block_descriptor_tmp_182;
        aBlock[4] = v3;
        v5 = *(v2 + 8);
        group = v5;
        if (v5)
        {
          dispatch_retain(v5);
          dispatch_group_enter(group);
        }

        v6 = *(v2 + 56);
        v23 = *(v2 + 48);
        v24 = v6;
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v7 = *(v2 + 40);
        cf = v7;
        if (v7)
        {
          CFRetain(v7);
        }

        v8 = _Block_copy(aBlock);
        v9 = *(v3 + 24);
        if (v9)
        {
          dispatch_retain(*(v3 + 24));
        }

        v26 = v8;
        v27 = v9;
        v20[0] = 0xAAAAAAAAAAAAAAAALL;
        v20[1] = 0xAAAAAAAAAAAAAAAALL;
        ctu::cf::dict_adapter::dict_adapter(v20, *(v2 + 40));
        memset(buf, 170, sizeof(buf));
        __p = operator new(0x28uLL);
        v19 = xmmword_23C32C700;
        strcpy(__p, "kCollectTelephonyLogsWithCoredump");
        ctu::cf::MakeCFString::MakeCFString(&v31, "kKeyTraceAction");
        ctu::cf::map_adapter::getString();
        MEMORY[0x23EECD8F0](&v31);
        operator delete(__p);
        if (buf[23] < 0)
        {
          if (*&buf[8] == 17)
          {
            v10 = *buf;
            goto LABEL_24;
          }
        }

        else if (buf[23] == 17)
        {
          v10 = buf;
LABEL_24:
          if (bswap64(*v10) == bswap64(*"kShutdownAllTrace") && bswap64(*(v10 + 1)) == bswap64(*"nAllTrace"))
          {
            if (v10[16] == str_76[16])
            {
              v12 = 10;
            }

            else
            {
              v12 = 18;
            }

            if (!v8)
            {
LABEL_56:
              v13 = 0;
              v16 = 0;
              v17 = v9;
              if (!v9)
              {
                goto LABEL_34;
              }

              goto LABEL_33;
            }
          }

          else
          {
            v12 = 18;
            if (!v8)
            {
              goto LABEL_56;
            }
          }

LABEL_32:
          v13 = _Block_copy(v8);
          v16 = v13;
          v17 = v9;
          if (!v9)
          {
LABEL_34:
            DALTrace::triggerLogFlush_sync(v3, &v16, v12);
            if (v9)
            {
              dispatch_release(v9);
            }

            if (v13)
            {
              _Block_release(v13);
            }

            if (buf[23] < 0)
            {
              operator delete(*buf);
            }

            MEMORY[0x23EECD940](v20);
            if (v9)
            {
              dispatch_release(v9);
            }

            if (v8)
            {
              _Block_release(v8);
            }

            if (cf)
            {
              CFRelease(cf);
            }

            if (v24)
            {
              std::__shared_weak_count::__release_weak(v24);
            }

            if (group)
            {
              dispatch_group_leave(group);
              if (group)
              {
                dispatch_release(group);
              }
            }

            goto LABEL_51;
          }

LABEL_33:
          dispatch_retain(v9);
          goto LABEL_34;
        }

        v12 = 18;
        if (!v8)
        {
          goto LABEL_56;
        }

        goto LABEL_32;
      }
    }

    else
    {
      v4 = *(v2 + 40);
      v28 = v4;
      if (!v4)
      {
        goto LABEL_6;
      }
    }

    CFRetain(v4);
    goto LABEL_6;
  }

  v11 = *(v3 + 40);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_23C1C4000, v11, OS_LOG_TYPE_ERROR, "Trace is disabled; skip snapshot processing!", buf, 2u);
  }

LABEL_51:
  std::unique_ptr<DALTrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,std::default_delete<DALTrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>::~unique_ptr[abi:ne200100](&v15);
  v14 = a1[2];
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  operator delete(a1);
}

void sub_23C247B70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, dispatch_group_t group, uint64_t a29, std::__shared_weak_count *a30)
{
  xpc_release(*(v30 - 104));
  *(v30 - 104) = 0;
  if (*(v30 - 73) < 0)
  {
    operator delete(*(v30 - 96));
    std::unique_ptr<DALTrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,std::default_delete<DALTrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
    std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
    _Unwind_Resume(a1);
  }

  std::unique_ptr<DALTrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,std::default_delete<DALTrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<DALTrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,std::default_delete<DALTrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 56);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = *(v2 + 40);
    if (v4)
    {
      CFRelease(v4);
    }

    if (*(v2 + 39) < 0)
    {
      operator delete(*(v2 + 16));
    }

    v5 = *(v2 + 8);
    if (v5)
    {
      dispatch_group_leave(v5);
      v6 = *(v2 + 8);
      if (v6)
      {
        dispatch_release(v6);
      }
    }

    operator delete(v2);
  }

  return a1;
}

void ___ZZN8DALTrace8snapshotEN8dispatch5groupEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEENK3__0clEv_block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v16 = 0;
  v17 = 0;
  v4 = a1[7];
  if (v4)
  {
    v6 = std::__shared_weak_count::lock(v4);
    v17 = v6;
    if (!v6)
    {
      return;
    }

    v16 = a1[6];
    if (v16)
    {
      if (*a2 && (v7 = v3[5], v6 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR), v6))
      {
        *buf = 0;
        _os_log_error_impl(&dword_23C1C4000, v7, OS_LOG_TYPE_ERROR, "Failed to flush log (baseband might be down)", buf, 2u);
        if (v3[16])
        {
          goto LABEL_7;
        }
      }

      else if (v3[16])
      {
LABEL_7:
        capabilities::debug::environment(v6);
        capabilities::debug::operator&();
        v8 = v3[16];
        v9 = a1[8];
        cf = v9;
        if (v9)
        {
          CFRetain(v9);
        }

        v10 = v3[20];
        v12 = v3[19];
        v13 = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        abm::trace::TraceReader::snapshot();
        if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v13->__on_zero_shared)(v13);
          std::__shared_weak_count::__release_weak(v13);
        }

        if (cf)
        {
          CFRelease(cf);
        }
      }
    }
  }

  v11 = v17;
  if (v17)
  {
    if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }
  }
}

void sub_23C247F2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va1);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va2);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v2 - 48);
  _Unwind_Resume(a1);
}

CFTypeRef __copy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c29_ZTSNSt3__18weak_ptrI5TraceEE64c45_ZTSN3ctu2cf11CFSharedRefIK14__CFDictionaryEE(void *a1, void *a2)
{
  v4 = a2[5];
  a1[5] = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = a1[5];
    if (v5)
    {
      dispatch_group_enter(v5);
    }
  }

  v6 = a2[7];
  a1[6] = a2[6];
  a1[7] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  result = a2[8];
  a1[8] = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void __destroy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c29_ZTSNSt3__18weak_ptrI5TraceEE64c45_ZTSN3ctu2cf11CFSharedRefIK14__CFDictionaryEE(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = a1[5];
    if (v5)
    {

      dispatch_release(v5);
    }
  }
}

void dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<DALTrace::dumpState(dispatch::group,std::string)::$_0>(DALTrace::dumpState(dispatch::group,std::string)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<DALTrace::dumpState(dispatch::group,std::string)::$_0,std::default_delete<DALTrace::dumpState(dispatch::group,std::string)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 88);
  if (v4)
  {
    dispatch_retain(*(*v2 + 88));
  }

  v5 = *(v3 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    DALTrace::dumpState_sync(v3, (v2 + 1), __p);
    v6 = v10 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v12 = v6;
    _os_log_impl(&dword_23C1C4000, v5, OS_LOG_TYPE_DEFAULT, "#I %s", buf, 0xCu);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v4)
  {
    dispatch_release(v4);
  }

  if (*(v2 + 31) < 0)
  {
    operator delete(v2[1]);
  }

  operator delete(v2);
  v7 = *(a1 + 2);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  operator delete(a1);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_23C2481B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11)
{
  if (v11)
  {
    dispatch_release(v11);
  }

  std::unique_ptr<abm::AppMonitorInternal::addBundleID(std::string)::{lambda(void)#1},std::default_delete<abm::AppMonitorInternal::addBundleID(std::string)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void ___ZNK3ctu20SharedSynchronizableI5TraceE20execute_wrapped_syncIZN8DALTrace11setPropertyEN8dispatch5groupERKNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEESF_E3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSH__block_invoke(uint64_t a1)
{
  v56 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v3 + 23);
  if ((v4 & 0x80000000) == 0)
  {
    if (strcasecmp(*(v1 + 8), "Enabled"))
    {
      if (strcasecmp(v3, "History"))
      {
        if (strcasecmp(v3, "Mode"))
        {
          if (strcasecmp(v3, "Reset_Mode_Boot"))
          {
            if (strcasecmp(v3, "TraceOwnership"))
            {
              if (strcasecmp(v3, "Log_Mode"))
              {
                if (strcasecmp(v3, "Log_Level"))
                {
                  if (strcasecmp(v3, "Sleep_Log_Mode"))
                  {
                    if (strcasecmp(v3, "Sleep_Log_Level"))
                    {
                      if (strcasecmp(v3, "FileSize"))
                      {
                        if (strcasecmp(v3, "MaxMemoryFileCount"))
                        {
                          if (strcasecmp(v3, "Error_Handling"))
                          {
                            if (strcasecmp(v3, "Retain_Previous_Trace"))
                            {
                              v9 = v3;
                              if (strcasecmp(v3, "PeakBandwidthMbps"))
                              {
                                goto LABEL_16;
                              }

                              goto LABEL_35;
                            }

                            goto LABEL_136;
                          }

                          goto LABEL_120;
                        }

                        goto LABEL_116;
                      }

LABEL_112:
                      v11 = *(v1 + 32);
                      v54 = v11;
                      if (v11)
                      {
                        dispatch_retain(v11);
                        v3 = *(v1 + 8);
                        LOBYTE(v4) = *(v3 + 23);
                      }

                      if ((v4 & 0x80) != 0)
                      {
                        std::string::__init_copy_ctor_external(&buf, *v3, *(v3 + 8));
                      }

                      else
                      {
                        v39 = *v3;
                        buf.__r_.__value_.__r.__words[2] = *(v3 + 16);
                        *&buf.__r_.__value_.__l.__data_ = v39;
                      }

                      v42 = *(v1 + 16);
                      if (*(v42 + 23) < 0)
                      {
                        std::string::__init_copy_ctor_external(&v53, *v42, *(v42 + 1));
                      }

                      else
                      {
                        v43 = *v42;
                        v53.__r_.__value_.__r.__words[2] = *(v42 + 2);
                        *&v53.__r_.__value_.__l.__data_ = v43;
                      }

                      v44 = DALTrace::setPropFileSize_sync(v2, &v54, &buf, &v53);
LABEL_128:
                      **(v1 + 24) = v44;
                      if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v53.__r_.__value_.__l.__data_);
                        if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                        {
                          goto LABEL_132;
                        }
                      }

                      else if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_132;
                      }

                      operator delete(buf.__r_.__value_.__l.__data_);
                      if (!v11)
                      {
                        goto LABEL_77;
                      }

                      goto LABEL_47;
                    }

                    goto LABEL_109;
                  }

                  goto LABEL_106;
                }

                goto LABEL_67;
              }

              goto LABEL_62;
            }

LABEL_56:
            v13 = *(v1 + 32);
            if (v13)
            {
              dispatch_retain(*(v1 + 32));
            }

            *(&buf.__r_.__value_.__s + 23) = 14;
            strcpy(&buf, "TraceOwnership");
            v20 = *(v1 + 16);
            if (*(v20 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v53, *v20, *(v20 + 1));
            }

            else
            {
              v21 = *v20;
              v53.__r_.__value_.__r.__words[2] = *(v20 + 2);
              *&v53.__r_.__value_.__l.__data_ = v21;
            }

            v22 = DALTrace::setPropTraceOwnership_sync(v2, v6, &buf, &v53);
            goto LABEL_72;
          }

LABEL_52:
          v13 = *(v1 + 32);
          if (v13)
          {
            dispatch_retain(*(v1 + 32));
          }

          *(&buf.__r_.__value_.__s + 23) = 15;
          strcpy(&buf, "Reset_Mode_Boot");
          v18 = *(v1 + 16);
          if (*(v18 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v53, *v18, *(v18 + 1));
          }

          else
          {
            v19 = *v18;
            v53.__r_.__value_.__r.__words[2] = *(v18 + 2);
            *&v53.__r_.__value_.__l.__data_ = v19;
          }

          v22 = DALTrace::setPropTraceResetModeReboot_sync(v2, v5, &buf, &v53);
          goto LABEL_72;
        }

LABEL_48:
        v13 = *(v1 + 32);
        v54 = v13;
        if (v13)
        {
          dispatch_retain(v13);
        }

        *(&buf.__r_.__value_.__s + 23) = 4;
        strcpy(&buf, "Mode");
        v16 = *(v1 + 16);
        if (*(v16 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v53, *v16, *(v16 + 1));
        }

        else
        {
          v17 = *v16;
          v53.__r_.__value_.__r.__words[2] = *(v16 + 2);
          *&v53.__r_.__value_.__l.__data_ = v17;
        }

        v22 = DALTrace::setPropTraceMode_sync(v2, &v54, &buf, &v53);
        goto LABEL_72;
      }

LABEL_43:
      v11 = *(v1 + 32);
      buf.__r_.__value_.__r.__words[0] = v11;
      if (v11)
      {
        dispatch_retain(v11);
        v3 = *(v1 + 8);
      }

      v14 = DALTrace::setPropHistory_sync(v2, &buf, v3, *(v1 + 16));
LABEL_46:
      **(v1 + 24) = v14;
      if (!v11)
      {
        goto LABEL_77;
      }

LABEL_47:
      v15 = v11;
LABEL_76:
      dispatch_release(v15);
      goto LABEL_77;
    }

LABEL_39:
    v13 = *(v1 + 32);
    v53.__r_.__value_.__r.__words[0] = v13;
    if (v13)
    {
      dispatch_retain(v13);
    }

    *(&buf.__r_.__value_.__s + 23) = 7;
    strcpy(&buf, "Enabled");
    **(v1 + 24) = DALTrace::setPropEnabled_sync(v2, &v53, &buf, *(v1 + 16));
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    goto LABEL_74;
  }

  v9 = *v3;
  if (!strcasecmp(*v3, "Enabled"))
  {
    goto LABEL_39;
  }

  if (!strcasecmp(v9, "History"))
  {
    goto LABEL_43;
  }

  if (!strcasecmp(v9, "Mode"))
  {
    goto LABEL_48;
  }

  if (!strcasecmp(v9, "Reset_Mode_Boot"))
  {
    goto LABEL_52;
  }

  if (!strcasecmp(v9, "TraceOwnership"))
  {
    goto LABEL_56;
  }

  if (!strcasecmp(v9, "Log_Mode"))
  {
LABEL_62:
    v11 = *(v1 + 32);
    buf.__r_.__value_.__r.__words[0] = v11;
    if (v11)
    {
      dispatch_retain(v11);
      v3 = *(v1 + 8);
    }

    v14 = DALTrace::setPropTraceLogMode_sync(v2, &buf, v3, *(v1 + 16));
    goto LABEL_46;
  }

  if (!strcasecmp(v9, "Log_Level"))
  {
LABEL_67:
    v11 = *(v1 + 32);
    buf.__r_.__value_.__r.__words[0] = v11;
    if (v11)
    {
      dispatch_retain(v11);
      v3 = *(v1 + 8);
    }

    v14 = DALTrace::setPropTraceLogLevel_sync(v2, &buf, v3, *(v1 + 16));
    goto LABEL_46;
  }

  if (!strcasecmp(v9, "Sleep_Log_Mode"))
  {
LABEL_106:
    v11 = *(v1 + 32);
    buf.__r_.__value_.__r.__words[0] = v11;
    if (v11)
    {
      dispatch_retain(v11);
      v3 = *(v1 + 8);
    }

    v14 = DALTrace::setPropSleepLogMode_sync(v2, &buf, v3, *(v1 + 16));
    goto LABEL_46;
  }

  if (!strcasecmp(v9, "Sleep_Log_Level"))
  {
LABEL_109:
    v11 = *(v1 + 32);
    buf.__r_.__value_.__r.__words[0] = v11;
    if (v11)
    {
      dispatch_retain(v11);
      v3 = *(v1 + 8);
    }

    v14 = DALTrace::setPropSleepLogLevel_sync(v2, &buf, v3, *(v1 + 16));
    goto LABEL_46;
  }

  if (!strcasecmp(v9, "FileSize"))
  {
    goto LABEL_112;
  }

  if (!strcasecmp(v9, "MaxMemoryFileCount"))
  {
LABEL_116:
    v13 = *(v1 + 32);
    v54 = v13;
    if (v13)
    {
      dispatch_retain(v13);
    }

    std::string::basic_string[abi:ne200100]<0>(&buf, "MaxMemoryFileCount");
    v40 = *(v1 + 16);
    if (*(v40 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v53, *v40, *(v40 + 1));
    }

    else
    {
      v41 = *v40;
      v53.__r_.__value_.__r.__words[2] = *(v40 + 2);
      *&v53.__r_.__value_.__l.__data_ = v41;
    }

    v22 = DALTrace::setPropMaxMemoryFileCount_sync(v2, &v54, &buf, &v53);
LABEL_72:
    **(v1 + 24) = v22;
    if ((SHIBYTE(v53.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_74;
      }

LABEL_104:
      operator delete(buf.__r_.__value_.__l.__data_);
      if (!v13)
      {
        goto LABEL_77;
      }

      goto LABEL_75;
    }

    operator delete(v53.__r_.__value_.__l.__data_);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_104;
    }

LABEL_74:
    if (!v13)
    {
      goto LABEL_77;
    }

LABEL_75:
    v15 = v13;
    goto LABEL_76;
  }

  if (!strcasecmp(v9, "Error_Handling"))
  {
LABEL_120:
    v11 = *(v1 + 32);
    buf.__r_.__value_.__r.__words[0] = v11;
    if (v11)
    {
      dispatch_retain(v11);
      v3 = *(v1 + 8);
    }

    v14 = DALTrace::setPropErrorHandling_sync(v2, &buf, v3, *(v1 + 16));
    goto LABEL_46;
  }

  if (!strcasecmp(v9, "Retain_Previous_Trace"))
  {
LABEL_136:
    v11 = *(v1 + 32);
    if (v11)
    {
      dispatch_retain(*(v1 + 32));
      v3 = *(v1 + 8);
    }

    v14 = DALTrace::setPropRetainPreviousTrace_sync(v2, v7, v3, *(v1 + 16));
    goto LABEL_46;
  }

  if (!strcasecmp(v9, "PeakBandwidthMbps"))
  {
LABEL_35:
    v11 = *(v1 + 32);
    if (v11)
    {
      dispatch_retain(*(v1 + 32));
      v3 = *(v1 + 8);
      LOBYTE(v4) = *(v3 + 23);
    }

    if ((v4 & 0x80) != 0)
    {
      std::string::__init_copy_ctor_external(&buf, *v3, *(v3 + 8));
    }

    else
    {
      v12 = *v3;
      buf.__r_.__value_.__r.__words[2] = *(v3 + 16);
      *&buf.__r_.__value_.__l.__data_ = v12;
    }

    v46 = *(v1 + 16);
    if (*(v46 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v53, *v46, *(v46 + 1));
    }

    else
    {
      v47 = *v46;
      v53.__r_.__value_.__r.__words[2] = *(v46 + 2);
      *&v53.__r_.__value_.__l.__data_ = v47;
    }

    v44 = DALTrace::setPropPeakBandwidthMbps_sync(v2, v8, &buf, &v53);
    goto LABEL_128;
  }

LABEL_16:
  if (!strcasecmp(v9, "TraceFlushTimerInterval"))
  {
    v11 = *(v1 + 32);
    if (v11)
    {
      dispatch_retain(*(v1 + 32));
      v3 = *(v1 + 8);
      LOBYTE(v4) = *(v3 + 23);
    }

    if ((v4 & 0x80) != 0)
    {
      v3 = *v3;
    }

    std::string::basic_string[abi:ne200100]<0>(&buf, v3);
    **(v1 + 24) = DALTrace::setPropFlushTimerInterval_sync(v2, v45, &buf, *(v1 + 16));
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

LABEL_132:
    if (!v11)
    {
      goto LABEL_77;
    }

    goto LABEL_47;
  }

  v10 = *(v2 + 40);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    if (v4 < 0)
    {
      v3 = *v3;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = v3;
    _os_log_error_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_ERROR, "Key not handled: %s", &buf, 0xCu);
  }

LABEL_77:
  if (!*(v2 + 152))
  {
LABEL_100:
    v37 = *MEMORY[0x277D85DE8];
    return;
  }

  v23 = *(v1 + 8);
  v24 = *(v23 + 23);
  if (v24 >= 0)
  {
    v25 = *(v23 + 23);
  }

  else
  {
    v25 = v23[1];
  }

  v26 = v25 + 3;
  if (v25 + 3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v26 < 0x17)
  {
    memset(&v50, 0, sizeof(v50));
    v28 = &v50;
    *(&v50.__r_.__value_.__s + 23) = v25 + 3;
    if (!v25)
    {
      goto LABEL_92;
    }
  }

  else
  {
    if ((v26 | 7) == 0x17)
    {
      v27 = 25;
    }

    else
    {
      v27 = (v26 | 7) + 1;
    }

    v28 = operator new(v27);
    v50.__r_.__value_.__l.__size_ = v25 + 3;
    v50.__r_.__value_.__r.__words[2] = v27 | 0x8000000000000000;
    v50.__r_.__value_.__r.__words[0] = v28;
  }

  v29 = *v23;
  if (v24 >= 0)
  {
    v30 = v23;
  }

  else
  {
    v30 = *v23;
  }

  memmove(v28, v30, v25);
LABEL_92:
  *&v28[v25] = 2112800;
  v31 = *(v1 + 16);
  v32 = *(v31 + 23);
  if (v32 >= 0)
  {
    v33 = *(v1 + 16);
  }

  else
  {
    v33 = *v31;
  }

  if (v32 >= 0)
  {
    v34 = *(v31 + 23);
  }

  else
  {
    v34 = *(v31 + 8);
  }

  v35 = std::string::append(&v50, v33, v34);
  v36 = *&v35->__r_.__value_.__l.__data_;
  v52 = v35->__r_.__value_.__r.__words[2];
  *v51 = v36;
  v35->__r_.__value_.__l.__size_ = 0;
  v35->__r_.__value_.__r.__words[2] = 0;
  v35->__r_.__value_.__r.__words[0] = 0;
  Timestamp::Timestamp(v48);
  abm::trace::TraceInfo::push();
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v48, v49);
  if (SHIBYTE(v52) < 0)
  {
    operator delete(v51[0]);
    if ((SHIBYTE(v50.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_100;
    }
  }

  else if ((SHIBYTE(v50.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_100;
  }

  operator delete(v50.__r_.__value_.__l.__data_);
  v38 = *MEMORY[0x277D85DE8];
}

void sub_23C248BF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (*(v43 - 89) < 0)
  {
    operator delete(*(v43 - 112));
    if (!v42)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v42)
  {
    goto LABEL_6;
  }

  dispatch_release(v42);
  _Unwind_Resume(a1);
}