void sub_22E33E4F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (*(v37 - 89) < 0)
  {
    operator delete(*(v37 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_22E33E668(uint64_t a1, _DWORD *a2, unint64_t a3, int a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    ++*a2;
LABEL_21:
    operator new();
  }

  v5 = a1 + 8;
  v6 = *(a1 + 8);
  do
  {
    v7 = *(v6 + 32);
    v8 = v7 >= a3;
    v9 = v7 < a3;
    if (v8)
    {
      v5 = v6;
    }

    v6 = *(v6 + 8 * v9);
  }

  while (v6);
  if (v5 == a1 + 8 || *(v5 + 32) > a3)
  {
    v10 = *a2;
    *a2 = v10 + 1;
    while (1)
    {
      while (1)
      {
        v11 = v4;
        v12 = v4[4];
        if (v12 <= a3)
        {
          break;
        }

        v4 = *v11;
        if (!*v11)
        {
          goto LABEL_21;
        }
      }

      if (v12 >= a3)
      {
        break;
      }

      v4 = v11[1];
      if (!v4)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
    v13 = *(v5 + 40);
    if (a4)
    {
      if (HIDWORD(v13))
      {
        v10 = 0xFFFFFFFFLL;
      }

      else
      {
        v10 = v13;
      }

      *(v5 + 44) = 1;
    }

    else
    {
      return v13;
    }
  }

  return v10;
}

void sub_22E33E7D8(uint64_t *a1, std::string *a2)
{
  v3 = *a1;
  v4 = a1[2];
  v6 = *v4;
  v5 = v4[1];
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_22E33ECC8();
  }

  v7 = MPSGetDataTypeName(*(a1 + 2));
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_22E33DEAC();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v8;
  if (v8)
  {
    memmove(&__dst, v7, v8);
  }

  __dst.__r_.__value_.__s.__data_[v9] = 0;
  v10 = std::string::insert(&__dst, 0, "[");
  v11 = *&v10->__r_.__value_.__l.__data_;
  v21.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v21.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v21, "][");
  v13 = *&v12->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
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

  std::string::append(a2, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_18:
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_23;
    }
  }

  else if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_18;
  }

  operator delete(v21.__r_.__value_.__l.__data_);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_19:
    if (!v3)
    {
      goto LABEL_37;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(__dst.__r_.__value_.__l.__data_);
  if (v3)
  {
LABEL_24:
    v16 = 0;
    v17 = v3 - 1;
    do
    {
      std::to_string(&__p, 1);
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

      std::string::append(a2, v18, v19);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if (v17 != v16)
        {
LABEL_36:
          std::string::append(a2, ",");
        }
      }

      else if (v17 != v16)
      {
        goto LABEL_36;
      }

      ++v16;
    }

    while (v3 != v16);
  }

LABEL_37:
  std::string::append(a2, "]");
}

void sub_22E33EA78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (v28)
  {
    operator delete(v28);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_22E33EB1C(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 == result)
  {
    return result;
  }

  while (1)
  {
    v2 = a2[2];
    if (v2[3])
    {
      return result;
    }

    v3 = v2[2];
    v4 = *v3;
    if (*v3 != v2)
    {
      break;
    }

    v8 = v3[1];
    if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
    {
      if (*v2 == a2)
      {
        *(v2 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v10 = v2[1];
        v11 = *v10;
        v2[1] = *v10;
        v12 = v2;
        if (v11)
        {
          v11[2] = v2;
          v3 = v2[2];
          v12 = *v3;
        }

        v10[2] = v3;
        v3[v12 != v2] = v10;
        *v10 = v2;
        v2[2] = v10;
        v3 = v10[2];
        v4 = *v3;
        *(v10 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
LABEL_15:
          *(v13 + 16) = v3;
        }
      }

      v14 = v3[2];
      v14[*v14 != v3] = v4;
      v4[1] = v3;
      v4[2] = v14;
      v3[2] = v4;
      return result;
    }

LABEL_3:
    *(v2 + 24) = 1;
    a2 = v3;
    *(v3 + 24) = v3 == result;
    *v7 = 1;
    if (v3 == result)
    {
      return result;
    }
  }

  if (v4)
  {
    v6 = *(v4 + 24);
    v5 = v4 + 3;
    if (v6 != 1)
    {
      v7 = v5;
      goto LABEL_3;
    }
  }

  v15 = *v2;
  if (*v2 == a2)
  {
    v16 = *(v15 + 8);
    *v2 = v16;
    if (v16)
    {
      *(v16 + 16) = v2;
      v3 = v2[2];
    }

    v3[*v3 != v2] = v15;
    *(v15 + 8) = v2;
    *(v15 + 16) = v3;
    v2[2] = v15;
    v3 = *(v15 + 16);
  }

  else
  {
    v15 = a2[2];
  }

  *(v15 + 24) = 1;
  *(v3 + 24) = 0;
  v17 = v3[1];
  v18 = *v17;
  v3[1] = *v17;
  if (v18)
  {
    *(v18 + 16) = v3;
  }

  v19 = v3[2];
  v17[2] = v19;
  v19[*v19 != v3] = v17;
  *v17 = v3;
  v3[2] = v17;
  return result;
}

void sub_22E33ECE0(void *a1)
{
  if (a1)
  {
    sub_22E33ECE0(*a1);
    sub_22E33ECE0(a1[1]);

    operator delete(a1);
  }
}

uint64_t sub_22E33ED30(void *a1, void *a2, uint64_t a3, _BYTE *a4, std::string *a5, int a6, __int128 *a7)
{
  v14 = objc_autoreleasePoolPush();
  v15 = v14;
  if (*(a3 + 72))
  {
    v16 = 1;
    *a4 = 1;
    goto LABEL_56;
  }

  v112 = v14;
  v17 = **(a3 + 8);
  if (*(*(a3 + 8) + 8) == v17 || (*a4 & 1) != 0)
  {
    v16 = 0;
  }

  else
  {
    v90 = 0;
    do
    {
      v91 = *(*(v17 + 8 * v90) + 32);
      if (*(a7 + 23) < 0)
      {
        sub_22E3404E0(&v123, *a7, *(a7 + 1));
      }

      else
      {
        v123 = *a7;
        v124 = *(a7 + 2);
      }

      v16 = sub_22E33ED30(a1, a2, v91, a4, a5, (a6 + 1), &v123);
      if (SHIBYTE(v124) < 0)
      {
        operator delete(v123);
      }

      ++v90;
      v17 = **(a3 + 8);
    }

    while (v90 < (*(*(a3 + 8) + 8) - v17) >> 3 && *a4 != 1);
  }

  if ((*(a3 + 73) & 1) == 0 || *a4 != 1)
  {
    v15 = v112;
    goto LABEL_56;
  }

  v18 = (v16 + 1);
  std::to_string(&v116, v16 + 1);
  v19 = std::string::insert(&v116, 0, "NODE(Node_");
  v20 = *&v19->__r_.__value_.__l.__data_;
  v117.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
  *&v117.__r_.__value_.__l.__data_ = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  v21 = std::string::append(&v117, ") : FUNCTION(");
  v22 = *&v21->__r_.__value_.__l.__data_;
  v118.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&v118.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  (*(*a3 + 48))(__p, a3, 0);
  if ((v115 & 0x80u) == 0)
  {
    v23 = __p;
  }

  else
  {
    v23 = __p[0];
  }

  if ((v115 & 0x80u) == 0)
  {
    v24 = v115;
  }

  else
  {
    v24 = __p[1];
  }

  v25 = std::string::append(&v118, v23, v24);
  v26 = *&v25->__r_.__value_.__l.__data_;
  v119.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
  *&v119.__r_.__value_.__l.__data_ = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  v27 = std::string::append(&v119, "), NODE(Node_");
  v28 = *&v27->__r_.__value_.__l.__data_;
  v120.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
  *&v120.__r_.__value_.__l.__data_ = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v113, v16);
  if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = &v113;
  }

  else
  {
    v29 = v113.__r_.__value_.__r.__words[0];
  }

  if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v113.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v113.__r_.__value_.__l.__size_;
  }

  v31 = std::string::append(&v120, v29, size);
  v32 = *&v31->__r_.__value_.__l.__data_;
  v125.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
  *&v125.__r_.__value_.__l.__data_ = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  v33 = std::string::append(&v125, ");\n");
  v34 = *&v33->__r_.__value_.__l.__data_;
  v122 = v33->__r_.__value_.__r.__words[2];
  v121 = v34;
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v125.__r_.__value_.__l.__data_);
    v15 = v112;
    if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_22:
      if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_68;
    }
  }

  else
  {
    v15 = v112;
    if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }
  }

  operator delete(v113.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_23:
    if ((SHIBYTE(v119.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_69;
  }

LABEL_68:
  operator delete(v120.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v119.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_24:
    if ((v115 & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_70;
  }

LABEL_69:
  operator delete(v119.__r_.__value_.__l.__data_);
  if ((v115 & 0x80000000) == 0)
  {
LABEL_25:
    if ((SHIBYTE(v118.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_71;
  }

LABEL_70:
  operator delete(__p[0]);
  if ((SHIBYTE(v118.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_26:
    if ((SHIBYTE(v117.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

LABEL_72:
    operator delete(v117.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v116.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_73:
    operator delete(v116.__r_.__value_.__l.__data_);
    goto LABEL_28;
  }

LABEL_71:
  operator delete(v118.__r_.__value_.__l.__data_);
  if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_72;
  }

LABEL_27:
  if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_73;
  }

LABEL_28:
  if (v122 >= 0)
  {
    v35 = &v121;
  }

  else
  {
    v35 = v121;
  }

  if (v122 >= 0)
  {
    v36 = HIBYTE(v122);
  }

  else
  {
    v36 = *(&v121 + 1);
  }

  std::string::append(a5, v35, v36);
  v120.__r_.__value_.__s.__data_[0] = 0;
  if (a1)
  {
    v37 = MEMORY[0x277CCACA8];
    (*(*a3 + 40))(&v125, a3, 0);
    if ((v125.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v41 = objc_msgSend_stringWithUTF8String_(v37, v38, &v125, v39, v40);
    }

    else
    {
      v41 = objc_msgSend_stringWithUTF8String_(v37, v38, v125.__r_.__value_.__l.__data_, v39, v40);
    }

    v42 = v41;
    if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v125.__r_.__value_.__l.__data_);
    }

    v43 = MEMORY[0x277CCACA8];
    (*(*a3 + 48))(&v125, a3, 0);
    if ((v125.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v47 = objc_msgSend_stringWithUTF8String_(v43, v44, &v125, v45, v46);
    }

    else
    {
      v47 = objc_msgSend_stringWithUTF8String_(v43, v44, v125.__r_.__value_.__l.__data_, v45, v46);
    }

    v48 = v47;
    if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v125.__r_.__value_.__l.__data_);
    }

    v125.__r_.__value_.__r.__words[0] = 0;
    v49 = (*(*a3 + 80))(a3);
    v54 = v49;
    if (v49)
    {
      objc_msgSend_setConstantValue_type_atIndex_(v49, v50, &v120, 53, 7);
    }

    v55 = objc_msgSend_functionDescriptor(MEMORY[0x277CD6D78], v50, v51, v52, v53);
    objc_msgSend_setName_(v55, v56, v42, v57, v58);
    objc_msgSend_setSpecializedName_(v55, v59, v48, v60, v61);
    if (v54)
    {
      objc_msgSend_setConstantValues_(v55, v62, v54, v64, v65);
    }

    v66 = objc_msgSend_device(a1, v62, v63, v64, v65);
    MPSDevice = MPSDevice::GetMPSDevice(v66);
    MPSDevice::AddBinaryArchives(MPSDevice, v55, a1);
    v74 = objc_msgSend_newFunctionWithDescriptor_error_(a1, v68, v55, &v125, v69);
    if (v125.__r_.__value_.__r.__words[0] && (v75 = objc_msgSend_localizedFailureReason(v125.__r_.__value_.__l.__data_, v70, v71, v72, v73), v79 = objc_msgSend_cStringUsingEncoding_(v75, v76, 4, v77, v78), v84 = objc_msgSend_localizedDescription(v125.__r_.__value_.__l.__data_, v80, v81, v82, v83), v88 = objc_msgSend_cStringUsingEncoding_(v84, v85, 4, v86, v87), NSLog(&cfstr_ErrorGettingVi.isa, v79, v88), v125.__r_.__value_.__r.__words[0]) && MTLReportFailureTypeEnabled())
    {
      v94 = objc_msgSend_localizedFailureReason(v125.__r_.__value_.__l.__data_, v70, v92, v93, v73);
      v98 = objc_msgSend_cStringUsingEncoding_(v94, v95, 4, v96, v97);
      v103 = objc_msgSend_localizedDescription(v125.__r_.__value_.__l.__data_, v99, v100, v101, v102);
      v111 = objc_msgSend_cStringUsingEncoding_(v103, v104, 4, v105, v106);
      MTLReportFailure();
      objc_msgSend_setObject_forKey_(a2, v107, v74, v48, v108, v98, v111);
    }

    else
    {
      objc_msgSend_setObject_forKey_(a2, v70, v74, v48, v73, v109, v110);
    }
  }

  if (SHIBYTE(v122) < 0)
  {
    operator delete(v121);
  }

  v16 = v18;
LABEL_56:
  objc_autoreleasePoolPop(v15);
  return v16;
}

void sub_22E33F310(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (*(v56 - 105) < 0)
  {
    operator delete(*(v56 - 128));
  }

  if (*(v56 - 169) < 0)
  {
    operator delete(*(v56 - 192));
  }

  _Unwind_Resume(exception_object);
}

char *sub_22E33F48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, char *a8, unsigned __int8 a9, char a10, uint64_t a11)
{
  v59 = *MEMORY[0x277D85DE8];
  v18 = objc_autoreleasePoolPush();
  v19 = v18;
  if (*(a1 + 72))
  {
    goto LABEL_102;
  }

  v49 = a1;
  v20 = *(a1 + 8);
  v48 = v18;
  if (*(a1 + 73) != 1)
  {
    v23 = a8;
    goto LABEL_52;
  }

  v21 = *(a1 + 96);
  *(v21 + 80) = a7;
  v22 = **(v21 + 24);
  if (*(*(v21 + 24) + 8) == v22)
  {
    sub_22E34059C();
  }

  v23 = a7 + 1;
  v24 = *(*v22 + 8);
  if (v24 <= 285212703)
  {
    if (v24 <= 15)
    {
      v26 = 536870920;
      if (v24 == -2147483640)
      {
        goto LABEL_32;
      }

      v26 = v24;
      if (v24 == 8)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    if (v24 == 16 || v24 == 32)
    {
      v26 = v24;
    }

    else
    {
      v26 = v24;
      if (v24 != 64)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (v24 > 536870927)
    {
      v28 = v24 == 536870928 || v24 == 536870976 || v24 == 536870944;
      v26 = v24;
      if (v28)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    if (v24 == 285212704 || v24 == 285212736)
    {
      v26 = 285212736;
    }

    else
    {
      v26 = v24;
      if (v24 != 536870920)
      {
LABEL_31:
        v26 = 268435488;
      }
    }
  }

LABEL_32:
  v29 = sub_22E2F7154(v26, a2);
  (*(*v21 + 88))(v51, v21, v23, a8);
  LODWORD(v54[0]) = v23;
  if (a10)
  {
    (*(*v21 + 64))(__p, v21, 0, v29, v23);
    if (*(a11 + 23) < 0)
    {
      operator delete(*a11);
    }

    *a11 = *__p;
    *(a11 + 16) = __p[2];
  }

  LODWORD(__p[0]) = v23;
  if ((v51[23] & 0x80000000) != 0)
  {
    sub_22E3404E0(&__p[1], *v51, *&v51[8]);
  }

  else
  {
    *&__p[1] = *v51;
    __p[3] = *&v51[16];
  }

  v30 = *(a4 + 8);
  if (!v30)
  {
LABEL_45:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v31 = v30;
      v32 = *(v30 + 32);
      if (SLODWORD(__p[0]) >= v32)
      {
        break;
      }

      v30 = *v31;
      if (!*v31)
      {
        goto LABEL_45;
      }
    }

    if (v32 >= SLODWORD(__p[0]))
    {
      break;
    }

    v30 = v31[1];
    if (!v30)
    {
      goto LABEL_45;
    }
  }

  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  if ((v51[23] & 0x80000000) != 0)
  {
    operator delete(*v51);
  }

  a7 = v23;
LABEL_52:
  v57 = 0u;
  v58 = 0u;
  memset(__p, 0, sizeof(__p));
  v33 = *v20;
  if (v20[1] != *v20)
  {
    v34 = 0;
    do
    {
      LOWORD(v47) = a9;
      a7 = sub_22E33F48C(*(*(v33 + 8 * v34) + 32), a2, a3, a4, a5, a6, a7, v23, v47, 0);
      __p[v34++ & 7] = a7;
      v33 = *v20;
    }

    while (v34 < (v20[1] - *v20) >> 3);
  }

  v35 = *v49[3];
  if (v49[3][1] == v35)
  {
    sub_22E34059C();
  }

  v36 = *(*v35 + 8);
  if (v36 <= 285212703)
  {
    if (v36 <= 15)
    {
      v38 = 536870920;
      if (v36 == -2147483640)
      {
        goto LABEL_83;
      }

      v38 = v36;
      if (v36 == 8)
      {
        goto LABEL_83;
      }

      goto LABEL_82;
    }

    if (v36 == 16 || v36 == 32)
    {
      v38 = v36;
    }

    else
    {
      v38 = v36;
      if (v36 != 64)
      {
        goto LABEL_82;
      }
    }
  }

  else
  {
    if (v36 > 536870927)
    {
      v40 = v36 == 536870928 || v36 == 536870976 || v36 == 536870944;
      v38 = v36;
      if (v40)
      {
        goto LABEL_83;
      }

      goto LABEL_82;
    }

    if (v36 == 285212704 || v36 == 285212736)
    {
      v38 = 285212736;
    }

    else
    {
      v38 = v36;
      if (v36 != 536870920)
      {
LABEL_82:
        v38 = 268435488;
      }
    }
  }

LABEL_83:
  v41 = sub_22E2F7154(v38, a2);
  ((*v49)[7])(v54, v49, v20, v41, 0, a7, __p, v23);
  v42 = ((*v49)[9])(v49, a7);
  v53 = v42;
  if (a11)
  {
    ((*v49)[8])(v51, v49, 0, v41, a7);
    if (*(a11 + 23) < 0)
    {
      operator delete(*a11);
    }

    *a11 = *v51;
    *(a11 + 16) = *&v51[16];
  }

  *v51 = v42;
  if (SHIBYTE(v55) < 0)
  {
    sub_22E3404E0(&v51[8], v54[0], v54[1]);
  }

  else
  {
    *&v51[8] = *v54;
    v52 = v55;
  }

  v43 = *(a4 + 8);
  if (!v43)
  {
LABEL_96:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v44 = v43;
      v45 = *(v43 + 32);
      if (*v51 >= v45)
      {
        break;
      }

      v43 = *v44;
      if (!*v44)
      {
        goto LABEL_96;
      }
    }

    if (v45 >= *v51)
    {
      break;
    }

    v43 = v44[1];
    if (!v43)
    {
      goto LABEL_96;
    }
  }

  v19 = v48;
  if (SHIBYTE(v52) < 0)
  {
    operator delete(*&v51[8]);
  }

  if (SHIBYTE(v55) < 0)
  {
    operator delete(v54[0]);
  }

LABEL_102:
  objc_autoreleasePoolPop(v19);
  return a7;
}

void sub_22E3400A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, void *a18, int a19, __int16 a20, char a21, char a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, void *a35, int a36, __int16 a37, char a38, char a39, int a40, __int16 a41, char a42, char a43)
{
  if (a22 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E3401AC(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 2;
  v9 = (v7 >> 2) + 1;
  if (v9 >> 62)
  {
    sub_22E33ECC8();
  }

  v10 = v3 - v6;
  if (v10 >> 1 > v9)
  {
    v9 = v10 >> 1;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v11 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 62))
    {
      operator new();
    }

    sub_22E33DD58();
  }

  *(4 * v8) = *a2;
  v5 = 4 * v8 + 4;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void sub_22E3402C4(char *a1)
{
  if (a1)
  {
    sub_22E3402C4(*a1);
    sub_22E3402C4(*(a1 + 1));
    if (a1[63] < 0)
    {
      operator delete(*(a1 + 5));
      v2 = a1;
    }

    else
    {
      v2 = a1;
    }

    operator delete(v2);
  }
}

uint64_t sub_22E340340(uint64_t a1)
{
  v2 = MEMORY[0x277D82818];
  v3 = *MEMORY[0x277D82818];
  *a1 = *MEMORY[0x277D82818];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

char *sub_22E340494()
{
  result = getenv("MPSNDARRAY_USE_REFERENCE_DEQUANTIZE_DAG");
  if (result && *result == 49 && !result[1])
  {
    byte_280AFEB88 = 1;
  }

  return result;
}

void *sub_22E3404E0(_BYTE *a1, const void *a2, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_22E33DEAC();
  }

  a1[23] = a3;
  v3 = a3 + 1;

  return memmove(a1, a2, v3);
}

uint64_t *sub_22E3405B4(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_22;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_22:
    operator new();
  }

  if (v3.u32[0] < 2uLL)
  {
    while (1)
    {
      v7 = v6[1];
      if (v7 == a2)
      {
        if (*(v6 + 4) == a2)
        {
          return v6;
        }
      }

      else if ((v7 & (v2 - 1)) != v4)
      {
        goto LABEL_22;
      }

      v6 = *v6;
      if (!v6)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v8 = v6[1];
    if (v8 == a2)
    {
      break;
    }

    if (v8 >= v2)
    {
      v8 %= v2;
    }

    if (v8 != v4)
    {
      goto LABEL_22;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_22;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void sub_22E340A68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22E340A7C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_22E340A7C(uint64_t result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      v3 = v1[5];
      if (v3)
      {
        do
        {
          v4 = *v3;
          operator delete(v3);
          v3 = v4;
        }

        while (v4);
      }

      v5 = v1[3];
      v1[3] = 0;
      if (v5)
      {
        operator delete(v5);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_22E340AF0(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = *a1;
    bzero(*a1, 8 * v6);
    v9 = (a1 + 16);
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    if (a2 == a3)
    {
      v11 = v8;
      if (!v8)
      {
        goto LABEL_67;
      }

      goto LABEL_66;
    }

    if (v8)
    {
      while (1)
      {
        v10 = *a2;
        *(v8 + 4) = v10;
        v11 = *v8;
        v8[1] = v10;
        if (v6)
        {
          v12 = vcnt_s8(v6);
          v12.i16[0] = vaddlv_u8(v12);
          if (v12.u32[0] > 1uLL)
          {
            v13 = v10;
            if (v6 <= v10)
            {
              v13 = v10 % v6;
            }
          }

          else
          {
            v13 = (v6 - 1) & v10;
          }

          v14 = v7[v13];
          if (v14)
          {
            v15 = *v14;
            if (v15)
            {
              if (v12.u32[0] < 2uLL)
              {
                while (1)
                {
                  v17 = v15[1];
                  if (v17 == v10)
                  {
                    if (*(v15 + 4) == v10)
                    {
                      goto LABEL_55;
                    }
                  }

                  else if ((v17 & (v6 - 1)) != v13)
                  {
                    goto LABEL_24;
                  }

                  v15 = *v15;
                  if (!v15)
                  {
                    goto LABEL_24;
                  }
                }
              }

              do
              {
                v16 = v15[1];
                if (v16 == v10)
                {
                  if (*(v15 + 4) == v10)
                  {
                    goto LABEL_55;
                  }
                }

                else
                {
                  if (v16 >= v6)
                  {
                    v16 %= v6;
                  }

                  if (v16 != v13)
                  {
                    break;
                  }
                }

                v15 = *v15;
              }

              while (v15);
            }
          }
        }

LABEL_24:
        v18 = (*(a1 + 24) + 1);
        v19 = *(a1 + 32);
        if (!v6 || (v19 * v6) < v18)
        {
          v20 = (v6 & (v6 - 1)) != 0;
          if (v6 < 3)
          {
            v20 = 1;
          }

          v21 = v20 | (2 * v6);
          v22 = vcvtps_u32_f32(v18 / v19);
          if (v21 <= v22)
          {
            prime = v22;
          }

          else
          {
            prime = v21;
          }

          if (prime == 1)
          {
            prime = 2;
          }

          else if ((prime & (prime - 1)) != 0)
          {
            prime = std::__next_prime(prime);
            v6 = *(a1 + 8);
          }

          if (prime > v6)
          {
            goto LABEL_36;
          }

          if (prime < v6)
          {
            v24 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
            if (v6 < 3 || (v25 = vcnt_s8(v6), v25.i16[0] = vaddlv_u8(v25), v25.u32[0] > 1uLL))
            {
              v24 = std::__next_prime(v24);
            }

            else
            {
              v26 = 1 << -__clz(v24 - 1);
              if (v24 >= 2)
              {
                v24 = v26;
              }
            }

            if (prime <= v24)
            {
              prime = v24;
            }

            if (prime < v6)
            {
LABEL_36:
              sub_22E340E80(a1, prime);
            }
          }
        }

        v6 = *(a1 + 8);
        v27 = v8[1];
        v28 = vcnt_s8(v6);
        v28.i16[0] = vaddlv_u8(v28);
        if (v28.u32[0] > 1uLL)
        {
          if (v27 >= v6)
          {
            v27 %= v6;
          }
        }

        else
        {
          v27 &= v6 - 1;
        }

        v7 = *a1;
        v29 = *(*a1 + 8 * v27);
        if (v29)
        {
          break;
        }

        *v8 = *v9;
        *v9 = v8;
        v7[v27] = v9;
        if (*v8)
        {
          v30 = *(*v8 + 8);
          if (v28.u32[0] > 1uLL)
          {
            if (v30 >= v6)
            {
              v30 %= v6;
            }

            v29 = &v7[v30];
          }

          else
          {
            v29 = &v7[v30 & (v6 - 1)];
          }

          goto LABEL_53;
        }

LABEL_54:
        ++*(a1 + 24);
LABEL_55:
        ++a2;
        if (v11)
        {
          v8 = v11;
          if (a2 != a3)
          {
            continue;
          }
        }

        goto LABEL_65;
      }

      *v8 = *v29;
LABEL_53:
      *v29 = v8;
      goto LABEL_54;
    }

    v11 = 0;
LABEL_65:
    if (v11)
    {
      do
      {
LABEL_66:
        v31 = *v11;
        operator delete(v11);
        v11 = v31;
      }

      while (v31);
    }
  }

LABEL_67:
  if (a2 != a3)
  {
    v32 = a2;
    do
    {
      v33 = *v32++;
      sub_22E341014(a1, v33);
    }

    while (v32 != a3);
  }
}

void sub_22E340E4C(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

void sub_22E340E80(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_22E33DD58();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void *sub_22E341014(void *result, unsigned int a2)
{
  v2 = result[1];
  if (!v2)
  {
    goto LABEL_22;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*result + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_22:
    operator new();
  }

  if (v3.u32[0] < 2uLL)
  {
    while (1)
    {
      v7 = v6[1];
      if (v7 == a2)
      {
        if (*(v6 + 4) == a2)
        {
          return result;
        }
      }

      else if ((v7 & (v2 - 1)) != v4)
      {
        goto LABEL_22;
      }

      v6 = *v6;
      if (!v6)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v8 = v6[1];
    if (v8 == a2)
    {
      break;
    }

    if (v8 >= v2)
    {
      v8 %= v2;
    }

    if (v8 != v4)
    {
      goto LABEL_22;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_22;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_22E341314(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void BaseGraph::BaseGraph(void *a1)
{
  *a1 = &unk_2842175C0;
  BaseOperation::BaseOperation(a1);
}

{
  *a1 = &unk_2842175C0;
  BaseOperation::BaseOperation(a1);
}

void BaseGraph::~BaseGraph(BaseGraph *this)
{
  *this = &unk_2842175C0;
  v2 = *(this + 6);
  v3 = *v2;
  if (*(v2 + 8) != *v2)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5)
      {
        (*(*v5 + 8))(v3[v4]);
        v2 = *(this + 6);
        v3 = *v2;
      }

      ++v4;
    }

    while (v4 < (*(v2 + 8) - v3) >> 3);
  }

  if (v3)
  {
    *(v2 + 8) = v3;
    operator delete(v3);
  }

  MEMORY[0x2318E5730](v2, 0x80C40D6874129);

  BaseOperation::~BaseOperation(this);
}

{
  *this = &unk_2842175C0;
  v2 = *(this + 6);
  v3 = *v2;
  if (*(v2 + 8) != *v2)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5)
      {
        (*(*v5 + 8))(v3[v4]);
        v2 = *(this + 6);
        v3 = *v2;
      }

      ++v4;
    }

    while (v4 < (*(v2 + 8) - v3) >> 3);
  }

  if (v3)
  {
    *(v2 + 8) = v3;
    operator delete(v3);
  }

  MEMORY[0x2318E5730](v2, 0x80C40D6874129);

  BaseOperation::~BaseOperation(this);
}

{
  *this = &unk_2842175C0;
  v2 = *(this + 6);
  v3 = *v2;
  if (*(v2 + 8) != *v2)
  {
    v4 = 0;
    do
    {
      v5 = v3[v4];
      if (v5)
      {
        (*(*v5 + 8))(v3[v4]);
        v2 = *(this + 6);
        v3 = *v2;
      }

      ++v4;
    }

    while (v4 < (*(v2 + 8) - v3) >> 3);
  }

  if (v3)
  {
    *(v2 + 8) = v3;
    operator delete(v3);
  }

  MEMORY[0x2318E5730](v2, 0x80C40D6874129);
  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

void sub_22E341948(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  MEMORY[0x2318E5730](v2, v1);
  _Unwind_Resume(a1);
}

void BaseOperation::~BaseOperation(BaseOperation *this)
{
  *this = &unk_28421A410;
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v3;
      operator delete(v3);
    }

    MEMORY[0x2318E5730](v2, 0x80C40D6874129);
  }

  *(this + 1) = 0;
  v4 = *(this + 3);
  v5 = *v4;
  if (*(v4 + 8) != *v4)
  {
    v6 = 0;
    do
    {
      if (v5[v6])
      {
        BaseTensor::~BaseTensor(v5[v6]);
        MEMORY[0x2318E5730]();
        v4 = *(this + 3);
        v5 = *v4;
      }

      ++v6;
    }

    while (v6 < (*(v4 + 8) - v5) >> 3);
  }

  if (v5)
  {
    *(v4 + 8) = v5;
    operator delete(v5);
  }

  MEMORY[0x2318E5730](v4, 0x80C40D6874129);
  *(this + 3) = 0;
  v7 = *(this + 5);
  if (v7)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    MEMORY[0x2318E5730](v7, 0x1012C40EC159624);
  }

  *(this + 5) = 0;
}

{
  BaseOperation::~BaseOperation(this);

  JUMPOUT(0x2318E5730);
}

const char *MPSGetDataTypeName(int a1)
{
  if (a1 > 285212703)
  {
    if (a1 > 536870919)
    {
      if (a1 > 536870975)
      {
        switch(a1)
        {
          case 536870976:
            return "MPSDataTypeInt64";
          case 1073741825:
            return "MPSDataTypeUnorm1";
          case 1073741832:
            return "MPSDataTypeUnorm8";
        }
      }

      else
      {
        switch(a1)
        {
          case 536870920:
            return "MPSDataTypeInt8";
          case 536870928:
            return "MPSDataTypeInt16";
          case 536870944:
            return "MPSDataTypeInt32";
        }
      }
    }

    else if (a1 > 335544327)
    {
      switch(a1)
      {
        case 335544328:
          return "MPSDataTypeFloat8e4m3fn";
        case 536870914:
          return "MPSDataTypeInt2";
        case 536870916:
          return "MPSDataTypeInt4";
      }
    }

    else
    {
      switch(a1)
      {
        case 285212704:
          return "MPSDataTypeComplexFloat16";
        case 285212736:
          return "MPSDataTypeComplexFloat32";
        case 301989896:
          return "MPSDataTypeFloat8e4m3";
      }
    }
  }

  else if (a1 > 15)
  {
    if (a1 > 268435463)
    {
      switch(a1)
      {
        case 268435464:
          return "MPSDataTypeFloat8e5m2";
        case 268435472:
          return "MPSDataTypeFloat16";
        case 268435488:
          return "MPSDataTypeFloat32";
      }
    }

    else
    {
      switch(a1)
      {
        case 16:
          return "MPSDataTypeUInt16";
        case 32:
          return "MPSDataTypeUInt32";
        case 64:
          return "MPSDataTypeUInt64";
      }
    }
  }

  else if (a1 > 1)
  {
    switch(a1)
    {
      case 2:
        return "MPSDataTypeUInt2";
      case 4:
        return "MPSDataTypeUInt4";
      case 8:
        return "MPSDataTypeUInt8";
    }
  }

  else
  {
    switch(a1)
    {
      case -2147483640:
        return "MPSDataTypeBool";
      case -1879048176:
        return "MPSDataTypeBFloat16";
      case 0:
        return "MPSDataTypeInvalid";
    }
  }

  return "invalid";
}

void sub_22E341F7C(_Unwind_Exception *a1)
{
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  MEMORY[0x2318E5730](v1, v2);
  _Unwind_Resume(a1);
}

void BaseTensor::~BaseTensor(BaseTensor *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v3;
      operator delete(v3);
    }

    MEMORY[0x2318E5730](v2, 0x10C402FEFCB83);
  }

  v4 = *(this + 3);
  if (v4)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x2318E5730](v4, 0x1012C40EC159624);
  }

  v5 = *(this + 5);
  if (v5)
  {
    v6 = *v5;
    if (*v5)
    {
      *(v5 + 8) = v6;
      operator delete(v6);
    }

    MEMORY[0x2318E5730](v5, 0x80C40D6874129);
  }
}

uint64_t BaseTensor::GetNumElements(BaseTensor *this)
{
  v1 = **(this + 2);
  v2 = *(*(this + 2) + 8) - v1;
  if (!v2)
  {
    return 1;
  }

  v3 = v2 >> 3;
  if ((v2 >> 3) <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v2 >> 3;
  }

  if (v3 <= 7)
  {
    v5 = 0;
    LODWORD(result) = 1;
LABEL_11:
    v16 = v4 - v5;
    v17 = &v1->i32[2 * v5];
    do
    {
      v18 = *v17;
      v17 += 2;
      result = (result * v18);
      --v16;
    }

    while (v16);
    return result;
  }

  v5 = v4 & 0xFFFFFFFFFFFFFFF8;
  v7 = v1 + 2;
  v8.i64[0] = 0x100000001;
  v8.i64[1] = 0x100000001;
  v9 = v4 & 0xFFFFFFFFFFFFFFF8;
  v10.i64[0] = 0x100000001;
  v10.i64[1] = 0x100000001;
  do
  {
    v12 = v7[-2];
    v11 = v7[-1];
    v14 = *v7;
    v13 = v7[1];
    v7 += 4;
    v8 = vmulq_s32(v8, vuzp1q_s32(v12, v11));
    v10 = vmulq_s32(v10, vuzp1q_s32(v14, v13));
    v9 -= 8;
  }

  while (v9);
  v15 = vmulq_s32(v10, v8);
  *v15.i8 = vmul_s32(*v15.i8, *&vextq_s8(v15, v15, 8uLL));
  result = (v15.i32[0] * v15.i32[1]);
  if (v3 != v5)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t BaseTensor::GetDimensionSize(BaseTensor *this, unsigned int a2)
{
  v2 = **(this + 2);
  v3 = (*(*(this + 2) + 8) - v2) >> 3;
  if (v3 <= a2)
  {
    return 1;
  }

  if (v3 <= a2)
  {
    sub_22E34059C();
  }

  return *(v2 + 8 * a2);
}

__n128 BaseTensor::GetAccessPattern(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_msgSend_count(a2, a2, a3, a4, a5);
  v13 = objc_msgSend_count(a3, v9, v10, v11, v12);
  v14 = *(a1 + 32);
  v15 = (*(*v14 + 32))(v14);
  if ((v15 & 0x80000000) != 0)
  {
    v20 = malloc_type_malloc(8 * (v13 + v8), 0x100004000313F17uLL);
    v59 = 0;
    sub_22E342374(v14, v20, &v59);
    v21 = v59;
    if (v59)
    {
      v22 = objc_alloc(MEMORY[0x277CBEB18]);
      v29 = objc_msgSend_initWithCapacity_(v22, v23, v21, v24, v25);
      v30 = 0;
      do
      {
        v35 = v20[v30];
        if (v35 >= v8)
        {
          v31 = objc_msgSend_objectAtIndexedSubscript_(a3, v26, v35 - v8, v27, v28);
        }

        else
        {
          v31 = objc_msgSend_objectAtIndexedSubscript_(a2, v26, v35, v27, v28);
        }

        objc_msgSend_setObject_atIndexedSubscript_(v29, v32, v31, v30++, v33);
      }

      while (v21 != v30);
      if (objc_msgSend_count(v29, v26, v34, v27, v28))
      {
        v40 = 0;
        v41 = 0;
        v42 = 0;
        for (i = objc_msgSend_objectAtIndexedSubscript_(v29, v37, 0, v38, v39); ; i = objc_msgSend_objectAtIndexedSubscript_(v29, v37, v40, v38, v39))
        {
          v49 = *(i + 480);
          if (v49)
          {
            v50 = 0;
            v52 = *(i + 176);
            v51 = *(i + 192);
            v54 = *(i + 144);
            v53 = *(i + 160);
            v48 = 1;
            v55 = *(i + 464);
            do
            {
              v57 = v55;
              v58[0] = v54;
              v58[1] = v53;
              v58[2] = v52;
              v58[3] = v51;
              v48 *= *(v58 + (*(&v57 | v50++ & 0xF) & 0xF));
            }

            while (v49 != v50);
          }

          else
          {
            v48 = 1;
          }

          if (v48 > v42)
          {
            v42 = v48;
            v41 = v40;
          }

          if (++v40 >= objc_msgSend_count(v29, v44, v45, v46, v47))
          {
            break;
          }
        }
      }

      else
      {
        v41 = 0;
      }

      v56 = *(objc_msgSend_objectAtIndexedSubscript_(v29, v37, v41, v38, v39) + 464);
    }

    else
    {
      v56 = xmmword_22E37B090;
    }

    free(v20);
    return v56;
  }

  else
  {
    if (v15 >= v8)
    {
      v19 = objc_msgSend_objectAtIndexedSubscript_(a3, v16, v15 - v8, v17, v18);
    }

    else
    {
      v19 = objc_msgSend_objectAtIndexedSubscript_(a2, v16, v15, v17, v18);
    }

    return v19[29];
  }
}

uint64_t sub_22E342374(void *a1, uint64_t *a2, uint64_t *a3)
{
  result = (*(*a1 + 32))(a1);
  if ((result & 0x80000000) != 0)
  {
LABEL_7:
    v10 = a1[1];
    if (v10)
    {
      v11 = *v10;
      if (*(a1[1] + 8) != v11)
      {
        v12 = 0;
        do
        {
          result = sub_22E342374(*(*(v11 + 8 * v12++) + 32), a2, a3);
          v11 = *a1[1];
        }

        while (v12 < (*(a1[1] + 8) - v11) >> 3);
      }
    }

    return result;
  }

  if (!*a3)
  {
LABEL_6:
    a2[(*a3)++] = result;
    goto LABEL_7;
  }

  v7 = *a3;
  v8 = a2;
  while (1)
  {
    v9 = *v8++;
    if (v9 == result)
    {
      return result;
    }

    if (!--v7)
    {
      goto LABEL_6;
    }
  }
}

uint64_t MPSDevice::getKernelDAGLibrary(MPSDevice *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = sub_22E342518;
  v9 = sub_22E342528;
  v10 = 0;
  v1 = *(this + 182);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_22E342534;
  v4[3] = &unk_2787BECB8;
  v4[4] = &v5;
  v4[5] = this;
  dispatch_sync(v1, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);
  return v2;
}

id sub_22E342534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 40);
  result = *(v6 + 1448);
  if (!result)
  {
    result = MPSDevice::GetLibrary(v6, &stru_2787BE8A8, a3, a4, a5);
    *(v6 + 1448) = result;
  }

  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

uint64_t sub_22E3426B0(uint64_t a1)
{
  dispatch_source_cancel(*(a1 + 600));

  dispatch_source_cancel(*(a1 + 592));
  pthread_mutex_lock((a1 + 8));
  explicit = atomic_load_explicit((a1 + 616), memory_order_acquire);
  if (explicit)
  {
    do
    {
      v3 = atomic_load_explicit((explicit + 16), memory_order_acquire);

      MEMORY[0x2318E5730](explicit, 0x10A0C400E0EE2BFLL);
      explicit = v3;
    }

    while (v3);
  }

  v4 = 0;
  v17 = a1;
  v18 = a1 + 80;
  do
  {
    v5 = *(v18 + 8 * v4);
    v19 = v4;
    *(v18 + 8 * v4) = 0;
    if (v5)
    {
      do
      {
        v6 = atomic_load_explicit(v5, memory_order_acquire);
        v7 = atomic_exchange(v5 + 1, 0);
        if (v7)
        {
          v8 = 0;
          v9 = 0;
          v10 = 0;
          v11 = v7;
          do
          {
            while (1)
            {
              v12 = atomic_load_explicit((v11 + 16), memory_order_acquire);
              if (!*v11)
              {
                break;
              }

              v8 = v11;
              v11 = v12;
              if (!v12)
              {
                goto LABEL_18;
              }
            }

            if (v8)
            {
              atomic_store(v12, (v8 + 16));
            }

            else
            {
              v7 = v12;
            }

            atomic_store(v9, (v11 + 16));

            if (!v10)
            {
              v10 = v11;
            }

            *(v11 + 8) = 0;
            v9 = v11;
            v11 = v12;
          }

          while (v12);
LABEL_18:
          if (v8)
          {
            do
            {
              v13 = atomic_load_explicit(v5 + 1, memory_order_acquire);
              atomic_store(v13, (v8 + 16));
              v14 = v13;
              atomic_compare_exchange_strong_explicit(v5 + 1, &v14, v7, memory_order_release, memory_order_relaxed);
            }

            while (v14 != v13);
          }

          if (v10)
          {
            atomic_store(0, (v10 + 16));
            if (v9)
            {
              do
              {
                v15 = atomic_load_explicit((v9 + 16), memory_order_acquire);
                atomic_store(0, (v9 + 16));

                MEMORY[0x2318E5730](v9, 0x10A0C400E0EE2BFLL);
                v9 = v15;
              }

              while (v15);
            }
          }
        }

        MEMORY[0x2318E5730](v5, 0x1020C4062D53EE8);
        v5 = v6;
      }

      while (v6);
    }

    v4 = v19 + 1;
  }

  while (v19 != 63);
  pthread_mutex_unlock((v17 + 8));
  pthread_mutex_destroy((v17 + 8));
  return v17;
}

void *MPSDevice::GetHeapBlock(MPSDevice *this, uint64_t a2, uint64_t a3)
{
  if (*(this + 3))
  {
    return sub_22E2F0DA0(*(this + 3), a2, a3);
  }

  else
  {
    return sub_22E2EF260(this, a2, a3);
  }
}

void MPSDevice::ReturnHeapBlock(MPSDevice *this, objc_object *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v5 = *(this + 3);
    if (v5)
    {
      sub_22E2EF3F8(v5, a2, a3, a4, a5);
    }

    else
    {
      MEMORY[0x2821F96F8]();
    }
  }
}

void *MPSNewBufferForTexture(void *a1, char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_msgSend_buffer(a1, a2, a3, a4, a5);
  if (v8)
  {
    v13 = v8;
    *a2 = objc_msgSend_bufferOffset(a1, v9, v10, v11, v12);
    *a3 = objc_msgSend_bufferBytesPerRow(a1, v14, v15, v16, v17);
    v18 = v13;
    return v13;
  }

  v20 = objc_msgSend_iosurface(a1, v9, v10, v11, v12);
  if (!v20)
  {
    return 0;
  }

  v25 = v20;
  v26 = objc_msgSend_iosurfacePlane(a1, v21, v22, v23, v24);
  v31 = objc_msgSend_device(a1, v27, v28, v29, v30);
  v13 = objc_msgSend_newBufferWithIOSurface_(v31, v32, v25, v33, v34);
  if (!v13)
  {
    return v13;
  }

  BaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane(v25, v26);
  *a2 = BaseAddressOfPlane - IOSurfaceGetBaseAddress(v25);
  *a3 = IOSurfaceGetBytesPerRowOfPlane(v25, v26);
  return v13;
}

void sub_22E343B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_22E353170(va);
  _Unwind_Resume(a1);
}

void sub_22E343B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_22E353170(va);
  _Unwind_Resume(a1);
}

void sub_22E343B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_22E353170(va);
  _Unwind_Resume(a1);
}

void MPSDecrementReadCount(MPSTemporaryNDArray *parent)
{
  if (!parent->_readCount)
  {
    v5 = parent;
    v6 = MTLReportFailureTypeEnabled();
    parent = v5;
    if (v6)
    {
      MTLReportFailure();
      parent = v5;
    }
  }

  readCount = parent->_readCount;
  if (readCount)
  {
    v2 = readCount - 1;
    parent->_readCount = v2;
    if (!v2)
    {
      do
      {
        v3 = parent;
        parent = parent->super._parent;
      }

      while (parent && parent->super._isTemporary);
      v4 = v3->_childRefCount - 1;
      v3->_childRefCount = v4;
      if (!v4)
      {

        MPSAutoBuffer::ReleaseTemporaryBuffer(&v3->super._buffer);
      }
    }
  }
}

__n128 makeStrideBytes@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 208);
  v3 = *(a1 + 224);
  v4 = *(a1 + 240);
  v5 = *(a1 + 256);
  v6 = *(a1 + 272);
  v7 = *(a1 + 288);
  v8 = *(a1 + 320);
  *(a2 + 96) = *(a1 + 304);
  *(a2 + 112) = v8;
  *(a2 + 64) = v6;
  *(a2 + 80) = v7;
  *(a2 + 32) = v4;
  *(a2 + 48) = v5;
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

__n128 makeStrideElements@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 336);
  v3 = *(a1 + 352);
  v4 = *(a1 + 368);
  v5 = *(a1 + 384);
  v6 = *(a1 + 400);
  v7 = *(a1 + 416);
  v8 = *(a1 + 448);
  *(a2 + 96) = *(a1 + 432);
  *(a2 + 112) = v8;
  *(a2 + 64) = v6;
  *(a2 + 80) = v7;
  *(a2 + 32) = v4;
  *(a2 + 48) = v5;
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

__n128 sub_22E34CDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __n128 result, __n128 a9, __n128 a10, __n128 a11, __n128 a12, __n128 a13, __n128 a14, __n128 a15, uint64_t a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22)
{
  v25 = a21;
  v24 = a22;
  v27 = a19;
  v26 = a20;
  v29 = a17;
  v28 = a18;
  v69 = a13;
  v70 = a12;
  v30 = *(&v70 | a5 & 0xF);
  v31 = *(a3 + 8 * v30);
  v32 = *(&v69 | a5 & 0xF);
  v33 = v32 & 0xF;
  v34 = *(a4 + 8 * v32);
  v72[2] = a10;
  v72[3] = a11;
  v72[0] = result;
  v72[1] = a9;
  v35 = *(v72 + (v30 & 0xF));
  v73[2] = a17;
  v73[3] = a18;
  v73[0] = a14;
  v73[1] = a15;
  v36 = *(v73 + (v30 & 0xF));
  if (v31 >= 0)
  {
    v37 = v31;
  }

  else
  {
    v37 = -v31;
  }

  v38 = a6 + v37 * v36;
  v71[2] = a21;
  v71[3] = a22;
  v71[0] = a19;
  v71[1] = a20;
  v39 = *(v71 + v33);
  if (v34 >= 0)
  {
    v40 = v34;
  }

  else
  {
    v40 = -v34;
  }

  v41 = a7 + v40 * v39;
  if (a5)
  {
    if (v35)
    {
      v44 = v41 + ((v40 * (v35 - 1)) & (v34 >> 63));
      v45 = v38 + ((v37 * (v35 - 1)) & (v31 >> 63));
      v46 = a5 - 1;
      v61 = result;
      do
      {
        sub_22E34CDB4(a1, a2, a3, a4, v46, v45, v44, v61, a9, a10, a11, a12, a13, a14, a15, *&v29, *(&v29 + 1), *&v28, *(&v28 + 1), *&v27, *(&v27 + 1), *&v26, *(&v26 + 1), *&v25, *(&v25 + 1), *&v24, *(&v24 + 1));
        v29 = a17;
        v28 = a18;
        v27 = a19;
        v26 = a20;
        v25 = a21;
        v24 = a22;
        v45 += v31;
        v44 += v34;
        --v35;
      }

      while (v35);
    }

    return result;
  }

  v47 = (v37 * (v35 - 1)) & (v31 >> 63);
  v48 = v38 + v47;
  v49 = (v40 * (v35 - 1)) & (v34 >> 63);
  v50 = v41 + v49;
  if (v31 != 1 || v34 != 1)
  {
    if (!v35)
    {
      return result;
    }

    if (v35 <= 0x11)
    {
      goto LABEL_19;
    }

    v53 = 0;
    if (v31 != 1 || v34 != 1)
    {
      goto LABEL_20;
    }

    if ((a1 + 8 * (v47 + a6 + v36) - (a2 + 8 * (v49 + a7 + v39))) < 0x20)
    {
LABEL_19:
      v53 = 0;
    }

    else
    {
      v53 = v35 & 0xFFFFFFFC;
      v48 += v53;
      v50 += v53;
      v57 = (a1 + 8 * (v47 + a6 + v36) + 16);
      v58 = (a2 + 8 * (v49 + a7 + v39) + 16);
      v59 = v53;
      do
      {
        result = v58[-1];
        v60 = *v58;
        v57[-1] = result;
        *v57 = v60;
        v57 += 2;
        v58 += 2;
        v59 -= 4;
      }

      while (v59);
      if (v53 == v35)
      {
        return result;
      }
    }

LABEL_20:
    v54 = v35 - v53;
    v55 = (a1 + 8 * v48);
    v56 = (a2 + 8 * v50);
    do
    {
      *v55 = *v56;
      v55 += v31;
      v56 += v34;
      --v54;
    }

    while (v54);
    return result;
  }

  v51 = (a1 + 8 * v48);
  v52 = (a2 + 8 * v50);

  memcpy(v51, v52, 8 * v35);
  return result;
}

__n128 sub_22E34D068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __n128 result, __n128 a9, __n128 a10, __n128 a11, __n128 a12, __n128 a13, __n128 a14, __n128 a15, uint64_t a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22)
{
  v25 = a21;
  v24 = a22;
  v27 = a19;
  v26 = a20;
  v29 = a17;
  v28 = a18;
  v69 = a13;
  v70 = a12;
  v30 = *(&v70 | a5 & 0xF);
  v31 = *(a3 + 8 * v30);
  v32 = *(&v69 | a5 & 0xF);
  v33 = v32 & 0xF;
  v34 = *(a4 + 8 * v32);
  v72[2] = a10;
  v72[3] = a11;
  v72[0] = result;
  v72[1] = a9;
  v35 = *(v72 + (v30 & 0xF));
  v73[2] = a17;
  v73[3] = a18;
  v73[0] = a14;
  v73[1] = a15;
  v36 = *(v73 + (v30 & 0xF));
  if (v31 >= 0)
  {
    v37 = v31;
  }

  else
  {
    v37 = -v31;
  }

  v38 = a6 + v37 * v36;
  v71[2] = a21;
  v71[3] = a22;
  v71[0] = a19;
  v71[1] = a20;
  v39 = *(v71 + v33);
  if (v34 >= 0)
  {
    v40 = v34;
  }

  else
  {
    v40 = -v34;
  }

  v41 = a7 + v40 * v39;
  if (a5)
  {
    if (v35)
    {
      v44 = v41 + ((v40 * (v35 - 1)) & (v34 >> 63));
      v45 = v38 + ((v37 * (v35 - 1)) & (v31 >> 63));
      v46 = a5 - 1;
      v61 = result;
      do
      {
        sub_22E34D068(a1, a2, a3, a4, v46, v45, v44, v61, a9, a10, a11, a12, a13, a14, a15, *&v29, *(&v29 + 1), *&v28, *(&v28 + 1), *&v27, *(&v27 + 1), *&v26, *(&v26 + 1), *&v25, *(&v25 + 1), *&v24, *(&v24 + 1));
        v29 = a17;
        v28 = a18;
        v27 = a19;
        v26 = a20;
        v25 = a21;
        v24 = a22;
        v45 += v31;
        v44 += v34;
        --v35;
      }

      while (v35);
    }

    return result;
  }

  v47 = (v37 * (v35 - 1)) & (v31 >> 63);
  v48 = v38 + v47;
  v49 = (v40 * (v35 - 1)) & (v34 >> 63);
  v50 = v41 + v49;
  if (v31 != 1 || v34 != 1)
  {
    if (!v35)
    {
      return result;
    }

    if (v35 <= 0x13)
    {
      goto LABEL_19;
    }

    v53 = 0;
    if (v31 != 1 || v34 != 1)
    {
      goto LABEL_20;
    }

    if ((a1 + 4 * (v47 + a6 + v36) - (a2 + 4 * (v49 + a7 + v39))) < 0x20)
    {
LABEL_19:
      v53 = 0;
    }

    else
    {
      v53 = v35 & 0xFFFFFFF8;
      v48 += v53;
      v50 += v53;
      v57 = (a1 + 4 * (v47 + a6 + v36) + 16);
      v58 = (a2 + 4 * (v49 + a7 + v39) + 16);
      v59 = v53;
      do
      {
        result = v58[-1];
        v60 = *v58;
        v57[-1] = result;
        *v57 = v60;
        v57 += 2;
        v58 += 2;
        v59 -= 8;
      }

      while (v59);
      if (v53 == v35)
      {
        return result;
      }
    }

LABEL_20:
    v54 = v35 - v53;
    v55 = (a1 + 4 * v48);
    v56 = (a2 + 4 * v50);
    do
    {
      *v55 = *v56;
      v55 += v31;
      v56 += v34;
      --v54;
    }

    while (v54);
    return result;
  }

  v51 = (a1 + 4 * v48);
  v52 = (a2 + 4 * v50);

  memcpy(v51, v52, 4 * v35);
  return result;
}

double sub_22E34D31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __n128 a8, __n128 a9, __n128 a10, __n128 a11, __n128 a12, __n128 a13, __n128 a14, __n128 a15, uint64_t a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22)
{
  v25 = a21;
  v24 = a22;
  v27 = a19;
  v26 = a20;
  v29 = a17;
  v28 = a18;
  v75 = a13;
  v76 = a12;
  v30 = *(&v76 | a5 & 0xF);
  v31 = *(a3 + 8 * v30);
  v32 = *(&v75 | a5 & 0xF);
  v33 = v32 & 0xF;
  v34 = *(a4 + 8 * v32);
  v78[2] = a10;
  v78[3] = a11;
  v78[0] = a8;
  v78[1] = a9;
  v35 = *(v78 + (v30 & 0xF));
  v79[2] = a17;
  v79[3] = a18;
  v79[0] = a14;
  v79[1] = a15;
  v36 = *(v79 + (v30 & 0xF));
  if (v31 >= 0)
  {
    v37 = v31;
  }

  else
  {
    v37 = -v31;
  }

  v38 = a6 + v37 * v36;
  v77[2] = a21;
  v77[3] = a22;
  v77[0] = a19;
  v77[1] = a20;
  v39 = *(v77 + v33);
  if (v34 >= 0)
  {
    v40 = v34;
  }

  else
  {
    v40 = -v34;
  }

  v41 = a7 + v40 * v39;
  if (a5)
  {
    if (v35)
    {
      v44 = v41 + ((v40 * (v35 - 1)) & (v34 >> 63));
      v45 = v38 + ((v37 * (v35 - 1)) & (v31 >> 63));
      v46 = a5 - 1;
      v67 = a8;
      do
      {
        sub_22E34D31C(a1, a2, a3, a4, v46, v45, v44, v67, a9, a10, a11, a12, a13, a14, a15, *&v29, *(&v29 + 1), *&v28, *(&v28 + 1), *&v27, *(&v27 + 1), *&v26, *(&v26 + 1), *&v25, *(&v25 + 1), *&v24, *(&v24 + 1));
        v29 = a17;
        v28 = a18;
        v27 = a19;
        v26 = a20;
        v25 = a21;
        v24 = a22;
        v45 += v31;
        v44 += v34;
        --v35;
      }

      while (v35);
    }

    return a8.n128_f64[0];
  }

  v47 = (v37 * (v35 - 1)) & (v31 >> 63);
  v48 = v38 + v47;
  v49 = (v40 * (v35 - 1)) & (v34 >> 63);
  v50 = v41 + v49;
  if (v31 != 1 || v34 != 1)
  {
    if (!v35)
    {
      return a8.n128_f64[0];
    }

    if (v35 < 4)
    {
      goto LABEL_19;
    }

    v53 = 0;
    if (v31 != 1 || v34 != 1)
    {
      goto LABEL_20;
    }

    if ((a1 + 2 * (v47 + a6 + v36) - (a2 + 2 * (v49 + a7 + v39))) < 0x20)
    {
LABEL_19:
      v53 = 0;
      goto LABEL_20;
    }

    if (v35 >= 0x10)
    {
      v53 = v35 & 0xFFFFFFF0;
      v57 = (a1 + 2 * (v47 + a6 + v36) + 16);
      v58 = (a2 + 2 * (v49 + a7 + v39) + 16);
      v59 = v53;
      do
      {
        a8 = v58[-1];
        v60 = *v58;
        v57[-1] = a8;
        *v57 = v60;
        v57 += 2;
        v58 += 2;
        v59 -= 16;
      }

      while (v59);
      if (v53 == v35)
      {
        return a8.n128_f64[0];
      }

      if ((v35 & 0xC) == 0)
      {
        v50 += v53;
        v48 += v53;
        goto LABEL_20;
      }
    }

    else
    {
      v53 = 0;
    }

    v61 = v53;
    v53 = v35 & 0xFFFFFFFC;
    v48 += v53;
    v50 += v53;
    v62 = (a1 + 2 * v61 + 2 * (v47 + a6 + v36));
    v63 = (a2 + 2 * v61 + 2 * (v49 + a7 + v39));
    v64 = v61 - v53;
    do
    {
      v65 = *v63++;
      a8.n128_u64[0] = v65;
      *v62++ = v65;
      v64 += 4;
    }

    while (v64);
    if (v53 == v35)
    {
      return a8.n128_f64[0];
    }

LABEL_20:
    v54 = v35 - v53;
    v55 = (a1 + 2 * v48);
    v56 = (a2 + 2 * v50);
    do
    {
      *v55 = *v56;
      v55 += v31;
      v56 += v34;
      --v54;
    }

    while (v54);
    return a8.n128_f64[0];
  }

  v51 = (a1 + 2 * v48);
  v52 = (a2 + 2 * v50);

  memcpy(v51, v52, 2 * v35);
  return a8.n128_f64[0];
}

double sub_22E34D670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __n128 a8, __n128 a9, __n128 a10, __n128 a11, __n128 a12, __n128 a13, __n128 a14, __n128 a15, uint64_t a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22)
{
  v25 = a21;
  v24 = a22;
  v27 = a19;
  v26 = a20;
  v29 = a17;
  v28 = a18;
  v75 = a13;
  v76 = a12;
  v30 = *(&v76 | a5 & 0xF);
  v31 = *(a3 + 8 * v30);
  v32 = *(&v75 | a5 & 0xF);
  v33 = v32 & 0xF;
  v34 = *(a4 + 8 * v32);
  v78[2] = a10;
  v78[3] = a11;
  v78[0] = a8;
  v78[1] = a9;
  v35 = *(v78 + (v30 & 0xF));
  v79[2] = a17;
  v79[3] = a18;
  v79[0] = a14;
  v79[1] = a15;
  v36 = *(v79 + (v30 & 0xF));
  if (v31 >= 0)
  {
    v37 = v31;
  }

  else
  {
    v37 = -v31;
  }

  v38 = a6 + v37 * v36;
  v77[2] = a21;
  v77[3] = a22;
  v77[0] = a19;
  v77[1] = a20;
  v39 = *(v77 + v33);
  if (v34 >= 0)
  {
    v40 = v34;
  }

  else
  {
    v40 = -v34;
  }

  v41 = a7 + v40 * v39;
  if (a5)
  {
    if (v35)
    {
      v44 = v41 + ((v40 * (v35 - 1)) & (v34 >> 63));
      v45 = v38 + ((v37 * (v35 - 1)) & (v31 >> 63));
      v46 = a5 - 1;
      v67 = a8;
      do
      {
        sub_22E34D670(a1, a2, a3, a4, v46, v45, v44, v67, a9, a10, a11, a12, a13, a14, a15, *&v29, *(&v29 + 1), *&v28, *(&v28 + 1), *&v27, *(&v27 + 1), *&v26, *(&v26 + 1), *&v25, *(&v25 + 1), *&v24, *(&v24 + 1));
        v29 = a17;
        v28 = a18;
        v27 = a19;
        v26 = a20;
        v25 = a21;
        v24 = a22;
        v45 += v31;
        v44 += v34;
        --v35;
      }

      while (v35);
    }

    return a8.n128_f64[0];
  }

  v47 = (v37 * (v35 - 1)) & (v31 >> 63);
  v48 = v38 + v47;
  v49 = (v40 * (v35 - 1)) & (v34 >> 63);
  v50 = v41 + v49;
  if (v31 != 1 || v34 != 1)
  {
    if (!v35)
    {
      return a8.n128_f64[0];
    }

    if (v35 < 8)
    {
      goto LABEL_19;
    }

    v53 = 0;
    if (v31 != 1 || v34 != 1)
    {
      goto LABEL_20;
    }

    if ((v47 + a6 + a1 + v36 - (v49 + a7 + a2 + v39)) < 0x20)
    {
LABEL_19:
      v53 = 0;
      goto LABEL_20;
    }

    if (v35 >= 0x20)
    {
      v53 = v35 & 0xFFFFFFE0;
      v57 = (v47 + a6 + v36 + a1 + 16);
      v58 = (v49 + a7 + v39 + a2 + 16);
      v59 = v53;
      do
      {
        a8 = v58[-1];
        v60 = *v58;
        v57[-1] = a8;
        *v57 = v60;
        v57 += 2;
        v58 += 2;
        v59 -= 32;
      }

      while (v59);
      if (v53 == v35)
      {
        return a8.n128_f64[0];
      }

      if ((v35 & 0x18) == 0)
      {
        v50 += v53;
        v48 += v53;
        goto LABEL_20;
      }
    }

    else
    {
      v53 = 0;
    }

    v61 = v53;
    v53 = v35 & 0xFFFFFFF8;
    v48 += v53;
    v50 += v53;
    v62 = (a1 + v47 + v61 + a6 + v36);
    v63 = (a2 + v49 + v61 + a7 + v39);
    v64 = v61 - v53;
    do
    {
      v65 = *v63++;
      a8.n128_u64[0] = v65;
      *v62++ = v65;
      v64 += 8;
    }

    while (v64);
    if (v53 == v35)
    {
      return a8.n128_f64[0];
    }

LABEL_20:
    v54 = v35 - v53;
    v55 = (a1 + v48);
    v56 = (a2 + v50);
    do
    {
      *v55 = *v56;
      v55 += v31;
      v56 += v34;
      --v54;
    }

    while (v54);
    return a8.n128_f64[0];
  }

  v51 = (a1 + v48);
  v52 = (a2 + v50);

  memcpy(v51, v52, v35);
  return a8.n128_f64[0];
}

uint64_t sub_22E34D9B8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __n128 a8, __n128 a9, __n128 a10, __n128 a11, __n128 a12, __n128 a13, __n128 a14, __n128 a15, uint64_t a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22)
{
  v23 = result;
  v25 = a21;
  v24 = a22;
  v27 = a19;
  v26 = a20;
  v29 = a17;
  v28 = a18;
  v62 = a13;
  v63 = a12;
  v30 = *(&v63 | a5 & 0xF);
  v31 = *(a3 + 8 * v30);
  v32 = *(&v62 | a5 & 0xF);
  v33 = *(a4 + 8 * v32);
  v65[2] = a10;
  v65[3] = a11;
  v65[0] = a8;
  v65[1] = a9;
  v34 = *(v65 + (v30 & 0xF));
  v66[2] = a17;
  v66[3] = a18;
  v66[0] = a14;
  v66[1] = a15;
  if (v31 >= 0)
  {
    v35 = v31;
  }

  else
  {
    v35 = -v31;
  }

  v36 = a6 + v35 * *(v66 + (v30 & 0xF));
  v64[2] = a21;
  v64[3] = a22;
  v64[0] = a19;
  v64[1] = a20;
  v37 = *(v64 + (v32 & 0xF));
  if (v33 >= 0)
  {
    v38 = v33;
  }

  else
  {
    v38 = -v33;
  }

  v39 = a7 + v38 * v37;
  if (a5)
  {
    if (v34)
    {
      v42 = v39 + ((v38 * (v34 - 1)) & (v33 >> 63));
      v43 = v36 + ((v35 * (v34 - 1)) & (v31 >> 63));
      v44 = a5 - 1;
      do
      {
        result = sub_22E34D9B8(v23, a2, a3, a4, v44, v43, v42, a8, a9, a10, a11, a12, a13, a14, a15, *&v29, *(&v29 + 1), *&v28, *(&v28 + 1), *&v27, *(&v27 + 1), *&v26, *(&v26 + 1), *&v25, *(&v25 + 1), *&v24, *(&v24 + 1));
        v29 = a17;
        v28 = a18;
        v27 = a19;
        v26 = a20;
        v25 = a21;
        v24 = a22;
        v43 += v31;
        v42 += v33;
        --v34;
      }

      while (v34);
    }

    return result;
  }

  v45 = v36 + ((v35 * (v34 - 1)) & (v31 >> 63));
  if (v33 < 0)
  {
    v39 += v38 * (v34 - 1);
    goto LABEL_27;
  }

  if (v31 != 1 || v33 != 1 || ((v39 & 1) == 0 ? (v46 = (v45 & 1) == 0) : (v46 = 0), v46 ? (v47 = (v34 & 1) == 0) : (v47 = 0), !v47))
  {
LABEL_27:
    if (v34)
    {
      v50 = 4 * v45;
      v51 = 4 * v39;
      do
      {
        v52 = (v50 - 8 * (v45 / 2)) & 0xFC;
        v53 = ((*(a2 + v39 / 2) >> (v51 - 8 * (v39 / 2))) & 0xF) << v52;
        result = (15 << v52);
        *(v23 + v45 / 2) = *(v23 + v45 / 2) & ~result | v53;
        v45 += v31;
        v39 += v33;
        v50 += 4 * v31;
        v51 += 4 * v33;
        --v34;
      }

      while (v34);
    }

    return result;
  }

  v48 = (result + (v45 >> 1));
  v49 = (a2 + (v39 >> 1));

  return memcpy(v48, v49, v34 >> 1);
}

uint64_t sub_22E34DC1C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __n128 a8, __n128 a9, __n128 a10, __n128 a11, __n128 a12, __n128 a13, __n128 a14, __n128 a15, uint64_t a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22)
{
  v23 = result;
  v25 = a21;
  v24 = a22;
  v27 = a19;
  v26 = a20;
  v29 = a17;
  v28 = a18;
  v62 = a13;
  v63 = a12;
  v30 = *(&v63 | a5 & 0xF);
  v31 = *(a3 + 8 * v30);
  v32 = *(&v62 | a5 & 0xF);
  v33 = *(a4 + 8 * v32);
  v65[2] = a10;
  v65[3] = a11;
  v65[0] = a8;
  v65[1] = a9;
  v34 = *(v65 + (v30 & 0xF));
  v66[2] = a17;
  v66[3] = a18;
  v66[0] = a14;
  v66[1] = a15;
  if (v31 >= 0)
  {
    v35 = v31;
  }

  else
  {
    v35 = -v31;
  }

  v36 = a6 + v35 * *(v66 + (v30 & 0xF));
  v64[2] = a21;
  v64[3] = a22;
  v64[0] = a19;
  v64[1] = a20;
  v37 = *(v64 + (v32 & 0xF));
  if (v33 >= 0)
  {
    v38 = v33;
  }

  else
  {
    v38 = -v33;
  }

  v39 = a7 + v38 * v37;
  if (a5)
  {
    if (v34)
    {
      v42 = v39 + ((v38 * (v34 - 1)) & (v33 >> 63));
      v43 = v36 + ((v35 * (v34 - 1)) & (v31 >> 63));
      v44 = a5 - 1;
      do
      {
        result = sub_22E34DC1C(v23, a2, a3, a4, v44, v43, v42, a8, a9, a10, a11, a12, a13, a14, a15, *&v29, *(&v29 + 1), *&v28, *(&v28 + 1), *&v27, *(&v27 + 1), *&v26, *(&v26 + 1), *&v25, *(&v25 + 1), *&v24, *(&v24 + 1));
        v29 = a17;
        v28 = a18;
        v27 = a19;
        v26 = a20;
        v25 = a21;
        v24 = a22;
        v43 += v31;
        v42 += v33;
        --v34;
      }

      while (v34);
    }

    return result;
  }

  v45 = v36 + ((v35 * (v34 - 1)) & (v31 >> 63));
  if (v33 < 0)
  {
    v39 += v38 * (v34 - 1);
    goto LABEL_27;
  }

  if (v31 != 1 || v33 != 1 || ((v39 & 3) == 0 ? (v46 = (v45 & 3) == 0) : (v46 = 0), v46 ? (v47 = (v34 & 3) == 0) : (v47 = 0), !v47))
  {
LABEL_27:
    if (v34)
    {
      v50 = 2 * v45;
      v51 = 2 * v39;
      do
      {
        v52 = (v50 - 8 * (v45 / 4)) & 0xFE;
        v53 = ((*(a2 + v39 / 4) >> (v51 - 8 * (v39 / 4))) & 3) << v52;
        result = (3 << v52);
        *(v23 + v45 / 4) = *(v23 + v45 / 4) & ~result | v53;
        v45 += v31;
        v39 += v33;
        v50 += 2 * v31;
        v51 += 2 * v33;
        --v34;
      }

      while (v34);
    }

    return result;
  }

  v48 = (result + (v45 >> 2));
  v49 = (a2 + (v39 >> 2));

  return memcpy(v48, v49, v34 >> 2);
}

const char *dataTypeToString(int a1)
{
  if (a1 > 285212703)
  {
    if (a1 > 536870919)
    {
      if (a1 <= 536870975)
      {
        switch(a1)
        {
          case 536870920:
            return "MPSDataTypeInt8";
          case 536870928:
            return "MPSDataTypeInt16";
          case 536870944:
            return "MPSDataTypeInt32";
        }
      }

      else if (a1 > 0x40000000)
      {
        if (a1 == 1073741825)
        {
          return "MPSDataTypeUnorm1";
        }

        if (a1 == 1073741832)
        {
          return "MPSDataTypeUnorm8";
        }
      }

      else
      {
        if (a1 == 536870976)
        {
          return "MPSDataTypeInt64";
        }

        if (a1 == 0x40000000)
        {
          return "MPSDataTypeNormalizedBit";
        }
      }
    }

    else if (a1 <= 335544327)
    {
      switch(a1)
      {
        case 285212704:
          return "MPSDataTypeComplexFloat16";
        case 285212736:
          return "MPSDataTypeComplexFloat32";
        case 301989896:
          return "MPSDataTypeFloat8e4m3";
      }
    }

    else if (a1 > 536870913)
    {
      if (a1 == 536870914)
      {
        return "MPSDataTypeInt2";
      }

      if (a1 == 536870916)
      {
        return "MPSDataTypeInt4";
      }
    }

    else
    {
      if (a1 == 335544328)
      {
        return "MPSDataTypeFloat4m3fn";
      }

      if (a1 == 0x20000000)
      {
        return "MPSDataTypeSignedBit";
      }
    }
  }

  else if (a1 > 31)
  {
    if (a1 <= 0xFFFFFFF)
    {
      switch(a1)
      {
        case 0x20:
          return "MPSDataTypeUInt32";
        case 0x40:
          return "MPSDataTypeUInt64";
        case 0x1000000:
          return "MPSDataTypeComplexBit";
      }
    }

    else if (a1 > 268435471)
    {
      if (a1 == 268435472)
      {
        return "MPSDataTypeFloat16";
      }

      if (a1 == 268435488)
      {
        return "MPSDataTypeFloat32";
      }
    }

    else
    {
      if (a1 == 0x10000000)
      {
        return "MPSDataTypeFloatBit";
      }

      if (a1 == 268435464)
      {
        return "MPSDataTypeFloat8e5m2";
      }
    }
  }

  else if (a1 <= 1)
  {
    switch(a1)
    {
      case -2147483640:
        return "MPSDataTypeBool";
      case -1879048176:
        return "MPSDataTypeBFloat16";
      case 0:
        return "MPSDataTypeInvalid";
    }
  }

  else if (a1 > 7)
  {
    if (a1 == 8)
    {
      return "MPSDataTypeUInt8";
    }

    if (a1 == 16)
    {
      return "MPSDataTypeUInt16";
    }
  }

  else
  {
    if (a1 == 2)
    {
      return "MPSDataTypeUInt2";
    }

    if (a1 == 4)
    {
      return "MPSDataTypeUInt4";
    }
  }

  return "<Unknown datatype>";
}

size_t sub_22E34FAE8(uint64_t a1, uint64_t a2, char *a3, FILE *a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10, __n128 a11, __n128 a12)
{
  v16 = a1 & 0xF;
  fwrite("[ ", 2uLL, 1uLL, a4);
  v36[3] = a8;
  v36[2] = a7;
  v36[1] = a6;
  v36[0] = a5;
  v17 = *(v36 + v16);
  if (v17)
  {
    v35[0] = a9;
    v35[1] = a10;
    v35[2] = a11;
    v35[3] = a12;
    if (a1)
    {
      v18 = a1 - 1;
      v19 = *(v35 + v16);
      v20 = a2 + 1;
      if (v20)
      {
        v21 = 0;
        do
        {
          sub_22E34FAE8(v18, v20, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          if (++v21 < v17)
          {
            fputc(10, a4);
            v22 = v20;
            do
            {
              fwrite("  ", 2uLL, 1uLL, a4);
              --v22;
            }

            while (v22);
          }

          a3 += v19;
        }

        while (v21 != v17);
      }

      else
      {
        v25 = 1;
        v26 = v17;
        do
        {
          sub_22E34FAE8(v18, 0, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          if (v25 < v17)
          {
            fputc(10, a4);
          }

          a3 += v19;
          ++v25;
          --v26;
        }

        while (v26);
      }
    }

    else
    {
      do
      {
        v23 = *a3++;
        fprintf(a4, "%3.3d ", v23);
        --v17;
      }

      while (v17);
    }
  }

  return fwrite("] ", 2uLL, 1uLL, a4);
}

size_t sub_22E34FCD4(uint64_t a1, uint64_t a2, unsigned __int8 *a3, FILE *a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10, __n128 a11, __n128 a12)
{
  v16 = a1 & 0xF;
  fwrite("[ ", 2uLL, 1uLL, a4);
  v36[3] = a8;
  v36[2] = a7;
  v36[1] = a6;
  v36[0] = a5;
  v17 = *(v36 + v16);
  if (v17)
  {
    v35[0] = a9;
    v35[1] = a10;
    v35[2] = a11;
    v35[3] = a12;
    if (a1)
    {
      v18 = a1 - 1;
      v19 = *(v35 + v16);
      v20 = a2 + 1;
      if (v20)
      {
        v21 = 0;
        do
        {
          sub_22E34FCD4(v18, v20, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          if (++v21 < v17)
          {
            fputc(10, a4);
            v22 = v20;
            do
            {
              fwrite("  ", 2uLL, 1uLL, a4);
              --v22;
            }

            while (v22);
          }

          a3 += v19;
        }

        while (v21 != v17);
      }

      else
      {
        v25 = 1;
        v26 = v17;
        do
        {
          sub_22E34FCD4(v18, 0, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          if (v25 < v17)
          {
            fputc(10, a4);
          }

          a3 += v19;
          ++v25;
          --v26;
        }

        while (v26);
      }
    }

    else
    {
      do
      {
        v23 = *a3++;
        fprintf(a4, "%2.2x ", v23);
        --v17;
      }

      while (v17);
    }
  }

  return fwrite("] ", 2uLL, 1uLL, a4);
}

size_t sub_22E34FEC0(uint64_t a1, uint64_t a2, unsigned __int16 *a3, FILE *a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10, __n128 a11, __n128 a12)
{
  v16 = a1 & 0xF;
  fwrite("[ ", 2uLL, 1uLL, a4);
  v36[3] = a8;
  v36[2] = a7;
  v36[1] = a6;
  v36[0] = a5;
  v17 = *(v36 + v16);
  if (v17)
  {
    v35[0] = a9;
    v35[1] = a10;
    v35[2] = a11;
    v35[3] = a12;
    if (a1)
    {
      v18 = a1 - 1;
      v19 = *(v35 + v16);
      v20 = a2 + 1;
      if (v20)
      {
        v21 = 0;
        do
        {
          sub_22E34FEC0(v18, v20, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          if (++v21 < v17)
          {
            fputc(10, a4);
            v22 = v20;
            do
            {
              fwrite("  ", 2uLL, 1uLL, a4);
              --v22;
            }

            while (v22);
          }

          a3 = (a3 + v19);
        }

        while (v21 != v17);
      }

      else
      {
        v25 = 1;
        v26 = v17;
        do
        {
          sub_22E34FEC0(v18, 0, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          if (v25 < v17)
          {
            fputc(10, a4);
          }

          a3 = (a3 + v19);
          ++v25;
          --v26;
        }

        while (v26);
      }
    }

    else
    {
      do
      {
        v23 = *a3++;
        fprintf(a4, "%4.4x ", v23);
        --v17;
      }

      while (v17);
    }
  }

  return fwrite("] ", 2uLL, 1uLL, a4);
}

size_t sub_22E3500AC(uint64_t a1, uint64_t a2, __int16 *a3, FILE *a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10, __n128 a11, __n128 a12)
{
  v16 = a1 & 0xF;
  fwrite("[ ", 2uLL, 1uLL, a4);
  v36[3] = a8;
  v36[2] = a7;
  v36[1] = a6;
  v36[0] = a5;
  v17 = *(v36 + v16);
  if (v17)
  {
    v35[0] = a9;
    v35[1] = a10;
    v35[2] = a11;
    v35[3] = a12;
    if (a1)
    {
      v18 = a1 - 1;
      v19 = *(v35 + v16);
      v20 = a2 + 1;
      if (v20)
      {
        v21 = 0;
        do
        {
          sub_22E3500AC(v18, v20, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          if (++v21 < v17)
          {
            fputc(10, a4);
            v22 = v20;
            do
            {
              fwrite("  ", 2uLL, 1uLL, a4);
              --v22;
            }

            while (v22);
          }

          a3 = (a3 + v19);
        }

        while (v21 != v17);
      }

      else
      {
        v25 = 1;
        v26 = v17;
        do
        {
          sub_22E3500AC(v18, 0, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          if (v25 < v17)
          {
            fputc(10, a4);
          }

          a3 = (a3 + v19);
          ++v25;
          --v26;
        }

        while (v26);
      }
    }

    else
    {
      do
      {
        v23 = *a3++;
        fprintf(a4, "%5.5d ", v23);
        --v17;
      }

      while (v17);
    }
  }

  return fwrite("] ", 2uLL, 1uLL, a4);
}

size_t sub_22E350298(uint64_t a1, uint64_t a2, int *a3, FILE *a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10, __n128 a11, __n128 a12)
{
  v16 = a1 & 0xF;
  fwrite("[ ", 2uLL, 1uLL, a4);
  v36[3] = a8;
  v36[2] = a7;
  v36[1] = a6;
  v36[0] = a5;
  v17 = *(v36 + v16);
  if (v17)
  {
    v35[0] = a9;
    v35[1] = a10;
    v35[2] = a11;
    v35[3] = a12;
    if (a1)
    {
      v18 = a1 - 1;
      v19 = *(v35 + v16);
      v20 = a2 + 1;
      if (v20)
      {
        v21 = 0;
        do
        {
          sub_22E350298(v18, v20, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          if (++v21 < v17)
          {
            fputc(10, a4);
            v22 = v20;
            do
            {
              fwrite("  ", 2uLL, 1uLL, a4);
              --v22;
            }

            while (v22);
          }

          a3 = (a3 + v19);
        }

        while (v21 != v17);
      }

      else
      {
        v25 = 1;
        v26 = v17;
        do
        {
          sub_22E350298(v18, 0, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          if (v25 < v17)
          {
            fputc(10, a4);
          }

          a3 = (a3 + v19);
          ++v25;
          --v26;
        }

        while (v26);
      }
    }

    else
    {
      do
      {
        v23 = *a3++;
        fprintf(a4, "0x%8.8x ", v23);
        --v17;
      }

      while (v17);
    }
  }

  return fwrite("] ", 2uLL, 1uLL, a4);
}

size_t sub_22E350484(uint64_t a1, uint64_t a2, int *a3, FILE *a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10, __n128 a11, __n128 a12)
{
  v16 = a1 & 0xF;
  fwrite("[ ", 2uLL, 1uLL, a4);
  v36[3] = a8;
  v36[2] = a7;
  v36[1] = a6;
  v36[0] = a5;
  v17 = *(v36 + v16);
  if (v17)
  {
    v35[0] = a9;
    v35[1] = a10;
    v35[2] = a11;
    v35[3] = a12;
    if (a1)
    {
      v18 = a1 - 1;
      v19 = *(v35 + v16);
      v20 = a2 + 1;
      if (v20)
      {
        v21 = 0;
        do
        {
          sub_22E350484(v18, v20, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          if (++v21 < v17)
          {
            fputc(10, a4);
            v22 = v20;
            do
            {
              fwrite("  ", 2uLL, 1uLL, a4);
              --v22;
            }

            while (v22);
          }

          a3 = (a3 + v19);
        }

        while (v21 != v17);
      }

      else
      {
        v25 = 1;
        v26 = v17;
        do
        {
          sub_22E350484(v18, 0, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          if (v25 < v17)
          {
            fputc(10, a4);
          }

          a3 = (a3 + v19);
          ++v25;
          --v26;
        }

        while (v26);
      }
    }

    else
    {
      do
      {
        v23 = *a3++;
        fprintf(a4, "%10.10d ", v23);
        --v17;
      }

      while (v17);
    }
  }

  return fwrite("] ", 2uLL, 1uLL, a4);
}

size_t sub_22E350670(uint64_t a1, uint64_t a2, uint64_t *a3, FILE *a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10, __n128 a11, __n128 a12)
{
  v16 = a1 & 0xF;
  fwrite("[ ", 2uLL, 1uLL, a4);
  v36[3] = a8;
  v36[2] = a7;
  v36[1] = a6;
  v36[0] = a5;
  v17 = *(v36 + v16);
  if (v17)
  {
    v35[0] = a9;
    v35[1] = a10;
    v35[2] = a11;
    v35[3] = a12;
    if (a1)
    {
      v18 = a1 - 1;
      v19 = *(v35 + v16);
      v20 = a2 + 1;
      if (v20)
      {
        v21 = 0;
        do
        {
          sub_22E350670(v18, v20, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          if (++v21 < v17)
          {
            fputc(10, a4);
            v22 = v20;
            do
            {
              fwrite("  ", 2uLL, 1uLL, a4);
              --v22;
            }

            while (v22);
          }

          a3 = (a3 + v19);
        }

        while (v21 != v17);
      }

      else
      {
        v25 = 1;
        v26 = v17;
        do
        {
          sub_22E350670(v18, 0, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          if (v25 < v17)
          {
            fputc(10, a4);
          }

          a3 = (a3 + v19);
          ++v25;
          --v26;
        }

        while (v26);
      }
    }

    else
    {
      do
      {
        v23 = *a3++;
        fprintf(a4, "%16llu ", v23);
        --v17;
      }

      while (v17);
    }
  }

  return fwrite("] ", 2uLL, 1uLL, a4);
}

size_t sub_22E35085C(uint64_t a1, uint64_t a2, uint64_t *a3, FILE *a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10, __n128 a11, __n128 a12)
{
  v16 = a1 & 0xF;
  fwrite("[ ", 2uLL, 1uLL, a4);
  v36[3] = a8;
  v36[2] = a7;
  v36[1] = a6;
  v36[0] = a5;
  v17 = *(v36 + v16);
  if (v17)
  {
    v35[0] = a9;
    v35[1] = a10;
    v35[2] = a11;
    v35[3] = a12;
    if (a1)
    {
      v18 = a1 - 1;
      v19 = *(v35 + v16);
      v20 = a2 + 1;
      if (v20)
      {
        v21 = 0;
        do
        {
          sub_22E35085C(v18, v20, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          if (++v21 < v17)
          {
            fputc(10, a4);
            v22 = v20;
            do
            {
              fwrite("  ", 2uLL, 1uLL, a4);
              --v22;
            }

            while (v22);
          }

          a3 = (a3 + v19);
        }

        while (v21 != v17);
      }

      else
      {
        v25 = 1;
        v26 = v17;
        do
        {
          sub_22E35085C(v18, 0, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          if (v25 < v17)
          {
            fputc(10, a4);
          }

          a3 = (a3 + v19);
          ++v25;
          --v26;
        }

        while (v26);
      }
    }

    else
    {
      do
      {
        v23 = *a3++;
        fprintf(a4, "%16lli ", v23);
        --v17;
      }

      while (v17);
    }
  }

  return fwrite("] ", 2uLL, 1uLL, a4);
}

size_t sub_22E350A48(uint64_t a1, uint64_t a2, __int16 *a3, FILE *a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10, __n128 a11, __n128 a12)
{
  v16 = a1 & 0xF;
  fwrite("[ ", 2uLL, 1uLL, a4);
  v42[3] = a8;
  v42[2] = a7;
  v42[1] = a6;
  v42[0] = a5;
  v17 = *(v42 + v16);
  if (v17)
  {
    v41[0] = a9;
    v41[1] = a10;
    v41[2] = a11;
    v41[3] = a12;
    if (a1)
    {
      v18 = a1 - 1;
      v19 = *(v41 + v16);
      v20 = a2 + 1;
      if (v20)
      {
        v21 = 0;
        do
        {
          sub_22E350A48(v18, v20, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          if (++v21 < v17)
          {
            fputc(10, a4);
            v22 = v20;
            do
            {
              fwrite("  ", 2uLL, 1uLL, a4);
              --v22;
            }

            while (v22);
          }

          a3 = (a3 + v19);
        }

        while (v21 != v17);
      }

      else
      {
        v31 = 1;
        v32 = v17;
        do
        {
          sub_22E350A48(v18, 0, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          if (v31 < v17)
          {
            fputc(10, a4);
          }

          a3 = (a3 + v19);
          ++v31;
          --v32;
        }

        while (v32);
      }
    }

    else
    {
      do
      {
        v23 = *a3++;
        _H0 = v23;
        __asm { FCVT            D0, H0 }

        fprintf(a4, "%16.10f ", _D0);
        --v17;
      }

      while (v17);
    }
  }

  return fwrite("] ", 2uLL, 1uLL, a4);
}

size_t sub_22E350C38(uint64_t a1, uint64_t a2, __int16 *a3, FILE *a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10, __n128 a11, __n128 a12)
{
  v16 = a1 & 0xF;
  fwrite("[ ", 2uLL, 1uLL, a4);
  v37[3] = a8;
  v37[2] = a7;
  v37[1] = a6;
  v37[0] = a5;
  v17 = *(v37 + v16);
  if (v17)
  {
    v36[0] = a9;
    v36[1] = a10;
    v36[2] = a11;
    v36[3] = a12;
    if (a1)
    {
      v18 = a1 - 1;
      v19 = *(v36 + v16);
      v20 = a2 + 1;
      if (v20)
      {
        v21 = 0;
        do
        {
          sub_22E350C38(v18, v20, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          if (++v21 < v17)
          {
            fputc(10, a4);
            v22 = v20;
            do
            {
              fwrite("  ", 2uLL, 1uLL, a4);
              --v22;
            }

            while (v22);
          }

          a3 = (a3 + v19);
        }

        while (v21 != v17);
      }

      else
      {
        v25 = 1;
        v26 = v17;
        do
        {
          sub_22E350C38(v18, 0, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          if (v25 < v17)
          {
            fputc(10, a4);
          }

          a3 = (a3 + v19);
          ++v25;
          --v26;
        }

        while (v26);
      }
    }

    else
    {
      do
      {
        v23 = *a3++;
        LOWORD(v35) = 0;
        HIWORD(v35) = v23;
        fprintf(a4, "%24.14f ", v35);
        --v17;
      }

      while (v17);
    }
  }

  return fwrite("] ", 2uLL, 1uLL, a4);
}

size_t sub_22E350E34(uint64_t a1, uint64_t a2, float *a3, FILE *a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10, __n128 a11, __n128 a12)
{
  v16 = a1 & 0xF;
  fwrite("[ ", 2uLL, 1uLL, a4);
  v36[3] = a8;
  v36[2] = a7;
  v36[1] = a6;
  v36[0] = a5;
  v17 = *(v36 + v16);
  if (v17)
  {
    v35[0] = a9;
    v35[1] = a10;
    v35[2] = a11;
    v35[3] = a12;
    if (a1)
    {
      v18 = a1 - 1;
      v19 = *(v35 + v16);
      v20 = a2 + 1;
      if (v20)
      {
        v21 = 0;
        do
        {
          sub_22E350E34(v18, v20, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          if (++v21 < v17)
          {
            fputc(10, a4);
            v22 = v20;
            do
            {
              fwrite("  ", 2uLL, 1uLL, a4);
              --v22;
            }

            while (v22);
          }

          a3 = (a3 + v19);
        }

        while (v21 != v17);
      }

      else
      {
        v25 = 1;
        v26 = v17;
        do
        {
          sub_22E350E34(v18, 0, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          if (v25 < v17)
          {
            fputc(10, a4);
          }

          a3 = (a3 + v19);
          ++v25;
          --v26;
        }

        while (v26);
      }
    }

    else
    {
      do
      {
        v23 = *a3++;
        fprintf(a4, "%24.14f ", v23);
        --v17;
      }

      while (v17);
    }
  }

  return fwrite("] ", 2uLL, 1uLL, a4);
}

size_t sub_22E351024(uint64_t a1, uint64_t a2, uint64_t a3, FILE *a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10, __n128 a11, __n128 a12)
{
  v16 = a1 & 0xF;
  fwrite("[ ", 2uLL, 1uLL, a4);
  v44[3] = a8;
  v44[2] = a7;
  v44[1] = a6;
  v44[0] = a5;
  v17 = *(v44 + v16);
  if (v17)
  {
    v43[0] = a9;
    v43[1] = a10;
    v43[2] = a11;
    v43[3] = a12;
    if (a1)
    {
      v18 = a1 - 1;
      v19 = *(v43 + v16);
      v20 = a2 + 1;
      if (v20)
      {
        v21 = 0;
        do
        {
          sub_22E351024(v18, v20, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          if (++v21 < v17)
          {
            fputc(10, a4);
            v22 = v20;
            do
            {
              fwrite("  ", 2uLL, 1uLL, a4);
              --v22;
            }

            while (v22);
          }

          a3 += v19;
        }

        while (v21 != v17);
      }

      else
      {
        v33 = 1;
        v34 = v17;
        do
        {
          sub_22E351024(v18, 0, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          if (v33 < v17)
          {
            fputc(10, a4);
          }

          a3 += v19;
          ++v33;
          --v34;
        }

        while (v34);
      }
    }

    else
    {
      v23 = (a3 + 2);
      do
      {
        _H0 = *(v23 - 1);
        _H1 = *v23;
        __asm
        {
          FCVT            D0, H0
          FCVT            D1, H1
        }

        fprintf(a4, "(%16.10f, %16.10f) ", _D0, _D1);
        v23 += 2;
        --v17;
      }

      while (v17);
    }
  }

  return fwrite("] ", 2uLL, 1uLL, a4);
}

size_t sub_22E351224(uint64_t a1, uint64_t a2, uint64_t *a3, FILE *a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10, __n128 a11, __n128 a12)
{
  v16 = a1 & 0xF;
  fwrite("[ ", 2uLL, 1uLL, a4);
  v36[3] = a8;
  v36[2] = a7;
  v36[1] = a6;
  v36[0] = a5;
  v17 = *(v36 + v16);
  if (v17)
  {
    v35[0] = a9;
    v35[1] = a10;
    v35[2] = a11;
    v35[3] = a12;
    if (a1)
    {
      v18 = a1 - 1;
      v19 = *(v35 + v16);
      v20 = a2 + 1;
      if (v20)
      {
        v21 = 0;
        do
        {
          sub_22E351224(v18, v20, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          if (++v21 < v17)
          {
            fputc(10, a4);
            v22 = v20;
            do
            {
              fwrite("  ", 2uLL, 1uLL, a4);
              --v22;
            }

            while (v22);
          }

          a3 = (a3 + v19);
        }

        while (v21 != v17);
      }

      else
      {
        v25 = 1;
        v26 = v17;
        do
        {
          sub_22E351224(v18, 0, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          if (v25 < v17)
          {
            fputc(10, a4);
          }

          a3 = (a3 + v19);
          ++v25;
          --v26;
        }

        while (v26);
      }
    }

    else
    {
      do
      {
        v23 = *a3++;
        fprintf(a4, "(%24.14f, %24.14f) ", *&v23, *(&v23 + 1));
        --v17;
      }

      while (v17);
    }
  }

  return fwrite("] ", 2uLL, 1uLL, a4);
}

void MPSDecrementReadCount(MPSTemporaryNDArray *parent, uint64_t a2)
{
  if (!parent->_readCount)
  {
    v6 = parent;
    v7 = a2;
    v8 = MTLReportFailureTypeEnabled();
    a2 = v7;
    v9 = v8;
    parent = v6;
    if (v9)
    {
      MTLReportFailure();
      a2 = v7;
      parent = v6;
    }
  }

  readCount = parent->_readCount;
  if (readCount)
  {
    v3 = readCount - a2;
    parent->_readCount = v3;
    if (!v3)
    {
      do
      {
        v4 = parent;
        parent = parent->super._parent;
      }

      while (parent && parent->super._isTemporary);
      v5 = v4->_childRefCount - 1;
      v4->_childRefCount = v5;
      if (!v5)
      {

        MPSAutoBuffer::ReleaseTemporaryBuffer(&v4->super._buffer);
      }
    }
  }
}

void *sub_22E353170(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v3;
      operator delete(v3);
    }

    MEMORY[0x2318E5730](v1, 0x10C402FEFCB83);
    return v2;
  }

  return result;
}

void *MPSGetvImageFunction(char *__symbol)
{
  if (qword_280AFED88 == -1)
  {
    result = qword_280AFED80;
    if (!qword_280AFED80)
    {
      return result;
    }
  }

  else
  {
    dispatch_once(&qword_280AFED88, &unk_2842174A0);
    result = qword_280AFED80;
    if (!qword_280AFED80)
    {
      return result;
    }
  }

  return dlsym(result, __symbol);
}

void *sub_22E353244()
{
  result = dlopen("/System/Library/Frameworks/Accelerate.framework/Frameworks/vImage.framework/vImage", 5);
  qword_280AFED80 = result;
  return result;
}

void *MPSGetvecLibFunction(char *__symbol)
{
  if (qword_280AFEBE8 == -1)
  {
    result = qword_280AFEBF0;
    if (!qword_280AFEBF0)
    {
      return result;
    }
  }

  else
  {
    dispatch_once(&qword_280AFEBE8, &unk_284217420);
    result = qword_280AFEBF0;
    if (!qword_280AFEBF0)
    {
      return result;
    }
  }

  return dlsym(result, __symbol);
}

void *sub_22E3532EC()
{
  result = dlopen("/System/Library/Frameworks/Accelerate.framework/Frameworks/vecLib.framework/vecLib", 5);
  qword_280AFEBF0 = result;
  return result;
}

void *MPSGetCGFunction(char *__symbol)
{
  if (qword_27DA622C8 == -1)
  {
    result = qword_27DA622D0;
    if (!qword_27DA622D0)
    {
      return result;
    }
  }

  else
  {
    dispatch_once(&qword_27DA622C8, &unk_284217400);
    result = qword_27DA622D0;
    if (!qword_27DA622D0)
    {
      return result;
    }
  }

  return dlsym(result, __symbol);
}

void *sub_22E353394()
{
  result = dlopen("/System/Library/Frameworks/CoreGraphics.framework/CoreGraphics", 5);
  qword_27DA622D0 = result;
  return result;
}

float MPSConvertFloatToBfloat16(__int128 *a1, double *a2, unint64_t a3, double a4)
{
  if (a3 < 4)
  {
    v14 = 0;
    v15 = a3;
    if (!a3)
    {
      return *&a4;
    }

    goto LABEL_16;
  }

  v4 = 3;
  v5 = a1;
  v6 = a2;
  do
  {
    v7 = *v5++;
    v8 = v7;
    v9 = *(&v7 + 3);
    v10 = 0.0039062;
    if ((BYTE14(v7) & 1) == 0)
    {
      v10 = 0.0039061;
    }

    v23 = v9 + (COERCE_FLOAT(LODWORD(v9) & 0xFF800000) * v10);
    v11 = 0.0039062;
    if ((BYTE10(v8) & 1) == 0)
    {
      v11 = 0.0039061;
    }

    v22 = *(&v8 + 2) + (COERCE_FLOAT(DWORD2(v8) & 0xFF800000) * v11);
    v12 = 0.0039062;
    if ((BYTE6(v8) & 1) == 0)
    {
      v12 = 0.0039061;
    }

    v13 = 0.0039062;
    if ((BYTE2(v8) & 1) == 0)
    {
      v13 = 0.0039061;
    }

    v20 = *&v8 + (COERCE_FLOAT(v8 & 0xFF800000) * v13);
    LOWORD(a4) = HIWORD(v20);
    v21 = *(&v8 + 1) + (COERCE_FLOAT(DWORD1(v8) & 0xFF800000) * v12);
    WORD1(a4) = HIWORD(v21);
    WORD2(a4) = HIWORD(v22);
    HIWORD(a4) = HIWORD(v23);
    *v6++ = a4;
    v4 += 4;
  }

  while (v4 < a3);
  v14 = a3 & 0xFFFFFFFFFFFFFFFCLL;
  v15 = a3 - (a3 & 0xFFFFFFFFFFFFFFFCLL);
  if (a3 > (a3 & 0xFFFFFFFFFFFFFFFCLL))
  {
LABEL_16:
    v16 = a2 + v14;
    v17 = a1 + v14;
    do
    {
      v18 = 0.0039062;
      if ((*v17 & 0x10000) == 0)
      {
        v18 = 0.0039061;
      }

      *&a4 = *v17 + (COERCE_FLOAT(*v17 & 0xFF800000) * v18);
      *v16++ = WORD1(a4);
      ++v17;
      --v15;
    }

    while (v15);
  }

  return *&a4;
}

unint64_t *MPSConvertBfloat16ToFloat(unint64_t *result, __n128 *a2, unint64_t a3, double a4, int16x8_t a5)
{
  if (a3 < 4)
  {
    v10 = 0;
    v11 = a3;
    if (!a3)
    {
      return result;
    }

    goto LABEL_7;
  }

  v5 = 3;
  v6 = vuzp1_s16(0, 0);
  v7 = a2;
  v8 = result;
  do
  {
    v9 = *v8++;
    a5.i64[0] = v9;
    a5 = vzip1q_s16(v6, a5);
    *v7++ = a5;
    v5 += 4;
  }

  while (v5 < a3);
  v10 = a3 & 0xFFFFFFFFFFFFFFFCLL;
  v11 = a3 - (a3 & 0xFFFFFFFFFFFFFFFCLL);
  if (a3 > (a3 & 0xFFFFFFFFFFFFFFFCLL))
  {
LABEL_7:
    v12 = a2 + 2 * v10;
    v13 = result + v10;
    do
    {
      v14 = *v13++;
      *v12 = 0;
      v12[1] = v14;
      v12 += 2;
      --v11;
    }

    while (v11);
  }

  return result;
}

float32x4_t *MPSConvertFloatToHalf(float32x4_t *result, float16x4_t *a2, unint64_t a3)
{
  if (qword_280AFEC00 != -1)
  {
    v8 = result;
    v9 = a2;
    v10 = a3;
    dispatch_once(&qword_280AFEC00, &unk_2842173E0);
    result = v8;
    a2 = v9;
    a3 = v10;
    if (v10 >= 0x41)
    {
      goto LABEL_3;
    }

    return sub_22E372B98(result, a2, a3);
  }

  if (a3 < 0x41)
  {
    return sub_22E372B98(result, a2, a3);
  }

LABEL_3:
  if (!off_280AFEBF8)
  {
    return sub_22E372B98(result, a2, a3);
  }

  v3 = result;
  v15 = result;
  v16 = 1;
  v17 = a3;
  v18 = 4 * a3;
  v4 = a2;
  v11 = a2;
  v12 = 1;
  v13 = a3;
  v14 = 2 * a3;
  if (a3 > 0x8000 && (a3 & 0xF) == 0)
  {
    v16 = 16;
    v17 = a3 >> 4;
    v18 = (4 * a3) >> 4;
    v12 = 16;
    v13 = a3 >> 4;
    v14 = (2 * a3) >> 4;
  }

  v5 = a3;
  v6 = off_280AFEBF8(&v15, &v11, 0);
  a3 = v5;
  v7 = v6;
  a2 = v4;
  result = v3;
  if (v7)
  {
    return sub_22E372B98(result, a2, a3);
  }

  return result;
}

void *sub_22E35374C()
{
  if (qword_280AFED88 != -1)
  {
    dispatch_once(&qword_280AFED88, &unk_2842174A0);
    result = qword_280AFED80;
    if (!qword_280AFED80)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  result = qword_280AFED80;
  if (qword_280AFED80)
  {
LABEL_3:
    result = dlsym(result, "vImageConvert_PlanarFtoPlanar16F");
  }

LABEL_4:
  off_280AFEBF8 = result;
  return result;
}

void MPSConvertHalfToFloat(float16x4_t *a1, float32x4_t *a2, unint64_t a3)
{
  v6 = off_27DA622D8;
  if (off_27DA622D8)
  {
LABEL_4:
    v31[0] = a1;
    v31[1] = 1;
    v31[2] = a3;
    v31[3] = 2 * a3;
    v30[0] = a2;
    v30[1] = 1;
    v30[2] = a3;
    v30[3] = 4 * a3;
    v7 = (v6)(v31, v30, 0);
    if (!a3 || !v7)
    {
      return;
    }

    goto LABEL_6;
  }

  if (qword_27DA622E0 == -1)
  {
    v6 = off_27DA622D8;
    if (off_27DA622D8)
    {
      goto LABEL_4;
    }
  }

  else
  {
    dispatch_once(&qword_27DA622E0, &unk_284217480);
    v6 = off_27DA622D8;
    if (off_27DA622D8)
    {
      goto LABEL_4;
    }
  }

  if (!a3)
  {
    return;
  }

LABEL_6:
  if (a3 < 4)
  {
    v8 = 0;
    goto LABEL_17;
  }

  if (a3 >= 0x10)
  {
    v8 = a3 & 0xFFFFFFFFFFFFFFF0;
    v9 = a1 + 2;
    v10 = a2 + 2;
    v11 = a3 & 0xFFFFFFFFFFFFFFF0;
    do
    {
      v12 = *v9[-2].i8;
      v13 = vcvtq_f32_f16(*v9);
      v14 = vcvt_hight_f32_f16(*v9->i8);
      v10[-2] = vcvtq_f32_f16(*v12.i8);
      v10[-1] = vcvt_hight_f32_f16(v12);
      *v10 = v13;
      v10[1] = v14;
      v10 += 4;
      v9 += 4;
      v11 -= 16;
    }

    while (v11);
    if (v8 == a3)
    {
      return;
    }

    if ((a3 & 0xC) == 0)
    {
LABEL_17:
      v20 = a3 - v8;
      v21 = &a2->i32[v8];
      v22 = a1 + v8;
      do
      {
        v23 = *v22++;
        _H0 = v23;
        __asm { FCVT            S0, H0 }

        *v21++ = _S0;
        --v20;
      }

      while (v20);
      return;
    }
  }

  else
  {
    v8 = 0;
  }

  v15 = v8;
  v8 = a3 & 0xFFFFFFFFFFFFFFFCLL;
  v16 = (a1 + 2 * v15);
  v17 = (a2 + 4 * v15);
  v18 = v15 - (a3 & 0xFFFFFFFFFFFFFFFCLL);
  do
  {
    v19 = *v16++;
    *v17++ = vcvtq_f32_f16(v19);
    v18 += 4;
  }

  while (v18);
  if (v8 != a3)
  {
    goto LABEL_17;
  }
}

void *sub_22E353920()
{
  if (qword_280AFED88 != -1)
  {
    dispatch_once(&qword_280AFED88, &unk_2842174A0);
    result = qword_280AFED80;
    if (!qword_280AFED80)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  result = qword_280AFED80;
  if (qword_280AFED80)
  {
LABEL_3:
    result = dlsym(result, "vImageConvert_Planar16FtoPlanarF");
  }

LABEL_4:
  off_27DA622D8 = result;
  return result;
}

uint64_t MPSCopyToFromNetworkByteOrder32(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_280AFEC10 == -1)
  {
    if (off_280AFEC08)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = a1;
    v5 = a2;
    v6 = a3;
    dispatch_once(&qword_280AFEC10, &unk_284217460);
    a2 = v5;
    a1 = v4;
    a3 = v6;
    if (off_280AFEC08)
    {
      goto LABEL_3;
    }
  }

  v7 = a1;
  v8 = a3;
  v9 = a2;
  v10 = MTLReportFailureTypeEnabled();
  a2 = v9;
  a3 = v8;
  v11 = v10;
  a1 = v7;
  if (v11)
  {
    MTLReportFailure();
    a2 = v9;
    a1 = v7;
    a3 = v8;
  }

LABEL_3:
  v14 = 66051;
  v13[0] = a2;
  v13[1] = 1;
  v13[2] = a3;
  v13[3] = 4 * a3;
  v12[0] = a1;
  v12[1] = 1;
  v12[2] = a3;
  v12[3] = 4 * a3;
  return off_280AFEC08(v13, v12, &v14, 0);
}

void *sub_22E353AA0()
{
  if (qword_280AFED88 != -1)
  {
    dispatch_once(&qword_280AFED88, &unk_2842174A0);
    result = qword_280AFED80;
    if (!qword_280AFED80)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  result = qword_280AFED80;
  if (qword_280AFED80)
  {
LABEL_3:
    result = dlsym(result, "vImagePermuteChannels_ARGB8888");
  }

LABEL_4:
  off_280AFEC08 = result;
  return result;
}

uint64_t MPSCopyToFromNetworkByteOrder16(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_280AFEC20 == -1)
  {
    if (off_280AFEC18)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = a1;
    v5 = a2;
    v6 = a3;
    dispatch_once(&qword_280AFEC20, &unk_284217440);
    a2 = v5;
    a1 = v4;
    a3 = v6;
    if (off_280AFEC18)
    {
      goto LABEL_3;
    }
  }

  v7 = a1;
  v8 = a3;
  v9 = a2;
  v10 = MTLReportFailureTypeEnabled();
  a2 = v9;
  a3 = v8;
  v11 = v10;
  a1 = v7;
  if (v11)
  {
    MTLReportFailure();
    a2 = v9;
    a1 = v7;
    a3 = v8;
  }

LABEL_3:
  v13[0] = a2;
  v13[1] = 1;
  v13[2] = a3;
  v13[3] = 2 * a3;
  v12[0] = a1;
  v12[1] = 1;
  v12[2] = a3;
  v12[3] = 2 * a3;
  return off_280AFEC18(v13, v12, 0);
}

void *sub_22E353C10()
{
  if (qword_280AFED88 != -1)
  {
    dispatch_once(&qword_280AFED88, &unk_2842174A0);
    result = qword_280AFED80;
    if (!qword_280AFED80)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  result = qword_280AFED80;
  if (qword_280AFED80)
  {
LABEL_3:
    result = dlsym(result, "vImageByteSwap_Planar16U");
  }

LABEL_4:
  off_280AFEC18 = result;
  return result;
}

_BYTE *MPSConvertFloatToDataType(_BYTE *result, int a2, float a3)
{
  if (a2 == 335544328)
  {
    v3 = LODWORD(a3);
    if (fabsf(a3) >= 0.0019531)
    {
      v11 = ((LODWORD(a3) >> 23) - 120);
      if (v11 <= 15)
      {
        v12 = (LODWORD(a3) >> 20) & 7;
        v13 = v11 < 1;
        if (v11 < 1)
        {
          v12 = ((LODWORD(a3) >> 20) & 7 | 8) >> (121 - (LODWORD(a3) >> 23));
        }

        v5 = v12 | (8 * (v11 & ~(v11 >> 31)));
        if (v13 || LODWORD(a3) << 12 < 0x80000001 && (LODWORD(a3) << 12 != 0x80000000 || (LODWORD(a3) & 0x100000) == 0))
        {
          goto LABEL_45;
        }

        v14 = v12 & 7;
        v10 = ((LODWORD(a3) >> 23) - 120) == 15 && v14 == 6;
LABEL_31:
        v15 = 120;
LABEL_42:
        if (v10)
        {
          LOBYTE(v5) = v15;
        }

        else
        {
          LOBYTE(v5) = v5 + 1;
        }

        goto LABEL_45;
      }

LABEL_21:
      LOBYTE(v5) = 120;
      goto LABEL_45;
    }

LABEL_19:
    LOBYTE(v5) = 0;
    goto LABEL_45;
  }

  if (a2 == 301989896)
  {
    v3 = LODWORD(a3);
    if (fabsf(a3) >= 0.0019531)
    {
      v6 = ((LODWORD(a3) >> 23) - 120);
      if (v6 <= 14)
      {
        v7 = (LODWORD(a3) >> 20) & 7;
        v8 = v6 < 1;
        if (v6 < 1)
        {
          v7 = ((LODWORD(a3) >> 20) & 7 | 8) >> (121 - (LODWORD(a3) >> 23));
        }

        v5 = v7 | (8 * (v6 & ~(v6 >> 31)));
        if (v8 || LODWORD(a3) << 12 < 0x80000001 && (LODWORD(a3) << 12 != 0x80000000 || (LODWORD(a3) & 0x100000) == 0))
        {
          goto LABEL_45;
        }

        v9 = ~v7 & 7;
        v10 = ((LODWORD(a3) >> 23) - 120) == 14 && v9 == 0;
        goto LABEL_31;
      }

      goto LABEL_21;
    }

    goto LABEL_19;
  }

  if (a2 != 268435464)
  {
    return result;
  }

  v3 = LODWORD(a3);
  if (fabsf(a3) < 0.000015259)
  {
    goto LABEL_19;
  }

  v4 = ((LODWORD(a3) >> 23) - 112);
  if (v4 <= 30)
  {
    v16 = (LODWORD(a3) >> 21) & 3;
    v17 = v4 < 1;
    if (v4 < 1)
    {
      v16 = ((LODWORD(a3) >> 21) & 3 | 4) >> (113 - (LODWORD(a3) >> 23));
    }

    v5 = v16 | (4 * (v4 & ~(v4 >> 31)));
    if (v17 || LODWORD(a3) << 11 < 0x80000001 && (LODWORD(a3) << 11 != 0x80000000 || (LODWORD(a3) & 0x200000) == 0))
    {
      goto LABEL_45;
    }

    v18 = ~v16 & 3;
    v10 = ((LODWORD(a3) >> 23) - 112) == 30 && v18 == 0;
    v15 = 124;
    goto LABEL_42;
  }

  LOBYTE(v5) = 124;
LABEL_45:
  *result = v5 | ((v3 < 0) << 7);
  return result;
}

float MPSConvertDataTypeToFloat(unsigned __int8 *a1, int a2)
{
  if (a2 != 335544328)
  {
    if (a2 == 301989896)
    {
      v3 = *a1;
      v9 = v3 & 7;
      v10 = (v3 & 7) != 0 && (v3 & 0x78) == 0;
      if ((v3 & 0x78) == 0x78 && (v3 & 7) != 0)
      {
LABEL_29:
        result = NAN;
        if ((v3 & 0x80u) == 0)
        {
          return NAN;
        }

        return result;
      }

      v7 = v3 >> 7;
      v8 = v3 & 0x7F;
      if ((v3 & 0x7F) != 0)
      {
        if (v8 != 120)
        {
          if (v10)
          {
            return (COERCE_FLOAT((v7 << 31) | 0x3C800000) * 0.125) * (v3 & 7);
          }

          v15 = (((v3 >> 3) & 0xF) << 23) + 1006632960;
          v8 = v9 << 20;
          goto LABEL_38;
        }

LABEL_26:
        result = -INFINITY;
        if ((v3 & 0x80u) == 0)
        {
          return INFINITY;
        }

        return result;
      }
    }

    else
    {
      result = 0.0;
      if (a2 != 268435464)
      {
        return result;
      }

      v3 = *a1;
      v4 = v3 & 3;
      v5 = (v3 & 3) != 0 && (v3 & 0x7C) == 0;
      if ((v3 & 0x7C) == 0x7C && (v3 & 3) != 0)
      {
        goto LABEL_29;
      }

      v7 = v3 >> 7;
      v8 = v3 & 0x7F;
      if ((v3 & 0x7F) != 0)
      {
        if (v8 != 124)
        {
          if (v5)
          {
            return (COERCE_FLOAT((v7 << 31) | 0x38800000) * 0.25) * (v3 & 3);
          }

          v15 = (((v3 >> 2) & 0x1F) << 23) + 939524096;
          v8 = v4 << 21;
          goto LABEL_38;
        }

        goto LABEL_26;
      }
    }

    v15 = v8;
LABEL_38:
    v16 = v15 | (v7 << 31) | v8;
    return *&v16;
  }

  v12 = *a1;
  v13 = v12 >> 7;
  v14 = v12 & 0x7F;
  if ((v12 & 0x7F) == 0)
  {
    v17 = v12 & 0x7F;
LABEL_46:
    v16 = v17 | (v13 << 31) | v14;
    return *&v16;
  }

  if (v14 != 127)
  {
    v18 = v12 & 7;
    if ((v12 & 0x78) == 0 && v18 != 0)
    {
      return (COERCE_FLOAT((v13 << 31) | 0x3C800000) * 0.125) * v18;
    }

    v17 = (((v12 >> 3) & 0xF) << 23) + 1006632960;
    v14 = v18 << 20;
    goto LABEL_46;
  }

  result = NAN;
  if ((v12 & 0x80u) == 0)
  {
    return NAN;
  }

  return result;
}

void sub_22E355260(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_22E35546C((v5 - 184), a2, a3, a4, a5);
  MPSAutoCache::~MPSAutoCache((v5 - 168), v7, v8, v9, v10);
  _Unwind_Resume(a1);
}

uint64_t sub_22E3552F0(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = MPSCreateFunctionConstantValues(a1, a2, a3, a4, a5);
  v12 = v10;
  v13 = *(a3 + 16);
  if (v13 == -1)
  {
    v13 = 0;
  }

  v14 = v13 | *(a2 + 64);
  v25 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v10, v11, &v25, 33, 126);
  v25 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v12, v15, &v25, 33, 125);
  if (v14 != -1)
  {
    v25 = v14;
    objc_msgSend_setConstantValue_type_atIndex_(v12, v16, &v25, 33, 124);
  }

  v25 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v12, v16, &v25, 33, 123);
  v25 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v12, v17, &v25, 33, 119);
  v25 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v12, v18, &v25, 33, 118);
  v25 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v12, v19, &v25, 33, 122);
  v25 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v12, v20, &v25, 33, 121);
  v25 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v12, v21, &v25, 33, 117);
  v25 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v12, v22, &v25, 33, 116);
  v23 = _MPSNewSpecializedFunction(a1, *a2, v12, a4, a5);

  return v23;
}

void **sub_22E35546C(void **a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_endEncoding(*a1, a2, a3, a4, a5);

  return a1;
}

id MPSDevice::GetSampler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a3 == 1;
  v7 = a4 == 1;
  v8 = (a1 + 32 * v7 + 16 * v6 + 8 * (a2 == 1) + 40);
  result = atomic_load_explicit(v8, memory_order_acquire);
  if (!result)
  {
    v13 = *(a1 + 16);
    result = objc_alloc_init(MEMORY[0x277CD6FD0]);
    if (result)
    {
      v17 = a2 == 0;
      v18 = 4 * (a2 == 0);
      v19 = result;
      objc_msgSend_setSAddressMode_(result, v14, 4 * v17, v15, v16);
      objc_msgSend_setTAddressMode_(v19, v20, v18, v21, v22);
      objc_msgSend_setRAddressMode_(v19, v23, v18, v24, v25);
      objc_msgSend_setMinFilter_(v19, v26, v6, v27, v28);
      objc_msgSend_setMagFilter_(v19, v29, v6, v30, v31);
      objc_msgSend_setNormalizedCoordinates_(v19, v32, a4 == 1, v33, v34);
      v38 = 1;
      if (a5)
      {
        v38 = 2;
      }

      if (a5 == 2)
      {
        objc_msgSend_setMipFilter_(v19, v35, v7, v36, v37);
      }

      else
      {
        objc_msgSend_setMipFilter_(v19, v35, v38, v36, v37);
      }

      v42 = objc_msgSend_newSamplerStateWithDescriptor_(v13, v39, v19, v40, v41);

      result = v42;
      if (v42)
      {
        v43 = 0;
        atomic_compare_exchange_strong_explicit(v8, &v43, v42, memory_order_release, memory_order_relaxed);
        if (v43)
        {

          return atomic_load_explicit(v8, memory_order_acquire);
        }
      }
    }
  }

  return result;
}

BOOL sub_22E356128(atomic_ullong *a1, atomic_ullong *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  explicit = atomic_load_explicit(a1, memory_order_acquire);
  v6 = atomic_load_explicit(a2, memory_order_acquire);
  if (explicit)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return 0;
  }

  v8 = objc_msgSend_storageMode(explicit, a2, a3, a4, a5);
  if (v8 != objc_msgSend_storageMode(v6, v9, v10, v11, v12))
  {
    return 0;
  }

  if (objc_msgSend_storageMode(explicit, v13, v14, v15, v16) == 2)
  {
    v21 = objc_msgSend_gpuAddress(explicit, v17, v18, v19, v20);
  }

  else
  {
    v21 = objc_msgSend_contents(explicit, v17, v18, v19, v20);
  }

  v27 = v21;
  v28 = objc_msgSend_length(explicit, v22, v23, v24, v25);
  if (objc_msgSend_storageMode(v6, v29, v30, v31, v32) == 2)
  {
    v37 = objc_msgSend_gpuAddress(v6, v33, v34, v35, v36);
  }

  else
  {
    v37 = objc_msgSend_contents(v6, v33, v34, v35, v36);
  }

  v42 = v37;
  v43 = objc_msgSend_length(v6, v38, v39, v40, v41) + v37;
  return v28 + v27 > v42 && v43 > v27;
}

void MPSDecrementReadCount(MPSTemporaryMatrix *a1)
{
  readCount = a1->_readCount;
  if (readCount)
  {
    v2 = readCount - 1;
    a1->_readCount = v2;
    if (!v2)
    {
      MPSAutoBuffer::ReleaseTemporaryBuffer(&a1->super._buffer);
    }
  }
}

void MPSDecrementReadCount(MPSTemporaryVector *a1)
{
  readCount = a1->_readCount;
  if (readCount)
  {
    v2 = readCount - 1;
    a1->_readCount = v2;
    if (!v2)
    {
      MPSAutoBuffer::ReleaseTemporaryBuffer(&a1->super._buffer);
    }
  }
}

uint64_t sub_22E357EB0(void *a1, uint64_t a2, _DWORD *a3)
{
  v4 = a2;
  if (a1[1])
  {
    v5 = a1;
    v4 = sub_22E357EB0(a1[1], a2, a3);
    a1 = v5;
  }

  v6 = MEMORY[0x277CCACA8];
  ++*a3;
  v7 = (*(*a1 + 32))(a1);
  return objc_msgSend_stringWithFormat_(v6, v8, @"%@%@", v9, v10, v4, v7);
}

void MPSDecrementReadCount(MPSState *a1)
{
  if (a1 && (a1->_flags & 1) != 0)
  {
    readCount = a1->_readCount;
    if (readCount)
    {
      v3 = readCount - 1;
      a1->_readCount = v3;
      if (!v3 && a1->_resourceCount)
      {
        v8 = 0;
        v9 = 0;
        do
        {
          resources = a1->_resources;
          v11 = *&resources[v8];
          if (v11 == 2)
          {
            MPSAutoTexture::ReleaseTemporaryTexture(&resources[v8 + 8]);
          }

          else if (v11 == 1)
          {
            MPSAutoBuffer::ReleaseTemporaryBuffer(&resources[v8 + 8]);
          }

          ++v9;
          v8 += 72;
        }

        while (v9 < a1->_resourceCount);
      }
    }

    else if (MTLReportFailureTypeEnabled())
    {
      objc_msgSend_debugDescription(a1, v4, v5, v6, v7);
      MTLReportFailure();
    }
  }
}

NSUInteger MPSStateBatchIncrementReadCount(MPSStateBatch *batch, NSInteger amount)
{
  v7 = objc_msgSend_count(batch, amount, v2, v3, v4);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = malloc_type_malloc(8 * v7, 0x80040B8603338uLL);
  objc_msgSend_getObjects_range_(batch, v10, v9, 0, v8);
  for (i = 0; i != v8; ++i)
  {
    v12 = v9[i];
    if (v12)
    {
      *(v12 + 42) = 0;
    }
  }

  v13 = 0;
  if (amount < 0)
  {
    for (j = 0; j != v8; ++j)
    {
      v23 = v9[j];
      if (v23)
      {
        if ((*(v23 + 42) & 1) == 0)
        {
          *(v23 + 42) = 1;
          ++v13;
          if (*(v23 + 40))
          {
            v24 = *(v23 + 24);
            if (v24)
            {
              if (v24 < -amount && MTLReportFailureTypeEnabled())
              {
                objc_msgSend_debugDescription(v23, v29, v30, v31, v32);
                MTLReportFailure();
              }

              *(v23 + 24) = v24 + amount;
              if (!(v24 + amount) && *(v23 + 16))
              {
                v25 = 0;
                v26 = 0;
                do
                {
                  v27 = *(v23 + 8);
                  v28 = *(v27 + v25);
                  if (v28 == 2)
                  {
                    MPSAutoTexture::ReleaseTemporaryTexture((v27 + v25 + 8));
                  }

                  else if (v28 == 1)
                  {
                    MPSAutoBuffer::ReleaseTemporaryBuffer((v27 + v25 + 8));
                  }

                  ++v26;
                  v25 += 72;
                }

                while (v26 < *(v23 + 16));
              }
            }
          }
        }
      }
    }
  }

  else
  {
    for (k = 0; k != v8; ++k)
    {
      v15 = v9[k];
      if (v15)
      {
        if ((*(v15 + 42) & 1) == 0)
        {
          *(v15 + 42) = 1;
          ++v13;
          if (*(v15 + 40))
          {
            v16 = *(v15 + 24);
            if (v16)
            {
              v17 = v16 + amount;
              *(v15 + 24) = v17;
              if (!v17)
              {
                if (*(v15 + 16))
                {
                  v18 = 0;
                  v19 = 0;
                  do
                  {
                    v20 = *(v15 + 8);
                    v21 = *(v20 + v18);
                    if (v21 == 1)
                    {
                      MPSAutoBuffer::ReleaseTemporaryBuffer((v20 + v18 + 8));
                    }

                    else if (v21 == 2)
                    {
                      MPSAutoTexture::ReleaseTemporaryTexture((v20 + v18 + 8));
                    }

                    ++v19;
                    v18 += 72;
                  }

                  while (v19 < *(v15 + 16));
                }
              }
            }
          }
        }
      }
    }
  }

  free(v9);
  return v13;
}

void MPSStateBatchSynchronize(MPSStateBatch *batch, id cmdBuf)
{
  v7 = objc_msgSend_count(batch, cmdBuf, v2, v3, v4);
  if (v7)
  {
    v8 = v7;
    v9 = malloc_type_malloc(8 * v7, 0x80040B8603338uLL);
    objc_msgSend_getObjects_range_(batch, v10, v9, 0, v8);
    for (i = 0; i != v8; ++i)
    {
      v12 = v9[i];
      if (v12)
      {
        if ((*(v12 + 40) & 1) != 0 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        *(v12 + 42) = 0;
      }
    }

    for (j = 0; j != v8; ++j)
    {
      v14 = objc_autoreleasePoolPush();
      v18 = v9[j];
      if (v18 && (*(v18 + 42) & 1) == 0)
      {
        v19 = v14;
        objc_msgSend_synchronizeOnCommandBuffer_(v9[j], v15, cmdBuf, v16, v17);
        v14 = v19;
        *(v18 + 42) = 1;
      }

      objc_autoreleasePoolPop(v14);
    }

    free(v9);
  }
}

NSUInteger MPSStateBatchResourceSize(MPSStateBatch *batch)
{
  v6 = objc_msgSend_count(batch, v1, v2, v3, v4);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = malloc_type_malloc(8 * v6, 0x80040B8603338uLL);
  objc_msgSend_getObjects_range_(batch, v9, v8, 0, v7);
  for (i = 0; i != v7; ++i)
  {
    v11 = v8[i];
    if (v11)
    {
      *(v11 + 42) = 0;
    }
  }

  v12 = 0;
  v13 = 0;
  do
  {
    v14 = objc_autoreleasePoolPush();
    v19 = v8[v12];
    if (v19 && (*(v19 + 42) & 1) == 0)
    {
      v20 = v14;
      v21 = objc_msgSend_resourceSize(v8[v12], v15, v16, v17, v18);
      v14 = v20;
      v13 += v21;
      *(v19 + 42) = 1;
    }

    objc_autoreleasePoolPop(v14);
    ++v12;
  }

  while (v7 != v12);
  free(v8);
  return v13;
}

uint64_t sub_22E35A114(uint64_t a1)
{
  *a1 = &unk_284219408;

  return a1;
}

void sub_22E35A160(uint64_t a1)
{
  *a1 = &unk_284219408;

  JUMPOUT(0x2318E5730);
}

uint64_t sub_22E35A1CC(uint64_t a1, uint64_t a2, MPSDevice *a3)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  *a2 = 2;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  atomic_store(0, (a2 + 8));
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 64) = 0;
  *(a2 + 64) = 4;
  *(a2 + 48) = 0;
  *(a2 + 56) = a3;
  *(a2 + 48) = v5;
  *(a2 + 65) = 0;
  *(a2 + 16) = xmmword_22E37B630;
  v11 = objc_msgSend_pixelFormat(v5, v7, v8, v9, v10);
  result = MPSDevice::GetPixelInfo(a3, v11, v6);
  *(a2 + 40) = result;
  return result;
}

void sub_22E35A258(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  *a2 = 2;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  atomic_store(0, (a2 + 8));
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  MPSAutoTexture::InitDeferredUsingTextureCache(a2 + 8, v4, a3, v3, 0);
}

uint64_t sub_22E35A288(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_msgSend_debugDescription(*(a1 + 16), a2, a3, a4, a5);
  return objc_msgSend_stringWithFormat_(v6, v8, @"\n\t[%d] texture %@", v9, v10, a2, v7);
}

double sub_22E35A2EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  *a2 = 1;
  atomic_store(0, (a2 + 8));
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  v4 = *(a3 + 16);
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  result = NAN;
  *(a2 + 40) = xmmword_22E37B630;
  return result;
}

void sub_22E35A320(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 16);
  *a2 = 1;
  atomic_store(0, (a2 + 8));
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  MPSAutoBuffer::InitDeferredUsingTextureCache(a2 + 8, v5, a3, a4, a5);
}

void sub_22E35AD08(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_22E35546C(va, a2, a3, a4, a5);
  MPSAutoCache::~MPSAutoCache((v20 - 112), v22, v23, v24, v25);
  _Unwind_Resume(a1);
}

void sub_22E35B280(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_22E35546C((v5 - 136), a2, a3, a4, a5);
  MPSAutoCache::~MPSAutoCache((v5 - 112), v7, v8, v9, v10);
  _Unwind_Resume(a1);
}

void *sub_22E35B37C(void *result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (atomic_fetch_add_explicit((result[4] + 616), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed) <= 1)
  {
    result = objc_msgSend_userDictionary(a2, a2, a3, a4, a5);
    if (result)
    {
      objc_msgSend_removeObjectForKey_(result, v6, @"MPSCommandBufferImageCache", v7, v8);
      result = objc_msgSend_status(a2, v9, v10, v11, v12);
      if (result == 5)
      {
        v17 = objc_msgSend_error(a2, v13, v14, v15, v16);
        v22 = *MEMORY[0x277D85DF8];
        if (v17)
        {
          v23 = v17;
          v24 = objc_msgSend_localizedFailureReason(v17, v18, v19, v20, v21);
          objc_msgSend_cStringUsingEncoding_(v24, v25, 4, v26, v27);
          v32 = objc_msgSend_localizedDescription(v23, v28, v29, v30, v31);
          objc_msgSend_cStringUsingEncoding_(v32, v33, 4, v34, v35);
          v40 = objc_msgSend_debugDescription(a2, v36, v37, v38, v39);
          objc_msgSend_cStringUsingEncoding_(v40, v41, 4, v42, v43);
          return fprintf(v22, "Error: command buffer exited with error status.\n\tThe Metal Performance Shaders operations encoded on it may not have completed.\n\tError: \n\t%s\n\t%s\n\t%s\n");
        }

        else
        {
          v44 = objc_msgSend_debugDescription(a2, v18, v19, v20, v21);
          objc_msgSend_cStringUsingEncoding_(v44, v45, 4, v46, v47);
          return fprintf(v22, "Error: command buffer exited with error status, but did not provide an error message.\n\tThe Metal Performance Shaders operations encoded on it may not have completed.\n\t%s\n");
        }
      }
    }
  }

  return result;
}

uint64_t sub_22E35B9B8(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_userDictionary(a1, a2, a3, a4, a5);
  v10 = objc_msgSend_objectForKey_(v6, v7, @"MPSCommandBufferImageCache", v8, v9);
  if (v10)
  {
  }

  else
  {
    os_unfair_lock_lock(&unk_280AFEB78);
    v17 = objc_msgSend_objectForKey_(v6, v14, @"MPSCommandBufferImageCache", v15, v16);
    if (!v17)
    {
      v18 = [MPSCommandBufferImageCache alloc];
      v22 = objc_msgSend_initWithCommandBuffer_(v18, v19, a1, v20, v21);
      if (!v22)
      {
        os_unfair_lock_unlock(&unk_280AFEB78);
        return 0;
      }

      v23 = v22;

      v17 = v23;
    }

    v24 = v17;
    os_unfair_lock_unlock(&unk_280AFEB78);
    v10 = v24;
  }

  return MEMORY[0x2821F9670](v10, sel_heapProvider, v11, v12, v13);
}

void sub_22E35BAAC(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_userDictionary(a1, a2, a3, a4, a5);
  v11 = objc_msgSend_objectForKey_(v7, v8, @"MPSCommandBufferImageCache", v9, v10);
  if (v11)
  {
    v14 = a2;

_objc_msgSend$setHeapProvider_:
    MEMORY[0x2821F9670](v11, sel_setHeapProvider_, v14, v12, v13);
    return;
  }

  os_unfair_lock_lock(&unk_280AFEB78);
  v18 = objc_msgSend_objectForKey_(v7, v15, @"MPSCommandBufferImageCache", v16, v17);
  if (v18)
  {
LABEL_8:
    v25 = v18;
    os_unfair_lock_unlock(&unk_280AFEB78);
    v11 = v25;
    v14 = a2;

    goto _objc_msgSend$setHeapProvider_;
  }

  v19 = [MPSCommandBufferImageCache alloc];
  v23 = objc_msgSend_initWithCommandBuffer_(v19, v20, a1, v21, v22);
  if (v23)
  {
    v24 = v23;

    v18 = v24;
    goto LABEL_8;
  }

  os_unfair_lock_unlock(&unk_280AFEB78);
}

void sub_22E35BBC4(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 != a2)
  {
    v6 = objc_msgSend_userDictionary(a1, a2, a3, a4, a5);
    v10 = objc_msgSend_objectForKey_(v6, v7, @"MPSCommandBufferImageCache", v8, v9);
    if (v10)
    {
      v15 = v10;
      v16 = objc_msgSend_userDictionary(a2, v11, v12, v13, v14);
      os_unfair_lock_lock(&unk_280AFEB78);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v22 = a2;
      if (isKindOfClass)
      {
        v22 = objc_msgSend_rootCommandBuffer(a2, v17, v18, v19, v20);
      }

      *(v15 + 16) = v22;
      *(v15 + 632) = 1;
      atomic_fetch_add((v15 + 616), 1uLL);
      objc_msgSend_addHandlerToCommandBuffer_(v15, v17, a2, v19, v20);
      objc_msgSend_setObject_forKey_(v16, v23, v15, @"MPSCommandBufferImageCache", v24);
      objc_msgSend_removeObjectForKey_(v6, v25, @"MPSCommandBufferImageCache", v26, v27);

      os_unfair_lock_unlock(&unk_280AFEB78);
    }
  }
}

uint64_t MPSGetHeapSizeForCommandBuffer(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_userDictionary(a1, a2, a3, a4, a5);
  v10 = objc_msgSend_objectForKey_(v6, v7, @"MPSCommandBufferImageCache", v8, v9);
  if (v10)
  {
    return *(v10 + 600);
  }

  os_unfair_lock_lock(&unk_280AFEB78);
  v14 = objc_msgSend_objectForKey_(v6, v11, @"MPSCommandBufferImageCache", v12, v13);
  if (v14)
  {
LABEL_5:
    v21 = v14;
    os_unfair_lock_unlock(&unk_280AFEB78);
    v10 = v21;
    return *(v10 + 600);
  }

  v15 = [MPSCommandBufferImageCache alloc];
  v19 = objc_msgSend_initWithCommandBuffer_(v15, v16, a1, v17, v18);
  if (v19)
  {
    v20 = v19;

    v14 = v20;
    goto LABEL_5;
  }

  os_unfair_lock_unlock(&unk_280AFEB78);
  return 0;
}

void *MPSAutoCache::WarmAllocations(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_msgSend_userDictionary(a1, a2, a3, a4, a5);
  v12 = objc_msgSend_objectForKey_(v8, v9, @"MPSCommandBufferImageCache", v10, v11);
  v13 = v12;
  if (v12)
  {
    if ((*(**(v12 + 8) + 112))(*(v12 + 8)))
    {
      goto LABEL_3;
    }
  }

  else
  {
    os_unfair_lock_lock(&unk_280AFEB78);
    v13 = objc_msgSend_objectForKey_(v8, v28, @"MPSCommandBufferImageCache", v29, v30);
    if (!v13)
    {
      v31 = [MPSCommandBufferImageCache alloc];
      v35 = objc_msgSend_initWithCommandBuffer_(v31, v32, a1, v33, v34);
      v13 = v35;
      if (v35)
      {
      }
    }

    os_unfair_lock_unlock(&unk_280AFEB78);
    if ((*(**(v13 + 8) + 112))(*(v13 + 8)))
    {
LABEL_3:
      v14 = *MEMORY[0x277D85FA0];
      v58 = (&a2[*MEMORY[0x277D85FA0] - 1] & -*MEMORY[0x277D85FA0]) + ((*MEMORY[0x277D85FA0] - 1 + a3) & -*MEMORY[0x277D85FA0]);
      v59 = v14;
      result = sub_22E2EFC10(v13, &v58, 0);
      if (result)
      {
        v20 = result;
        v21 = v13 + 32;
        do
        {
LABEL_6:
          v24 = *v20;
          v23 = v20[1];
          *v20 = 0;
          result = objc_msgSend_size(v23, v16, v17, v18, v19);
          v25 = 64 - __clz(result);
          if (!result)
          {
            v25 = 0;
          }

          v26 = (v21 + 8 * v25);
          v27 = v26;
          do
          {
            v27 = *v27;
            if (!v27)
            {
              result = malloc_type_malloc(0x18uLL, 0x102004062D53EE8uLL);
              v22 = v20[2];
              result[1] = v20;
              result[2] = v22;
              *result = *v26;
              *v26 = result;
              v20 = v24;
              if (!v24)
              {
                return result;
              }

              goto LABEL_6;
            }
          }

          while (v27[2] != v20[2]);
          *v20 = v27[1];
          v27[1] = v20;
          v20 = v24;
        }

        while (v24);
      }

      return result;
    }
  }

  v36 = MEMORY[0x277D85FA0];
  v37 = *MEMORY[0x277D85FA0];
  v58 = &a2[*MEMORY[0x277D85FA0] - 1] & -*MEMORY[0x277D85FA0];
  v59 = v37;
  v38 = sub_22E2EFC10(v13, &v58, 0);
  v39 = *v36;
  v58 = (a3 + *v36 - 1) & -*v36;
  v59 = v39;
  result = sub_22E2EFC10(v13, &v58, 0);
  for (i = result; v38; v50[1] = v46)
  {
LABEL_20:
    v46 = v38;
    v38 = *v38;
    v47 = v46[1];
    *v46 = 0;
    result = objc_msgSend_size(v47, v40, v41, v42, v43);
    v48 = 64 - __clz(result);
    if (!result)
    {
      v48 = 0;
    }

    v49 = (v13 + 32 + 8 * v48);
    v50 = v49;
    do
    {
      v50 = *v50;
      if (!v50)
      {
        result = malloc_type_malloc(0x18uLL, 0x102004062D53EE8uLL);
        v45 = v46[2];
        result[1] = v46;
        result[2] = v45;
        *result = *v49;
        *v49 = result;
        if (!v38)
        {
          goto LABEL_26;
        }

        goto LABEL_20;
      }
    }

    while (v50[2] != v46[2]);
    *v46 = v50[1];
  }

LABEL_26:
  if (i)
  {
    v51 = v13 + 32;
    do
    {
LABEL_29:
      v53 = i;
      i = *i;
      v54 = v53[1];
      *v53 = 0;
      result = objc_msgSend_size(v54, v40, v41, v42, v43);
      v55 = 64 - __clz(result);
      if (!result)
      {
        v55 = 0;
      }

      v56 = (v51 + 8 * v55);
      v57 = v56;
      do
      {
        v57 = *v57;
        if (!v57)
        {
          result = malloc_type_malloc(0x18uLL, 0x102004062D53EE8uLL);
          v52 = v53[2];
          result[1] = v53;
          result[2] = v52;
          *result = *v56;
          *v56 = result;
          if (!i)
          {
            return result;
          }

          goto LABEL_29;
        }
      }

      while (v57[2] != v53[2]);
      *v53 = v57[1];
      v57[1] = v53;
    }

    while (i);
  }

  return result;
}

{
  v9 = objc_msgSend_userDictionary(a1, a2, a3, a4, a5);
  v13 = objc_msgSend_objectForKey_(v9, v10, @"MPSCommandBufferImageCache", v11, v12);
  v14 = v13;
  if (v13)
  {
    if ((*(**(v13 + 8) + 112))(*(v13 + 8)))
    {
      goto LABEL_3;
    }
  }

  else
  {
    os_unfair_lock_lock(&unk_280AFEB78);
    v14 = objc_msgSend_objectForKey_(v9, v29, @"MPSCommandBufferImageCache", v30, v31);
    if (!v14)
    {
      v32 = [MPSCommandBufferImageCache alloc];
      v36 = objc_msgSend_initWithCommandBuffer_(v32, v33, a1, v34, v35);
      v14 = v36;
      if (v36)
      {
      }
    }

    os_unfair_lock_unlock(&unk_280AFEB78);
    if ((*(**(v14 + 8) + 112))(*(v14 + 8)))
    {
LABEL_3:
      v15 = *MEMORY[0x277D85FA0];
      v67 = (&a2[*MEMORY[0x277D85FA0] - 1] & -*MEMORY[0x277D85FA0]) + ((*MEMORY[0x277D85FA0] - 1 + a3) & -*MEMORY[0x277D85FA0]) + ((*MEMORY[0x277D85FA0] - 1 + a4) & -*MEMORY[0x277D85FA0]);
      v68 = v15;
      result = sub_22E2EFC10(v14, &v67, 0);
      if (result)
      {
        v21 = result;
        v22 = v14 + 32;
        do
        {
LABEL_6:
          v25 = *v21;
          v24 = v21[1];
          *v21 = 0;
          result = objc_msgSend_size(v24, v17, v18, v19, v20);
          v26 = 64 - __clz(result);
          if (!result)
          {
            v26 = 0;
          }

          v27 = (v22 + 8 * v26);
          v28 = v27;
          do
          {
            v28 = *v28;
            if (!v28)
            {
              result = malloc_type_malloc(0x18uLL, 0x102004062D53EE8uLL);
              v23 = v21[2];
              result[1] = v21;
              result[2] = v23;
              *result = *v27;
              *v27 = result;
              v21 = v25;
              if (!v25)
              {
                return result;
              }

              goto LABEL_6;
            }
          }

          while (v28[2] != v21[2]);
          *v21 = v28[1];
          v28[1] = v21;
          v21 = v25;
        }

        while (v25);
      }

      return result;
    }
  }

  v37 = MEMORY[0x277D85FA0];
  v38 = *MEMORY[0x277D85FA0];
  v67 = &a2[*MEMORY[0x277D85FA0] - 1] & -*MEMORY[0x277D85FA0];
  v68 = v38;
  v39 = sub_22E2EFC10(v14, &v67, 0);
  v40 = *v37;
  v67 = (a3 + *v37 - 1) & -*v37;
  v68 = v40;
  v41 = sub_22E2EFC10(v14, &v67, 0);
  v42 = *v37;
  v67 = (a4 + *v37 - 1) & -*v37;
  v68 = v42;
  result = sub_22E2EFC10(v14, &v67, 0);
  for (i = result; v39; v53[1] = v49)
  {
LABEL_20:
    v49 = v39;
    v39 = *v39;
    v50 = v49[1];
    *v49 = 0;
    result = objc_msgSend_size(v50, v43, v44, v45, v46);
    v51 = 64 - __clz(result);
    if (!result)
    {
      v51 = 0;
    }

    v52 = (v14 + 32 + 8 * v51);
    v53 = v52;
    do
    {
      v53 = *v53;
      if (!v53)
      {
        result = malloc_type_malloc(0x18uLL, 0x102004062D53EE8uLL);
        v48 = v49[2];
        result[1] = v49;
        result[2] = v48;
        *result = *v52;
        *v52 = result;
        if (!v39)
        {
          goto LABEL_26;
        }

        goto LABEL_20;
      }
    }

    while (v53[2] != v49[2]);
    *v49 = v53[1];
  }

LABEL_26:
  while (v41)
  {
LABEL_29:
    v55 = v41;
    v41 = *v41;
    v56 = v55[1];
    *v55 = 0;
    result = objc_msgSend_size(v56, v43, v44, v45, v46);
    v57 = 64 - __clz(result);
    if (!result)
    {
      v57 = 0;
    }

    v58 = (v14 + 32 + 8 * v57);
    v59 = v58;
    do
    {
      v59 = *v59;
      if (!v59)
      {
        result = malloc_type_malloc(0x18uLL, 0x102004062D53EE8uLL);
        v54 = v55[2];
        result[1] = v55;
        result[2] = v54;
        *result = *v58;
        *v58 = result;
        if (!v41)
        {
          goto LABEL_35;
        }

        goto LABEL_29;
      }
    }

    while (v59[2] != v55[2]);
    *v55 = v59[1];
    v59[1] = v55;
  }

LABEL_35:
  if (i)
  {
    v60 = v14 + 32;
    do
    {
LABEL_38:
      v62 = i;
      i = *i;
      v63 = v62[1];
      *v62 = 0;
      result = objc_msgSend_size(v63, v43, v44, v45, v46);
      v64 = 64 - __clz(result);
      if (!result)
      {
        v64 = 0;
      }

      v65 = (v60 + 8 * v64);
      v66 = v65;
      do
      {
        v66 = *v66;
        if (!v66)
        {
          result = malloc_type_malloc(0x18uLL, 0x102004062D53EE8uLL);
          v61 = v62[2];
          result[1] = v62;
          result[2] = v61;
          *result = *v65;
          *v65 = result;
          if (!i)
          {
            return result;
          }

          goto LABEL_38;
        }
      }

      while (v66[2] != v62[2]);
      *v62 = v66[1];
      v66[1] = v62;
    }

    while (i);
  }

  return result;
}

uint64_t MPSAutoCache::GetTempBuffer(MPSAutoCache *this, uint64_t a2, MTLSizeAndAlign *a3)
{
  v5 = *(this->var0 + 1);
  v14 = a2;
  if (a3 && a3->size + 1 >= 2 && a3->align)
  {
    *v13 = *a3;
  }

  else
  {
    v6 = (*(*v5 + 4))(v5);
    v7 = (*(*v5 + 5))(v5);
    v13[0] = objc_msgSend_heapBufferSizeAndAlignWithLength_options_(v5[2], v8, (a2 + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0], v7 | (16 * v6), v9);
    v13[1] = v10;
  }

  result = sub_22E2EF93C(this, v13, sub_22E35C744, &v14);
  if (!result)
  {
    v12 = MTLReportFailureTypeEnabled();
    result = 0;
    if (v12)
    {
      MTLReportFailure();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22E35C744(void *a1, void *a2, uint64_t *a3)
{
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = a1[2];
  }

  v5 = *a3;
  v6 = (*(*a1 + 32))(a1);
  v8 = (*(*a1 + 40))(a1) | (16 * v6);

  return objc_msgSend_newBufferWithLength_options_(v4, v7, v5, v8, v9);
}

uint64_t MPSAutoCache::UserCacheFrameForCommandBuffer(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_userDictionary(a1, a2, a3, a4, a5);
  v10 = objc_msgSend_objectForKey_(v6, v7, @"MPSCommandBufferImageCache", v8, v9);
  if (v10)
  {
    result = *(v10 + 568);
    if (result)
    {
      return result;
    }

LABEL_8:
    operator new();
  }

  os_unfair_lock_lock(&unk_280AFEB78);
  v15 = objc_msgSend_objectForKey_(v6, v12, @"MPSCommandBufferImageCache", v13, v14);
  if (!v15)
  {
    v16 = [MPSCommandBufferImageCache alloc];
    v20 = objc_msgSend_initWithCommandBuffer_(v16, v17, a1, v18, v19);
    v15 = v20;
    if (v20)
    {
    }
  }

  os_unfair_lock_unlock(&unk_280AFEB78);
  result = *(v15 + 568);
  if (!result)
  {
    goto LABEL_8;
  }

  return result;
}

void *MPSAutoCache::PrefetchHeapSize(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_userDictionary(a1, a2, a3, a4, a5);
  v11 = objc_msgSend_objectForKey_(v7, v8, @"MPSCommandBufferImageCache", v9, v10);
  v12 = v11;
  if (v11)
  {
    result = (*(**(v11 + 8) + 112))(*(v11 + 8));
    if (!result)
    {
      return result;
    }
  }

  else
  {
    os_unfair_lock_lock(&unk_280AFEB78);
    v12 = objc_msgSend_objectForKey_(v7, v14, @"MPSCommandBufferImageCache", v15, v16);
    if (!v12)
    {
      v17 = [MPSCommandBufferImageCache alloc];
      v21 = objc_msgSend_initWithCommandBuffer_(v17, v18, a1, v19, v20);
      v12 = v21;
      if (v21)
      {
      }
    }

    os_unfair_lock_unlock(&unk_280AFEB78);
    result = (*(**(v12 + 8) + 112))(*(v12 + 8));
    if (!result)
    {
      return result;
    }
  }

  v22 = *MEMORY[0x277D85FA0];
  v33[0] = a2;
  v33[1] = v22;
  result = sub_22E2EFC10(v12, v33, 0);
  if (result)
  {
    v27 = result;
    do
    {
LABEL_11:
      v28 = v27;
      v27 = *v27;
      v29 = v28[1];
      *v28 = 0;
      result = objc_msgSend_size(v29, v23, v24, v25, v26);
      v30 = 64 - __clz(result);
      if (!result)
      {
        v30 = 0;
      }

      v31 = (v12 + 32 + 8 * v30);
      v32 = v31;
      do
      {
        v32 = *v32;
        if (!v32)
        {
          result = malloc_type_malloc(0x18uLL, 0x102004062D53EE8uLL);
          result[2] = v28[2];
          *result = *v31;
          result[1] = v28;
          *v31 = result;
          if (!v27)
          {
            return result;
          }

          goto LABEL_11;
        }
      }

      while (v32[2] != v28[2]);
      *v28 = v32[1];
      v32[1] = v28;
    }

    while (v27);
  }

  return result;
}

void MPSAutoCache::SetHeapCacheDuration(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v8 = objc_msgSend_userDictionary(a1, a2, a3, a4, a5);
  v12 = objc_msgSend_objectForKey_(v8, v9, @"MPSCommandBufferImageCache", v10, v11);
  if (v12)
  {
LABEL_6:
    v24 = fmin(a6, 3600.0);
    if (v24 < 0.0)
    {
      v24 = 0.0;
    }

    *(v12 + 608) = (v24 * 1000000000.0);
    return;
  }

  os_unfair_lock_lock(&unk_280AFEB78);
  v16 = objc_msgSend_objectForKey_(v8, v13, @"MPSCommandBufferImageCache", v14, v15);
  if (v16)
  {
LABEL_5:
    v23 = v16;
    os_unfair_lock_unlock(&unk_280AFEB78);
    v12 = v23;
    goto LABEL_6;
  }

  v17 = [MPSCommandBufferImageCache alloc];
  v21 = objc_msgSend_initWithCommandBuffer_(v17, v18, a1, v19, v20);
  if (v21)
  {
    v22 = v21;

    v16 = v22;
    goto LABEL_5;
  }

  os_unfair_lock_unlock(&unk_280AFEB78);
}

uint64_t MPSGetTemporaryTextureFromCommandBufferCache(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_userDictionary(a1, a2, a3, a4, a5);
  v11 = objc_msgSend_objectForKey_(v7, v8, @"MPSCommandBufferImageCache", v9, v10);
  v16 = v11;
  if (v11)
  {
    if (!*(v11 + 568))
    {
      goto LABEL_8;
    }
  }

  else
  {
    os_unfair_lock_lock(&unk_280AFEB78);
    v16 = objc_msgSend_objectForKey_(v7, v17, @"MPSCommandBufferImageCache", v18, v19);
    if (!v16)
    {
      v20 = [MPSCommandBufferImageCache alloc];
      v24 = objc_msgSend_initWithCommandBuffer_(v20, v21, a1, v22, v23);
      v16 = v24;
      if (v24)
      {
      }
    }

    os_unfair_lock_unlock(&unk_280AFEB78);
    if (!*(v16 + 568))
    {
LABEL_8:
      if (*(v16 + 552))
      {
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }
      }

      operator new();
    }
  }

  v25 = objc_msgSend_pixelFormat(a2, v12, v13, v14, v15);
  PixelInfo = MPSDevice::GetPixelInfo(*(v16 + 8), v25, MPSImageFeatureChannelFormatNone);
  v44 = PixelInfo;
  if ((PixelInfo & 0x800000000000) == 0)
  {
    v40 = PixelInfo;
    v41 = MTLReportFailureTypeEnabled();
    PixelInfo = v40;
    if (v41)
    {
      v42 = v25;
      MTLReportFailure();
      PixelInfo = v40;
    }
  }

  if ((PixelInfo & 0x200000000000) == 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v43[0] = objc_msgSend_width(a2, v27, v28, v29, v30, v42);
  v43[1] = objc_msgSend_height(a2, v31, v32, v33, v34);
  v43[2] = objc_msgSend_depth(a2, v35, v36, v37, v38);
  return MPSAutoCache::GetTempTexture(*(v16 + 568), &v44, v43, a2, 0, 0, 1);
}

void MPSReturnTemporaryTextureToCommandBufferCache(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v7 = objc_msgSend_userDictionary(a1, a2, a3, a4, a5);
    v11 = objc_msgSend_objectForKey_(v7, v8, @"MPSCommandBufferImageCache", v9, v10);
    if (!v11)
    {
      os_unfair_lock_lock(&unk_280AFEB78);
      v15 = objc_msgSend_objectForKey_(v7, v12, @"MPSCommandBufferImageCache", v13, v14);
      if (!v15)
      {
        v16 = [MPSCommandBufferImageCache alloc];
        v15 = objc_msgSend_initWithCommandBuffer_(v16, v17, a1, v18, v19);
        if (v15)
        {
          v20 = v15;

          v15 = v20;
        }
      }

      v21 = v15;
      os_unfair_lock_unlock(&unk_280AFEB78);
      v11 = v21;
    }

    v22 = *(v11 + 568);

    MPSAutoCache::ReleaseTempResource(v22, a2);
  }
}

uint64_t MPSGetTemporaryBufferFromCommandBufferCache(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_userDictionary(a1, a2, a3, a4, a5);
  v11 = objc_msgSend_objectForKey_(v7, v8, @"MPSCommandBufferImageCache", v9, v10);
  v12 = v11;
  if (v11)
  {
    v13 = *(v11 + 568);
    if (!v13)
    {
      goto LABEL_8;
    }
  }

  else
  {
    os_unfair_lock_lock(&unk_280AFEB78);
    v12 = objc_msgSend_objectForKey_(v7, v14, @"MPSCommandBufferImageCache", v15, v16);
    if (!v12)
    {
      v17 = [MPSCommandBufferImageCache alloc];
      v21 = objc_msgSend_initWithCommandBuffer_(v17, v18, a1, v19, v20);
      v12 = v21;
      if (v21)
      {
      }
    }

    os_unfair_lock_unlock(&unk_280AFEB78);
    v13 = *(v12 + 568);
    if (!v13)
    {
LABEL_8:
      if (*(v12 + 552))
      {
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }
      }

      operator new();
    }
  }

  return MPSAutoCache::GetTempBuffer(v13, a2, 0);
}

void MPSReturnTemporaryBufferToCommandBufferCache(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v7 = objc_msgSend_userDictionary(a1, a2, a3, a4, a5);
    v11 = objc_msgSend_objectForKey_(v7, v8, @"MPSCommandBufferImageCache", v9, v10);
    if (!v11)
    {
      os_unfair_lock_lock(&unk_280AFEB78);
      v15 = objc_msgSend_objectForKey_(v7, v12, @"MPSCommandBufferImageCache", v13, v14);
      if (!v15)
      {
        v16 = [MPSCommandBufferImageCache alloc];
        v15 = objc_msgSend_initWithCommandBuffer_(v16, v17, a1, v18, v19);
        if (v15)
        {
          v20 = v15;

          v15 = v20;
        }
      }

      v21 = v15;
      os_unfair_lock_unlock(&unk_280AFEB78);
      v11 = v21;
    }

    v22 = *(v11 + 568);

    MPSAutoCache::ReleaseTempResource(v22, a2);
  }
}

void MPSAutoTexture::InitDeferredUsingTextureCache(uint64_t a1, char *a2, void *a3, MPSImageFeatureChannelFormat a4, uint64_t a5)
{
  v5 = a5;
  *(a1 + 56) = 1;
  v10 = objc_msgSend_userDictionary(a3, a2, a3, a4, a5);
  v14 = objc_msgSend_objectForKey_(v10, v11, @"MPSCommandBufferImageCache", v12, v13);
  if (v14)
  {
    *(a1 + 48) = v14;
    if (!*(v14 + 568))
    {
LABEL_8:
      if (*(v14 + 552))
      {
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }
      }

      operator new();
    }
  }

  else
  {
    os_unfair_lock_lock(&unk_280AFEB78);
    v18 = objc_msgSend_objectForKey_(v10, v15, @"MPSCommandBufferImageCache", v16, v17);
    if (!v18)
    {
      v19 = [MPSCommandBufferImageCache alloc];
      v23 = objc_msgSend_initWithCommandBuffer_(v19, v20, a3, v21, v22);
      if (!v23)
      {
        os_unfair_lock_unlock(&unk_280AFEB78);
        *(a1 + 48) = 0;
        return;
      }

      v24 = v23;

      v18 = v24;
    }

    v25 = v18;
    os_unfair_lock_unlock(&unk_280AFEB78);
    v14 = v25;
    *(a1 + 48) = v25;
    if (!*(v25 + 568))
    {
      goto LABEL_8;
    }
  }

  *(a1 + 40) = a2;
  *(a1 + 8) = xmmword_22E37B630;
  *(a1 + 57) = v5;
  v30 = objc_msgSend_device(a3, v26, v27, v28, v29);
  MPSDevice = MPSDevice::GetMPSDevice(v30);
  if (a2)
  {
    v36 = MPSDevice;
    v37 = objc_msgSend_pixelFormat(a2, v32, v33, v34, v35);
    *(a1 + 32) = MPSDevice::GetPixelInfo(v36, v37, a4);
  }
}

MPSAutoTexture *MPSAutoTexture::InitWithSubTexture(MPSAutoTexture *this, MPSAutoTexture *a2, _NSRange a3)
{
  this->_type = a2->_type & 1 | 2;
  this->var0._subTex.parent = a2;
  this->var0._subTex.subRangeStart = a3.location;
  this->var0._subTex.subRangeSize = a3.length;
  this->_twiddled = a2->_twiddled;
  this->_pixelInfo = a2->_pixelInfo;
  return this;
}

MPSPixelInfo MPSAutoTexture::InitDeferredUsingDevice(MPSAutoTexture *this, MTLTextureDescriptor *a2, MPSDevice *a3, MPSImageFeatureChannelFormat a4, unsigned __int8 a5)
{
  this->_type = 4;
  this->var0.var0.var0._tex.device = a3;
  this->var0._subTex.parent = a2;
  this->_twiddled = a5;
  this->_resourceSize = xmmword_22E37B630;
  v14 = objc_msgSend_pixelFormat(a2, v10, v11, v12, v13);
  result = MPSDevice::GetPixelInfo(a3, v14, a4);
  this->_pixelInfo = result;
  return result;
}

unint64_t *MPSAutoTexture::InitWithTexture(unint64_t *result, void *a2, MPSImageFeatureChannelFormat a3)
{
  if (a2)
  {
    v5 = result;
    atomic_store(a2, result);
    *(v5 + 56) = 4;
    if (objc_msgSend_buffer(a2, v6, v7, v8, v9))
    {
      *(v5 + 57) = 0;
      v14 = objc_msgSend_device(a2, v10, v11, v12, v13);
      result = MPSDevice::GetMPSDevice(v14);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      *(v5 + 57) = objc_msgSend_iosurface(a2, v10, v11, v12, v13) == 0;
      v25 = objc_msgSend_device(a2, v21, v22, v23, v24);
      result = MPSDevice::GetMPSDevice(v25);
      if (!result)
      {
        return result;
      }
    }

    v19 = result;
    v20 = objc_msgSend_pixelFormat(a2, v15, v16, v17, v18);
    result = MPSDevice::GetPixelInfo(v19, v20, a3);
    v5[4] = result;
  }

  return result;
}

uint64_t MPSAutoTexture::AllocateTexture(MPSAutoTexture *this, NSString *a2)
{
  v60 = 0x2B2B03342B2B0330;
  v61 = 0u;
  v62 = 0u;
  kdebug_trace();
  if (atomic_load_explicit(this, memory_order_acquire))
  {
    return kdebug_trace();
  }

  type = this->_type;
  if ((type - 2) < 2)
  {
    parent = this->var0._subTex.parent;
    explicit = atomic_load_explicit(parent, memory_order_acquire);
    if (!explicit)
    {
      MPSAutoTexture::AllocateTexture(parent, 0);
      explicit = atomic_load_explicit(parent, memory_order_acquire);
    }

    subRangeStart = this->var0._subTex.subRangeStart;
    if (this->var0._subTex.subRangeSize == 1)
    {
      TempTexture = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(explicit, v4, *&this->var0._subTex.parent->_pixelInfo & 0x3FFLL, 2, 0, 1, subRangeStart);
    }

    else
    {
      TempTexture = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(explicit, v4, *&this->var0._subTex.parent->_pixelInfo & 0x3FFLL, 3, 0, 1, subRangeStart);
    }

    goto LABEL_21;
  }

  if (type == 1)
  {
    if (!this->var0._subTex.parent && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v57 = objc_msgSend_width(this->var0._subTex.parent, v4, v5, v6, v7);
    v58 = objc_msgSend_height(this->var0._subTex.parent, v16, v17, v18, v19);
    v59 = objc_msgSend_depth(this->var0._subTex.parent, v20, v21, v22, v23);
    size = this->_resourceSize.size;
    if (size == -1)
    {
      size = MPSAutoTexture::GetResourceSize_Private(this, &rowBytes, v24, v25, v26);
    }

    else
    {
      align = this->_resourceSize.align;
      rowBytes = this->_rowBytes;
    }

    *&v55 = size;
    *(&v55 + 1) = align;
    TempTexture = MPSAutoCache::GetTempTexture(*(this->var0.var0.var0._tex.device + 71), &this->_pixelInfo, &v57, this->var0._subTex.parent, this->_twiddled != 0, &v55, 1);
    goto LABEL_21;
  }

  if (type == 4)
  {
    if (!this->var0._subTex.parent && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    device = this->var0.var0.var0._tex.device;
    if (device)
    {
      v11 = this->var0._subTex.parent;
      if (v11)
      {
        if (!this->_twiddled)
        {
          *&v55 = 0;
          if (sub_22E35D888(device, v11, v5, v6, v7))
          {
            v57 = objc_msgSend_width(this->var0._subTex.parent, v11, v31, v6, v7);
            v58 = objc_msgSend_height(this->var0._subTex.parent, v32, v33, v34, v35);
            v59 = objc_msgSend_depth(this->var0._subTex.parent, v36, v37, v38, v39);
            v40 = MPSGetLinearTextureSize2D(&this->_pixelInfo, &v57, &v55);
            v41 = *(this->var0.var0.var0._tex.device + 2);
            v46 = objc_msgSend_resourceOptions(this->var0._subTex.parent, v42, v43, v44, v45);
            v50 = objc_msgSend_newBufferWithLength_options_(v41, v47, v40, v46, v48);
            if (v50)
            {
              if (!this->var0._subTex.parent && MTLReportFailureTypeEnabled())
              {
                MTLReportFailure();
              }

              v51 = this->var0._subTex.parent;
              v52 = v55;
              v53 = objc_msgSend_height(v51, v11, v49, v6, v7);
              v29 = objc_msgSend_newLinearTextureWithDescriptor_offset_bytesPerRow_bytesPerImage_(v50, v54, v51, 0, v52, v55 * v53);

              if (v29)
              {
LABEL_22:
                objc_msgSend_setLabel_(v29, v11, a2, v6, v7);
                v30 = 0;
                atomic_compare_exchange_strong_explicit(this, &v30, v29, memory_order_release, memory_order_relaxed);
                if (v30)
                {
                  if (this->_type)
                  {
                    MPSAutoCache::ReleaseTempResource(*(this->var0.var0.var0._tex.device + 71), v29);
                  }

                  else
                  {
                  }
                }

                return kdebug_trace();
              }
            }
          }
        }

        TempTexture = objc_msgSend_newTextureWithDescriptor_(*(this->var0.var0.var0._tex.device + 2), v11, this->var0._subTex.parent, v6, v7);
LABEL_21:
        v29 = TempTexture;
        if (!TempTexture)
        {
          return kdebug_trace();
        }

        goto LABEL_22;
      }
    }
  }

  return kdebug_trace();
}

void sub_22E35D7A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_22E35D8FC(va);
  _Unwind_Resume(a1);
}

void sub_22E35D7BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_22E35D8FC(va);
  _Unwind_Resume(a1);
}

void sub_22E35D7D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_22E35D8FC(va);
  _Unwind_Resume(a1);
}

void sub_22E35D7E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_22E35D8FC(va);
  _Unwind_Resume(a1);
}

void sub_22E35D7F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_22E35D8FC(va);
  _Unwind_Resume(a1);
}

void sub_22E35D80C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_22E35D8FC(va);
  _Unwind_Resume(a1);
}

void sub_22E35D820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_22E35D8FC(va);
  _Unwind_Resume(a1);
}

void sub_22E35D834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_22E35D8FC(va);
  _Unwind_Resume(a1);
}

void sub_22E35D848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_22E35D8FC(va);
  _Unwind_Resume(a1);
}

void sub_22E35D85C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_22E35D8FC(va);
  _Unwind_Resume(a1);
}

void sub_22E35D870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_22E35D8FC(va);
  _Unwind_Resume(a1);
}

BOOL sub_22E35D888(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*(a1 + 1477) & 4) == 0 && (objc_msgSend_usage(a2, a2, a3, a4, a5) & 2) != 0)
  {
    return 0;
  }

  v7 = objc_msgSend_pixelFormat(a2, a2, a3, a4, a5);
  return (MPSDevice::GetPixelInfo(a1, v7, MPSImageFeatureChannelFormatNone) & 0x1000000000000) == 0 && (objc_msgSend_textureType(a2, v8, v9, v10, v11) & 0xFFFFFFFFFFFFFFFDLL) == 0;
}

void MPSAutoTexture::~MPSAutoTexture(MPSAutoTexture *this)
{
  explicit = atomic_load_explicit(this, memory_order_acquire);
  atomic_store(0, this);
  type = this->_type;
  if ((type - 2) < 2)
  {
    goto LABEL_5;
  }

  if (type == 1)
  {

    this->var0._subTex.parent = 0;
    return;
  }

  if (type == 4)
  {

    this->var0._subTex.parent = 0;
LABEL_5:
  }
}

{
  explicit = atomic_load_explicit(this, memory_order_acquire);
  atomic_store(0, this);
  type = this->_type;
  if ((type - 2) < 2)
  {
    goto LABEL_5;
  }

  if (type == 1)
  {

    this->var0._subTex.parent = 0;
    return;
  }

  if (type == 4)
  {

    this->var0._subTex.parent = 0;
LABEL_5:
  }
}

void MPSAutoTexture::ReleaseTemporaryTexture(MPSAutoTexture *this)
{
  if ((this->_type & 1) == 0)
  {
    v4 = this;
    v5 = MTLReportFailureTypeEnabled();
    this = v4;
    if (v5)
    {
      MTLReportFailure();
      this = v4;
    }
  }

  v1 = atomic_exchange_explicit(this, 0, memory_order_acquire);
  if (v1)
  {
    type = this->_type;
    if (type == 3)
    {

      MEMORY[0x2821F96F8]();
    }

    else if (type == 1)
    {
      v3 = *(this->var0.var0.var0._tex.device + 71);

      MPSAutoCache::ReleaseTempResource(v3, v1);
    }
  }
}

uint64_t MPSAutoTexture::GetDevice(MPSAutoTexture *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  explicit = atomic_load_explicit(this, memory_order_acquire);
  for (i = this->_type; (i & 2) != 0; i = this->_type)
  {
    this = this->var0._subTex.parent;
    explicit = atomic_load_explicit(this, memory_order_acquire);
  }

  if (explicit)
  {
    v7 = atomic_load(this);
    return objc_msgSend_device(v7, a2, a3, a4, a5);
  }

  else
  {
    device = this->var0.var0.var0._tex.device;
    if (i == 1)
    {
      return *(*(device + 1) + 16);
    }

    else
    {
      return *(device + 2);
    }
  }
}

uint64_t MPSAutoTexture::Print(MPSAutoTexture *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  explicit = atomic_load_explicit(this, memory_order_acquire);
  if (explicit)
  {

    return objc_msgSend_debugDescription(explicit, a2, a3, a4, a5);
  }

  else
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = atomic_load_explicit(this, memory_order_acquire);
    type = this->_type;
    if ((type & 2) != 0)
    {
      parent = this;
      do
      {
        parent = parent->var0._subTex.parent;
        v9 = atomic_load_explicit(parent, memory_order_acquire);
        type = parent->_type;
      }

      while ((type & 2) != 0);
    }

    else
    {
      parent = this;
    }

    if (v9)
    {
      v12 = atomic_load(parent);
      v13 = objc_msgSend_device(v12, a2, a3, a4, a5);
    }

    else
    {
      device = parent->var0.var0.var0._tex.device;
      if (type == 1)
      {
        device = *(device + 1);
      }

      v13 = *(device + 2);
    }

    v15 = objc_msgSend_name(v13, a2, a3, a4, a5);
    v20 = objc_msgSend_debugDescription(this->var0._subTex.parent, v16, v17, v18, v19);
    return objc_msgSend_stringWithFormat_(v8, v21, @"(texture not yet allocated)\n\tdevice: %@\n\tdescriptor:  %@", v22, v23, v15, v20);
  }
}

unint64_t MPSAutoTexture::GetResourceSize_Private(MPSAutoTexture *this, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  p_resourceSize = &this->_resourceSize;
  size = this->_resourceSize.size;
  if (size != -1)
  {
    return size;
  }

  type = this->_type;
  if (type > 1)
  {
    if (type - 2 < 2)
    {
      size = 0;
      p_resourceSize->size = 0;
      this->_resourceSize.align = 0;
      this->_rowBytes = 0;
      goto LABEL_12;
    }

    if (type != 4)
    {
      goto LABEL_12;
    }

    p_resourceSize->size = 0;
    this->_resourceSize.align = 0;
    size = this->var0.var0.var0._tex.device;
    if (!size)
    {
      goto LABEL_12;
    }

    parent = this->var0._subTex.parent;
    v9 = this->_twiddled != 0;
    p_rowBytes = &this->_rowBytes;
    v11 = this;
    device = this->var0.var0.var0._tex.device;
    v13 = a2;
    v14 = parent;
    goto LABEL_11;
  }

  if (this->_type)
  {
    if (type != 1)
    {
      goto LABEL_12;
    }

    v8 = this->var0._subTex.parent;
    v9 = this->_twiddled != 0;
    p_rowBytes = &this->_rowBytes;
    v11 = this;
    device = *(this->var0.var0.var0._tex.device + 1);
    v13 = a2;
    v14 = v8;
LABEL_11:
    size = sub_22E2EF74C(device, v14, p_rowBytes, v9, a5);
    this = v11;
    v17 = v16;
    a2 = v13;
    v11->_resourceSize.size = size;
    v11->_resourceSize.align = v17;
LABEL_12:
    if (a2)
    {
      *a2 = this->_rowBytes;
      return this->_resourceSize.size;
    }

    return size;
  }

  this->_rowBytes = 0;
  return 0;
}

uint64_t MPSAutoBuffer::AllocateBuffer(MPSAutoBuffer *this, NSString *a2)
{
  v31 = 0x2B2B03342B2B0330;
  v32 = 0u;
  v33 = 0u;
  kdebug_trace();
  if (!atomic_load_explicit(this, memory_order_acquire))
  {
    if (!this->_requestedSize && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (this->_cache)
    {
      size = this->_resourceSize.size;
      if (size == -1)
      {
        size = this->_device;
        if (size)
        {
          MPSDevice = MPSDevice::GetMPSDevice(size);
          if (this->_device)
          {
            v24 = MPSDevice;
            requestedSize = this->_requestedSize;
            v26 = (*(*MPSDevice + 32))(MPSDevice);
            v27 = (*(*v24 + 5))(v24);
            size = objc_msgSend_heapBufferSizeAndAlignWithLength_options_(v24[2], v28, (requestedSize + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0], v27 | (16 * v26), v29);
            this->_resourceSize.size = size;
            this->_resourceSize.align = align;
          }

          else
          {
            size = 0;
            align = 0;
          }
        }

        else
        {
          align = 0;
        }
      }

      else
      {
        align = this->_resourceSize.align;
      }

      v30.size = size;
      v30.align = align;
      TempBuffer = MPSAutoCache::GetTempBuffer(this->_cache->_userCacheFrame, this->_requestedSize, &v30);
    }

    else
    {
      device = this->_device;
      if (!device)
      {
        return kdebug_trace();
      }

      v15 = MPSDevice::GetMPSDevice(device);
      v16 = v15;
      if (!v15)
      {
        return kdebug_trace();
      }

      v18 = this->_requestedSize;
      v17 = this->_device;
      v19 = (*(*v15 + 24))(v15);
      v20 = (*(*v16 + 40))(v16);
      TempBuffer = objc_msgSend_newBufferWithLength_options_(v17, v21, v18, v20 | (16 * v19), v22);
    }

    v11 = TempBuffer;
    if (TempBuffer)
    {
      objc_msgSend_setLabel_(TempBuffer, v8, a2, v9, v10);
      v12 = 0;
      atomic_compare_exchange_strong_explicit(this, &v12, v11, memory_order_release, memory_order_relaxed);
      if (v12)
      {
        cache = this->_cache;
        if (cache)
        {
          MPSAutoCache::ReleaseTempResource(&cache->_userCacheFrame->var0, v11);
        }

        else
        {
        }
      }
    }
  }

  return kdebug_trace();
}

void sub_22E35DF74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_22E35D8FC(va);
  _Unwind_Resume(a1);
}

void sub_22E35DF88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_22E35D8FC(va);
  _Unwind_Resume(a1);
}

void sub_22E35DF9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_22E35D8FC(va);
  _Unwind_Resume(a1);
}

void sub_22E35DFB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_22E35D8FC(va);
  _Unwind_Resume(a1);
}

void *MPSAutoBuffer::GetResourceSize_Private(MPSAutoBuffer *this)
{
  result = this->_resourceSize.size;
  if (result == -1)
  {
    result = this->_device;
    if (result)
    {
      v3 = this;
      MPSDevice = MPSDevice::GetMPSDevice(result);
      if (v3->_device)
      {
        requestedSize = v3->_requestedSize;
        v6 = v3;
        v7 = MPSDevice;
        v8 = (*(*MPSDevice + 32))();
        v9 = (*(*v7 + 5))(v7);
        result = objc_msgSend_heapBufferSizeAndAlignWithLength_options_(v7[2], v10, (requestedSize + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0], v9 | (16 * v8), v11);
        v6->_resourceSize.size = result;
        v6->_resourceSize.align = v12;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

double MPSAutoBuffer::InitDeferredUsingDevice(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  result = NAN;
  *(a1 + 32) = xmmword_22E37B630;
  return result;
}

void MPSAutoBuffer::InitDeferredUsingTextureCache(uint64_t a1, const char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_msgSend_userDictionary(a3, a2, a3, a4, a5);
  v12 = objc_msgSend_objectForKey_(v8, v9, @"MPSCommandBufferImageCache", v10, v11);
  if (v12)
  {
    *(a1 + 24) = v12;
    if (!*(v12 + 568))
    {
LABEL_8:
      if (*(v12 + 552))
      {
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }
      }

      operator new();
    }

    goto LABEL_10;
  }

  os_unfair_lock_lock(&unk_280AFEB78);
  v20 = objc_msgSend_objectForKey_(v8, v17, @"MPSCommandBufferImageCache", v18, v19);
  if (v20)
  {
LABEL_7:
    v27 = v20;
    os_unfair_lock_unlock(&unk_280AFEB78);
    v12 = v27;
    *(a1 + 24) = v27;
    if (!*(v27 + 568))
    {
      goto LABEL_8;
    }

LABEL_10:
    *(a1 + 8) = a2;
    *(a1 + 16) = objc_msgSend_device(a3, v13, v14, v15, v16);
    *(a1 + 32) = xmmword_22E37B630;
    return;
  }

  v21 = [MPSCommandBufferImageCache alloc];
  v25 = objc_msgSend_initWithCommandBuffer_(v21, v22, a3, v23, v24);
  if (v25)
  {
    v26 = v25;

    v20 = v26;
    goto LABEL_7;
  }

  os_unfair_lock_unlock(&unk_280AFEB78);
  *(a1 + 24) = 0;
}

double MPSAutoBuffer::InitWithBuffer(unint64_t *a1, void *a2)
{
  atomic_load(a1);
  if (atomic_load(a1))
  {
    v15 = a1;
    v16 = MTLReportFailureTypeEnabled();
    a1 = v15;
    if (v16)
    {
      MTLReportFailure();
      a1 = v15;
    }
  }

  if (a2)
  {
    a1[3] = 0;
    v4 = a1;
    v5 = a2;
    atomic_store(a2, v4);
    v4[2] = objc_msgSend_device(a2, v6, v7, v8, v9);
    v4[1] = objc_msgSend_length(a2, v10, v11, v12, v13);
    result = NAN;
    *(v4 + 2) = xmmword_22E37B630;
  }

  return result;
}

void MPSAutoBuffer::ReleaseTemporaryBuffer(MPSAutoBuffer *this)
{
  if (!this->_cache)
  {
    v3 = this;
    v4 = MTLReportFailureTypeEnabled();
    this = v3;
    if (v4)
    {
      MTLReportFailure();
      this = v3;
    }
  }

  explicit = atomic_load_explicit(this, memory_order_acquire);
  if (explicit)
  {
    userCacheFrame = this->_cache->_userCacheFrame;

    MPSAutoCache::ReleaseTempResource(userCacheFrame, explicit);
  }
}

void MPSAutoBuffer::~MPSAutoBuffer(MPSAutoBuffer *this)
{
  explicit = atomic_load_explicit(this, memory_order_acquire);
  if (explicit)
  {
    if (!this->_cache)
    {
    }

    atomic_store(0, this);
  }
}

{
  explicit = atomic_load_explicit(this, memory_order_acquire);
  if (explicit)
  {
    if (!this->_cache)
    {
    }

    atomic_store(0, this);
  }
}

uint64_t MPSAutoBuffer::Print(MPSAutoBuffer *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  explicit = atomic_load_explicit(this, memory_order_acquire);
  if (explicit)
  {

    return objc_msgSend_debugDescription(explicit, a2, a3, a4, a5);
  }

  else
  {
    v8 = MEMORY[0x277CCACA8];
    requestedSize = this->_requestedSize;
    cache = this->_cache;
    if (cache)
    {
      device = objc_msgSend_device(cache->_cmdBuffer, a2, a3, a4, a5);
    }

    else
    {
      device = this->_device;
    }

    return objc_msgSend_stringWithFormat_(v8, a2, @"buffer (not yet allocated)\n\t\tsize = %lu\n\t\tdevice: %p", a4, a5, requestedSize, device);
  }
}

void MPSDecrementReadCount(MPSTemporaryImage *parent)
{
  if (parent->super._texture._type)
  {
    MPSDecrementReadCount(parent);
  }
}

{
  while (1)
  {
    if (!parent->_readCount && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if ((parent->super._texture._type & 1) == 0 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    readCount = parent->_readCount;
    if (!readCount)
    {
      break;
    }

    v3 = readCount - 1;
    parent->_readCount = v3;
    if (!v3)
    {
      MPSAutoTexture::ReleaseTemporaryTexture(&parent->super._texture);
      parent = parent->super._parent;
      if (parent)
      {
        continue;
      }
    }

    return;
  }

  if (MTLReportFailureTypeEnabled())
  {
    objc_msgSend_debugDescription(parent, v4, v5, v6, v7);
    MTLReportFailure();
  }
}

const char *MPSImageFeatureChannelFormatGetName(unint64_t a1)
{
  if (a1 <= 5)
  {
    return off_2787BF620[a1];
  }

  else
  {
    return "<invalid format";
  }
}

uint64_t sub_22E35F698(uint64_t a1, char a2, unint64_t a3, uint64_t a4, void *a5)
{
  v5 = a5[10];
  if ((v5 & 0x800000000000) == 0)
  {
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_40;
    }

    return -24;
  }

  if ((v5 & 0x40000000000) != 0)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      return -24;
    }

LABEL_38:
    MTLReportFailure();
    return -24;
  }

  if ((a2 & 2) != 0 && (v5 & 0x200000000000) == 0)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      return -24;
    }

    goto LABEL_38;
  }

  if (!a5[2])
  {
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_40;
    }

    return -24;
  }

  v6 = a5[7];
  if (a5[5] == 1)
  {
    v6 *= (a5[4] + 3) >> 2;
  }

  if (v6 > 1 << (*(a4 + 1486) & 0xF))
  {
    if (!MTLReportFailureTypeEnabled())
    {
      return -24;
    }

    goto LABEL_33;
  }

  v7 = BYTE3(v5) & 0xF;
  if ((v7 - 1) < 2)
  {
    if (v7 == a3)
    {
      return 0;
    }

    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_14;
    }

    return -23;
  }

  if (v7 == 4)
  {
    if (a3 > 2)
    {
      v10 = a1 - 70;
      if (a3 <= 4)
      {
        if (v10 <= 0x37 && ((1 << v10) & 0x80210000000C03) != 0)
        {
          return 0;
        }

        if (MTLReportFailureTypeEnabled())
        {
LABEL_40:
          v13 = objc_opt_class();
          NSStringFromClass(v13);
          MTLReportFailure();
          return -24;
        }

        return -24;
      }

      if (v10 <= 0x37)
      {
        if (((1 << v10) & 0x80210000000003) != 0)
        {
          return 0;
        }

        if (((1 << v10) & 0xC00) != 0)
        {
          if (MTLReportFailureTypeEnabled())
          {
            goto LABEL_40;
          }

          return -24;
        }
      }

      if (!MTLReportFailureTypeEnabled())
      {
        return -24;
      }

      v12 = objc_opt_class();
      NSStringFromClass(v12);
LABEL_33:
      MTLReportFailure();
      return -24;
    }

    if (MTLReportFailureTypeEnabled())
    {
      v14 = objc_opt_class();
      NSStringFromClass(v14);
      MTLReportFailure();
    }

    return -23;
  }

  if (!v7)
  {
    if (a3 != 1)
    {
      if (MTLReportFailureTypeEnabled())
      {
LABEL_14:
        v8 = objc_opt_class();
        NSStringFromClass(v8);
        MTLReportFailure();
        return -23;
      }

      return -23;
    }

    return 0;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v11 = objc_opt_class();
    NSStringFromClass(v11);
    MTLReportFailure();
  }

  return -22;
}

uint64_t sub_22E360548(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  for (i = atomic_load_explicit(a1, memory_order_acquire); (*(a1 + 56) & 2) != 0; i = atomic_load_explicit(a1, memory_order_acquire))
  {
    a1 = *(a1 + 40);
  }

  if (i)
  {
    return objc_msgSend_width(i, a2, a3, a4, a5);
  }

  else
  {
    return objc_msgSend_width(*(a1 + 40), a2, a3, a4, a5);
  }
}

uint64_t sub_22E360578(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  for (i = atomic_load_explicit(a1, memory_order_acquire); (*(a1 + 56) & 2) != 0; i = atomic_load_explicit(a1, memory_order_acquire))
  {
    a1 = *(a1 + 40);
  }

  if (i)
  {
    return objc_msgSend_height(i, a2, a3, a4, a5);
  }

  else
  {
    return objc_msgSend_height(*(a1 + 40), a2, a3, a4, a5);
  }
}

void *sub_22E361060()
{
  if (qword_280AFED88 == -1)
  {
    v0 = qword_280AFED80;
    if (qword_280AFED80)
    {
      goto LABEL_3;
    }

LABEL_6:
    off_280AFEC28 = 0;
    goto LABEL_7;
  }

  dispatch_once(&qword_280AFED88, &unk_2842174A0);
  v0 = qword_280AFED80;
  if (!qword_280AFED80)
  {
    goto LABEL_6;
  }

LABEL_3:
  off_280AFEC28 = dlsym(v0, "vImageBuffer_Init");
  if (qword_280AFED88 != -1)
  {
    dispatch_once(&qword_280AFED88, &unk_2842174A0);
  }

LABEL_7:
  v1 = qword_280AFED80;
  if (qword_280AFED80)
  {
    v1 = dlsym(qword_280AFED80, "vImageCreateCGImageFromBuffer");
  }

  off_280AFEC30 = v1;
  if (qword_27DA622C8 == -1)
  {
    v2 = qword_27DA622D0;
    if (qword_27DA622D0)
    {
      goto LABEL_11;
    }

LABEL_14:
    off_280AFEC38 = 0;
    goto LABEL_15;
  }

  dispatch_once(&qword_27DA622C8, &unk_284217400);
  v2 = qword_27DA622D0;
  if (!qword_27DA622D0)
  {
    goto LABEL_14;
  }

LABEL_11:
  off_280AFEC38 = dlsym(v2, "CGColorSpaceRelease");
  if (qword_27DA622C8 != -1)
  {
    dispatch_once(&qword_27DA622C8, &unk_284217400);
  }

LABEL_15:
  if (qword_27DA622D0)
  {
    off_280AFEC40 = dlsym(qword_27DA622D0, "CGImageRelease");
    if (qword_27DA622C8 != -1)
    {
      dispatch_once(&qword_27DA622C8, &unk_284217400);
    }
  }

  else
  {
    off_280AFEC40 = 0;
  }

  result = qword_27DA622D0;
  if (qword_27DA622D0)
  {
    result = dlsym(qword_27DA622D0, "CGColorSpaceCreateDeviceGray");
  }

  off_280AFEC48 = result;
  return result;
}

uint64_t sub_22E3612EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
    ;
  }

  while ((*(a1 + 56) & 2) != 0)
  {
    a1 = *(a1 + 40);
  }

  explicit = atomic_load_explicit(a1, memory_order_acquire);
  v6 = atomic_load_explicit(a2, memory_order_acquire);
  if (explicit)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return 0;
  }

  if (explicit == v6)
  {
    return 1;
  }

  return objc_msgSend_isEqual_(explicit, a2, v6, a4, a5);
}

NSUInteger MPSImageBatchIncrementReadCount(MPSImageBatch *batch, NSInteger amount)
{
  v7 = objc_msgSend_count(batch, amount, v2, v3, v4);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = malloc_type_malloc(8 * v7, 0x80040B8603338uLL);
  objc_msgSend_getObjects_range_(batch, v10, v9, 0, v8);
  os_unfair_lock_lock(&unk_27DA622B8);
  for (i = 0; i != v8; ++i)
  {
    v12 = v9[i];
    if (v12 && (*(v12 + 152) & 1) != 0)
    {
      *(v12 + 160) = 0;
    }
  }

  v13 = 0;
  if (amount < 0)
  {
    v19 = v9;
    do
    {
      v20 = *v19;
      if (*v19)
      {
        if ((*(v20 + 152) & 1) != 0 && (*(v20 + 160) & 1) == 0)
        {
          *(v20 + 160) = 1;
          ++v13;
          v21 = *(v20 + 168);
          if (v21)
          {
            if (v21 < -amount && MTLReportFailureTypeEnabled())
            {
              objc_msgSend_debugDescription(v20, v23, v24, v25, v26);
              MTLReportFailure();
            }

            *(v20 + 168) = v21 + amount;
            if (!(v21 + amount))
            {
              MPSAutoTexture::ReleaseTemporaryTexture((v20 + 96));
              v22 = *(v20 + 88);
              if (v22)
              {
                MPSDecrementReadCount(v22);
              }
            }
          }
        }
      }

      ++v19;
      --v8;
    }

    while (v8);
  }

  else
  {
    v14 = v9;
    do
    {
      v15 = *v14;
      if (*v14)
      {
        if ((*(v15 + 152) & 1) != 0 && (*(v15 + 160) & 1) == 0)
        {
          *(v15 + 160) = 1;
          ++v13;
          v16 = *(v15 + 168);
          if (v16)
          {
            v17 = v16 + amount;
            *(v15 + 168) = v17;
            if (!v17)
            {
              MPSAutoTexture::ReleaseTemporaryTexture((v15 + 96));
              v18 = *(v15 + 88);
              if (v18)
              {
                MPSDecrementReadCount(v18);
              }
            }
          }
        }
      }

      ++v14;
      --v8;
    }

    while (v8);
  }

  os_unfair_lock_unlock(&unk_27DA622B8);
  free(v9);
  return v13;
}

void MPSImageBatchSynchronize(MPSImageBatch *batch, id cmdBuf)
{
  v7 = objc_msgSend_count(batch, cmdBuf, v2, v3, v4);
  if (v7)
  {
    v8 = v7;
    v9 = malloc_type_malloc(8 * v7, 0x80040B8603338uLL);
    objc_msgSend_getObjects_range_(batch, v10, v9, 0, v8);
    os_unfair_lock_lock(&unk_27DA622B8);
    for (i = 0; i != v8; ++i)
    {
      v12 = v9[i];
      if (v12)
      {
        if ((*(v12 + 152) & 1) != 0 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        *(v12 + 160) = 0;
      }
    }

    for (j = 0; j != v8; ++j)
    {
      v17 = objc_autoreleasePoolPush();
      v18 = v9[j];
      if (v18 && (*(v18 + 160) & 1) == 0)
      {
        objc_msgSend_synchronizeOnCommandBuffer_(v9[j], v14, cmdBuf, v15, v16);
        *(v18 + 160) = 1;
      }

      objc_autoreleasePoolPop(v17);
    }

    os_unfair_lock_unlock(&unk_27DA622B8);

    free(v9);
  }
}

NSUInteger MPSImageBatchResourceSize(MPSImageBatch *batch)
{
  v6 = objc_msgSend_count(batch, v1, v2, v3, v4);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = malloc_type_malloc(8 * v6, 0x80040B8603338uLL);
  objc_msgSend_getObjects_range_(batch, v9, v8, 0, v7);
  os_unfair_lock_lock(&unk_27DA622B8);
  for (i = 0; i != v7; ++i)
  {
    v11 = v8[i];
    if (v11)
    {
      *(v11 + 160) = 0;
    }
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  do
  {
    v19 = objc_autoreleasePoolPush();
    v20 = v8[v12];
    if (v20)
    {
      if ((v20[160] & 1) == 0)
      {
        v20[160] = 1;
        v21 = objc_msgSend_resourceSize(v20, v15, v16, v17, v18);
        v14 += objc_msgSend_resourceSize(v20, v22, v23, v24, v25);
        if (!v21)
        {
          v33 = objc_msgSend_parent(v20, v26, v27, v28, v29);
          if (v33)
          {
            if (!v13)
            {
              v13 = objc_opt_new();
            }

            objc_msgSend_addObject_(v13, v30, v33, v31, v32);
          }
        }
      }
    }

    objc_autoreleasePoolPop(v19);
    ++v12;
  }

  while (v7 != v12);
  os_unfair_lock_unlock(&unk_27DA622B8);
  if (v13)
  {
    v34 = objc_autoreleasePoolPush();
    v39 = objc_msgSend_allObjects(v13, v35, v36, v37, v38);
    v14 += MPSImageBatchResourceSize(v39);

    objc_autoreleasePoolPop(v34);
  }

  free(v8);
  return v14;
}

NSInteger MPSImageBatchIterate(MPSImageBatch *batch, void *iteratorBlock)
{
  v7 = objc_msgSend_count(batch, iteratorBlock, v2, v3, v4);
  if (!v7)
  {
    return 0x8000000000000000;
  }

  v8 = v7;
  v9 = malloc_type_malloc(8 * v7, 0x80040B8603338uLL);
  objc_msgSend_getObjects_range_(batch, v10, v9, 0, v8);
  os_unfair_lock_lock(&unk_27DA622B8);
  for (i = 0; i != v8; ++i)
  {
    v12 = v9[i];
    if (v12)
    {
      *(v12 + 160) = 0;
    }
  }

  v13 = 0;
  v14 = 0;
  do
  {
    v15 = objc_autoreleasePoolPush();
    v16 = v9[v13];
    if (v16 && (*(v16 + 160) & 1) == 0)
    {
      v18 = v15;
      v14 = (*(iteratorBlock + 2))(iteratorBlock, v9[v13], v13);
      v15 = v18;
      if (v14 == 0x8000000000000000)
      {
        v17 = 0;
        *(v16 + 160) = 1;
        v14 = 0x8000000000000000;
      }

      else
      {
        v17 = 5;
      }
    }

    else
    {
      v17 = 7;
    }

    objc_autoreleasePoolPop(v15);
    if (v17 != 7 && v17)
    {
      break;
    }

    ++v13;
  }

  while (v8 != v13);
  os_unfair_lock_unlock(&unk_27DA622B8);
  free(v9);
  return v14;
}

MPSImageType MPSGetImageType(MPSImage *image)
{
  explicit = atomic_load_explicit(&image->_texture, memory_order_acquire);
  if ((image->_texture._type & 2) != 0)
  {
    if (image->_texture.var0._subTex.subRangeSize < 2)
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }

    v8 = image->_featureChannelFormat - 1;
    if (v8 > 4)
    {
LABEL_5:
      v9 = MPSImageType2d;
      goto LABEL_11;
    }
  }

  else
  {
    if (!explicit)
    {
      explicit = image->_texture.var0._subTex.parent;
    }

    v7 = objc_msgSend_textureType(explicit, v1, v2, v3, v4);
    v8 = image->_featureChannelFormat - 1;
    if (v8 > 4)
    {
      goto LABEL_5;
    }
  }

  v9 = dword_22E37B738[v8];
LABEL_11:
  if (v7 == 3)
  {
    ++v9;
  }

  if (image->_numberOfImages > 1)
  {
    v9 |= 2u;
  }

  if ((*(&image->_pixelInfo + 3) & 3) != 0)
  {
    return v9 | 4;
  }

  else
  {
    return v9;
  }
}

void *sub_22E366D08()
{
  if (qword_280AFED88 == -1)
  {
    v0 = qword_280AFED80;
    if (qword_280AFED80)
    {
      goto LABEL_3;
    }

LABEL_6:
    off_280AFEC60 = 0;
    goto LABEL_7;
  }

  dispatch_once(&qword_280AFED88, &unk_2842174A0);
  v0 = qword_280AFED80;
  if (!qword_280AFED80)
  {
    goto LABEL_6;
  }

LABEL_3:
  off_280AFEC60 = dlsym(v0, "vImageConvert_ARGB8888toPlanar8");
  if (qword_280AFED88 != -1)
  {
    dispatch_once(&qword_280AFED88, &unk_2842174A0);
  }

LABEL_7:
  if (qword_280AFED80)
  {
    off_280AFEC68 = dlsym(qword_280AFED80, "vImageConvert_ARGB16UtoPlanar16U");
    if (qword_280AFED88 != -1)
    {
      dispatch_once(&qword_280AFED88, &unk_2842174A0);
    }
  }

  else
  {
    off_280AFEC68 = 0;
  }

  result = qword_280AFED80;
  if (qword_280AFED80)
  {
    result = dlsym(qword_280AFED80, "vImageConvert_ARGBFFFFtoPlanarF");
  }

  off_280AFEC70 = result;
  return result;
}

void *sub_22E366E04()
{
  if (qword_280AFED88 == -1)
  {
    v0 = qword_280AFED80;
    if (qword_280AFED80)
    {
      goto LABEL_3;
    }

LABEL_6:
    off_280AFEC78 = 0;
    goto LABEL_7;
  }

  dispatch_once(&qword_280AFED88, &unk_2842174A0);
  v0 = qword_280AFED80;
  if (!qword_280AFED80)
  {
    goto LABEL_6;
  }

LABEL_3:
  off_280AFEC78 = dlsym(v0, "vImageConvert_Planar8toARGB8888");
  if (qword_280AFED88 != -1)
  {
    dispatch_once(&qword_280AFED88, &unk_2842174A0);
  }

LABEL_7:
  if (qword_280AFED80)
  {
    off_280AFEC80 = dlsym(qword_280AFED80, "vImageConvert_Planar16UtoARGB16U");
    if (qword_280AFED88 != -1)
    {
      dispatch_once(&qword_280AFED88, &unk_2842174A0);
    }
  }

  else
  {
    off_280AFEC80 = 0;
  }

  result = qword_280AFED80;
  if (qword_280AFED80)
  {
    result = dlsym(qword_280AFED80, "vImageConvert_PlanarFtoARGBFFFF");
  }

  off_280AFEC88 = result;
  return result;
}

uint64_t sub_22E367184(uint64_t result, uint64_t a2, char *a3, ...)
{
  va_start(va, a3);
  if ((*(result + 8) & 0x10) != 0)
  {
    if (*(result + 16))
    {
      return vfprintf(*MEMORY[0x277D85DF8], a3, va);
    }
  }

  return result;
}

void sub_22E367DD0(uint64_t a1, char *a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6, int a7)
{
  v123 = a7;
  v12 = *(a1 + 24);
  v11 = *(a1 + 32);
  v108 = *(a1 + 104);
  v109 = *(a1 + 112);
  v110 = *(a1 + 120);
  v113 = *(a1 + 128);
  v114 = *(a1 + 136);
  v115 = *(a1 + 144);
  v116 = *(a1 + 152);
  v13 = objc_msgSend_distributionType(a1, a2, a3, a4, a5) == 2;
  if (objc_msgSend_distributionType(a1, v14, v15, v16, v17) == 127)
  {
    v13 |= 2 * *(a1 + 160);
  }

  v22 = objc_msgSend_distributionType(a1, v18, v19, v20, v21);
  v23.i64[0] = -1;
  v23.i64[1] = -1;
  v122[4] = v23;
  if (v22 == 3)
  {
    v24 = v13 | 0x200000000;
  }

  else
  {
    v24 = v13;
  }

  v122[2] = v23;
  v122[3] = v23;
  v122[0] = v23;
  v122[1] = v23;
  UberShaderKey = MPSLibrary::CreateUberShaderKey(v11, @"mtgp32", v122, v24, sub_22E36B2A0, v24, 1, 0, 0, 0, 0, 0, 0);
  explicit = atomic_load_explicit(UberShaderKey, memory_order_acquire);
  if (!explicit)
  {
    explicit = MPSLibrary::MPSKey_Compile(v11, UberShaderKey);
  }

  v118 = UberShaderKey;
  if (a3 && explicit && (objc_msgSend_retainedReferences(a3, v25, v26, v27, v28) & 1) == 0)
  {
    v31 = explicit;
    v124 = MEMORY[0x277D85DD0];
    v125.i64[0] = 3221225472;
    v125.i64[1] = sub_22E3717C4;
    v126 = &unk_2787BE7E8;
    v127 = explicit;
    objc_msgSend_addCompletedHandler_(a3, v32, &v124, v33, v34);
  }

  if (*(v12 + 1472) <= 7)
  {
    v35 = 256;
  }

  else
  {
    v35 = 128;
  }

  v36 = objc_msgSend_maxTotalThreadsPerThreadgroup(explicit, v25, v26, v27, v28);
  do
  {
    v37 = v35;
    v35 >>= 1;
  }

  while (v37 > v36);
  v107 = explicit;
  v117 = a3;
  if (v37 != 128 && v37 != 256 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v38 = ((a6 + 350) * 0x756CAC201756CAC3uLL) >> 64;
  v39 = (v38 + ((a6 + 350 - v38) >> 1)) >> 8;
  v40 = 16;
  if ((*(*(a1 + 24) + 1476) & 0x400) == 0)
  {
    v40 = 128;
  }

  v41 = 4;
  if ((*(*(a1 + 24) + 1476) & 0x400) == 0)
  {
    v41 = 7;
  }

  if (v39 >= v40)
  {
    v42 = v40;
  }

  else
  {
    v42 = v39;
  }

  if (v39 <= v40)
  {
    v43 = 351;
  }

  else
  {
    v43 = (a6 + v40 - 1) >> v41;
  }

  v44 = 16 * (*(*v12 + 24))(v12);
  v47 = objc_msgSend_newBufferWithLength_options_(*(v12 + 16), v45, 4 * v42, v44, v46);
  v50 = objc_msgSend_newBufferWithLength_options_(*(v12 + 16), v48, 4 * v42, v44, v49);
  v55 = objc_msgSend_contents(v47, v51, v52, v53, v54);
  v60 = objc_msgSend_contents(v50, v56, v57, v58, v59);
  if (a6 + 350 >= 0x15F)
  {
    v64 = 0;
    if (v42 <= 1)
    {
      v65 = 1;
    }

    else
    {
      v65 = v42;
    }

    do
    {
      *v60++ = v64;
      if (v43 >= a6)
      {
        v66 = a6;
      }

      else
      {
        v66 = v43;
      }

      *v55++ = v66;
      v64 += v66;
      a6 -= v43;
      --v65;
    }

    while (v65);
  }

  objc_msgSend_setComputePipelineState_(a2, v61, v107, v62, v63);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v67, v108, 0, 0);
  v72 = objc_msgSend_destinationDataType(a1, v68, v69, v70, v71);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v73, a4, (v72 >> 3) * a5, 1);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v74, v109, 0, 2);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v75, v110, 0, 3);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v76, v113, 0, 4);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v77, v114, 0, 5);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v78, v115, 0, 6);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v79, v116, 0, 7);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v80, v47, 0, 8);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v81, v50, 0, 9);
  if ((objc_msgSend_retainedReferences(v117, v82, v83, v84, v85) & 1) == 0)
  {
    v86 = v47;
    v87 = v50;
    v121[0] = MEMORY[0x277D85DD0];
    v121[1] = 3221225472;
    v121[2] = sub_22E36B378;
    v121[3] = &unk_2787BF748;
    v121[4] = v47;
    v121[5] = v50;
    objc_msgSend_addCompletedHandler_(v117, v88, v121, v89, v90);
  }

  if (objc_msgSend_distributionType(a1, v91, v92, v93, v94) == 2 || objc_msgSend_distributionType(a1, v95, v96, v97, v98) == 3)
  {
    v124 = *(a1 + 164);
    objc_msgSend_setBytes_length_atIndex_(a2, v95, &v124, 8, 10);
  }

  if (objc_msgSend_distributionType(a1, v95, v99, v100, v101) == 3)
  {
    v124 = *(a1 + 172);
    objc_msgSend_setBytes_length_atIndex_(a2, v102, &v124, 8, 11);
  }

  objc_msgSend_setBytes_length_atIndex_(a2, v102, &v123, 4, 12);
  objc_msgSend_setThreadgroupMemoryLength_atIndex_(a2, v103, 1408, 0, v104);
  v124 = v42;
  v125 = vdupq_n_s64(1uLL);
  v119 = v37;
  v120 = v125;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v105, &v124, &v119, v106);
  sub_22E2F0214(v118);
}

void sub_22E368600(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_22E35546C(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

void sub_22E36A9D4(uint64_t a1, char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v75 = a8;
  v14 = *(a1 + 32);
  v15 = *(a1 + 104);
  if ((a6 & 3) != 0 && MTLReportFailureTypeEnabled())
  {
    v66 = objc_opt_class();
    v68 = NSStringFromClass(v66);
    v69 = a6;
    MTLReportFailure();
  }

  if ((a5 & 3) != 0 && MTLReportFailureTypeEnabled())
  {
    v67 = objc_opt_class();
    v68 = NSStringFromClass(v67);
    v69 = a6;
    MTLReportFailure();
  }

  if (objc_msgSend_distributionType(a1, a2, a3, a4, a5, v68, v69) == 2)
  {
    v20 = 0x400000001;
  }

  else
  {
    v20 = 0x400000000;
  }

  if (objc_msgSend_distributionType(a1, v16, v17, v18, v19) == 127)
  {
    v20 |= 2 * *(a1 + 112);
  }

  v25 = objc_msgSend_distributionType(a1, v21, v22, v23, v24);
  v26.i64[0] = -1;
  v26.i64[1] = -1;
  v74[3] = v26;
  v74[4] = v26;
  if (v25 == 3)
  {
    v27 = v20 | 0x200000000;
  }

  else
  {
    v27 = v20;
  }

  v74[1] = v26;
  v74[2] = v26;
  v74[0] = v26;
  UberShaderKey = MPSLibrary::CreateUberShaderKey(v14, @"philox", v74, v27, sub_22E36B2A0, v27, 1, 0, 0, 0, 0, 0, 0);
  explicit = atomic_load_explicit(UberShaderKey, memory_order_acquire);
  if (!explicit)
  {
    explicit = MPSLibrary::MPSKey_Compile(v14, UberShaderKey);
  }

  if (a3 && explicit && (objc_msgSend_retainedReferences(a3, v28, v29, v30, v31) & 1) == 0)
  {
    v34 = explicit;
    v76 = MEMORY[0x277D85DD0];
    v77.i64[0] = 3221225472;
    v77.i64[1] = sub_22E3717C4;
    v78 = &unk_2787BE7E8;
    v79 = explicit;
    objc_msgSend_addCompletedHandler_(a3, v35, &v76, v36, v37);
  }

  v38 = *(*(a1 + 24) + 1476);
  objc_msgSend_setComputePipelineState_(a2, v28, explicit, v30, v31);
  v43 = objc_msgSend_destinationDataType(a1, v39, v40, v41, v42);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v44, a4, (v43 >> 3) * a5, 0);
  objc_msgSend_setBuffer_offset_atIndex_(a2, v45, v15, 0, 1);
  *&v46 = a7;
  DWORD2(v46) = a6;
  v73 = v46;
  objc_msgSend_setBytes_length_atIndex_(a2, v47, &v73, 16, 2);
  if (objc_msgSend_distributionType(a1, v48, v49, v50, v51) == 2 || objc_msgSend_distributionType(a1, v52, v53, v54, v55) == 3)
  {
    v76 = *(a1 + 116);
    objc_msgSend_setBytes_length_atIndex_(a2, v52, &v76, 8, 3);
  }

  if (objc_msgSend_distributionType(a1, v52, v56, v57, v58) == 3)
  {
    v76 = *(a1 + 124);
    objc_msgSend_setBytes_length_atIndex_(a2, v59, &v76, 8, 4);
  }

  v60 = 32;
  if ((v38 & 0x400) != 0)
  {
    v61 = 128;
  }

  else
  {
    v60 = 128;
    v61 = 256;
  }

  v62 = 9;
  if ((v38 & 0x400) == 0)
  {
    v62 = 10;
  }

  if ((a6 + 4 * v61 - 1) >> v62 >= v60)
  {
    v63 = v60;
  }

  else
  {
    v63 = (a6 + 4 * v61 - 1) >> v62;
  }

  objc_msgSend_setBytes_length_atIndex_(a2, v59, &v75, 4, 5);
  v76 = v63;
  v77 = vdupq_n_s64(1uLL);
  v71 = v61;
  v72 = v77;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a2, v64, &v76, &v71, v65);
  sub_22E2F0214(UberShaderKey);
}

void sub_22E36B028(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_22E35546C(va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

uint64_t sub_22E36B2A0(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v9 = MPSCreateFunctionConstantValues(a1, a2, a3, a4, a5);
  v11 = v9;
  v16 = 1;
  v12 = *(a2 + 64);
  if (v12)
  {
    objc_msgSend_setConstantValue_type_atIndex_(v9, v10, &v16, 53, 0);
    v12 = *(a2 + 64);
  }

  if ((v12 & 0x1FFFFFFFELL) != 0)
  {
    v15 = v12 >> 1;
    objc_msgSend_setConstantValue_type_atIndex_(v11, v10, &v15, 3, 1);
    v12 = *(a2 + 64);
  }

  if ((v12 & 0x200000000) != 0)
  {
    objc_msgSend_setConstantValue_type_atIndex_(v11, v10, &v16, 53, 2);
  }

  v13 = _MPSNewSpecializedFunction(a1, *a2, v11, a4, a5);

  return v13;
}

void sub_22E36B378(uint64_t a1)
{
  v2 = *(a1 + 40);
}

void sub_22E36BEE4(_Unwind_Exception *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, MPSAutoCache *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23)
{
  sub_22E36C0E4(&a21, a2, a3, a4, a5);
  MPSAutoCache::~MPSAutoCache(&a23, v24, v25, v26, v27);
  _Unwind_Resume(a1);
}

void **sub_22E36C0E4(void **a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_endEncoding(*a1, a2, a3, a4, a5);

  return a1;
}

unint64_t MPSSetDeviceOptionsSPI(void *a1, int a2)
{
  result = MPSDevice::GetMPSDevice(a1);
  if (result || (v4 = MTLReportFailureTypeEnabled(), result = 0, !v4))
  {
    *(result + 1468) = a2;
  }

  else
  {
    result = MTLReportFailure();
    MEMORY[0x5BC] = a2;
  }

  return result;
}

BOOL MPSSetBinaryArchives(void *a1, void *a2, uint64_t a3)
{
  MPSDevice = MPSDevice::GetMPSDevice(a1);
  v6 = MPSDevice;
  if (MPSDevice)
  {
    os_unfair_lock_lock(MPSDevice + 358);

    *&v6[356]._os_unfair_lock_opaque = a2;
    *&v6[360]._os_unfair_lock_opaque = a3;
    os_unfair_lock_unlock(v6 + 358);
  }

  return v6 != 0;
}

void MPSDevice::SetBinaryArchives(uint64_t a1, void *a2, uint64_t a3)
{
  os_unfair_lock_lock((a1 + 1432));

  *(a1 + 1424) = a2;
  *(a1 + 1440) = a3;

  os_unfair_lock_unlock((a1 + 1432));
}

uint64_t MPSGetOriginalMTLObject(void *a1)
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return a1;
  }

  return objc_msgSend_performSelector_(a1, v2, sel_originalObject, v3, v4);
}