void sub_19B431430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a48 < 0)
  {
    operator delete(__p);
  }

  sub_19B445384(v65);
  sub_19B445384(v64);
  if (*(v63 + 71) < 0)
  {
    operator delete(*(v63 + 48));
  }

  if (*(v63 + 47) < 0)
  {
    operator delete(*v66);
  }

  sub_19B445384(v63);
  _Unwind_Resume(a1);
}

char *sub_19B4315C8(char *a1, const __CFString *a2, char a3)
{
  v4 = sub_19B430DF4(a1, a2, a3, 0x1F0E3DFE0);
  *v4 = &unk_1F0E33ED0;
  if (*(v4 + 16) == 1)
  {
    sub_19B60DB30(a1, 1);
  }

  return a1;
}

void *sub_19B431640(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F0E334A8;
  a1[1] = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  a1[1] = Mutable;
  if (!Mutable)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v3 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_FAULT, "could not create new mutable dictionary", buf, 2u);
    }

    v4 = sub_19B420058();
    if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v5 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "CLNameValuePair::CLNameValuePair()", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return a1;
}

BOOL sub_19B431834@<W0>(const __CFString *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = sub_19B4318A4(a1, a2);
  if (!result)
  {
    if (*(a2 + 23) < 0)
    {
      **a2 = 0;
      *(a2 + 8) = 0;
    }

    else
    {
      *a2 = 0;
      *(a2 + 23) = 0;
    }
  }

  return result;
}

void sub_19B431888(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_19B4318A4(const __CFString *cf, std::string *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFStringGetTypeID())
    {
      CStringPtr = CFStringGetCStringPtr(cf, 0x8000100u);
      if (!CStringPtr)
      {
        *bufferSize = 0;
        v37.length = CFStringGetLength(cf);
        v37.location = 0;
        CFStringGetBytes(cf, v37, 0x8000100u, 0, 0, 0, 0, bufferSize);
        ++*bufferSize;
        operator new[]();
      }

      sub_19B43212C(a2, CStringPtr);
      v6 = 1;
      goto LABEL_49;
    }

    v7 = CFGetTypeID(cf);
    if (v7 == CFDataGetTypeID())
    {
      BytePtr = CFDataGetBytePtr(cf);
      Length = CFDataGetLength(cf);
      if (BytePtr)
      {
        v10 = xmlBufferCreate();
        if (v10)
        {
          v11 = v10;
          v12 = xmlNewTextWriterMemory(v10, 0);
          if (v12)
          {
            v13 = v12;
            v14 = xmlTextWriterWriteBase64(v12, BytePtr, 0, Length);
            v6 = v14 != -1;
            if (v14 != -1)
            {
              xmlTextWriterFlush(v13);
              v15 = xmlBufferContent(v11);
              v16 = xmlBufferLength(v11);
              if (qword_1ED71C820 != -1)
              {
                dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
              }

              v17 = off_1ED71C828;
              if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEBUG))
              {
                *buf = 134218498;
                *&buf[4] = v15;
                *&buf[12] = 1024;
                *&buf[14] = v16;
                *&buf[18] = 2080;
                *&buf[20] = v15;
                _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_DEBUG, "processed %p %d to (%s)", buf, 0x1Cu);
              }

              v18 = sub_19B420058();
              if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1ED71C820 != -1)
                {
                  dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
                }

                *bufferSize = 134218498;
                *&bufferSize[4] = v15;
                v31 = 1024;
                v32 = v16;
                v33 = 2080;
                v34 = v15;
                v19 = _os_log_send_and_compose_impl();
                sub_19B6BB7CC("Generic", 1, 0, 2, "static BOOL CLNameValuePair::encodeBase64(const void *, unsigned long, std::string &)", "CoreLocation: %s\n", v19);
                if (v19 != buf)
                {
                  free(v19);
                }
              }

              if (v16 < 0)
              {
                sub_19B4C51DC();
              }

              if (v16 >= 0x17)
              {
                operator new();
              }

              buf[23] = v16;
              if (v16)
              {
                memmove(buf, v15, v16);
              }

              buf[v16] = 0;
              if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(a2->__r_.__value_.__l.__data_);
              }

              *&a2->__r_.__value_.__l.__data_ = *buf;
              a2->__r_.__value_.__r.__words[2] = *&buf[16];
            }

            xmlFreeTextWriter(v13);
          }

          else
          {
            v6 = 0;
          }

          xmlBufferFree(v11);
          goto LABEL_49;
        }
      }

      else
      {
        if (qword_1ED71C820 != -1)
        {
          dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
        }

        v27 = off_1ED71C828;
        if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
        {
          *buf = 67240192;
          *&buf[4] = Length;
          _os_log_impl(&dword_19B41C000, v27, OS_LOG_TYPE_FAULT, "can't convert %{public}u data bytes", buf, 8u);
        }

        v28 = sub_19B420058();
        if ((*(v28 + 160) & 0x80000000) == 0 || (*(v28 + 164) & 0x80000000) == 0 || (*(v28 + 168) & 0x80000000) == 0 || *(v28 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C820 != -1)
          {
            dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
          }

          *bufferSize = 67240192;
          *&bufferSize[4] = Length;
          v29 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 0, "static BOOL CLNameValuePair::fromCfType(const CFTypeRef, std::string &)", "CoreLocation: %s\n", v29);
          if (v29 != buf)
          {
            free(v29);
          }
        }
      }

      v6 = 0;
      goto LABEL_49;
    }
  }

  if (qword_1ED71C820 != -1)
  {
    dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
  }

  v20 = off_1ED71C828;
  if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEFAULT))
  {
    if (cf)
    {
      v21 = CFGetTypeID(cf);
    }

    else
    {
      v21 = -1;
    }

    *buf = 134349056;
    *&buf[4] = v21;
    _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_DEFAULT, "#Warning type IDs do not match - %{public}lu", buf, 0xCu);
  }

  v22 = sub_19B420058();
  if (*(v22 + 160) > 1 || *(v22 + 164) > 1 || *(v22 + 168) > 1 || *(v22 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    if (cf)
    {
      v23 = CFGetTypeID(cf);
    }

    else
    {
      v23 = -1;
    }

    *bufferSize = 134349056;
    *&bufferSize[4] = v23;
    v24 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "static BOOL CLNameValuePair::fromCfType(const CFTypeRef, std::string &)", "CoreLocation: %s\n", v24);
    if (v24 != buf)
    {
      free(v24);
    }
  }

  if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
  {
    a2->__r_.__value_.__l.__size_ = 0;
    a2 = a2->__r_.__value_.__r.__words[0];
  }

  else
  {
    *(&a2->__r_.__value_.__s + 23) = 0;
  }

  v6 = 0;
  a2->__r_.__value_.__s.__data_[0] = 0;
LABEL_49:
  v25 = *MEMORY[0x1E69E9840];
  return v6;
}

std::string *sub_19B43212C(std::string *a1, char *__s)
{
  v4 = strlen(__s);

  return sub_19B432174(a1, __s, v4);
}

std::string *sub_19B432174(std::string *__dst, const std::string::value_type *__src, size_t __len)
{
  size = SHIBYTE(__dst->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = __dst->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __len)
    {
      size = __dst->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = __dst->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = __dst;
    if (__len > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(__dst, v8, __len - v8, size, 0, size, __len, __src);
      return __dst;
    }
  }

  if (__len)
  {
    memmove(v7, __src, __len);
    LOBYTE(size) = *(&__dst->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    __dst->__r_.__value_.__l.__size_ = __len;
  }

  else
  {
    *(&__dst->__r_.__value_.__s + 23) = __len & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__len] = 0;
  return __dst;
}

void sub_19B432230(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  v23[2] = *MEMORY[0x1E69E9840];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*(a1 + 23) < 0)
  {
    if (!*(a1 + 8))
    {
LABEL_7:
      v4 = CFCopyUserName();
      goto LABEL_8;
    }

    v2 = *a1;
  }

  else if (!*(a1 + 23))
  {
    goto LABEL_7;
  }

  v4 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v2, 0x8000100u);
LABEL_8:
  v5 = v4;
  sub_19B421798();
  if (sub_19B43242C() && (v6 = getenv("_SET_CLPERSISTENTSTORE_TEST_PATH")) != 0)
  {
    v8 = MEMORY[0x1E696AEC0];
    v23[0] = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v7, v6);
    v23[1] = v5;
    v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v9, v23, 2);
    v12 = objc_msgSend_pathWithComponents_(v8, v11, v10);
    v15 = objc_msgSend_UTF8String(v12, v13, v14);
    sub_19B428B50(&v21, v15);
    *a2 = v21;
    a2[2] = v22;
  }

  else if (v5)
  {
    v16 = CFCopyHomeDirectoryURLForUser();
    v17 = v16;
    if (v16)
    {
      v18 = CFURLCopyFileSystemPath(v16, kCFURLPOSIXPathStyle);
      v19 = v18;
      if (v18)
      {
        sub_19B431834(v18, &v21);
        *a2 = v21;
        a2[2] = v22;
        CFRelease(v19);
      }

      CFRelease(v17);
    }

    CFRelease(v5);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void sub_19B4323AC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B43242C()
{
  if (qword_1ED71C9F8 != -1)
  {
    dispatch_once(&qword_1ED71C9F8, &unk_1F0E3A500);
  }

  return byte_1ED71C974;
}

void sub_19B432474()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFBooleanGetTypeID() && CFBooleanGetValue(v1) == 1)
    {
      byte_1ED71C974 = 1;
    }

    CFRelease(v1);
  }
}

void sub_19B4324F8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = *(a1 + 23);
  if ((v4 & 0x8000000000000000) != 0)
  {
    if (*(a1 + 8))
    {
LABEL_3:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if (*(a1 + 23))
  {
    goto LABEL_3;
  }

  v5 = CFCopyUserName();
  sub_19B431834(v5, &v16);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = *&v16.__r_.__value_.__l.__data_;
  v6 = v16.__r_.__value_.__r.__words[2];
  *(a1 + 16) = *(&v16.__r_.__value_.__l + 2);
  v4 = HIBYTE(v6);
  if ((v4 & 0x80) == 0)
  {
LABEL_4:
    if (!v4)
    {
      return;
    }

    goto LABEL_11;
  }

LABEL_10:
  if (!*(a1 + 8))
  {
    return;
  }

LABEL_11:
  sub_19B432654(&v15);
  v7 = std::string::append(&v15, "/private/var/Managed Preferences/", 0x21uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = *(a1 + 23);
  if (v9 >= 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = *a1;
  }

  if (v9 >= 0)
  {
    v11 = *(a1 + 23);
  }

  else
  {
    v11 = *(a1 + 8);
  }

  v12 = std::string::append(&v16, v10, v11);
  size = v12->__r_.__value_.__l.__size_;
  *a2 = v12->__r_.__value_.__r.__words[0];
  *(a2 + 8) = size;
  *(a2 + 15) = *(&v12->__r_.__value_.__r.__words[1] + 7);
  LOBYTE(size) = *(&v12->__r_.__value_.__s + 23);
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = SHIBYTE(v16.__r_.__value_.__r.__words[2]);
  *(a2 + 23) = size;
  if (v14 < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_19B432620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

const __CFString *sub_19B432654@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (qword_1ED71CAA8 != -1)
  {
    dispatch_once(&qword_1ED71CAA8, &unk_1F0E29020);
  }

  result = qword_1ED71CAA0;
  if (qword_1ED71CAA0)
  {

    return sub_19B431834(result, a1);
  }

  return result;
}

uint64_t sub_19B4326E4(uint64_t *a1, const char *a2)
{
  v62 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFF8];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], a2, a2);
  isDirectory = objc_msgSend_fileURLWithPath_isDirectory_(v4, v6, v5, 0);
  if (isDirectory)
  {
    v53 = 0;
    if (objc_opt_respondsToSelector())
    {
      v9 = objc_msgSend_dataWithContentsOfURL_options_error_(MEMORY[0x1E695DEF0], v8, isDirectory, 0, &v53);
    }

    else
    {
      v9 = objc_msgSend_dataWithContentsOfURL_(MEMORY[0x1E695DEF0], v8, isDirectory);
    }

    v15 = *a1;
    if (!v9)
    {
      (*(v15 + 872))(a1);
      result = v53;
      if (!v53)
      {
        goto LABEL_42;
      }

      v18 = objc_msgSend_domain(v53, v16, v17);
      if (objc_msgSend_isEqual_(v18, v19, *MEMORY[0x1E696A250]) && objc_msgSend_code(v53, v20, v21) == 260)
      {
        if (qword_1ED71C7F8 != -1)
        {
          dispatch_once(&qword_1ED71C7F8, &unk_1F0E3A3C0);
        }

        v22 = qword_1ED71C7F0;
        if (os_log_type_enabled(qword_1ED71C7F0, OS_LOG_TYPE_ERROR))
        {
          v25 = objc_msgSend_description(v53, v23, v24);
          v28 = objc_msgSend_UTF8String(v25, v26, v27);
          *buf = 68289538;
          v55 = 0;
          v56 = 2082;
          v57 = "";
          v58 = 2082;
          v59 = a2;
          v60 = 2082;
          v61 = v28;
          _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:file does not exist... clearing, file:%{public, location:escape_only}s, error:%{public, location:escape_only}s}", buf, 0x26u);
          if (qword_1ED71C7F8 != -1)
          {
            dispatch_once(&qword_1ED71C7F8, &unk_1F0E3A3C0);
          }
        }

        v29 = qword_1ED71C7F0;
        result = os_signpost_enabled(qword_1ED71C7F0);
        if (!result)
        {
          goto LABEL_42;
        }

        v32 = objc_msgSend_description(v53, v30, v31);
        v35 = objc_msgSend_UTF8String(v32, v33, v34);
        *buf = 68289538;
        v55 = 0;
        v56 = 2082;
        v57 = "";
        v58 = 2082;
        v59 = a2;
        v60 = 2082;
        v61 = v35;
        v13 = "file does not exist... clearing";
        v14 = "{msg%{public}.0s:file does not exist... clearing, file:%{public, location:escape_only}s, error:%{public, location:escape_only}s}";
      }

      else
      {
        if (qword_1ED71C7F8 != -1)
        {
          dispatch_once(&qword_1ED71C7F8, &unk_1F0E3A3C0);
        }

        v39 = qword_1ED71C7F0;
        if (os_log_type_enabled(qword_1ED71C7F0, OS_LOG_TYPE_ERROR))
        {
          v42 = objc_msgSend_description(v53, v40, v41);
          v45 = objc_msgSend_UTF8String(v42, v43, v44);
          *buf = 68289538;
          v55 = 0;
          v56 = 2082;
          v57 = "";
          v58 = 2082;
          v59 = a2;
          v60 = 2082;
          v61 = v45;
          _os_log_impl(&dword_19B41C000, v39, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#Warning Error reading file, file:%{public, location:escape_only}s, error:%{public, location:escape_only}s}", buf, 0x26u);
          if (qword_1ED71C7F8 != -1)
          {
            dispatch_once(&qword_1ED71C7F8, &unk_1F0E3A3C0);
          }
        }

        v29 = qword_1ED71C7F0;
        result = os_signpost_enabled(qword_1ED71C7F0);
        if (!result)
        {
          goto LABEL_42;
        }

        v48 = objc_msgSend_description(v53, v46, v47);
        v51 = objc_msgSend_UTF8String(v48, v49, v50);
        *buf = 68289538;
        v55 = 0;
        v56 = 2082;
        v57 = "";
        v58 = 2082;
        v59 = a2;
        v60 = 2082;
        v61 = v51;
        v13 = "#Warning Error reading file";
        v14 = "{msg%{public}.0s:#Warning Error reading file, file:%{public, location:escape_only}s, error:%{public, location:escape_only}s}";
      }

      v37 = v29;
      v38 = 38;
      goto LABEL_41;
    }

    if ((*(v15 + 784))(a1))
    {
      result = 1;
      goto LABEL_42;
    }

    if (qword_1ED71C7F8 != -1)
    {
      dispatch_once(&qword_1ED71C7F8, &unk_1F0E3A3C0);
    }

    v36 = qword_1ED71C7F0;
    if (os_log_type_enabled(qword_1ED71C7F0, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289282;
      v55 = 0;
      v56 = 2082;
      v57 = "";
      v58 = 2082;
      v59 = a2;
      _os_log_impl(&dword_19B41C000, v36, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:could not deserialize property list, file:%{public, location:escape_only}s}", buf, 0x1Cu);
      if (qword_1ED71C7F8 != -1)
      {
        dispatch_once(&qword_1ED71C7F8, &unk_1F0E3A3C0);
      }
    }

    v11 = qword_1ED71C7F0;
    result = os_signpost_enabled(qword_1ED71C7F0);
    if (result)
    {
      *buf = 68289282;
      v55 = 0;
      v56 = 2082;
      v57 = "";
      v58 = 2082;
      v59 = a2;
      v13 = "could not deserialize property list";
      v14 = "{msg%{public}.0s:could not deserialize property list, file:%{public, location:escape_only}s}";
      goto LABEL_32;
    }
  }

  else
  {
    if (qword_1ED71C7F8 != -1)
    {
      dispatch_once(&qword_1ED71C7F8, &unk_1F0E3A3C0);
    }

    v10 = qword_1ED71C7F0;
    if (os_log_type_enabled(qword_1ED71C7F0, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289282;
      v55 = 0;
      v56 = 2082;
      v57 = "";
      v58 = 2082;
      v59 = a2;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Invalid fileURL, filename:%{public, location:escape_only}s}", buf, 0x1Cu);
      if (qword_1ED71C7F8 != -1)
      {
        dispatch_once(&qword_1ED71C7F8, &unk_1F0E3A3C0);
      }
    }

    v11 = qword_1ED71C7F0;
    result = os_signpost_enabled(qword_1ED71C7F0);
    if (result)
    {
      *buf = 68289282;
      v55 = 0;
      v56 = 2082;
      v57 = "";
      v58 = 2082;
      v59 = a2;
      v13 = "Invalid fileURL";
      v14 = "{msg%{public}.0s:Invalid fileURL, filename:%{public, location:escape_only}s}";
LABEL_32:
      v37 = v11;
      v38 = 28;
LABEL_41:
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v37, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v13, v14, buf, v38);
      result = 0;
    }
  }

LABEL_42:
  v52 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B432D1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int buf, int a12, __int128 a13, __int128 a14, __int16 a15, uint64_t a16)
{
  if (a2 == 1)
  {
    v16 = objc_begin_catch(a1);
    if (qword_1ED71C7F8 != -1)
    {
      dispatch_once(&qword_1ED71C7F8, &unk_1F0E3A3C0);
    }

    v17 = qword_1ED71C7F0;
    if (os_log_type_enabled(qword_1ED71C7F0, OS_LOG_TYPE_ERROR))
    {
      buf = 68289538;
      a12 = 0;
      LOWORD(a13) = 2082;
      *(&a13 + 2) = "";
      WORD5(a13) = 2082;
      WORD2(a14) = 2114;
      *(&a14 + 6) = v16;
      _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Can't load data from file, filename:%{public, location:escape_only}s, exception:%{public, location:escape_only}@}", &buf, 0x26u);
      if (qword_1ED71C7F8 != -1)
      {
        dispatch_once(&qword_1ED71C7F8, &unk_1F0E3A3C0);
      }
    }

    v18 = qword_1ED71C7F0;
    if (os_signpost_enabled(qword_1ED71C7F0))
    {
      buf = 68289538;
      a12 = 0;
      LOWORD(a13) = 2082;
      *(&a13 + 2) = "";
      WORD5(a13) = 2082;
      WORD2(a14) = 2114;
      *(&a14 + 6) = v16;
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Can't load data from file", "{msg%{public}.0s:Can't load data from file, filename:%{public, location:escape_only}s, exception:%{public, location:escape_only}@}", &buf, 0x26u);
    }

    objc_end_catch();
    JUMPOUT(0x19B432C20);
  }

  _Unwind_Resume(a1);
}

BOOL sub_19B432E80(uint64_t a1)
{
  os_unfair_lock_lock(&unk_1ED71C8F0);
  v2 = (a1 + 48);
  if (*(a1 + 71) < 0)
  {
    if (!*(a1 + 56))
    {
      goto LABEL_7;
    }

    v2 = *v2;
    goto LABEL_6;
  }

  if (*(a1 + 71))
  {
LABEL_6:
    sub_19B4326E4((a1 + 120), v2);
  }

LABEL_7:
  v3 = CFPreferencesSynchronize(*(a1 + 72), *(a1 + 80), *MEMORY[0x1E695E898]);
  if (*(a1 + 16) == 1)
  {
    sub_19B60DB30(a1, 0);
  }

  os_unfair_lock_unlock(&unk_1ED71C8F0);
  return v3 != 0;
}

void sub_19B432FA0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B432FD8(uint64_t a1, const char *a2, _DWORD *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B43304C(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

uint64_t sub_19B43304C(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  cf = 0;
  if ((*(*a1 + 904))(a1, a2, &cf))
  {
    v6 = sub_19B5EDC64(cf, a3);
    if ((v6 & 1) == 0)
    {
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v7 = off_1ED71C828;
      if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
      {
        v8 = (*(*a1 + 840))(a1);
        *buf = 138412546;
        v20 = v8;
        v21 = 2112;
        v22 = a2;
        _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
      }

      v9 = sub_19B420058();
      if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C820 != -1)
        {
          dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
        }

        v10 = (*(*a1 + 840))(a1);
        v15 = 138412546;
        v16 = v10;
        v17 = 2112;
        v18 = a2;
        v11 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, int &, int) const", "CoreLocation: %s\n", v11);
        if (v11 != buf)
        {
          free(v11);
        }
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v6 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v6;
}

BOOL sub_19B4332F8(uint64_t a1, const __CFString *a2, void *a3)
{
  os_unfair_lock_lock(&unk_1ED71C8F0);
  v6 = sub_19B433A44(a1 + 120, a2, a3);
  os_unfair_lock_unlock(&unk_1ED71C8F0);
  if (v6)
  {
    return 1;
  }

  v7 = CFPreferencesCopyValue(a2, *(a1 + 72), *(a1 + 80), *MEMORY[0x1E695E8B0]);
  *a3 = v7;
  if (v7)
  {
    return 1;
  }

  return sub_19B433A44(a1 + 104, a2, a3);
}

void sub_19B4333C0(uint64_t a1)
{
  *a1 = &unk_1F0E317E8;
  *(a1 + 8) = 0;
  *(a1 + 12) = 0xFFFFFFFF00000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  sub_19B4294F0((a1 + 40));
}

void sub_19B433474(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    sub_19B41FFEC(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B4334F0(uint64_t a1, const __CFString *a2, uint64_t *a3, int a4)
{
  v39 = *MEMORY[0x1E69E9840];
  cf = 0;
  result = (*(*a1 + 912))(a1, a2, &cf);
  if (!result)
  {
    goto LABEL_47;
  }

  *a3 = 0;
  v8 = CFGetTypeID(cf);
  if (v8 == CFArrayGetTypeID())
  {
    v9 = a4 & ~(a4 >> 31);
    if (CFArrayGetCount(cf) > v9)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(cf, v9);
LABEL_46:
      *a3 = ValueAtIndex;
      CFRetain(ValueAtIndex);
      CFRelease(cf);
      result = 1;
      goto LABEL_47;
    }

    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v18 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      sub_19B431834(a2, __p);
      v19 = SBYTE3(v34);
      v20 = *__p;
      Count = CFArrayGetCount(cf);
      v22 = __p;
      if (v19 < 0)
      {
        v22 = v20;
      }

      *buf = 136446722;
      *v36 = v22;
      *&v36[8] = 1026;
      *&v36[10] = v9;
      v37 = 2050;
      v38 = Count;
      _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_FAULT, "specified index is out of range for key %{public}s (%{public}d of %{public}ld)", buf, 0x1Cu);
      if (SBYTE3(v34) < 0)
      {
        operator delete(*__p);
      }
    }

    v23 = sub_19B420058();
    if ((*(v23 + 160) & 0x80000000) != 0 && (*(v23 + 164) & 0x80000000) != 0 && (*(v23 + 168) & 0x80000000) != 0 && !*(v23 + 152))
    {
      goto LABEL_43;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    sub_19B431834(a2, v29);
    v24 = v30;
    v25 = v29[0];
    v26 = CFArrayGetCount(cf);
    v27 = v29;
    if (v24 < 0)
    {
      v27 = v25;
    }

    *__p = 136446722;
    *&__p[4] = v27;
    *&__p[12] = 1026;
    *&__p[14] = v9;
    v33 = 2050;
    v34 = v26;
    v17 = _os_log_send_and_compose_impl();
    if (v30 < 0)
    {
      operator delete(v29[0]);
    }
  }

  else
  {
    if (a4 < 1)
    {
      ValueAtIndex = cf;
      goto LABEL_46;
    }

    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v11 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      v12 = CFGetTypeID(cf);
      sub_19B431834(a2, __p);
      v13 = (v34 & 0x80000000) == 0 ? __p : *__p;
      *buf = 67240706;
      *v36 = a4;
      *&v36[4] = 2050;
      *&v36[6] = v12;
      v37 = 2082;
      v38 = v13;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_FAULT, "specified index %{public}d not applicable to type %{public}lu for key %{public}s", buf, 0x1Cu);
      if (SBYTE3(v34) < 0)
      {
        operator delete(*__p);
      }
    }

    v14 = sub_19B420058();
    if ((*(v14 + 160) & 0x80000000) != 0 && (*(v14 + 164) & 0x80000000) != 0 && (*(v14 + 168) & 0x80000000) != 0 && !*(v14 + 152))
    {
      goto LABEL_43;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v15 = CFGetTypeID(cf);
    sub_19B431834(a2, v29);
    if (v30 >= 0)
    {
      v16 = v29;
    }

    else
    {
      v16 = v29[0];
    }

    *__p = 67240706;
    *&__p[4] = a4;
    *&__p[8] = 2050;
    *&__p[10] = v15;
    v33 = 2082;
    v34 = v16;
    v17 = _os_log_send_and_compose_impl();
    if (v30 < 0)
    {
      operator delete(v29[0]);
    }
  }

  sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::copyInternal(CFStringRef, CFTypeRef &, int) const", "CoreLocation: %s\n", v17);
  if (v17 != buf)
  {
    free(v17);
  }

LABEL_43:
  CFRelease(cf);
  result = *a3;
  if (*a3)
  {
    CFRelease(result);
    result = 0;
  }

LABEL_47:
  v28 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B433A0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_19B433A44(uint64_t a1, const void *a2, void *a3)
{
  Value = CFDictionaryGetValue(*(a1 + 8), a2);
  v5 = Value;
  *a3 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  return v5 != 0;
}

os_log_t sub_19B433A88()
{
  result = os_log_create("com.apple.locationd.Motion", "Motion");
  off_1ED71C838 = result;
  return result;
}

os_log_t sub_19B433AB8()
{
  result = os_log_create("com.apple.locationd.Motion", "Motion");
  off_1ED71C838 = result;
  return result;
}

os_log_t sub_19B433AE8()
{
  result = os_log_create("com.apple.locationd.Motion", "Motion");
  off_1ED71C838 = result;
  return result;
}

os_log_t sub_19B433B18()
{
  result = os_log_create("com.apple.locationd.Motion", "Motion");
  off_1ED71C838 = result;
  return result;
}

os_log_t sub_19B433B48()
{
  result = os_log_create("com.apple.locationd.Motion", "Motion");
  off_1ED71C838 = result;
  return result;
}

os_log_t sub_19B433B78()
{
  result = os_log_create("com.apple.locationd.Motion", "Motion");
  off_1ED71C838 = result;
  return result;
}

os_log_t sub_19B433BA8()
{
  result = os_log_create("com.apple.locationd.Motion", "Motion");
  off_1ED71C838 = result;
  return result;
}

os_log_t sub_19B433BD8()
{
  result = os_log_create("com.apple.locationd.Motion", "Motion");
  off_1ED71C838 = result;
  return result;
}

os_log_t sub_19B433C08()
{
  result = os_log_create("com.apple.locationd.Motion", "Motion");
  off_1ED71C838 = result;
  return result;
}

os_log_t sub_19B433C38()
{
  result = os_log_create("com.apple.locationd.Motion", "Motion");
  off_1ED71C838 = result;
  return result;
}

os_log_t sub_19B433C68()
{
  result = os_log_create("com.apple.locationd.Motion", "Motion");
  off_1ED71C838 = result;
  return result;
}

os_log_t sub_19B433C98()
{
  result = os_log_create("com.apple.locationd.Motion", "Motion");
  off_1ED71C838 = result;
  return result;
}

os_log_t sub_19B433CC8()
{
  result = os_log_create("com.apple.locationd.Motion", "Motion");
  off_1ED71C838 = result;
  return result;
}

os_log_t sub_19B433CF8()
{
  result = os_log_create("com.apple.locationd.Motion", "Motion");
  off_1ED71C838 = result;
  return result;
}

os_log_t sub_19B433D28()
{
  result = os_log_create("com.apple.locationd.Motion", "Motion");
  off_1ED71C838 = result;
  return result;
}

os_log_t sub_19B433D58()
{
  result = os_log_create("com.apple.locationd.Motion", "Motion");
  off_1ED71C838 = result;
  return result;
}

os_log_t sub_19B433D88()
{
  result = os_log_create("com.apple.locationd.Motion", "Motion");
  off_1ED71C838 = result;
  return result;
}

os_log_t sub_19B433DB8()
{
  result = os_log_create("com.apple.locationd.Motion", "Motion");
  off_1ED71C838 = result;
  return result;
}

os_log_t sub_19B433DE8()
{
  result = os_log_create("com.apple.locationd.Motion", "Motion");
  off_1ED71C838 = result;
  return result;
}

os_log_t sub_19B433E18()
{
  result = os_log_create("com.apple.locationd.Motion", "Motion");
  off_1ED71C838 = result;
  return result;
}

os_log_t sub_19B433E48()
{
  result = os_log_create("com.apple.locationd.Motion", "Motion");
  off_1ED71C838 = result;
  return result;
}

os_log_t sub_19B433E78()
{
  result = os_log_create("com.apple.locationd.Motion", "Motion");
  off_1ED71C838 = result;
  return result;
}

void sub_19B433EE4()
{
  if (qword_1ED71C990 != -1)
  {
    dispatch_once(&qword_1ED71C990, &unk_1F0E3A400);
  }

  v0 = 1;
  if ((dword_1ED71C97C - 259) >= 0x15)
  {
    v0 = (dword_1ED71C97C - 198) < 4 || dword_1ED71C97C == 1;
  }

  byte_1ED71C971 = v0;
}

void sub_19B433F54()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFBooleanGetTypeID() && CFBooleanGetValue(v1))
    {
      v3 = 4;
    }

    else
    {
      v3 = sub_19B433FE8();
    }

    dword_1ED71C97C = v3;

    CFRelease(v1);
  }

  else
  {
    dword_1ED71C97C = sub_19B433FE8();
  }
}

uint64_t sub_19B433FE8()
{
  v19 = *MEMORY[0x1E69E9840];
  if (MGIsDeviceOfType())
  {
    result = 2;
  }

  else
  {
    v17 = 1244490093;
    *buf = xmmword_19B7B7F10;
    if (MGIsDeviceOfType() & 1) != 0 || (v12 = 1377801277, *v11 = xmmword_19B7B7F24, (MGIsDeviceOfType()))
    {
      result = 5;
    }

    else if (MGIsDeviceOfType())
    {
      result = 19;
    }

    else if (MGIsDeviceOfType() & 1) != 0 || (v17 = 1839812531, *buf = xmmword_19B7B7F38, (MGIsDeviceOfType()) || (MGIsDeviceOfType())
    {
      result = 20;
    }

    else if (MGIsDeviceOfType())
    {
      result = 52;
    }

    else
    {
      v17 = -435113336;
      *buf = xmmword_19B7B7F4C;
      if (MGIsDeviceOfType())
      {
        result = 53;
      }

      else
      {
        v17 = -1997581659;
        *buf = xmmword_19B7B7F60;
        if (MGIsDeviceOfType() & 1) != 0 || (MGIsDeviceOfType())
        {
          result = 158;
        }

        else
        {
          v17 = -1441055153;
          *buf = xmmword_19B7B7F74;
          if (MGIsDeviceOfType())
          {
            result = 159;
          }

          else if (MGIsDeviceOfType())
          {
            result = 160;
          }

          else if (MGIsDeviceOfType())
          {
            result = 3;
          }

          else if (MGIsDeviceOfType())
          {
            result = 6;
          }

          else
          {
            v17 = 1602014129;
            *buf = xmmword_19B7B7F88;
            if (MGIsDeviceOfType())
            {
              result = 7;
            }

            else
            {
              v17 = -810116762;
              *buf = xmmword_19B7B7F9C;
              if (MGIsDeviceOfType())
              {
                result = 8;
              }

              else
              {
                v17 = -1195351767;
                *buf = xmmword_19B7B7FB0;
                if (MGIsDeviceOfType())
                {
                  result = 9;
                }

                else if (MGIsDeviceOfType())
                {
                  result = 10;
                }

                else if (MGIsDeviceOfType())
                {
                  result = 11;
                }

                else
                {
                  v17 = 1789837692;
                  *buf = xmmword_19B7B7FC4;
                  if (MGIsDeviceOfType())
                  {
                    result = 13;
                  }

                  else
                  {
                    v17 = 48355600;
                    *buf = xmmword_19B7B7FD8;
                    if (MGIsDeviceOfType())
                    {
                      result = 14;
                    }

                    else
                    {
                      v17 = -1239654590;
                      *buf = xmmword_19B7B7FEC;
                      if (MGIsDeviceOfType())
                      {
                        result = 15;
                      }

                      else
                      {
                        v17 = -679691073;
                        *buf = xmmword_19B7B8000;
                        if (MGIsDeviceOfType())
                        {
                          result = 16;
                        }

                        else
                        {
                          v17 = -1579092758;
                          *buf = xmmword_19B7B8014;
                          if (MGIsDeviceOfType())
                          {
                            result = 17;
                          }

                          else
                          {
                            v17 = 1430379884;
                            *buf = xmmword_19B7B8028;
                            if (MGIsDeviceOfType())
                            {
                              result = 18;
                            }

                            else if (MGIsDeviceOfType())
                            {
                              result = 21;
                            }

                            else
                            {
                              v17 = -798153473;
                              *buf = xmmword_19B7B803C;
                              if (MGIsDeviceOfType())
                              {
                                result = 22;
                              }

                              else
                              {
                                v17 = -776721724;
                                *buf = xmmword_19B7B8050;
                                if (MGIsDeviceOfType())
                                {
                                  result = 23;
                                }

                                else
                                {
                                  v17 = -1403227947;
                                  *buf = xmmword_19B7B8064;
                                  if (MGIsDeviceOfType())
                                  {
                                    result = 24;
                                  }

                                  else
                                  {
                                    v17 = 729118884;
                                    *buf = xmmword_19B7B8078;
                                    if (MGIsDeviceOfType())
                                    {
                                      result = 25;
                                    }

                                    else
                                    {
                                      v17 = 1046806126;
                                      *buf = xmmword_19B7B808C;
                                      if (MGIsDeviceOfType() & 1) != 0 || (v12 = -188760945, *v11 = xmmword_19B7B80A0, (MGIsDeviceOfType()))
                                      {
                                        result = 26;
                                      }

                                      else
                                      {
                                        v17 = -489993439;
                                        *buf = xmmword_19B7B80B4;
                                        if (MGIsDeviceOfType())
                                        {
                                          result = 27;
                                        }

                                        else
                                        {
                                          v17 = 886875686;
                                          *buf = xmmword_19B7B80C8;
                                          if (MGIsDeviceOfType())
                                          {
                                            result = 28;
                                          }

                                          else
                                          {
                                            v17 = -1639077591;
                                            *buf = xmmword_19B7B80DC;
                                            if (MGIsDeviceOfType())
                                            {
                                              result = 29;
                                            }

                                            else
                                            {
                                              v17 = 338555555;
                                              *buf = xmmword_19B7B80F0;
                                              if (MGIsDeviceOneOfType())
                                              {
                                                result = 30;
                                              }

                                              else
                                              {
                                                v17 = 1032708406;
                                                *buf = xmmword_19B7B8104;
                                                if (MGIsDeviceOfType())
                                                {
                                                  result = 31;
                                                }

                                                else
                                                {
                                                  v17 = 729903963;
                                                  *buf = xmmword_19B7B8118;
                                                  if (MGIsDeviceOfType())
                                                  {
                                                    result = 32;
                                                  }

                                                  else
                                                  {
                                                    v17 = 1278131292;
                                                    *buf = xmmword_19B7B812C;
                                                    if (MGIsDeviceOfType())
                                                    {
                                                      result = 33;
                                                    }

                                                    else
                                                    {
                                                      v17 = -1841712216;
                                                      *buf = xmmword_19B7B8140;
                                                      if (MGIsDeviceOfType())
                                                      {
                                                        result = 34;
                                                      }

                                                      else
                                                      {
                                                        v17 = 1275676051;
                                                        *buf = xmmword_19B7B8154;
                                                        if (MGIsDeviceOfType())
                                                        {
                                                          result = 35;
                                                        }

                                                        else
                                                        {
                                                          v17 = 1908474541;
                                                          *buf = xmmword_19B7B8168;
                                                          if (MGIsDeviceOfType())
                                                          {
                                                            result = 36;
                                                          }

                                                          else
                                                          {
                                                            v17 = -1022451852;
                                                            *buf = xmmword_19B7B817C;
                                                            if (MGIsDeviceOfType())
                                                            {
                                                              result = 62;
                                                            }

                                                            else
                                                            {
                                                              v17 = 1729782187;
                                                              *buf = xmmword_19B7B8190;
                                                              if (MGIsDeviceOfType())
                                                              {
                                                                result = 63;
                                                              }

                                                              else if (MGIsDeviceOfType())
                                                              {
                                                                result = 37;
                                                              }

                                                              else
                                                              {
                                                                v17 = 368885834;
                                                                *buf = xmmword_19B7B81A4;
                                                                if (MGIsDeviceOfType())
                                                                {
                                                                  result = 38;
                                                                }

                                                                else
                                                                {
                                                                  v17 = -414334491;
                                                                  *buf = xmmword_19B7B81B8;
                                                                  if (MGIsDeviceOfType())
                                                                  {
                                                                    result = 39;
                                                                  }

                                                                  else if (MGIsDeviceOfType())
                                                                  {
                                                                    result = 40;
                                                                  }

                                                                  else
                                                                  {
                                                                    v17 = -526227167;
                                                                    *buf = xmmword_19B7B81CC;
                                                                    if (MGIsDeviceOfType())
                                                                    {
                                                                      result = 41;
                                                                    }

                                                                    else
                                                                    {
                                                                      v17 = -1509831889;
                                                                      *buf = xmmword_19B7B81E0;
                                                                      if (MGIsDeviceOfType())
                                                                      {
                                                                        result = 42;
                                                                      }

                                                                      else
                                                                      {
                                                                        v17 = 1960366092;
                                                                        *buf = xmmword_19B7B81F4;
                                                                        if (MGIsDeviceOfType())
                                                                        {
                                                                          result = 43;
                                                                        }

                                                                        else
                                                                        {
                                                                          v17 = -2114570942;
                                                                          *buf = xmmword_19B7B8208;
                                                                          if (MGIsDeviceOfType())
                                                                          {
                                                                            result = 148;
                                                                          }

                                                                          else
                                                                          {
                                                                            v17 = -1527788847;
                                                                            *buf = xmmword_19B7B821C;
                                                                            if (MGIsDeviceOfType())
                                                                            {
                                                                              result = 44;
                                                                            }

                                                                            else
                                                                            {
                                                                              v17 = 1532898719;
                                                                              *buf = xmmword_19B7B8230;
                                                                              if (MGIsDeviceOfType())
                                                                              {
                                                                                result = 45;
                                                                              }

                                                                              else
                                                                              {
                                                                                v17 = 996646949;
                                                                                *buf = xmmword_19B7B8244;
                                                                                if (MGIsDeviceOfType())
                                                                                {
                                                                                  result = 46;
                                                                                }

                                                                                else
                                                                                {
                                                                                  v17 = -563086000;
                                                                                  *buf = xmmword_19B7B8258;
                                                                                  if (MGIsDeviceOfType())
                                                                                  {
                                                                                    result = 47;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v17 = 659506830;
                                                                                    *buf = xmmword_19B7B826C;
                                                                                    if (MGIsDeviceOfType())
                                                                                    {
                                                                                      result = 48;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v17 = 213746202;
                                                                                      *buf = xmmword_19B7B8280;
                                                                                      if (MGIsDeviceOfType())
                                                                                      {
                                                                                        result = 49;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v17 = 289690957;
                                                                                        *buf = xmmword_19B7B8294;
                                                                                        if (MGIsDeviceOfType())
                                                                                        {
                                                                                          result = 50;
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v17 = 586720268;
                                                                                          *buf = xmmword_19B7B82A8;
                                                                                          if (MGIsDeviceOfType())
                                                                                          {
                                                                                            result = 51;
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v17 = -350584140;
                                                                                            *buf = xmmword_19B7B82BC;
                                                                                            if (MGIsDeviceOfType())
                                                                                            {
                                                                                              result = 54;
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              v17 = 368778837;
                                                                                              *buf = xmmword_19B7B82D0;
                                                                                              if (MGIsDeviceOfType())
                                                                                              {
                                                                                                result = 55;
                                                                                              }

                                                                                              else if (MGIsDeviceOfType())
                                                                                              {
                                                                                                result = 56;
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v17 = -1418383976;
                                                                                                *buf = xmmword_19B7B82E4;
                                                                                                if (MGIsDeviceOfType())
                                                                                                {
                                                                                                  result = 57;
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  v17 = -1213485500;
                                                                                                  *buf = xmmword_19B7B82F8;
                                                                                                  if (MGIsDeviceOfType())
                                                                                                  {
                                                                                                    result = 58;
                                                                                                  }

                                                                                                  else if (MGIsDeviceOfType())
                                                                                                  {
                                                                                                    result = 59;
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    v17 = 1425254930;
                                                                                                    *buf = xmmword_19B7B830C;
                                                                                                    if (MGIsDeviceOfType())
                                                                                                    {
                                                                                                      result = 60;
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v17 = 1899561076;
                                                                                                      *buf = xmmword_19B7B8320;
                                                                                                      if (MGIsDeviceOfType())
                                                                                                      {
                                                                                                        result = 61;
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        v17 = -199226823;
                                                                                                        *buf = xmmword_19B7B8334;
                                                                                                        if (MGIsDeviceOfType() & 1) != 0 || (v12 = 1412427398, *v11 = xmmword_19B7B8348, (MGIsDeviceOfType()))
                                                                                                        {
                                                                                                          result = 64;
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          v17 = -1283070668;
                                                                                                          *buf = xmmword_19B7B835C;
                                                                                                          if (MGIsDeviceOfType() & 1) != 0 || (v12 = 160260070, *v11 = xmmword_19B7B8370, (MGIsDeviceOfType()))
                                                                                                          {
                                                                                                            result = 65;
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            v17 = 1711910369;
                                                                                                            *buf = xmmword_19B7B8384;
                                                                                                            if (MGIsDeviceOfType())
                                                                                                            {
                                                                                                              result = 66;
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              v17 = -1282800328;
                                                                                                              *buf = xmmword_19B7B8398;
                                                                                                              if (MGIsDeviceOfType())
                                                                                                              {
                                                                                                                result = 67;
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                v17 = 897736383;
                                                                                                                *buf = xmmword_19B7B83AC;
                                                                                                                if (MGIsDeviceOfType())
                                                                                                                {
                                                                                                                  result = 68;
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  v17 = -453987047;
                                                                                                                  *buf = xmmword_19B7B83C0;
                                                                                                                  if (MGIsDeviceOfType())
                                                                                                                  {
                                                                                                                    result = 69;
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    v17 = 450980336;
                                                                                                                    *buf = xmmword_19B7B83D4;
                                                                                                                    if (MGIsDeviceOfType())
                                                                                                                    {
                                                                                                                      result = 70;
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      v17 = 414393924;
                                                                                                                      *buf = xmmword_19B7B83E8;
                                                                                                                      if (MGIsDeviceOfType())
                                                                                                                      {
                                                                                                                        result = 71;
                                                                                                                      }

                                                                                                                      else
                                                                                                                      {
                                                                                                                        v17 = -996295886;
                                                                                                                        *buf = xmmword_19B7B83FC;
                                                                                                                        if (MGIsDeviceOfType())
                                                                                                                        {
                                                                                                                          result = 72;
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          v17 = -337121064;
                                                                                                                          *buf = xmmword_19B7B8410;
                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                          {
                                                                                                                            result = 73;
                                                                                                                          }

                                                                                                                          else
                                                                                                                          {
                                                                                                                            v17 = -2092955395;
                                                                                                                            *buf = xmmword_19B7B8424;
                                                                                                                            if (MGIsDeviceOfType())
                                                                                                                            {
                                                                                                                              result = 74;
                                                                                                                            }

                                                                                                                            else
                                                                                                                            {
                                                                                                                              v17 = 674998600;
                                                                                                                              *buf = xmmword_19B7B8438;
                                                                                                                              if (MGIsDeviceOfType())
                                                                                                                              {
                                                                                                                                result = 75;
                                                                                                                              }

                                                                                                                              else
                                                                                                                              {
                                                                                                                                v17 = 317289457;
                                                                                                                                *buf = xmmword_19B7B844C;
                                                                                                                                if (MGIsDeviceOfType())
                                                                                                                                {
                                                                                                                                  result = 76;
                                                                                                                                }

                                                                                                                                else
                                                                                                                                {
                                                                                                                                  v17 = 401945557;
                                                                                                                                  *buf = xmmword_19B7B8460;
                                                                                                                                  if (MGIsDeviceOfType())
                                                                                                                                  {
                                                                                                                                    result = 77;
                                                                                                                                  }

                                                                                                                                  else
                                                                                                                                  {
                                                                                                                                    v17 = -232427879;
                                                                                                                                    *buf = xmmword_19B7B8474;
                                                                                                                                    if (MGIsDeviceOfType())
                                                                                                                                    {
                                                                                                                                      result = 78;
                                                                                                                                    }

                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                      v17 = -427474227;
                                                                                                                                      *buf = xmmword_19B7B8488;
                                                                                                                                      if (MGIsDeviceOfType() & 1) != 0 || (v12 = 1477534141, *v11 = xmmword_19B7B849C, (MGIsDeviceOfType()))
                                                                                                                                      {
                                                                                                                                        result = 79;
                                                                                                                                      }

                                                                                                                                      else
                                                                                                                                      {
                                                                                                                                        v17 = -1843102369;
                                                                                                                                        *buf = xmmword_19B7B84B0;
                                                                                                                                        if (MGIsDeviceOfType())
                                                                                                                                        {
                                                                                                                                          result = 80;
                                                                                                                                        }

                                                                                                                                        else if (MGIsDeviceOfType())
                                                                                                                                        {
                                                                                                                                          result = 81;
                                                                                                                                        }

                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                          v17 = 470738981;
                                                                                                                                          *buf = xmmword_19B7B84C4;
                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                          {
                                                                                                                                            result = 82;
                                                                                                                                          }

                                                                                                                                          else if (MGIsDeviceOfType())
                                                                                                                                          {
                                                                                                                                            result = 83;
                                                                                                                                          }

                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                            v17 = 710807826;
                                                                                                                                            *buf = xmmword_19B7B84D8;
                                                                                                                                            if (MGIsDeviceOfType())
                                                                                                                                            {
                                                                                                                                              result = 84;
                                                                                                                                            }

                                                                                                                                            else if (MGIsDeviceOfType())
                                                                                                                                            {
                                                                                                                                              result = 85;
                                                                                                                                            }

                                                                                                                                            else
                                                                                                                                            {
                                                                                                                                              v17 = 1860682089;
                                                                                                                                              *buf = xmmword_19B7B84EC;
                                                                                                                                              if (MGIsDeviceOfType())
                                                                                                                                              {
                                                                                                                                                result = 86;
                                                                                                                                              }

                                                                                                                                              else if (MGIsDeviceOfType())
                                                                                                                                              {
                                                                                                                                                result = 87;
                                                                                                                                              }

                                                                                                                                              else
                                                                                                                                              {
                                                                                                                                                v17 = -2085056298;
                                                                                                                                                *buf = xmmword_19B7B8500;
                                                                                                                                                if (MGIsDeviceOfType())
                                                                                                                                                {
                                                                                                                                                  result = 88;
                                                                                                                                                }

                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                  v17 = 2146530832;
                                                                                                                                                  *buf = xmmword_19B7B8514;
                                                                                                                                                  if (MGIsDeviceOfType())
                                                                                                                                                  {
                                                                                                                                                    result = 89;
                                                                                                                                                  }

                                                                                                                                                  else
                                                                                                                                                  {
                                                                                                                                                    v17 = -1742178852;
                                                                                                                                                    *buf = xmmword_19B7B8528;
                                                                                                                                                    if (MGIsDeviceOfType())
                                                                                                                                                    {
                                                                                                                                                      result = 90;
                                                                                                                                                    }

                                                                                                                                                    else
                                                                                                                                                    {
                                                                                                                                                      v17 = 617174804;
                                                                                                                                                      *buf = xmmword_19B7B853C;
                                                                                                                                                      if (MGIsDeviceOfType())
                                                                                                                                                      {
                                                                                                                                                        result = 91;
                                                                                                                                                      }

                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                        v17 = 1330813729;
                                                                                                                                                        *buf = xmmword_19B7B8550;
                                                                                                                                                        if (MGIsDeviceOfType())
                                                                                                                                                        {
                                                                                                                                                          result = 92;
                                                                                                                                                        }

                                                                                                                                                        else if (MGIsDeviceOfType())
                                                                                                                                                        {
                                                                                                                                                          result = 93;
                                                                                                                                                        }

                                                                                                                                                        else if (MGIsDeviceOfType())
                                                                                                                                                        {
                                                                                                                                                          result = 94;
                                                                                                                                                        }

                                                                                                                                                        else
                                                                                                                                                        {
                                                                                                                                                          v17 = 152704997;
                                                                                                                                                          *buf = xmmword_19B7B8564;
                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                          {
                                                                                                                                                            result = 95;
                                                                                                                                                          }

                                                                                                                                                          else
                                                                                                                                                          {
                                                                                                                                                            v17 = -338255497;
                                                                                                                                                            *buf = xmmword_19B7B8578;
                                                                                                                                                            if (MGIsDeviceOfType())
                                                                                                                                                            {
                                                                                                                                                              result = 96;
                                                                                                                                                            }

                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                              v17 = -1040127899;
                                                                                                                                                              *buf = xmmword_19B7B858C;
                                                                                                                                                              if (MGIsDeviceOfType())
                                                                                                                                                              {
                                                                                                                                                                result = 97;
                                                                                                                                                              }

                                                                                                                                                              else
                                                                                                                                                              {
                                                                                                                                                                v17 = 283967174;
                                                                                                                                                                *buf = xmmword_19B7B85A0;
                                                                                                                                                                if (MGIsDeviceOfType())
                                                                                                                                                                {
                                                                                                                                                                  result = 98;
                                                                                                                                                                }

                                                                                                                                                                else
                                                                                                                                                                {
                                                                                                                                                                  v17 = 1530707451;
                                                                                                                                                                  *buf = xmmword_19B7B85B4;
                                                                                                                                                                  if (MGIsDeviceOfType())
                                                                                                                                                                  {
                                                                                                                                                                    result = 99;
                                                                                                                                                                  }

                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                    v17 = -871113647;
                                                                                                                                                                    *buf = xmmword_19B7B85C8;
                                                                                                                                                                    if (MGIsDeviceOfType())
                                                                                                                                                                    {
                                                                                                                                                                      result = 100;
                                                                                                                                                                    }

                                                                                                                                                                    else
                                                                                                                                                                    {
                                                                                                                                                                      v17 = 483476120;
                                                                                                                                                                      *buf = xmmword_19B7B85DC;
                                                                                                                                                                      if (MGIsDeviceOfType())
                                                                                                                                                                      {
                                                                                                                                                                        result = 101;
                                                                                                                                                                      }

                                                                                                                                                                      else
                                                                                                                                                                      {
                                                                                                                                                                        v17 = 1472775220;
                                                                                                                                                                        *buf = xmmword_19B7B85F0;
                                                                                                                                                                        if (MGIsDeviceOfType())
                                                                                                                                                                        {
                                                                                                                                                                          result = 102;
                                                                                                                                                                        }

                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                          v17 = 56502976;
                                                                                                                                                                          *buf = xmmword_19B7B8604;
                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                          {
                                                                                                                                                                            result = 103;
                                                                                                                                                                          }

                                                                                                                                                                          else
                                                                                                                                                                          {
                                                                                                                                                                            v17 = 282158961;
                                                                                                                                                                            *buf = xmmword_19B7B8618;
                                                                                                                                                                            if (MGIsDeviceOfType())
                                                                                                                                                                            {
                                                                                                                                                                              result = 104;
                                                                                                                                                                            }

                                                                                                                                                                            else
                                                                                                                                                                            {
                                                                                                                                                                              v17 = 1282132887;
                                                                                                                                                                              *buf = xmmword_19B7B862C;
                                                                                                                                                                              if (MGIsDeviceOfType())
                                                                                                                                                                              {
                                                                                                                                                                                result = 105;
                                                                                                                                                                              }

                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                v17 = -961843768;
                                                                                                                                                                                *buf = xmmword_19B7B8640;
                                                                                                                                                                                if (MGIsDeviceOfType())
                                                                                                                                                                                {
                                                                                                                                                                                  result = 106;
                                                                                                                                                                                }

                                                                                                                                                                                else
                                                                                                                                                                                {
                                                                                                                                                                                  v17 = 1326690998;
                                                                                                                                                                                  *buf = xmmword_19B7B8654;
                                                                                                                                                                                  if (MGIsDeviceOfType())
                                                                                                                                                                                  {
                                                                                                                                                                                    result = 107;
                                                                                                                                                                                  }

                                                                                                                                                                                  else
                                                                                                                                                                                  {
                                                                                                                                                                                    v17 = -441172408;
                                                                                                                                                                                    *buf = xmmword_19B7B8668;
                                                                                                                                                                                    if (MGIsDeviceOfType())
                                                                                                                                                                                    {
                                                                                                                                                                                      result = 108;
                                                                                                                                                                                    }

                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                      v17 = -126099363;
                                                                                                                                                                                      *buf = xmmword_19B7B867C;
                                                                                                                                                                                      if (MGIsDeviceOfType())
                                                                                                                                                                                      {
                                                                                                                                                                                        result = 109;
                                                                                                                                                                                      }

                                                                                                                                                                                      else
                                                                                                                                                                                      {
                                                                                                                                                                                        v17 = 1756484512;
                                                                                                                                                                                        *buf = xmmword_19B7B8690;
                                                                                                                                                                                        if (MGIsDeviceOfType())
                                                                                                                                                                                        {
                                                                                                                                                                                          result = 110;
                                                                                                                                                                                        }

                                                                                                                                                                                        else
                                                                                                                                                                                        {
                                                                                                                                                                                          v17 = 763775061;
                                                                                                                                                                                          *buf = xmmword_19B7B86A4;
                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                          {
                                                                                                                                                                                            result = 111;
                                                                                                                                                                                          }

                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                            v17 = -1092155788;
                                                                                                                                                                                            *buf = xmmword_19B7B86B8;
                                                                                                                                                                                            if (MGIsDeviceOfType())
                                                                                                                                                                                            {
                                                                                                                                                                                              result = 112;
                                                                                                                                                                                            }

                                                                                                                                                                                            else
                                                                                                                                                                                            {
                                                                                                                                                                                              v17 = -557458837;
                                                                                                                                                                                              *buf = xmmword_19B7B86CC;
                                                                                                                                                                                              if (MGIsDeviceOfType())
                                                                                                                                                                                              {
                                                                                                                                                                                                result = 113;
                                                                                                                                                                                              }

                                                                                                                                                                                              else
                                                                                                                                                                                              {
                                                                                                                                                                                                v17 = -63049871;
                                                                                                                                                                                                *buf = xmmword_19B7B86E0;
                                                                                                                                                                                                if (MGIsDeviceOfType())
                                                                                                                                                                                                {
                                                                                                                                                                                                  result = 114;
                                                                                                                                                                                                }

                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                  v17 = 1730000236;
                                                                                                                                                                                                  *buf = xmmword_19B7B86F4;
                                                                                                                                                                                                  if (MGIsDeviceOfType())
                                                                                                                                                                                                  {
                                                                                                                                                                                                    result = 115;
                                                                                                                                                                                                  }

                                                                                                                                                                                                  else
                                                                                                                                                                                                  {
                                                                                                                                                                                                    v17 = 406601745;
                                                                                                                                                                                                    *buf = xmmword_19B7B8708;
                                                                                                                                                                                                    if (MGIsDeviceOfType())
                                                                                                                                                                                                    {
                                                                                                                                                                                                      result = 116;
                                                                                                                                                                                                    }

                                                                                                                                                                                                    else
                                                                                                                                                                                                    {
                                                                                                                                                                                                      v17 = 1530338216;
                                                                                                                                                                                                      *buf = xmmword_19B7B871C;
                                                                                                                                                                                                      if (MGIsDeviceOfType())
                                                                                                                                                                                                      {
                                                                                                                                                                                                        result = 117;
                                                                                                                                                                                                      }

                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                        v17 = -1930811061;
                                                                                                                                                                                                        *buf = xmmword_19B7B8730;
                                                                                                                                                                                                        if (MGIsDeviceOfType())
                                                                                                                                                                                                        {
                                                                                                                                                                                                          result = 118;
                                                                                                                                                                                                        }

                                                                                                                                                                                                        else
                                                                                                                                                                                                        {
                                                                                                                                                                                                          v17 = 1654218604;
                                                                                                                                                                                                          *buf = xmmword_19B7B8744;
                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                          {
                                                                                                                                                                                                            result = 119;
                                                                                                                                                                                                          }

                                                                                                                                                                                                          else
                                                                                                                                                                                                          {
                                                                                                                                                                                                            v17 = -182498503;
                                                                                                                                                                                                            *buf = xmmword_19B7B8758;
                                                                                                                                                                                                            if (MGIsDeviceOfType())
                                                                                                                                                                                                            {
                                                                                                                                                                                                              result = 124;
                                                                                                                                                                                                            }

                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                              v17 = -2030489149;
                                                                                                                                                                                                              *buf = xmmword_19B7B876C;
                                                                                                                                                                                                              if (MGIsDeviceOfType())
                                                                                                                                                                                                              {
                                                                                                                                                                                                                result = 120;
                                                                                                                                                                                                              }

                                                                                                                                                                                                              else
                                                                                                                                                                                                              {
                                                                                                                                                                                                                v17 = 841005628;
                                                                                                                                                                                                                *buf = xmmword_19B7B8780;
                                                                                                                                                                                                                if (MGIsDeviceOfType())
                                                                                                                                                                                                                {
                                                                                                                                                                                                                  result = 121;
                                                                                                                                                                                                                }

                                                                                                                                                                                                                else
                                                                                                                                                                                                                {
                                                                                                                                                                                                                  v17 = 223445260;
                                                                                                                                                                                                                  *buf = xmmword_19B7B8794;
                                                                                                                                                                                                                  if (MGIsDeviceOfType())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                    result = 122;
                                                                                                                                                                                                                  }

                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                    v17 = 1219348060;
                                                                                                                                                                                                                    *buf = xmmword_19B7B87A8;
                                                                                                                                                                                                                    if (MGIsDeviceOfType())
                                                                                                                                                                                                                    {
                                                                                                                                                                                                                      result = 123;
                                                                                                                                                                                                                    }

                                                                                                                                                                                                                    else
                                                                                                                                                                                                                    {
                                                                                                                                                                                                                      v17 = -1384522500;
                                                                                                                                                                                                                      *buf = xmmword_19B7B87BC;
                                                                                                                                                                                                                      if (MGIsDeviceOfType())
                                                                                                                                                                                                                      {
                                                                                                                                                                                                                        result = 125;
                                                                                                                                                                                                                      }

                                                                                                                                                                                                                      else
                                                                                                                                                                                                                      {
                                                                                                                                                                                                                        v17 = -782763850;
                                                                                                                                                                                                                        *buf = xmmword_19B7B87D0;
                                                                                                                                                                                                                        if (MGIsDeviceOfType())
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                          result = 126;
                                                                                                                                                                                                                        }

                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                          v17 = 1815762806;
                                                                                                                                                                                                                          *buf = xmmword_19B7B87E4;
                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                          {
                                                                                                                                                                                                                            result = 127;
                                                                                                                                                                                                                          }

                                                                                                                                                                                                                          else
                                                                                                                                                                                                                          {
                                                                                                                                                                                                                            v17 = -1897771119;
                                                                                                                                                                                                                            *buf = xmmword_19B7B87F8;
                                                                                                                                                                                                                            if (MGIsDeviceOfType())
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              result = 128;
                                                                                                                                                                                                                            }

                                                                                                                                                                                                                            else
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              v17 = -652049476;
                                                                                                                                                                                                                              *buf = xmmword_19B7B880C;
                                                                                                                                                                                                                              if (MGIsDeviceOfType())
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                result = 129;
                                                                                                                                                                                                                              }

                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                v17 = 373548423;
                                                                                                                                                                                                                                *buf = xmmword_19B7B8820;
                                                                                                                                                                                                                                if (MGIsDeviceOfType())
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                  result = 130;
                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                  v17 = -1921398171;
                                                                                                                                                                                                                                  *buf = xmmword_19B7B8834;
                                                                                                                                                                                                                                  if (MGIsDeviceOfType())
                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                    result = 131;
                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                    v17 = 2140507472;
                                                                                                                                                                                                                                    *buf = xmmword_19B7B8848;
                                                                                                                                                                                                                                    if (MGIsDeviceOfType())
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                      result = 132;
                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                      v17 = -936391310;
                                                                                                                                                                                                                                      *buf = xmmword_19B7B885C;
                                                                                                                                                                                                                                      if (MGIsDeviceOfType())
                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                        result = 133;
                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                        v17 = 2030516999;
                                                                                                                                                                                                                                        *buf = xmmword_19B7B8870;
                                                                                                                                                                                                                                        *v11 = xmmword_19B7B8884;
                                                                                                                                                                                                                                        v12 = -1276010597;
                                                                                                                                                                                                                                        if (MGIsDeviceOneOfType())
                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                          result = 134;
                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                          v17 = -762483149;
                                                                                                                                                                                                                                          *buf = xmmword_19B7B8898;
                                                                                                                                                                                                                                          *v11 = xmmword_19B7B88AC;
                                                                                                                                                                                                                                          v12 = -1926937532;
                                                                                                                                                                                                                                          if (MGIsDeviceOneOfType())
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                            result = 135;
                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                            v17 = -1902732724;
                                                                                                                                                                                                                                            *buf = xmmword_19B7B88C0;
                                                                                                                                                                                                                                            *v11 = xmmword_19B7B88D4;
                                                                                                                                                                                                                                            v12 = -342357580;
                                                                                                                                                                                                                                            if (MGIsDeviceOneOfType())
                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                              result = 136;
                                                                                                                                                                                                                                            }

                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                              v17 = 300442574;
                                                                                                                                                                                                                                              *buf = xmmword_19B7B88E8;
                                                                                                                                                                                                                                              *v11 = xmmword_19B7B88FC;
                                                                                                                                                                                                                                              v12 = -1294188889;
                                                                                                                                                                                                                                              if (MGIsDeviceOneOfType())
                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                result = 137;
                                                                                                                                                                                                                                              }

                                                                                                                                                                                                                                              else if (MGIsDeviceOfType())
                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                result = 138;
                                                                                                                                                                                                                                              }

                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                v17 = -61007701;
                                                                                                                                                                                                                                                *buf = xmmword_19B7B8910;
                                                                                                                                                                                                                                                if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                  result = 139;
                                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                                else if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                  result = 140;
                                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                  v17 = -235416490;
                                                                                                                                                                                                                                                  *buf = xmmword_19B7B8924;
                                                                                                                                                                                                                                                  if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                    result = 141;
                                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                    v17 = -820493242;
                                                                                                                                                                                                                                                    *buf = xmmword_19B7B8938;
                                                                                                                                                                                                                                                    if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                      result = 143;
                                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                      v17 = -1157300313;
                                                                                                                                                                                                                                                      *buf = xmmword_19B7B894C;
                                                                                                                                                                                                                                                      if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                        result = 144;
                                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                        v17 = -2132668294;
                                                                                                                                                                                                                                                        *buf = xmmword_19B7B8960;
                                                                                                                                                                                                                                                        if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                          result = 145;
                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                        else if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                          result = 146;
                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                        else if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                          result = 147;
                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                        else if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                          result = 149;
                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                        else if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                          result = 150;
                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                          v17 = 1737149739;
                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8974;
                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                            result = 151;
                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                            v17 = 1577888303;
                                                                                                                                                                                                                                                            *buf = xmmword_19B7B8988;
                                                                                                                                                                                                                                                            if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                              result = 152;
                                                                                                                                                                                                                                                            }

                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                              v17 = -1918230744;
                                                                                                                                                                                                                                                              *buf = xmmword_19B7B899C;
                                                                                                                                                                                                                                                              if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                result = 153;
                                                                                                                                                                                                                                                              }

                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                v17 = 1126727276;
                                                                                                                                                                                                                                                                *buf = xmmword_19B7B89B0;
                                                                                                                                                                                                                                                                if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                  result = 154;
                                                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                  v17 = 300130091;
                                                                                                                                                                                                                                                                  *buf = xmmword_19B7B89C4;
                                                                                                                                                                                                                                                                  if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                    result = 155;
                                                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                    v17 = 343814884;
                                                                                                                                                                                                                                                                    *buf = xmmword_19B7B89D8;
                                                                                                                                                                                                                                                                    if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                      result = 156;
                                                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                      v17 = -1675932945;
                                                                                                                                                                                                                                                                      *buf = xmmword_19B7B89EC;
                                                                                                                                                                                                                                                                      if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                        result = 157;
                                                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                                                      else if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                        result = 161;
                                                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                                                      else if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                        result = 162;
                                                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                                                      else if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                        result = 166;
                                                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                        v17 = -1840391155;
                                                                                                                                                                                                                                                                        *buf = xmmword_19B7B8A00;
                                                                                                                                                                                                                                                                        if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                          result = 167;
                                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                          v17 = -121925081;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8A14;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            goto LABEL_503;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 1071957977;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8A28;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 168;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 438437663;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8A3C;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 169;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 1575123478;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8A50;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 170;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = -382792827;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8A64;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 171;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 123138233;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8A78;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 172;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 681511593;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8A8C;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 173;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 169342588;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8AA0;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 174;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 175;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 713503427;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8AB4;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 176;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = -1632750650;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8AC8;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 177;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = -1820426635;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8ADC;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 178;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = -937652876;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8AF0;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 179;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 1874287171;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8B04;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            goto LABEL_375;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = -781324731;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8B18;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 181;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 1214880059;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8B2C;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 182;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 426359977;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8B40;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 183;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = -1354433901;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8B54;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 184;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 1021543808;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8B68;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 185;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 186;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 187;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 1459208360;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8B7C;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 188;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 189;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 431774303;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8B90;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
LABEL_375:
                                                                                                                                                                                                                                                                            result = 180;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 190;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 191;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 163;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 192;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 164;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 165;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 345196535;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8BA4;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 193;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 440949464;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8BB8;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 194;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 688565114;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8BCC;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 195;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = -493418906;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8BE0;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 196;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 197;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = -584398440;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8BF4;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 202;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 203;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = -879476163;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8C08;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 204;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = -695298128;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8C1C;
                                                                                                                                                                                                                                                                          *v11 = xmmword_19B7B8C30;
                                                                                                                                                                                                                                                                          v12 = 804488105;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOneOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 205;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 1614584579;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8C44;
                                                                                                                                                                                                                                                                          *v11 = xmmword_19B7B8C58;
                                                                                                                                                                                                                                                                          v12 = 324288768;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOneOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 206;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 460218192;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8C6C;
                                                                                                                                                                                                                                                                          *v11 = xmmword_19B7B8C80;
                                                                                                                                                                                                                                                                          v12 = 2144905009;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOneOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 207;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 127894440;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8C94;
                                                                                                                                                                                                                                                                          *v11 = xmmword_19B7B8CA8;
                                                                                                                                                                                                                                                                          v12 = 1070997468;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOneOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 208;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 372777383;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8CBC;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 209;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = -858079590;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8CD0;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 210;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = -212523443;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8CE4;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 211;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 646100384;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8CF8;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 212;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = -340360463;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8D0C;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 213;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 1605231531;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8D20;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 214;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 215;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 216;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = -545612308;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8D34;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 217;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 1178062702;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8D48;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 218;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 958549802;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8D5C;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 219;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 1377540371;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8D70;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 220;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = -1047119348;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8D84;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 221;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = -1346985080;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8D98;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 222;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 223;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 224;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = -1243071412;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8DAC;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 225;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 2017356181;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8DC0;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 226;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 227;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 228;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = -1231738393;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8DD4;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 229;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 164967128;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8DE8;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 230;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 231;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 232;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = -1431778695;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8DFC;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 233;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 533419158;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8E10;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 234;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 1106979518;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8E24;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 235;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = -609570151;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8E38;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 236;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = -874769875;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8E4C;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 237;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 1223847566;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8E60;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 238;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 185580364;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8E74;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 239;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = -1379821877;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8E88;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 240;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 241;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 1878025452;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8E9C;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 242;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 1725957070;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8EB0;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 243;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 538967431;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8EC4;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 244;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 2060712151;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8ED8;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 245;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 802516499;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8EEC;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 246;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = -1919324456;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8F00;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 247;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 1127969586;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8F14;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 248;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 1292009573;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8F28;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 249;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = 1656760039;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8F3C;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 250;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = -2071977621;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8F50;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 251;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = -543210860;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8F64;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 252;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          v17 = -1597604211;
                                                                                                                                                                                                                                                                          *buf = xmmword_19B7B8F78;
                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 253;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
LABEL_503:
                                                                                                                                                                                                                                                                            result = 142;
                                                                                                                                                                                                                                                                            goto LABEL_6;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          if (qword_1ED71C988 != -1)
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            dispatch_once(&qword_1ED71C988, &unk_1F0E28FE0);
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          if (sub_19B5F8330())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 1;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          else if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = 254;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            v17 = -12497897;
                                                                                                                                                                                                                                                                            *buf = xmmword_19B7B8F8C;
                                                                                                                                                                                                                                                                            if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                              result = 255;
                                                                                                                                                                                                                                                                            }

                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                              v17 = -518121279;
                                                                                                                                                                                                                                                                              *buf = xmmword_19B7B8FA0;
                                                                                                                                                                                                                                                                              if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                result = 256;
                                                                                                                                                                                                                                                                              }

                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                v17 = -773054213;
                                                                                                                                                                                                                                                                                *buf = xmmword_19B7B8FB4;
                                                                                                                                                                                                                                                                                if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                  result = 257;
                                                                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                  v17 = -1204420428;
                                                                                                                                                                                                                                                                                  *buf = xmmword_19B7B8FC8;
                                                                                                                                                                                                                                                                                  if (MGIsDeviceOfType())
                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                    result = 258;
                                                                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                    if ((MGIsDeviceOfType() & 1) == 0)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                      v2 = MGCopyAnswer();
                                                                                                                                                                                                                                                                                      if (v2)
                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                        if (qword_1EAFE2B38 != -1)
                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                          dispatch_once(&qword_1EAFE2B38, &unk_1F0E3A5A0);
                                                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                                                        v3 = qword_1EAFE2B40;
                                                                                                                                                                                                                                                                                        if (os_log_type_enabled(qword_1EAFE2B40, OS_LOG_TYPE_ERROR))
                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                          *buf = 138477827;
                                                                                                                                                                                                                                                                                          *&buf[4] = v2;
                                                                                                                                                                                                                                                                                          _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_ERROR, "unknown HW model %{private}@; file radar to CoreMotion Factory | 1.0", buf, 0xCu);
                                                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                                                        v4 = sub_19B420058();
                                                                                                                                                                                                                                                                                        if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                          bzero(buf, 0x65CuLL);
                                                                                                                                                                                                                                                                                          if (qword_1EAFE2B38 != -1)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                            dispatch_once(&qword_1EAFE2B38, &unk_1F0E3A5A0);
                                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                                          *v11 = 138477827;
                                                                                                                                                                                                                                                                                          *&v11[4] = v2;
                                                                                                                                                                                                                                                                                          v8 = _os_log_send_and_compose_impl();
                                                                                                                                                                                                                                                                                          sub_19B6BB7CC("Generic", 1, 0, 0, "static CLPlatformInfo::Hardware CLPlatformInfo::queryEmbeddedSystemHardware()", "CoreLocation: %s\n", v8);
                                                                                                                                                                                                                                                                                          if (v8 != buf)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                            free(v8);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                                                        CFRelease(v2);
                                                                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                        if (qword_1EAFE2B38 != -1)
                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                          dispatch_once(&qword_1EAFE2B38, &unk_1F0E3A5A0);
                                                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                                                        v5 = qword_1EAFE2B40;
                                                                                                                                                                                                                                                                                        if (os_log_type_enabled(qword_1EAFE2B40, OS_LOG_TYPE_ERROR))
                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                          sub_19B431834(@"HWModelStr", buf);
                                                                                                                                                                                                                                                                                          v6 = v18 >= 0 ? buf : *buf;
                                                                                                                                                                                                                                                                                          *v11 = 136380675;
                                                                                                                                                                                                                                                                                          *&v11[4] = v6;
                                                                                                                                                                                                                                                                                          _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_ERROR, "unknown HW model %{private}s; file radar to CoreMotion Factory | 1.0", v11, 0xCu);
                                                                                                                                                                                                                                                                                          if (v18 < 0)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                            operator delete(*buf);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                                                        v7 = sub_19B420058();
                                                                                                                                                                                                                                                                                        if ((*(v7 + 160) & 0x80000000) != 0 && (*(v7 + 164) & 0x80000000) != 0 && (*(v7 + 168) & 0x80000000) != 0 && !*(v7 + 152))
                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                          result = 0;
                                                                                                                                                                                                                                                                                          goto LABEL_6;
                                                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                                                        bzero(buf, 0x65CuLL);
                                                                                                                                                                                                                                                                                        if (qword_1EAFE2B38 != -1)
                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                          dispatch_once(&qword_1EAFE2B38, &unk_1F0E3A5A0);
                                                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                                                        sub_19B431834(@"HWModelStr", v11);
                                                                                                                                                                                                                                                                                        if (v13 >= 0)
                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                          v9 = v11;
                                                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                          v9 = *v11;
                                                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                                                        v14 = 136380675;
                                                                                                                                                                                                                                                                                        v15 = v9;
                                                                                                                                                                                                                                                                                        v10 = _os_log_send_and_compose_impl();
                                                                                                                                                                                                                                                                                        if (v13 < 0)
                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                          operator delete(*v11);
                                                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                                                        sub_19B6BB7CC("Generic", 1, 0, 0, "static CLPlatformInfo::Hardware CLPlatformInfo::queryEmbeddedSystemHardware()", "CoreLocation: %s\n", v10);
                                                                                                                                                                                                                                                                                        if (v10 != buf)
                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                          free(v10);
                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                                                                      result = 0;
                                                                                                                                                                                                                                                                                      goto LABEL_6;
                                                                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                                                                    result = 280;
                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                            }
                                                                                                                                                                                                                          }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                      }
                                                                                                                                                                                                                    }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                }
                                                                                                                                                                                                              }
                                                                                                                                                                                                            }
                                                                                                                                                                                                          }
                                                                                                                                                                                                        }
                                                                                                                                                                                                      }
                                                                                                                                                                                                    }
                                                                                                                                                                                                  }
                                                                                                                                                                                                }
                                                                                                                                                                                              }
                                                                                                                                                                                            }
                                                                                                                                                                                          }
                                                                                                                                                                                        }
                                                                                                                                                                                      }
                                                                                                                                                                                    }
                                                                                                                                                                                  }
                                                                                                                                                                                }
                                                                                                                                                                              }
                                                                                                                                                                            }
                                                                                                                                                                          }
                                                                                                                                                                        }
                                                                                                                                                                      }
                                                                                                                                                                    }
                                                                                                                                                                  }
                                                                                                                                                                }
                                                                                                                                                              }
                                                                                                                                                            }
                                                                                                                                                          }
                                                                                                                                                        }
                                                                                                                                                      }
                                                                                                                                                    }
                                                                                                                                                  }
                                                                                                                                                }
                                                                                                                                              }
                                                                                                                                            }
                                                                                                                                          }
                                                                                                                                        }
                                                                                                                                      }
                                                                                                                                    }
                                                                                                                                  }
                                                                                                                                }
                                                                                                                              }
                                                                                                                            }
                                                                                                                          }
                                                                                                                        }
                                                                                                                      }
                                                                                                                    }
                                                                                                                  }
                                                                                                                }
                                                                                                              }
                                                                                                            }
                                                                                                          }
                                                                                                        }
                                                                                                      }
                                                                                                    }
                                                                                                  }
                                                                                                }
                                                                                              }
                                                                                            }
                                                                                          }
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_6:
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

_BYTE *sub_19B436FAC()
{
  v28 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C988 != -1)
  {
    dispatch_once(&qword_1ED71C988, &unk_1F0E28FE0);
  }

  if (qword_1ED71C990 != -1)
  {
    dispatch_once(&qword_1ED71C990, &unk_1F0E3A400);
  }

  v0 = 0;
  v1 = dword_1ED71C97C;
  switch(dword_1ED71C97C)
  {
    case 0:
    case 281:
      if (qword_1EAFE2B38 != -1)
      {
        dispatch_once(&qword_1EAFE2B38, &unk_1F0E3A5A0);
      }

      v19 = qword_1EAFE2B40;
      if (os_log_type_enabled(qword_1EAFE2B40, OS_LOG_TYPE_ERROR))
      {
        *buf = 67174657;
        v27 = v1;
        _os_log_impl(&dword_19B41C000, v19, OS_LOG_TYPE_ERROR, "Unsupported HW type %{private}d; file a radar to CoreMotion Factory | 1.0", buf, 8u);
      }

      v20 = sub_19B420058();
      if ((*(v20 + 160) & 0x80000000) != 0 && (*(v20 + 164) & 0x80000000) != 0 && (*(v20 + 168) & 0x80000000) != 0 && !*(v20 + 152))
      {
        goto LABEL_18;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2B38 != -1)
      {
        dispatch_once(&qword_1EAFE2B38, &unk_1F0E3A5A0);
      }

      v24 = 67174657;
      v25 = v1;
      goto LABEL_16;
    case 2:
    case 3:
    case 5:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 21:
    case 22:
    case 23:
    case 37:
    case 38:
    case 40:
    case 41:
    case 43:
    case 52:
    case 81:
    case 83:
    case 85:
    case 87:
      if (qword_1EAFE2B38 != -1)
      {
        dispatch_once(&qword_1EAFE2B38, &unk_1F0E3A5A0);
      }

      v2 = qword_1EAFE2B40;
      if (os_log_type_enabled(qword_1EAFE2B40, OS_LOG_TYPE_FAULT))
      {
        *buf = 67109120;
        v27 = v1;
        _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_FAULT, "Old hardware,%d is not supported", buf, 8u);
      }

      v3 = sub_19B420058();
      if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2B38 != -1)
        {
          dispatch_once(&qword_1EAFE2B38, &unk_1F0E3A5A0);
        }

        v24 = 67109120;
        v25 = v1;
LABEL_16:
        v4 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "CLPlatformInfo::MotionCapabilities CLPlatformInfo::queryMotionCaps()", "CoreLocation: %s\n", v4);
        if (v4 != buf)
        {
          free(v4);
        }
      }

LABEL_18:
      v0 = 0;
      break;
    case 24:
    case 25:
    case 27:
    case 28:
      v15 = 1586033086;
      goto LABEL_58;
    case 26:
      v9 = 0x134E88F1BELL;
      goto LABEL_90;
    case 29:
      v0 = 1115734017;
      break;
    case 30:
    case 31:
    case 32:
      v18 = 1115734017;
      goto LABEL_61;
    case 33:
    case 217:
    case 219:
    case 220:
    case 221:
    case 222:
    case 223:
    case 224:
    case 225:
    case 226:
    case 227:
    case 228:
    case 246:
    case 247:
    case 248:
    case 249:
    case 250:
    case 251:
    case 252:
    case 253:
    case 255:
    case 256:
      v5 = 1530;
      goto LABEL_22;
    case 34:
    case 195:
    case 196:
    case 205:
    case 206:
    case 207:
    case 208:
    case 209:
    case 211:
    case 212:
    case 213:
    case 214:
    case 215:
    case 216:
    case 218:
    case 229:
    case 230:
    case 231:
    case 232:
    case 241:
    case 242:
    case 243:
    case 244:
    case 245:
    case 257:
    case 258:
      v5 = 13818;
LABEL_22:
      v6 = v5 & 0xFFFFFFFF0000FFFFLL | 0x628C0000;
      goto LABEL_23;
    case 35:
    case 36:
    case 64:
    case 65:
      v16 = -3702;
      goto LABEL_84;
    case 39:
    case 42:
      v0 = 0x50022CA9C00ELL;
      break;
    case 44:
      v16 = -15942;
LABEL_84:
      v0 = v16 | 0x42880000u;
      break;
    case 45:
      v0 = 1116271034;
      break;
    case 46:
    case 62:
    case 161:
      v0 = 1653129658;
      break;
    case 47:
    case 63:
      v18 = 1653129658;
LABEL_61:
      v0 = v18 | 0x3000;
      break;
    case 48:
    case 193:
      v7 = 1088;
      v8 = 0x26289C1BALL;
      goto LABEL_26;
    case 49:
    case 194:
    case 197:
    case 210:
      v12 = 62970;
      goto LABEL_52;
    case 50:
    case 51:
      v9 = 0x5002ACA9C00ELL;
      goto LABEL_90;
    case 54:
    case 55:
      v15 = 2127327678;
LABEL_58:
      v0 = v15 | 0x202005300000000;
      break;
    case 56:
    case 57:
    case 58:
    case 59:
      v0 = 0x20300537E8C71BELL;
      break;
    case 60:
    case 61:
    case 204:
      v0 = 0x400000000;
      break;
    case 66:
    case 67:
    case 74:
    case 75:
      v9 = 0x486ABCA9C00ELL;
      goto LABEL_90;
    case 68:
    case 69:
    case 71:
    case 72:
      v14 = 0x24300537E8C35BELL;
      goto LABEL_76;
    case 70:
    case 73:
      v11 = 0x80537E8C31BELL;
      goto LABEL_78;
    case 76:
    case 146:
    case 147:
      v12 = 49594;
LABEL_52:
      v6 = v12 & 0xFFFFFFFF0000FFFFLL | 0x62890000;
LABEL_23:
      v0 = v6 & 0xFFFF0000FFFFFFFFLL | 0x200000000;
      break;
    case 77:
    case 145:
      v14 = 0x26289F5FALL;
LABEL_76:
      v0 = v14 - 1024;
      break;
    case 78:
    case 79:
    case 80:
    case 142:
      v11 = 0x537E8C35BELL;
LABEL_78:
      v0 = v11 & 0xFFFFFFFFFFFFLL | 0x243000000000000;
      break;
    case 82:
    case 84:
      v9 = 0x4F6ABCA9C00ELL;
      goto LABEL_90;
    case 86:
    case 88:
      v0 = 0x2496ABCA9C00ELL;
      break;
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
      v9 = 0x496ABCA9C01ELL;
      goto LABEL_90;
    case 95:
    case 96:
    case 97:
    case 98:
      v0 = 0x612496ABCA9C01ELL;
      break;
    case 99:
    case 100:
    case 101:
    case 102:
      v0 = 0xE12696ABCA9C05ELL;
      break;
    case 103:
    case 104:
    case 105:
    case 106:
      v0 = 0xE12696ABCAA005ELL;
      break;
    case 107:
    case 108:
    case 109:
    case 110:
      v10 = 0x496ABCA9C05ELL;
      goto LABEL_35;
    case 111:
    case 112:
    case 113:
    case 114:
    case 115:
    case 280:
      v10 = 0x696ABCAA005ELL;
LABEL_35:
      v0 = v10 & 0xFFFFFFFFFFFFLL | 0xE16000000000000;
      break;
    case 116:
    case 117:
    case 118:
    case 119:
    case 120:
    case 121:
    case 122:
    case 123:
    case 124:
    case 125:
    case 126:
    case 127:
    case 128:
    case 129:
    case 130:
    case 131:
    case 132:
    case 133:
      v0 = 0x2E16696ABCAA005ELL;
      break;
    case 134:
    case 135:
    case 136:
    case 137:
      v13 = 1653208570;
      goto LABEL_49;
    case 138:
    case 139:
    case 140:
    case 141:
    case 143:
      v0 = 0x24B00537E8C35BELL;
      break;
    case 144:
    case 254:
      v0 = 0x2628C31BALL;
      break;
    case 148:
      v0 = 0x136E8C408ELL;
      break;
    case 149:
      v9 = 0x122C8C010ELL;
      goto LABEL_90;
    case 150:
    case 151:
    case 152:
    case 153:
      v9 = 0x406ABCA9C00ELL;
LABEL_90:
      v0 = v9 & 0xFFFFFFFFFFFFLL | 0x2000000000000;
      break;
    case 154:
    case 155:
    case 156:
    case 157:
      v13 = 1653356026;
LABEL_49:
      v0 = (v13 & 0xFFFF0000FFFFFFFFLL | 0x200000000) - 64;
      break;
    case 168:
    case 169:
    case 170:
    case 171:
      v0 = 0x27B00537E8C35BELL;
      break;
    case 172:
    case 173:
    case 176:
    case 177:
      v17 = 0x27B00537E8C35BELL;
      goto LABEL_82;
    case 174:
    case 175:
    case 234:
    case 235:
    case 236:
    case 237:
      v0 = 0x27700537E8C35FELL;
      break;
    case 178:
    case 179:
    case 180:
    case 181:
      v0 = 0x27700537E8C37FELL;
      break;
    case 182:
    case 183:
    case 184:
    case 185:
    case 186:
    case 187:
    case 188:
    case 189:
    case 190:
    case 191:
    case 238:
    case 239:
    case 240:
      v7 = 2560;
      v8 = 0x27700537E8C35FELL;
LABEL_26:
      v0 = v8 | v7;
      break;
    case 198:
    case 199:
    case 200:
    case 201:
    case 259:
    case 260:
    case 261:
    case 262:
    case 263:
    case 264:
    case 265:
    case 266:
    case 267:
    case 268:
    case 269:
    case 270:
    case 271:
    case 272:
    case 273:
    case 274:
    case 275:
    case 276:
    case 277:
    case 278:
    case 279:
      v0 = 554434570;
      break;
    case 233:
      v17 = 0x24B00537E8C35BELL;
LABEL_82:
      v0 = v17 | 0x40;
      break;
    default:
      break;
  }

  LOBYTE(v24) = (v0 & 0x200) != 0;
  result = sub_19B437AE0(buf, "OverrideMotionCapEclipseService", &v24, 0);
  v22 = 512;
  if (!buf[1])
  {
    v22 = 0;
  }

  qword_1ED71CA20 = v22 | v0 & 0x2E7FFF7FFFEFFDFFLL;
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

_BYTE *sub_19B437AE0(_BYTE *a1, uint64_t a2, _BYTE *a3, char a4)
{
  v13 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  a1[1] = *a3;
  a1[2] = a4;
  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E3A600);
  }

  v6 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v12 = a2;
    _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_INFO, "motion default ignored,'%{public}s'.", buf, 0xCu);
  }

  v7 = sub_19B420058();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3A600);
    }

    v8 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "CLMotionDefaultsWrite<BOOL>::CLMotionDefaultsWrite(const char *, const T &, const BOOL) [T = BOOL]", "CoreLocation: %s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return a1;
}

uint64_t sub_19B437CF0(uint64_t a1, int a2, uint64_t a3, double a4)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v8 = sub_19B420D84();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B437DDC;
  v11[3] = &unk_1E7533D70;
  v11[4] = &v13;
  v11[5] = a1;
  v12 = a2;
  v11[6] = a3;
  *&v11[7] = a4;
  sub_19B420C9C(v8, v11);
  v9 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  return v9;
}

void sub_19B437DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B437DDC(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 64);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = (*(*v4 + 24))(v4);
  v6 = (a1 + 56);
  v7 = *(a1 + 56);
  v8 = v7 * v5;
  v35 = v8;
  if (v7 == 0.0)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E29580);
    }

    v10 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_FAULT, "Requested update interval cannot be == 0.0 and dispatcher cannot be NULL. Use interval < 0.0 for spectator.", buf, 2u);
    }

    v11 = sub_19B420058();
    if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E29580);
      }

      LOWORD(v36) = 0;
      v12 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLMotionNotifier::addDispatcherPrivate(int, Dispatcher *, const CFTimeInterval &)", "CoreLocation: %s\n", v12);
      goto LABEL_50;
    }
  }

  else
  {
    if (v7 < 0.0)
    {
      v9 = v3[2] + 80 * v2;
      operator new();
    }

    v13 = v3[2];
    if (v8 > 0.0 && ((v14 = v13 + 80 * v2, v16 = *(v14 + 8), v15 = (v14 + 8), v17 = v16, v8 < v16) || v17 <= 0.0))
    {
      *v15 = v8;
      v19 = (*(*v3 + 24))(v3, v2, &v35);
      v13 = v3[2];
      *(v13 + 80 * v2 + 24) = v19;
      v18 = *v6;
      v8 = v35;
    }

    else
    {
      v18 = v7;
    }

    v20 = (v13 + 80 * v2);
    if (v18 < *v20 || *v20 <= 0.0)
    {
      *v20 = v18;
      v26 = (*(*v3 + 16))(v3, v2, a1 + 56);
      v27 = v3[2] + 80 * v2;
      *(v27 + 16) = v26;
      *buf = v4;
      *v43 = 0x100000000;
      *&v43[8] = v18;
      *&v43[16] = v8;
      sub_19B43851C(v27 + 32, v4);
      sub_19B423614(v3, v2);
    }

    else
    {
      if (v20[2] <= 0.0)
      {
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E29580);
        }

        v21 = off_1ED71C838;
        if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_FAULT, "CLMotionNotifier::addDispatcherPrivate UpdateInterval is zero!", buf, 2u);
        }

        v22 = sub_19B420058();
        if ((*(v22 + 160) & 0x80000000) == 0 || (*(v22 + 164) & 0x80000000) == 0 || (*(v22 + 168) & 0x80000000) == 0 || *(v22 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C830 != -1)
          {
            dispatch_once(&qword_1ED71C830, &unk_1F0E29580);
          }

          LOWORD(v36) = 0;
          v23 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLMotionNotifier::addDispatcherPrivate(int, Dispatcher *, const CFTimeInterval &)", "CoreLocation: %s\n", v23);
          if (v23 != buf)
          {
            free(v23);
          }
        }
      }

      v24 = v3[2] + 80 * v2;
      v25 = llround(*v6 / *(v24 + 16));
      *buf = v4;
      *v43 = 0;
      *&v43[4] = v25;
      *&v43[8] = v18;
      *&v43[16] = v8;
      sub_19B43851C(v24 + 32, v4);
    }

    (*(*v3 + 40))(v3, v2, *(v3[2] + 80 * v2 + 48) - 1);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E29580);
    }

    v28 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEBUG))
    {
      v29 = *v6;
      v30 = 0.0;
      if (*v6 > 0.0)
      {
        v30 = 1.0 / v29;
      }

      *buf = 67109632;
      *&buf[4] = v2;
      *v43 = 2048;
      *&v43[2] = v29;
      *&v43[10] = 2048;
      *&v43[12] = v30;
      _os_log_impl(&dword_19B41C000, v28, OS_LOG_TYPE_DEBUG, "CLMotionNotifier::addDispatcherPrivate Added dispatcher for notification:%d, Update Interval:%f(%.1fHz)", buf, 0x1Cu);
    }

    v31 = sub_19B420058();
    if (*(v31 + 160) > 1 || *(v31 + 164) > 1 || *(v31 + 168) > 1 || *(v31 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E29580);
      }

      v32 = *v6;
      v33 = 0.0;
      if (*v6 > 0.0)
      {
        v33 = 1.0 / v32;
      }

      v36 = 67109632;
      v37 = v2;
      v38 = 2048;
      v39 = v32;
      v40 = 2048;
      v41 = v33;
      v12 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLMotionNotifier::addDispatcherPrivate(int, Dispatcher *, const CFTimeInterval &)", "CoreLocation: %s\n", v12);
LABEL_50:
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = v7 != 0.0;
  v34 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B43851C(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t *sub_19B4385F8(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t sub_19B438794(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 448);
  if (v2)
  {
    v3 = *(result + 8);
    v4 = *(result + 16);
    v5 = *result;
    return v2(&v3, *(a2 + 456));
  }

  return result;
}

uint64_t sub_19B4387E8(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E3A858);
  }

  v4 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
  {
    v5 = *(a2 + 1);
    v6 = *(a2 + 9);
    *buf = 134218240;
    v14 = v5;
    v15 = 2048;
    v16 = v6;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "[CLIspDataVisitor] TimeSync visit machTimestamp,%llu,oscarTimestamp,%llu", buf, 0x16u);
  }

  v7 = sub_19B420058();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3A858);
    }

    v11 = *(a2 + 1);
    v12 = *(a2 + 9);
    v8 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLIspDataVisitor::visitTimeSync(const CMMotionCoprocessorReply::TimeSync *)", "CoreLocation: %s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  result = *(a1 + 64);
  if (result)
  {
    result = (*(result + 16))(result, *(a2 + 1), *(a2 + 9));
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B438A00()
{
  result = sub_19B423E34();
  if ((result & 4) != 0)
  {
    operator new();
  }

  return result;
}

void sub_19B438AE4(_Unwind_Exception *a1)
{
  if (v3)
  {
    sub_19B41FFEC(v3);
  }

  v5 = v1[6];
  if (v5)
  {
    sub_19B41FFEC(v5);
  }

  sub_19B674784(v1);
  MEMORY[0x19EAE76F0](v1, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_19B438B2C()
{
  result = sub_19B4249E4();
  if (result)
  {
    result = sub_19B42AD98();
    if (result)
    {
      operator new();
    }
  }

  return result;
}

void sub_19B438BEC(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = &unk_1F0E32D30;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = a3;
  is_mul_ok(a3, 0x50uLL);
  operator new[]();
}

uint64_t sub_19B438CCC(uint64_t a1, const char *a2, BOOL *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B439A40(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

void sub_19B4399F4(_Unwind_Exception *a1)
{
  if (v3)
  {
    sub_19B41FFEC(v3);
  }

  v5 = v2[11];
  if (v5)
  {
    sub_19B41FFEC(v5);
  }

  sub_19B674784(v2);
  MEMORY[0x19EAE76F0](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t sub_19B439A40(uint64_t a1, uint64_t a2, BOOL *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  cf = 0;
  if ((*(*a1 + 904))(a1, a2, &cf))
  {
    v6 = sub_19B44525C(cf, a3);
    if ((v6 & 1) == 0)
    {
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v7 = off_1ED71C828;
      if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
      {
        v8 = (*(*a1 + 840))(a1);
        *buf = 138412546;
        v20 = v8;
        v21 = 2112;
        v22 = a2;
        _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
      }

      v9 = sub_19B420058();
      if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C820 != -1)
        {
          dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
        }

        v10 = (*(*a1 + 840))(a1);
        v15 = 138412546;
        v16 = v10;
        v17 = 2112;
        v18 = a2;
        v11 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, BOOL &, int) const", "CoreLocation: %s\n", v11);
        if (v11 != buf)
        {
          free(v11);
        }
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v6 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t sub_19B439CEC()
{
  if (qword_1ED71C990 != -1)
  {
    dispatch_once(&qword_1ED71C990, &unk_1F0E3A400);
  }

  return dword_1ED71C97C;
}

uint64_t sub_19B439D34()
{
  result = sub_19B439CEC();
  if ((result - 1) > 0xFF)
  {
    v1 = 0;
  }

  else
  {
    v1 = byte_19B7BAE90[(result - 1)];
  }

  byte_1ED71D268 = v1;
  return result;
}

os_log_t sub_19B439D74()
{
  result = os_log_create("com.apple.locationd.Motion", "Gyro");
  qword_1ED71C818 = result;
  return result;
}

os_log_t sub_19B439DA4()
{
  result = os_log_create("com.apple.locationd.Motion", "Gyro");
  qword_1ED71C818 = result;
  return result;
}

os_log_t sub_19B439DD4()
{
  result = os_log_create("com.apple.locationd.Motion", "Gyro");
  qword_1ED71C818 = result;
  return result;
}

os_log_t sub_19B439E04()
{
  result = os_log_create("com.apple.locationd.Motion", "Gyro");
  qword_1ED71C818 = result;
  return result;
}

os_log_t sub_19B439E34()
{
  result = os_log_create("com.apple.locationd.Motion", "Gyro");
  qword_1ED71C818 = result;
  return result;
}

os_log_t sub_19B439E64()
{
  result = os_log_create("com.apple.locationd.Motion", "Gyro");
  qword_1ED71C818 = result;
  return result;
}

os_log_t sub_19B439E94()
{
  result = os_log_create("com.apple.locationd.Motion", "Gyro");
  qword_1ED71C818 = result;
  return result;
}

os_log_t sub_19B439EC4()
{
  result = os_log_create("com.apple.locationd.Motion", "Gyro");
  qword_1ED71C818 = result;
  return result;
}

void sub_19B439EF4(uint64_t a1, uint64_t a2, double a3)
{
  v6 = sub_19B420D84();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B439F84;
  v7[3] = &unk_1E7533E58;
  v7[4] = a1;
  v7[5] = a2;
  *&v7[6] = a3;
  sub_19B420C9C(v6, v7);
}

uint64_t sub_19B439F84(uint64_t a1)
{
  v1 = a1;
  v38 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = (*(**(a1 + 40) + 32))(*(a1 + 40));
  if (v3)
  {
    v4 = v3;
    if (qword_1ED71C800 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
    }

    v27 = off_1ED71C808;
    v4 = "assert";
    v2 = "properties != nullptr";
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *v33 = 0;
      *&v33[4] = 2082;
      *&v33[6] = "";
      v34 = 2082;
      v35 = "assert";
      v36 = 2081;
      v37 = "properties != nullptr";
      _os_log_impl(&dword_19B41C000, v27, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
      }
    }

    v28 = off_1ED71C808;
    if (os_signpost_enabled(off_1ED71C808))
    {
      *buf = 68289539;
      *v33 = 0;
      *&v33[4] = 2082;
      *&v33[6] = "";
      v34 = 2082;
      v35 = "assert";
      v36 = 2081;
      v37 = "properties != nullptr";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v28, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
      }
    }

    v1 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *v33 = 0;
      *&v33[4] = 2082;
      *&v33[6] = "";
      v34 = 2082;
      v35 = "assert";
      v36 = 2081;
      v37 = "properties != nullptr";
      _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v30 = 198;
    v31 = "addDeviceMotionDispatcher_block_invoke";
    v29 = "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Motion/Notifiers/CLDeviceMotion.mm";
    abort_report_np();
  }

  dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
LABEL_3:
  v5 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
  {
    v8 = objc_msgSend_description(v4, v6, v7);
    v11 = objc_msgSend_UTF8String(v8, v9, v10);
    *buf = 136446210;
    *v33 = v11;
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_INFO, "CLDeviceMotion::addDeviceMotionDispatcher adding dispatcher with property: %{public}s", buf, 0xCu);
  }

  v12 = sub_19B420058();
  if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
    }

    v17 = objc_msgSend_description(v4, v15, v16, v29, v30, v31);
    objc_msgSend_UTF8String(v17, v18, v19);
    LODWORD(v30) = 12;
    v20 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLDeviceMotion::addDeviceMotionDispatcher(CLDeviceMotion::Dispatcher *, CFTimeInterval)_block_invoke", "CoreLocation: %s\n", v20);
    if (v20 != buf)
    {
      free(v20);
    }
  }

  *buf = objc_msgSend_mode(v4, v13, v14, v29, v30);
  result = sub_19B426490(buf);
  if (result)
  {
    v24 = objc_msgSend_mode(v4, v22, v23);
    v25 = sub_19B426F5C(v24);
    result = sub_19B437CF0(v2, v25, *(v1 + 5), *(v1 + 6));
  }

  v26 = *MEMORY[0x1E69E9840];
  return result;
}

os_log_t sub_19B43A3C0()
{
  result = os_log_create("com.apple.locationd.Motion", "DeviceMotion");
  off_1ED71C808 = result;
  return result;
}

os_log_t sub_19B43A3F0()
{
  result = os_log_create("com.apple.locationd.Motion", "DeviceMotion");
  off_1ED71C808 = result;
  return result;
}

os_log_t sub_19B43A420()
{
  result = os_log_create("com.apple.locationd.Motion", "DeviceMotion");
  off_1ED71C808 = result;
  return result;
}

os_log_t sub_19B43A450()
{
  result = os_log_create("com.apple.locationd.Motion", "DeviceMotion");
  off_1ED71C808 = result;
  return result;
}

os_log_t sub_19B43A480()
{
  result = os_log_create("com.apple.locationd.Motion", "DeviceMotion");
  off_1ED71C808 = result;
  return result;
}

os_log_t sub_19B43A4B0()
{
  result = os_log_create("com.apple.locationd.Motion", "DeviceMotion");
  off_1ED71C808 = result;
  return result;
}

os_log_t sub_19B43A4E0()
{
  result = os_log_create("com.apple.locationd.Motion", "DeviceMotion");
  off_1ED71C808 = result;
  return result;
}

os_log_t sub_19B43A510()
{
  result = os_log_create("com.apple.locationd.Motion", "DeviceMotion");
  off_1ED71C808 = result;
  return result;
}

os_log_t sub_19B43A540()
{
  result = os_log_create("com.apple.locationd.Motion", "DeviceMotion");
  off_1ED71C808 = result;
  return result;
}

os_log_t sub_19B43A570()
{
  result = os_log_create("com.apple.locationd.Motion", "DeviceMotion");
  off_1ED71C808 = result;
  return result;
}

os_log_t sub_19B43A5A0()
{
  result = os_log_create("com.apple.locationd.Motion", "DeviceMotion");
  off_1ED71C808 = result;
  return result;
}

os_log_t sub_19B43A5D0()
{
  result = os_log_create("com.apple.locationd.Motion", "DeviceMotion");
  off_1ED71C808 = result;
  return result;
}

os_log_t sub_19B43A600()
{
  result = os_log_create("com.apple.locationd.Motion", "DeviceMotion");
  off_1ED71C808 = result;
  return result;
}

os_log_t sub_19B43A630()
{
  result = os_log_create("com.apple.locationd.Motion", "DeviceMotion");
  off_1ED71C808 = result;
  return result;
}

os_log_t sub_19B43A660()
{
  result = os_log_create("com.apple.locationd.Motion", "DeviceMotion");
  off_1ED71C808 = result;
  return result;
}

os_log_t sub_19B43A690()
{
  result = os_log_create("com.apple.locationd.Motion", "DeviceMotion");
  off_1ED71C808 = result;
  return result;
}

os_log_t sub_19B43A6C0()
{
  result = os_log_create("com.apple.locationd.Motion", "DeviceMotion");
  off_1ED71C808 = result;
  return result;
}

uint64_t sub_19B43A6F0()
{
  if (qword_1ED71D5B8 != -1)
  {
    dispatch_once(&qword_1ED71D5B8, &unk_1F0E29E20);
  }

  return qword_1ED71D5B0;
}

uint64_t sub_19B43A738()
{
  if (sub_19B42521C())
  {
    operator new();
  }

  result = sub_19B423E34();
  if (result)
  {
    operator new();
  }

  return result;
}

void sub_19B43AF08(_Unwind_Exception *a1)
{
  v3 = v1[15];
  v1[15] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = v1[5];
  v1[5] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  sub_19B674784(v1);
  _Unwind_Resume(a1);
}

void sub_19B43B2B8(_Unwind_Exception *a1)
{
  v4 = v1[37];
  v1[37] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = v1[22];
  if (v5)
  {
    sub_19B41FFEC(v5);
  }

  v6 = v1[20];
  if (v6)
  {
    sub_19B41FFEC(v6);
  }

  v7 = *v2;
  *v2 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  sub_19B70B29C(v1);
  _Unwind_Resume(a1);
}

os_log_t sub_19B43B3EC()
{
  result = os_log_create("com.apple.locationd.Motion", "Compass");
  qword_1EAFE2888 = result;
  return result;
}

os_log_t sub_19B43B41C()
{
  result = os_log_create("com.apple.locationd.Motion", "Compass");
  qword_1EAFE2888 = result;
  return result;
}

os_log_t sub_19B43B44C()
{
  result = os_log_create("com.apple.locationd.Motion", "Compass");
  qword_1EAFE2888 = result;
  return result;
}

os_log_t sub_19B43B47C()
{
  result = os_log_create("com.apple.locationd.Motion", "Compass");
  qword_1EAFE2888 = result;
  return result;
}

os_log_t sub_19B43B4AC()
{
  result = os_log_create("com.apple.locationd.Motion", "Compass");
  qword_1EAFE2888 = result;
  return result;
}

os_log_t sub_19B43B4DC()
{
  result = os_log_create("com.apple.locationd.Motion", "Compass");
  qword_1EAFE2888 = result;
  return result;
}

os_log_t sub_19B43B50C()
{
  result = os_log_create("com.apple.locationd.Motion", "Compass");
  qword_1EAFE2888 = result;
  return result;
}

os_log_t sub_19B43B53C()
{
  result = os_log_create("com.apple.locationd.Motion", "Compass");
  qword_1EAFE2888 = result;
  return result;
}

os_log_t sub_19B43B56C()
{
  result = os_log_create("com.apple.locationd.Motion", "Compass");
  qword_1EAFE2888 = result;
  return result;
}

os_log_t sub_19B43B59C()
{
  result = os_log_create("com.apple.locationd.Motion", "Compass");
  qword_1EAFE2888 = result;
  return result;
}

os_log_t sub_19B43B5CC()
{
  result = os_log_create("com.apple.locationd.Motion", "Compass");
  qword_1EAFE2888 = result;
  return result;
}

os_log_t sub_19B43B5FC()
{
  result = os_log_create("com.apple.locationd.Motion", "Compass");
  qword_1EAFE2888 = result;
  return result;
}

os_log_t sub_19B43B62C()
{
  result = os_log_create("com.apple.locationd.Motion", "Compass");
  qword_1EAFE2888 = result;
  return result;
}

os_log_t sub_19B43B65C()
{
  result = os_log_create("com.apple.locationd.Motion", "Compass");
  qword_1EAFE2888 = result;
  return result;
}

os_log_t sub_19B43B68C()
{
  result = os_log_create("com.apple.locationd.Motion", "Compass");
  qword_1EAFE2888 = result;
  return result;
}

os_log_t sub_19B43B6BC()
{
  result = os_log_create("com.apple.locationd.Motion", "Compass");
  qword_1EAFE2888 = result;
  return result;
}

uint64_t sub_19B43B6EC()
{
  if (qword_1ED71C9F0 != -1)
  {
    dispatch_once(&qword_1ED71C9F0, &unk_1F0E3A4E0);
  }

  return byte_1ED71C973;
}

void sub_19B43B734(uint64_t a1, int a2, uint64_t a3)
{
  if (!a2)
  {
    v4 = *(a1 + 32);
    if (!v4)
    {
      sub_19B421798();
      sub_19B43B6EC();
      v7 = sub_19B42CAAC();
      sub_19B42C428(v7);
    }

    if (a3)
    {
      v5 = sub_19B708344;
      v6 = a1;
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }

    sub_19B42D100(v4, v5, v6);
  }
}

void sub_19B43B808()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    if (CFEqual(v0, @"iPhone"))
    {
      byte_1ED71C973 = 1;
    }

    CFRelease(v1);
  }
}

uint64_t sub_19B43B878(uint64_t a1, int *a2)
{
  v68 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  if ((*a2 & 4) != 0)
  {
    *(a1 + 28) = (*a2 & 8) != 0;
  }

  v5 = v4 & 1;
  v6 = v4 & 2;
  v7 = v4 & 4;
  v8 = v4 & 0x10;
  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
  }

  v9 = off_1ED71C808;
  v10 = v8 >> 4;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *a2;
    v12 = *(a1 + 28);
    *buf = 67241472;
    *&buf[4] = v11;
    v60 = 1026;
    v61 = v5;
    v62 = 1026;
    v63 = v6 >> 1;
    v64 = 1026;
    v65 = v7 >> 2;
    v66 = 1026;
    v67[0] = v12;
    LOWORD(v67[1]) = 1026;
    *(&v67[1] + 2) = v10;
    _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_DEFAULT, "Starting device motion, mode=%{public}#x,useAccelerometer=%{public}d,useGyro=%{public}d,useCompass=%{public}d,fUseNorthRef=%{public}d,buildingGYTT=%{public}d", buf, 0x26u);
  }

  v13 = sub_19B420058();
  if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
    }

    v14 = *a2;
    v15 = *(a1 + 28);
    v47 = 67241472;
    v48 = v14;
    v49 = 1026;
    v50 = v5;
    v51 = 1026;
    v52 = v6 >> 1;
    v53 = 1026;
    v54 = v7 >> 2;
    v55 = 1026;
    v56 = v15;
    v57 = 1026;
    v58 = v10;
    v16 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLDeviceMotion::enableSensorFusionWithMode(const CLMotionTypeDeviceMotionMode &)", "CoreLocation: %s\n", v16);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  result = sub_19B426490(a2);
  if (result)
  {
    v46 = 0;
    v18 = sub_19B420D84();
    v19 = *(v18 + 24);
    v20 = *(v18 + 32);
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v21 = sub_19B438CCC(v19, "LogSensorFusion", &v46);
    if (v20)
    {
      sub_19B41FFEC(v20);
    }

    if ((v21 & 1) == 0)
    {
      v46 = 0;
    }

    result = *a2;
    if (result > 18)
    {
      if (result <= 66)
      {
        if (result == 19)
        {
          v44 = *(a1 + 32);
          if (!v44)
          {
            operator new();
          }
        }

        else
        {
          if (result != 34)
          {
            goto LABEL_116;
          }

          v44 = *(a1 + 48);
          if (!v44)
          {
            operator new();
          }

          v44[9] = sub_19B4455C8;
          v44[10] = a1;
        }

        goto LABEL_113;
      }

      if (result != 67)
      {
        if (result != 143)
        {
          if (result != 259)
          {
            goto LABEL_116;
          }

          v22 = *(a1 + 80);
          if (!v22)
          {
            if ((sub_19B421620() & 0x40) == 0)
            {
              if ((sub_19B421620() & 8) == 0)
              {
                if ((sub_19B421620() & 0x10) == 0)
                {
                  if (qword_1ED71C800 != -1)
                  {
                    dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
                  }

                  v28 = off_1ED71C808;
                  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_19B41C000, v28, OS_LOG_TYPE_DEFAULT, "Using CLSensorFusionServiceLegacy backend", buf, 2u);
                  }

                  v29 = sub_19B420058();
                  if (*(v29 + 160) > 1 || *(v29 + 164) > 1 || *(v29 + 168) > 1 || *(v29 + 152))
                  {
                    bzero(buf, 0x65CuLL);
                    if (qword_1ED71C800 != -1)
                    {
                      dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
                    }

                    LOWORD(v47) = 0;
                    v30 = _os_log_send_and_compose_impl();
                    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLDeviceMotion::enableSensorFusionWithMode(const CLMotionTypeDeviceMotionMode &)", "CoreLocation: %s\n", v30);
                    if (v30 != buf)
                    {
                      free(v30);
                    }
                  }

                  operator new();
                }

                if (qword_1ED71C800 != -1)
                {
                  dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
                }

                v39 = off_1ED71C808;
                if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_19B41C000, v39, OS_LOG_TYPE_DEFAULT, "Using CLSensorFusionService6AxisAP backend", buf, 2u);
                }

                v40 = sub_19B420058();
                if (*(v40 + 160) > 1 || *(v40 + 164) > 1 || *(v40 + 168) > 1 || *(v40 + 152))
                {
                  bzero(buf, 0x65CuLL);
                  if (qword_1ED71C800 != -1)
                  {
                    dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
                  }

                  LOWORD(v47) = 0;
                  v41 = _os_log_send_and_compose_impl();
                  sub_19B6BB7CC("Generic", 1, 0, 2, "void CLDeviceMotion::enableSensorFusionWithMode(const CLMotionTypeDeviceMotionMode &)", "CoreLocation: %s\n", v41);
                  if (v41 != buf)
                  {
                    free(v41);
                  }
                }

                operator new();
              }

              if (qword_1ED71C800 != -1)
              {
                dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
              }

              v36 = off_1ED71C808;
              if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_19B41C000, v36, OS_LOG_TYPE_DEFAULT, "Using CLSensorFusionService6AxisSPU backend", buf, 2u);
              }

              v37 = sub_19B420058();
              if (*(v37 + 160) > 1 || *(v37 + 164) > 1 || *(v37 + 168) > 1 || *(v37 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1ED71C800 != -1)
                {
                  dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
                }

                LOWORD(v47) = 0;
                v38 = _os_log_send_and_compose_impl();
                sub_19B6BB7CC("Generic", 1, 0, 2, "void CLDeviceMotion::enableSensorFusionWithMode(const CLMotionTypeDeviceMotionMode &)", "CoreLocation: %s\n", v38);
                if (v38 != buf)
                {
                  free(v38);
                }
              }

              operator new();
            }

            if (qword_1ED71C800 != -1)
            {
              dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
            }

            v31 = off_1ED71C808;
            if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_19B41C000, v31, OS_LOG_TYPE_DEFAULT, "Using CLSensorFusionService6AxisAlwaysOnSPU backend", buf, 2u);
            }

            v32 = sub_19B420058();
            if (*(v32 + 160) > 1 || *(v32 + 164) > 1 || *(v32 + 168) > 1 || *(v32 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1ED71C800 != -1)
              {
                dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
              }

              LOWORD(v47) = 0;
              v33 = _os_log_send_and_compose_impl();
              sub_19B6BB7CC("Generic", 1, 0, 2, "void CLDeviceMotion::enableSensorFusionWithMode(const CLMotionTypeDeviceMotionMode &)", "CoreLocation: %s\n", v33);
              if (v33 != buf)
              {
                free(v33);
              }
            }

            operator new();
          }

          v42 = sub_19B426F5C(259);
          sub_19B42753C(a1, v42);
          *buf = v43;
          result = (*(*v22 + 16))(v22, buf);
          v44 = *(a1 + 80);
          goto LABEL_113;
        }

        goto LABEL_38;
      }

LABEL_32:
      v23 = *(a1 + 64);
      if (!v23)
      {
        if ((sub_19B421620() & 8) == 0)
        {
          if ((sub_19B421620() & 0x10) == 0)
          {
            operator new();
          }

          operator new();
        }

        operator new();
      }

      v34 = sub_19B426F5C(result);
      sub_19B42753C(a1, v34);
      *buf = v35;
      result = (*(*v23 + 16))(v23, buf);
      v44 = *(a1 + 64);
      goto LABEL_113;
    }

    if (result > 6)
    {
      if (result != 7 && result != 15)
      {
        goto LABEL_116;
      }

LABEL_38:
      v24 = *(a1 + 72);
      if (!v24)
      {
        if ((sub_19B421620() & 0x10) == 0)
        {
          operator new();
        }

        operator new();
      }

      (*(*v24 + 24))(v24, *(a1 + 28));
      v25 = *(a1 + 72);
      v26 = sub_19B426F5C(*a2);
      sub_19B42753C(a1, v26);
      *buf = v27;
      result = (*(*v25 + 16))(v25, buf);
      v44 = *(a1 + 72);
LABEL_113:
      if (v44[7] != sub_19B4205E8 || v44[8] != a1)
      {
        v44[7] = sub_19B4205E8;
        v44[8] = a1;
        result = (*(*v44 + 48))(v44);
      }

      goto LABEL_116;
    }

    if (result != 2)
    {
      if (result != 3)
      {
        goto LABEL_116;
      }

      goto LABEL_32;
    }

    result = sub_19B421620();
    if ((result & 0x100) != 0)
    {
      if (!*(a1 + 56))
      {
        operator new();
      }
    }

    else if (!*(a1 + 40))
    {
      operator new();
    }
  }

LABEL_116:
  v45 = *MEMORY[0x1E69E9840];
  return result;
}

CFRunLoopTimerRef *sub_19B43C87C(CFRunLoopTimerRef *a1, int a2, char a3)
{
  *a1 = &unk_1F0E33030;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  *(a1 + 8) = a2;
  a1[5] = 0;
  *(a1 + 48) = a3;
  *(a1 + 13) = 0;
  a1[7] = 0;
  context.version = 0;
  context.info = a1;
  memset(&context.retain, 0, 24);
  v4 = CFRunLoopTimerCreate(*MEMORY[0x1E695E480], 1.79769313e308, 1.79769313e308, 0, 0, sub_19B780E74, &context);
  a1[7] = v4;
  if (v4)
  {
    sub_19B420D84();
    CFRunLoopAddTimer(*qword_1ED71C908, a1[7], *MEMORY[0x1E695E8D0]);
  }

  return a1;
}

void sub_19B43C954(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B783808(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19B43C96C(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  sub_19B421798();
  v2 = sub_19B43CC3C();
  sub_19B43CCBC(a1, 1);
  *(a1 + 200) = 5;
  *(a1 + 201) = v2;
  *(a1 + 202) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *a1 = &unk_1F0E31F48;
  if ((sub_19B421620() & 8) == 0)
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
    }

    v5 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "CLPlatformInfo::motionCaps().deviceMotion6Service";
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Device motion service 6 is not supported on this platform!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
      }
    }

    v6 = off_1ED71C808;
    if (os_signpost_enabled(off_1ED71C808))
    {
      *buf = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "CLPlatformInfo::motionCaps().deviceMotion6Service";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Device motion service 6 is not supported on this platform!", "{msg%{public}.0s:Device motion service 6 is not supported on this platform!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E28220);
      }
    }

    v7 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "CLPlatformInfo::motionCaps().deviceMotion6Service";
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Device motion service 6 is not supported on this platform!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
    __break(1u);
  }

  v3 = *MEMORY[0x1E69E9840];
  return a1;
}

uint64_t sub_19B43CC3C()
{
  if (qword_1ED71C9F0 != -1)
  {
    dispatch_once(&qword_1ED71C9F0, &unk_1F0E3A4E0);
  }

  if (byte_1ED71C973)
  {
    return 1;
  }

  if (qword_1ED71C9D8 != -1)
  {
    dispatch_once(&qword_1ED71C9D8, &unk_1F0E3A480);
  }

  return byte_1ED71C970;
}

uint64_t sub_19B43CCBC(uint64_t a1, int a2)
{
  v75 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F0E325E0;
  *(a1 + 8) = 0;
  v3 = (a1 + 8);
  *(a1 + 12) = a2;
  *(a1 + 16) = xmmword_19B7BD7C0;
  v4 = (a1 + 16);
  *(a1 + 32) = xmmword_19B7BD7C0;
  v5 = (a1 + 32);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 76) = 0u;
  *(a1 + 96) = 0xBFF0000000000000;
  *(a1 + 112) = 0;
  *(a1 + 104) = 0;
  sub_19B41E130((a1 + 104), 0);
  *(a1 + 152) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 156) = xmmword_19B7BA300;
  *(a1 + 172) = 0x1FF00000000;
  *(a1 + 180) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E2A420);
  }

  v6 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 12);
    *buf = 67240192;
    LODWORD(v68) = v7;
    _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEBUG, "Starting device motion service %{public}d", buf, 8u);
  }

  v8 = sub_19B420058();
  if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E2A420);
    }

    v9 = *(a1 + 12);
    *v74 = 67240192;
    *&v74[4] = v9;
    v10 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "CLSensorFusionService::CLSensorFusionService(int)", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  v11 = sub_19B420D84();
  v12 = *(v11 + 24);
  v13 = *(v11 + 32);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = sub_19B438CCC(v12, "LogDeviceMotion", v3);
  if (v13)
  {
    sub_19B41FFEC(v13);
  }

  if ((v14 & 1) == 0)
  {
    *v3 = 0;
  }

  sub_19B420D84();
  v66 = *(qword_1ED71C908 + 16);
  v15 = sub_19B420D84();
  v16 = *(v15 + 24);
  v17 = *(v15 + 32);
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_19B438CCC(v16, "DeviceMotionUseThrottledInterval", &v66);
  if (v17)
  {
    sub_19B41FFEC(v17);
  }

  v18 = sub_19B420D84();
  v19 = *(v18 + 24);
  v20 = *(v18 + 32);
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = sub_19B43D468(v19, "DeviceMotionAccelerometerUpdateInterval", v4);
  if (v20)
  {
    sub_19B41FFEC(v20);
  }

  if ((v21 & 1) == 0)
  {
    v22 = 0.01;
    if (v66)
    {
      v22 = 0.02;
    }

    *v4 = v22;
  }

  v23 = sub_19B420D84();
  v24 = *(v23 + 24);
  v25 = *(v23 + 32);
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v26 = sub_19B43D468(v24, "DeviceMotionGyroUpdateInterval", (a1 + 24));
  if (v25)
  {
    sub_19B41FFEC(v25);
  }

  if ((v26 & 1) == 0)
  {
    v27 = 0.005;
    if (v66)
    {
      v27 = 0.02;
    }

    *(a1 + 24) = v27;
  }

  v28 = sub_19B420D84();
  v29 = *(v28 + 24);
  v30 = *(v28 + 32);
  if (v30)
  {
    atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v31 = sub_19B43D468(v29, "DeviceMotionCompassUpdateInterval", v5);
  if (v30)
  {
    sub_19B41FFEC(v30);
  }

  if ((v31 & 1) == 0)
  {
    *v5 = 0x3F847AE147AE147BLL;
  }

  v32 = sub_19B42AD98();
  v33 = sub_19B43D788(v32, (a1 + 24));
  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E2A420);
  }

  v34 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
  {
    v35 = *v4;
    *buf = 134349312;
    v68 = v33;
    v69 = 2050;
    v70 = v35;
    _os_log_impl(&dword_19B41C000, v34, OS_LOG_TYPE_DEBUG, "GyroUpdateInterval,%{public}.4f,AccelerometerUpdateInterval,%{public}.4f", buf, 0x16u);
  }

  v36 = sub_19B420058();
  if (*(v36 + 160) > 1 || *(v36 + 164) > 1 || *(v36 + 168) > 1 || *(v36 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E2A420);
    }

    v37 = *v4;
    *v74 = 134349312;
    *&v74[4] = v33;
    *&v74[12] = 2050;
    *&v74[14] = v37;
    v38 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "CLSensorFusionService::CLSensorFusionService(int)", "CoreLocation: %s\n", v38);
    if (v38 != buf)
    {
      free(v38);
    }
  }

  if (*v3)
  {
    *v74 = &unk_1F0E311F0;
    *&v74[8] = CFAbsoluteTimeGetCurrent();
    v39 = v33;
    *&v74[20] = v39;
    v40 = sub_19B720E40();
    sub_19B7223F8(v40, v74);
    sub_19B517F80(buf);
    sub_19B5325B8(buf);
    v73 |= 1u;
    v71 = *&v74[8];
    v41 = v72;
    *(v72 + 12) |= 1u;
    *(v41 + 8) = v39;
    sub_19B51DBD4(buf);
  }

  sub_19B420D84();
  if (*(qword_1ED71C908 + 16) == 1)
  {
    v42 = sub_19B420D84();
    v43 = *(v42 + 24);
    v44 = *(v42 + 32);
    if (v44)
    {
      atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    buf[0] = 0;
    v45 = sub_19B438CCC(v43, "DumpGyroCalibrationDatabaseOnDeviceMotionStart", buf);
    v48 = (v45 & buf[0]);
    if (v44)
    {
      sub_19B41FFEC(v44);
    }

    if (v48)
    {
      v49 = MEMORY[0x1E696AEC0];
      v50 = objc_msgSend_date(MEMORY[0x1E695DF00], v46, v47);
      objc_msgSend_timeIntervalSinceReferenceDate(v50, v51, v52);
      v55 = objc_msgSend_stringWithFormat_(v49, v53, @"%.0f", v54);
      v56 = sub_19B43D9C4();
      v59 = objc_msgSend_vendor(v56, v57, v58);
      v61 = objc_msgSend_proxyForService_(v59, v60, @"CLGyroCalibrationDatabase");
      v65[0] = MEMORY[0x1E69E9820];
      v65[1] = 3221225472;
      v65[2] = sub_19B76029C;
      v65[3] = &unk_1E7535CA0;
      v65[4] = v55;
      objc_msgSend_dumpDatabase_onCompletion_(v61, v62, v55, v65);
    }
  }

  v63 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_19B43D414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (v17)
  {
    sub_19B41FFEC(v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B43D468(uint64_t a1, const char *a2, void *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B43D4DC(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

uint64_t sub_19B43D4DC(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  cf = 0;
  if ((*(*a1 + 904))(a1, a2, &cf))
  {
    v6 = sub_19B444EE4(cf, a3);
    if ((v6 & 1) == 0)
    {
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v7 = off_1ED71C828;
      if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
      {
        v8 = (*(*a1 + 840))(a1);
        *buf = 138412546;
        v20 = v8;
        v21 = 2112;
        v22 = a2;
        _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
      }

      v9 = sub_19B420058();
      if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C820 != -1)
        {
          dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
        }

        v10 = (*(*a1 + 840))(a1);
        v15 = 138412546;
        v16 = v10;
        v17 = 2112;
        v18 = a2;
        v11 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, double &, int) const", "CoreLocation: %s\n", v11);
        if (v11 != buf)
        {
          free(v11);
        }
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v6 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v6;
}

double sub_19B43D788(uint64_t a1, double *a2)
{
  if ((sub_19B421620() & 1) != 0 || (sub_19B421620() & 2) != 0)
  {
    result = *(a1 + 40);
    return result * *a2;
  }

  result = *a2;
  if (*a2 <= 0.01 && result > 0.0)
  {
    a2 = (a1 + 40);
    return result * *a2;
  }

  return result;
}

void sub_19B43D7EC(uint64_t a1, double *a2)
{
  v3 = *(a1 + 208);
  if (!v3)
  {
    v4 = *(a1 + 200);
    sub_19B42CAAC();
    operator new();
  }

  v5 = rint(*a2 * 1000000.0);
  if (*a2 < 0.0)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  sub_19B4238F4(v3, v6);
  sub_19B42D100(*(a1 + 208), sub_19B41F1A0, a1);
}

void sub_19B43D938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  sub_19B41FFEC(v10);
  _Unwind_Resume(a1);
}

uint64_t sub_19B43D97C(uint64_t a1, const char *a2)
{
  if (*(a1 + 180) == 1)
  {
    sub_19B4441E8(a1);
  }

  return sub_19B42E628(a1, a2);
}

uint64_t sub_19B43D9C4()
{
  if (qword_1ED71D2D8 != -1)
  {
    dispatch_once(&qword_1ED71D2D8, &unk_1F0E27EC0);
  }

  return qword_1ED71D2D0;
}

uint64_t sub_19B43DA0C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x1E69AD368];
  v4 = objc_msgSend_main(MEMORY[0x1E69AD380], a2, a3);
  result = objc_msgSend_newSharedVendorUniverseWithSilo_(v3, v5, v4);
  qword_1ED71D2D0 = result;
  return result;
}

void sub_19B43DB10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v16, v15);
  _Unwind_Resume(a1);
}

uint64_t sub_19B43DB40(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  *a1 = &unk_1F0E32D08;
  v12 = [CLNotifierClientAdapter alloc];
  *(a1 + 8) = objc_msgSend_initWithClient_(v12, v13, a1);
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  if (*(a3 + 23) >= 0)
  {
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v14, a3);
  }

  else
  {
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v14, *a3);
  }

  v18 = v15;
  v19 = objc_msgSend_vendor(a4, v16, v17);
  v21 = objc_msgSend_proxyForService_(v19, v20, v18);
  *(a1 + 16) = v21;
  v22 = v21;
  if (a2)
  {
    objc_msgSend_setDelegateEntityName_(*(a1 + 16), v23, a2);
  }

  v26 = *(a1 + 8);
  v25 = *(a1 + 16);
  v27 = objc_msgSend_silo(a4, v23, v24);
  objc_msgSend_registerDelegate_inSilo_(v25, v28, v26, v27);
  return a1;
}

void sub_19B43DC6C(uint64_t a1, char *a2, __IOHIDServiceClient *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a2 == "ADDED")
  {
    v5 = objc_autoreleasePoolPush();
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEBUG))
    {
      v6 = IOHIDServiceClientCopyProperty(a3, @"PrimaryUsagePage");
      v9 = objc_msgSend_intValue(v6, v7, v8);
      v10 = IOHIDServiceClientCopyProperty(a3, @"PrimaryUsage");
      v13 = objc_msgSend_intValue(v10, v11, v12);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }

      v14 = off_1ED71C838;
      if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67240448;
        v25 = v9;
        v26 = 1026;
        v27 = v13;
        _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_DEBUG, "[CLIoHidInterface] New IOHIDServiceClientRef for usage pair {%{public}d, %{public}d} just became available.", buf, 0xEu);
      }

      v15 = sub_19B420058();
      if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
        }

        v16 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CLIoHidInterface::onServiceRegistration(void *, IOHIDServiceClientRef)", "CoreLocation: %s\n", v16);
        if (v16 != buf)
        {
          free(v16);
        }
      }
    }

    v17 = *(a1 + 8);
    for (i = *(a1 + 16); v17 != i; v17 += 16)
    {
      v19 = *(v17 + 8);
      if (v19)
      {
        v20 = *v17;
        atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v21 = std::__shared_weak_count::lock(v19);
        if (v21)
        {
          v22 = v21;
          if (v20)
          {
            if (sub_19B42F570(v20, a3))
            {
              sub_19B42F5C8(v20, a3, 1);
              if (v20[11])
              {
                IOHIDServiceClientRegisterRemovalCallback();
              }
            }
          }

          sub_19B41FFEC(v22);
        }

        std::__shared_weak_count::__release_weak(v19);
      }
    }

    objc_autoreleasePoolPop(v5);
  }

  v23 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B43DFB0()
{
  result = sub_19B423E34();
  if (result)
  {
    byte_1ED71D550 = 1;
  }

  return result;
}

uint64_t sub_19B43E020()
{
  v0 = objc_alloc(MEMORY[0x1E69AD360]);
  result = objc_msgSend_initWithIdentifier_(v0, v1, @"CLGeomagneticModelProviderSilo");
  qword_1ED71D560 = result;
  return result;
}

uint64_t sub_19B43E33C(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B43E3CC;
  block[3] = &unk_1E7532988;
  block[4] = a1;
  if (qword_1EAFE3620 != -1)
  {
    dispatch_once(&qword_1EAFE3620, block);
  }

  return qword_1EAFE3A88;
}

void sub_19B43E464(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  sub_19B43D7EC(a1, (a1 + 40));
  if (*(a1 + 201) == 1)
  {
    v2 = *(a1 + 208);
    *(v2 + 181) = 1;
    v3 = sub_19B43E748(v2);
    *(a1 + 202) = v3;
    if (v3)
    {
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E29360);
      }

      v4 = off_1ED71C808;
      if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEFAULT))
      {
        v5 = sub_19B43EE18(*(a1 + 208));
        v6 = *(*(a1 + 208) + 16);
        v7 = *(*(a1 + 208) + 20);
        *buf = 134349568;
        v14 = v5;
        v15 = 1026;
        v16 = v7;
        v17 = 1026;
        v18 = v6;
        _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEFAULT, "[CLSensorFusionServiceSPU] FastPath opened,serviceRef,%{public}p,usagePage,%{public}d,usage,%{public}d", buf, 0x18u);
      }

      v8 = sub_19B420058();
      if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E29360);
        }

        sub_19B43EE18(*(a1 + 208));
        v11 = *(*(a1 + 208) + 20);
        v12 = *(*(a1 + 208) + 16);
        v9 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusionServiceSPU::start()", "CoreLocation: %s\n", v9);
        if (v9 != buf)
        {
          free(v9);
        }
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B43E69C(uint64_t a1, char *a2, void *a3)
{
  *a1 = &unk_1F0E342D8;
  sub_19B428B50((a1 + 8), a2);
  *(a1 + 32) = a3;
  *(a1 + 40) = objc_msgSend_silo(a3, v5, v6);
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = a1 + 88;
  *(a1 + 104) = 0;
  *(a1 + 108) = 0;
  return a1;
}

void sub_19B43E72C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B43E748(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current != *qword_1ED71C908)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E2A580);
    }

    v18 = off_1ED71C838;
    p_vtable = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *v23 = 0;
      *&v23[4] = 2082;
      *&v23[6] = "";
      v24 = 2082;
      v25 = "assert";
      v26 = 2081;
      v27 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[FastPathDevice] openFastPathPrivate() should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E2A580);
      }
    }

    v19 = off_1ED71C838;
    if (os_signpost_enabled(off_1ED71C838))
    {
      *buf = 68289539;
      *v23 = 0;
      *&v23[4] = 2082;
      *&v23[6] = "";
      v24 = 2082;
      v25 = "assert";
      v26 = 2081;
      v27 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[FastPathDevice] openFastPathPrivate() should be running on motion thread", "{msg%{public}.0s:[FastPathDevice] openFastPathPrivate() should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E2A580);
      }
    }

    v20 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *v23 = 0;
      *&v23[4] = 2082;
      *&v23[6] = "";
      v24 = 2082;
      v25 = "assert";
      v26 = 2081;
      v27 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[FastPathDevice] openFastPathPrivate() should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
    goto LABEL_59;
  }

  if (*(a1 + 180) == 1)
  {
    p_vtable = CMDeviceOrientationManager.vtable;
    if (qword_1ED71C830 == -1)
    {
LABEL_4:
      v4 = off_1ED71C838;
      if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "[FastPath] Already opened", buf, 2u);
      }

      v5 = sub_19B420058();
      if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (p_vtable[262] != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E2A580);
        }

        v6 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL FastPathDevice::openFastPathPrivate()", "CoreLocation: %s\n", v6);
        if (v6 != buf)
        {
          free(v6);
        }
      }

      v7 = 1;
      goto LABEL_29;
    }

LABEL_59:
    dispatch_once(&qword_1ED71C830, &unk_1F0E2A580);
    goto LABEL_4;
  }

  if (*(a1 + 24) || (sub_19B782B40(a1) & 1) != 0)
  {
    os_unfair_lock_lock((a1 + 176));
    v8 = *(a1 + 24);
    *(a1 + 180) = IOHIDServiceClientFastPathInit() != 0;
    os_unfair_lock_unlock((a1 + 176));
    if ((*(a1 + 180) & 1) == 0)
    {
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E2A580);
      }

      v9 = off_1ED71C838;
      if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_ERROR))
      {
        v10 = *(a1 + 24);
        *buf = 138543362;
        *v23 = v10;
        _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_ERROR, "[FastPath] openFastPathPrivate() failed,serviceRef,%{public}@", buf, 0xCu);
      }

      v11 = sub_19B420058();
      if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E2A580);
        }

        v21 = *(a1 + 24);
        v12 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL FastPathDevice::openFastPathPrivate()", "CoreLocation: %s\n", v12);
        if (v12 != buf)
        {
          free(v12);
        }
      }
    }

    v7 = *(a1 + 180);
  }

  else
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E2A580);
    }

    v15 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_ERROR, "[FastPath] Failed to open because of null service ref", buf, 2u);
    }

    v16 = sub_19B420058();
    if ((*(v16 + 160) & 0x80000000) == 0 || (*(v16 + 164) & 0x80000000) == 0 || (*(v16 + 168) & 0x80000000) == 0 || (v7 = *(v16 + 152)) != 0)
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E2A580);
      }

      v17 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL FastPathDevice::openFastPathPrivate()", "CoreLocation: %s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }

      v7 = 0;
    }
  }

LABEL_29:
  v13 = *MEMORY[0x1E69E9840];
  return v7 & 1;
}

uint64_t sub_19B43EE18(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current != *qword_1ED71C908)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v5 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CLIoHidInterface] Should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    v6 = off_1ED71C838;
    if (os_signpost_enabled(off_1ED71C838))
    {
      *buf = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CLIoHidInterface] Should be running on motion thread", "{msg%{public}.0s:[CLIoHidInterface] Should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    v7 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CLIoHidInterface] Should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
  }

  result = *(a1 + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B43F0AC(uint64_t a1, double *a2)
{
  v4 = a2[2];
  v5 = a2[3] + a2[3];
  v6 = a2[1];
  v7 = v6 * v5 - *a2 * (v4 + v4);
  v8 = (v6 + v6) * *a2 + v4 * v5;
  v9 = sqrtf((v8 * v8) + (v7 * v7));
  if (v9 == 0.0)
  {
    v10 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v10;
  }

  else
  {
    v11 = 1.0 - v6 * (v6 + v6) - v4 * (v4 + v4);
    v12 = v11;
    v13 = v9;
    if (v12 >= 0.0)
    {
      v15 = v11;
      v14 = acosf(v15);
    }

    else
    {
      v14 = -acosf(-v12);
    }

    v16 = __sincos_stret(v14 * 0.5);
    cosval = v16.__cosval;
    v18 = v16.__sinval / v13 * -v8;
    v19 = v16.__sinval / v13 * v7;
    v20 = 0.0;
    if (v12 < 0.0)
    {
      cosval = -(v16.__sinval / v13 * -v8);
      v18 = v16.__cosval;
      v19 = 0.0;
      v20 = -(v16.__sinval / v13 * v7);
    }

    sub_19B43F1C8(a1, &cosval, a2);
  }
}

double sub_19B43F1C8(double *a1, double *a2, double *a3)
{
  v4 = a2[2];
  v3 = a2[3];
  v5 = a3[2];
  v6 = a3[3];
  v7 = *a2;
  v8 = *a3;
  a1[1] = v3 * v5 + *a2 * a3[1] - v4 * v6 + a2[1] * *a3;
  v9 = a3[1];
  v10 = a2[1];
  a1[2] = v7 * v5 - v3 * v9 + v10 * v6 + v4 * v8;
  v11 = a2[2];
  v12 = a3[2];
  a1[3] = v11 * v9 - v10 * v12 + v7 * v6 + v3 * v8;
  result = -(v11 * v12) - v10 * v9 - a2[3] * a3[3] + v7 * v8;
  *a1 = result;
  return result;
}

void sub_19B43F5A4(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E2A700);
  }

  v2 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
  {
    sub_19B420D84();
    v3 = *_CFGetProgname();
    *buf = 136446210;
    *&buf[4] = v3;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_INFO, "%{public}s is enabling power conservative device motion for parallax.", buf, 0xCu);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E2A700);
    }

    sub_19B420D84();
    v5 = *_CFGetProgname();
    LODWORD(v10[0]) = 136446210;
    *(v10 + 4) = v5;
    v6 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusionService3AxisDynamicGyro::start()", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  sub_19B43F988(a1 + 296);
  *buf = 0;
  v9 = 0xBFF0000000000000;
  v10[0] = 0.0;
  v7 = mach_absolute_time();
  v8 = sub_19B41E070(v7);
  sub_19B440520(a1 + 296, buf, v10, &v9, &v8);
  operator new();
}

void sub_19B43F988(uint64_t a1)
{
  *(a1 + 8) = 0;
  bzero((a1 + 16), 0x20uLL);
  *(a1 + 40) = 0x3FF0000000000000;
  bzero((a1 + 64), 0x30uLL);
  bzero(*(a1 + 120), 0x18uLL);
  bzero(*(a1 + 112), 0x3CuLL);
  v2 = *(a1 + 120);
  memset_pattern16(v2, &unk_19B7BAE10, 0xCuLL);
  memset_pattern16((v2 + 12), &unk_19B7BAE20, 0xCuLL);
  *(a1 + 10) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 168) = _Q0;
  bzero((a1 + 184), 0xCuLL);
  bzero((a1 + 156), 0xCuLL);
  bzero((a1 + 136), 0xCuLL);
  *(a1 + 148) = 0;
  *(a1 + 152) = 0;
  bzero((a1 + 560), 0xCuLL);
  bzero((a1 + 576), 0x18uLL);
  *(a1 + 600) = 0;
  *(a1 + 608) = 0xBFF0000000000000;
  *(a1 + 616) = 0;
  sub_19B43FC50((a1 + 320));
  sub_19B43FC50((a1 + 400));
  sub_19B43FC50((a1 + 480));

  sub_19B43FA98((a1 + 232));
}

void sub_19B43FA98(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  a1[8] = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = a1[5];
      v2 = (a1[4] + 8);
      a1[4] = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 512;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v6 = 1024;
LABEL_7:
    a1[7] = v6;
  }

  a1[2] = 0;
}

void sub_19B43FB18(uint64_t a1, char a2, int a3)
{
  v5 = sub_19B43CCBC(a1, a3);
  v6 = *(v5 + 8);
  *(v5 + 256) = 0;
  *(v5 + 264) = 0;
  *(v5 + 272) = 0;
  *(v5 + 208) = 0;
  *(v5 + 216) = 0;
  *(v5 + 224) = 0;
  *(v5 + 273) = v6;
  *v5 = &unk_1F0E31AA0;
  *(v5 + 200) = &unk_1F0E31B08;
  *(v5 + 280) = 0;
  *(v5 + 288) = 0;
  v7 = sub_19B42AD98();
  v8 = sub_19B43D788(v7, (a1 + 24));
  sub_19B43FCD0(a1 + 296, &v8, a1 + 16, a2);
}

void sub_19B43FC24(_Unwind_Exception *a1)
{
  sub_19B5D3E20(v2);
  sub_19B760468(v1);
  _Unwind_Resume(a1);
}

void sub_19B43FC50(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  a1[9] = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = a1[6];
      v2 = (a1[5] + 8);
      a1[5] = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 256;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v6 = 512;
LABEL_7:
    a1[8] = v6;
  }

  a1[2] = 0;
  a1[3] = 0;
}

void sub_19B43FCD0(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v9 = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 0;
  *a1 = &unk_1F0E32A20;
  *(a1 + 10) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0x3FF0000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0x7FEFFFFFFFFFFFFFLL;
  *(a1 + 128) = 0;
  *(a1 + 148) = 0;
  *(a1 + 152) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 168) = _Q0;
  *(a1 + 196) = a4;
  *(a1 + 200) = *a2;
  *(a1 + 208) = 4;
  *(a1 + 216) = 0x3FA0A3D70A3D70A4;
  *(a1 + 224) = 1;
  *(a1 + 232) = &unk_1F0E32728;
  *(a1 + 240) = 100;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0;
  *(a1 + 304) = &unk_1F0E32C18;
  *(a1 + 312) = 20;
  *(a1 + 320) = &unk_1F0E32748;
  *(a1 + 328) = 20;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 400) = &unk_1F0E32748;
  *(a1 + 408) = 20;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = &unk_1F0E32748;
  *(a1 + 488) = 20;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 600) = 0;
  *(a1 + 608) = 0xBFF0000000000000;
  *(a1 + 616) = 0;
  operator new[]();
}

void sub_19B4404F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_19B66F4D8(v13);
  *(v12 + 232) = a12;
  sub_19B42A568((v12 + 256));
  _Unwind_Resume(a1);
}

void sub_19B440520(uint64_t a1, double *a2, double *a3, double *a4, void *a5)
{
  v205 = *MEMORY[0x1E69E9840];
  v10.f64[0] = *a2;
  v11 = *a2;
  *(a1 + 184) = v11;
  v12 = *a3;
  v13 = *a3;
  *(a1 + 188) = v13;
  v14 = *a4;
  v15 = *a4;
  *(a1 + 192) = v15;
  if (*(a1 + 176) < 0.0)
  {
    sub_19B442618(a1 + 16, a2, a3, a4);
    *(a1 + 176) = *a5;
    v16 = *a2;
    *(a1 + 560) = v16;
    v17 = *a3;
    *(a1 + 564) = v17;
    v18 = *a4;
    *(a1 + 568) = v18;
    *(a1 + 600) = 0;
    sub_19B4425C0((a1 + 576), (a1 + 16));
    *(a1 + 8) = 1;
    goto LABEL_174;
  }

  if (*(a1 + 224) == 1)
  {
    v10.f64[1] = v12;
    v19 = vcvt_f32_f64(vmlaq_f64(vmulq_f64(vcvtq_f64_f32(*(a1 + 560)), vdupq_n_s64(0x3FB999999999999AuLL)), vdupq_n_s64(0x3FECCCCCCCCCCCCDuLL), v10));
    *(a1 + 560) = v19;
    v20 = *(a1 + 568) * 0.1 + v14 * 0.9;
    *(a1 + 568) = v20;
    *buf = v19.f32[0];
    *v174 = v19.f32[1];
    v194 = v20;
    sub_19B66F590(a1 + 320, buf);
    sub_19B66F590(a1 + 400, v174);
    sub_19B66F590(a1 + 480, &v194);
  }

  v21 = *a5;
  *(a1 + 176) = *a5;
  if (!*(a1 + 148))
  {
    goto LABEL_174;
  }

  v22 = *(a1 + 168);
  if (v21 < v22)
  {
    goto LABEL_174;
  }

  if (*(a1 + 196) == 1)
  {
    if (qword_1EAFE2890 != -1)
    {
      dispatch_once(&qword_1EAFE2890, &unk_1F0E28080);
    }

    v23 = qword_1EAFE2898;
    if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_DEBUG))
    {
      v24 = *a2;
      v25 = *a3;
      v26 = *a4;
      v27 = *(a1 + 560);
      v28 = *(a1 + 564);
      v29 = *(a1 + 568);
      v30 = *a5;
      *buf = 134219520;
      *&buf[4] = v24;
      *&buf[12] = 2048;
      *&buf[14] = v25;
      *&buf[22] = 2048;
      v185 = v26;
      v186 = 2048;
      v187 = v27;
      v188 = 2048;
      v189 = v28;
      v190 = 2048;
      v191 = v29;
      v192 = 2048;
      v193 = v30;
      _os_log_impl(&dword_19B41C000, v23, OS_LOG_TYPE_DEBUG, "[Accelerometer6] x,%.4f,y,%.4f,z,%.4f,lpf, %.4f, %.4f, %.4f, timestamp,%lf", buf, 0x48u);
    }

    v31 = sub_19B420058();
    if (*(v31 + 160) > 1 || *(v31 + 164) > 1 || *(v31 + 168) > 1 || *(v31 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2890 != -1)
      {
        dispatch_once(&qword_1EAFE2890, &unk_1F0E28080);
      }

      v32 = *a2;
      v33 = *a3;
      v34 = *a4;
      v35 = *(a1 + 560);
      v36 = *(a1 + 564);
      v37 = *(a1 + 568);
      v38 = *a5;
      *v174 = 134219520;
      *&v174[4] = v32;
      *&v174[12] = 2048;
      *&v174[14] = v33;
      *&v174[22] = 2048;
      v175 = v34;
      v176 = 2048;
      v177 = v35;
      v178 = 2048;
      v179 = v36;
      v180 = 2048;
      v181 = v37;
      v182 = 2048;
      v183 = v38;
      v39 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusionMekf::feedAccelerometerData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v39);
      if (v39 != buf)
      {
        free(v39);
      }
    }

    if (qword_1EAFE2890 != -1)
    {
      dispatch_once(&qword_1EAFE2890, &unk_1F0E28080);
    }

    v40 = qword_1EAFE2898;
    if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_DEBUG))
    {
      v41 = *(a1 + 156);
      v42 = *(a1 + 160);
      v43 = *(a1 + 164);
      v44 = *(a1 + 296);
      v45 = 0.0;
      if (v44)
      {
        v46 = *(a1 + 248);
        v47 = (v46 / v44);
        if (v44 != 1)
        {
          v48 = (v44 * *(a1 + 252)) - (v46 * v46);
          if (v48 >= 0.0)
          {
            v45 = (v48 / ((v44 - 1) * v44));
          }
        }
      }

      else
      {
        v47 = 0.0;
      }

      *buf = 134219008;
      *&buf[4] = v41;
      *&buf[12] = 2048;
      *&buf[14] = v42;
      *&buf[22] = 2048;
      v185 = v43;
      v186 = 2048;
      v187 = v47;
      v188 = 2048;
      v189 = v45;
      _os_log_impl(&dword_19B41C000, v40, OS_LOG_TYPE_DEBUG, "[RotationRate6X] %.3f, %.3f, %.3f, %.3f, %.3f", buf, 0x34u);
    }

    v49 = sub_19B420058();
    if (*(v49 + 160) > 1 || *(v49 + 164) > 1 || *(v49 + 168) > 1 || *(v49 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2890 != -1)
      {
        dispatch_once(&qword_1EAFE2890, &unk_1F0E28080);
      }

      v50 = *(a1 + 156);
      v51 = *(a1 + 160);
      v52 = *(a1 + 164);
      v53 = *(a1 + 296);
      v54 = 0.0;
      if (v53)
      {
        v55 = *(a1 + 248);
        v56 = (v55 / v53);
        if (v53 != 1)
        {
          v57 = (v53 * *(a1 + 252)) - (v55 * v55);
          if (v57 >= 0.0)
          {
            v54 = (v57 / ((v53 - 1) * v53));
          }
        }
      }

      else
      {
        v56 = 0.0;
      }

      *v174 = 134219008;
      *&v174[4] = v50;
      *&v174[12] = 2048;
      *&v174[14] = v51;
      *&v174[22] = 2048;
      v175 = v52;
      v176 = 2048;
      v177 = v56;
      v178 = 2048;
      v179 = v54;
      v58 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusionMekf::feedAccelerometerData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v58);
      if (v58 != buf)
      {
        free(v58);
      }
    }
  }

  v59 = *a2;
  v60 = *a3;
  v61 = *a4;
  LODWORD(v22) = *(a1 + 136);
  LODWORD(v21) = *(a1 + 140);
  v170 = *&v21;
  v171 = *&v22;
  v62 = *(a1 + 144);
  v63 = *(a1 + 148);
  sub_19B66E618(a1, v21, *&v22);
  v64 = sqrt(v60 * v60 + v59 * v59 + v61 * v61);
  v65 = fabs(v64 + -1.0) / v64;
  if (v65 > 0.1)
  {
    goto LABEL_174;
  }

  if (*(a1 + 224) != 1 || *(a1 + 616))
  {
    goto LABEL_45;
  }

  v112 = fabsf(*(a1 + 156));
  if (v112 > 10.0)
  {
    goto LABEL_173;
  }

  v113 = fabsf(*(a1 + 160));
  if (v113 > 10.0)
  {
    goto LABEL_173;
  }

  v114 = fabsf(*(a1 + 164));
  if (v114 > 10.0)
  {
    goto LABEL_173;
  }

  v115 = *(a1 + 296);
  if (v115)
  {
    if ((*(a1 + 248) / v115) > 10.0)
    {
      goto LABEL_173;
    }
  }

  if (v112 > 3.14159265 || v113 > 3.14159265 || v114 > 3.14159265 || v115 && (*(a1 + 248) / v115) > 3.14159265)
  {
    if (v115 < 2 || (v116 = (v115 * *(a1 + 252)) - (*(a1 + 248) * *(a1 + 248)), v116 < 0.0) || (v116 / ((v115 - 1) * v115)) < 1.25)
    {
      sub_19B4425C0((a1 + 576), (a1 + 16));
      if (*(a1 + 196) == 1)
      {
        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E294C0);
        }

        v117 = off_1ED71C808;
        if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v117, OS_LOG_TYPE_DEBUG, "rotating and going through.", buf, 2u);
        }

        v118 = sub_19B420058();
        if (*(v118 + 160) > 1 || *(v118 + 164) > 1 || *(v118 + 168) > 1 || *(v118 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C800 != -1)
          {
            dispatch_once(&qword_1ED71C800, &unk_1F0E294C0);
          }

          *v174 = 0;
          v119 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusionMekf::feedAccelerometerData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v119);
          if (v119 != buf)
          {
            free(v119);
          }
        }
      }

      goto LABEL_45;
    }
  }

  sub_19B66F0F4(a1 + 304, &v194);
  v169 = sqrt(v196 * v196 + v195 * v195 + v197 * v197);
  v120 = *(a1 + 608);
  if (v120 > 0.0 && *(a1 + 176) - v120 > 15.0 && v169 < 0.3)
  {
    sub_19B66F1D4(a1 + 304, buf);
    if (fabs(sqrt(*&buf[16] * *&buf[16] + *&buf[8] * *&buf[8] + v185 * v185) + -1.0) <= 0.1)
    {
      *(a1 + 616) = 10;
      if (*(a1 + 196) != 1)
      {
        goto LABEL_240;
      }

      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E294C0);
      }

      v148 = off_1ED71C808;
      if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v148, OS_LOG_TYPE_DEBUG, "it's been too long. go through.", buf, 2u);
      }

      v149 = sub_19B420058();
      if (*(v149 + 160) <= 1 && *(v149 + 164) <= 1 && *(v149 + 168) <= 1 && !*(v149 + 152))
      {
        goto LABEL_240;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 == -1)
      {
        goto LABEL_185;
      }

      goto LABEL_259;
    }
  }

  if (*(a1 + 392) <= (*(a1 + 312) * 0.5))
  {
LABEL_173:
    sub_19B4425C0((a1 + 576), (a1 + 16));
    goto LABEL_174;
  }

  v121 = *(a1 + 296);
  if (v121)
  {
    if (*(*(*(a1 + 264) + (((v121 + *(a1 + 288) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v121 + *(a1 + 288) - 1) & 0x3FF)) > 0.2)
    {
      sub_19B4425C0((a1 + 576), (a1 + 16));
      if (*(a1 + 196) == 1)
      {
        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E294C0);
        }

        v122 = off_1ED71C808;
        if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
        {
          v123 = *(a1 + 576);
          v124 = *(a1 + 584);
          v125 = *(a1 + 592);
          *buf = 134218496;
          *&buf[4] = v123;
          *&buf[12] = 2048;
          *&buf[14] = v124;
          *&buf[22] = 2048;
          v185 = v125;
          _os_log_impl(&dword_19B41C000, v122, OS_LOG_TYPE_DEBUG, "grabing gravity, %.4f, %.4f, %.4f", buf, 0x20u);
        }

        v126 = sub_19B420058();
        if (*(v126 + 160) > 1 || *(v126 + 164) > 1 || *(v126 + 168) > 1 || *(v126 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C800 != -1)
          {
            dispatch_once(&qword_1ED71C800, &unk_1F0E294C0);
          }

          v127 = *(a1 + 576);
          v128 = *(a1 + 584);
          v129 = *(a1 + 592);
          *v174 = 134218496;
          *&v174[4] = v127;
          *&v174[12] = 2048;
          *&v174[14] = v128;
          *&v174[22] = 2048;
          v175 = v129;
          v130 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusionMekf::feedAccelerometerData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v130);
          if (v130 != buf)
          {
            free(v130);
          }
        }
      }
    }
  }

  if (v169 <= *(a1 + 216) * 0.75)
  {
    goto LABEL_240;
  }

  v131 = *(a1 + 576);
  v132 = *(a1 + 584);
  v133 = *(a1 + 592);
  v134 = fabs(v196 * v132 + v195 * v131 + v197 * v133);
  v168 = v169 - v134;
  v135 = *(a1 + 336);
  v136 = *(a1 + 416);
  v137 = *(a1 + 496);
  v200 = &unk_1F0E33EB0;
  v138 = v132 * v136 + v135 * v131 + v137 * v133;
  v201 = v135 - v138 * v131;
  v202 = v136 - v138 * v132;
  v203 = v137 - v138 * v133;
  v166 = v138;
  v167 = fabs(v203) + fabs(v201) + fabs(v202);
  if (*(a1 + 196) == 1)
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E294C0);
    }

    v139 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134219264;
      *&buf[4] = v195;
      *&buf[12] = 2048;
      *&buf[14] = v196;
      *&buf[22] = 2048;
      v185 = v197;
      v186 = 2048;
      v187 = v169;
      v188 = 2048;
      v189 = v134;
      v190 = 2048;
      v191 = v169 - v134;
      _os_log_impl(&dword_19B41C000, v139, OS_LOG_TYPE_DEBUG, "std, %.3f, %.3f, %.3f, mag, %.3f, dot, %.3f, leftover, %.3f", buf, 0x3Eu);
    }

    v140 = sub_19B420058();
    if (*(v140 + 160) > 1 || *(v140 + 164) > 1 || *(v140 + 168) > 1 || *(v140 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E294C0);
      }

      *v174 = 134219264;
      *&v174[4] = v195;
      *&v174[12] = 2048;
      *&v174[14] = v196;
      *&v174[22] = 2048;
      v175 = v197;
      v176 = 2048;
      v177 = v169;
      v178 = 2048;
      v179 = v134;
      v180 = 2048;
      v181 = v169 - v134;
      v141 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusionMekf::feedAccelerometerData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v141);
      if (v141 != buf)
      {
        free(v141);
      }
    }

    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E294C0);
    }

    v142 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134219008;
      *&buf[4] = v201;
      *&buf[12] = 2048;
      *&buf[14] = v202;
      *&buf[22] = 2048;
      v185 = v203;
      v186 = 2048;
      v187 = v166;
      v188 = 2048;
      v189 = v167;
      _os_log_impl(&dword_19B41C000, v142, OS_LOG_TYPE_DEBUG, "sum, %.3f, %.3f, %.3f, dot, %.3f, leftover, %.3f", buf, 0x34u);
    }

    v143 = sub_19B420058();
    if (*(v143 + 160) > 1 || *(v143 + 164) > 1 || *(v143 + 168) > 1 || *(v143 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E294C0);
      }

      *v174 = 134219008;
      *&v174[4] = v201;
      *&v174[12] = 2048;
      *&v174[14] = v202;
      *&v174[22] = 2048;
      v175 = v203;
      v176 = 2048;
      v177 = v166;
      v178 = 2048;
      v179 = v167;
      v144 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusionMekf::feedAccelerometerData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v144);
      if (v144 != buf)
      {
        free(v144);
      }
    }
  }

  if (v168 > *(a1 + 216))
  {
    goto LABEL_189;
  }

  v145 = *(a1 + 296);
  if (v145)
  {
    v146 = 0.0;
    if ((*(a1 + 248) / v145) > 1.57079633)
    {
      v146 = 1.0;
    }
  }

  else
  {
    v146 = 0.0;
  }

  if (v167 > (v146 * 0.5 + 1.0) * 6.0)
  {
LABEL_189:
    *(a1 + 600) = 0;
    goto LABEL_174;
  }

  if (v168 >= 0.01 || v167 >= 0.6)
  {
    v154 = *(a1 + 600) + 1;
    *(a1 + 600) = v154;
    if (!v145)
    {
      goto LABEL_227;
    }

    v155 = (a1 + 600);
    v151 = *(a1 + 248) / v145;
  }

  else
  {
    if (!v145)
    {
      v154 = *(a1 + 600) + 1;
      *(a1 + 600) = v154;
      goto LABEL_227;
    }

    v151 = *(a1 + 248) / v145;
    if (v151 > 0.5)
    {
      if (*(a1 + 196) != 1)
      {
        goto LABEL_240;
      }

      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E294C0);
      }

      v152 = off_1ED71C808;
      if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v152, OS_LOG_TYPE_DEBUG, "===========Skip ahead.", buf, 2u);
      }

      v153 = sub_19B420058();
      if (*(v153 + 160) <= 1 && *(v153 + 164) <= 1 && *(v153 + 168) <= 1 && !*(v153 + 152))
      {
        goto LABEL_240;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 == -1)
      {
        goto LABEL_185;
      }

LABEL_259:
      dispatch_once(&qword_1ED71C800, &unk_1F0E294C0);
LABEL_185:
      *v174 = 0;
      v150 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusionMekf::feedAccelerometerData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v150);
      if (v150 != buf)
      {
        free(v150);
      }

      goto LABEL_240;
    }

    v155 = (a1 + 600);
    v154 = *(a1 + 600) + 1;
    *(a1 + 600) = v154;
  }

  if (v151 > 1.0 && *(*(*(a1 + 264) + (((v145 + *(a1 + 288) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v145 + *(a1 + 288) - 1) & 0x3FF)) < 0.2)
  {
    sub_19B66F1D4(a1 + 304, buf);
    v156 = sqrt(*&buf[16] * *&buf[16] + *&buf[8] * *&buf[8] + v185 * v185);
    if (fabs(v156 + -1.0) / v156 >= 0.025)
    {
      v154 = *v155;
    }

    else
    {
      if (*(a1 + 196) == 1)
      {
        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E294C0);
        }

        v157 = off_1ED71C808;
        if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v157, OS_LOG_TYPE_DEBUG, "Skip ahead------.", buf, 2u);
        }

        v158 = sub_19B420058();
        if (*(v158 + 160) > 1 || *(v158 + 164) > 1 || *(v158 + 168) > 1 || *(v158 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C800 != -1)
          {
            dispatch_once(&qword_1ED71C800, &unk_1F0E294C0);
          }

          *v174 = 0;
          v159 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusionMekf::feedAccelerometerData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v159);
          if (v159 != buf)
          {
            free(v159);
          }
        }
      }

      v154 = *v155 + 2;
      *v155 = v154;
    }
  }

LABEL_227:
  if (v154 >= *(a1 + 208))
  {
LABEL_240:
    if (*(a1 + 224) == 1 && v169 > 0.2)
    {
      v162 = *(a1 + 296);
      if (!v162 || *(*(*(a1 + 264) + (((v162 + *(a1 + 288) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v162 + *(a1 + 288) - 1) & 0x3FF)) < 0.75 && (*(a1 + 248) / v162) < 1.0)
      {
        sub_19B66F1D4(a1 + 304, v174);
        v60 = *&v174[16];
        v59 = *&v174[8];
        v61 = v175;
        if (*(a1 + 196) == 1)
        {
          if (qword_1ED71C800 != -1)
          {
            dispatch_once(&qword_1ED71C800, &unk_1F0E294C0);
          }

          v163 = off_1ED71C808;
          if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_19B41C000, v163, OS_LOG_TYPE_DEBUG, "using mean accel", buf, 2u);
          }

          v164 = sub_19B420058();
          if (*(v164 + 160) > 1 || *(v164 + 164) > 1 || *(v164 + 168) > 1 || *(v164 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1ED71C800 != -1)
            {
              dispatch_once(&qword_1ED71C800, &unk_1F0E294C0);
            }

            LOWORD(v194) = 0;
            v165 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusionMekf::feedAccelerometerData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v165);
            if (v165 != buf)
            {
              free(v165);
            }
          }
        }

        v64 = sqrt(v60 * v60 + v59 * v59 + v61 * v61);
        v65 = fabs(v64 + -1.0) / v64;
      }
    }

LABEL_45:
    *(a1 + 600) = 0;
    if (*(a1 + 196) == 1)
    {
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E294C0);
      }

      v66 = off_1ED71C808;
      if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218752;
        *&buf[4] = v59;
        *&buf[12] = 2048;
        *&buf[14] = v60;
        *&buf[22] = 2048;
        v185 = v61;
        v186 = 2048;
        v187 = v64;
        _os_log_impl(&dword_19B41C000, v66, OS_LOG_TYPE_DEBUG, "accM, (%.4f, %.4f, %.4f), mag, %.3f", buf, 0x2Au);
      }

      v67 = sub_19B420058();
      if (*(v67 + 160) > 1 || *(v67 + 164) > 1 || *(v67 + 168) > 1 || *(v67 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E294C0);
        }

        *v174 = 134218752;
        *&v174[4] = v59;
        *&v174[12] = 2048;
        *&v174[14] = v60;
        *&v174[22] = 2048;
        v175 = v61;
        v176 = 2048;
        v177 = v64;
        v68 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusionMekf::feedAccelerometerData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v68);
        if (v68 != buf)
        {
          free(v68);
        }
      }
    }

    v69 = v65 * (0.015 / (exp((0.9 - sqrtf((((v170 / v63) * (v170 / v63)) + ((v171 / v63) * (v171 / v63))) + ((v62 / v63) * (v62 / v63)))) / 0.08) + 1.0)) + 0.00000900000032;
    if (*(a1 + 224) == 1 && !*(a1 + 616))
    {
      v69 = v69 * 0.85;
    }

    v70 = 0;
    v71 = 0;
    v72 = v60 / v64;
    v73 = *(a1 + 16);
    v74 = *(a1 + 24);
    v75 = *(a1 + 32) + *(a1 + 32);
    v76 = *(a1 + 40);
    v77 = v76 * (v74 + v74) - v73 * v75;
    v78 = -(v76 * (v73 + v73)) - v74 * v75;
    v79 = v73 * (v73 + v73) + -1.0 + v74 * (v74 + v74);
    *&v73 = v78;
    *&v75 = v79;
    LODWORD(v200) = 0;
    HIDWORD(v200) = LODWORD(v75);
    *&v201 = -*&v73;
    *&v74 = v77;
    *(&v201 + 1) = -*&v75;
    LODWORD(v202) = 0;
    HIDWORD(v202) = LODWORD(v74);
    LODWORD(v203) = LODWORD(v73);
    *(&v203 + 1) = -*&v74;
    v204 = 0;
    do
    {
      v80 = v70;
      v81 = 3;
      do
      {
        *&buf[v80] = *(&v200 + v80);
        v80 += 12;
        --v81;
      }

      while (v81);
      ++v71;
      v70 += 4;
    }

    while (v71 != 3);
    bzero(&v187 + 2, 0x24uLL);
    v82 = v69;
    *v199 = v82;
    *&v199[1] = v82;
    *&v199[2] = v82;
    v83 = v59 / v64 - v77;
    v84 = v72 - v78;
    *v198 = v83;
    *&v198[1] = v84;
    v85 = v61 / v64 - v79;
    *&v198[2] = v85;
    sub_19B66EDDC(v174, (a1 + 112), buf, v199, v198, 6, 3, &v194);
    v86 = v78 * *&v174[8] + *v174 * v77 + *&v174[16] * v79;
    *v174 = *v174 - v86 * v77;
    *&v174[8] = *&v174[8] - v86 * v78;
    *&v174[16] = *&v174[16] - v86 * v79;
    sub_19B44793C(v173, v174);
    sub_19B447A1C(v172, v173, (a1 + 16));
    v87 = 0;
    v88 = v172[1];
    *(a1 + 16) = v172[0];
    *(a1 + 32) = v88;
    do
    {
      *(a1 + 88 + v87) = *&v174[v87 + 24] + *(a1 + 88 + v87);
      v87 += 8;
    }

    while (v87 != 24);
    if (*(a1 + 224) == 1)
    {
      sub_19B4425C0((a1 + 576), (a1 + 16));
    }

    *(a1 + 608) = *a5;
    v89 = *(a1 + 616);
    v90 = __OFSUB__(v89, 1);
    v91 = v89 - 1;
    if (v91 < 0 == v90)
    {
      *(a1 + 616) = v91;
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E294C0);
      }

      v92 = off_1ED71C808;
      if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v92, OS_LOG_TYPE_DEBUG, "Doing some crude updates to catch up.", buf, 2u);
      }

      v93 = sub_19B420058();
      if (*(v93 + 160) > 1 || *(v93 + 164) > 1 || *(v93 + 168) > 1 || *(v93 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E294C0);
        }

        *v174 = 0;
        v94 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusionMekf::feedAccelerometerData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v94);
        if (v94 != buf)
        {
          free(v94);
        }
      }
    }

    if (*(a1 + 196) == 1)
    {
      if (qword_1EAFE2890 != -1)
      {
        dispatch_once(&qword_1EAFE2890, &unk_1F0E28080);
      }

      v95 = qword_1EAFE2898;
      if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_DEBUG))
      {
        v96 = *(a1 + 64);
        v97 = *(a1 + 72);
        v98 = *(a1 + 80);
        v99 = *(a1 + 88);
        v100 = *(a1 + 96);
        v101 = *(a1 + 104);
        v102 = *a5;
        *buf = 134219520;
        *&buf[4] = v96;
        *&buf[12] = 2048;
        *&buf[14] = v97;
        *&buf[22] = 2048;
        v185 = v98;
        v186 = 2048;
        v187 = v99;
        v188 = 2048;
        v189 = v100;
        v190 = 2048;
        v191 = v101;
        v192 = 2048;
        v193 = v102;
        _os_log_impl(&dword_19B41C000, v95, OS_LOG_TYPE_DEBUG, "[KalmanFilterStates] %f,%f,%f,%f,%f,%f,%f", buf, 0x48u);
      }

      v103 = sub_19B420058();
      if (*(v103 + 160) > 1 || *(v103 + 164) > 1 || *(v103 + 168) > 1 || *(v103 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2890 != -1)
        {
          dispatch_once(&qword_1EAFE2890, &unk_1F0E28080);
        }

        v104 = *(a1 + 64);
        v105 = *(a1 + 72);
        v106 = *(a1 + 80);
        v107 = *(a1 + 88);
        v108 = *(a1 + 96);
        v109 = *(a1 + 104);
        v110 = *a5;
        *v174 = 134219520;
        *&v174[4] = v104;
        *&v174[12] = 2048;
        *&v174[14] = v105;
        *&v174[22] = 2048;
        v175 = v106;
        v176 = 2048;
        v177 = v107;
        v178 = 2048;
        v179 = v108;
        v180 = 2048;
        v181 = v109;
        v182 = 2048;
        v183 = v110;
        v111 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusionMekf::feedAccelerometerData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v111);
LABEL_94:
        if (v111 != buf)
        {
          free(v111);
        }

        goto LABEL_174;
      }
    }

    goto LABEL_174;
  }

  if (*(a1 + 196) == 1)
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E294C0);
    }

    v160 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v160, OS_LOG_TYPE_DEBUG, "Taking another look.", buf, 2u);
    }

    v161 = sub_19B420058();
    if (*(v161 + 160) > 1 || *(v161 + 164) > 1 || *(v161 + 168) > 1 || *(v161 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E294C0);
      }

      *v174 = 0;
      v111 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLSensorFusionMekf::feedAccelerometerData(const double &, const double &, const double &, const CFTimeInterval &)", "CoreLocation: %s\n", v111);
      goto LABEL_94;
    }
  }

LABEL_174:
  v147 = *MEMORY[0x1E69E9840];
}

double sub_19B4425C0(double *a1, double *a2)
{
  *a1 = a2[3] * (a2[1] + a2[1]) - *a2 * (a2[2] + a2[2]);
  a1[1] = -(a2[3] * (*a2 + *a2)) - a2[1] * (a2[2] + a2[2]);
  result = *a2 * (*a2 + *a2) + -1.0 + a2[1] * (a2[1] + a2[1]);
  a1[2] = result;
  return result;
}

uint64_t sub_19B442618(uint64_t result, double *a2, double *a3, double *a4)
{
  v4 = sqrt(*a3 * *a3 + *a2 * *a2 + *a4 * *a4);
  v5 = -*a3 / v4;
  *result = v5;
  v6 = *a2 / v4;
  *(result + 8) = v6;
  *(result + 16) = 0;
  v7 = sqrt((1.0 - *a4 / v4) * 0.5);
  *(result + 24) = v7;
  v8 = v6 * v6 + v5 * v5;
  if (v8 <= 0.000001)
  {
    if (*a4 <= 0.0)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 0x3FF0000000000000;
    }

    else
    {
      *result = 0x3FF0000000000000;
      *(result + 16) = 0;
      *(result + 24) = 0;
      *(result + 8) = 0;
    }
  }

  else
  {
    v9 = sqrt((1.0 - v7 * v7) / v8);
    *result = v5 * v9;
    *(result + 8) = vmulq_n_f64(*&v6, v9);
  }

  return result;
}

uint64_t sub_19B4426E4()
{
  if (qword_1ED71C9D8 != -1)
  {
    dispatch_once(&qword_1ED71C9D8, &unk_1F0E3A480);
  }

  return byte_1ED71C970;
}

double sub_19B44272C(uint64_t a1, int a2, double *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  if (a2 == 1)
  {
    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E27B60);
    }

    v15 = qword_1ED71C818;
    if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_INFO))
    {
      v16 = *a3;
      *buf = 134349056;
      v28 = v16;
      _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_INFO, "Setting gyro temperature update interval to %{public}f", buf, 0xCu);
    }

    v17 = sub_19B420058();
    if (*(v17 + 160) > 1 || *(v17 + 164) > 1 || *(v17 + 168) > 1 || *(v17 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C810 != -1)
      {
        dispatch_once(&qword_1ED71C810, &unk_1F0E27B60);
      }

      v18 = *a3;
      *v34 = 134349056;
      *&v34[4] = v18;
      v19 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual CFTimeInterval CLGyro::minimumUpdateIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v19);
      if (v19 != buf)
      {
        free(v19);
      }
    }

    v20 = *a3;
    if (*a3 < 1.0 && v20 != 0.0)
    {
      v20 = 1.0;
    }

    *(a1 + 72) = v20;
    sub_19B42A614(a1, *(a1 + 32));
    v6 = *(a1 + 72);
  }

  else if (a2)
  {
    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E27B60);
    }

    v22 = qword_1ED71C818;
    if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_FAULT))
    {
      *buf = 67240192;
      LODWORD(v28) = a2;
      _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_FAULT, "Unrecognized gyro notification %{public}d", buf, 8u);
    }

    v23 = sub_19B420058();
    if ((*(v23 + 160) & 0x80000000) == 0 || (*(v23 + 164) & 0x80000000) == 0 || (*(v23 + 168) & 0x80000000) == 0 || (v6 = 0.0, *(v23 + 152)))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C810 != -1)
      {
        dispatch_once(&qword_1ED71C810, &unk_1F0E27B60);
      }

      *v34 = 67240192;
      *&v34[4] = a2;
      v24 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual CFTimeInterval CLGyro::minimumUpdateIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v24);
      if (v24 != buf)
      {
        free(v24);
      }

      v6 = 0.0;
    }
  }

  else
  {
    *(a1 + 64) = *a3;
    sub_19B42A614(a1, *(a1 + 32));
    v6 = sub_19B43D788(a1, (a1 + 64));
    if (*(a1 + 96) == 1)
    {
      *v34 = &unk_1F0E311F0;
      *&v34[8] = CFAbsoluteTimeGetCurrent();
      v7 = v6;
      *&v34[20] = v7;
      v8 = sub_19B720E40();
      sub_19B7223F8(v8, v34);
      sub_19B517F80(buf);
      sub_19B5325B8(buf);
      v33 |= 1u;
      v31 = *&v34[8];
      v9 = v32;
      *(v32 + 12) |= 1u;
      *(v9 + 8) = v7;
      sub_19B51DBD4(buf);
    }

    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E27B60);
    }

    v10 = qword_1ED71C818;
    if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_INFO))
    {
      v11 = *a3;
      *buf = 134349312;
      v28 = v11;
      v29 = 2050;
      v30 = v6;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_INFO, "Set gyro data update interval to %{public}f,dt,%{public}f", buf, 0x16u);
    }

    v12 = sub_19B420058();
    if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C810 != -1)
      {
        dispatch_once(&qword_1ED71C810, &unk_1F0E27B60);
      }

      v13 = *a3;
      *v34 = 134349312;
      *&v34[4] = v13;
      *&v34[12] = 2050;
      *&v34[14] = v6;
      v14 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual CFTimeInterval CLGyro::minimumUpdateIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }

  v25 = *MEMORY[0x1E69E9840];
  return v6;
}

void sub_19B442CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B51DBD4(va);
  _Unwind_Resume(a1);
}

void sub_19B442D08()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    if (CFEqual(v0, @"iPad"))
    {
      byte_1ED71C970 = 1;
    }

    CFRelease(v1);
  }
}

uint64_t sub_19B442D78(uint64_t result)
{
  if (!*(result + 16))
  {
    operator new();
  }

  return result;
}

uint64_t sub_19B442E70()
{
  if (qword_1ED71C930 != -1)
  {
    dispatch_once(&qword_1ED71C930, &unk_1F0E29060);
  }

  return qword_1ED71C8D8;
}

void sub_19B442EB8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = sub_19B420D84();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B442FA4;
  v9[3] = &unk_1E7532EB0;
  v9[4] = a1;
  v9[5] = a2;
  v10 = a3;
  v9[6] = a4;
  sub_19B420C9C(v8, v9);
}

void sub_19B442F50(uint64_t a1)
{
  if ((*(a1 + 25) & 1) == 0)
  {
    v2 = sub_19B442E70();
    sub_19B442EB8(v2, sub_19B4452F8, *(a1 + 24), a1);
    *(a1 + 25) = 1;
  }
}

void sub_19B442FD8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = _os_activity_create(&dword_19B41C000, "CL: CLGyroBiasEstimatorClientRemote::registerWithGyroBiasEstimatorPrivate", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E288A0);
  }

  v9 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68290050;
    v16 = 0;
    v17 = 2082;
    v18 = "";
    v19 = 2082;
    v20 = "activity";
    v21 = 1026;
    v22 = a3;
    v23 = 2050;
    v24 = a1;
    v25 = 2050;
    v26 = a4;
    _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLGyroBiasEstimatorClientRemote::registerWithGyroBiasEstimatorPrivate, event:%{public, location:escape_only}s, isBuildingGYTT:%{public}hhd, client:%{public}p, info:%{public}p}", buf, 0x36u);
  }

  v10 = *(a1 + 16);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_19B443654;
  v12[3] = &unk_1E7532EB0;
  v12[4] = a1;
  v12[5] = a2;
  v12[6] = a4;
  v13 = a3;
  dispatch_async(v10, v12);
  os_activity_scope_leave(&state);
  v11 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B4431A8(uint64_t result)
{
  if (!*(result + 8))
  {
    operator new();
  }

  return result;
}

void sub_19B4432A0(void *a1, uint64_t a2)
{
  a1[1] = a2;
  v3 = a1[4];
  v4 = a1[5];
  a1[8] = 0;
  v5 = (v4 - v3) >> 3;
  if (v5 >= 3)
  {
    do
    {
      operator delete(*v3);
      v6 = a1[5];
      v3 = (a1[4] + 8);
      a1[4] = v3;
      v5 = (v6 - v3) >> 3;
    }

    while (v5 > 2);
  }

  if (v5 == 1)
  {
    v7 = 512;
    goto LABEL_7;
  }

  if (v5 == 2)
  {
    v7 = 1024;
LABEL_7:
    a1[7] = v7;
  }

  a1[2] = 0;
}

uint64_t sub_19B443324(uint64_t a1, const char *a2, _DWORD *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v6 = sub_19B443398(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

uint64_t sub_19B443398(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  cf = 0;
  if ((*(*a1 + 904))(a1, a2, &cf))
  {
    *buf = 0;
    v6 = sub_19B5EDA58(cf, buf);
    if (v6)
    {
      *a3 = *buf;
    }

    else
    {
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v7 = off_1ED71C828;
      if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
      {
        v8 = (*(*a1 + 840))(a1);
        *buf = 138412546;
        *&buf[4] = v8;
        v20 = 2112;
        v21 = a2;
        _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
      }

      v9 = sub_19B420058();
      if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C820 != -1)
        {
          dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
        }

        v10 = (*(*a1 + 840))(a1);
        v15 = 138412546;
        v16 = v10;
        v17 = 2112;
        v18 = a2;
        v11 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, uint32_t &, int) const", "CoreLocation: %s\n", v11);
        if (v11 != buf)
        {
          free(v11);
        }
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v6 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v6;
}

void sub_19B443654(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  operator new();
}

void sub_19B443854(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, std::__shared_weak_count *a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a20)
  {
    sub_19B41FFEC(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B4438CC(void *a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current != *qword_1ED71C908)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v26 = off_1ED71C838;
    p_vtable = "assert";
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *v33 = 0;
      *&v33[4] = 2082;
      *&v33[6] = "";
      *&v33[14] = 2082;
      *&v33[16] = "assert";
      v34 = 2081;
      v35 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CLIoHidInterface] setMatchingProperties should be called from motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    v27 = off_1ED71C838;
    if (os_signpost_enabled(off_1ED71C838))
    {
      *buf = 68289539;
      *v33 = 0;
      *&v33[4] = 2082;
      *&v33[6] = "";
      *&v33[14] = 2082;
      *&v33[16] = "assert";
      v34 = 2081;
      v35 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v27, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CLIoHidInterface] setMatchingProperties should be called from motion thread", "{msg%{public}.0s:[CLIoHidInterface] setMatchingProperties should be called from motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }
    }

    a1 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *v33 = 0;
      *&v33[4] = 2082;
      *&v33[6] = "";
      *&v33[14] = 2082;
      *&v33[16] = "assert";
      v34 = 2081;
      v35 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, a1, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CLIoHidInterface] setMatchingProperties should be called from motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
    goto LABEL_68;
  }

  if (objc_msgSend_isEqualToDictionary_(a2, v5, *(a1 + 20)))
  {
    p_vtable = CMDeviceOrientationManager.vtable;
    if (qword_1ED71C830 == -1)
    {
LABEL_4:
      v7 = off_1ED71C838;
      if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 20);
        *buf = 138477827;
        *v33 = v8;
        _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEFAULT, "[CLIoHidInterface] setMatchingProperties - Early return for identical properties %{private}@", buf, 0xCu);
      }

      v9 = sub_19B420058();
      if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (p_vtable[262] != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
        }

        v28 = *(a1 + 20);
        v10 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CLIoHidInterface::Device::setMatchingProperties(NSDictionary<NSString *,id> *)", "CoreLocation: %s\n", v10);
        if (v10 != buf)
        {
          free(v10);
        }
      }

      goto LABEL_54;
    }

LABEL_68:
    dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    goto LABEL_4;
  }

  v11 = a2;

  *(a1 + 20) = a2;
  v12 = *(a1 + 3);
  if (v12 && (sub_19B42EF5C(v12, a2) & 1) == 0)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
    }

    v13 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 3);
      v15 = *(a1 + 20);
      *buf = 134283779;
      *v33 = v14;
      *&v33[8] = 2114;
      *&v33[10] = v15;
      _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_DEFAULT, "[CLIoHidInterface] setMatchingProperties - Previously matched service ref %{private}p does not match new properties %{public}@. Clearing and refreshing.", buf, 0x16u);
    }

    v16 = sub_19B420058();
    if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }

      v29 = *(a1 + 3);
      v31 = *(a1 + 20);
      v17 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLIoHidInterface::Device::setMatchingProperties(NSDictionary<NSString *,id> *)", "CoreLocation: %s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    if ((sub_19B4217E0(*(a1 + 3), @"ReportInterval", &unk_1F0E6A6C0) & 1) == 0)
    {
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }

      v18 = off_1ED71C838;
      if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_ERROR, "[CLIoHidInterface] setMatchingProperties - Failed to stop streaming from the old service", buf, 2u);
      }

      v19 = sub_19B420058();
      if ((*(v19 + 160) & 0x80000000) == 0 || (*(v19 + 164) & 0x80000000) == 0 || (*(v19 + 168) & 0x80000000) == 0 || *(v19 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
        }

        v20 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "void CLIoHidInterface::Device::setMatchingProperties(NSDictionary<NSString *,id> *)", "CoreLocation: %s\n", v20);
        if (v20 != buf)
        {
          free(v20);
        }
      }
    }

    (*(*a1 + 48))(a1);
    sub_19B42E770(*(a1 + 5), 0);
    if (*(a1 + 3))
    {
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
      }

      v21 = off_1ED71C838;
      if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(a1 + 3);
        *buf = 134283521;
        *v33 = v22;
        _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_DEFAULT, "[CLIoHidInterface] setMatchingProperties - successfully switch to new service %{private}p", buf, 0xCu);
      }

      v23 = sub_19B420058();
      if (*(v23 + 160) > 1 || *(v23 + 164) > 1 || *(v23 + 168) > 1 || *(v23 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E3B7A0);
        }

        v30 = *(a1 + 3);
        v24 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CLIoHidInterface::Device::setMatchingProperties(NSDictionary<NSString *,id> *)", "CoreLocation: %s\n", v24);
        if (v24 != buf)
        {
          free(v24);
        }
      }

      sub_19B421D14(*(a1 + 5));
    }
  }

LABEL_54:
  v25 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B444174(uint64_t a1, char *a2, void *a3)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B4441CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B4441E8(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  Current = CFRunLoopGetCurrent();
  sub_19B420D84();
  if (Current != *qword_1ED71C908)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E2A580);
    }

    v10 = off_1ED71C838;
    p_vtable = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[FastPathDevice] closeFastPathPrivate() should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E2A580);
      }
    }

    v11 = off_1ED71C838;
    if (os_signpost_enabled(off_1ED71C838))
    {
      *buf = 68289539;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[FastPathDevice] closeFastPathPrivate() should be running on motion thread", "{msg%{public}.0s:[FastPathDevice] closeFastPathPrivate() should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E2A580);
      }
    }

    v12 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "CFRunLoopGetCurrent() == CLMotionCore::instance()->getMotionRunLoop()";
      _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[FastPathDevice] closeFastPathPrivate() should be running on motion thread, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
    goto LABEL_31;
  }

  if (*(a1 + 180) != 1)
  {
LABEL_17:
    v9 = *MEMORY[0x1E69E9840];
    return;
  }

  if (!*(a1 + 24))
  {
    p_vtable = CMDeviceOrientationManager.vtable;
    if (qword_1ED71C830 == -1)
    {
LABEL_8:
      v6 = off_1ED71C838;
      if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_ERROR, "[FastPath] Failed to close because of null service ref", buf, 2u);
      }

      v7 = sub_19B420058();
      if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (p_vtable[262] != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E2A580);
        }

        v8 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "void FastPathDevice::closeFastPathPrivate()", "CoreLocation: %s\n", v8);
        if (v8 != buf)
        {
          free(v8);
        }
      }

      goto LABEL_17;
    }

LABEL_31:
    dispatch_once(&qword_1ED71C830, &unk_1F0E2A580);
    goto LABEL_8;
  }

  os_unfair_lock_lock((a1 + 176));
  v3 = *(a1 + 24);
  IOHIDServiceClientFastPathInvalidate();
  *(a1 + 180) = 0;
  v4 = *MEMORY[0x1E69E9840];

  os_unfair_lock_unlock((a1 + 176));
}

void *sub_19B44461C(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B444174((a1 + 3), a2, a3);
  return a1;
}

void sub_19B4446EC(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = *(a2 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  Dictionary = CLConnectionMessage::getDictionary(v3);
  sub_19B444AA4(v17, Dictionary);
  if ((*(v17[0] + 856))(v17) <= 0)
  {
    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E28540);
    }

    v8 = qword_1ED71C818;
    if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "Could not get dictionary for message", buf, 2u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C810 != -1)
      {
        dispatch_once(&qword_1ED71C810, &unk_1F0E28540);
      }

      LOWORD(v14[0]) = 0;
      v10 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CLGyroBiasEstimatorClientRemote::onGyroBiasEstimation(std::shared_ptr<CLConnectionMessage>, CLGyroBiasEstimatorClientCallback, void *)", "CoreLocation: %s\n", v10);
      goto LABEL_26;
    }
  }

  else
  {
    if (sub_19B444D44(v14, &v15, &v16, v17))
    {
      v6(v14, v5);
      goto LABEL_28;
    }

    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E28540);
    }

    v11 = qword_1ED71C818;
    if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_FAULT, "Message does not contain a valid gyro bias object", buf, 2u);
    }

    v12 = sub_19B420058();
    if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C810 != -1)
      {
        dispatch_once(&qword_1ED71C810, &unk_1F0E28540);
      }

      v10 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CLGyroBiasEstimatorClientRemote::onGyroBiasEstimation(std::shared_ptr<CLConnectionMessage>, CLGyroBiasEstimatorClientCallback, void *)", "CoreLocation: %s\n", v10);
LABEL_26:
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

LABEL_28:
  sub_19B445384(v17);
  if (v4)
  {
    sub_19B41FFEC(v4);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_19B444A70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_19B445384(va);
  if (v9)
  {
    sub_19B41FFEC(v9);
  }

  _Unwind_Resume(a1);
}

void *sub_19B444AA4(void *a1, CFDictionaryRef theDict)
{
  v11 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F0E334A8;
  a1[1] = 0;
  v3 = *MEMORY[0x1E695E480];
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(v3, 0, theDict);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  a1[1] = MutableCopy;
  if (!MutableCopy)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v5 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_FAULT, "could not create new mutable dictionary", buf, 2u);
    }

    v6 = sub_19B420058();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
      }

      v7 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "CLNameValuePair::CLNameValuePair(CFDictionaryRef)", "CoreLocation: %s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return a1;
}

uint64_t sub_19B444CC8()
{
  result = sub_19B42AD98();
  if (result)
  {
    operator new();
  }

  return result;
}

uint64_t sub_19B444D44(float *a1, float *a2, BOOL *a3, uint64_t a4)
{
  if (!sub_19B444E58(a4, "kCLBiasXKey", a1) || !sub_19B444E58(a4, "kCLBiasYKey", a1 + 1) || !sub_19B444E58(a4, "kCLBiasZKey", a1 + 2) || !sub_19B444E58(a4, "kCLVarianceXKey", a2) || !sub_19B444E58(a4, "kCLVarianceYKey", a2 + 1) || !sub_19B444E58(a4, "kCLVarianceZKey", a2 + 2))
  {
    return 0;
  }

  return sub_19B438CCC(a4, "KCLDoingBiasEstimationKey", a3);
}

uint64_t sub_19B444E58(uint64_t a1, const char *a2, float *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v9 = 0.0;
  v6 = sub_19B43D4DC(a1, v5, &v9);
  if (v6)
  {
    v7 = v9;
    *a3 = v7;
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

uint64_t sub_19B444EE4(const void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = CFGetTypeID(a1);
  if (v4 != CFNumberGetTypeID())
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v6 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134349312;
      v13 = CFGetTypeID(a1);
      v14 = 2050;
      TypeID = CFNumberGetTypeID();
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "type IDs do not match - %{public}lu vs %{public}lu", buf, 0x16u);
    }

    v7 = sub_19B420058();
    if ((*(v7 + 160) & 0x80000000) != 0 && (*(v7 + 164) & 0x80000000) != 0 && (*(v7 + 168) & 0x80000000) != 0 && !*(v7 + 152))
    {
      goto LABEL_26;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    CFGetTypeID(a1);
    CFNumberGetTypeID();
    v8 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "static BOOL CLNameValuePair::fromCfType(const CFTypeRef, double &)", "CoreLocation: %s\n", v8);
    if (v8 == buf)
    {
      goto LABEL_26;
    }

LABEL_25:
    free(v8);
LABEL_26:
    result = 0;
    goto LABEL_27;
  }

  if (!CFNumberGetValue(a1, kCFNumberFloat64Type, a2))
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v9 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_FAULT, "could not get value", buf, 2u);
    }

    v10 = sub_19B420058();
    if ((*(v10 + 160) & 0x80000000) != 0 && (*(v10 + 164) & 0x80000000) != 0 && (*(v10 + 168) & 0x80000000) != 0 && !*(v10 + 152))
    {
      goto LABEL_26;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28F60);
    }

    v8 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "static BOOL CLNameValuePair::fromCfType(const CFTypeRef, double &)", "CoreLocation: %s\n", v8);
    if (v8 == buf)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  result = 1;
LABEL_27:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B44525C(const void *a1, BOOL *a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 != CFBooleanGetTypeID() && v4 != CFNumberGetTypeID())
  {
    return 0;
  }

  *a2 = CFBooleanGetValue(a1) != 0;
  return 1;
}

os_log_t sub_19B4452C8()
{
  result = os_log_create("com.apple.locationd.Core", "Client");
  qword_1ED71C7E0 = result;
  return result;
}

void sub_19B4452F8(_OWORD *a1, uint64_t a2)
{
  v5[0] = *a1;
  *(v5 + 12) = *(a1 + 12);
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B445C68;
  v4[3] = &unk_1E7532CC8;
  v4[4] = a2;
  sub_19B421668(v3, v4);
}

void *sub_19B445384(void *a1)
{
  *a1 = &unk_1F0E334A8;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_19B4453D4(uint64_t result, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  *(result + 48) = *a2;
  v2 = (result + 48);
  if (*(result + 72))
  {
    v3 = result;
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E2A420);
    }

    v4 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_INFO))
    {
      v5 = *v2;
      *buf = 134349056;
      v11 = v5;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "Set device motion sensor status %{public}ld", buf, 0xCu);
    }

    v6 = sub_19B420058();
    if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E2A420);
      }

      v9 = *v2;
      v7 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLSensorFusionService::updateSensorStatus(const SensorStatus &)", "CoreLocation: %s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }

    result = (*(v3 + 72))(v2, *(v3 + 80));
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B4455DC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  v8 = *(result + 16);
  v9 = a2;
  v10 = v8 + 80 * a2;
  v11 = *(v10 + 32);
  if (v11 != (v10 + 40))
  {
    do
    {
      result = (*(*v11[4] + 16))(v11[4], a2, a3, a4);
      *(v11 + 10) = (*(v11 + 10) + 1) % *(v11 + 11);
      v12 = v11[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v11[2];
          v14 = *v13 == v11;
          v11 = v13;
        }

        while (!v14);
      }

      v8 = *(v7 + 16);
      v11 = v13;
    }

    while (v13 != (v8 + 80 * v9 + 40));
  }

  v15 = v8 + 80 * v9;
  v16 = *(v15 + 64);
  if (v16 != v15 + 56)
  {
    do
    {
      result = (*(**(v16 + 16) + 16))(*(v16 + 16), a2, a3, a4);
      v16 = *(v16 + 8);
    }

    while (v16 != *(v7 + 16) + 80 * v9 + 56);
  }

  return result;
}

os_log_t sub_19B445744()
{
  result = os_log_create("com.apple.locationd.Motion", "Accel");
  qword_1ED71C7E8 = result;
  return result;
}

os_log_t sub_19B445774()
{
  result = os_log_create("com.apple.locationd.Motion", "Accel");
  qword_1ED71C7E8 = result;
  return result;
}

os_log_t sub_19B4457A4()
{
  result = os_log_create("com.apple.locationd.Motion", "Accel");
  qword_1ED71C7E8 = result;
  return result;
}

uint64_t *sub_19B4457D4(uint64_t *result, uint64_t a2)
{
  v2 = *(a2 + 592);
  if (v2)
  {
    v3 = *result;
    return v2(0, &v3, *(a2 + 600));
  }

  return result;
}

void sub_19B445814(uint64_t a1)
{
  v2 = sub_19B420D84();
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_19B445890;
  v3[3] = &unk_1E75327D8;
  v3[4] = a1;
  sub_19B420C9C(v2, v3);
}

void sub_19B4458B8(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = _os_activity_create(&dword_19B41C000, "CL: CLGyroBiasEstimatorClientRemote::unregisterWithGyroBiasEstimatorPrivate", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v2, &state);

  if (qword_1ED71C7D0 != -1)
  {
    dispatch_once(&qword_1ED71C7D0, &unk_1F0E288A0);
  }

  v3 = qword_1ED71C7E0;
  if (os_log_type_enabled(qword_1ED71C7E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289538;
    v9 = 0;
    v10 = 2082;
    v11 = "";
    v12 = 2082;
    v13 = "activity";
    v14 = 2050;
    v15 = a1;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLGyroBiasEstimatorClientRemote::unregisterWithGyroBiasEstimatorPrivate, event:%{public, location:escape_only}s, client:%{public}p}", buf, 0x26u);
  }

  v4 = *(a1 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B445A50;
  block[3] = &unk_1E75327D8;
  block[4] = a1;
  dispatch_async(v4, block);
  os_activity_scope_leave(&state);
  v5 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B445A50(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = *(v1 + 8);
  if (result)
  {
    v3 = MEMORY[0x19EAE71C0]();
    result = MEMORY[0x19EAE76F0](v3, 0xB0C40BC2CC919);
    *(v1 + 8) = 0;
  }

  return result;
}

void sub_19B445A94(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B445ACC(void *a1, uint64_t a2)
{
  v4 = a1[4];
  if (v4)
  {
    (*(*v4 + 40))(v4, a2);
  }

  v5 = a1[7];
  if (v5)
  {
    (*(*v5 + 40))(v5, a2);
  }

  v6 = a1[8];
  if (v6)
  {
    (*(*v6 + 40))(v6, a2);
  }

  v7 = a1[6];
  if (v7)
  {
    (*(*v7 + 40))(v7, a2);
  }

  v8 = a1[9];
  if (v8)
  {
    (*(*v8 + 40))(v8, a2);
  }

  v9 = a1[5];
  if (v9)
  {
    (*(*v9 + 40))(v9, a2);
  }

  result = a1[10];
  if (result)
  {
    v11 = *(*result + 40);

    return v11();
  }

  return result;
}

void sub_19B445C68(uint64_t a1)
{
  v64 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  *(v2 + 40) = *(a1 + 52);
  *(v2 + 28) = v3;
  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E28E40);
  }

  v4 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 44);
    v7 = *(a1 + 48);
    v8 = *(a1 + 52);
    v9 = *(a1 + 56);
    v10 = *(a1 + 60);
    v11 = *(a1 + 64);
    *buf = 136316930;
    v38 = "GyroBias";
    v39 = 2048;
    v40 = v5;
    v41 = 2048;
    v42 = v6;
    v43 = 2048;
    v44 = v7;
    v45 = 2048;
    v46 = v8;
    v47 = 2048;
    v48 = v9;
    v49 = 2048;
    v50 = v10;
    v51 = 1024;
    v52 = v11;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEBUG, "Type,%s,bias.x,%20.20f,bias.y,%20.20f,bias.z,%20.20f,variance.x,%20.20f,variance.y,%20.20f,variance.z,%20.20f,doingBiasEstimation,%d", buf, 0x4Eu);
  }

  v12 = sub_19B420058();
  if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E28E40);
    }

    v13 = *(a1 + 40);
    v14 = *(a1 + 44);
    v15 = *(a1 + 48);
    v16 = *(a1 + 52);
    v17 = *(a1 + 56);
    v18 = *(a1 + 60);
    v19 = *(a1 + 64);
    *v56 = 136316930;
    *&v56[4] = "GyroBias";
    *&v56[12] = 2048;
    *&v56[14] = v13;
    *&v56[22] = 2048;
    *&v56[24] = v14;
    *&v56[32] = 2048;
    *&v56[34] = v15;
    *&v56[42] = 2048;
    v57 = v16;
    v58 = 2048;
    v59 = v17;
    v60 = 2048;
    v61 = v18;
    v62 = 1024;
    v63 = v19;
    v20 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLSensorFusionServiceAP::onBiasAndVariance(const CLMotionTypeGyroBiasAndVariance)_block_invoke", "CoreLocation: %s\n", v20);
    if (v20 != buf)
    {
      free(v20);
    }
  }

  if (*(v2 + 73) == 1)
  {
    *v56 = &unk_1F0E312B0;
    *&v56[8] = CFAbsoluteTimeGetCurrent();
    *&v56[20] = *(a1 + 40);
    *&v56[36] = *(a1 + 56);
    LOBYTE(v57) = *(a1 + 64);
    v21 = sub_19B720E40();
    sub_19B7223F8(v21, v56);
    sub_19B517F80(buf);
    sub_19B532528(buf);
    v55 |= 1u;
    v53 = *&v56[8];
    v22 = v54;
    v23 = *(a1 + 40);
    *(v54 + 36) |= 1u;
    *(v22 + 8) = v23;
    v24 = v54;
    v25 = *(a1 + 44);
    *(v54 + 36) |= 2u;
    *(v24 + 12) = v25;
    v26 = v54;
    v27 = *(a1 + 48);
    *(v54 + 36) |= 4u;
    *(v26 + 16) = v27;
    v28 = v54;
    v29 = *(a1 + 52);
    *(v54 + 36) |= 0x10u;
    *(v28 + 24) = v29;
    v30 = v54;
    v31 = *(a1 + 56);
    *(v54 + 36) |= 0x20u;
    *(v30 + 28) = v31;
    v32 = v54;
    v33 = *(a1 + 60);
    *(v54 + 36) |= 0x40u;
    *(v32 + 32) = v33;
    v34 = v54;
    v35 = *(a1 + 64);
    *(v54 + 36) |= 8u;
    *(v34 + 20) = v35;
    sub_19B51DBD4(buf);
  }

  if (*(v2 + 25) == 1)
  {
    (*(*v2 + 24))(v2, a1 + 40, a1 + 52);
  }

  v36 = *MEMORY[0x1E69E9840];
}