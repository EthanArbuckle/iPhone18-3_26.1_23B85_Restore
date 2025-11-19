void sub_1860FDB88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t *a24)
{
  a24 = &a9;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&a24);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

void XMPMeta::DeleteLocalizedText(XMPMeta *this, char *a2, char *a3, char *__s, char *a5)
{
  if (!a2 || !a3 || !__s || !a5)
  {
LABEL_122:
    XMPMeta::DeleteLocalizedText();
  }

  v73[0] = 0;
  v73[1] = 0;
  v74 = 0;
  std::string::basic_string[abi:fe200100]<0>(v73, __s);
  __p[0] = 0;
  __p[1] = 0;
  v72 = 0;
  std::string::basic_string[abi:fe200100]<0>(__p, a5);
  NormalizeLangValue(v73);
  v9 = __p;
  NormalizeLangValue(__p);
  if (v74 >= 0)
  {
    v10 = v73;
  }

  else
  {
    v10 = v73[0];
  }

  if (v72 < 0)
  {
    v9 = __p[0];
  }

  memset(v70, 0, sizeof(v70));
  ExpandXPath(a2, a3, v70);
  Node = FindNode(this + 224, v70, 0, 0, 0);
  v12 = Node;
  if (Node)
  {
    v14 = *(Node + 9);
    v13 = *(Node + 10);
    v75 = 0;
    if (ChooseLocalizedText(Node, v10, v9, &v75) == 1)
    {
      if (v13 == v14)
      {
LABEL_19:
        exception = __cxa_allocate_exception(0x18uLL);
        *exception = 7;
        exception[1] = "XMP_Enforce failed: (itemIndex < arraySize) in /Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCore/source/XMPMeta-GetSet.cpp at line 1068";
        *(exception + 16) = 0;
      }

      v15 = 0;
      v16 = (v13 - v14) >> 3;
      v17 = *(v12 + 9);
      v18 = *(v12 + 10);
      v19 = v75;
      if (v16 <= 1)
      {
        v20 = 1;
      }

      else
      {
        v20 = v16;
      }

      while (1)
      {
        if ((v18 - v17) >> 3 == v15)
        {
          goto LABEL_121;
        }

        v21 = *&v17[8 * v15];
        if (v21 == v75)
        {
          break;
        }

        if (v20 == ++v15)
        {
          goto LABEL_19;
        }
      }

      v23 = *(v75 + 12);
      if (v23 != *(v75 + 13))
      {
        v24 = *v23;
        v25 = (v24 + 16);
        v26 = *(v24 + 39);
        if (v26 < 0)
        {
          if (*(v24 + 24) != 8)
          {
            goto LABEL_27;
          }

          v25 = *v25;
        }

        else if (v26 != 8)
        {
          goto LABEL_27;
        }

        if (*v25 != 0x676E616C3A6C6D78)
        {
          goto LABEL_27;
        }

        v37 = (v24 + 40);
        v38 = *(v24 + 63);
        if (v38 < 0)
        {
          if (*(v24 + 48) != 9)
          {
            goto LABEL_27;
          }

          v37 = *v37;
        }

        else if (v38 != 9)
        {
          goto LABEL_27;
        }

        v43 = *v37;
        v44 = *(v37 + 8);
        v46 = v43 != 0x6C75616665642D78 || v44 != 116;
        if (!v15 || v46)
        {
          if (v46)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v47 = *v17;
          *v17 = v21;
          v48 = *(v12 + 9);
          if (v15 >= (*(v12 + 10) - v48) >> 3)
          {
            goto LABEL_121;
          }

          *(v48 + 8 * v15) = v47;
          v15 = 0;
          v17 = *(v12 + 9);
          v18 = *(v12 + 10);
        }

        if (v16 <= 1)
        {
          goto LABEL_42;
        }

        v51 = 0;
        if (((v18 - v17) >> 3) <= 1)
        {
          v52 = 1;
        }

        else
        {
          v52 = (v18 - v17) >> 3;
        }

        v53 = 1;
        while (1)
        {
          if (v52 == v53)
          {
            goto LABEL_121;
          }

          v27 = *&v17[v51 + 8];
          v54 = *(v27 + 63);
          if (v54 >= 0)
          {
            v55 = *(v27 + 63);
          }

          else
          {
            v55 = *(v27 + 48);
          }

          v56 = *(v19 + 63);
          v57 = v56;
          if ((v56 & 0x80u) != 0)
          {
            v56 = *(v19 + 6);
          }

          if (v55 == v56)
          {
            v58 = v54 >= 0 ? (v27 + 40) : *(v27 + 40);
            v59 = v57 >= 0 ? v19 + 40 : *(v19 + 5);
            if (!memcmp(v58, v59, v55))
            {
              break;
            }
          }

          ++v53;
          v51 += 8;
          if (v16 == v53)
          {
            goto LABEL_42;
          }
        }

        if (v15 < v53)
        {
          v63 = &v17[v51];
          v64 = &v17[v51 + 8];
          if (v18 != v64)
          {
            v65 = v18 - v17 - v51 - 16;
            if (v63 + 16 != v18)
            {
              memmove(v64, v63 + 16, v65);
            }

            v66 = &v64[v65];
            *(v12 + 10) = &v64[v65];
            v67 = &v17[8 * v15];
LABEL_117:
            if (v66 != v67)
            {
              v69 = &v66[-v67 - 8];
              if (v66 != (v67 + 8))
              {
                memmove(v67, (v67 + 8), &v66[-v67 - 8]);
              }

              v36 = 0;
              v35 = &v69[v67];
              goto LABEL_46;
            }
          }

LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

LABEL_113:
        if (v18 != &v17[8 * v15])
        {
          v68 = &v17[8 * v15];
          if (v18 != (v68 + 8))
          {
            memmove(&v17[8 * v15], (v68 + 8), &v18[-v68 - 8]);
          }

          v66 = v18 - 8;
          *(v12 + 10) = v18 - 8;
          v67 = &v17[8 * v53];
          goto LABEL_117;
        }

        goto LABEL_121;
      }

LABEL_27:
      if (!v15)
      {
        goto LABEL_42;
      }

      if (v18 == v17)
      {
        goto LABEL_121;
      }

      v27 = *v17;
      v28 = *(*v17 + 63);
      if (v28 >= 0)
      {
        v29 = *(*v17 + 63);
      }

      else
      {
        v29 = *(*v17 + 48);
      }

      v30 = *(v75 + 63);
      v31 = v30;
      if ((v30 & 0x80u) != 0)
      {
        v30 = *(v75 + 6);
      }

      if (v29 != v30)
      {
        goto LABEL_42;
      }

      v32 = v28 >= 0 ? (v27 + 40) : *(v27 + 40);
      v33 = v31 >= 0 ? (v75 + 40) : *(v75 + 5);
      if (memcmp(v32, v33, v29))
      {
        goto LABEL_42;
      }

      v39 = *(v27 + 96);
      if (*(v27 + 104) == v39)
      {
        goto LABEL_121;
      }

      v40 = *v39;
      v41 = (v40 + 16);
      v42 = *(v40 + 39);
      if (v42 < 0)
      {
        if (*(v40 + 24) != 8)
        {
          goto LABEL_42;
        }

        v41 = *v41;
      }

      else if (v42 != 8)
      {
        goto LABEL_42;
      }

      if (*v41 != 0x676E616C3A6C6D78)
      {
        goto LABEL_42;
      }

      v49 = (v40 + 40);
      v50 = *(v40 + 63);
      if (v50 < 0)
      {
        if (*(v40 + 48) != 9)
        {
          goto LABEL_42;
        }

        v49 = *v49;
      }

      else if (v50 != 9)
      {
        goto LABEL_42;
      }

      v60 = *v49;
      v61 = *(v49 + 8);
      if (v60 != 0x6C75616665642D78 || v61 != 116)
      {
LABEL_42:
        if (v18 != &v17[8 * v15])
        {
          v34 = &v17[8 * v15];
          if (v18 != (v34 + 8))
          {
            memmove(&v17[8 * v15], (v34 + 8), &v18[-v34 - 8]);
          }

          v27 = 0;
          v35 = v18 - 8;
          v36 = 1;
LABEL_46:
          *(v12 + 10) = v35;
          (*(*v19 + 8))(v19);
          if ((v36 & 1) == 0)
          {
            (*(*v27 + 8))(v27);
          }

          goto LABEL_48;
        }

        goto LABEL_121;
      }

      v53 = 0;
      goto LABEL_113;
    }
  }

LABEL_48:
  v75 = v70;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&v75);
  if (SHIBYTE(v72) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v74) < 0)
  {
    operator delete(v73[0]);
  }
}

void sub_1860FE368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char *a26)
{
  a26 = &a11;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&a26);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

uint64_t XMPMeta::GetProperty_Bool(XMPMeta *this, const char *a2, const char *a3, BOOL *a4, unsigned int *a5)
{
  if (!a2 || !a3)
  {
    XMPMeta::GetProperty_Bool();
  }

  if (!a4 || !a5)
  {
    XMPMeta::GetProperty_Bool();
  }

  v12 = 0;
  v11 = 0;
  v8 = (*(*this + 16))(this);
  if (v8)
  {
    if ((*(a5 + 1) & 0x1F) != 0)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 102;
      exception[1] = "Property must be simple";
      *(exception + 16) = 0;
    }

    *a4 = XMPUtils::ConvertToBool(v12, v7);
  }

  return v8;
}

uint64_t XMPMeta::GetProperty_Int(XMPMeta *this, const char *a2, const char *a3, int *a4, unsigned int *a5)
{
  v8 = 0;
  result = XMPMeta::GetProperty_Int64(this, a2, a3, &v8, a5);
  if (result)
  {
    if (v8 != v8)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 5;
      exception[1] = "Overflow condition";
      *(exception + 16) = 0;
    }

    *a4 = v8;
  }

  return result;
}

uint64_t XMPMeta::GetProperty_Int64(XMPMeta *this, const char *a2, const char *a3, uint64_t *a4, unsigned int *a5)
{
  if (!a2 || !a3)
  {
    XMPMeta::GetProperty_Int64();
  }

  if (!a4 || !a5)
  {
    XMPMeta::GetProperty_Int64();
  }

  memset(__n, 0, sizeof(__n));
  v7 = (*(*this + 16))(this);
  if (v7)
  {
    if ((*(a5 + 1) & 0x1F) != 0)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 102;
      exception[1] = "Property must be simple";
      *(exception + 16) = 0;
    }

    memset(&v12, 0, sizeof(v12));
    std::string::append(&v12, *&__n[1], __n[0]);
    XMPUtils::Trim(&v12);
    if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v12;
    }

    else
    {
      v9 = v12.__r_.__value_.__r.__words[0];
    }

    *a4 = XMPUtils::ConvertToInt64(v9, v8);
    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }
  }

  return v7;
}

void sub_1860FE628(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t XMPMeta::GetProperty_Date(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2 || !a3)
  {
    XMPMeta::GetProperty_Date();
  }

  if (!a4 || !a5)
  {
    XMPMeta::GetProperty_Date();
  }

  __s = 0;
  v10 = 0;
  v7 = (*(*a1 + 16))(a1);
  if (v7)
  {
    if ((*(a5 + 1) & 0x1F) != 0)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 102;
      exception[1] = "Property must be simple";
      *(exception + 16) = 0;
    }

    XMPUtils::ConvertToDate(__s, a4);
  }

  return v7;
}

void XMPMeta::SetProperty_Bool(XMPMeta *this, const char *a2, const char *a3, uint64_t a4, uint64_t a5)
{
  if (!a2 || !a3)
  {
    XMPMeta::SetProperty_Bool();
  }

  __p[0] = 0;
  __p[1] = 0;
  v11 = 0;
  XMPUtils::ConvertFromBool(a4, __p);
  if (v11 >= 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  (*(*this + 48))(this, a2, a3, v9, a5);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1860FE7D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void XMPMeta::SetProperty_Int(XMPMeta *this, const char *a2, const char *a3, uint64_t a4, uint64_t a5)
{
  if (!a2 || !a3)
  {
    XMPMeta::SetProperty_Int();
  }

  memset(&__p, 0, sizeof(__p));
  XMPUtils::ConvertFromInt(a4, "", &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  (*(*this + 48))(this, a2, a3, p_p, a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1860FE8B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void XMPMeta::SetProperty_Int64(XMPMeta *this, const char *a2, const char *a3, uint64_t a4, uint64_t a5)
{
  if (!a2 || !a3)
  {
    XMPMeta::SetProperty_Int64();
  }

  memset(&__p, 0, sizeof(__p));
  XMPUtils::ConvertFromInt64(a4, "", &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  (*(*this + 48))(this, a2, a3, p_p, a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1860FE998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void XMPMeta::SetProperty_Float(XMPMeta *this, const char *a2, const char *a3, double a4, uint64_t a5)
{
  if (!a2 || !a3)
  {
    XMPMeta::SetProperty_Float();
  }

  memset(&__p, 0, sizeof(__p));
  XMPUtils::ConvertFromFloat("", &__p, a4);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  (*(*this + 48))(this, a2, a3, p_p, a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1860FEA74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void XMPMeta::SetProperty_Date(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  if (!a2 || !a3)
  {
    XMPMeta::SetProperty_Date();
  }

  memset(&__p, 0, sizeof(__p));
  XMPUtils::ConvertFromDate(a4, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  (*(*a1 + 48))(a1, a2, a3, p_p, a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1860FEB4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void XMPMeta::GetProperty()
{
  __assert_rtn("GetProperty", "XMPMeta-GetSet.cpp", 423, "(propValue != 0) && (valueSize != 0) && (options != 0)");
}

{
  __assert_rtn("GetProperty", "XMPMeta-GetSet.cpp", 422, "(schemaNS != 0) && (propName != 0)");
}

void XMPMeta::GetArrayItem()
{
  __assert_rtn("GetArrayItem", "XMPMeta-GetSet.cpp", 453, "(itemValue != 0) && (options != 0)");
}

{
  __assert_rtn("GetArrayItem", "XMPMeta-GetSet.cpp", 452, "(schemaNS != 0) && (arrayName != 0)");
}

void XMPMeta::GetStructField()
{
  __assert_rtn("GetStructField", "XMPMeta-GetSet.cpp", 480, "(fieldValue != 0) && (options != 0)");
}

{
  __assert_rtn("GetStructField", "XMPMeta-GetSet.cpp", 479, "(schemaNS != 0) && (structName != 0) && (fieldNS != 0) && (fieldName != 0)");
}

void XMPMeta::GetQualifier()
{
  __assert_rtn("GetQualifier", "XMPMeta-GetSet.cpp", 503, "(qualValue != 0) && (options != 0)");
}

{
  __assert_rtn("GetQualifier", "XMPMeta-GetSet.cpp", 502, "(schemaNS != 0) && (propName != 0) && (qualNS != 0) && (qualName != 0)");
}

void XMPMeta::GetLocalizedText()
{
  __assert_rtn("GetLocalizedText", "XMPMeta-GetSet.cpp", 851, "(itemValue != 0) && (valueSize != 0) && (options != 0)");
}

{
  __assert_rtn("GetLocalizedText", "XMPMeta-GetSet.cpp", 850, "(actualLang != 0) && (langSize != 0)");
}

{
  __assert_rtn("GetLocalizedText", "XMPMeta-GetSet.cpp", 849, "(schemaNS != 0) && (arrayName != 0) && (_genericLang != 0) && (_specificLang != 0)");
}

void XMPMeta::GetProperty_Bool()
{
  __assert_rtn("GetProperty_Bool", "XMPMeta-GetSet.cpp", 1142, "(propValue != 0) && (options != 0)");
}

{
  __assert_rtn("GetProperty_Bool", "XMPMeta-GetSet.cpp", 1141, "(schemaNS != 0) && (propName != 0)");
}

void XMPMeta::GetProperty_Int64()
{
  __assert_rtn("GetProperty_Int64", "XMPMeta-GetSet.cpp", 1193, "(propValue != 0) && (options != 0)");
}

{
  __assert_rtn("GetProperty_Int64", "XMPMeta-GetSet.cpp", 1192, "(schemaNS != 0) && (propName != 0)");
}

void XMPMeta::GetProperty_Date()
{
  __assert_rtn("GetProperty_Date", "XMPMeta-GetSet.cpp", 1251, "(propValue != 0) && (options != 0)");
}

{
  __assert_rtn("GetProperty_Date", "XMPMeta-GetSet.cpp", 1250, "(schemaNS != 0) && (propName != 0)");
}

void XMPMeta2::XMPMeta2(XMPMeta2 *this)
{
  XMPMeta::XMPMeta(this);
  *v1 = &unk_1EF4DF5F8;
  *(v1 + 25) = 0u;
  *(v1 + 26) = 0u;
  *(v1 + 27) = 0u;
  *(v1 + 28) = 0u;
  AdobeXMPCore::IMetadata_v1::CreateMetadata(v1);
}

void sub_1860FF2DC(_Unwind_Exception *a1)
{
  v3 = *(v1 + 57);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v3);
  }

  v4 = *(v1 + 55);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v4);
  }

  v5 = *(v1 + 53);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v5);
  }

  v6 = *(v1 + 51);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v6);
  }

  XMPMeta::~XMPMeta(v1);
  _Unwind_Resume(a1);
}

void XMPMeta2::~XMPMeta2(XMPMeta2 *this)
{
  *this = &unk_1EF4DF5F8;
  v2 = *(this + 57);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v2);
  }

  v3 = *(this + 55);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v3);
  }

  v4 = *(this + 53);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v4);
  }

  v5 = *(this + 51);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v5);
  }

  XMPMeta::~XMPMeta(this);
}

{
  XMPMeta2::~XMPMeta2(this);

  JUMPOUT(0x186602850);
}

void XMPMeta2::GetProperty(XMPMeta2 *this, char *a2, char *a3, const char **a4, unsigned int *a5, unsigned int *a6)
{
  if (!a2 || !a3)
  {
    XMPMeta2::GetProperty();
  }

  if (!a4 || !a5 || !a6)
  {
    XMPMeta2::GetProperty();
  }

  v116 = 0;
  v117 = 0;
  v118 = 0;
  ExpandXPath(a2, a3, &v116);
  v115 = 0uLL;
  AdobeXMPCore::INameSpacePrefixMap_v1::GetDefaultNameSpacePrefixMap(&v115);
  v114 = 0uLL;
  v10 = *(this + 50);
  if (v10)
  {
    v11 = v10 + *(*v10 - 544);
  }

  else
  {
    v11 = 0;
  }

  v12 = *(this + 51);
  *&v114 = v11;
  *(&v114 + 1) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = v117 - v116;
  if ((v117 - v116) <= 0x20)
  {
LABEL_264:
    __break(1u);
    return;
  }

  if ((*(v116 + 56) & 0x10) == 0)
  {
    v91 = a6;
    v92 = a4;
    v93 = a5;
    v14 = 1;
LABEL_16:
    if (v14 < v13 >> 5)
    {
      v15 = v13 >> 5;
      while (1)
      {
        if (!v114)
        {
          goto LABEL_252;
        }

        memset(&v113, 0, sizeof(v113));
        if (v14 >= (v117 - v116) >> 5)
        {
          goto LABEL_264;
        }

        v16 = (v116 + 32 * v14);
        if (*(v16 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v113, *v16, *(v16 + 1));
        }

        else
        {
          v17 = *v16;
          v113.__r_.__value_.__r.__words[2] = *(v16 + 2);
          *&v113.__r_.__value_.__l.__data_ = v17;
        }

        memset(&v112, 0, sizeof(v112));
        v18 = v116;
        v19 = v117;
        if (v14 - 1 >= (v117 - v116) >> 5)
        {
          goto LABEL_264;
        }

        v20 = (v116 + 32 * (v14 - 1));
        if (*(v20 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v112, *v20, *(v20 + 1));
          v18 = v116;
          v19 = v117;
        }

        else
        {
          v21 = *v20;
          v112.__r_.__value_.__r.__words[2] = *(v20 + 2);
          *&v112.__r_.__value_.__l.__data_ = v21;
        }

        if (v14 >= (v19 - v18) >> 5)
        {
          goto LABEL_264;
        }

        v22 = *(v18 + 32 * v14 + 24);
        if (v22 <= 3)
        {
          switch(v22)
          {
            case 1:
              v40 = std::string::find(&v113, 58, 0);
              memset(&__str, 0, sizeof(__str));
              std::string::basic_string(&__str, &v113, 0, v40, &v108);
              (*(*v115 + 80))(&v108);
              size = v108.__r_.__value_.__l.__size_;
              v42 = v108.__r_.__value_.__r.__words[0];
              if ((*(*v114 + 40))(v114) != 4)
              {
                if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__str.__r_.__value_.__l.__data_);
                }

                v37 = 1;
                if (!size)
                {
                  goto LABEL_234;
                }

LABEL_194:
                std::__shared_weak_count::__release_shared[abi:fe200100](size);
                goto LABEL_234;
              }

              *&v108.__r_.__value_.__l.__data_ = 0uLL;
              (*(*v114 + 240))(&v108);
              v43 = v108.__r_.__value_.__r.__words[0];
              v44 = (*(*v42 + 192))(v42);
              if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v45 = &v113;
              }

              else
              {
                v45 = v113.__r_.__value_.__r.__words[0];
              }

              (*(*v43 + 648))(v106, v43, v44, -1, v45->__r_.__value_.__r.__words + v40 + 1, -1);
              v46 = *v106;
              v106[0] = 0;
              v106[1] = 0;
              v47 = *(&v114 + 1);
              v114 = v46;
              if (!v47)
              {
                goto LABEL_119;
              }

              std::__shared_weak_count::__release_shared[abi:fe200100](v47);
              v48 = v106[1];
              if (!v106[1])
              {
                goto LABEL_119;
              }

              break;
            case 2:
              if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v55 = &v113;
              }

              else
              {
                v55 = v113.__r_.__value_.__r.__words[0];
              }

              if (v55->__r_.__value_.__s.__data_[0] != 63)
              {
                __assert_rtn("GetProperty", "XMPMeta2-GetSet.cpp", 243, "stepStr[0]=='?'");
              }

              std::string::basic_string(&__str, &v113, 1uLL, 0xFFFFFFFFFFFFFFFFLL, &v108);
              if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v113.__r_.__value_.__l.__data_);
              }

              v113 = __str;
              v56 = std::string::find(&v113, 58, 0);
              memset(&__str, 0, sizeof(__str));
              std::string::basic_string(&__str, &v113, 0, v56, &v108);
              (*(*v115 + 80))(&v108);
              size = v108.__r_.__value_.__l.__size_;
              v57 = v108.__r_.__value_.__r.__words[0];
              v58 = v114;
              v59 = (*(*v108.__r_.__value_.__l.__data_ + 192))(v108.__r_.__value_.__r.__words[0]);
              v60 = (*(*v57 + 208))(v57);
              if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v61 = &v113;
              }

              else
              {
                v61 = v113.__r_.__value_.__r.__words[0];
              }

              (*(*v58 + 128))(&v108, v58, v59, v60, v61->__r_.__value_.__r.__words + v56 + 1, -1);
              v62 = *&v108.__r_.__value_.__l.__data_;
              *&v108.__r_.__value_.__l.__data_ = 0uLL;
              v48 = *(&v114 + 1);
              v114 = v62;
              if (!v48)
              {
LABEL_121:
                if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__str.__r_.__value_.__l.__data_);
                }

LABEL_193:
                v37 = 0;
                if (!size)
                {
                  goto LABEL_234;
                }

                goto LABEL_194;
              }

              break;
            case 3:
              if ((*(*v114 + 40))(v114) == 2)
              {
                *&v108.__r_.__value_.__l.__data_ = 0uLL;
                (*(*v114 + 248))(&v108);
                v23 = SHIBYTE(v113.__r_.__value_.__r.__words[2]);
                if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
                {
                  v24 = v113.__r_.__value_.__l.__size_;
                  if (v113.__r_.__value_.__l.__size_ <= 1 || *v113.__r_.__value_.__l.__data_ != 91)
                  {
                    goto LABEL_260;
                  }
                }

                else
                {
                  if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 2 || v113.__r_.__value_.__s.__data_[0] != 91)
                  {
                    goto LABEL_260;
                  }

                  v24 = SHIBYTE(v113.__r_.__value_.__r.__words[2]);
                }

                v79 = v113.__r_.__value_.__r.__words[0];
                if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v79 = &v113;
                }

                if (v79->__r_.__value_.__s.__data_[v24 - 1] == 93)
                {
                  if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v23 = v113.__r_.__value_.__l.__size_;
                  }

                  v80 = v23 - 2;
                  if (v23 == 2)
                  {
                    goto LABEL_262;
                  }

                  v81 = 0;
                  v82 = 1;
                  do
                  {
                    if (v23 < v82)
                    {
                      goto LABEL_264;
                    }

                    v83 = v79->__r_.__value_.__s.__data_[v82];
                    if ((v83 - 58) <= 0xFFFFFFF5)
                    {
                      __assert_rtn("GetProperty", "XMPMeta2-GetSet.cpp", 209, "('0' <= stepStr[chNum]) && (stepStr[chNum] <= '9')");
                    }

                    v81 = v83 + 10 * v81 - 48;
                    ++v82;
                    --v80;
                  }

                  while (v80);
                  if (v81 < 1)
                  {
LABEL_262:
                    exception = __cxa_allocate_exception(0x18uLL);
                    *exception = 102;
                    exception[1] = "Array index must be larger than one";
                    *(exception + 16) = 0;
                  }

                  v84 = std::string::find(&v112, 58, 0);
                  memset(&__str, 0, sizeof(__str));
                  std::string::basic_string(&__str, &v112, 0, v84, v106);
                  (*(*v115 + 80))(v106);
                  size = v106[1];
                  (*(*v108.__r_.__value_.__l.__data_ + 656))(v106);
                  v85 = *v106;
                  v106[0] = 0;
                  v106[1] = 0;
                  v86 = *(&v114 + 1);
                  v114 = v85;
                  if (!v86)
                  {
                    goto LABEL_189;
                  }

                  std::__shared_weak_count::__release_shared[abi:fe200100](v86);
                  v54 = v106[1];
                  if (!v106[1])
                  {
                    goto LABEL_189;
                  }

                  goto LABEL_188;
                }

LABEL_260:
                __assert_rtn("GetProperty", "XMPMeta2-GetSet.cpp", 207, "(stepStr.length() >= 2) && (*( stepStr.begin()) == '[') && (stepStr[stepStr.length()-1] == ']')");
              }

LABEL_233:
              v37 = 1;
              goto LABEL_234;
            default:
              goto LABEL_232;
          }

          std::__shared_weak_count::__release_shared[abi:fe200100](v48);
LABEL_119:
          if (v108.__r_.__value_.__l.__size_)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v108.__r_.__value_.__l.__size_);
          }

          goto LABEL_121;
        }

        if (v22 == 4)
        {
          if ((*(*v114 + 40))(v114) == 2)
          {
            *&v108.__r_.__value_.__l.__data_ = 0uLL;
            (*(*v114 + 248))(&v108);
            v49 = std::string::find(&v112, 58, 0);
            memset(&__str, 0, sizeof(__str));
            std::string::basic_string(&__str, &v112, 0, v49, v106);
            (*(*v115 + 80))(v106);
            size = v106[1];
            v50 = v114;
            if (*(&v114 + 1))
            {
              atomic_fetch_add_explicit((*(&v114 + 1) + 8), 1uLL, memory_order_relaxed);
            }

            if (v50 && (*(*v50 + 40))(v50) == 2)
            {
              (*(*v50 + 248))(v106, v50);
              v51 = (*(*(v106[0] + *(*v106[0] - 688)) + 560))(v106[0] + *(*v106[0] - 688));
              if (v106[1])
              {
                std::__shared_weak_count::__release_shared[abi:fe200100](v106[1]);
              }

              if (!v51)
              {
                v89 = __cxa_allocate_exception(0x18uLL);
                *v89 = 102;
                v89[1] = "Array index overflow";
                *(v89 + 16) = 0;
              }

              (*(*v108.__r_.__value_.__l.__data_ + 656))(v106);
              v52 = *v106;
              v106[0] = 0;
              v106[1] = 0;
              v53 = *(&v114 + 1);
              v114 = v52;
              if (v53)
              {
                std::__shared_weak_count::__release_shared[abi:fe200100](v53);
                if (v106[1])
                {
                  std::__shared_weak_count::__release_shared[abi:fe200100](v106[1]);
                }
              }
            }

            if (!*(&v50 + 1))
            {
              goto LABEL_189;
            }

            v54 = *(&v50 + 1);
LABEL_188:
            std::__shared_weak_count::__release_shared[abi:fe200100](v54);
LABEL_189:
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            if (v108.__r_.__value_.__l.__size_)
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v108.__r_.__value_.__l.__size_);
            }

            goto LABEL_193;
          }

          goto LABEL_233;
        }

        if (v22 == 5)
        {
          break;
        }

        if (v22 != 6)
        {
          goto LABEL_232;
        }

        memset(&__str, 0, sizeof(__str));
        memset(&v108, 0, sizeof(v108));
        v106[0] = 0;
        v106[1] = 0;
        v107 = 0;
        SplitNameAndValue(&v113, &__str, &v108);
        v25 = v114;
        if (*(&v114 + 1))
        {
          atomic_fetch_add_explicit((*(&v114 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v26 = std::string::find(&__str, 58, 0);
        memset(&v105, 0, sizeof(v105));
        std::string::basic_string(&v105, &__str, 0, v26, &__p);
        (*(*v115 + 80))(&__p);
        v27 = (*(*__p + 192))(__p);
        MEMORY[0x186602520](v106, v27);
        if (v98)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v98);
        }

        if (!v25 || (*(*v25 + 40))(v25) != 2)
        {
          v37 = 1;
          goto LABEL_203;
        }

        v109 = 0;
        v110 = 0;
        (*(*v25 + 248))(&v109, v25);
        v28 = (*(*(v109 + *(*v109 - 688)) + 560))(v109 + *(*v109 - 688));
        if (!v28)
        {
          v87 = 0;
          v37 = 0;
          goto LABEL_199;
        }

        v29 = v28;
        v90 = 0;
        v30 = 1;
        while (1)
        {
          v103 = 0;
          v104 = 0;
          (*(*v109 + 656))(&v103);
          if ((*(*v103 + 40))(v103) != 4)
          {
            v37 = 1;
            goto LABEL_77;
          }

          v101 = 0;
          v102 = 0;
          (*(*v103 + 240))(&__p);
          (*(*__p + 648))(&v101);
          if (v98)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v98);
          }

          if (!v101 || (*(*v101 + 40))(v101) != 1)
          {
            v37 = 14;
            goto LABEL_75;
          }

          __p = 0;
          v98 = 0;
          v99 = 0;
          (*(*v101 + 232))(&v96);
          (*(*v96 + 504))(&v100);
          v31 = (*(*v100 + 192))(v100);
          std::string::basic_string[abi:fe200100]<0>(&__p, v31);
          if (*(&v100 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](*(&v100 + 1));
          }

          if (*(&v96 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](*(&v96 + 1));
          }

          v32 = HIBYTE(v99);
          if (v99 >= 0)
          {
            v33 = HIBYTE(v99);
          }

          else
          {
            v33 = v98;
          }

          v34 = HIBYTE(v108.__r_.__value_.__r.__words[2]);
          if ((v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v34 = v108.__r_.__value_.__l.__size_;
          }

          if (v33 == v34 && (v99 >= 0 ? (p_p = &__p) : (p_p = __p), (v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v36 = &v108) : (v36 = v108.__r_.__value_.__r.__words[0]), !memcmp(p_p, v36, v33)))
          {
            (*(*v109 + 656))(&v100);
            v38 = v100;
            v100 = 0uLL;
            v39 = *(&v114 + 1);
            v114 = v38;
            if (v39)
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v39);
              if (*(&v100 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:fe200100](*(&v100 + 1));
              }
            }

            v90 = 1;
            v37 = 12;
            if ((v99 & 0x8000000000000000) == 0)
            {
              goto LABEL_75;
            }
          }

          else
          {
            v37 = 0;
            if ((v32 & 0x80) == 0)
            {
              goto LABEL_75;
            }
          }

          operator delete(__p);
LABEL_75:
          if (v102)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v102);
          }

LABEL_77:
          if (v104)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v104);
          }

          if (v37 && v37 != 14)
          {
            break;
          }

          if (++v30 > v29)
          {
            goto LABEL_197;
          }
        }

        if (v37 != 12)
        {
          goto LABEL_198;
        }

LABEL_197:
        v37 = 0;
LABEL_198:
        v87 = v90;
LABEL_199:
        if (v110)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v110);
        }

        if (!v37)
        {
          v37 = (v87 & 1) == 0;
        }

LABEL_203:
        if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v105.__r_.__value_.__l.__data_);
        }

        if (*(&v25 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v25 + 1));
        }

        if (SHIBYTE(v107) < 0)
        {
          operator delete(v106[0]);
        }

        if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v108.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
          if (v37)
          {
            goto LABEL_234;
          }

          goto LABEL_232;
        }

        if (!v37)
        {
          goto LABEL_232;
        }

LABEL_234:
        if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v112.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v113.__r_.__value_.__l.__data_);
        }

        if (v37)
        {
          goto LABEL_252;
        }

        if (++v14 == v15)
        {
          goto LABEL_242;
        }
      }

      if ((*(*v114 + 40))(v114) != 2)
      {
        goto LABEL_233;
      }

      v109 = 0;
      v110 = 0;
      (*(*v114 + 248))(&v109);
      memset(&__str, 0, sizeof(__str));
      memset(&v108, 0, sizeof(v108));
      v106[0] = 0;
      v106[1] = 0;
      v107 = 0;
      SplitNameAndValue(&v113, &__str, &v108);
      v63 = v114;
      if (*(&v114 + 1))
      {
        atomic_fetch_add_explicit((*(&v114 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v64 = std::string::find(&__str, 58, 0);
      memset(&v105, 0, sizeof(v105));
      std::string::basic_string(&v105, &__str, 0, v64, &__p);
      (*(*v115 + 80))(&__p);
      v65 = (*(*__p + 192))(__p);
      MEMORY[0x186602520](v106, v65);
      if (v98)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v98);
      }

      if (v63 && (*(*v63 + 40))(v63) == 2)
      {
        v103 = 0;
        v104 = 0;
        (*(*v63 + 248))(&v103, v63);
        v66 = (*(*(v103 + *(*v103 - 688)) + 560))(v103 + *(*v103 - 688));
        if (v66)
        {
          v67 = v66;
          v68 = 0;
          v69 = 1;
          while (1)
          {
            v101 = 0;
            v102 = 0;
            (*(*v103 + 656))(&v101);
            v100 = 0uLL;
            (*(*v101 + 128))(&v100);
            if (v100)
            {
              __p = 0;
              v98 = 0;
              v99 = 0;
              (*(*v100 + 232))(&v94);
              (*(*v94 + 504))(&v96);
              v70 = (*(*v96 + 192))(v96);
              std::string::basic_string[abi:fe200100]<0>(&__p, v70);
              if (*(&v96 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:fe200100](*(&v96 + 1));
              }

              if (v95)
              {
                std::__shared_weak_count::__release_shared[abi:fe200100](v95);
              }

              v71 = HIBYTE(v99);
              if (v99 >= 0)
              {
                v72 = HIBYTE(v99);
              }

              else
              {
                v72 = v98;
              }

              v73 = HIBYTE(v108.__r_.__value_.__r.__words[2]);
              if ((v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v73 = v108.__r_.__value_.__l.__size_;
              }

              if (v72 == v73)
              {
                v74 = v99 >= 0 ? &__p : __p;
                v75 = (v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v108 : v108.__r_.__value_.__r.__words[0];
                if (!memcmp(v74, v75, v72))
                {
                  (*(*v103 + 656))(&v96);
                  v77 = v96;
                  v96 = 0uLL;
                  v78 = *(&v114 + 1);
                  v114 = v77;
                  if (v78)
                  {
                    std::__shared_weak_count::__release_shared[abi:fe200100](v78);
                    if (*(&v96 + 1))
                    {
                      std::__shared_weak_count::__release_shared[abi:fe200100](*(&v96 + 1));
                    }
                  }

                  v68 = 1;
                  v76 = 9;
                  if ((v99 & 0x8000000000000000) == 0)
                  {
                    goto LABEL_154;
                  }

LABEL_151:
                  operator delete(__p);
                  goto LABEL_154;
                }
              }

              v76 = 0;
              if (v71 < 0)
              {
                goto LABEL_151;
              }
            }

            else
            {
              v76 = 11;
            }

LABEL_154:
            if (*(&v100 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](*(&v100 + 1));
            }

            if (v102)
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v102);
            }

            if ((v76 == 11 || !v76) && ++v69 <= v67)
            {
              continue;
            }

            goto LABEL_217;
          }
        }

        v68 = 0;
LABEL_217:
        if (v104)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v104);
        }
      }

      else
      {
        v68 = 0;
      }

      if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v105.__r_.__value_.__l.__data_);
      }

      if (*(&v63 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v63 + 1));
      }

      if (SHIBYTE(v107) < 0)
      {
        operator delete(v106[0]);
      }

      if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v108.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (v110)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v110);
      }

      if (v68)
      {
LABEL_232:
        v37 = 0;
        goto LABEL_234;
      }

      goto LABEL_233;
    }

LABEL_242:
    if (v114)
    {
      *&v113.__r_.__value_.__l.__data_ = v114;
      if (*(&v114 + 1))
      {
        atomic_fetch_add_explicit((*(&v114 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      *v91 = XMPUtils::GetIXMPOptions(&v113);
      if (v113.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v113.__r_.__value_.__l.__size_);
      }

      if ((*(*v114 + 40))(v114) == 1)
      {
        *&v113.__r_.__value_.__l.__data_ = 0uLL;
        (*(*v114 + 232))(&v112);
        (*(*v112.__r_.__value_.__l.__data_ + 504))(&v113);
        if (v112.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v112.__r_.__value_.__l.__size_);
        }

        *v92 = (*(*v113.__r_.__value_.__l.__data_ + 192))(v113.__r_.__value_.__r.__words[0]);
        *v93 = (*(*v113.__r_.__value_.__l.__data_ + 208))(v113.__r_.__value_.__r.__words[0]);
        if (v113.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v113.__r_.__value_.__l.__size_);
        }
      }
    }

    goto LABEL_252;
  }

  if (XMPUtils::HandleConstAliasStep(this + 50, &v114, &v116, 0))
  {
    v91 = a6;
    v92 = a4;
    v93 = a5;
    v13 = v117 - v116;
    v14 = 2;
    goto LABEL_16;
  }

LABEL_252:
  if (*(&v114 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v114 + 1));
  }

  if (*(&v115 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v115 + 1));
  }

  v113.__r_.__value_.__r.__words[0] = &v116;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&v113);
}

void sub_186100AAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, std::__shared_weak_count *a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, std::__shared_weak_count *a51)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a28);
  }

  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a30);
  }

  if (a51)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a51);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v51);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  if (*(v52 - 209) < 0)
  {
    operator delete(*(v52 - 232));
  }

  if (*(v52 - 185) < 0)
  {
    operator delete(*(v52 - 208));
  }

  if (*(v52 - 153) < 0)
  {
    operator delete(*(v52 - 176));
  }

  v54 = *(v52 - 136);
  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v54);
  }

  v55 = *(v52 - 120);
  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v55);
  }

  *(v52 - 176) = v52 - 112;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100]((v52 - 176));
  _Unwind_Resume(a1);
}

uint64_t XMPMeta2::CountArrayItems(XMPMeta2 *this, char *a2, char *a3)
{
  if (!a2 || !a3)
  {
    XMPMeta2::CountArrayItems();
  }

  memset(v13, 0, sizeof(v13));
  ExpandXPath(a2, a3, v13);
  v11 = 0;
  v12 = 0;
  v10 = 0;
  XMPUtils::FindCnstNode(this + 50, v13, &v11, &v10, 0);
  if (v4)
  {
    if ((v10 & 0x200) == 0)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 102;
      exception[1] = "The named property is not an array";
      *(exception + 16) = 0;
    }

    v8 = v11;
    v9 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    NodeChildCount = XMPUtils::GetNodeChildCount(&v8);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v9);
    }
  }

  else
  {
    NodeChildCount = 0;
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v12);
  }

  v11 = v13;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&v11);
  return NodeChildCount;
}

void sub_186100F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, void **a12, std::__shared_weak_count *a13, char a14)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  a12 = &a14;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&a12);
  _Unwind_Resume(a1);
}

void XMPMeta2::ParseFromBuffer(XMPMeta2 *this, const char *a2, unsigned int a3, char a4)
{
  v6 = *(this + 56);
  if (!v6)
  {
    AdobeXMPCore_Int::IUTF8String_I::CreateUTF8String("", 0);
  }

  (*(*v6 + 40))(&v13);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v14);
  }

  if ((a4 & 2) == 0)
  {
    v7 = *(*(**(this + 54) + 232))(*(this + 54));
    (*(v7 + 288))();
    v8 = *(this + 54);
    v9 = (*(**(this + 56) + 192))(*(this + 56));
    v10 = (*(**(this + 56) + 208))(*(this + 56));
    (*(*v8 + 200))(&v15, v8, v9, v10);
    v11 = v15;
    v15 = 0uLL;
    v12 = *(this + 51);
    *(this + 25) = v11;
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v12);
      if (*(&v15 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v15 + 1));
      }
    }

    (*(**(this + 56) + 200))(*(this + 56));
  }
}

void XMPMeta2::SerializeToBuffer(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  v13 = 0;
  AdobeXMPCore::IDOMImplementationRegistry_v1::GetDOMImplementationRegistry(&v12);
  v10 = 0;
  v11 = 0;
  (*(*v12 + 48))(&v10);
  v8 = 0;
  v9 = 0;
  v4 = (*(*v10 + 224))(v10);
  v5 = *(a1 + 408);
  v7 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v4 + 264))(&v8);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v7);
  }

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

  if (v8)
  {
    v6 = (*(*v8 + 192))(v8);
    std::string::append(a2, v6);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v11);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v13);
  }
}

void sub_18610137C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a16);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t XMPMeta2::Erase(XMPMeta2 *this)
{
  v2 = *(this + 43);
  if (v2)
  {
    (*(*v2 + 8))(v2);
    *(this + 43) = 0;
  }

  v3 = *(*(*(this + 50) + *(**(this + 50) - 544)) + 224);

  return v3();
}

uint64_t XMPMeta2::DoesPropertyExist(XMPMeta2 *this, char *a2, char *a3)
{
  if (!a2 || !a3)
  {
    XMPMeta2::DoesPropertyExist();
  }

  memset(v10, 0, sizeof(v10));
  ExpandXPath(a2, a3, v10);
  v8 = 0;
  v9 = 0;
  v7 = 0;
  XMPUtils::FindCnstNode(this + 50, v10, &v8, &v7, 0);
  v5 = v4;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
  }

  v8 = v10;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&v8);
  return v5;
}

void sub_186101510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, std::__shared_weak_count *a11, char a12)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a11);
  }

  a10 = &a12;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&a10);
  _Unwind_Resume(a1);
}

void XMPMeta2::SetProperty(XMPMeta2 *this, char *a2, char *a3, char *a4, unsigned int a5)
{
  if (!a2 || !a3)
  {
    XMPMeta2::SetProperty();
  }

  v9 = VerifySetOptions(a5, a4);
  memset(v14, 0, sizeof(v14));
  ExpandXPath(a2, a3, v14);
  v12 = 0;
  v13 = 0;
  XMPUtils::FindNode(this + 50, v14, 1, v9, &v12, 0, 0);
  if ((v10 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 102;
    exception[1] = "Specified property does not exist";
    *(exception + 16) = 0;
  }

  XMPUtils::SetNode(&v12, a4, v9);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v13);
  }

  v12 = v14;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&v12);
}

void sub_186101640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, char a12)
{
  a10 = &a12;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&a10);
  _Unwind_Resume(a1);
}

void XMPMeta2::SetArrayItem(XMPMeta2 *this, char *a2, char *a3, int a4, char *a5, unsigned int a6)
{
  if (!a2 || !a3)
  {
    XMPMeta2::SetArrayItem();
  }

  memset(v16, 0, sizeof(v16));
  ExpandXPath(a2, a3, v16);
  v14 = 0;
  v15 = 0;
  XMPUtils::FindNode(this + 50, v16, 0, a6, &v14, 0, 0);
  if ((v10 & 1) == 0 || (*v14)[5](v14) != 2)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 102;
    exception[1] = "Specified array does not exist";
    *(exception + 16) = 0;
  }

  v12 = 0;
  v13 = 0;
  (*v14)[31](&v12);
  XMPUtils::DoSetArrayItem(&v12, a4, a5, a6);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v13);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v15);
  }

  v14 = v16;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&v14);
}

void sub_1861017CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void **a12, std::__shared_weak_count *a13, char a14)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a11);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  a12 = &a14;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&a12);
  _Unwind_Resume(a1);
}

void XMPMeta2::AppendArrayItem(XMPMeta2 *this, char *a2, char *a3, unsigned int a4, char *a5, int a6)
{
  if (!a2 || !a3)
  {
    XMPMeta2::AppendArrayItem();
  }

  v11 = VerifySetOptions(a4, 0);
  if ((v11 & 0xFFFFE1FF) != 0)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 103;
    exception[1] = "Only array form flags allowed for arrayOptions";
    *(exception + 16) = 0;
  }

  v12 = v11;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  ExpandXPath(a2, a3, &v28);
  v26 = 0;
  v27 = 0;
  v25 = 0uLL;
  v24 = 0;
  XMPUtils::FindCnstNode(this + 50, &v28, &v26, &v24 + 1, 0);
  if (v13)
  {
    if ((*(*v26 + 40))(v26) != 2)
    {
      v14 = "The named property is not an array";
      v15 = 102;
      goto LABEL_28;
    }
  }

  else
  {
    if (!v12)
    {
      v14 = "Explicit arrayOptions required to create new array";
      v15 = 103;
LABEL_28:
      v20 = __cxa_allocate_exception(0x18uLL);
      *v20 = v15;
      v20[1] = v14;
      *(v20 + 16) = 0;
    }

    memset(v23, 0, sizeof(v23));
    v16 = v29;
    if (v28 == v29)
    {
      __break(1u);
      return;
    }

    if (*(v29 - 9) < 0)
    {
      std::string::__init_copy_ctor_external(v23, *(v29 - 32), *(v29 - 24));
    }

    else
    {
      v17 = *(v29 - 32);
      *&v23[16] = *(v29 - 16);
      *v23 = v17;
    }

    *&v23[24] = *(v16 - 8);
    memset(&__p, 0, sizeof(__p));
    if ((v23[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v23, *&v23[8]);
    }

    else
    {
      __p = *v23;
    }

    XMPUtils::FindNode(this + 50, &v28, 1, v12, &v26, &v24, 0);
    if ((v18 & 1) == 0)
    {
      v21 = __cxa_allocate_exception(0x18uLL);
      *v21 = 102;
      v21[1] = "Failure creating array node";
      *(v21 + 16) = 0;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if ((v23[23] & 0x80000000) != 0)
    {
      operator delete(*v23);
    }
  }

  (*(*v26 + 248))(v23);
  v25 = *v23;
  XMPUtils::DoSetArrayItem(&v25, -1, a5, a6 | 0x8000);
  if (*(&v25 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v25 + 1));
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v27);
  }

  *v23 = &v28;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](v23);
}

void sub_186101AC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  v28 = *(v26 - 80);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v28);
  }

  __p = (v26 - 72);
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&__p);
  _Unwind_Resume(a1);
}

void XMPMeta2::SetQualifier(XMPMeta2 *this, char *a2, char *a3, char *a4, char *a5, const char *a6, uint64_t a7)
{
  if (!a2 || !a3 || !a4 || !a5)
  {
    XMPMeta2::SetQualifier();
  }

  memset(v20, 0, sizeof(v20));
  ExpandXPath(a2, a3, v20);
  v18 = 0;
  v19 = 0;
  XMPUtils::FindCnstNode(this + 50, v20, &v18, 0, 0);
  if ((v14 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 102;
    exception[1] = "Specified property does not exist";
    *(exception + 16) = 0;
  }

  memset(&__p, 0, sizeof(__p));
  XMPUtils::ComposeQualifierPath(a2, a3, a4, a5, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  (*(*this + 48))(this, a2, p_p, a6, a7);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v19);
  }

  __p.__r_.__value_.__r.__words[0] = v20;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&__p);
}

void sub_186101CAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  __p = &a17;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&__p);
  _Unwind_Resume(a1);
}

void XMPMeta2::Clone(XMPMeta2 *this, XMPMeta *lpsrc, int a3)
{
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    v11 = "Null clone pointer";
    goto LABEL_12;
  }

  if (a3)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 103;
    v11 = "No options are defined yet";
LABEL_12:
    exception[1] = v11;
    *(exception + 16) = 0;
  }

  v6 = v5;
  v7 = v5[50] + *(*v5[50] - 544);
  (*(*v7 + 224))(v7, 1, 1);
  (*(*(*(this + 50) + *(**(this + 50) - 544)) + 264))(&v12, *(this + 50) + *(**(this + 50) - 544), 0, 0);
  (*(*v12 + 256))(&v14);
  v8 = v14;
  v14 = 0uLL;
  v9 = v6[51];
  *(v6 + 25) = v8;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
    if (*(&v14 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](*(&v14 + 1));
    }
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v13);
  }
}

void sub_186101EEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void XMPMeta2::DeleteProperty(XMPMeta2 *this, char *a2, char *a3)
{
  if (!a2 || !a3)
  {
    XMPMeta2::DeleteProperty();
  }

  memset(v38, 0, sizeof(v38));
  ExpandXPath(a2, a3, v38);
  v36 = 0;
  v37 = 0;
  v35 = 0;
  XMPUtils::FindCnstNode(this + 50, v38, &v36, &v35 + 1, &v35);
  if (v4 && v36)
  {
    v33 = 0;
    v34 = 0;
    (*v36)[7](&v33);
    v5 = v33;
    if ((v35 & 0x2000000000) != 0)
    {
      (*v36)[11](&v29);
      v7 = (*(*v29 + 192))(v29);
      (*v36)[11](&v27);
      v8 = (*(*v27 + 208))(v27);
      (*v36)[9](&v25);
      v9 = (*(*v25 + 192))(v25);
      (*v36)[9](&v23);
      v10 = (*(*v23 + 208))(v23);
      (*(*v5 + 152))(&v31, v5, v7, v8, v9, v10);
      v11 = v32;
      if (!v32)
      {
        goto LABEL_11;
      }
    }

    else
    {
      if ((*(*v33 + 40))(v33) == 2)
      {
        v29 = 0;
        v30 = 0;
        (*(*v33 + 248))(&v29);
        (*(*v29 + 680))(&v21);
        v6 = v22;
        if (!v22)
        {
LABEL_17:
          if (v30)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v30);
          }

          goto LABEL_19;
        }

LABEL_16:
        std::__shared_weak_count::__release_shared[abi:fe200100](v6);
        goto LABEL_17;
      }

      if ((*(*v33 + 40))(v33) != 4)
      {
LABEL_19:
        if (v34)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v34);
        }

        goto LABEL_21;
      }

      v29 = 0;
      v30 = 0;
      (*(*v33 + 240))(&v29);
      v12 = v29;
      (*v36)[11](&v27);
      v13 = (*(*v27 + 192))(v27);
      (*v36)[11](&v25);
      v14 = (*(*v25 + 208))(v25);
      (*v36)[9](&v23);
      v15 = (*(*v23 + 192))(v23);
      (*v36)[9](&v17);
      v16 = (*(*v17 + 208))(v17);
      (*(*v12 + 672))(&v19, v12, v13, v14, v15, v16);
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v20);
      }

      v11 = v18;
      if (!v18)
      {
LABEL_11:
        if (v24)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v24);
        }

        if (v26)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v26);
        }

        v6 = v28;
        if (!v28)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }
    }

    std::__shared_weak_count::__release_shared[abi:fe200100](v11);
    goto LABEL_11;
  }

LABEL_21:
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v37);
  }

  v36 = v38;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&v36);
}

void sub_18610247C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a16);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a18);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a20);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a22);
  }

  v24 = *(v22 - 88);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v24);
  }

  v25 = *(v22 - 64);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v25);
  }

  *(v22 - 72) = v22 - 56;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100]((v22 - 72));
  _Unwind_Resume(a1);
}

void XMPMeta2::GetObjectName(XMPMeta2 *this, const char **a2, unsigned int *a3)
{
  (*(**(this + 50) + 736))(&v6);
  *a2 = (*(*v6 + 192))(v6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v7);
  }

  (*(**(this + 50) + 736))(&v6);
  *a3 = (*(*v6 + 208))(v6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v7);
  }
}

uint64_t XMPMeta2::SetObjectName(XMPMeta2 *this, char *a2)
{
  v4 = *a2;
  if (*a2)
  {
    v5 = a2;
    do
    {
      if (v4 >= 1)
      {
        do
        {
          v7 = *++v5;
          v6 = v7;
        }

        while (v7 > 0);
        if ((v6 & 0x80000000) == 0)
        {
          break;
        }
      }

      v10 = 0;
      v9 = 0;
      CodePoint_from_UTF8(v5, 4uLL, &v10, &v9);
      v5 += v9;
      v4 = *v5;
    }

    while (*v5);
  }

  return (*(**(this + 50) + 744))(*(this + 50), a2, -1);
}

BOOL XMPMeta2::GetLocalizedText(XMPMeta2 *this, char *a2, char *a3, char *__s, char *a5, const char **a6, unsigned int *a7, const char **a8, unsigned int *a9, unsigned int *a10)
{
  if (!a2 || !a3 || !__s || !a5)
  {
    XMPMeta2::GetLocalizedText();
  }

  if (!a6 || !a7)
  {
    XMPMeta2::GetLocalizedText();
  }

  if (!a8 || !a9 || !a10)
  {
    XMPMeta2::GetLocalizedText();
  }

  v40[0] = 0;
  v40[1] = 0;
  v41 = 0;
  std::string::basic_string[abi:fe200100]<0>(v40, __s);
  __p[0] = 0;
  __p[1] = 0;
  v39 = 0;
  std::string::basic_string[abi:fe200100]<0>(__p, a5);
  NormalizeLangValue(v40);
  v17 = __p;
  NormalizeLangValue(__p);
  if (v41 >= 0)
  {
    v18 = v40;
  }

  else
  {
    v18 = v40[0];
  }

  if (v39 < 0)
  {
    v17 = __p[0];
  }

  memset(v37, 0, sizeof(v37));
  ExpandXPath(a2, a3, v37);
  v35 = 0;
  v36 = 0;
  v33 = 0;
  v34 = 0;
  v32 = 0;
  XMPUtils::FindCnstNode(this + 50, v37, &v35, &v32, 0);
  if ((v19 & 1) == 0)
  {
    v21 = 0;
    goto LABEL_40;
  }

  (*v35)[31](&v30);
  v20 = ChooseIXMPLocalizedText(&v30, &v32, v18, v17, &v33);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v31);
  }

  v21 = v20 != 0;
  if (!v20)
  {
    v24 = v34;
    if (!v34)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  v30 = 0;
  v31 = 0;
  v22 = v33;
  v23 = strlen(xmlNameSpace);
  (*(*v22 + 128))(&v28, v22, xmlNameSpace, v23, "lang", -1);
  (*(*v28 + 232))(&v30);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v29);
  }

  (*(*v30 + 504))(&v28);
  *a6 = (*(*v28 + 192))(v28);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v29);
  }

  (*(*v30 + 504))(&v28);
  *a7 = (*(*v28 + 208))(v28);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v29);
  }

  v28 = 0;
  v29 = 0;
  (*(*v22 + 232))(&v26, v22);
  (*(*v26 + 504))(&v28);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v27);
  }

  *a8 = (*(*v28 + 192))(v28);
  *a9 = (*(*v28 + 208))(v28);
  v24 = v34;
  v26 = v22;
  v27 = v34;
  if (v34)
  {
    atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a10 = XMPUtils::GetIXMPOptions(&v26);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v27);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v29);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v31);
  }

  if (v24)
  {
LABEL_39:
    std::__shared_weak_count::__release_shared[abi:fe200100](v24);
  }

LABEL_40:
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v36);
  }

  v35 = v37;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&v35);
  if (SHIBYTE(v39) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40[0]);
  }

  return v21;
}

void sub_186102B88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, char *a19, std::__shared_weak_count *a20, char a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a11);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a13);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a15);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a18);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a20);
  }

  a19 = &a21;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&a19);
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (*(v29 - 89) < 0)
  {
    operator delete(*(v29 - 112));
  }

  _Unwind_Resume(a1);
}

uint64_t ChooseIXMPLocalizedText(uint64_t a1, _DWORD *a2, char *a3, const char *a4, void *a5)
{
  v10 = *a1 + *(**a1 - 688);
  v11 = (*(*v10 + 560))(v10);
  __p = 0;
  v78 = 0;
  v79 = 0;
  std::string::basic_string[abi:fe200100]<0>(&__p, "lang");
  if ((*a2 & 0x1000) == 0)
  {
    if (v11)
    {
      v12 = 1;
    }

    else
    {
      v12 = (*a2 & 0x800) == 0;
    }

    if (v12)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 102;
      exception[1] = "Localized text array is not alt-text";
      *(exception + 16) = 0;
    }

    goto LABEL_70;
  }

  if (!v11)
  {
LABEL_70:
    v26 = 0;
    v44 = 0;
    goto LABEL_110;
  }

  v69 = a5;
  __s = a3;
  v14 = 0;
  v15 = 1;
  v16 = "Alt-text array item is not simple";
  do
  {
    (*(**a1 + 656))(&v76);
    v18 = *(&v76 + 1);
    v17 = v76;
    v76 = 0uLL;
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v14);
      if (*(&v76 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v76 + 1));
      }
    }

    if ((*(*v17 + 40))(v17) != 1)
    {
      goto LABEL_147;
    }

    if (!(*(*v17 + 184))(v17))
    {
      goto LABEL_146;
    }

    v19 = strlen(xmlNameSpace);
    if (v79 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v79 >= 0)
    {
      v21 = HIBYTE(v79);
    }

    else
    {
      v21 = v78;
    }

    (*(*v17 + 128))(&v76, v17, xmlNameSpace, v19, p_p, v21);
    v22 = v76;
    if (*(&v76 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](*(&v76 + 1));
    }

    if (!v22)
    {
LABEL_146:
      v16 = "Alt-text array item has no language qualifier";
LABEL_147:
      v68 = __cxa_allocate_exception(0x18uLL);
      *v68 = 102;
      v68[1] = v16;
      *(v68 + 16) = 0;
    }

    ++v15;
    v14 = v18;
  }

  while (v15 <= v11);
  v23 = 0;
  v24 = 0;
  v25 = 1;
  do
  {
    (*(**a1 + 656))(&v76);
    v26 = *(&v76 + 1);
    v27 = v76;
    v76 = 0uLL;
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v18);
      if (*(&v76 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v76 + 1));
      }
    }

    (*(*v27 + 112))(&v72, v27);
    (*(*v72 + 48))(&v74);
    (*(*v74 + 232))(&v76);
    v28 = *(&v76 + 1);
    v29 = v76;
    v76 = 0uLL;
    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v24);
      if (*(&v76 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v76 + 1));
      }
    }

    if (v75)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v75);
    }

    if (v73)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v73);
    }

    (*(*v27 + 232))(&v76, v27);
    v71 = *(&v76 + 1);
    v76 = 0uLL;
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v23);
      if (*(&v76 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v76 + 1));
      }
    }

    (*(*v29 + 504))(&v76, v29);
    v30 = (*(*v76 + 192))(v76);
    v31 = strcmp(v30, a4);
    if (*(&v76 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](*(&v76 + 1));
    }

    if (!v31)
    {
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v45 = v69[1];
      *v69 = v27;
      v69[1] = v26;
      if (v45)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v45);
      }

      v44 = 1;
LABEL_105:
      v34 = v28;
      goto LABEL_106;
    }

    ++v25;
    v23 = v71;
    v24 = v28;
    v18 = v26;
  }

  while (v25 <= v11);
  if (!*__s)
  {
    v34 = v28;
LABEL_77:
    v46 = 1;
    v47 = v26;
    while (1)
    {
      (*(**a1 + 656))(&v76);
      v26 = *(&v76 + 1);
      v48 = v76;
      v76 = 0uLL;
      if (v47)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v47);
        if (*(&v76 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v76 + 1));
        }
      }

      v49 = strlen(xmlNameSpace);
      if (v79 >= 0)
      {
        v50 = &__p;
      }

      else
      {
        v50 = __p;
      }

      if (v79 >= 0)
      {
        v51 = HIBYTE(v79);
      }

      else
      {
        v51 = v78;
      }

      (*(*v48 + 128))(&v74, v48, xmlNameSpace, v49, v50, v51);
      (*(*v74 + 232))(&v76);
      v28 = *(&v76 + 1);
      v52 = v76;
      v76 = 0uLL;
      if (v34)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v34);
        if (*(&v76 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v76 + 1));
        }
      }

      if (v75)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v75);
      }

      (*(*v52 + 504))(&v76, v52);
      v53 = (*(*v76 + 192))(v76);
      v54 = strcmp(v53, "x-default");
      if (*(&v76 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v76 + 1));
      }

      if (v54)
      {
        break;
      }

      ++v46;
      v34 = v28;
      v47 = v26;
      if (v46 > v11)
      {
        (*(**a1 + 656))(&v76);
        v55 = v76;
        v76 = 0uLL;
        v56 = v69[1];
        *v69 = v55;
        if (v56)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v56);
          if (*(&v76 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](*(&v76 + 1));
          }
        }

        v44 = 5;
        goto LABEL_105;
      }
    }

    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v57 = v69[1];
    *v69 = v48;
    v69[1] = v26;
    if (v57)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v57);
    }

    v44 = 4;
    goto LABEL_105;
  }

  v32 = strlen(__s);
  v33 = 2;
  v34 = v28;
  while (1)
  {
    v35 = v26;
    (*(**a1 + 656))(&v76);
    v26 = *(&v76 + 1);
    v36 = v76;
    v76 = 0uLL;
    if (v35)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v35);
      if (*(&v76 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v76 + 1));
      }
    }

    v37 = strlen(xmlNameSpace);
    if (v79 >= 0)
    {
      v38 = &__p;
    }

    else
    {
      v38 = __p;
    }

    if (v79 >= 0)
    {
      v39 = HIBYTE(v79);
    }

    else
    {
      v39 = v78;
    }

    (*(*v36 + 128))(&v74, v36, xmlNameSpace, v37, v38, v39);
    (*(*v74 + 232))(&v76);
    v40 = v76;
    v76 = 0uLL;
    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v34);
      if (*(&v76 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v76 + 1));
      }
    }

    if (v75)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v75);
    }

    v34 = *(&v40 + 1);
    (*(*v40 + 504))(&v76, v40);
    v41 = (*(*v76 + 192))(v76);
    if (*(&v76 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](*(&v76 + 1));
    }

    (*(*v40 + 504))(&v76, v40);
    v42 = (*(*v76 + 208))(v76);
    if (*(&v76 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](*(&v76 + 1));
    }

    if (v42 >= v32 && !strncmp(v41, __s, v32) && (v42 == v32 || v41[v32] == 45))
    {
      break;
    }

    if (v33++ > v11)
    {
      goto LABEL_77;
    }
  }

  if (v26)
  {
    atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v59 = v69[1];
  *v69 = v36;
  v69[1] = v26;
  if (v59)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v59);
  }

  if (v33 <= v11)
  {
    while (1)
    {
      v60 = v26;
      (*(**a1 + 656))(&v76);
      v26 = *(&v76 + 1);
      v61 = v76;
      v76 = 0uLL;
      if (v60)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v60);
        if (*(&v76 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v76 + 1));
        }
      }

      v62 = strlen(xmlNameSpace);
      if (v79 >= 0)
      {
        v63 = &__p;
      }

      else
      {
        v63 = __p;
      }

      if (v79 >= 0)
      {
        v64 = HIBYTE(v79);
      }

      else
      {
        v64 = v78;
      }

      (*(*v61 + 128))(&v74, v61, xmlNameSpace, v62, v63, v64);
      (*(*v74 + 232))(&v76);
      v65 = v76;
      v76 = 0uLL;
      if (v34)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v34);
        if (*(&v76 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v76 + 1));
        }
      }

      if (v75)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v75);
      }

      v34 = *(&v65 + 1);
      (*(*v65 + 504))(&v76, v65);
      v66 = (*(*v76 + 192))(v76);
      if (*(&v76 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v76 + 1));
      }

      (*(*v65 + 504))(&v76, v65);
      v67 = (*(*v76 + 208))(v76);
      if (*(&v76 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v76 + 1));
      }

      if (v67 >= v32 && !strncmp(v66, __s, v32) && (v67 == v32 || v66[v32] == 45))
      {
        break;
      }

      ++v33;
      v44 = 2;
      if (v33 > v11)
      {
        goto LABEL_106;
      }
    }

    v44 = 3;
  }

  else
  {
    v44 = 2;
  }

LABEL_106:
  if (v71)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v71);
  }

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v34);
  }

LABEL_110:
  if (SHIBYTE(v79) < 0)
  {
    operator delete(__p);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v26);
  }

  return v44;
}

void sub_186103864(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
    if (!v26)
    {
      goto LABEL_6;
    }
  }

  else if (!v26)
  {
    goto LABEL_6;
  }

  std::__shared_weak_count::__release_shared[abi:fe200100](v26);
LABEL_6:
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v25);
  }

  _Unwind_Resume(exception_object);
}

void XMPMeta2::DeleteLocalizedText(XMPMeta2 *this, char *a2, char *a3, char *__s, char *a5)
{
  if (!a2 || !a3 || !__s || !a5)
  {
    XMPMeta2::DeleteLocalizedText();
  }

  v71[0] = 0;
  v71[1] = 0;
  v72 = 0;
  std::string::basic_string[abi:fe200100]<0>(v71, __s);
  v69[0] = 0;
  v69[1] = 0;
  v70 = 0;
  std::string::basic_string[abi:fe200100]<0>(v69, a5);
  NormalizeLangValue(v71);
  v9 = v69;
  NormalizeLangValue(v69);
  if (v72 >= 0)
  {
    v10 = v71;
  }

  else
  {
    v10 = v71[0];
  }

  if (v70 < 0)
  {
    v9 = v69[0];
  }

  memset(v68, 0, sizeof(v68));
  ExpandXPath(a2, a3, v68);
  v66 = 0;
  v67 = 0;
  v64 = 0;
  v65 = 0;
  v63 = 0;
  XMPUtils::FindCnstNode(this + 50, v68, &v66, &v63, 0);
  if (v11)
  {
    (*v66)[31](&v61);
    v13 = v61;
    v12 = v62;
    v14 = (*(*(v61 + *(*v61 - 688)) + 560))(v61 + *(*v61 - 688));
    (*(*(v13 + *(*v13 - 544)) + 248))(&v61);
    v15 = ChooseIXMPLocalizedText(&v61, &v63, v10, v9, &v64);
    if (v62)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v62);
    }

    v61 = 0;
    v62 = 0;
    v16 = v64;
    (*(*v64 + 232))(&v59, v64);
    (*(*v59 + 504))(&v61);
    if (v60)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v60);
    }

    if (v15 != 1)
    {
      goto LABEL_89;
    }

    if (!v14)
    {
LABEL_22:
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 7;
      exception[1] = "XMP_Enforce failed: (itemIndex <= arraySize) in /Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCore/source/XMPMeta2-GetSet.cpp at line 882";
      *(exception + 16) = 0;
    }

    v17 = 1;
    while (1)
    {
      (*(*v13 + 656))(&v59, v13, v17);
      v18 = v59;
      if (v60)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v60);
      }

      if (v18 == v16)
      {
        break;
      }

      if (++v17 > v14)
      {
        goto LABEL_22;
      }
    }

    if ((*(*v16 + 184))(v16))
    {
      v20 = strlen(xmlNameSpace);
      (*(*v16 + 128))(&v57, v16, xmlNameSpace, v20, "lang", -1);
      (*(*v57 + 232))(&v59);
      v22 = v59;
      v21 = v60;
      v59 = 0;
      v60 = 0;
      if (v58)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v58);
      }

      (*(*v22 + 504))(&v59, v22);
      v23 = (*(*v59 + 192))(v59);
      v24 = strcmp(v23, "x-default");
      if (v60)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v60);
      }

      if (v17 != 1 && !v24)
      {
        v59 = 0;
        v60 = 0;
        (*(*v13 + 656))(&v59, v13, v17);
        (*(*v13 + 656))(&v57, v13, 1);
        v26 = v57;
        v25 = v58;
        v27 = v60;
        v57 = v59;
        v58 = v60;
        v59 = v26;
        v60 = v25;
        if (v58)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v27);
          v25 = v60;
        }

        if (v25)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v25);
        }

        v17 = 1;
        goto LABEL_44;
      }

      if (!v24)
      {
LABEL_44:
        if (v14 == 1)
        {
          v30 = 0;
          v31 = 2;
          goto LABEL_78;
        }

        v30 = 0;
        v31 = 2;
        while (1)
        {
          v59 = 0;
          v60 = 0;
          (*(*v13 + 656))(&v57, v13, v31);
          (*(*v57 + 232))(&v59);
          if (v58)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v58);
          }

          (*(*v59 + 504))(&v57);
          v32 = (*(*v57 + 192))(v57);
          v33 = (*(*v61 + 192))(v61);
          v34 = strcmp(v32, v33);
          if (v58)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v58);
          }

          if (!v34)
          {
            (*(*v13 + 656))(&v57, v13, v31);
            v35 = v58;
            v57 = 0;
            v58 = 0;
            if (v30)
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v30);
              if (v58)
              {
                std::__shared_weak_count::__release_shared[abi:fe200100](v58);
              }
            }

            v30 = v35;
          }

          if (v60)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v60);
          }

          if (!v34)
          {
            goto LABEL_77;
          }

          if (++v31 > v14)
          {
            goto LABEL_78;
          }
        }
      }
    }

    else
    {
      v21 = 0;
    }

    if (v17 < 2)
    {
      v30 = 0;
      goto LABEL_83;
    }

    v59 = 0;
    v60 = 0;
    (*(*v13 + 656))(&v55, v13, 1);
    (*(*v55 + 232))(&v57);
    (*(*v57 + 504))(&v59);
    if (v58)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v58);
    }

    if (v56)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v56);
    }

    v28 = (*(*v59 + 192))(v59);
    v29 = (*(*v61 + 192))(v61);
    if (!strcmp(v28, v29))
    {
      (*(*v13 + 656))(&v53, v13, 1);
      v36 = strlen(xmlNameSpace);
      (*(*v53 + 128))(&v55, v53, xmlNameSpace, v36, "lang", -1);
      (*(*v55 + 232))(&v57);
      v37 = v57;
      v38 = v58;
      v57 = 0;
      v58 = 0;
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v21);
        if (v58)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v58);
        }
      }

      if (v56)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v56);
      }

      if (v54)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v54);
      }

      (*(*v37 + 504))(&v57, v37);
      v39 = (*(*v57 + 192))(v57);
      v40 = strcmp(v39, "x-default");
      if (v58)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v58);
      }

      if (v40)
      {
        v30 = 0;
        v31 = 0;
      }

      else
      {
        (*(*v13 + 656))(&v57, v13, 1);
        v30 = v58;
        v31 = 1;
      }

      v21 = v38;
    }

    else
    {
      v30 = 0;
      v31 = 0;
    }

    if (v60)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v60);
    }

LABEL_77:
    if (v31)
    {
LABEL_78:
      v41 = *(*v13 + 680);
      if (v17 >= v31)
      {
        v41(&v45, v13, v17);
        if (v46)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v46);
        }

        (*(*v13 + 680))(&v43, v13, v31);
        v42 = v44;
        if (!v44)
        {
          goto LABEL_85;
        }
      }

      else
      {
        v41(&v49, v13, v31);
        if (v50)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v50);
        }

        (*(*v13 + 680))(&v47, v13, v17);
        v42 = v48;
        if (!v48)
        {
          goto LABEL_85;
        }
      }

      goto LABEL_84;
    }

LABEL_83:
    (*(*v13 + 680))(&v51, v13, v17);
    v42 = v52;
    if (!v52)
    {
LABEL_85:
      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v30);
      }

      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v21);
      }

LABEL_89:
      if (v62)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v62);
      }

      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v12);
      }

      goto LABEL_93;
    }

LABEL_84:
    std::__shared_weak_count::__release_shared[abi:fe200100](v42);
    goto LABEL_85;
  }

LABEL_93:
  if (v65)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v65);
  }

  if (v67)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v67);
  }

  v66 = v68;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&v66);
  if (SHIBYTE(v70) < 0)
  {
    operator delete(v69[0]);
  }

  if (SHIBYTE(v72) < 0)
  {
    operator delete(v71[0]);
  }
}

void sub_1861044DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31)
{
  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a26);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v32);
  }

  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a28);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v31);
  }

  if (a31)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a31);
  }

  v35 = *(v33 - 160);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v35);
  }

  *(v33 - 168) = v33 - 152;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100]((v33 - 168));
  if (*(v33 - 105) < 0)
  {
    operator delete(*(v33 - 128));
  }

  if (*(v33 - 81) < 0)
  {
    operator delete(*(v33 - 104));
  }

  _Unwind_Resume(a1);
}

void XMPMeta2::SetLocalizedText(XMPMeta2 *this, char *a2, char *a3, char *__s, char *a5, char *a6)
{
  if (!a2 || !a3 || !__s || !a5)
  {
    XMPMeta2::SetLocalizedText();
  }

  v88[0] = 0;
  v88[1] = 0;
  v89 = 0;
  std::string::basic_string[abi:fe200100]<0>(v88, __s);
  v86[0] = 0;
  v86[1] = 0;
  v87 = 0;
  std::string::basic_string[abi:fe200100]<0>(v86, a5);
  NormalizeLangValue(v88);
  NormalizeLangValue(v86);
  if (v89 >= 0)
  {
    v11 = v88;
  }

  else
  {
    v11 = v88[0];
  }

  if (v87 >= 0)
  {
    v12 = v86;
  }

  else
  {
    v12 = v86[0];
  }

  __s1 = v12;
  v83 = 0;
  v84 = 0;
  v85 = 0;
  ExpandXPath(a2, a3, &v83);
  v81 = 0;
  v82 = 0;
  v80 = 0uLL;
  v79 = 0;
  XMPUtils::FindCnstNode(this + 50, &v83, &v81, 0, 0);
  if ((v13 & 1) == 0)
  {
    memset(v78, 0, sizeof(v78));
    v14 = v84;
    if (v83 == v84)
    {
      __break(1u);
      return;
    }

    if (*(v84 - 9) < 0)
    {
      std::string::__init_copy_ctor_external(v78, *(v84 - 32), *(v84 - 24));
    }

    else
    {
      v15 = *(v84 - 32);
      *&v78[16] = *(v84 - 16);
      *v78 = v15;
    }

    *&v78[24] = *(v14 - 8);
    memset(&v77, 0, sizeof(v77));
    if ((v78[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v77, *v78, *&v78[8]);
    }

    else
    {
      v77 = *v78;
    }

    LODWORD(v76) = 0;
    XMPUtils::FindNode(this + 50, &v83, 1, 0xA00u, &v81, &v76, 0);
    if ((v16 & 1) == 0)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 102;
      exception[1] = "Failure creating array node";
      *(exception + 16) = 0;
    }

    if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v77.__r_.__value_.__l.__data_);
    }

    if ((v78[23] & 0x80000000) != 0)
    {
      operator delete(*v78);
    }
  }

  (*(*v81 + 248))(v78);
  v17 = *v78;
  v80 = *v78;
  if (*v78)
  {
    v18 = *v78 + *(**v78 - 544);
  }

  else
  {
    v18 = 0;
  }

  *v78 = v18;
  *&v78[8] = *(&v17 + 1);
  if (*(&v17 + 1))
  {
    atomic_fetch_add_explicit((*(&v17 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  IXMPOptions = XMPUtils::GetIXMPOptions(v78);
  v79 = IXMPOptions;
  if (*&v78[8])
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*&v78[8]);
  }

  v20 = (*(*(v17 + *(*v17 - 688)) + 560))(v17 + *(*v17 - 688));
  if ((IXMPOptions & 0x1000) == 0)
  {
    if ((IXMPOptions & 0x800) == 0 || v20)
    {
      v67 = __cxa_allocate_exception(0x18uLL);
      *v67 = 102;
      v67[1] = "Localized text array is not alt-text";
      *(v67 + 16) = 0;
    }

    v79 = IXMPOptions | 0x1000;
  }

  *v78 = 0uLL;
  v21 = (*(*(v17 + *(*v17 - 688)) + 560))(v17 + *(*v17 - 688));
  if (v21)
  {
    v22 = v21;
    v70 = v11;
    v23 = 0;
    v24 = 0;
    for (i = 1; i <= v22; ++i)
    {
      *&v77.__r_.__value_.__l.__data_ = 0uLL;
      (*(*v17 + 656))(&v77, v17, i);
      v76 = *&v77.__r_.__value_.__l.__data_;
      if (v77.__r_.__value_.__l.__size_)
      {
        atomic_fetch_add_explicit((v77.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
      }

      if ((XMPUtils::GetIXMPOptions(&v76) & 0x40) == 0)
      {
        __assert_rtn("SetLocalizedText", "XMPMeta2-GetSet.cpp", 1011, "(((XMPUtils::GetIXMPOptions(currItem)) & kXMP_PropHasLang) != 0)");
      }

      if (*(&v76 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v76 + 1));
      }

      if (((*(*v77.__r_.__value_.__l.__data_ + 184))(v77.__r_.__value_.__r.__words[0]) & 1) == 0)
      {
        v65 = __cxa_allocate_exception(0x18uLL);
        *v65 = 102;
        v65[1] = "Language qualifier must be first";
        *(v65 + 16) = 0;
      }

      (*(*v77.__r_.__value_.__l.__data_ + 112))(&v72);
      (*(*v72 + 48))(&v74);
      (*(*v74 + 232))(&v76);
      v26 = *(&v76 + 1);
      v27 = v76;
      v76 = 0uLL;
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v24);
        if (*(&v76 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v76 + 1));
        }
      }

      if (v75)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v75);
      }

      if (v73)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v73);
      }

      (*(*(v27 + *(*v27 - 544)) + 72))(&v76);
      v28 = (*(*v76 + 192))(v76);
      v29 = strcmp(v28, "lang");
      if (*(&v76 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v76 + 1));
      }

      if (v29)
      {
        v66 = __cxa_allocate_exception(0x18uLL);
        *v66 = 102;
        v66[1] = "Language qualifier must be first";
        *(v66 + 16) = 0;
      }

      (*(*v27 + 504))(&v76, v27);
      v30 = (*(*v76 + 192))(v76);
      v31 = strcmp(v30, "x-default");
      if (*(&v76 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v76 + 1));
      }

      if (!v31)
      {
        v32 = *&v77.__r_.__value_.__l.__data_;
        if (v77.__r_.__value_.__l.__size_)
        {
          atomic_fetch_add_explicit((v77.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
        }

        v33 = *&v78[8];
        *v78 = v32;
        if (v33)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v33);
        }

        v23 = 1;
      }

      if (v77.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v77.__r_.__value_.__l.__size_);
      }

      if (!v31)
      {
        break;
      }

      v24 = v26;
    }

    v11 = v70;
    if (i != 1 && (v23 & 1) != 0)
    {
      (*(*v27 + 504))(&v77, v27);
      v34 = (*(*v77.__r_.__value_.__l.__data_ + 192))(v77.__r_.__value_.__r.__words[0]);
      if (strcmp(v34, "x-default"))
      {
        __assert_rtn("SetLocalizedText", "XMPMeta2-GetSet.cpp", 1028, "(strcmp((firstQualifier->GetValue()->c_str()),(x-default)) == 0)");
      }

      if (v77.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v77.__r_.__value_.__l.__size_);
      }

      (*(*v17 + 656))(&v74, v17, i);
      v35 = strlen(xmlNameSpace);
      (*(*v74 + 128))(&v76, v74, xmlNameSpace, v35, "lang", -1);
      (*(*v76 + 232))(&v77);
      size = v77.__r_.__value_.__l.__size_;
      *&v77.__r_.__value_.__l.__data_ = 0uLL;
      if (*(&v76 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v76 + 1));
      }

      if (v75)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v75);
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v26);
      }

      v26 = size;
    }
  }

  else
  {
    v23 = 0;
    v26 = 0;
  }

  *&v77.__r_.__value_.__l.__data_ = 0uLL;
  if (*v78 && (*(**v78 + 40))(*v78) == 1)
  {
    (*(**v78 + 232))(&v74);
    (*(*v74 + 504))(&v76);
    v37 = *(&v76 + 1);
    v38 = v76;
    v76 = 0uLL;
    if (v75)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v75);
    }
  }

  else
  {
    v38 = 0;
    v37 = 0;
  }

  (*(*(v17 + *(*v17 - 544)) + 248))(&v76);
  v39 = ChooseIXMPLocalizedText(&v76, &v79, v11, __s1, &v77);
  if (*(&v76 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v76 + 1));
  }

  if (v77.__r_.__value_.__r.__words[0] && (*(*v77.__r_.__value_.__l.__data_ + 40))(v77.__r_.__value_.__r.__words[0]) == 1)
  {
    (*(*v77.__r_.__value_.__l.__data_ + 232))(&v74);
    (*(*v74 + 504))(&v76);
    v40 = *(&v76 + 1);
    v41 = v76;
    v76 = 0uLL;
    if (v75)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v75);
    }
  }

  else
  {
    v41 = 0;
    v40 = 0;
  }

  v42 = strcmp(__s1, "x-default");
  if (v39 > 2)
  {
    switch(v39)
    {
      case 3:
        AppendIXMPLangItem(&v80);
      case 4:
        if ((*(*(v17 + *(*v17 - 688)) + 560))(v17 + *(*v17 - 688)) == 1)
        {
          v76 = *v78;
          if (*&v78[8])
          {
            atomic_fetch_add_explicit((*&v78[8] + 8), 1uLL, memory_order_relaxed);
          }

          v51 = XMPUtils::GetIXMPOptions(&v76);
          XMPUtils::SetNode(v78, a6, v51);
          if (*(&v76 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](*(&v76 + 1));
          }
        }

        AppendIXMPLangItem(&v80);
      case 5:
        AppendIXMPLangItem(&v80);
    }

    goto LABEL_192;
  }

  if (!v39)
  {
    AppendIXMPLangItem(&v80);
  }

  if (v39 != 1)
  {
    if (v39 == 2)
    {
      if (*v78 != 0 && (v23 & 1) != 0 && *v78 != v77.__r_.__value_.__r.__words[0])
      {
        v43 = (*(*v38 + 192))(v38);
        v44 = (*(*v41 + 192))(v41);
        if (!strcmp(v43, v44))
        {
          v76 = *v78;
          if (*&v78[8])
          {
            atomic_fetch_add_explicit((*&v78[8] + 8), 1uLL, memory_order_relaxed);
          }

          v45 = XMPUtils::GetIXMPOptions(&v76);
          XMPUtils::SetNode(v78, a6, v45);
          if (*(&v76 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](*(&v76 + 1));
          }
        }
      }

      v76 = *&v77.__r_.__value_.__l.__data_;
      if (v77.__r_.__value_.__l.__size_)
      {
        atomic_fetch_add_explicit((v77.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
      }

      goto LABEL_102;
    }

LABEL_192:
    v69 = __cxa_allocate_exception(0x18uLL);
    *v69 = 9;
    v69[1] = "Unexpected result from ChooseLocalizedText";
    *(v69 + 16) = 0;
  }

  if (!v42)
  {
    if (!*v78 || ((v23 ^ 1) & 1) != 0 || *v78 != v77.__r_.__value_.__r.__words[0])
    {
      __assert_rtn("SetLocalizedText", "XMPMeta2-GetSet.cpp", 1065, "xdItem && haveXDefault && (xdItem.get() == itemNode.get())");
    }

    v52 = a6;
    v53 = (*(*(v17 + *(*v17 - 688)) + 560))(v17 + *(*v17 - 688));
    if (v53)
    {
      v54 = v53;
      for (j = 1; j <= v54; ++j)
      {
        v76 = 0uLL;
        (*(*v17 + 656))(&v74, v17, j);
        (*(*v74 + 232))(&v76);
        if (v75)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v75);
        }

        if (v76)
        {
          v56 = v76 + *(*v76 - 544);
        }

        else
        {
          v56 = 0;
        }

        if (v56 != *v78)
        {
          (*(*v76 + 504))(&v74);
          v57 = (*(*v74 + 192))(v74);
          v58 = (*(*v38 + 192))(v38);
          v59 = strcmp(v57, v58);
          if (v75)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v75);
          }

          if (!v59)
          {
            v60 = v76;
            if (v76)
            {
              v61 = v76 + *(*v76 - 544);
            }

            else
            {
              v61 = 0;
            }

            v74 = v61;
            v75 = *(&v76 + 1);
            if (*(&v76 + 1))
            {
              atomic_fetch_add_explicit((*(&v76 + 1) + 8), 1uLL, memory_order_relaxed);
            }

            if (v60)
            {
              v62 = v60 + *(*v60 - 544);
            }

            else
            {
              v62 = 0;
            }

            v72 = v62;
            v73 = *(&v76 + 1);
            if (*(&v76 + 1))
            {
              atomic_fetch_add_explicit((*(&v76 + 1) + 8), 1uLL, memory_order_relaxed);
            }

            v63 = XMPUtils::GetIXMPOptions(&v72);
            XMPUtils::SetNode(&v74, v52, v63);
            if (v73)
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v73);
            }

            if (v75)
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v75);
            }
          }
        }

        if (*(&v76 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v76 + 1));
        }
      }
    }

    v76 = *v78;
    if (*&v78[8])
    {
      atomic_fetch_add_explicit((*&v78[8] + 8), 1uLL, memory_order_relaxed);
    }

    v64 = XMPUtils::GetIXMPOptions(&v76);
    v47 = *(&v17 + 1);
    XMPUtils::SetNode(v78, v52, v64);
    goto LABEL_160;
  }

  if (*v78 != 0 && (v23 & 1) != 0 && *v78 != v77.__r_.__value_.__r.__words[0])
  {
    v48 = (*(*v38 + 192))(v38);
    v49 = (*(*v41 + 192))(v41);
    if (!strcmp(v48, v49))
    {
      v76 = *v78;
      if (*&v78[8])
      {
        atomic_fetch_add_explicit((*&v78[8] + 8), 1uLL, memory_order_relaxed);
      }

      v50 = XMPUtils::GetIXMPOptions(&v76);
      XMPUtils::SetNode(v78, a6, v50);
      if (*(&v76 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v76 + 1));
      }
    }
  }

  v76 = *&v77.__r_.__value_.__l.__data_;
  if (v77.__r_.__value_.__l.__size_)
  {
    atomic_fetch_add_explicit((v77.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
  }

LABEL_102:
  v46 = XMPUtils::GetIXMPOptions(&v76);
  v47 = *(&v17 + 1);
  XMPUtils::SetNode(&v77, a6, v46);
LABEL_160:
  if (*(&v76 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v76 + 1));
  }

  if ((v23 & 1) == 0 && (*(*(v17 + *(*v17 - 688)) + 560))(v17 + *(*v17 - 688)) == 1)
  {
    AppendIXMPLangItem(&v80);
  }

  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v40);
  }

  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v37);
  }

  if (v77.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v77.__r_.__value_.__l.__size_);
  }

  if (*&v78[8])
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*&v78[8]);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v26);
    v47 = *(&v80 + 1);
  }

  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v47);
  }

  if (v82)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v82);
  }

  *v78 = &v83;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](v78);
  if (SHIBYTE(v87) < 0)
  {
    operator delete(v86[0]);
  }

  if (SHIBYTE(v89) < 0)
  {
    operator delete(v88[0]);
  }
}

void sub_186105814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, void *a19, std::__shared_weak_count *a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *__p, std::__shared_weak_count *a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36, uint64_t a37, std::__shared_weak_count *a38)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a18);
  }

  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v40);
  }

  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v39);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a20);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a27);
  }

  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v38);
  }

  if (a36)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a36);
  }

  if (a38)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a38);
  }

  __p = (v41 - 160);
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&__p);
  if (*(v41 - 113) < 0)
  {
    operator delete(*(v41 - 136));
  }

  if (*(v41 - 89) < 0)
  {
    operator delete(*(v41 - 112));
  }

  _Unwind_Resume(a1);
}

void AppendIXMPLangItem(void *a1)
{
  v9[2] = 0;
  v9[3] = 0;
  (*(*(*a1 + *(**a1 - 544)) + 88))(v9);
  v2 = (*(*v9[0] + 192))(v9[0]);
  (*(*(*a1 + *(**a1 - 544)) + 88))(&v8);
  v3 = (*(*v8 + 208))(v8);
  (*(*(*a1 + *(**a1 - 544)) + 72))(&v7);
  v4 = (*(*v7 + 192))(v7);
  (*(*(*a1 + *(**a1 - 544)) + 72))(&v6);
  v5 = (*(*v6 + 208))(v6);
  AdobeXMPCore::ISimpleNode_v1::CreateSimpleNode(v2, v3, v4, v5, "", 0xFFFFFFFFFFFFFFFFLL);
}

void sub_186106098(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a16);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a18);
  }

  _Unwind_Resume(exception_object);
}

void XMPMeta2::DumpObject(XMPMeta2 *this, unsigned int (*a2)(void *, const char *, uint64_t, double), void *a3)
{
  if (!a2)
  {
    XMPMeta2::DumpObject();
  }

  v39 = 0uLL;
  DefaultNameSpacePrefixMap = AdobeXMPCore::INameSpacePrefixMap_v1::GetDefaultNameSpacePrefixMap(&v39);
  if (a2(a3, "Dumping XMPMeta object ", 24, DefaultNameSpacePrefixMap))
  {
    goto LABEL_85;
  }

  (*(**(this + 50) + 736))(&v34);
  v7 = (*(*v34.__r_.__value_.__l.__data_ + 192))(v34.__r_.__value_.__r.__words[0]);
  std::string::basic_string[abi:fe200100]<0>(__p, v7);
  DumpClearString(__p, a2, a3);
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p[0]);
  }

  if (v34.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v34.__r_.__value_.__l.__size_);
  }

  if ((a2)(a3, "  ", 3))
  {
    goto LABEL_85;
  }

  v8 = *(this + 50);
  if (v8)
  {
    v9 = v8 + *(*v8 - 544);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(this + 51);
  __p[0] = v9;
  __p[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
  }

  IXMPOptions = XMPUtils::GetIXMPOptions(__p);
  DumpNodeOptions(IXMPOptions, a2, a3);
  if (__p[1])
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](__p[1]);
  }

  if ((a2)(a3, "\n", 1))
  {
    goto LABEL_85;
  }

  v12 = *(this + 50) + *(**(this + 50) - 544);
  if ((*(*v12 + 184))(v12))
  {
    if ((a2)(a3, "** bad root qualifiers **", 25) || (a2)(a3, "\n", 1))
    {
      goto LABEL_85;
    }

    __p[0] = 0;
    __p[1] = 0;
    (*(*(*(this + 50) + *(**(this + 50) - 544)) + 112))(__p);
    for (i = __p[0]; __p[0]; i = __p[0])
    {
      while (1)
      {
        (*(*i + 48))(v28);
        *&v34.__r_.__value_.__l.__data_ = *v28;
        v28[0] = 0;
        v28[1] = 0;
        DumpIXMPPropertyTree(&v34, 3, 0, a2, a3);
        if (v34.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v34.__r_.__value_.__l.__size_);
        }

        if (v28[1])
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v28[1]);
        }

        (*(*__p[0] + 56))(&v34);
        v14 = *&v34.__r_.__value_.__l.__data_;
        *&v34.__r_.__value_.__l.__data_ = 0uLL;
        v15 = __p[1];
        *__p = v14;
        if (v15)
        {
          break;
        }

        i = v14;
        if (!v14)
        {
          goto LABEL_30;
        }
      }

      std::__shared_weak_count::__release_shared[abi:fe200100](v15);
      if (v34.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v34.__r_.__value_.__l.__size_);
      }
    }

LABEL_30:
    if (__p[1])
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](__p[1]);
    }
  }

  __p[1] = 0;
  v38 = 0;
  __p[0] = &__p[1];
  if (!(*(*(*(this + 50) + *(**(this + 50) - 688)) + 560))(*(this + 50) + *(**(this + 50) - 688)))
  {
    goto LABEL_84;
  }

  v36 = 0uLL;
  (*(*(*(this + 50) + *(**(this + 50) - 688)) + 552))(&v36, *(this + 50) + *(**(this + 50) - 688));
  v16 = v36;
  if (!v36)
  {
    goto LABEL_82;
  }

  while (1)
  {
    v35 = 0uLL;
    (*(*v16 + 48))(&v35);
    (*(*v35 + 88))(v28);
    v17 = (*(*v28[0] + 192))(v28[0]);
    std::string::basic_string[abi:fe200100]<0>(&v34, v17);
    v18 = std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::__count_unique<std::string>(__p, &v34.__r_.__value_.__l.__data_);
    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

    if (v28[1])
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v28[1]);
    }

    if (v18)
    {
      goto LABEL_65;
    }

    if ((a2)(a3, "\n", 1) || (a2)(a3, "   ", 3))
    {
      goto LABEL_80;
    }

    memset(&v34, 0, sizeof(v34));
    v19 = v39;
    (*(*v35 + 88))(&v32);
    v20 = (*(*v32 + 192))(v32);
    (*(*v35 + 88))(&v30);
    v21 = (*(*v30 + 26))(v30);
    (*(*v19 + 88))(v28, v19, v20, v21);
    v22 = (*(*v28[0] + 192))(v28[0]);
    std::string::basic_string[abi:fe200100]<0>(&v34, v22);
    if (v28[1])
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v28[1]);
    }

    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v31);
    }

    if (v33)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v33);
    }

    std::string::append(&v34, ":");
    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &v34;
    }

    else
    {
      v23 = v34.__r_.__value_.__r.__words[0];
    }

    std::string::basic_string[abi:fe200100]<0>(v28, v23);
    DumpClearString(v28, a2, a3);
    if (v29 < 0)
    {
      operator delete(v28[0]);
    }

    if ((a2)(a3, "  ", 2))
    {
      break;
    }

    (*(*v35 + 88))(&v32);
    v24 = (*(*v32 + 192))(v32);
    std::string::basic_string[abi:fe200100]<0>(v28, v24);
    DumpClearString(v28, a2, a3);
    if (v29 < 0)
    {
      operator delete(v28[0]);
    }

    if (v33)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v33);
    }

    if ((a2)(a3, "  ", 2))
    {
      break;
    }

    DumpNodeOptions(0x80000000, a2, a3);
    if ((a2)(a3, "\n", 1))
    {
      break;
    }

    (*(*v35 + 88))(&v32);
    v25 = (*(*v32 + 192))(v32);
    std::string::basic_string[abi:fe200100]<0>(v28, v25);
    v30 = v28;
    *(std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(__p, v28) + 56) = 1;
    if (v29 < 0)
    {
      operator delete(v28[0]);
    }

    if (v33)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v33);
    }

    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

LABEL_65:
    *&v34.__r_.__value_.__l.__data_ = v35;
    if (*(&v35 + 1))
    {
      atomic_fetch_add_explicit((*(&v35 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    DumpIXMPPropertyTree(&v34, 2, 0, a2, a3);
    if (v34.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v34.__r_.__value_.__l.__size_);
    }

    if (*(&v35 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](*(&v35 + 1));
    }

    (*(*v36 + 56))(&v34);
    v26 = *&v34.__r_.__value_.__l.__data_;
    *&v34.__r_.__value_.__l.__data_ = 0uLL;
    v27 = *(&v36 + 1);
    v36 = v26;
    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v27);
      if (v34.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v34.__r_.__value_.__l.__size_);
      }

      v16 = v36;
    }

    else
    {
      v16 = v26;
    }

    if (!v16)
    {
      goto LABEL_82;
    }
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

LABEL_80:
  if (*(&v35 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v35 + 1));
  }

LABEL_82:
  if (*(&v36 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v36 + 1));
  }

LABEL_84:
  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(__p, __p[1]);
LABEL_85:
  if (*(&v39 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v39 + 1));
  }
}

void sub_186106B18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  v38 = *(v36 - 104);
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v38);
  }

  _Unwind_Resume(exception_object);
}

void DumpIXMPPropertyTree(uint64_t *a1, int a2, uint64_t a3, uint64_t (*a4)(uint64_t, unsigned __int8 *, uint64_t), void *a5)
{
  v83 = *MEMORY[0x1E69E9840];
  if (!*a1)
  {
    return;
  }

  *__str = 0u;
  v82 = 0u;
  IXMPOptions = XMPUtils::GetIXMPOptions(a1);
  v79 = 0uLL;
  DefaultNameSpacePrefixMap = AdobeXMPCore::INameSpacePrefixMap_v1::GetDefaultNameSpacePrefixMap(&v79);
  v76 = 0;
  v77 = 0;
  v78 = 0;
  v12 = v79;
  (*(**a1 + 88))(&v73, DefaultNameSpacePrefixMap);
  v13 = (*(*v73.__r_.__value_.__l.__data_ + 192))(v73.__r_.__value_.__r.__words[0]);
  (*(**a1 + 88))(&v80);
  v14 = (*(*v80 + 208))(v80);
  (*(*v12 + 88))(__p, v12, v13, v14);
  v15 = (*(*__p[0] + 192))(__p[0]);
  std::string::basic_string[abi:fe200100]<0>(&v76, v15);
  if (__p[1])
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](__p[1]);
  }

  if (*(&v80 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v80 + 1));
  }

  if (v73.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v73.__r_.__value_.__l.__size_);
  }

  __p[0] = 0;
  __p[1] = 0;
  v75 = 0;
  if (v78 >= 0)
  {
    v16 = HIBYTE(v78);
  }

  else
  {
    v16 = v77;
  }

  memset(&v73, 0, sizeof(v73));
  v17 = &v73;
  std::string::basic_string[abi:fe200100](&v73, v16 + 1);
  if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v17 = v73.__r_.__value_.__r.__words[0];
  }

  if (v16)
  {
    if (v78 >= 0)
    {
      v18 = &v76;
    }

    else
    {
      v18 = v76;
    }

    memmove(v17, v18, v16);
  }

  *(&v17->__r_.__value_.__l.__data_ + v16) = 58;
  (*(**a1 + 72))(&v80);
  v19 = (*(*v80 + 192))(v80);
  v20 = std::string::append(&v73, v19);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v75 = v20->__r_.__value_.__r.__words[2];
  *__p = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (*(&v80 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v80 + 1));
  }

  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
    if (!a2)
    {
      goto LABEL_27;
    }

LABEL_24:
    v22 = a2;
    while (!a4(a5, "   ", 3))
    {
      if (!--v22)
      {
        goto LABEL_27;
      }
    }

    goto LABEL_172;
  }

  if (a2)
  {
    goto LABEL_24;
  }

LABEL_27:
  if (a3)
  {
    if (a4(a5, "[", 1))
    {
      goto LABEL_172;
    }

    snprintf(__str, 0x20uLL, "%ld", a3);
    HIBYTE(v82) = 0;
    v23 = strlen(__str);
    if (a4(a5, __str, v23) || a4(a5, "]", 1))
    {
      goto LABEL_172;
    }
  }

  else
  {
    if ((IXMPOptions & 0x20) != 0 && a4(a5, "? ", 2))
    {
      goto LABEL_172;
    }

    DumpClearString(__p, a4, a5);
  }

  if ((IXMPOptions & 0x1F00) != 0)
  {
    goto LABEL_180;
  }

  if (a4(a5, " = ", 4))
  {
    goto LABEL_172;
  }

  (*(**a1 + 232))(&v80);
  v32 = *(&v80 + 1);
  (*(*v80 + 504))(&v71);
  v33 = (*(*v71 + 192))(v71);
  std::string::basic_string[abi:fe200100]<0>(&v73, v33);
  DumpClearString(&v73, a4, a5);
  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  if (v72)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v72);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v32);
  }

  if (a4(a5, "", 1))
  {
    goto LABEL_172;
  }

  if (IXMPOptions)
  {
LABEL_180:
    if (a4(a5, "  ", 2))
    {
      goto LABEL_172;
    }

    DumpNodeOptions(IXMPOptions, a4, a5);
    v24 = (IXMPOptions & 0x40) == 0;
    if ((IXMPOptions & 0x40) != 0)
    {
      (*(**a1 + 112))(&v73);
      size = v73.__r_.__value_.__l.__size_;
      (*(*v73.__r_.__value_.__l.__data_ + 48))(&v73);
      v26 = v73.__r_.__value_.__l.__size_;
      (*(*v73.__r_.__value_.__l.__data_ + 232))(&v73);
      v27 = v73.__r_.__value_.__l.__size_;
      v28 = v73.__r_.__value_.__r.__words[0];
      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v26);
      }

      if (size)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](size);
      }

      if (!(*(**a1 + 184))())
      {
        goto LABEL_181;
      }

      (*(*(v28 + *(*v28 - 544)) + 72))(&v73);
      v29 = (*(*v73.__r_.__value_.__l.__data_ + 192))(v73.__r_.__value_.__r.__words[0]);
      v30 = strcmp(v29, "lang");
      if (v73.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v73.__r_.__value_.__l.__size_);
      }

      if (v30)
      {
LABEL_181:
        if (a4(a5, "  ** bad lang flag **", 21))
        {
          goto LABEL_170;
        }
      }

      v24 = (IXMPOptions & 0x40) == 0;
      if (v27)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v27);
      }
    }

    if ((IXMPOptions & 0x1F00) != 0)
    {
      if ((IXMPOptions & 0x200) != 0)
      {
        if ((IXMPOptions & 0x100) == 0)
        {
          goto LABEL_75;
        }
      }

      else if ((IXMPOptions & 0x1F00) == 0x100)
      {
        goto LABEL_75;
      }

      v31 = a4(a5, "  ** bad comp flags **", 22);
      goto LABEL_74;
    }
  }

  else
  {
    v24 = 1;
  }

  if ((*(**a1 + 40))() == 2)
  {
    (*(**a1 + 248))(&v73);
    v34 = v73.__r_.__value_.__l.__size_;
    v35 = (*(*(v73.__r_.__value_.__r.__words[0] + *(*v73.__r_.__value_.__l.__data_ - 688)) + 560))(v73.__r_.__value_.__r.__words[0] + *(*v73.__r_.__value_.__l.__data_ - 688));
    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v34);
    }
  }

  else
  {
    v35 = 0;
  }

  if ((*(**a1 + 40))() == 4)
  {
    (*(**a1 + 240))(&v73);
    v36 = v73.__r_.__value_.__l.__size_;
    v35 = (*(*(v73.__r_.__value_.__r.__words[0] + *(*v73.__r_.__value_.__l.__data_ - 688)) + 560))(v73.__r_.__value_.__r.__words[0] + *(*v73.__r_.__value_.__l.__data_ - 688));
    if (v36)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v36);
    }
  }

  if (v35)
  {
    v31 = a4(a5, "  ** bad children **", 20);
LABEL_74:
    if (v31)
    {
      goto LABEL_172;
    }
  }

LABEL_75:
  if (!a4(a5, "\n", 1))
  {
    if ((*(**a1 + 184))())
    {
      (*(**a1 + 112))(&v73);
      v27 = v73.__r_.__value_.__l.__size_;
      v37 = v73.__r_.__value_.__r.__words[0];
      if (v73.__r_.__value_.__r.__words[0])
      {
        v69 = 0;
        while (1)
        {
          v80 = 0uLL;
          (*(*v37 + 48))(&v73, v37);
          v80 = *&v73.__r_.__value_.__l.__data_;
          v38 = XMPUtils::GetIXMPOptions(&v80);
          (*(*v80 + 56))(&v73);
          v39 = v73.__r_.__value_.__l.__size_;
          v68 = v38;
          if (v73.__r_.__value_.__r.__words[0])
          {
            v67 = v27;
            v40 = v24;
            (*(*v80 + 56))(&v73);
            v41 = v73.__r_.__value_.__l.__size_;
            (*(*v73.__r_.__value_.__l.__data_ + 56))(&v73);
            v42 = v73.__r_.__value_.__r.__words[0] != *a1;
            if (v73.__r_.__value_.__l.__size_)
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v73.__r_.__value_.__l.__size_);
            }

            if (v41)
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v41);
            }

            v24 = v40;
            v27 = v67;
          }

          else
          {
            v42 = 0;
          }

          if (v39)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v39);
          }

          if (v42 && a4(a5, "** bad parent link => ", 22))
          {
            break;
          }

          (*(*v80 + 72))(&v73);
          v43 = (*(*v73.__r_.__value_.__l.__data_ + 192))(v73.__r_.__value_.__r.__words[0]);
          v44 = *v43 == 91 && v43[1] == 93 && v43[2] == 0;
          if (v73.__r_.__value_.__l.__size_)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v73.__r_.__value_.__l.__size_);
          }

          if (v44 && a4(a5, "** bad qual name => ", 20) || (v68 & 0x20) == 0 && a4(a5, "** bad qual flag => ", 20))
          {
            break;
          }

          (*(*v80 + 72))(&v73);
          v45 = (*(*v73.__r_.__value_.__l.__data_ + 192))(v73.__r_.__value_.__r.__words[0]);
          v46 = strcmp(v45, "lang");
          if (v73.__r_.__value_.__l.__size_)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v73.__r_.__value_.__l.__size_);
          }

          v47 = v69-- != 0;
          v48 = v47 || v24;
          v49 = v46 || !v48;
          if (!v49 && a4(a5, "** bad lang qual => ", 20))
          {
            break;
          }

          DumpIXMPPropertyTree(&v80, (a2 + 2), 0, a4, a5);
          if (*(&v80 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](*(&v80 + 1));
          }

          (*(*v37 + 56))(&v73, v37);
          v50 = v73.__r_.__value_.__l.__size_;
          v37 = v73.__r_.__value_.__r.__words[0];
          if (v27)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v27);
          }

          v27 = v50;
          if (!v37)
          {
            goto LABEL_119;
          }
        }

        if (*(&v80 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v80 + 1));
        }

        goto LABEL_170;
      }

      v50 = v73.__r_.__value_.__l.__size_;
LABEL_119:
      if (v50)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v50);
      }
    }

    if ((*(**a1 + 40))() == 2)
    {
      (*(**a1 + 248))(&v73);
      v51 = v73.__r_.__value_.__l.__size_;
      (*(*(v73.__r_.__value_.__r.__words[0] + *(*v73.__r_.__value_.__l.__data_ - 688)) + 552))(&v73);
      v52 = v73.__r_.__value_.__l.__size_;
      v53 = v73.__r_.__value_.__r.__words[0];
      if (v51)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v51);
      }
    }

    else
    {
      v53 = 0;
      v52 = 0;
    }

    if ((*(**a1 + 40))() == 4)
    {
      (*(**a1 + 240))(&v73);
      v54 = v73.__r_.__value_.__l.__size_;
      (*(*(v73.__r_.__value_.__r.__words[0] + *(*v73.__r_.__value_.__l.__data_ - 688)) + 552))(&v73);
      v27 = v73.__r_.__value_.__l.__size_;
      v53 = v73.__r_.__value_.__r.__words[0];
      if (v52)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v52);
      }

      if (v54)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v54);
      }
    }

    else
    {
      v27 = v52;
    }

    if (v53)
    {
      v55 = 1;
      v56 = v27;
      while (1)
      {
        v80 = 0uLL;
        (*(*v53 + 48))(&v73, v53);
        v80 = *&v73.__r_.__value_.__l.__data_;
        v57 = XMPUtils::GetIXMPOptions(&v80);
        if (!v80)
        {
          v62 = 10;
          goto LABEL_161;
        }

        v70 = v56;
        (*(*v80 + 56))(&v73);
        v58 = v73.__r_.__value_.__r.__words[0];
        v59 = *a1;
        if (v73.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v73.__r_.__value_.__l.__size_);
        }

        v49 = v58 == v59;
        v56 = v70;
        if (!v49)
        {
          if (a4(a5, "** bad parent link => ", 22))
          {
            break;
          }
        }

        if ((v57 & 0x20) != 0 && a4(a5, "** bad qual flag => ", 20))
        {
          break;
        }

        if ((IXMPOptions & 0x200) != 0)
        {
          (*(*v80 + 72))(&v73);
          v63 = (*(*v73.__r_.__value_.__l.__data_ + 192))(v73.__r_.__value_.__r.__words[0]);
          v64 = *v63 == 91 && v63[1] == 93 && v63[2] == 0;
          if (v73.__r_.__value_.__l.__size_)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v73.__r_.__value_.__l.__size_);
          }

          v65 = v55;
          if (v64)
          {
            v66 = a4(a5, "** bad item name => ", 20);
            v65 = v55;
            if (v66)
            {
              break;
            }
          }
        }

        else
        {
          (*(*v80 + 72))(&v73);
          v60 = (*(*v73.__r_.__value_.__l.__data_ + 192))(v73.__r_.__value_.__r.__words[0]);
          v61 = *v60 == 91 && v60[1] == 93 && v60[2] == 0;
          if (v73.__r_.__value_.__l.__size_)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v73.__r_.__value_.__l.__size_);
          }

          if (v61 && a4(a5, "** bad field name => ", 21))
          {
            break;
          }

          v65 = 0;
        }

        DumpIXMPPropertyTree(&v80, (a2 + 1), v65, a4, a5);
        v62 = 0;
LABEL_161:
        if (*(&v80 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v80 + 1));
        }

        if (v62 != 10 && v62)
        {
          v27 = v56;
          goto LABEL_170;
        }

        (*(*v53 + 56))(&v73, v53);
        v27 = v73.__r_.__value_.__l.__size_;
        v53 = v73.__r_.__value_.__r.__words[0];
        if (v56)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v56);
        }

        ++v55;
        v56 = v27;
        if (!v53)
        {
          goto LABEL_170;
        }
      }

      v62 = 1;
      goto LABEL_161;
    }

LABEL_170:
    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v27);
    }
  }

LABEL_172:
  if (SHIBYTE(v75) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v78) < 0)
  {
    operator delete(v76);
  }

  if (*(&v79 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v79 + 1));
  }
}

void sub_186107D94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, std::__shared_weak_count *a35, uint64_t a36, uint64_t a37)
{
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v38);
  }

  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v37);
  }

  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a35)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a35);
  }

  _Unwind_Resume(exception_object);
}

uint64_t XMPMeta2::SetErrorCallback(XMPMeta2 *this, unsigned __int8 (*a2)(BOOL (*)(void *, unsigned __int8, int, const char *), void *, unsigned __int8, int, const char *), BOOL (*a3)(void *, unsigned __int8, int, const char *), void *a4, int a5)
{
  if (!a2)
  {
    XMPMeta2::SetErrorCallback();
  }

  *(this + 91) = 0;
  *(this + 368) = 0;
  *(this + 47) = a2;
  *(this + 48) = a3;
  *(this + 49) = a4;
  *(this + 90) = a5;
  v5 = *(*(*(**(this + 54) + 232))(*(this + 54)) + 288);

  return v5();
}

uint64_t XMPMeta2::ResetErrorCallbackLimit(XMPMeta2 *this, int a2)
{
  *(this + 90) = a2;
  *(this + 91) = 0;
  *(this + 368) = 0;
  v2 = *(*(*(**(this + 54) + 232))(*(this + 54)) + 288);

  return v2();
}

void std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::__count_unique<std::string>(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a2 + 23);
    if (v3 >= 0)
    {
      v4 = *(a2 + 23);
    }

    else
    {
      v4 = a2[1];
    }

    if (v3 >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    v6 = 1;
    do
    {
      v7 = *(v2 + 55);
      if (v7 >= 0)
      {
        v8 = *(v2 + 55);
      }

      else
      {
        v8 = v2[5];
      }

      if (v7 >= 0)
      {
        v9 = (v2 + 4);
      }

      else
      {
        v9 = v2[4];
      }

      if (v8 >= v4)
      {
        v10 = v4;
      }

      else
      {
        v10 = v8;
      }

      v11 = memcmp(v5, v9, v10);
      v12 = v4 < v8;
      if (v11)
      {
        v12 = v11 < 0;
      }

      if (!v12)
      {
        v13 = memcmp(v9, v5, v10);
        v14 = v8 < v4;
        if (v13)
        {
          v14 = v13 < 0;
        }

        if (!v14)
        {
          return v6;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

uint64_t std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v4 = 0;
  v2 = *std::__tree<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void XMPMeta2::GetProperty()
{
  __assert_rtn("GetProperty", "XMPMeta2-GetSet.cpp", 161, "(propValue != 0) && (valueSize != 0) && (options != 0)");
}

{
  __assert_rtn("GetProperty", "XMPMeta2-GetSet.cpp", 160, "(schemaNS != 0) && (propName != 0)");
}

void XMPMeta2::GetLocalizedText()
{
  __assert_rtn("GetLocalizedText", "XMPMeta2-GetSet.cpp", 813, "(itemValue != 0) && (valueSize != 0) && (options != 0)");
}

{
  __assert_rtn("GetLocalizedText", "XMPMeta2-GetSet.cpp", 812, "(actualLang != 0) && (langSize != 0)");
}

{
  __assert_rtn("GetLocalizedText", "XMPMeta2-GetSet.cpp", 811, "(schemaNS != 0) && (arrayName != 0) && (_genericLang != 0) && (_specificLang != 0)");
}

BOOL PNG_CheckFormat(int a1, uint64_t a2, uint64_t a3)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (a1 != 1347307296)
  {
    PNG_CheckFormat();
  }

  if ((*(*a3 + 24))(a3) < 8)
  {
    return 0;
  }

  v5[0] = 0;
  (*(*a3 + 16))(a3, 0, 0);
  (**a3)(a3, v5, 8, 0);
  return v5[0] == 0xA1A0A0D474E5089;
}

void XMPFileHandler::XMPFileHandler(XMPFileHandler *this)
{
  *this = &unk_1EF4FD218;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 20) = 1;
  *(this + 21) = 0;
  *(this + 4) = -1;
  *(this + 10) = -1;
  *(this + 44) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  TXMPMeta<std::string>::TXMPMeta(this + 80);
}

void sub_186108834(_Unwind_Exception *exception_object)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void XMPFileHandler::~XMPFileHandler(void **this)
{
  *this = &unk_1EF4FD218;
  TXMPMeta<std::string>::~TXMPMeta(this + 10);
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }
}

void PNG_MetaHandler::~PNG_MetaHandler(void **this)
{
  XMPFileHandler::~XMPFileHandler(this);

  JUMPOUT(0x186602850);
}

uint64_t PNG_MetaHandler::CacheFileData(PNG_MetaHandler *this)
{
  *(this + 21) = 0;
  result = *(*(this + 1) + 232);
  if (result)
  {
    result = PNG_Support::FindAndReadXMPChunk(result, this + 56);
    if (result)
    {
      v3 = *(this + 79);
      if (v3 < 0)
      {
        v3 = *(this + 8);
      }

      *(this + 10) = v3;
      *(this + 21) = 1;
    }
  }

  return result;
}

void PNG_MetaHandler::ProcessXMP(PNG_MetaHandler *this)
{
  *(this + 22) = 1;
  v2 = *(this + 79);
  if (v2 < 0)
  {
    if (!*(this + 8))
    {
      return;
    }
  }

  else if (!*(this + 79))
  {
    return;
  }

  if ((*(this + 21) & 1) == 0)
  {
    PNG_MetaHandler::ProcessXMP();
  }

  if ((v2 & 0x80000000) != 0)
  {
    v3 = *(this + 7);
    v2 = *(this + 8);
  }

  else
  {
    v3 = this + 56;
  }

  TXMPMeta<std::string>::ParseFromBuffer(this + 80, v3, v2, 0);
  *(this + 21) = 1;
}

void PNG_MetaHandler::UpdateFile(PNG_MetaHandler *this, int a2)
{
  if (*(this + 23) == 1)
  {
    if (a2)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 2;
      exception[1] = "PNG_MetaHandler::UpdateFile: Safe update not supported";
      *(exception + 16) = 0;
    }

    v3 = *(this + 79);
    if (v3 < 0)
    {
      v4 = *(this + 7);
      v3 = *(this + 8);
      if (!v3)
      {
        return;
      }
    }

    else
    {
      v4 = this + 56;
      if (!*(this + 79))
      {
        return;
      }
    }

    v5 = *(*(this + 1) + 232);
    if (v5)
    {
      v9 = 0;
      v11 = 0u;
      v12 = 0u;
      v7 = &unk_1EF4DF798;
      v8 = 0;
      v10 = &unk_1EF4DF7C8;
      DWORD2(v11) = 0;
      BYTE8(v12) = 0;
      memset(v13, 0, sizeof(v13));
      if (PNG_Support::OpenPNG(v5, &v7))
      {
        if (v9 >= v3)
        {
          PNG_Support::WriteBuffer(v5, &v8, v3, v4);
          PNG_Support::UpdateChunkCRC();
        }

        PNG_MetaHandler::SafeWriteFile(this);
        *(this + 23) = 0;
      }

      v7 = &unk_1EF4DF798;
      v14 = v13;
      std::vector<PNG_Support::ChunkData>::__destroy_vector::operator()[abi:fe200100](&v14);
    }
  }
}

void sub_186108B24(_Unwind_Exception *a1)
{
  *(v2 - 72) = v1;
  std::vector<PNG_Support::ChunkData>::__destroy_vector::operator()[abi:fe200100]((v2 - 72));
  _Unwind_Resume(a1);
}

uint64_t PNG_MetaHandler::SafeWriteFile(PNG_MetaHandler *this)
{
  v2 = *(*(this + 1) + 232);
  v3 = (*(*v2 + 40))(v2);
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 9;
    exception[1] = "Failure creating PNG temp file";
    *(exception + 16) = 0;
  }

  (*(*this + 80))(this, v3);
  (*(*v2 + 48))(v2);
  return 1;
}

void PNG_Support::ChunkState::~ChunkState(PNG_Support::ChunkState *this)
{
  *this = &unk_1EF4DF798;
  v1 = (this + 64);
  std::vector<PNG_Support::ChunkData>::__destroy_vector::operator()[abi:fe200100](&v1);
}

{
  *this = &unk_1EF4DF798;
  v2 = (this + 64);
  std::vector<PNG_Support::ChunkData>::__destroy_vector::operator()[abi:fe200100](&v2);
  MEMORY[0x186602850](this, 0x10A1C40219FC1CALL);
}

void PNG_MetaHandler::WriteTempFile(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 8) + 232);
  v11[2] = 0;
  v12 = 0u;
  v13 = 0u;
  v11[0] = &unk_1EF4DF798;
  v11[1] = 0;
  v11[3] = &unk_1EF4DF7C8;
  DWORD2(v12) = 0;
  BYTE8(v13) = 0;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  if (PNG_Support::OpenPNG(v3, v11))
  {
    (*(*a2 + 32))(a2, 0);
    (*(*a2 + 8))(a2, "\x89PNG\r\n\x1A\n", 8);
    v4 = v14;
    for (i = v15; v4 != i; v4 += 40)
    {
      *&v10[24] = 0;
      v9 = &unk_1EF4DF7C8;
      v6 = *(v4 + 8);
      *&v10[9] = *(v4 + 17);
      *v10 = v6;
      if ((v10[24] & 1) == 0)
      {
        if ((PNG_Support::CopyChunk(v3, a2, &v9) & 1) == 0)
        {
          exception = __cxa_allocate_exception(0x18uLL);
          *exception = 9;
          exception[1] = "PNG chunk copy failed.";
          *(exception + 16) = 0;
        }

        if (PNG_Support::CheckIHDRChunkHeader(&v9, v7))
        {
          PNG_Support::WriteXMPChunk();
        }
      }
    }
  }

  v11[0] = &unk_1EF4DF798;
  v9 = &v14;
  std::vector<PNG_Support::ChunkData>::__destroy_vector::operator()[abi:fe200100](&v9);
}

void std::vector<PNG_Support::ChunkData>::__destroy_vector::operator()[abi:fe200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 40;
      v7 = v4 - 40;
      v8 = v4 - 40;
      do
      {
        v9 = *v8;
        v8 -= 40;
        (*v9)(v7);
        v6 -= 40;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

BOOL std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:fe200100]();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

void RDF_Parser::AddQualifierNode()
{
  operator new();
}

{
  __assert_rtn("AddQualifierNode", "ParseRDF.cpp", 566, "isType");
}

uint64_t RDF_Parser::AddQualifierNode(RDF_Parser *this, XMP_Node *a2, const XML_Node *a3)
{
  v5 = *(a3 + 39);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a3 + 3);
  }

  if (v5)
  {

    RDF_Parser::AddQualifierNode();
  }

  v7[3] = v3;
  v7[4] = v4;
  v7[0] = 202;
  v7[1] = "XML namespace required for all elements and attributes";
  v7[2] = 0;
  GenericErrorCallback::NotifyClient(*this, 0, v7, 0);
  return 0;
}

void RDF_Parser::FixupQualifiedNode(RDF_Parser *this, XMP_Node *a2)
{
  if ((*(a2 + 9) & 1) == 0 || (v3 = *(a2 + 9), v4 = *(a2 + 10), v3 == v4))
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 7;
    v64 = "XMP_Enforce failed: ((xmpParent->options & kXMP_PropValueIsStruct) && (! xmpParent->children.empty())) in /Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCore/source/ParseRDF.cpp at line 613";
    goto LABEL_91;
  }

  v6 = *v3;
  v7 = *v3 + 16;
  v8 = *(*v3 + 39);
  if (v8 < 0)
  {
    if (*(v6 + 24) != 9)
    {
LABEL_90:
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 7;
      v64 = "XMP_Enforce failed: (valueNode->name == rdf:value) in /Library/Caches/com.apple.xbs/Sources/ImageIO/XMP-Toolkit-SDK/XMPCore/source/ParseRDF.cpp at line 616";
LABEL_91:
      exception[1] = v64;
      *(exception + 16) = 0;
    }

    v7 = *v7;
  }

  else if (v8 != 9)
  {
    goto LABEL_90;
  }

  v9 = *v7;
  v10 = *(v7 + 8);
  if (v9 != 0x756C61763A666472 || v10 != 101)
  {
    goto LABEL_90;
  }

  std::vector<_MPEntry *>::reserve(a2 + 12, v4 - v3 + ((*(a2 + 13) - *(a2 + 12)) >> 3) + ((*(v6 + 104) - *(v6 + 96)) >> 3));
  v13 = *(v6 + 96);
  v12 = *(v6 + 104);
  if ((*(v6 + 8) & 0x40) == 0)
  {
    v14 = 0;
    goto LABEL_39;
  }

  if ((*(a2 + 8) & 0x40) == 0)
  {
    v15 = *(v6 + 96);
    v16 = *(v6 + 104);
    goto LABEL_27;
  }

  v67 = 203;
  v68 = "Duplicate xml:lang for rdf:value element";
  v69 = 0;
  GenericErrorCallback::NotifyClient(*this, 0, &v67, 0);
  v18 = *(a2 + 12);
  v17 = *(a2 + 13);
  if (v17 == v18)
  {
    goto LABEL_85;
  }

  v19 = *v18;
  v20 = (*v18 + 16);
  v21 = *(*v18 + 39);
  if (v21 < 0)
  {
    if (v19[3] != 8)
    {
      goto LABEL_88;
    }

    v20 = *v20;
  }

  else if (v21 != 8)
  {
LABEL_88:
    RDF_Parser::FixupQualifiedNode();
  }

  if (*v20 != 0x676E616C3A6C6D78)
  {
    goto LABEL_88;
  }

  v22 = v17 - (v18 + 8);
  if (v17 != v18 + 8)
  {
    memmove(*(a2 + 12), (v18 + 8), v17 - (v18 + 8));
  }

  *(a2 + 13) = v18 + v22;
  (*(*v19 + 8))(v19);
  v15 = *(v6 + 96);
  v16 = *(v6 + 104);
LABEL_27:
  if (v16 == v15)
  {
    goto LABEL_85;
  }

  v23 = *v15;
  v67 = v23;
  v24 = (v23 + 16);
  v25 = *(v23 + 39);
  if (v25 < 0)
  {
    if (*(v23 + 24) != 8)
    {
      goto LABEL_87;
    }

    v24 = *v24;
  }

  else if (v25 != 8)
  {
LABEL_87:
    RDF_Parser::FixupQualifiedNode();
  }

  if (*v24 != 0x676E616C3A6C6D78)
  {
    goto LABEL_87;
  }

  *(v23 + 64) = a2;
  *(a2 + 2) |= 0x40u;
  *(v6 + 8) &= ~0x40u;
  v26 = *(a2 + 12);
  if (v26 == *(a2 + 13))
  {
    std::vector<IIO_Writer *>::push_back[abi:fe200100](a2 + 96, &v67);
  }

  else
  {
    std::vector<XMP_Node *>::insert(a2 + 12, v26, &v67);
  }

  v27 = *(v6 + 96);
  if (*(v6 + 104) == v27)
  {
    goto LABEL_85;
  }

  *v27 = 0;
  v14 = 1;
LABEL_39:
  for (i = (v12 - v13) >> 3; i != v14; *(v36 + 8 * v14++) = 0)
  {
    v29 = *(v6 + 96);
    if (v14 >= (*(v6 + 104) - v29) >> 3)
    {
      goto LABEL_85;
    }

    v30 = *(v29 + 8 * v14);
    __dst = 0;
    v66 = v30;
    v31 = (v30 + 16);
    if (*(v30 + 39) < 0)
    {
      v31 = *v31;
    }

    if (FindQualifierNode(a2, v31, 0, &__dst))
    {
      v68 = "Duplicate qualifier node";
      v69 = 0;
      v67 = 203;
      GenericErrorCallback::NotifyClient(*this, 0, &v67, 0);
      v32 = __dst;
      v33 = *(a2 + 13);
      if (v33 == __dst)
      {
        goto LABEL_85;
      }

      v34 = *__dst;
      v35 = v33 - (__dst + 8);
      if (v33 != __dst + 8)
      {
        memmove(__dst, __dst + 8, v33 - (__dst + 8));
      }

      *(a2 + 13) = &v32[v35];
      if (v34)
      {
        (*(*v34 + 8))(v34);
      }
    }

    *(v66 + 64) = a2;
    std::vector<IIO_Writer *>::push_back[abi:fe200100](a2 + 96, &v66);
    v36 = *(v6 + 96);
    if (v14 >= (*(v6 + 104) - v36) >> 3)
    {
      goto LABEL_85;
    }
  }

  *(v6 + 104) = *(v6 + 96);
  v37 = *(a2 + 10) - *(a2 + 9);
  if (v37 != 8)
  {
    v38 = v37 >> 3;
    for (j = 1; v38 != j; ++j)
    {
      v40 = *(a2 + 9);
      if (j >= (*(a2 + 10) - v40) >> 3)
      {
        goto LABEL_85;
      }

      v41 = *(v40 + 8 * j);
      v66 = v41;
      v42 = *(v41 + 39);
      if (v42 < 0)
      {
        v43 = *(v41 + 16);
        if (*(v41 + 24) == 8)
        {
LABEL_56:
          v44 = *v43 == 0x676E616C3A6C6D78;
          goto LABEL_59;
        }
      }

      else
      {
        v43 = (v41 + 16);
        if (v42 == 8)
        {
          goto LABEL_56;
        }
      }

      v44 = 0;
LABEL_59:
      if (FindQualifierNode(a2, v43, 0, 0))
      {
        v68 = "Duplicate qualifier";
        v69 = 0;
        v67 = 203;
        GenericErrorCallback::NotifyClient(*this, 0, &v67, 0);
        if (v66)
        {
          (*(*v66 + 8))(v66);
        }

        goto LABEL_73;
      }

      v45 = v66;
      *(v66 + 8) |= 0x20u;
      *(v45 + 64) = a2;
      if (!v44)
      {
        v47 = (v45 + 16);
        v48 = *(v45 + 39);
        if (v48 < 0)
        {
          if (*(v45 + 24) != 8)
          {
LABEL_72:
            std::vector<IIO_Writer *>::push_back[abi:fe200100](a2 + 96, &v66);
            goto LABEL_73;
          }

          v47 = *v47;
        }

        else if (v48 != 8)
        {
          goto LABEL_72;
        }

        if (*v47 == 0x657079743A666472)
        {
          *(a2 + 2) |= 0x80u;
        }

        goto LABEL_72;
      }

      *(a2 + 2) |= 0x40u;
      v46 = *(a2 + 12);
      if (v46 == *(a2 + 13))
      {
        goto LABEL_72;
      }

      std::vector<XMP_Node *>::insert(a2 + 12, v46, &v66);
LABEL_73:
      v49 = *(a2 + 9);
      if (j >= (*(a2 + 10) - v49) >> 3)
      {
        goto LABEL_85;
      }

      *(v49 + 8 * j) = 0;
    }
  }

  v50 = *(a2 + 2);
  if (*(a2 + 12) != *(a2 + 13))
  {
    v50 |= 0x10u;
    *(a2 + 2) = v50;
  }

  if ((v50 & 0x10000100) == 0)
  {
LABEL_86:
    RDF_Parser::FixupQualifiedNode();
  }

  v51 = v50 & 0xEFFFFEFF;
  *(a2 + 2) = v51;
  *(a2 + 2) = *(v6 + 8) | v51;
  v52 = *(a2 + 7);
  v53 = *(a2 + 40);
  v54 = *(v6 + 56);
  *(a2 + 40) = *(v6 + 40);
  *(a2 + 7) = v54;
  *(v6 + 40) = v53;
  *(v6 + 56) = v52;
  v55 = *(a2 + 9);
  if (*(a2 + 10) == v55)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  *v55 = 0;
  v56 = *(a2 + 9);
  *(a2 + 9) = *(v6 + 72);
  *(v6 + 72) = v56;
  v57 = *(a2 + 10);
  *(a2 + 10) = *(v6 + 80);
  *(v6 + 80) = v57;
  v58 = *(a2 + 11);
  *(a2 + 11) = *(v6 + 88);
  *(v6 + 88) = v58;
  v59 = *(a2 + 9);
  v60 = *(a2 + 10) - v59;
  if (!v60)
  {
    goto LABEL_83;
  }

  v61 = v60 >> 3;
  do
  {
    v62 = *v59++;
    *(v62 + 64) = a2;
    --v61;
  }

  while (v61);
  if (v6)
  {
LABEL_83:
    (*(*v6 + 8))(v6);
  }
}

void RDF_Parser::ParseTypeResourcePropertyElement(RDF_Parser *this, XMP_Node *a2, const XML_Node ***a3, int a4)
{
  v6 = RDF_Parser::AddChildNode(this, a2, a3, "", a4);
  if (v6)
  {
    v7 = v6;
    *(v6 + 8) |= 0x100u;
    v8 = a3[13];
    for (i = a3[14]; v8 != i; ++v8)
    {
      v10 = *v8;
      v11 = (*v8 + 40);
      if (*(*v8 + 63) < 0)
      {
        if (*(v10 + 6) == 13 && **v11 == 0x737261703A666472 && *(*v11 + 5) == 0x6570795465737261)
        {
          continue;
        }

        if (*(v10 + 6) == 8 && **v11 == 0x676E616C3A6C6D78)
        {
LABEL_32:
          RDF_Parser::AddQualifierNode(this, v7, v10);
          continue;
        }

        if (*(v10 + 6) == 6)
        {
          v11 = *v11;
LABEL_22:
          v15 = *v11;
          v16 = v11[2];
          if (v15 == 979788914 && v16 == 17481)
          {
            continue;
          }
        }
      }

      else
      {
        v12 = *(*v8 + 63);
        if (v12 == 6)
        {
          goto LABEL_22;
        }

        if (v12 == 8)
        {
          if (*v11 == 0x676E616C3A6C6D78)
          {
            goto LABEL_32;
          }
        }

        else if (v12 == 13 && *v11 == 0x737261703A666472 && *(*v8 + 45) == 0x6570795465737261)
        {
          continue;
        }
      }

      v18[1] = "Invalid attribute for ParseTypeResource property element";
      v18[2] = 0;
      v18[0] = 202;
      GenericErrorCallback::NotifyClient(*this, 0, v18, 0);
    }

    RDF_Parser::PropertyElementList(this, v7, a3, 0);
    if ((*(v7 + 11) & 0x10) != 0)
    {
      RDF_Parser::FixupQualifiedNode(this, v7);
    }
  }
}

void RDF_Parser::ResourcePropertyElement(RDF_Parser *this, XMP_Node *a2, const XML_Node *a3, int a4)
{
  if (a4)
  {
    v6 = a3 + 40;
    v7 = *(a3 + 63);
    if (v7 < 0)
    {
      if (*(a3 + 6) != 10)
      {
        goto LABEL_11;
      }

      v6 = *v6;
    }

    else if (v7 != 10)
    {
      goto LABEL_11;
    }

    v8 = *v6;
    v9 = *(v6 + 4);
    if (v8 == 0x676E6168633A5869 && v9 == 29541)
    {
      return;
    }
  }

LABEL_11:
  v11 = RDF_Parser::AddChildNode(this, a2, a3, "", a4);
  if (!v11)
  {
    return;
  }

  v12 = v11;
  v13 = *(a3 + 13);
  for (i = *(a3 + 14); v13 != i; ++v13)
  {
    v15 = *v13;
    v16 = (*v13 + 40);
    if (*(*v13 + 63) < 0)
    {
      if (*(v15 + 6) == 8 && **v16 == 0x676E616C3A6C6D78)
      {
LABEL_29:
        RDF_Parser::AddQualifierNode(this, v12, v15);
        continue;
      }

      if (*(v15 + 6) == 6)
      {
        v16 = *v16;
LABEL_22:
        v18 = *v16;
        v19 = *(v16 + 2);
        if (v18 == 979788914 && v19 == 17481)
        {
          continue;
        }
      }
    }

    else
    {
      v17 = *(*v13 + 63);
      if (v17 == 6)
      {
        goto LABEL_22;
      }

      if (v17 == 8 && *v16 == 0x676E616C3A6C6D78)
      {
        goto LABEL_29;
      }
    }

    *&v42.__r_.__value_.__r.__words[1] = "Invalid attribute for resource property element";
    v42.__r_.__value_.__r.__words[0] = 202;
    GenericErrorCallback::NotifyClient(*this, 0, &v42, 0);
  }

  v22 = *(a3 + 16);
  v21 = *(a3 + 17);
  while (v22 != v21 && XML_Node::IsWhitespaceNode(*v22))
  {
    ++v22;
  }

  if (v22 == v21)
  {
    v42.__r_.__value_.__r.__words[2] = 0;
    v29 = "Missing child of resource property element";
LABEL_88:
    v42.__r_.__value_.__l.__size_ = v29;
    v42.__r_.__value_.__r.__words[0] = 202;
    GenericErrorCallback::NotifyClient(*this, 0, &v42, 0);
    return;
  }

  v23 = *v22;
  if (*(*v22 + 8) != 1)
  {
    v42.__r_.__value_.__r.__words[2] = 0;
    v29 = "Children of resource property element must be XML elements";
    goto LABEL_88;
  }

  v24 = (v23 + 40);
  v25 = *(v23 + 63);
  if ((v25 & 0x80000000) == 0)
  {
    if (v25 == 7)
    {
      if (*v24 != 979788914 || *(v23 + 43) != 1734427194)
      {
        v27 = *v24 == 979788914 && *(v23 + 43) == 1902465850;
        v28 = (v23 + 40);
        if (!v27)
        {
          goto LABEL_62;
        }

LABEL_70:
        v36 = *(v12 + 2) | 0x600;
        goto LABEL_79;
      }

LABEL_69:
      v36 = *(v12 + 2) | 0x200;
      goto LABEL_79;
    }

    goto LABEL_66;
  }

  if (*(v23 + 48) == 7 && **v24 == 979788914 && *(*v24 + 3) == 1734427194)
  {
    goto LABEL_69;
  }

  if (*(v23 + 48) == 7 && **v24 == 979788914 && *(*v24 + 3) == 1902465850)
  {
    goto LABEL_70;
  }

  if (*(v23 + 48) != 7)
  {
LABEL_66:
    if (!std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(v24, "rdf:Description"))
    {
      memset(&v42, 0, sizeof(v42));
      v35 = *v22;
      if (*(*v22 + 39) < 0)
      {
        std::string::__init_copy_ctor_external(&v42, *(v35 + 16), *(v35 + 24));
      }

      else
      {
        v42 = *(v35 + 16);
      }

      v37 = std::string::find((*v22 + 40), 58, 0);
      if (v37 != -1)
      {
        std::string::append(&v42, (*v22 + 40), v37 + 1, 0xFFFFFFFFFFFFFFFFLL);
        std::string::basic_string[abi:fe200100]<0>(__p, "rdf:type");
        RDF_Parser::AddQualifierNode();
      }

      __p[0] = 203;
      __p[1] = "All XML elements must be in a namespace";
      __p[2] = 0;
      GenericErrorCallback::NotifyClient(*this, 0, __p, 0);
      if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v42.__r_.__value_.__l.__data_);
      }

      return;
    }

    *(v12 + 2) |= 0x100u;
    v23 = *v22;
    goto LABEL_80;
  }

  v28 = *v24;
LABEL_62:
  v32 = *v28;
  v33 = *(v28 + 3);
  if (v32 != 979788914 || v33 != 1953251642)
  {
    goto LABEL_66;
  }

  v36 = *(v12 + 2) | 0xE00;
LABEL_79:
  *(v12 + 2) = v36;
LABEL_80:
  RDF_Parser::NodeElement(this, v12, v23, 0);
  v38 = *(v12 + 2);
  if ((v38 & 0x10000000) != 0)
  {
    RDF_Parser::FixupQualifiedNode(this, v12);
  }

  else if ((v38 & 0x800) != 0)
  {
    DetectAltText(v12);
  }

  v39 = v22 + 1;
  while (v39 != v21)
  {
    v40 = *v39++;
    if ((XML_Node::IsWhitespaceNode(v40) & 1) == 0)
    {
      v42.__r_.__value_.__r.__words[2] = 0;
      v29 = "Invalid child of resource property element";
      goto LABEL_88;
    }
  }
}

void sub_18610A038(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t XMP_Node::XMP_Node(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, int a5)
{
  *a1 = &unk_1EF4DE950;
  *(a1 + 8) = a5;
  v8 = (a1 + 16);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), *a3, *(a3 + 1));
  }

  else
  {
    v9 = *a3;
    *(a1 + 32) = *(a3 + 2);
    *&v8->__r_.__value_.__l.__data_ = v9;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *a4, *(a4 + 1));
  }

  else
  {
    v10 = *a4;
    *(a1 + 56) = *(a4 + 2);
    *(a1 + 40) = v10;
  }

  *(a1 + 72) = 0u;
  *(a1 + 64) = a2;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  if (std::string::find(v8, 58, 0) != -1)
  {
    return a1;
  }

  v11 = *(a1 + 39);
  if ((v11 & 0x80000000) == 0)
  {
    v12 = v8;
    if (v11 != 2)
    {
      goto LABEL_14;
    }

LABEL_13:
    if (LOWORD(v12->__r_.__value_.__l.__data_) == 23899)
    {
      return a1;
    }

    goto LABEL_14;
  }

  if (*(a1 + 24) == 2)
  {
    v12 = v8->__r_.__value_.__r.__words[0];
    goto LABEL_13;
  }

LABEL_14:
  if ((*(a1 + 8) & 0x80000000) == 0 && *(a1 + 64))
  {
    __assert_rtn("XMP_Node", "XMPCore_Impl.hpp", 344, "(name.find(':') != XMP_VarString::npos) || (name == []) || (options & ((XMP_OptionBits)0x80000000UL)) || (parent == 0)");
  }

  return a1;
}

void sub_18610A1B4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void RDF_Parser::FixupQualifiedNode()
{
  __assert_rtn("FixupQualifiedNode", "ParseRDF.cpp", 631, "xmpParent->qualifiers[0]->name == xml:lang");
}

{
  __assert_rtn("FixupQualifiedNode", "ParseRDF.cpp", 637, "langQual->name == xml:lang");
}

{
  __assert_rtn("FixupQualifiedNode", "ParseRDF.cpp", 714, "xmpParent->options & (kXMP_PropValueIsStruct | kRDF_HasValueElem)");
}

void XMPUtils::ApplyTemplate_v2(XMPUtils *this, XMPMeta *a2, const XMPMeta *a3)
{
  if (!this)
  {
    return;
  }

  v3 = a3;
  if (!v6)
  {
    goto LABEL_136;
  }

  v7 = v6;
  DefaultNameSpacePrefixMap = AdobeXMPCore::INameSpacePrefixMap_v1::GetDefaultNameSpacePrefixMap(&v65);
  v9 = (*(*v65 + 128))(v65, DefaultNameSpacePrefixMap);
  if (*(&v65 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v65 + 1));
  }

  if ((v3 & 0x10) == 0)
  {
    goto LABEL_71;
  }

  v67[0] = 0uLL;
  v10 = v5[50];
  if (v10)
  {
    v11 = v10 + *(*v10 - 544);
  }

  else
  {
    v11 = 0;
  }

  v12 = v5[51];
  *&v65 = v11;
  *(&v65 + 1) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  XMPUtils::GetNodeChildIterator(&v65, v67);
  if (*(&v65 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v65 + 1));
  }

  v65 = 0uLL;
  v66 = 0;
  v13 = *&v67[0];
  if (!*&v67[0])
  {
    goto LABEL_69;
  }

  do
  {
    while (1)
    {
      v64 = 0uLL;
      (*(*v13 + 48))(v62);
      v14 = *v62;
      v64 = *v62;
      v62[0] = 0;
      v62[1] = 0;
      v63 = 0;
      (*(*v14.n128_u64[0] + 88))(&v60, v14);
      (*(*v9 + 40))(&__p, v9, &v60);
      v15 = (*(*__p.__r_.__value_.__l.__data_ + 192))(__p.__r_.__value_.__r.__words[0]);
      std::string::basic_string[abi:fe200100]<0>(v62, v15);
      if (__p.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](__p.__r_.__value_.__l.__size_);
      }

      if (v60.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v60.__r_.__value_.__l.__size_);
      }

      memset(&__p, 0, sizeof(__p));
      if (v63 >= 0)
      {
        v16 = HIBYTE(v63);
      }

      else
      {
        v16 = v62[1];
      }

      memset(&v60, 0, sizeof(v60));
      std::string::basic_string[abi:fe200100](&v60, v16 + 1);
      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = &v60;
      }

      else
      {
        v17 = v60.__r_.__value_.__r.__words[0];
      }

      if (v16)
      {
        if (v63 >= 0)
        {
          v18 = v62;
        }

        else
        {
          v18 = v62[0];
        }

        memmove(v17, v18, v16);
      }

      *(&v17->__r_.__value_.__l.__data_ + v16) = 58;
      (*(*v64 + 72))(&v58);
      v19 = (*(*v58 + 192))(v58);
      v20 = std::string::append(&v60, v19);
      v21 = *&v20->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v21;
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      if (v59)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v59);
      }

      if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v60.__r_.__value_.__l.__data_);
        if (v3)
        {
          goto LABEL_40;
        }
      }

      else if (v3)
      {
        goto LABEL_40;
      }

      (*(*v64 + 88))(&v58);
      v22 = (*(*v58 + 192))(v58);
      std::string::basic_string[abi:fe200100]<0>(&v60, v22);
      v23 = IsInternalProperty(&v60.__r_.__value_.__l.__data_, &__p);
      if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v60.__r_.__value_.__l.__data_);
      }

      if (v59)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v59);
      }

      if (!v23)
      {
LABEL_40:
        v24 = v7[50] + *(*v7[50] - 792);
        v25 = (*(*v24 + 688))(v24);
        (*(*v64 + 88))(&v58);
        (*(*v64 + 72))(&v56);
        (*(*v25 + 736))(&v60, v25, &v58, &v56);
        v26 = v60.__r_.__value_.__r.__words[0];
        if (v60.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v60.__r_.__value_.__l.__size_);
        }

        if (v57)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v57);
        }

        if (v59)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v59);
        }

        if (!v26)
        {
          std::vector<std::shared_ptr<AdobeXMPCore::INode_v1 const>>::push_back[abi:fe200100](&v65, &v64);
        }
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v63) < 0)
      {
        operator delete(v62[0]);
      }

      if (*(&v64 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v64 + 1));
      }

      (*(**&v67[0] + 56))(v62);
      v27 = *(&v67[0] + 1);
      v67[0] = *v62;
      if (!v27)
      {
        break;
      }

      std::__shared_weak_count::__release_shared[abi:fe200100](v27);
      v13 = *&v67[0];
      if (!*&v67[0])
      {
        goto LABEL_58;
      }
    }

    v13 = v62[0];
  }

  while (v62[0]);
LABEL_58:
  if (*(&v65 + 1) != v65)
  {
    v28 = 0;
    v29 = 0;
    while (1)
    {
      v30 = v5[50] + *(*v5[50] - 792);
      v31 = (*(*v30 + 688))(v30);
      if (v29 >= (*(&v65 + 1) - v65) >> 4)
      {
        break;
      }

      v32 = v31;
      (*(**(v65 + v28) + 88))(v62);
      if (v29 >= (*(&v65 + 1) - v65) >> 4)
      {
        break;
      }

      (*(**(v65 + v28) + 72))(&__p);
      (*(*v32 + 744))(&v54, v32, v62, &__p);
      if (v55)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v55);
      }

      if (__p.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](__p.__r_.__value_.__l.__size_);
      }

      if (v62[1])
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v62[1]);
      }

      ++v29;
      v28 += 16;
      if (v29 >= (*(&v65 + 1) - v65) >> 4)
      {
        goto LABEL_69;
      }
    }

    __break(1u);
LABEL_136:
    __cxa_bad_cast();
  }

LABEL_69:
  v62[0] = &v65;
  std::vector<std::shared_ptr<AdobeXMPCore::INode_v1 const>>::__destroy_vector::operator()[abi:fe200100](v62);
  if (*(&v67[0] + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v67[0] + 1));
  }

LABEL_71:
  if (((v3 & 6) != 0) | ((v3 & 8) >> 3))
  {
    v67[0] = 0uLL;
    v33 = v7[50];
    if (v33)
    {
      v34 = v33 + *(*v33 - 544);
    }

    else
    {
      v34 = 0;
    }

    v35 = v7[51];
    *&v65 = v34;
    *(&v65 + 1) = v35;
    if (v35)
    {
      atomic_fetch_add_explicit((v35 + 8), 1uLL, memory_order_relaxed);
    }

    XMPUtils::GetNodeChildIterator(&v65, v67);
    if (*(&v65 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](*(&v65 + 1));
    }

    v36 = *&v67[0];
    if (*&v67[0])
    {
      while (1)
      {
        (*(*v36 + 48))(&v65);
        v37 = v65;
        v65 = 0uLL;
        v66 = 0;
        (*(*v37 + 88))(&__p, v37);
        (*(*v9 + 40))(v62, v9, &__p);
        v38 = (*(*v62[0] + 192))(v62[0]);
        std::string::basic_string[abi:fe200100]<0>(&v65, v38);
        if (v62[1])
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v62[1]);
        }

        if (__p.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](__p.__r_.__value_.__l.__size_);
        }

        v62[0] = 0;
        v62[1] = 0;
        v63 = 0;
        if (v66 >= 0)
        {
          v39 = HIBYTE(v66);
        }

        else
        {
          v39 = *(&v65 + 1);
        }

        memset(&__p, 0, sizeof(__p));
        std::string::basic_string[abi:fe200100](&__p, v39 + 1);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        if (v39)
        {
          if (v66 >= 0)
          {
            v41 = &v65;
          }

          else
          {
            v41 = v65;
          }

          memmove(p_p, v41, v39);
        }

        *(&p_p->__r_.__value_.__l.__data_ + v39) = 58;
        (*(*v37 + 72))(&v60, v37);
        v42 = (*(*v60.__r_.__value_.__l.__data_ + 192))(v60.__r_.__value_.__r.__words[0]);
        v43 = std::string::append(&__p, v42);
        v44 = *&v43->__r_.__value_.__l.__data_;
        v63 = v43->__r_.__value_.__r.__words[2];
        *v62 = v44;
        v43->__r_.__value_.__l.__size_ = 0;
        v43->__r_.__value_.__r.__words[2] = 0;
        v43->__r_.__value_.__r.__words[0] = 0;
        if (v60.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v60.__r_.__value_.__l.__size_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        memset(&__p, 0, sizeof(__p));
        (*(*v37 + 88))(&v60, v37);
        v45 = (*(*v60.__r_.__value_.__l.__data_ + 192))(v60.__r_.__value_.__r.__words[0]);
        if (v63 >= 0)
        {
          v46 = v62;
        }

        else
        {
          v46 = v62[0];
        }

        ExpandXPath(v45, v46, &__p);
        if (v60.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v60.__r_.__value_.__l.__size_);
        }

        v64 = 0uLL;
        v47 = v5[50];
        if (v47)
        {
          v48 = v47 + *(*v47 - 544);
        }

        else
        {
          v48 = 0;
        }

        v49 = v5[51];
        *&v64 = v48;
        *(&v64 + 1) = v49;
        if (v49)
        {
          atomic_fetch_add_explicit((v49 + 8), 1uLL, memory_order_relaxed);
        }

        if (v3)
        {
          goto LABEL_115;
        }

        (*(*v37 + 88))(&v58, v37);
        v50 = (*(*v58 + 192))(v58);
        std::string::basic_string[abi:fe200100]<0>(&v60, v50);
        v51 = IsInternalProperty(&v60.__r_.__value_.__l.__data_, v62);
        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v60.__r_.__value_.__l.__data_);
        }

        if (v59)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v59);
        }

        if (!v51)
        {
LABEL_115:
          v53 = v37;
          if (*(&v37 + 1))
          {
            atomic_fetch_add_explicit((*(&v37 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          AppendSubtree(&v53, &v64, (v3 & 8) != 0, (v3 & 6) != 0, ((v3 & 0x10) == 0) & (v3 >> 2));
          if (*(&v53 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](*(&v53 + 1));
          }
        }

        if (*(&v64 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v64 + 1));
        }

        v60.__r_.__value_.__r.__words[0] = &__p;
        std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&v60);
        if (SHIBYTE(v63) < 0)
        {
          operator delete(v62[0]);
        }

        if (SHIBYTE(v66) < 0)
        {
          break;
        }

        if (*(&v37 + 1))
        {
          goto LABEL_125;
        }

LABEL_126:
        (*(**&v67[0] + 56))(&v65);
        v52 = *(&v67[0] + 1);
        v67[0] = v65;
        if (v52)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v52);
          v36 = *&v67[0];
          if (!*&v67[0])
          {
            goto LABEL_132;
          }
        }

        else
        {
          v36 = v65;
          if (!v65)
          {
            goto LABEL_132;
          }
        }
      }

      operator delete(v65);
      if (!*(&v37 + 1))
      {
        goto LABEL_126;
      }

LABEL_125:
      std::__shared_weak_count::__release_shared[abi:fe200100](*(&v37 + 1));
      goto LABEL_126;
    }

LABEL_132:
    if (*(&v67[0] + 1))
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](*(&v67[0] + 1));
    }
  }
}

void sub_18610AF3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  v41 = *(v39 - 136);
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v41);
  }

  _Unwind_Resume(exception_object);
}

void **std::vector<std::shared_ptr<AdobeXMPCore::INode_v1 const>>::push_back[abi:fe200100](void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<std::shared_ptr<AdobeXMPCore::INode_v1 const>>>(result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::shared_ptr<AdobeXMPCore::INode_v1 const>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

void AppendSubtree(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v134[0] = 0;
  v134[1] = 0;
  v135 = 0;
  (*(**a1 + 72))(&v137);
  v10 = (*(*v137 + 192))(v137);
  std::string::basic_string[abi:fe200100]<0>(v134, v10);
  if (*(&v137 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v137 + 1));
  }

  v132[0] = 0;
  v132[1] = 0;
  v133 = 0;
  (*(**a1 + 88))(&v137);
  v11 = (*(*v137 + 192))(v137);
  std::string::basic_string[abi:fe200100]<0>(v132, v11);
  if (*(&v137 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v137 + 1));
  }

  v130[0] = 0;
  v130[1] = 0;
  v131 = 0;
  (*(**a2 + 72))(&v137);
  v12 = (*(*v137 + 192))(v137);
  std::string::basic_string[abi:fe200100]<0>(v130, v12);
  if (*(&v137 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v137 + 1));
  }

  v128[0] = 0;
  v128[1] = 0;
  v129 = 0;
  (*(**a2 + 88))(&v137);
  v13 = (*(*v137 + 192))(v137);
  std::string::basic_string[abi:fe200100]<0>(v128, v13);
  if (*(&v137 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v137 + 1));
  }

  v127 = 0;
  v126 = 0uLL;
  (*(**a1 + 72))(&v137);
  v14 = (*(*v137 + 192))(v137);
  (*(**a1 + 88))(__p);
  v15 = (*(*__p[0] + 192))(__p[0]);
  XMPUtils::FindChildNode(a2, v14, v15, 0, &v127, &v126);
  if (__p[1])
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](__p[1]);
  }

  if (*(&v137 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v137 + 1));
  }

  XMPUtils::GetIXMPOptions(a1);
  if ((*(**a1 + 40))() != 1)
  {
    if (!XMPUtils::GetNodeChildCount(a1))
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  (*(**a1 + 232))(&v137);
  v16 = *(&v137 + 1);
  (*(*v137 + 504))(__p);
  v17 = (*(*__p[0] + 184))(__p[0]);
  if (__p[1])
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](__p[1]);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v16);
  }

  if ((v17 & 1) == 0)
  {
LABEL_28:
    if (!v126)
    {
      (*(**a1 + 264))(&v137);
      v29 = v137;
      v137 = 0uLL;
      v30 = *(&v126 + 1);
      v126 = v29;
      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v30);
        if (*(&v137 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v137 + 1));
        }

        v31 = v126;
      }

      else
      {
        v31 = v29;
      }

      v37 = *(**a2 + 40);
      if (v31)
      {
        if (v37() == 4)
        {
          (*(**a2 + 240))(&v137);
          (*(*v137 + 656))(v137, &v126);
        }

        else
        {
          if ((*(**a2 + 40))() != 2)
          {
            goto LABEL_96;
          }

          (*(**a2 + 248))(&v137);
          (*(*v137 + 664))(v137, &v126, v127);
        }

        goto LABEL_94;
      }

      if (v37() == 4)
      {
        (*(**a2 + 240))(&v137);
        v38 = (*(*v137 + 688))(v137);
        (*(**a1 + 88))(__p);
        (*(**a1 + 72))(&v139);
        (*(*v38 + 744))(&v122, v38, __p, &v139);
        v19 = v123;
        if (!v123)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      if ((*(**a2 + 40))() != 2)
      {
        goto LABEL_96;
      }

      (*(**a2 + 248))(&v137);
      (*(*v137 + 680))(&v120);
      v20 = v121;
      if (!v121)
      {
        goto LABEL_94;
      }

LABEL_26:
      std::__shared_weak_count::__release_shared[abi:fe200100](v20);
      goto LABEL_94;
    }

    IXMPOptions = XMPUtils::GetIXMPOptions(a1);
    v137 = v126;
    if (*(&v126 + 1))
    {
      atomic_fetch_add_explicit((*(&v126 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v22 = XMPUtils::GetIXMPOptions(&v137);
    v23 = IXMPOptions & 0x1F00;
    if (*(&v137 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](*(&v137 + 1));
    }

    if ((IXMPOptions & 0x1F00) != 0)
    {
      v24 = a3;
    }

    else
    {
      v24 = 0;
    }

    if ((v24 & 1) == 0 && a4)
    {
      if (v126)
      {
        (*(**a2 + 240))(&v137);
        v25 = (*(*v137 + 688))(v137);
        (*(*v126 + 88))(__p);
        (*(*v126 + 72))(&v139);
        (*(*v25 + 744))(&v118, v25, __p, &v139);
        if (v119)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v119);
        }

        if (*(&v139 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v139 + 1));
        }

        if (__p[1])
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](__p[1]);
        }

        if (*(&v137 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v137 + 1));
        }
      }

      (*(**a1 + 264))(&v137);
      v26 = v137;
      v137 = 0uLL;
      v27 = *(&v126 + 1);
      v126 = v26;
      if (v27)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v27);
        if (*(&v137 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v137 + 1));
        }

        v28 = v126;
        if (!v126)
        {
          goto LABEL_96;
        }
      }

      else
      {
        v28 = v26;
        if (!v26)
        {
          goto LABEL_96;
        }
      }

      (*(*v28 + 56))(&v137);
      if (v137 == *a2)
      {
        if (*(&v137 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v137 + 1));
        }
      }

      else
      {
        v40 = (*(**a2 + 40))(*a2);
        if (*(&v137 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v137 + 1));
        }

        if (v40 == 4)
        {
          (*(**a2 + 240))(&v137);
          (*(*(v137 + *(*v137 - 688)) + 520))(v137 + *(*v137 - 688), &v126);
          goto LABEL_150;
        }
      }

      (*(*v126 + 56))(&v137);
      if (v137 != *a2)
      {
        v49 = (*(**a2 + 40))(*a2);
        if (*(&v137 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v137 + 1));
        }

        if (v49 != 2)
        {
          goto LABEL_152;
        }

        (*(**a2 + 248))(&v137);
        (*(*v137 + 664))(v137, &v126, v127);
      }

LABEL_150:
      if (*(&v137 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v137 + 1));
      }

LABEL_152:
      v137 = v126;
      if (*(&v126 + 1))
      {
        atomic_fetch_add_explicit((*(&v126 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      if ((XMPUtils::GetIXMPOptions(&v137) & 0x1F00) != 0)
      {
        *__p = v126;
        if (*(&v126 + 1))
        {
          atomic_fetch_add_explicit((*(&v126 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v50 = XMPUtils::GetNodeChildCount(__p) == 0;
        if (__p[1])
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](__p[1]);
        }
      }

      else
      {
        v50 = 0;
      }

      if (*(&v137 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v137 + 1));
      }

      if (!v50)
      {
        goto LABEL_96;
      }

      if ((*(**a2 + 40))() == 4)
      {
        (*(**a2 + 240))(&v137);
        v51 = (*(*v137 + 688))(v137);
        (*(*v126 + 88))(__p);
        (*(*v126 + 72))(&v139);
        (*(*v51 + 744))(&v116, v51, __p, &v139);
        v19 = v117;
        if (!v117)
        {
LABEL_23:
          if (*(&v139 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](*(&v139 + 1));
          }

          v20 = __p[1];
          if (__p[1])
          {
            goto LABEL_26;
          }

LABEL_94:
          v39 = *(&v137 + 1);
          if (!*(&v137 + 1))
          {
            goto LABEL_96;
          }

          goto LABEL_95;
        }

LABEL_22:
        std::__shared_weak_count::__release_shared[abi:fe200100](v19);
        goto LABEL_23;
      }

      if ((*(**a2 + 40))() != 2)
      {
        goto LABEL_96;
      }

      (*(**a2 + 248))(&v137);
      (*(*v137 + 680))(&v114);
      v20 = v115;
      if (!v115)
      {
        goto LABEL_94;
      }

      goto LABEL_26;
    }

    if ((IXMPOptions & 0x1F00) == 0 || v23 != (v22 & 0x1F00))
    {
      goto LABEL_96;
    }

    if (v23 == 256)
    {
      __p[0] = 0;
      __p[1] = 0;
      XMPUtils::GetNodeChildIterator(a1, __p);
      v32 = __p[0];
      if (__p[0])
      {
        do
        {
          while (1)
          {
            (*(*v32 + 48))(&v137);
            v33 = *(&v137 + 1);
            v113 = v137;
            if (*(&v137 + 1))
            {
              atomic_fetch_add_explicit((*(&v137 + 1) + 8), 1uLL, memory_order_relaxed);
            }

            AppendSubtree(&v113, &v126, a3, a4, a5);
            if (*(&v113 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](*(&v113 + 1));
            }

            if (a5)
            {
              v137 = v126;
              if (*(&v126 + 1))
              {
                atomic_fetch_add_explicit((*(&v126 + 1) + 8), 1uLL, memory_order_relaxed);
              }

              NodeChildCount = XMPUtils::GetNodeChildCount(&v137);
              if (*(&v137 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:fe200100](*(&v137 + 1));
              }

              if (!NodeChildCount)
              {
                (*(**a2 + 240))(&v137);
                v35 = (*(*v137 + 688))(v137);
                (*(*v126 + 88))(&v139);
                (*(*v126 + 72))(&v136);
                (*(*v35 + 744))(&v111, v35, &v139, &v136);
                if (v112)
                {
                  std::__shared_weak_count::__release_shared[abi:fe200100](v112);
                }

                if (*(&v136 + 1))
                {
                  std::__shared_weak_count::__release_shared[abi:fe200100](*(&v136 + 1));
                }

                if (*(&v139 + 1))
                {
                  std::__shared_weak_count::__release_shared[abi:fe200100](*(&v139 + 1));
                }

                if (*(&v137 + 1))
                {
                  std::__shared_weak_count::__release_shared[abi:fe200100](*(&v137 + 1));
                }
              }
            }

            if (v33)
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v33);
            }

            (*(*__p[0] + 56))(&v137);
            v36 = __p[1];
            *__p = v137;
            if (!v36)
            {
              break;
            }

            std::__shared_weak_count::__release_shared[abi:fe200100](v36);
            v32 = __p[0];
            if (!__p[0])
            {
              goto LABEL_141;
            }
          }

          v32 = v137;
        }

        while (v137);
      }

      goto LABEL_141;
    }

    if ((IXMPOptions & 0x1000) == 0)
    {
      if ((IXMPOptions & 0x200) == 0)
      {
        goto LABEL_96;
      }

      __p[0] = 0;
      __p[1] = 0;
      XMPUtils::GetNodeChildIterator(a1, __p);
      v41 = __p[0];
      if (__p[0])
      {
        do
        {
          while (1)
          {
            v139 = 0uLL;
            (*(*v41 + 48))(&v137);
            v42 = v137;
            v139 = v137;
            v137 = 0uLL;
            (*(*v126 + 248))(&v137);
            v43 = (*(*(v137 + *(*v137 - 688)) + 560))(v137 + *(*v137 - 688));
            if (!v43)
            {
              goto LABEL_132;
            }

            v44 = v43;
            v45 = v43;
            v46 = 1;
            while (1)
            {
              v136 = 0uLL;
              (*(*v137 + 656))(&v136);
              v96 = v136;
              if (*(&v136 + 1))
              {
                atomic_fetch_add_explicit((*(&v136 + 1) + 8), 1uLL, memory_order_relaxed);
              }

              v95 = v42;
              if (*(&v42 + 1))
              {
                atomic_fetch_add_explicit((*(&v42 + 1) + 8), 1uLL, memory_order_relaxed);
              }

              v47 = ItemValuesMatch(&v96, &v95);
              if (*(&v95 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:fe200100](*(&v95 + 1));
              }

              if (*(&v96 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:fe200100](*(&v96 + 1));
              }

              if (*(&v136 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:fe200100](*(&v136 + 1));
              }

              if (v47)
              {
                break;
              }

              ++v46;
              --v45;
              if (v46 > v44)
              {
                goto LABEL_132;
              }
            }

            if (!v45)
            {
LABEL_132:
              CloneIXMPSubtree(&v139, &v126);
            }

            if (*(&v137 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](*(&v137 + 1));
            }

            if (*(&v42 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](*(&v42 + 1));
            }

            (*(*__p[0] + 56))(&v137);
            v48 = __p[1];
            *__p = v137;
            if (!v48)
            {
              break;
            }

            std::__shared_weak_count::__release_shared[abi:fe200100](v48);
            v41 = __p[0];
            if (!__p[0])
            {
              goto LABEL_141;
            }
          }

          v41 = v137;
        }

        while (v137);
      }

LABEL_141:
      v39 = __p[1];
      if (!__p[1])
      {
        goto LABEL_96;
      }

      goto LABEL_95;
    }

    if ((a3 & 1) == 0)
    {
      __assert_rtn("AppendSubtree", "XMPUtils2.cpp", 413, "mergeCompound");
    }

    (*(**a1 + 248))(&v137);
    v89 = a4;
    v90 = *(&v137 + 1);
    v52 = v137;
    v53 = XMPUtils::GetNodeChildCount(a1);
    v54 = v53;
    if (!v53 || !v126)
    {
LABEL_285:
      v39 = v90;
      if (!v90)
      {
        goto LABEL_96;
      }

LABEL_95:
      std::__shared_weak_count::__release_shared[abi:fe200100](v39);
      goto LABEL_96;
    }

    v55 = 1;
    v91 = v52;
    v92 = v53;
    while (1)
    {
      (*(*v52 + 656))(&v137, v52, v55);
      v110 = v137;
      v108 = 0;
      v109 = 0;
      v56 = v137;
      (*(*v137 + 232))(&v137, v137);
      v57 = *(&v137 + 1);
      (*(*v137 + 504))(&v108);
      if (v57)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v57);
      }

      if (((*(*v56 + 184))(v56) & 1) == 0)
      {
        goto LABEL_275;
      }

      (*(*v56 + 128))(&v137, v56, "http://www.w3.org/XML/1998/namespace", 36, "lang", -1);
      v58 = *(&v137 + 1);
      v59 = v137;
      if (v137)
      {
        if ((*(*v137 + 40))(v137) == 1)
        {
          break;
        }
      }

LABEL_273:
      if (v58)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v58);
      }

LABEL_275:
      if (v109)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v109);
      }

      if (*(&v110 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v110 + 1));
      }

      if (++v55 > v54 || !v126)
      {
        goto LABEL_285;
      }
    }

    __p[0] = 0;
    __p[1] = 0;
    v107 = 0;
    v94 = v58;
    (*(*v59 + 232))(&v137, v59);
    v60 = *(&v137 + 1);
    (*(*v137 + 504))(&v139);
    v61 = (*(*v139 + 192))(v139);
    std::string::basic_string[abi:fe200100]<0>(__p, v61);
    if (*(&v139 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](*(&v139 + 1));
    }

    if (v60)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v60);
    }

    (*(*v126 + 248))(&v104);
    v63 = v104;
    v62 = v105;
    v104 = 0;
    v105 = 0;
    if (v63)
    {
      v64 = v63 + *(*v63 - 544);
    }

    else
    {
      v64 = 0;
    }

    *&v137 = v64;
    *(&v137 + 1) = v62;
    if (v62)
    {
      atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v93 = v62;
    v65 = XMPUtils::GetIXMPOptions(&v137);
    if (*(&v137 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](*(&v137 + 1));
    }

    if ((v65 & 0x200) == 0)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 102;
      exception[1] = "Language item must be used on array";
      *(exception + 16) = 0;
    }

    v66 = (*(*(v63 + *(*v63 - 688)) + 560))(v63 + *(*v63 - 688));
    v67 = (v66 + 1);
    v68 = 1;
    if (v66 >= 1)
    {
      while (1)
      {
        (*(*v63 + 656))(&v137, v63, v68);
        v69 = v137;
        if ((*(*v137 + 184))(v137))
        {
          break;
        }

        v78 = 4;
LABEL_219:
        if (*(&v69 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v69 + 1));
        }

        if (v78 == 2)
        {
          goto LABEL_226;
        }

        if (v67 == ++v68)
        {
          LODWORD(v68) = v67;
          goto LABEL_226;
        }
      }

      (*(*v69 + 128))(&v137, v69, "http://www.w3.org/XML/1998/namespace", 36, "lang", -1);
      v70 = v137;
      if (v137 && (*(*v137 + 40))(v137) == 1)
      {
        v137 = 0uLL;
        v138 = 0;
        (*(*v70 + 232))(&v139, v70);
        v71 = *(&v139 + 1);
        (*(*v139 + 504))(&v136);
        v72 = (*(*v136 + 192))(v136);
        std::string::basic_string[abi:fe200100]<0>(&v137, v72);
        if (*(&v136 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v136 + 1));
        }

        if (v71)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v71);
        }

        v73 = SHIBYTE(v138);
        if (v138 >= 0)
        {
          v74 = HIBYTE(v138);
        }

        else
        {
          v74 = *(&v137 + 1);
        }

        v75 = HIBYTE(v107);
        if (v107 < 0)
        {
          v75 = __p[1];
        }

        if (v74 == v75)
        {
          if (v138 >= 0)
          {
            v76 = &v137;
          }

          else
          {
            v76 = v137;
          }

          if (v107 >= 0)
          {
            v77 = __p;
          }

          else
          {
            v77 = __p[0];
          }

          v78 = 2 * (memcmp(v76, v77, v74) == 0);
          if (v73 < 0)
          {
LABEL_225:
            operator delete(v137);
          }
        }

        else
        {
          v78 = 0;
          if (SHIBYTE(v138) < 0)
          {
            goto LABEL_225;
          }
        }
      }

      else
      {
        v78 = 4;
      }

      if (*(&v70 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v70 + 1));
      }

      goto LABEL_219;
    }

LABEL_226:
    if (v68 == v67)
    {
      v79 = -1;
    }

    else
    {
      v79 = v68;
    }

    if (v93)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v93);
    }

    v54 = v92;
    if (v105)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v105);
    }

    if ((*(*v108 + 184))(v108))
    {
      if (!a5 || v79 == -1)
      {
        goto LABEL_270;
      }

      (*(*v126 + 248))(&v137);
      (*(*v137 + 680))(&v102);
      if (v103)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v103);
      }

      if (*(&v137 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v137 + 1));
      }

      v137 = v126;
      if (*(&v126 + 1))
      {
        atomic_fetch_add_explicit((*(&v126 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v80 = XMPUtils::GetNodeChildCount(&v137);
      if (*(&v137 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v137 + 1));
      }

      if (v80)
      {
        goto LABEL_270;
      }

      if ((*(**a2 + 40))() == 4)
      {
        (*(**a2 + 240))(&v137);
        v81 = (*(*v137 + 688))(v137);
        (*(*v126 + 88))(&v139);
        (*(*v126 + 72))(&v136);
        (*(*v81 + 744))(&v100, v81, &v139, &v136);
        if (v101)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v101);
        }

        if (*(&v136 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v136 + 1));
        }

        goto LABEL_266;
      }

      if ((*(**a2 + 40))() == 2)
      {
        (*(**a2 + 248))(&v137);
        (*(*v137 + 680))(&v98);
        v87 = v99;
        if (!v99)
        {
LABEL_268:
          if (*(&v137 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](*(&v137 + 1));
          }

          goto LABEL_270;
        }

LABEL_267:
        std::__shared_weak_count::__release_shared[abi:fe200100](v87);
        goto LABEL_268;
      }
    }

    else
    {
      if (v79 == -1)
      {
        v137 = 0uLL;
        AdobeXMPCore::INode_v1::GetSimpleQualifier(v56, &v137);
        (*(*v137 + 504))(&v139);
        v85 = (*(*v139 + 192))(v139);
        if (!strcmp(v85, "x-default"))
        {
          v136 = v126;
          if (*(&v126 + 1))
          {
            atomic_fetch_add_explicit((*(&v126 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v86 = XMPUtils::GetNodeChildCount(&v136) == 0;
          if (*(&v136 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](*(&v136 + 1));
          }
        }

        else
        {
          v86 = 1;
        }

        if (*(&v139 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v139 + 1));
        }

        if (!v86)
        {
          v139 = 0uLL;
          (*(*v56 + 88))(&v104, v56);
          (*(*v56 + 72))(&v97, v56);
          AdobeXMPCore_Int::ISimpleNode_I::CreateSimpleNode();
        }

        CloneIXMPSubtree(&v110, &v126);
        goto LABEL_268;
      }

      if (v89)
      {
        v137 = 0uLL;
        (*(*v126 + 248))(&v139);
        (*(*v139 + 656))(&v137);
        if (*(&v139 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v139 + 1));
        }

        (*(*v137 + 232))(&v139);
        v82 = v139;
        v83 = (*(*v108 + 192))(v108);
        v84 = (*(*v108 + 208))(v108);
        (*(*v82 + 512))(v82, v83, v84);
LABEL_266:
        v87 = *(&v139 + 1);
        if (!*(&v139 + 1))
        {
          goto LABEL_268;
        }

        goto LABEL_267;
      }
    }

LABEL_270:
    if (SHIBYTE(v107) < 0)
    {
      operator delete(__p[0]);
    }

    v58 = v94;
    v52 = v91;
    goto LABEL_273;
  }

LABEL_19:
  if (*a1 && a5)
  {
    (*(**a2 + 240))(&v137);
    v18 = (*(*v137 + 688))(v137);
    (*(**a1 + 88))(__p);
    (*(**a1 + 72))(&v139);
    (*(*v18 + 744))(&v124, v18, __p, &v139);
    v19 = v125;
    if (!v125)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_96:
  if (*(&v126 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v126 + 1));
  }

  if (SHIBYTE(v129) < 0)
  {
    operator delete(v128[0]);
  }

  if (SHIBYTE(v131) < 0)
  {
    operator delete(v130[0]);
  }

  if (SHIBYTE(v133) < 0)
  {
    operator delete(v132[0]);
  }

  if (SHIBYTE(v135) < 0)
  {
    operator delete(v134[0]);
  }
}

void sub_18610D2C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, std::__shared_weak_count *a39, uint64_t a40, std::__shared_weak_count *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, std::__shared_weak_count *a59)
{
  v61 = *(v59 - 120);
  if (v61)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v61);
  }

  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a16);
  }

  if (a39)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a39);
  }

  if (a41)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a41);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a11);
  }

  if (a59)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a59);
  }

  if (*(v59 - 217) < 0)
  {
    operator delete(*(v59 - 240));
  }

  if (*(v59 - 193) < 0)
  {
    operator delete(*(v59 - 216));
  }

  if (*(v59 - 169) < 0)
  {
    operator delete(*(v59 - 192));
  }

  if (*(v59 - 145) < 0)
  {
    operator delete(*(v59 - 168));
  }

  _Unwind_Resume(exception_object);
}

void XMPUtils::DuplicateSubtree_v2(XMPUtils *this, const XMPMeta *lpsrc, XMPMeta *a3, char *a4, char *a5, char *a6, const char *a7)
{
  if (!lpsrc)
  {
    return;
  }

  v7 = a7;
  if (!v13)
  {
    return;
  }

  v14 = v13;
  if (!v15)
  {
    __cxa_bad_cast();
  }

  memset(v60, 0, sizeof(v60));
  memset(v59, 0, sizeof(v59));
  v57 = 0;
  v58 = 0;
  v56 = 0uLL;
  if (!a3 || !*a3)
  {
    v16 = "(sourceNS != 0) && (*sourceNS != 0)";
    v17 = 653;
    goto LABEL_130;
  }

  if (!a4 || !*a4)
  {
    v16 = "(sourceRoot != 0) && (*sourceRoot != 0)";
    v17 = 654;
    goto LABEL_130;
  }

  v16 = "(dest != 0) && (destNS != 0) && (destRoot != 0)";
  v17 = 655;
  if (!a5 || !a6)
  {
LABEL_130:
    __assert_rtn("DuplicateSubtree_v2", "XMPUtils2.cpp", v17, v16);
  }

  v18 = v15;
  if (!*a5)
  {
    a5 = a3;
  }

  if (!*a6)
  {
    a6 = a4;
  }

  v19 = strcmp(a3, "*");
  v20 = strcmp(a5, "*");
  if (v19)
  {
    v21 = v20 == 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = v21;
  if (v18 == v14 && (v22 & 1) != 0)
  {
    v44 = "Can't duplicate tree onto itself";
    goto LABEL_135;
  }

  if (!(v20 | v19))
  {
    v44 = "Use Clone for full tree to full tree";
LABEL_135:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    exception[1] = v44;
    *(exception + 16) = 0;
  }

  if (!v19)
  {
    ExpandXPath(a5, a6, v59);
    LODWORD(v53) = 0;
    XMPUtils::FindCnstNode(v14 + 50, v59, &v56, &v53, 0);
    if ((v29 & 1) != 0 && (v53 & 0x100) != 0)
    {
      v54 = v56;
      if (*(&v56 + 1))
      {
        atomic_fetch_add_explicit((*(&v56 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      NodeChildCount = XMPUtils::GetNodeChildCount(&v54);
      if (*(&v54 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v54 + 1));
      }

      if (!NodeChildCount)
      {
LABEL_50:
        std::shared_ptr<AdobeXMPCore::INode_v1>::operator=[abi:fe200100]<AdobeXMPCore::ISimpleNode_v1,0>(&v57, (v18 + 50));
        v32 = v57;
        v31 = v58;
        if (v58)
        {
          atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if ((*(*v32 + 40))(v32) == 1)
        {
          v54 = 0uLL;
          (*(*v32 + 232))(&v54, v32);
          v64 = 0uLL;
          (*(*v56 + 88))(&v63);
          (*(*v56 + 72))(&v62);
          (*(*v54 + 504))(&v61);
          AdobeXMPCore_Int::ISimpleNode_I::CreateSimpleNode();
        }

        if ((*(*v32 + 40))(v32) == 2)
        {
          v54 = 0uLL;
          (*(*v32 + 248))(&v54, v32);
          v64 = 0uLL;
          (*(*v56 + 88))(&v63);
          (*(*v56 + 72))(&v62);
          (*(*v54 + 640))(v54);
          AdobeXMPCore_Int::IArrayNode_I::CreateArrayNode();
        }

        v54 = 0uLL;
        (*(*v32 + 240))(&v54, v32);
        v64 = 0uLL;
        (*(*v56 + 240))(&v64);
        v63 = 0uLL;
        (*(*(v54 + *(*v54 - 688)) + 552))(&v63);
        while (1)
        {
          v37 = v63;
          if (!v63)
          {
            break;
          }

          while (1)
          {
            v62 = 0uLL;
            (*(*v37 + 48))(&v61);
            (*(*v61 + 264))(&v62);
            if (*(&v61 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](*(&v61 + 1));
            }

            (*(*(v64 + *(*v64 - 688)) + 520))(v64 + *(*v64 - 688), &v62);
            if (*(&v62 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](*(&v62 + 1));
            }

            (*(*v63 + 56))(&v62);
            v38 = v62;
            v62 = 0uLL;
            v39 = *(&v63 + 1);
            v63 = v38;
            if (v39)
            {
              break;
            }

            v37 = v38;
            if (!v38)
            {
              goto LABEL_98;
            }
          }

          std::__shared_weak_count::__release_shared[abi:fe200100](v39);
          if (*(&v62 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](*(&v62 + 1));
          }
        }

LABEL_98:
        if (*(&v63 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v63 + 1));
        }

        std::shared_ptr<AdobeXMPCore::INode_v1>::operator=[abi:fe200100]<AdobeXMPCore::ISimpleNode_v1,0>(&v56, &v64);
        if (*(&v64 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v64 + 1));
        }

        if (*(&v54 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v54 + 1));
        }

        if ((*(*v32 + 184))(v32))
        {
          v54 = 0uLL;
          (*(*v32 + 112))(&v54, v32);
          while (1)
          {
            v40 = v54;
            if (!v54)
            {
              break;
            }

            while (1)
            {
              v64 = 0uLL;
              (*(*v40 + 48))(&v63);
              (*(*v63 + 264))(&v64);
              if (*(&v63 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:fe200100](*(&v63 + 1));
              }

              (*(*v56 + 136))(v56, &v64);
              if (*(&v64 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:fe200100](*(&v64 + 1));
              }

              (*(*v54 + 56))(&v64);
              v41 = v64;
              v64 = 0uLL;
              v42 = *(&v54 + 1);
              v54 = v41;
              if (v42)
              {
                break;
              }

              v40 = v41;
              if (!v41)
              {
                goto LABEL_116;
              }
            }

            std::__shared_weak_count::__release_shared[abi:fe200100](v42);
            if (*(&v64 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](*(&v64 + 1));
            }
          }

LABEL_116:
          if (*(&v54 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](*(&v54 + 1));
          }
        }

        if (v31)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v31);
        }

        goto LABEL_120;
      }

      if ((v7 & 0x20000000) != 0)
      {
        (*(*v56 + 224))(v56, 1, 1);
        goto LABEL_50;
      }

      v46 = "Destination must be an empty struct";
    }

    else
    {
      v46 = "Destination must be an existing struct";
    }

    v50 = __cxa_allocate_exception(0x18uLL);
    *v50 = 102;
    v50[1] = v46;
    *(v50 + 16) = 0;
  }

  if (v20)
  {
    ExpandXPath(a3, a4, v60);
    ExpandXPath(a5, a6, v59);
    v54 = 0uLL;
    XMPUtils::FindCnstNode(v18 + 50, v60, &v57, 0, 0);
    if (v23)
    {
      XMPUtils::FindCnstNode(v14 + 50, v59, &v56, 0, 0);
      if (v24)
      {
        v48 = "Destination subtree must not exist";
      }

      else
      {
        XMPUtils::FindNode(v14 + 50, v59, 1, 0, &v56, 0, 0);
        if (v25)
        {
          if (v18 != v14)
          {
            goto LABEL_39;
          }

          v26 = *(&v56 + 1);
          v27 = v56;
          if (*(&v56 + 1))
          {
            atomic_fetch_add_explicit((*(&v56 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          if (v27)
          {
            do
            {
              if (v27 == v57)
              {
                v43 = __cxa_allocate_exception(0x18uLL);
                *v43 = 102;
                v43[1] = "Destination subtree is within the source subtree";
                *(v43 + 16) = 0;
              }

              (*(*v27 + 56))(&v64, v27);
              v28 = *(&v64 + 1);
              v27 = v64;
              v64 = 0uLL;
              if (v26)
              {
                std::__shared_weak_count::__release_shared[abi:fe200100](v26);
                if (*(&v64 + 1))
                {
                  std::__shared_weak_count::__release_shared[abi:fe200100](*(&v64 + 1));
                }
              }

              v26 = v28;
            }

            while (v27);
            if (v28)
            {
              goto LABEL_38;
            }
          }

          else
          {
            v28 = v26;
            if (v26)
            {
LABEL_38:
              std::__shared_weak_count::__release_shared[abi:fe200100](v28);
            }
          }

LABEL_39:
          if ((*(*v57 + 40))(v57) == 1)
          {
            v64 = 0uLL;
            (*(*v57 + 232))(&v64);
            v63 = 0uLL;
            (*(*v56 + 88))(&v62);
            (*(*v56 + 72))(&v61);
            (*(*v64 + 504))(&v53);
            AdobeXMPCore_Int::ISimpleNode_I::CreateSimpleNode();
          }

          if ((*(*v57 + 40))(v57) == 2)
          {
            v64 = 0uLL;
            (*(*v57 + 248))(&v64);
            v63 = 0uLL;
            (*(*v56 + 88))(&v62);
            (*(*v56 + 72))(&v61);
            (*(*v64 + 640))(v64);
            AdobeXMPCore_Int::IArrayNode_I::CreateArrayNode();
          }

          v64 = 0uLL;
          (*(*v57 + 240))(&v64);
          v63 = 0uLL;
          (*(*v56 + 88))(&v62);
          (*(*v56 + 72))(&v52);
          AdobeXMPCore_Int::IStructureNode_I::CreateStructureNode();
        }

        v48 = "Can't create destination root node";
      }
    }

    else
    {
      v48 = "Can't find source subtree";
    }

    v49 = __cxa_allocate_exception(0x18uLL);
    *v49 = 102;
    v49[1] = v48;
    *(v49 + 16) = 0;
  }

  v54 = 0uLL;
  v55 = 0;
  ExpandXPath(a3, a4, &v54);
  v63 = 0uLL;
  LODWORD(v53) = 0;
  XMPUtils::FindCnstNode(v18 + 50, &v54, &v63, &v53, 0);
  if (!v63 || (v53 & 0x100) == 0)
  {
    v47 = "Source must be an existing struct";
    goto LABEL_145;
  }

  std::shared_ptr<AdobeXMPCore::INode_v1>::operator=[abi:fe200100]<AdobeXMPCore::ISimpleNode_v1,0>(&v56, (v14 + 50));
  v64 = v56;
  if (*(&v56 + 1))
  {
    atomic_fetch_add_explicit((*(&v56 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v33 = XMPUtils::GetNodeChildCount(&v64);
  if (*(&v64 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v64 + 1));
  }

  if (!v33)
  {
    goto LABEL_63;
  }

  if ((v7 & 0x20000000) == 0)
  {
    v47 = "Destination tree must be empty";
LABEL_145:
    v51 = __cxa_allocate_exception(0x18uLL);
    *v51 = 102;
    v51[1] = v47;
    *(v51 + 16) = 0;
  }

  (*(*v56 + 224))(v56, 1, 1);
LABEL_63:
  v62 = 0uLL;
  v64 = v63;
  if (*(&v63 + 1))
  {
    atomic_fetch_add_explicit((*(&v63 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  XMPUtils::GetNodeChildIterator(&v64, &v62);
  v34 = *(&v64 + 1);
  if (!*(&v64 + 1))
  {
    goto LABEL_67;
  }

  while (1)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v34);
LABEL_67:
    v35 = v62;
    if (!v62)
    {
      break;
    }

    while (1)
    {
      v61 = 0uLL;
      (*(*v35 + 48))(&v64);
      v36 = *(&v64 + 1);
      (*(*v64 + 264))(&v61);
      if (v36)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v36);
      }

      if ((*(*v56 + 40))(v56) == 4)
      {
        (*(*v56 + 240))(&v64);
        (*(*(v64 + *(*v64 - 688)) + 520))(v64 + *(*v64 - 688), &v61);
        if (*(&v64 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](*(&v64 + 1));
        }
      }

      if (*(&v61 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](*(&v61 + 1));
      }

      (*(*v62 + 56))(&v64);
      v34 = *(&v62 + 1);
      v62 = v64;
      if (v34)
      {
        break;
      }

      v35 = v64;
      if (!v64)
      {
        goto LABEL_77;
      }
    }
  }

LABEL_77:
  if (*(&v62 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v62 + 1));
  }

  if (*(&v63 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v63 + 1));
  }

  *&v64 = &v54;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&v64);
LABEL_120:
  if (*(&v56 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](*(&v56 + 1));
  }

  if (v58)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v58);
  }

  *&v54 = v59;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&v54);
  v59[0] = v60;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](v59);
}

void sub_18610EF98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, std::__shared_weak_count *a22, void **a23, uint64_t a24, uint64_t a25, char a26)
{
  v29 = *(v27 - 88);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v29);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a16);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v26);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a20);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a22);
  }

  *(v27 - 112) = &a23;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100]((v27 - 112));
  a23 = &a26;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&a23);
  _Unwind_Resume(a1);
}

void XMPUtils::RemoveProperties_v2(XMPUtils *this, XMPMeta *a2, char *a3, const char *a4)
{
  if (!this)
  {
    return;
  }

  v4 = a4;
  if (!v7)
  {
    return;
  }

  if (!a2 || !a3)
  {
LABEL_87:
    XMPUtils::RemoveProperties_v2();
  }

  v8 = v7;
  if (*a3)
  {
    if (!*a2)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 4;
      exception[1] = "Property name requires schema namespace";
      *(exception + 16) = 0;
    }

    v56 = 0;
    v57 = 0;
    v58 = 0;
    ExpandXPath(a2, a3, &v56);
    v55 = 0;
    *&__p.__r_.__value_.__l.__data_ = 0uLL;
    XMPUtils::FindNode(v8 + 50, &v56, 0, 0, &__p, &v55, 0);
    if (!v9)
    {
      goto LABEL_82;
    }

    if (v4)
    {
      goto LABEL_11;
    }

    if ((v57 - v56) > 0x20)
    {
      if (IsInternalProperty(v56, v56 + 4))
      {
LABEL_82:
        if (__p.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](__p.__r_.__value_.__l.__size_);
        }

        __p.__r_.__value_.__r.__words[0] = &v56;
        std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&__p);
        return;
      }

LABEL_11:
      v54[0] = 0;
      v54[1] = 0;
      (*(*__p.__r_.__value_.__l.__data_ + 56))(v54);
      if ((*(*v54[0] + 40))(v54[0]) == 4)
      {
        (*(*v54[0] + 240))(&__n);
        v10 = (*(*__n + 688))(__n);
        (*(*__p.__r_.__value_.__l.__data_ + 88))(&v48);
        (*(*__p.__r_.__value_.__l.__data_ + 72))(&v46);
        (*(*v10 + 744))(&v52, v10, &v48, &v46);
        if (v53)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v53);
        }

        if (v47)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v47);
        }

        v11 = v49;
        if (!v49)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if ((*(*v54[0] + 40))(v54[0]) != 2)
        {
LABEL_80:
          if (v54[1])
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v54[1]);
          }

          goto LABEL_82;
        }

        (*(*v54[0] + 248))(&__n);
        (*(*__n + 680))(&v44);
        v11 = v45;
        if (!v45)
        {
LABEL_18:
          if (v51)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v51);
          }

          goto LABEL_80;
        }
      }

      std::__shared_weak_count::__release_shared[abi:fe200100](v11);
      goto LABEL_18;
    }

    goto LABEL_86;
  }

  if (*a2)
  {
    v56 = 0;
    v57 = 0;
    v58 = 0;
    *&__p.__r_.__value_.__l.__data_ = 0uLL;
    (*(*(v7[50] + *(*v7[50] - 688)) + 552))(&__p, v7[50] + *(*v7[50] - 688));
    while (1)
    {
      v13 = __p.__r_.__value_.__r.__words[0];
      if (!__p.__r_.__value_.__r.__words[0])
      {
        break;
      }

      while (1)
      {
        v54[0] = 0;
        v54[1] = 0;
        (*(*v13 + 48))(v54);
        (*(*v54[0] + 88))(&__n);
        v14 = (*(*__n + 192))(__n);
        v15 = strcmp(v14, a2);
        if (v51)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v51);
        }

        if (!v15)
        {
          std::vector<std::shared_ptr<AdobeXMPCore::INode_v1>>::push_back[abi:fe200100](&v56, v54);
        }

        if (v54[1])
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v54[1]);
        }

        (*(*__p.__r_.__value_.__l.__data_ + 56))(v54);
        v16 = *v54;
        v54[0] = 0;
        v54[1] = 0;
        size = __p.__r_.__value_.__l.__size_;
        *&__p.__r_.__value_.__l.__data_ = v16;
        if (size)
        {
          break;
        }

        v13 = v16;
        if (!v16)
        {
          goto LABEL_34;
        }
      }

      std::__shared_weak_count::__release_shared[abi:fe200100](size);
      if (v54[1])
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v54[1]);
      }
    }

LABEL_34:
    if (__p.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](__p.__r_.__value_.__l.__size_);
    }

    if (v57 != v56)
    {
      v18 = 0;
      v19 = 0;
      while (1)
      {
        v20 = v8[50] + *(*v8[50] - 792);
        v21 = (*(*v20 + 688))(v20);
        if (v19 >= (v57 - v56) >> 4)
        {
          break;
        }

        v22 = v21;
        (*(**&v56[v18] + 88))(&__p);
        if (v19 >= (v57 - v56) >> 4)
        {
          break;
        }

        (*(**&v56[v18] + 72))(v54);
        (*(*v22 + 744))(&v42, v22, &__p, v54);
        if (v43)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v43);
        }

        if (v54[1])
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v54[1]);
        }

        if (__p.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](__p.__r_.__value_.__l.__size_);
        }

        ++v19;
        v18 += 16;
        if (v19 >= (v57 - v56) >> 4)
        {
          goto LABEL_47;
        }
      }

LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

LABEL_47:
    if ((v4 & 0x800) == 0 || (v54[0] = 0, LODWORD(__n) = 0, XMPMeta::GetNamespacePrefix(a2, v54, &__n, v12), v23 = sRegisteredAliasMap + 8, v24 = *sRegisteredAliasMap, *sRegisteredAliasMap == sRegisteredAliasMap + 8))
    {
LABEL_73:
      __p.__r_.__value_.__r.__words[0] = &v56;
      std::vector<std::shared_ptr<AdobeXMPCore::INode_v1 const>>::__destroy_vector::operator()[abi:fe200100](&__p);
      return;
    }

    while (1)
    {
      v25 = *(v24 + 55);
      v26 = (v24 + 4);
      if (v25 < 0)
      {
        v26 = v24[4];
      }

      if (strncmp(v26, v54[0], __n))
      {
        goto LABEL_67;
      }

      if ((v25 & 0x80000000) != 0)
      {
        v27 = v24[4];
        v25 = v24[5];
        if (v25)
        {
LABEL_54:
          v28 = &v27[v25];
          v29 = v27;
          while (*v29 != 58)
          {
            ++v29;
            if (!--v25)
            {
              v29 = v28;
              break;
            }
          }

          v30 = (v29 - v27);
          if (v29 == v28)
          {
            v31 = 0;
          }

          else
          {
            v31 = (v30 + 1);
          }

          goto LABEL_63;
        }
      }

      else
      {
        v27 = v24 + 4;
        if (v25)
        {
          goto LABEL_54;
        }
      }

      v31 = 0;
LABEL_63:
      v32 = v8[50];
      v33 = *(*v32 - 792);
      std::string::basic_string(&__p, (v24 + 4), v31, 0xFFFFFFFFFFFFFFFFLL, &v48);
      (*(*(v32 + v33) + 672))(&v40);
      if (v41)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v41);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

LABEL_67:
      v34 = v24[1];
      if (v34)
      {
        do
        {
          v35 = v34;
          v34 = *v34;
        }

        while (v34);
      }

      else
      {
        do
        {
          v35 = v24[2];
          v36 = *v35 == v24;
          v24 = v35;
        }

        while (!v36);
      }

      v24 = v35;
      if (v35 == v23)
      {
        goto LABEL_73;
      }
    }
  }

  v37 = *(*(v7[50] + *(*v7[50] - 544)) + 224);

  v37();
}

void sub_18610FB20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, std::__shared_weak_count *a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27)
{
  if (a27)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a27);
  }

  v29 = *(v27 - 120);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v29);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  __p = (v27 - 104);
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&__p);
  _Unwind_Resume(a1);
}

void **std::vector<std::shared_ptr<AdobeXMPCore::INode_v1>>::push_back[abi:fe200100](void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<std::shared_ptr<AdobeXMPCore::INode_v1>>>(result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::shared_ptr<AdobeXMPCore::INode_v1 const>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}