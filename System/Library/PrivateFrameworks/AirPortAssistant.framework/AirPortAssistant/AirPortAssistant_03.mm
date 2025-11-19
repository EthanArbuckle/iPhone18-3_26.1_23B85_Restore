uint64_t sub_23EB8FC04(uint64_t a1, uint64_t a2, const __CFString *a3, uint64_t a4)
{
  v77 = *MEMORY[0x277D85DE8];
  memset(&__p, 0, sizeof(__p));
  v74 = 0;
  v72 = a1;
  cf = 0;
  pthread_mutex_lock((a1 + 392));
  ++*(a1 + 456);
  std::string::basic_string(&v71, a2, 0, 4uLL, __str);
  v8 = v71.__r_.__value_.__r.__words[0];
  v9 = SHIBYTE(v71.__r_.__value_.__r.__words[2]);
  if (*(a2 + 23) >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  v11 = sub_23EB4BD54(v10, 4uLL, &v74);
  if (v11)
  {
    goto LABEL_67;
  }

  v12 = *(a2 + 23);
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(a2 + 8);
  }

  if (v12 >= 5)
  {
    std::string::basic_string(&v71, a2, 5uLL, 0xFFFFFFFFFFFFFFFFLL, __str);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v71;
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    v20 = sub_23EB8A18C(a1, v74, a3, a4);
LABEL_66:
    v11 = v20;
    goto LABEL_67;
  }

  if (sub_23EB8E208(a1, a2))
  {
    v14 = *(a2 + 23);
    if (v14 >= 0)
    {
      v15 = a2;
    }

    else
    {
      v15 = *a2;
    }

    if (v14 < 0)
    {
      v14 = *(a2 + 8);
    }

    if (v14 >= 16)
    {
      v16 = &v15[v14];
      v17 = v15;
      do
      {
        v18 = memchr(v17, 87, v14 - 15);
        if (!v18)
        {
          break;
        }

        if (*v18 == 0x6461722E69466957 && v18[1] == 0x2E5D2A5B2E736F69)
        {
          if (v18 != v15)
          {
            break;
          }

          memset(&v71, 0, sizeof(v71));
          v41 = sub_23EB8F428(a1, 0);
          v42 = v41;
          if (v41)
          {
            if (v41 < 1)
            {
              v11 = 0;
            }

            else
            {
              v43 = 0;
              do
              {
                snprintf(__str, 0x10uLL, "%ld", v43);
                std::string::operator=(&v71, a2);
                if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v44 = &v71;
                }

                else
                {
                  v44 = v71.__r_.__value_.__r.__words[0];
                }

                if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v45 = SHIBYTE(v71.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v45 = v71.__r_.__value_.__l.__size_;
                }

                v46 = v44 + v45;
                if (v45 >= 1)
                {
                  v47 = v44;
                  do
                  {
                    v48 = memchr(v47, 42, v45);
                    if (!v48)
                    {
                      break;
                    }

                    if (*v48 == 42)
                    {
                      goto LABEL_96;
                    }

                    v47 = (v48 + 1);
                    v45 = v46 - v47;
                  }

                  while (v46 - v47 > 0);
                }

                v48 = v46;
LABEL_96:
                if (v48 == v46)
                {
                  v49 = -1;
                }

                else
                {
                  v49 = v48 - v44;
                }

                std::string::replace(&v71, v49, 1uLL, __str);
                v11 = sub_23EB92938(a1, &v71, a3, a4);
                if (v11)
                {
                  break;
                }

                ++v43;
              }

              while (v43 != v42);
              if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v71.__r_.__value_.__l.__data_);
              }
            }
          }

          else
          {
            v11 = 4294967291;
          }

          goto LABEL_67;
        }

        v17 = v18 + 1;
        v14 = v16 - v17;
      }

      while (v16 - v17 >= 16);
    }

    v20 = sub_23EB92938(a1, a2, a3, a4);
    goto LABEL_66;
  }

  if (a4 == 2)
  {
    v21 = sub_23EB8C68C(a1, v74, &cf, 2);
    v22 = 0;
    v23 = 0;
    DeepCopy = cf;
  }

  else
  {
    v35 = sub_23EB8C68C(a1, v74, &cf, 1);
    v11 = v35;
    if (v35 == -5 || (DeepCopy = cf) == 0)
    {
      v21 = sub_23EB8C68C(a1, v74, &cf, 2);
      v23 = 0;
      v22 = 0;
      DeepCopy = cf;
      if (cf && !v21)
      {
        DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x277CBECE8], cf, 2uLL);
        if (!DeepCopy)
        {
          v11 = 4294967293;
          goto LABEL_67;
        }

        v21 = 0;
        cf = DeepCopy;
        v22 = 1;
        v23 = DeepCopy;
      }
    }

    else
    {
      if (v35)
      {
        goto LABEL_67;
      }

      v22 = 0;
      v23 = 0;
      v21 = 0;
    }
  }

  if (v21 != -5 && DeepCopy)
  {
    v25 = 0;
    goto LABEL_35;
  }

  v11 = sub_23EB8DED4(v21, v74, &cf);
  if (!v11)
  {
    DeepCopy = cf;
    v25 = 1;
    if (!cf)
    {
      v11 = 0;
      goto LABEL_145;
    }

    v22 = 1;
LABEL_35:
    v70 = 0;
    v69 = 0;
    v26 = CFGetTypeID(DeepCopy);
    if (v26 == CFDictionaryGetTypeID() || (v27 = CFGetTypeID(cf), v27 == CFArrayGetTypeID()))
    {
      if (!a3)
      {
        v71.__r_.__value_.__r.__words[0] = 0;
        if (a4 > 1)
        {
          v11 = 4294960591;
          goto LABEL_145;
        }

        if (sub_23EB94960(a1, a2, &v71, 2))
        {
          if (dword_27E381AB0 <= 1000 && (dword_27E381AB0 != -1 || sub_23EB74AC8(&dword_27E381AB0, 0x3E8u)))
          {
            sub_23EB75374(&dword_27E381AB0, "ACPStatus BaseStation::SetPropertyCF(const std::string &, CFTypeRef, eWhichValue)", 1000, "%s: This path (%s) does not exist in original settings for removal", v37, v38, v39, v40, "SetPropertyCF");
          }

          a3 = 0;
        }

        else
        {
          a3 = CFPropertyListCreateDeepCopy(*MEMORY[0x277CBECE8], v71.__r_.__value_.__l.__data_, 2uLL);
          if (!a3)
          {
            v11 = 4294960568;
            goto LABEL_145;
          }
        }
      }

      v11 = sub_23EB94F30(a1, &__p, a3, &v70, &v69);
      if (!v11)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        if (sub_23EB9AC64(p_p) == 2003061875)
        {
          sub_23EB8CCB8(&v71, "legacywds");
          sub_23EB90814(&__p, &v71, &__p);
          if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v71.__r_.__value_.__l.__data_);
          }
        }

        if (!sub_23EB8E37C(a2, "WiFi.radios.[*].", 0))
        {
          memset(&v71, 0, sizeof(v71));
          v50 = sub_23EB8F428(a1, 0);
          v51 = v50;
          v68 = v22;
          if (v50)
          {
            if (v50 < 1)
            {
              v67 = 0;
              v11 = 0;
              v66 = 1;
            }

            else
            {
              v52 = 0;
              while (1)
              {
                snprintf(__str, 0x10uLL, "%ld", v52);
                std::string::operator=(&v71, &__p);
                if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v53 = &v71;
                }

                else
                {
                  v53 = v71.__r_.__value_.__r.__words[0];
                }

                if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v54 = SHIBYTE(v71.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v54 = v71.__r_.__value_.__l.__size_;
                }

                v55 = v53 + v54;
                if (v54 >= 1)
                {
                  v56 = v53;
                  do
                  {
                    v57 = memchr(v56, 42, v54);
                    if (!v57)
                    {
                      break;
                    }

                    if (*v57 == 42)
                    {
                      goto LABEL_120;
                    }

                    v56 = (v57 + 1);
                    v54 = v55 - v56;
                  }

                  while (v55 - v56 > 0);
                }

                v57 = v55;
LABEL_120:
                v58 = v57 == v55 ? -1 : v57 - v53;
                std::string::replace(&v71, v58, 1uLL, __str);
                v64 = (v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v71 : v71.__r_.__value_.__r.__words[0];
                v65 = sub_23EB71598(cf, v64, v70, v59, v60, v61, v62, v63);
                v66 = v65 == 0;
                v11 = v65;
                if (v65)
                {
                  break;
                }

                if (++v52 == v51)
                {
                  v11 = 0;
                  break;
                }
              }

              v67 = v65 != 0;
            }
          }

          else
          {
            v66 = 0;
            v11 = 4294967291;
            v67 = 1;
          }

          if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v71.__r_.__value_.__l.__data_);
          }

          if (!v66)
          {
            if (!v67)
            {
              goto LABEL_67;
            }

            goto LABEL_145;
          }

          v22 = v68;
          goto LABEL_140;
        }

        if (sub_23EB8E37C(a2, "vaps.[*]", 0) == -1 || (v11 = (*(*a1 + 24))(a1, cf, a2, 1, &__p), !v11))
        {
          v34 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          v11 = sub_23EB71598(cf, v34, v70, v29, v30, v31, v32, v33);
          if (!v11)
          {
LABEL_140:
            if (v69 == 1)
            {
              CFRelease(v70);
            }

            if (v22)
            {
              v11 = sub_23EB8A18C(a1, v74, cf, 1);
            }
          }
        }
      }
    }

    else
    {
      v11 = 4294960540;
    }

LABEL_145:
    if (v25 && cf)
    {
      CFRelease(cf);
    }
  }

  if (v23)
  {
    CFRelease(v23);
  }

LABEL_67:
  sub_23EBADBC0(&v72);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v9 & 0x80000000) == 0)
    {
      return v11;
    }

LABEL_71:
    operator delete(v8);
    return v11;
  }

  if (v9 < 0)
  {
    goto LABEL_71;
  }

  return v11;
}

void sub_23EB9040C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_23EBADBC0(&a19);
  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (v28 < 0)
  {
    operator delete(v27);
  }

  _Unwind_Resume(a1);
}

const void *sub_23EB9048C(int a1, CFArrayRef theArray, int a3, const void *a4)
{
  Count = CFArrayGetCount(theArray);
  if (Count >= 1)
  {
    v8 = Count;
    v9 = 0;
    valuePtr = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v9);
      if (!ValueAtIndex)
      {
        break;
      }

      v11 = ValueAtIndex;
      Value = CFDictionaryGetValue(ValueAtIndex, @"region");
      if (!Value)
      {
        break;
      }

      CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
      if (valuePtr == a3)
      {
        v15 = CFDictionaryGetValue(v11, a4);
        v13 = v15;
        if (v15)
        {
          CFRetain(v15);
        }

        return v13;
      }

      ++v9;
    }

    while (v8 != v9);
  }

  return 0;
}

uint64_t sub_23EB90564(uint64_t a1, int a2, int a3, int a4, unsigned int a5, int *a6)
{
  if (sub_23EBB4A64(a2) != 6)
  {
    return 4294967292;
  }

  v11 = sub_23EB8F5B4(a2);
  result = 4294967292;
  if (a2 == 1918979445 && v11)
  {
    if (a3)
    {
      if (a5 > 0x24 || ((1 << a5) & 0x46) != 0)
      {
        goto LABEL_18;
      }

      if (((1 << a5) & 0x60200) == 0)
      {
        if (((1 << a5) & 0x1001000000) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_13;
      }

LABEL_17:
      v13 = a4 == 0;
      v14 = 85;
      v15 = 18;
      goto LABEL_19;
    }

    if (a5 <= 0x24)
    {
      if (((1 << a5) & 0x1001060200) != 0)
      {
LABEL_13:
        v13 = a4 == 0;
        v14 = 17;
        v15 = 36;
LABEL_19:
        if (!v13)
        {
          v14 = v15;
        }

        result = 0;
        *a6 = v14;
        return result;
      }

      if (((1 << a5) & 6) != 0)
      {
        goto LABEL_18;
      }

      if (a5 == 6)
      {
        goto LABEL_17;
      }
    }

    if (a5 == 85)
    {
      goto LABEL_17;
    }

LABEL_18:
    v13 = a4 == 0;
    v14 = 2;
    v15 = 6;
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_23EB906B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  valuePtr = a3;
  v7 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
  if (!v7)
  {
    return 4294960568;
  }

  v8 = v7;
  v9 = sub_23EB8FC04(a1, a2, v7, a4);
  CFRelease(v8);
  return v9;
}

const __CFArray *sub_23EB90740(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  valuePtr = a3;
  theArray = 0;
  v7 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  if (*(a2 + 23) >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (sub_23EBD4674(a1, v9, &theArray, a4))
  {
    v10 = 0;
  }

  else
  {
    v10 = theArray;
    if (theArray)
    {
      v14.length = CFArrayGetCount(theArray);
      v14.location = 0;
      v10 = CFArrayContainsValue(v10, v14, v8);
    }
  }

  CFRelease(v8);
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v10;
}

void sub_23EB90814(unsigned __int8 *a1, uint64_t a2, std::string *a3)
{
  v5 = a1;
  v6 = a1[23];
  if ((v6 & 0x80000000) == 0)
  {
    __str = *a1;
LABEL_4:
    v7 = v6;
    goto LABEL_5;
  }

  sub_23EBADCE0(&__str, *a1, *(a1 + 1));
  v6 = v5[23];
  if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  v19 = v5;
  v5 = *v5;
  v7 = *(v19 + 1);
LABEL_5:
  v8 = &v5[v7];
  if (v7)
  {
    v9 = v5;
    v10 = &v5[v7];
    do
    {
      v11 = v9;
      v12 = v9;
      while (1)
      {
        v13 = *v12++;
        if (v13 == 46)
        {
          break;
        }

        v11 = v12;
        if (v12 == v8)
        {
          v11 = v10;
          goto LABEL_14;
        }
      }

      v9 = v11 + 1;
      v10 = v11;
    }

    while (v12 != v8);
  }

  else
  {
    v11 = v5;
  }

LABEL_14:
  if (v11 == v8)
  {
    v14 = 0;
  }

  else
  {
    v14 = v11 - v5 + 1;
  }

  std::string::basic_string(&v20, &__str, 0, v14, &v22);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  __str = v20;
  v15 = *(a2 + 23);
  if (v15 >= 0)
  {
    v16 = a2;
  }

  else
  {
    v16 = *a2;
  }

  if (v15 >= 0)
  {
    v17 = *(a2 + 23);
  }

  else
  {
    v17 = *(a2 + 8);
  }

  v18 = std::string::append(&__str, v16, v17);
  std::string::operator=(a3, v18);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_23EB90958(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EB90978(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  theDict = 0;
  memset(&v42, 0, sizeof(v42));
  cf = 0;
  v2 = sub_23EB8BFFC(a1, 1466517097, &theDict, 0);
  if (v2)
  {
    goto LABEL_74;
  }

  Value = CFDictionaryGetValue(theDict, @"radios");
  v4 = Value;
  if (!Value)
  {
    goto LABEL_71;
  }

  Count = CFArrayGetCount(Value);
  if (Count < 1)
  {
    v2 = 0;
    goto LABEL_74;
  }

  v11 = 0;
  v35 = Count;
  allocator = *MEMORY[0x277CBECE8];
LABEL_5:
  v39 = 0;
  v40 = 0;
  valuePtr = 0;
  sub_23EB6FF14(v4, &v40, "[*]", v6, v7, v8, v9, v10, v11);
  v2 = v12;
  if (!v12)
  {
    if (v40)
    {
      v13 = 0;
      while (1)
      {
        v14 = &off_278C690A8 + 2 * v13;
        v15 = CFDictionaryGetValue(v40, *v14);
        if (!v15)
        {
          v2 = 4294967291;
          goto LABEL_74;
        }

        MEMORY[0x23EF1EFD0](&v42, "WiFi.radios.[*].");
        v16 = *(v14 + 2);
        sub_23EB8FB78(&v42, v16, &v42);
        snprintf(__str, 0x10uLL, "%ld", v11);
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
          size = SHIBYTE(v42.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v42.__r_.__value_.__l.__size_;
        }

        v19 = v17 + size;
        if (size >= 1)
        {
          v20 = v17;
          do
          {
            v21 = memchr(v20, 42, size);
            if (!v21)
            {
              break;
            }

            if (*v21 == 42)
            {
              goto LABEL_21;
            }

            v20 = (v21 + 1);
            size = v19 - v20;
          }

          while (v19 - v20 > 0);
        }

        v21 = v19;
LABEL_21:
        if (v21 == v19)
        {
          v22 = -1;
        }

        else
        {
          v22 = v21 - v17;
        }

        std::string::replace(&v42, v22, 1uLL, __str);
        if (!CFNumberGetValue(v15, kCFNumberIntType, &valuePtr))
        {
          break;
        }

        v39 = 0;
        if (v16 != 1918981965)
        {
          if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v31 = &v42;
          }

          else
          {
            v31 = v42.__r_.__value_.__r.__words[0];
          }

          v30 = sub_23EB90ED4(a1, v31, v15, 1, &v39);
          goto LABEL_37;
        }

        v37 = 0;
        sub_23EBB6A50(v40, &v37, v23, v24, v25, v26, v27, v28);
        v30 = v29;
        if (!v29)
        {
          if (v37 > 7)
          {
            if (v37 > 9)
            {
              if (v37 != 10)
              {
                if (v37 != 11)
                {
                  goto LABEL_37;
                }

                goto LABEL_56;
              }

              if (!sub_23EB8BE08(a1, 1852788045))
              {
                goto LABEL_37;
              }
            }

            else
            {
              if (v37 == 8)
              {
LABEL_62:
                if (!sub_23EB8BE08(a1, 1852787795))
                {
                  goto LABEL_37;
                }

                goto LABEL_67;
              }

LABEL_56:
              if (!sub_23EB8BE08(a1, 1852787795))
              {
                goto LABEL_37;
              }
            }

            v37 = 12;
            v33 = CFNumberCreate(allocator, kCFNumberNSIntegerType, &v37);
            goto LABEL_68;
          }

          if (v37 > 4)
          {
            if (v37 == 5)
            {
              if (!sub_23EB8BE08(a1, 1852788045))
              {
                goto LABEL_37;
              }

LABEL_67:
              v37 = 7;
              v33 = CFNumberCreate(allocator, kCFNumberNSIntegerType, &v37);
LABEL_68:
              v39 = v33;
              goto LABEL_37;
            }

            if (v37 == 6)
            {
              goto LABEL_62;
            }
          }

          else
          {
            if ((v37 - 2) < 2)
            {
              if (sub_23EB8BE08(a1, 1852787795))
              {
                v37 = 1;
                v39 = CFNumberCreate(allocator, kCFNumberNSIntegerType, &v37);
                sub_23EB8FB78(&v42, 1651725131, &v42);
                v2 = sub_23EB8FC04(a1, &v42, &stru_285145FE8, 0);
                if (v2)
                {
                  goto LABEL_74;
                }
              }

              goto LABEL_37;
            }

            if (v37 == 4)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_37:
        v32 = v39;
        if (v30 || v39)
        {
          if (cf)
          {
            CFRelease(cf);
            cf = 0;
            v32 = v39;
          }

          if (v32)
          {
            cf = v32;
          }

          else
          {
            v2 = sub_23EB912D0(a1, &v42, &cf, 2);
            if (v2)
            {
              goto LABEL_74;
            }
          }

          sub_23EB8FB78(&v42, *(v14 + 3), &v42);
          v2 = sub_23EB8FC04(a1, &v42, cf, 0);
          if (v2)
          {
            goto LABEL_74;
          }
        }

        else if (dword_27E381AB0 <= 8000 && (dword_27E381AB0 != -1 || sub_23EB74AC8(&dword_27E381AB0, 0x1F40u)))
        {
          sub_23EB75374(&dword_27E381AB0, "ACPStatus BaseStation::PostImportValidateWiFiPlistSettings()", 8000, "%s: val is good: %u @ %s in radio index %ld.\n", v7, v8, v9, v10, "ACPStatus BaseStation::PostImportValidateWiFiPlistSettings()");
        }

        if (++v13 == 4)
        {
          v2 = 0;
          if (++v11 != v35)
          {
            goto LABEL_5;
          }

          goto LABEL_74;
        }
      }
    }

LABEL_71:
    v2 = 4294967292;
  }

LABEL_74:
  if (theDict)
  {
    CFRelease(theDict);
    theDict = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  return v2;
}

void sub_23EB90EA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EB90ED4(uint64_t a1, char *a2, const __CFBoolean *a3, uint64_t a4, CFTypeRef *a5)
{
  v43 = 0;
  v42 = 0;
  v41 = 0;
  valuePtr = 0;
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v10 = sub_23EB9AC64(a2);
  theArray = 0;
  v35 = 0;
  v11 = sub_23EBB4964(v10, &v42);
  if (v11)
  {
    goto LABEL_2;
  }

  if (*(v42 + 12) != 6)
  {
    goto LABEL_21;
  }

  v12 = 0;
  v13 = 0;
  if (v10 == 1651725402 || v10 == 1937326416)
  {
    goto LABEL_23;
  }

  v11 = sub_23EBD4674(a1, a2, &theArray, 1);
  if (v11)
  {
    goto LABEL_2;
  }

  if (!theArray)
  {
    return 0;
  }

  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    goto LABEL_21;
  }

  v15 = Count;
  v11 = sub_23EBB46B4(v10, &v43);
  if (v11)
  {
LABEL_2:
    v12 = v11;
    v13 = 0;
    goto LABEL_23;
  }

  if (v43 == 2)
  {
    p_valuePtr = &v41;
    v18 = a3;
    v19 = kCFNumberShortType;
LABEL_16:
    CFNumberGetValue(v18, v19, p_valuePtr);
    Value = 0;
    goto LABEL_17;
  }

  if (v43 != 1)
  {
    p_valuePtr = &valuePtr;
    v18 = a3;
    v19 = kCFNumberIntType;
    goto LABEL_16;
  }

  Value = CFBooleanGetValue(a3);
LABEL_17:
  if (v10 == 1651718221 && valuePtr == 9 || v10 == 1651724867 && valuePtr == 1000)
  {
    goto LABEL_21;
  }

  v21 = 0;
  for (i = 0; i != v15; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
    if (v43 == 2)
    {
      CFNumberGetValue(ValueAtIndex, kCFNumberShortType, &v38);
      v24 = v38;
      v25 = v41;
    }

    else
    {
      if (v43 == 1)
      {
        CFNumberGetValue(ValueAtIndex, kCFNumberSInt8Type, &v39);
        v24 = v39;
        if (Value == v39)
        {
          goto LABEL_21;
        }

        goto LABEL_36;
      }

      CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &v37);
      v24 = v37;
      v25 = valuePtr;
    }

    if (v24 == v25)
    {
      goto LABEL_21;
    }

LABEL_36:
    if (!i)
    {
      v35 = v24;
      v21 = v24;
    }
  }

  if (v21 == 8888)
  {
LABEL_21:
    v13 = 0;
LABEL_22:
    v12 = 0;
    goto LABEL_23;
  }

  if (v10 == 1398097521)
  {
    if (valuePtr == 2678400)
    {
      v28 = 2592000;
      goto LABEL_69;
    }

    if (!valuePtr)
    {
      v28 = 604800;
      goto LABEL_69;
    }
  }

  else if (v10 == 1651725133 || v10 == 1651722067)
  {
    v26 = 0;
    while (1)
    {
      v27 = CFArrayGetValueAtIndex(theArray, v26);
      CFNumberGetValue(v27, kCFNumberIntType, &v37);
      if ((valuePtr & 0xFFFFFFFE) == 2)
      {
        v28 = v37;
        if ((v37 & 0xFFFFFFFE) == 2)
        {
          break;
        }
      }

      if ((valuePtr - 2) < 6 || valuePtr == 13)
      {
        v28 = v37;
        v30 = v37 - 4;
        if (v37 - 4) < 0xA && ((0x20Fu >> v30))
        {
          v28 = dword_23EC21EFC[v30];
          break;
        }

        if (((valuePtr - 4) < 4 || valuePtr == 13) && v37 == 13)
        {
          break;
        }
      }

      if ((valuePtr - 9) <= 3)
      {
        v28 = v37;
        if ((v37 - 9) < 4)
        {
          break;
        }
      }

      if (v15 == ++v26)
      {
        goto LABEL_70;
      }
    }

LABEL_69:
    v35 = v28;
  }

LABEL_70:
  v13 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &v35);
  if (!v13)
  {
    goto LABEL_22;
  }

  sub_23EB8CCB8(__p, a2);
  v12 = sub_23EB8FC04(a1, __p, v13, a4);
  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  if (a5 && !v12)
  {
    *a5 = CFRetain(v13);
  }

LABEL_23:
  if (theArray)
  {
    CFRelease(theArray);
    theArray = 0;
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v12;
}

void sub_23EB912B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EB912D0(uint64_t a1, uint64_t a2, CFMutableDictionaryRef *a3, uint64_t a4)
{
  v11 = a1;
  pthread_mutex_lock((a1 + 392));
  ++*(a1 + 456);
  v8 = sub_23EB94960(a1, a2, a3, a4);
  v9 = v8;
  if (a3 && !v8 && *a3)
  {
    CFRetain(*a3);
  }

  sub_23EBADBC0(&v11);
  return v9;
}

void sub_23EB9135C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EBADBC0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23EB91370(uint64_t a1, int a2)
{
  result = 1;
  if (a2 <= 1918978352)
  {
    if (a2 <= 1918128973)
    {
      if (a2 > 1651725132)
      {
        if (a2 > 1651733075)
        {
          if (a2 != 1651733076 && a2 != 1683440723)
          {
            v5 = 1685538412;
            goto LABEL_55;
          }

          return result;
        }

        if (a2 == 1651725133)
        {
          return result;
        }

        v4 = 22349;
      }

      else
      {
        if (a2 <= 1651724866)
        {
          if (a2 == 910976632)
          {
            return result;
          }

          v5 = 1633895790;
          goto LABEL_55;
        }

        if (a2 == 1651724867 || a2 == 1651724877)
        {
          return result;
        }

        v4 = 21323;
      }

      v5 = v4 | 0x62730000;
      goto LABEL_55;
    }

    if (a2 > 1918977124)
    {
      if (a2 > 1918977585)
      {
        if (a2 == 1918977586)
        {
          return result;
        }

        v3 = 18028;
      }

      else
      {
        if (a2 == 1918977125)
        {
          return result;
        }

        v3 = 17729;
      }
    }

    else
    {
      if ((a2 - 1918976833) <= 0x31 && ((1 << (a2 - 65)) & 0x2098000000001) != 0 || a2 == 1918128974)
      {
        return result;
      }

      v3 = 16757;
    }

LABEL_54:
    v5 = v3 | 0x72610000;
    goto LABEL_55;
  }

  if (a2 > 1918980913)
  {
    if (a2 > 1918981425)
    {
      if (a2 <= 2003060331)
      {
        if ((a2 - 1918981955) <= 0xA && ((1 << (a2 - 67)) & 0x405) != 0)
        {
          return result;
        }

        v3 = 21810;
        goto LABEL_54;
      }

      if (a2 == 2003060332)
      {
        return result;
      }

      v5 = 2003061875;
LABEL_55:
      if (a2 == v5)
      {
        return result;
      }

      return 0;
    }

    if ((a2 - 1918980965) <= 0xF && ((1 << (a2 - 101)) & 0x8041) != 0 || a2 == 1918980914)
    {
      return result;
    }

    v3 = 21618;
    goto LABEL_54;
  }

  if (a2 <= 1918979406)
  {
    if (a2 > 1918979138)
    {
      if (a2 == 1918979139)
      {
        return result;
      }

      v3 = 19526;
    }

    else
    {
      if ((a2 - 1918978353) < 2)
      {
        return result;
      }

      v3 = 19284;
    }

    goto LABEL_54;
  }

  if (a2 > 1918979692)
  {
    if (a2 > 1918980215)
    {
      if (a2 == 1918980216)
      {
        return result;
      }

      v3 = 21103;
    }

    else
    {
      if (a2 == 1918979693)
      {
        return result;
      }

      v3 = 20591;
    }

    goto LABEL_54;
  }

  if ((a2 - 1918979407) > 0x26 || ((1 << (a2 - 79)) & 0x4000200001) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t sub_23EB91690(uint64_t a1, int a2)
{
  result = 1;
  if (a2 > 1886547537)
  {
    if (a2 > 2002862933)
    {
      if (a2 == 2002862934)
      {
        return result;
      }

      v3 = 2003061875;
    }

    else
    {
      if (a2 == 1886547538)
      {
        return result;
      }

      v3 = 1918976882;
    }
  }

  else if (a2 > 1633899616)
  {
    if (a2 == 1633899617)
    {
      return result;
    }

    v3 = 1886213217;
  }

  else
  {
    if (a2 == 1349676902)
    {
      return result;
    }

    v3 = 1466517097;
  }

  if (a2 != v3)
  {
    return 0;
  }

  return result;
}

uint64_t sub_23EB91744(uint64_t a1, int a2, CFDataRef theData, CFTypeRef *a4)
{
  v103 = *MEMORY[0x277D85DE8];
  v4 = 4294967292;
  if (!theData || !a4)
  {
    return v4;
  }

  v6 = theData;
  v4 = 4294967286;
  if (a2 > 1886547537)
  {
    if (a2 > 2002862933)
    {
      if (a2 == 2002862934)
      {
        *cStr = 0;
        if (!CFNumberGetValue(theData, kCFNumberSInt32Type, cStr))
        {
          return 4294960553;
        }

        LODWORD(cf) = *cStr;
        v4 = 0;
        *a4 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &cf);
        return v4;
      }

      if (a2 != 2003061875)
      {
        return v4;
      }

      Length = CFDataGetLength(theData);
      BytePtr = CFDataGetBytePtr(v6);
      v64 = *MEMORY[0x277CBECE8];
      Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
      if (Mutable)
      {
        v54 = Mutable;
        if (!Length)
        {
          goto LABEL_103;
        }

        if (!*BytePtr)
        {
          v66 = *(BytePtr + 1);
          v67 = bswap32(v66);
          if (Length >= 40 * v67 + 16)
          {
            if (v66)
            {
              v68 = (BytePtr + 16);
              if (v67 <= 1)
              {
                v69 = 1;
              }

              else
              {
                v69 = v67;
              }

              v70 = MEMORY[0x277CBF138];
              v71 = MEMORY[0x277CBF150];
              while (1)
              {
                v72 = CFDictionaryCreateMutable(v64, 0, v70, v71);
                if (!v72)
                {
                  goto LABEL_110;
                }

                v6 = v72;
                if (!sub_23EBAEC24(v68, v68 + 6, v72))
                {
LABEL_111:
                  v4 = 0xFFFFFFFFLL;
                  goto LABEL_106;
                }

                CFArrayAppendValue(v54, v6);
                CFRelease(v6);
                v68 += 40;
                if (!--v69)
                {
                  goto LABEL_103;
                }
              }
            }

            goto LABEL_103;
          }

          goto LABEL_85;
        }

        goto LABEL_78;
      }
    }

    else
    {
      if (a2 != 1886547538)
      {
        if (a2 == 1918976882)
        {
          TypeID = CFStringGetTypeID();

          return sub_23EBD4E00(1918976882, v6, TypeID, a4);
        }

        return v4;
      }

      v73 = CFDataGetLength(theData);
      v74 = CFDataGetBytePtr(v6);
      v75 = *MEMORY[0x277CBECE8];
      v76 = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
      if (v76)
      {
        v54 = v76;
        if (!v73)
        {
          goto LABEL_103;
        }

        if (*v74 == 50331648)
        {
          v77 = *(v74 + 1);
          v78 = bswap32(v77);
          if (v73 < 720 * v78 + 16)
          {
            v4 = 4294967281;
            goto LABEL_107;
          }

          if (v77)
          {
            if (v78 <= 1)
            {
              v85 = 1;
            }

            else
            {
              v85 = v78;
            }

            v86 = MEMORY[0x277CBF138];
            v87 = MEMORY[0x277CBF150];
            while (1)
            {
              v89 = *(v74 + 8);
              v88 = v74 + 16;
              *v88 = bswap32(v89) >> 16;
              v88[1] = bswap32(v88[1]) >> 16;
              v88[359] = bswap32(v88[359]) >> 16;
              v90 = CFDictionaryCreateMutable(v75, 0, v86, v87);
              if (!v90)
              {
                goto LABEL_110;
              }

              v6 = v90;
              if (!sub_23EBAEEBC(v88, v90))
              {
                goto LABEL_111;
              }

              v74 = (v88 + 352);
              CFArrayAppendValue(v54, v6);
              CFRelease(v6);
              if (!--v85)
              {
                goto LABEL_103;
              }
            }
          }

          goto LABEL_103;
        }

        goto LABEL_78;
      }
    }

    return 4294960568;
  }

  if (a2 > 1633899616)
  {
    if (a2 == 1633899617)
    {
      v79 = CFDataGetLength(theData);
      v80 = CFDataGetBytePtr(v6);
      v81 = *MEMORY[0x277CBECE8];
      v82 = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
      if (v82)
      {
        v54 = v82;
        if (!v79)
        {
          goto LABEL_103;
        }

        if (!*v80)
        {
          v83 = *(v80 + 1);
          v84 = bswap32(v83);
          if (v79 >= 40 * v84 + 16)
          {
            if (v83)
            {
              v91 = (v80 + 16);
              if (v84 <= 1)
              {
                v92 = 1;
              }

              else
              {
                v92 = v84;
              }

              v93 = MEMORY[0x277CBF138];
              v94 = MEMORY[0x277CBF150];
              do
              {
                v95 = CFDictionaryCreateMutable(v81, 0, v93, v94);
                if (!v95)
                {
                  goto LABEL_110;
                }

                v6 = v95;
                if (!sub_23EBAEC24(v91, v91 + 6, v95))
                {
                  goto LABEL_111;
                }

                CFArrayAppendValue(v54, v6);
                CFRelease(v6);
                v91 += 40;
              }

              while (--v92);
            }

LABEL_103:
            v4 = 0;
            *a4 = v54;
            goto LABEL_107;
          }

LABEL_85:
          v4 = 4294967292;
          goto LABEL_107;
        }

LABEL_78:
        v4 = 4294967277;
        goto LABEL_107;
      }

      return 4294960568;
    }

    if (a2 == 1886213217)
    {
      v50 = CFDataGetLength(theData);
      v51 = CFDataGetBytePtr(v6);
      v52 = *MEMORY[0x277CBECE8];
      v53 = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
      if (v53)
      {
        v54 = v53;
        if (!v50)
        {
          goto LABEL_103;
        }

        if (!*v51)
        {
          v55 = *(v51 + 1);
          v56 = bswap32(v55);
          if (v50 >= 8 * v56 + 16)
          {
            if (v55)
            {
              v57 = (v51 + 16);
              if (v56 <= 1)
              {
                v58 = 1;
              }

              else
              {
                v58 = v56;
              }

              v59 = MEMORY[0x277CBF138];
              v60 = MEMORY[0x277CBF150];
              while (1)
              {
                *v57 = bswap32(*v57);
                *(v57 + 4) = bswap32(*(v57 + 4)) >> 16;
                *(v57 + 6) = bswap32(*(v57 + 6)) >> 16;
                v61 = CFDictionaryCreateMutable(v52, 0, v59, v60);
                if (!v61)
                {
                  break;
                }

                v6 = v61;
                if (!sub_23EBAF138(v57, v61))
                {
                  goto LABEL_111;
                }

                CFArrayAppendValue(v54, v6);
                CFRelease(v6);
                v57 += 8;
                if (!--v58)
                {
                  goto LABEL_103;
                }
              }

LABEL_110:
              v4 = 4294960568;
LABEL_107:
              if (!*a4)
              {
                CFRelease(v54);
              }

              return v4;
            }

            goto LABEL_103;
          }

          goto LABEL_85;
        }

        goto LABEL_78;
      }

      return 4294960568;
    }

    return v4;
  }

  if (a2 != 1349676902)
  {
    if (a2 != 1466517097)
    {
      return v4;
    }

    theString1 = 0;
    cf = 0;
    CFRetain(theData);
    CFRetain(v6);
    *a4 = v6;
    Value = CFDictionaryGetValue(v6, @"radios");
    if (Value && (v9 = Value, Count = CFArrayGetCount(Value), Count >= 1))
    {
      v16 = Count;
      v17 = 0;
      alloc = *MEMORY[0x277CBECE8];
      while (1)
      {
        theDict = 0;
        sub_23EB6FF14(v9, &theDict, "[*]", v11, v12, v13, v14, v15, v17);
        if (v18)
        {
LABEL_83:
          v4 = v18;
          goto LABEL_105;
        }

        if (!theDict)
        {
          break;
        }

        sub_23EB6FF14(theDict, v100, "%kO:mac", v19, v20, v21, v22, v23, @"raMA");
        if (!v24)
        {
          *cStr = 0u;
          v102 = 0u;
          sub_23EB7E798(v100, 6, cStr);
          v25 = CFStringCreateWithCString(alloc, cStr, 0x8000100u);
          cf = v25;
          if (!v25)
          {
            goto LABEL_30;
          }

          CFDictionarySetValue(theDict, @"raMA", v25);
          CFRelease(cf);
        }

        v26 = CFDictionaryGetValue(theDict, @"raMO");
        theString1 = v26;
        if (v26)
        {
          v32 = CFGetTypeID(v26);
          if (v32 == CFStringGetTypeID())
          {
            *(a1 + 385) = 1;
          }
        }

        sub_23EB6FF14(theDict, &theString1, "%kO", v27, v28, v29, v30, v31, @"raCr");
        if (!v38)
        {
          v39 = theString1;
          v40 = CFStringGetTypeID();
          v18 = sub_23EBD4E00(1918976882, v39, v40, &cf);
          if (v18)
          {
            goto LABEL_83;
          }

          CFDictionarySetValue(theDict, @"raCr", cf);
          CFRelease(cf);
        }

        sub_23EB6FF14(theDict, &theString1, "%kO", v33, v34, v35, v36, v37, @"raI1");
        if (!v46 && CFStringCompare(theString1, @"0.0.0.0", 0) == kCFCompareEqualTo)
        {
          theString1 = &stru_285145FE8;
          CFDictionarySetValue(theDict, @"raI1", &stru_285145FE8);
        }

        sub_23EB6FF14(theDict, &theString1, "%kO", v41, v42, v43, v44, v45, @"raI2");
        if (!v47 && CFStringCompare(theString1, @"0.0.0.0", 0) == kCFCompareEqualTo)
        {
          theString1 = &stru_285145FE8;
          CFDictionarySetValue(theDict, @"raI2", &stru_285145FE8);
        }

        v18 = sub_23EBD4754(theDict);
        if (v18)
        {
          goto LABEL_83;
        }

        v18 = sub_23EBD4BB8(theDict);
        if (v18)
        {
          goto LABEL_83;
        }

        if (v16 == ++v17)
        {
          goto LABEL_30;
        }
      }

      v4 = 4294967292;
    }

    else
    {
LABEL_30:
      v4 = 0;
    }

LABEL_105:
    v54 = 0;
LABEL_106:
    CFRelease(v6);
    if (!v54)
    {
      return v4;
    }

    goto LABEL_107;
  }

  return sub_23EB97854(a1, theData, a4);
}

uint64_t sub_23EB9201C(CFDictionaryRef *a1, uint64_t a2, __CFString **a3, _BYTE *a4, uint64_t a5)
{
  theString1 = 0;
  v5 = 4294967292;
  if (!a3 || !a4)
  {
    return v5;
  }

  v8 = a2;
  *a3 = 0;
  v10 = sub_23EB8C68C(a1, a2, &theString1, a5);
  if (v10)
  {
    return v10;
  }

  if (!sub_23EB91690(v10, v8))
  {
    v14 = 0;
    v5 = sub_23EB4BB3C(v8, &v14);
    if (v5)
    {
      return v5;
    }

    v12 = *(v14 + 1);
    if (v12 == 7)
    {
      if (CFStringCompare(theString1, &stru_285145FE8, 0) == kCFCompareEqualTo)
      {
        v13 = @"0.0.0.0";
        goto LABEL_19;
      }
    }

    else
    {
      if (v12 != 12)
      {
        if (v12 != 8 || CFStringCompare(theString1, &stru_285145FE8, 0))
        {
          goto LABEL_20;
        }

        v13 = @"00:00:00:00:00:00";
        goto LABEL_19;
      }

      if (CFStringCompare(theString1, &stru_285145FE8, 0) == kCFCompareEqualTo)
      {
        v13 = @"::";
LABEL_19:
        theString1 = v13;
      }
    }

LABEL_20:
    *a3 = theString1;
    *a4 = 0;
    return v5;
  }

  v5 = sub_23EB92174(a1, v8, theString1, a3);
  if (!v5)
  {
    *a4 = 1;
  }

  return v5;
}

uint64_t sub_23EB92174(uint64_t a1, int a2, const __CFNumber *propertyList, __CFString **a4)
{
  v4 = 4294967292;
  if (!propertyList || !a4)
  {
    return v4;
  }

  v4 = 4294967286;
  if (a2 > 1886547537)
  {
    if (a2 > 2002862933)
    {
      if (a2 == 2002862934)
      {
        LODWORD(theString1) = 0;
        LODWORD(cf) = 0;
        if (!CFNumberGetValue(propertyList, kCFNumberSInt32Type, &cf))
        {
          return 4294960553;
        }

        sub_23EB6FF14(*(a1 + 32), &theString1, "%kC:int", v74, v75, v76, v77, v78, 2002862934);
        if (!v19)
        {
          if ((cf & 0x400) != 0)
          {
            v80 = theString1 & 0xFFFFF0FF | 0x400;
          }

          else
          {
            v79 = theString1 & 0xFFFFF0FF;
            if ((~cf & 0x900) != 0)
            {
              v80 = v79 | 0x300;
            }

            else
            {
              v80 = v79 | 0x900;
            }
          }

          LODWORD(theString1) = v80;
          v4 = 0;
          *a4 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &theString1);
          return v4;
        }

        return v19;
      }

      if (a2 != 2003061875)
      {
        return v4;
      }

      Count = CFArrayGetCount(propertyList);
      v59 = 40 * Count + 16;
      v60 = malloc_type_malloc(v59, 0x596D28FCuLL);
      if (!v60)
      {
        return 4294960568;
      }

      v51 = v60;
      bzero(v60, v59);
      *v51 = 0;
      v51[1] = bswap32(Count);
      if (Count >= 1)
      {
        v61 = 0;
        v62 = v51 + 22;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(propertyList, v61);
          if (!ValueAtIndex)
          {
            goto LABEL_77;
          }

          if ((sub_23EBAED48(ValueAtIndex, (v62 - 6), v62, 0x14uLL) & 1) == 0)
          {
LABEL_78:
            v4 = 0xFFFFFFFFLL;
            goto LABEL_79;
          }

          ++v61;
          v62 += 40;
        }

        while (Count != v61);
      }

      v56 = 2003061875;
    }

    else
    {
      if (a2 != 1886547538)
      {
        if (a2 != 1918976882)
        {
          return v4;
        }

        TypeID = CFDataGetTypeID();

        return sub_23EBD4E00(1918976882, propertyList, TypeID, a4);
      }

      v64 = CFArrayGetCount(propertyList);
      v59 = 720 * v64 + 16;
      v65 = malloc_type_malloc(v59, 0x5252046BuLL);
      if (!v65)
      {
        return 4294960568;
      }

      v51 = v65;
      bzero(v65, v59);
      *v51 = 50331648;
      v51[1] = bswap32(v64);
      if (v64 >= 1)
      {
        v66 = 0;
        v67 = v51;
        do
        {
          v68 = CFArrayGetValueAtIndex(propertyList, v66);
          if (!v68)
          {
            goto LABEL_77;
          }

          if (!sub_23EBAF044(v68, (v67 + 8)))
          {
            goto LABEL_78;
          }

          v67[8] = bswap32(v67[8]) >> 16;
          v67[9] = bswap32(v67[9]) >> 16;
          v67[367] = bswap32(v67[367]) >> 16;
          ++v66;
          v67 += 360;
        }

        while (v64 != v66);
      }

      v56 = 1886547538;
    }

    goto LABEL_70;
  }

  if (a2 > 1633899616)
  {
    if (a2 != 1633899617)
    {
      if (a2 != 1886213217)
      {
        return v4;
      }

      v48 = CFArrayGetCount(propertyList);
      v49 = 8 * v48;
      v50 = malloc_type_malloc(8 * v48 + 16, 0x2E9E3407uLL);
      if (v50)
      {
        v51 = v50;
        bzero(v50, v49 + 16);
        *v51 = 0;
        v51[1] = bswap32(v48);
        if (v48 >= 1)
        {
          v52 = 0;
          v53 = (v51 + 4);
          while (1)
          {
            v54 = CFArrayGetValueAtIndex(propertyList, v52);
            if (!v54)
            {
              break;
            }

            if (!sub_23EBAF2C4(v54, v53))
            {
              goto LABEL_78;
            }

            *v53 = bswap32(*v53);
            *(v53 + 4) = bswap32(*(v53 + 4)) >> 16;
            *(v53 + 6) = bswap32(*(v53 + 6)) >> 16;
            ++v52;
            v53 += 8;
            if (v48 == v52)
            {
              goto LABEL_43;
            }
          }

LABEL_77:
          v4 = 4294967291;
          goto LABEL_79;
        }

LABEL_43:
        v55 = v49 + 16;
        v56 = 1886213217;
        v57 = v51;
LABEL_71:
        v4 = sub_23EB4EBC4(v56, v57, v55, 1, a4);
LABEL_79:
        free(v51);
        return v4;
      }

      return 4294960568;
    }

    v69 = CFArrayGetCount(propertyList);
    v59 = 40 * v69 + 16;
    v70 = malloc_type_malloc(v59, 0xE485E192uLL);
    if (!v70)
    {
      return 4294960568;
    }

    v51 = v70;
    bzero(v70, v59);
    *v51 = 0;
    v51[1] = bswap32(v69);
    if (v69 >= 1)
    {
      v71 = 0;
      v72 = v51 + 22;
      do
      {
        v73 = CFArrayGetValueAtIndex(propertyList, v71);
        if (!v73)
        {
          goto LABEL_77;
        }

        if ((sub_23EBAED48(v73, (v72 - 6), v72, 0x14uLL) & 1) == 0)
        {
          goto LABEL_78;
        }

        ++v71;
        v72 += 40;
      }

      while (v69 != v71);
    }

    v56 = 1633899617;
LABEL_70:
    v57 = v51;
    v55 = v59;
    goto LABEL_71;
  }

  if (a2 != 1349676902)
  {
    if (a2 == 1466517097)
    {
      cf = 0;
      theString1 = 0;
      DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x277CBECE8], propertyList, 2uLL);
      if (!DeepCopy)
      {
        return 4294967293;
      }

      *a4 = DeepCopy;
      Value = CFDictionaryGetValue(DeepCopy, @"radios");
      if (!Value)
      {
        return 4294967293;
      }

      v10 = Value;
      v11 = CFArrayGetCount(Value);
      if (v11 >= 1)
      {
        v17 = v11;
        v18 = 0;
        while (1)
        {
          v81 = 0;
          theDict = 0;
          sub_23EB6FF14(v10, &theDict, "[*]", v12, v13, v14, v15, v16, v18);
          if (v19)
          {
            break;
          }

          if (!theDict)
          {
            return 4294967292;
          }

          sub_23EB6FF14(theDict, &v81, "%kO", v20, v21, v22, v23, v24, @"raMA");
          if (!v30)
          {
            v19 = sub_23EB4EF94(1918979393, v81, 1, &cf);
            if (v19)
            {
              return v19;
            }

            CFDictionarySetValue(theDict, @"raMA", cf);
            CFRelease(cf);
          }

          sub_23EB6FF14(theDict, &theString1, "%kO", v25, v26, v27, v28, v29, @"raCr");
          if (!v36)
          {
            v37 = theString1;
            v38 = CFDataGetTypeID();
            v19 = sub_23EBD4E00(1918976882, v37, v38, &cf);
            if (v19)
            {
              return v19;
            }

            CFDictionarySetValue(theDict, @"raCr", cf);
            CFRelease(cf);
          }

          sub_23EB6FF14(theDict, &theString1, "%kO", v31, v32, v33, v34, v35, @"raI1");
          if (!v44 && CFStringCompare(theString1, &stru_285145FE8, 0) == kCFCompareEqualTo)
          {
            theString1 = @"0.0.0.0";
            CFDictionarySetValue(theDict, @"raI1", @"0.0.0.0");
          }

          sub_23EB6FF14(theDict, &theString1, "%kO", v39, v40, v41, v42, v43, @"raI2");
          if (!v45 && CFStringCompare(theString1, &stru_285145FE8, 0) == kCFCompareEqualTo)
          {
            theString1 = @"0.0.0.0";
            CFDictionarySetValue(theDict, @"raI2", @"0.0.0.0");
          }

          v19 = sub_23EBD4990(theDict);
          if (v19)
          {
            return v19;
          }

          v19 = sub_23EBD500C(theDict);
          if (v19)
          {
            return v19;
          }

          if (v17 == ++v18)
          {
            return 0;
          }
        }

        return v19;
      }

      return 0;
    }

    return v4;
  }

  return sub_23EB9798C(a1, propertyList, a4);
}

uint64_t sub_23EB92884(uint64_t a1, uint64_t a2, __CFString **a3, _BYTE *a4)
{
  v11 = a1;
  pthread_mutex_lock((a1 + 392));
  ++*(a1 + 456);
  v8 = sub_23EB9201C(a1, a2, a3, a4, 0);
  v9 = v8;
  if (a3 && !v8 && *a3)
  {
    if ((*a4 & 1) == 0)
    {
      CFRetain(*a3);
    }

    *a4 = 1;
  }

  sub_23EBADBC0(&v11);
  return v9;
}

void sub_23EB92924(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EBADBC0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23EB92938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 23) >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  v9 = sub_23EB9AC64(v8);
  if (v9 <= 1651722063)
  {
    if (v9 <= 1651721039)
    {
      if (v9 <= 1651718220)
      {
        if (v9 <= 1651717696)
        {
          if (v9 > 1651717453)
          {
            if (v9 == 1651717454)
            {
              v10 = *(*a1 + 848);
              v11 = a1;
              v12 = a2;
              v13 = a3;
              v14 = a4;

              return v10(v11, v12, v13, v14);
            }

            if (v9 == 1651717459)
            {
              v10 = *(*a1 + 864);
              v11 = a1;
              v12 = a2;
              v13 = a3;
              v14 = a4;

              return v10(v11, v12, v13, v14);
            }
          }

          else
          {
            if (v9 == 1651716685)
            {
              v10 = *(*a1 + 896);
              v11 = a1;
              v12 = a2;
              v13 = a3;
              v14 = a4;

              return v10(v11, v12, v13, v14);
            }

            if (v9 == 1651717453)
            {
              v10 = *(*a1 + 880);
              v11 = a1;
              v12 = a2;
              v13 = a3;
              v14 = a4;

              return v10(v11, v12, v13, v14);
            }
          }
        }

        else if (v9 <= 1651717708)
        {
          if (v9 == 1651717697)
          {
            v10 = *(*a1 + 1168);
            v11 = a1;
            v12 = a2;
            v13 = a3;
            v14 = a4;

            return v10(v11, v12, v13, v14);
          }

          if (v9 == 1651717699)
          {
            v10 = *(*a1 + 1104);
            v11 = a1;
            v12 = a2;
            v13 = a3;
            v14 = a4;

            return v10(v11, v12, v13, v14);
          }
        }

        else
        {
          switch(v9)
          {
            case 1651717709:
              v10 = *(*a1 + 1120);
              v11 = a1;
              v12 = a2;
              v13 = a3;
              v14 = a4;

              return v10(v11, v12, v13, v14);
            case 1651717712:
              v10 = *(*a1 + 1200);
              v11 = a1;
              v12 = a2;
              v13 = a3;
              v14 = a4;

              return v10(v11, v12, v13, v14);
            case 1651717715:
              v10 = *(*a1 + 1136);
              v11 = a1;
              v12 = a2;
              v13 = a3;
              v14 = a4;

              return v10(v11, v12, v13, v14);
          }
        }
      }

      else if (v9 > 1651720787)
      {
        if (v9 <= 1651720790)
        {
          if (v9 == 1651720788)
          {
            v10 = *(*a1 + 1088);
            v11 = a1;
            v12 = a2;
            v13 = a3;
            v14 = a4;

            return v10(v11, v12, v13, v14);
          }

          if (v9 == 1651720789)
          {
            v10 = *(*a1 + 992);
            v11 = a1;
            v12 = a2;
            v13 = a3;
            v14 = a4;

            return v10(v11, v12, v13, v14);
          }
        }

        else
        {
          switch(v9)
          {
            case 1651720791:
              v10 = *(*a1 + 776);
              v11 = a1;
              v12 = a2;
              v13 = a3;
              v14 = a4;

              return v10(v11, v12, v13, v14);
            case 1651721025:
              v10 = *(*a1 + 1184);
              v11 = a1;
              v12 = a2;
              v13 = a3;
              v14 = a4;

              return v10(v11, v12, v13, v14);
            case 1651721027:
              v10 = *(*a1 + 232);
              v11 = a1;
              v12 = a2;
              v13 = a3;
              v14 = a4;

              return v10(v11, v12, v13, v14);
          }
        }
      }

      else if (v9 <= 1651720518)
      {
        if (v9 == 1651718221)
        {
          v10 = *(*a1 + 824);
          v11 = a1;
          v12 = a2;
          v13 = a3;
          v14 = a4;

          return v10(v11, v12, v13, v14);
        }

        if (v9 == 1651720515)
        {
          v10 = *(*a1 + 152);
          v11 = a1;
          v12 = a2;
          v13 = a3;
          v14 = a4;

          return v10(v11, v12, v13, v14);
        }
      }

      else
      {
        switch(v9)
        {
          case 1651720519:
            v10 = *(*a1 + 928);
            v11 = a1;
            v12 = a2;
            v13 = a3;
            v14 = a4;

            return v10(v11, v12, v13, v14);
          case 1651720521:
            v10 = *(*a1 + 912);
            v11 = a1;
            v12 = a2;
            v13 = a3;
            v14 = a4;

            return v10(v11, v12, v13, v14);
          case 1651720532:
            v10 = *(*a1 + 456);
            v11 = a1;
            v12 = a2;
            v13 = a3;
            v14 = a4;

            return v10(v11, v12, v13, v14);
        }
      }
    }

    else if (v9 > 1651721796)
    {
      if (v9 > 1651722051)
      {
        if (v9 <= 1651722058)
        {
          if (v9 == 1651722052)
          {
            v10 = *(*a1 + 696);
            v11 = a1;
            v12 = a2;
            v13 = a3;
            v14 = a4;

            return v10(v11, v12, v13, v14);
          }

          if (v9 == 1651722053)
          {
            v10 = *(*a1 + 632);
            v11 = a1;
            v12 = a2;
            v13 = a3;
            v14 = a4;

            return v10(v11, v12, v13, v14);
          }
        }

        else
        {
          switch(v9)
          {
            case 1651722059:
              v10 = *(*a1 + 424);
              v11 = a1;
              v12 = a2;
              v13 = a3;
              v14 = a4;

              return v10(v11, v12, v13, v14);
            case 1651722061:
              v10 = *(*a1 + 792);
              v11 = a1;
              v12 = a2;
              v13 = a3;
              v14 = a4;

              return v10(v11, v12, v13, v14);
            case 1651722062:
              v10 = *(*a1 + 648);
              v11 = a1;
              v12 = a2;
              v13 = a3;
              v14 = a4;

              return v10(v11, v12, v13, v14);
          }
        }
      }

      else if (v9 <= 1651721810)
      {
        if (v9 == 1651721797)
        {
          v10 = *(*a1 + 1152);
          v11 = a1;
          v12 = a2;
          v13 = a3;
          v14 = a4;

          return v10(v11, v12, v13, v14);
        }

        if (v9 == 1651721805)
        {
          v10 = *(*a1 + 536);
          v11 = a1;
          v12 = a2;
          v13 = a3;
          v14 = a4;

          return v10(v11, v12, v13, v14);
        }
      }

      else
      {
        switch(v9)
        {
          case 1651721811:
            v10 = *(*a1 + 472);
            v11 = a1;
            v12 = a2;
            v13 = a3;
            v14 = a4;

            return v10(v11, v12, v13, v14);
          case 1651722049:
            v10 = *(*a1 + 520);
            v11 = a1;
            v12 = a2;
            v13 = a3;
            v14 = a4;

            return v10(v11, v12, v13, v14);
          case 1651722051:
            v10 = *(*a1 + 712);
            v11 = a1;
            v12 = a2;
            v13 = a3;
            v14 = a4;

            return v10(v11, v12, v13, v14);
        }
      }
    }

    else if (v9 > 1651721293)
    {
      if (v9 <= 1651721298)
      {
        if (v9 == 1651721294)
        {
          v10 = *(*a1 + 1040);
          v11 = a1;
          v12 = a2;
          v13 = a3;
          v14 = a4;

          return v10(v11, v12, v13, v14);
        }

        if (v9 == 1651721296)
        {
          v10 = *(*a1 + 40);
          v11 = a1;
          v12 = a2;
          v13 = a3;
          v14 = a4;

          return v10(v11, v12, v13, v14);
        }
      }

      else
      {
        switch(v9)
        {
          case 1651721299:
            v10 = *(*a1 + 1056);
            v11 = a1;
            v12 = a2;
            v13 = a3;
            v14 = a4;

            return v10(v11, v12, v13, v14);
          case 1651721539:
            v10 = *(*a1 + 1008);
            v11 = a1;
            v12 = a2;
            v13 = a3;
            v14 = a4;

            return v10(v11, v12, v13, v14);
          case 1651721552:
            v10 = *(*a1 + 1024);
            v11 = a1;
            v12 = a2;
            v13 = a3;
            v14 = a4;

            return v10(v11, v12, v13, v14);
        }
      }
    }

    else if (v9 <= 1651721280)
    {
      if (v9 == 1651721040)
      {
        v10 = *(*a1 + 1216);
        v11 = a1;
        v12 = a2;
        v13 = a3;
        v14 = a4;

        return v10(v11, v12, v13, v14);
      }

      if (v9 == 1651721068)
      {
        v10 = *(*a1 + 1072);
        v11 = a1;
        v12 = a2;
        v13 = a3;
        v14 = a4;

        return v10(v11, v12, v13, v14);
      }
    }

    else
    {
      switch(v9)
      {
        case 1651721281:
          v10 = *(*a1 + 584);
          v11 = a1;
          v12 = a2;
          v13 = a3;
          v14 = a4;

          return v10(v11, v12, v13, v14);
        case 1651721282:
          v10 = *(*a1 + 760);
          v11 = a1;
          v12 = a2;
          v13 = a3;
          v14 = a4;

          return v10(v11, v12, v13, v14);
        case 1651721289:
          v10 = *(*a1 + 200);
          v11 = a1;
          v12 = a2;
          v13 = a3;
          v14 = a4;

          return v10(v11, v12, v13, v14);
      }
    }

    return 4294967292;
  }

  if (v9 > 1651724879)
  {
    if (v9 <= 1651725647)
    {
      if (v9 > 1651725142)
      {
        if (v9 <= 1651725401)
        {
          if (v9 == 1651725143)
          {
            v10 = *(*a1 + 360);
            v11 = a1;
            v12 = a2;
            v13 = a3;
            v14 = a4;

            return v10(v11, v12, v13, v14);
          }

          if (v9 == 1651725392)
          {
            v10 = *(*a1 + 216);
            v11 = a1;
            v12 = a2;
            v13 = a3;
            v14 = a4;

            return v10(v11, v12, v13, v14);
          }
        }

        else
        {
          switch(v9)
          {
            case 1651725402:
              v10 = *(*a1 + 552);
              v11 = a1;
              v12 = a2;
              v13 = a3;
              v14 = a4;

              return v10(v11, v12, v13, v14);
            case 1651725633:
              v10 = *(*a1 + 184);
              v11 = a1;
              v12 = a2;
              v13 = a3;
              v14 = a4;

              return v10(v11, v12, v13, v14);
            case 1651725634:
              v10 = *(*a1 + 744);
              v11 = a1;
              v12 = a2;
              v13 = a3;
              v14 = a4;

              return v10(v11, v12, v13, v14);
          }
        }
      }

      else
      {
        if (v9 > 1651725132)
        {
          switch(v9)
          {
            case 1651725133:
              v10 = *(*a1 + 104);
              v11 = a1;
              v12 = a2;
              v13 = a3;
              v14 = a4;

              return v10(v11, v12, v13, v14);
            case 1651725134:
              v10 = *(*a1 + 344);
              v11 = a1;
              v12 = a2;
              v13 = a3;
              v14 = a4;

              return v10(v11, v12, v13, v14);
            case 1651725139:
              v10 = *(*a1 + 568);
              v11 = a1;
              v12 = a2;
              v13 = a3;
              v14 = a4;

              return v10(v11, v12, v13, v14);
          }

          return 4294967292;
        }

        if (v9 == 1651724880)
        {
          v10 = *(*a1 + 376);
          v11 = a1;
          v12 = a2;
          v13 = a3;
          v14 = a4;

          return v10(v11, v12, v13, v14);
        }

        if (v9 == 1651725131)
        {
LABEL_174:
          v10 = *(*a1 + 72);
          v11 = a1;
          v12 = a2;
          v13 = a3;
          v14 = a4;

          return v10(v11, v12, v13, v14);
        }
      }

      return 4294967292;
    }

    if (v9 <= 1651726159)
    {
      if (v9 <= 1651726146)
      {
        if (v9 == 1651725648)
        {
          v10 = *(*a1 + 832);
          v11 = a1;
          v12 = a2;
          v13 = a3;
          v14 = a4;

          return v10(v11, v12, v13, v14);
        }

        if (v9 == 1651725651)
        {
          v10 = *(*a1 + 960);
          v11 = a1;
          v12 = a2;
          v13 = a3;
          v14 = a4;

          return v10(v11, v12, v13, v14);
        }
      }

      else
      {
        switch(v9)
        {
          case 1651726147:
            v10 = *(*a1 + 408);
            v11 = a1;
            v12 = a2;
            v13 = a3;
            v14 = a4;

            return v10(v11, v12, v13, v14);
          case 1651726150:
            v10 = *(*a1 + 504);
            v11 = a1;
            v12 = a2;
            v13 = a3;
            v14 = a4;

            return v10(v11, v12, v13, v14);
          case 1651726157:
            v10 = *(*a1 + 296);
            v11 = a1;
            v12 = a2;
            v13 = a3;
            v14 = a4;

            return v10(v11, v12, v13, v14);
        }
      }

      return 4294967292;
    }

    if (v9 <= 1651733075)
    {
      if (v9 == 1651726160)
      {
        v10 = *(*a1 + 392);
        v11 = a1;
        v12 = a2;
        v13 = a3;
        v14 = a4;

        return v10(v11, v12, v13, v14);
      }

      if (v9 == 1651726165)
      {
        v10 = *(*a1 + 976);
        v11 = a1;
        v12 = a2;
        v13 = a3;
        v14 = a4;

        return v10(v11, v12, v13, v14);
      }

      return 4294967292;
    }

    if (v9 == 1651733076)
    {
      v10 = *(*a1 + 136);
      v11 = a1;
      v12 = a2;
      v13 = a3;
      v14 = a4;

      return v10(v11, v12, v13, v14);
    }

    if (v9 == 1918976882)
    {
      goto LABEL_174;
    }

    v16 = 1918979693;
LABEL_111:
    if (v9 == v16)
    {
      v10 = *(*a1 + 88);
      v11 = a1;
      v12 = a2;
      v13 = a3;
      v14 = a4;

      return v10(v11, v12, v13, v14);
    }

    return 4294967292;
  }

  if (v9 <= 1651724354)
  {
    if (v9 <= 1651723636)
    {
      if (v9 > 1651722562)
      {
        if (v9 == 1651722563)
        {
          v10 = *(*a1 + 168);
          v11 = a1;
          v12 = a2;
          v13 = a3;
          v14 = a4;

          return v10(v11, v12, v13, v14);
        }

        if (v9 == 1651722583)
        {
          v10 = *(*a1 + 600);
          v11 = a1;
          v12 = a2;
          v13 = a3;
          v14 = a4;

          return v10(v11, v12, v13, v14);
        }
      }

      else
      {
        if (v9 == 1651722064)
        {
          v10 = *(*a1 + 680);
          v11 = a1;
          v12 = a2;
          v13 = a3;
          v14 = a4;

          return v10(v11, v12, v13, v14);
        }

        if (v9 == 1651722067)
        {
          v10 = *(*a1 + 664);
          v11 = a1;
          v12 = a2;
          v13 = a3;
          v14 = a4;

          return v10(v11, v12, v13, v14);
        }
      }
    }

    else if (v9 <= 1651723855)
    {
      if (v9 == 1651723637)
      {
        v10 = *(*a1 + 808);
        v11 = a1;
        v12 = a2;
        v13 = a3;
        v14 = a4;

        return v10(v11, v12, v13, v14);
      }

      if (v9 == 1651723853)
      {
        v10 = *(*a1 + 440);
        v11 = a1;
        v12 = a2;
        v13 = a3;
        v14 = a4;

        return v10(v11, v12, v13, v14);
      }
    }

    else
    {
      switch(v9)
      {
        case 1651723856:
          v10 = *(*a1 + 248);
          v11 = a1;
          v12 = a2;
          v13 = a3;
          v14 = a4;

          return v10(v11, v12, v13, v14);
        case 1651724337:
          v10 = *(*a1 + 264);
          v11 = a1;
          v12 = a2;
          v13 = a3;
          v14 = a4;

          return v10(v11, v12, v13, v14);
        case 1651724338:
          v10 = *(*a1 + 280);
          v11 = a1;
          v12 = a2;
          v13 = a3;
          v14 = a4;

          return v10(v11, v12, v13, v14);
      }
    }

    return 4294967292;
  }

  v15 = 0;
  if (v9 > 1651724372)
  {
    if (v9 > 1651724869)
    {
      if (v9 == 1651724870)
      {
        v10 = *(*a1 + 488);
        v11 = a1;
        v12 = a2;
        v13 = a3;
        v14 = a4;

        return v10(v11, v12, v13, v14);
      }

      if (v9 == 1651724877)
      {
        v10 = *(*a1 + 328);
        v11 = a1;
        v12 = a2;
        v13 = a3;
        v14 = a4;

        return v10(v11, v12, v13, v14);
      }

      v16 = 1651724878;
      goto LABEL_111;
    }

    if (v9 != 1651724373)
    {
      if (v9 == 1651724867)
      {
        v10 = *(*a1 + 120);
        v11 = a1;
        v12 = a2;
        v13 = a3;
        v14 = a4;

        return v10(v11, v12, v13, v14);
      }

      return 4294967292;
    }
  }

  else
  {
    if (v9 <= 1651724357)
    {
      if (v9 == 1651724355)
      {
        v10 = *(*a1 + 312);
        v11 = a1;
        v12 = a2;
        v13 = a3;
        v14 = a4;

        return v10(v11, v12, v13, v14);
      }

      if (v9 == 1651724357)
      {
        v10 = *(*a1 + 728);
        v11 = a1;
        v12 = a2;
        v13 = a3;
        v14 = a4;

        return v10(v11, v12, v13, v14);
      }

      return 4294967292;
    }

    if (v9 == 1651724358)
    {
      v10 = *(*a1 + 944);
      v11 = a1;
      v12 = a2;
      v13 = a3;
      v14 = a4;

      return v10(v11, v12, v13, v14);
    }

    if (v9 != 1651724368)
    {
      if (v9 == 1651724371)
      {
        v10 = *(*a1 + 616);
        v11 = a1;
        v12 = a2;
        v13 = a3;
        v14 = a4;

        return v10(v11, v12, v13, v14);
      }

      return 4294967292;
    }
  }

  return v15;
}

uint64_t sub_23EB94960(CFDictionaryRef *a1, uint64_t a2, CFMutableDictionaryRef *a3, uint64_t a4)
{
  v50 = *MEMORY[0x277D85DE8];
  memset(&__p, 0, sizeof(__p));
  v45 = 0;
  cf = 0;
  if (!a3)
  {
    v8 = 0;
    v9 = 0;
    v11 = 4294967292;
    goto LABEL_16;
  }

  *a3 = 0;
  std::string::basic_string(&__dst, a2, 0, 4uLL, &__str);
  v8 = __dst.__r_.__value_.__r.__words[0];
  v9 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if (*(a2 + 23) >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  v11 = sub_23EB4BD54(v10, 4uLL, &v45);
  if (!v11)
  {
    v12 = sub_23EB8C68C(a1, v45, &cf, a4);
    v11 = v12;
    if (v12 == -5)
    {
      if (dword_27E381AB0 <= 8000 && (dword_27E381AB0 != -1 || sub_23EB74AC8(&dword_27E381AB0, 0x1F40u)))
      {
        if (*(a2 + 23) >= 0)
        {
          v17 = a2;
        }

        else
        {
          v17 = *a2;
        }

        sub_23EB75374(&dword_27E381AB0, "ACPStatus BaseStation::GetPropertyCFInternal(const std::string &, CFTypeRef *, eWhichValue) const", 8000, "Need default value for %s\n", v13, v14, v15, v16, v17);
      }

      v11 = 4294967291;
      goto LABEL_16;
    }

    if (a4 != 2 || !v12)
    {
      v19 = *(a2 + 23);
      if ((v19 & 0x80u) != 0)
      {
        v19 = *(a2 + 8);
      }

      if (v19 >= 5)
      {
        std::string::basic_string(&__dst, a2, 5uLL, 0xFFFFFFFFFFFFFFFFLL, &__str);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        __p = __dst;
      }

      if (cf)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        if (!size)
        {
          *a3 = cf;
          goto LABEL_16;
        }

        v21 = CFGetTypeID(cf);
        if (v21 != CFDictionaryGetTypeID())
        {
          v22 = CFGetTypeID(cf);
          if (v22 != CFArrayGetTypeID())
          {
            v11 = 4294960540;
            goto LABEL_16;
          }
        }

        if (sub_23EB8E208(a1, a2))
        {
          if (*(a2 + 23) < 0)
          {
            sub_23EBADCE0(&__dst, *a2, *(a2 + 8));
          }

          else
          {
            __dst = *a2;
          }

          if (!sub_23EB8E37C(&__dst, "WiFi.radios.[*].", 0))
          {
            v23 = sub_23EB8F4AC(a1, 0);
            snprintf(&__str, 0x10uLL, "%ld", v23);
            v24 = sub_23EB8E37C(&__dst, "*", 0);
            std::string::replace(&__dst, v24, 1uLL, &__str);
          }

          v25 = sub_23EB95194(a1, &__dst, a3, a4);
        }

        else
        {
          if (*(a2 + 23) < 0)
          {
            sub_23EBADCE0(&__dst, *a2, *(a2 + 8));
          }

          else
          {
            __dst = *a2;
          }

          if (!sub_23EB8E37C(&__dst, "WiFi.radios.[*].", 0))
          {
            v26 = sub_23EB8F4AC(a1, 0);
            snprintf(__s, 0x10uLL, "%ld", v26);
            v27 = sub_23EB8E37C(&__dst, "*", 0);
            std::string::replace(&__dst, v27, 1uLL, __s);
            std::string::basic_string(&__str, &__dst, 5uLL, 0xFFFFFFFFFFFFFFFFLL, &v47);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            __p = __str;
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          if (sub_23EB9AC64(p_p) == 2003061875)
          {
            sub_23EB8CCB8(&__str, "legacywds");
            sub_23EB90814(&__p, &__str, &__p);
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }
          }

          if (sub_23EB8E37C(a2, "vaps.[*]", 0) != -1)
          {
            v11 = (*(*a1 + 3))(a1, cf, a2, 0, &__p);
            if (v11)
            {
              goto LABEL_74;
            }
          }

          v34 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          sub_23EB6FF14(cf, a3, v34, v29, v30, v31, v32, v33, v42);
          v11 = v35;
          if (v35 != -5 && v35 != -6727)
          {
            goto LABEL_74;
          }

          if (a4 == 2)
          {
            v11 = sub_23EB8CFF0(a1, a2, a3);
            if (!v11)
            {
              if (*a3)
              {
                if (*(a2 + 23) >= 0)
                {
                  v41 = a2;
                }

                else
                {
                  v41 = *a2;
                }

                v11 = sub_23EB6FDFC(*MEMORY[0x277CBECE8], a1[6], "%ks=%O", v36, v37, v38, v39, v40, v41);
                CFRelease(*a3);
              }

              else
              {
                v11 = 0;
              }
            }

            goto LABEL_74;
          }

          v25 = sub_23EB94960(a1, a2, a3, 2);
        }

        v11 = v25;
LABEL_74:
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }
      }
    }
  }

LABEL_16:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v9 & 0x80) == 0)
    {
      return v11;
    }

LABEL_20:
    operator delete(v8);
    return v11;
  }

  if (v9 < 0)
  {
    goto LABEL_20;
  }

  return v11;
}

void sub_23EB94EAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (v33 < 0)
  {
    operator delete(v32);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EB94F30(int a1, std::string *__str, const __CFString *a3, void *a4, _BYTE *a5)
{
  result = 4294967292;
  if (a4 && a5)
  {
    if (!a3)
    {
      result = 0;
      *a4 = 0;
      *a5 = 0;
      return result;
    }

    v19 = 0;
    v18 = 0;
    sub_23EB8DCF4(__str, &v18, 0);
    result = sub_23EB9AE88(v10, __str, &v19 + 1, &v19);
    if (!result)
    {
      v11 = CFGetTypeID(a3);
      result = 4294967286;
      if (SHIDWORD(v19) <= 6)
      {
        if (SHIDWORD(v19) > 3)
        {
          if (HIDWORD(v19) == 4)
          {
            if (v11 != CFBooleanGetTypeID())
            {
              goto LABEL_38;
            }

            valuePtr = *MEMORY[0x277CBED10] != a3;
            v14 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt16Type, &valuePtr);
            *a4 = v14;
            if (!v14)
            {
              return 4294967293;
            }

            result = 0;
          }

          else
          {
            if (HIDWORD(v19) != 5)
            {
              TypeID = CFBooleanGetTypeID();
              goto LABEL_39;
            }

            if (v19 != 8 || v11 != CFBooleanGetTypeID())
            {
              goto LABEL_38;
            }

            v15 = v18;
            v16 = CFNumberGetTypeID();
            result = sub_23EBD4E00(v15, a3, v16, a4);
            if (result)
            {
              return result;
            }
          }

          *a5 = 1;
          return result;
        }

        if (HIDWORD(v19) != 1)
        {
          if (HIDWORD(v19) == 2)
          {
            TypeID = CFStringGetTypeID();
            goto LABEL_39;
          }

          if (HIDWORD(v19) != 3)
          {
            return result;
          }

LABEL_38:
          TypeID = CFNumberGetTypeID();
LABEL_39:
          if (v11 != TypeID)
          {
            return 4294967292;
          }

          goto LABEL_44;
        }

LABEL_25:
        TypeID = CFDataGetTypeID();
        goto LABEL_39;
      }

      if (SHIDWORD(v19) <= 10)
      {
        switch(HIDWORD(v19))
        {
          case 7:
            if (v11 == CFStringGetTypeID())
            {
              v13 = @"0.0.0.0";
              goto LABEL_43;
            }

            break;
          case 8:
            if (v11 == CFStringGetTypeID())
            {
              v13 = @"00:00:00:00:00:00";
              goto LABEL_43;
            }

            break;
          case 9:
            goto LABEL_44;
          default:
            return result;
        }

        return 4294967292;
      }

      if (HIDWORD(v19) == 11)
      {
        goto LABEL_25;
      }

      if (HIDWORD(v19) != 12)
      {
        if (HIDWORD(v19) != 13)
        {
          return result;
        }

        if (v11 == CFDictionaryGetTypeID())
        {
          goto LABEL_44;
        }

        TypeID = CFArrayGetTypeID();
        goto LABEL_39;
      }

      if (v11 != CFStringGetTypeID())
      {
        return 4294967292;
      }

      v13 = @"::";
LABEL_43:
      result = CFStringCompare(a3, v13, 0);
      if (!result)
      {
        *a4 = &stru_285145FE8;
        return result;
      }

LABEL_44:
      result = 0;
      *a4 = a3;
    }
  }

  return result;
}

uint64_t sub_23EB95194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 23) >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  v9 = sub_23EB9AC64(v8);
  if (v9 > 1651722063)
  {
    if (v9 <= 1651724879)
    {
      if (v9 <= 1651724354)
      {
        if (v9 <= 1651723636)
        {
          if (v9 > 1651722562)
          {
            if (v9 == 1651722563)
            {
              v10 = *(*a1 + 160);
              v11 = a1;
              v12 = a2;
              v13 = a3;
              v14 = a4;

              return v10(v11, v12, v13, v14);
            }

            if (v9 == 1651722583)
            {
              v10 = *(*a1 + 592);
              v11 = a1;
              v12 = a2;
              v13 = a3;
              v14 = a4;

              return v10(v11, v12, v13, v14);
            }
          }

          else
          {
            if (v9 == 1651722064)
            {
              v10 = *(*a1 + 672);
              v11 = a1;
              v12 = a2;
              v13 = a3;
              v14 = a4;

              return v10(v11, v12, v13, v14);
            }

            if (v9 == 1651722067)
            {
              v10 = *(*a1 + 656);
              v11 = a1;
              v12 = a2;
              v13 = a3;
              v14 = a4;

              return v10(v11, v12, v13, v14);
            }
          }
        }

        else if (v9 <= 1651723855)
        {
          if (v9 == 1651723637)
          {
            v10 = *(*a1 + 800);
            v11 = a1;
            v12 = a2;
            v13 = a3;
            v14 = a4;

            return v10(v11, v12, v13, v14);
          }

          if (v9 == 1651723853)
          {
            v10 = *(*a1 + 432);
            v11 = a1;
            v12 = a2;
            v13 = a3;
            v14 = a4;

            return v10(v11, v12, v13, v14);
          }
        }

        else
        {
          switch(v9)
          {
            case 1651723856:
              v10 = *(*a1 + 240);
              v11 = a1;
              v12 = a2;
              v13 = a3;
              v14 = a4;

              return v10(v11, v12, v13, v14);
            case 1651724337:
              v10 = *(*a1 + 256);
              v11 = a1;
              v12 = a2;
              v13 = a3;
              v14 = a4;

              return v10(v11, v12, v13, v14);
            case 1651724338:
              v10 = *(*a1 + 272);
              v11 = a1;
              v12 = a2;
              v13 = a3;
              v14 = a4;

              return v10(v11, v12, v13, v14);
          }
        }

        return 4294967292;
      }

      if (v9 <= 1651724372)
      {
        if (v9 <= 1651724357)
        {
          if (v9 == 1651724355)
          {
            v10 = *(*a1 + 304);
            v11 = a1;
            v12 = a2;
            v13 = a3;
            v14 = a4;

            return v10(v11, v12, v13, v14);
          }

          if (v9 == 1651724357)
          {
            v10 = *(*a1 + 720);
            v11 = a1;
            v12 = a2;
            v13 = a3;
            v14 = a4;

            return v10(v11, v12, v13, v14);
          }
        }

        else
        {
          switch(v9)
          {
            case 1651724358:
              v10 = *(*a1 + 952);
              v11 = a1;
              v12 = a2;
              v13 = a3;
              v14 = a4;

              return v10(v11, v12, v13, v14);
            case 1651724368:
              v10 = *(*a1 + 56);
              v11 = a1;
              v12 = a2;
              v13 = a3;
              v14 = a4;

              return v10(v11, v12, v13, v14);
            case 1651724371:
              v10 = *(*a1 + 608);
              v11 = a1;
              v12 = a2;
              v13 = a3;
              v14 = a4;

              return v10(v11, v12, v13, v14);
          }
        }

        return 4294967292;
      }

      if (v9 <= 1651724869)
      {
        if (v9 == 1651724373)
        {
          v10 = *(*a1 + 48);
          v11 = a1;
          v12 = a2;
          v13 = a3;
          v14 = a4;

          return v10(v11, v12, v13, v14);
        }

        if (v9 == 1651724867)
        {
          v10 = *(*a1 + 112);
          v11 = a1;
          v12 = a2;
          v13 = a3;
          v14 = a4;

          return v10(v11, v12, v13, v14);
        }

        return 4294967292;
      }

      if (v9 == 1651724870)
      {
        v10 = *(*a1 + 480);
        v11 = a1;
        v12 = a2;
        v13 = a3;
        v14 = a4;

        return v10(v11, v12, v13, v14);
      }

      if (v9 == 1651724877)
      {
        v10 = *(*a1 + 320);
        v11 = a1;
        v12 = a2;
        v13 = a3;
        v14 = a4;

        return v10(v11, v12, v13, v14);
      }

      v15 = 1651724878;
    }

    else
    {
      if (v9 <= 1651725647)
      {
        if (v9 > 1651725142)
        {
          if (v9 <= 1651725401)
          {
            if (v9 == 1651725143)
            {
              v10 = *(*a1 + 352);
              v11 = a1;
              v12 = a2;
              v13 = a3;
              v14 = a4;

              return v10(v11, v12, v13, v14);
            }

            if (v9 == 1651725392)
            {
              v10 = *(*a1 + 208);
              v11 = a1;
              v12 = a2;
              v13 = a3;
              v14 = a4;

              return v10(v11, v12, v13, v14);
            }
          }

          else
          {
            switch(v9)
            {
              case 1651725402:
                v10 = *(*a1 + 544);
                v11 = a1;
                v12 = a2;
                v13 = a3;
                v14 = a4;

                return v10(v11, v12, v13, v14);
              case 1651725633:
                v10 = *(*a1 + 176);
                v11 = a1;
                v12 = a2;
                v13 = a3;
                v14 = a4;

                return v10(v11, v12, v13, v14);
              case 1651725634:
                v10 = *(*a1 + 736);
                v11 = a1;
                v12 = a2;
                v13 = a3;
                v14 = a4;

                return v10(v11, v12, v13, v14);
            }
          }

          return 4294967292;
        }

        if (v9 > 1651725132)
        {
          switch(v9)
          {
            case 1651725133:
              v10 = *(*a1 + 96);
              v11 = a1;
              v12 = a2;
              v13 = a3;
              v14 = a4;

              return v10(v11, v12, v13, v14);
            case 1651725134:
              v10 = *(*a1 + 336);
              v11 = a1;
              v12 = a2;
              v13 = a3;
              v14 = a4;

              return v10(v11, v12, v13, v14);
            case 1651725139:
              v10 = *(*a1 + 560);
              v11 = a1;
              v12 = a2;
              v13 = a3;
              v14 = a4;

              return v10(v11, v12, v13, v14);
          }

          return 4294967292;
        }

        if (v9 == 1651724880)
        {
          v10 = *(*a1 + 368);
          v11 = a1;
          v12 = a2;
          v13 = a3;
          v14 = a4;

          return v10(v11, v12, v13, v14);
        }

        if (v9 != 1651725131)
        {
          return 4294967292;
        }

LABEL_174:
        v10 = *(*a1 + 64);
        v11 = a1;
        v12 = a2;
        v13 = a3;
        v14 = a4;

        return v10(v11, v12, v13, v14);
      }

      if (v9 <= 1651726159)
      {
        if (v9 <= 1651726146)
        {
          if (v9 == 1651725648)
          {
            v10 = *(*a1 + 840);
            v11 = a1;
            v12 = a2;
            v13 = a3;
            v14 = a4;

            return v10(v11, v12, v13, v14);
          }

          if (v9 == 1651725651)
          {
            v10 = *(*a1 + 968);
            v11 = a1;
            v12 = a2;
            v13 = a3;
            v14 = a4;

            return v10(v11, v12, v13, v14);
          }
        }

        else
        {
          switch(v9)
          {
            case 1651726147:
              v10 = *(*a1 + 400);
              v11 = a1;
              v12 = a2;
              v13 = a3;
              v14 = a4;

              return v10(v11, v12, v13, v14);
            case 1651726150:
              v10 = *(*a1 + 496);
              v11 = a1;
              v12 = a2;
              v13 = a3;
              v14 = a4;

              return v10(v11, v12, v13, v14);
            case 1651726157:
              v10 = *(*a1 + 288);
              v11 = a1;
              v12 = a2;
              v13 = a3;
              v14 = a4;

              return v10(v11, v12, v13, v14);
          }
        }

        return 4294967292;
      }

      if (v9 <= 1651733075)
      {
        if (v9 == 1651726160)
        {
          v10 = *(*a1 + 384);
          v11 = a1;
          v12 = a2;
          v13 = a3;
          v14 = a4;

          return v10(v11, v12, v13, v14);
        }

        if (v9 == 1651726165)
        {
          v10 = *(*a1 + 984);
          v11 = a1;
          v12 = a2;
          v13 = a3;
          v14 = a4;

          return v10(v11, v12, v13, v14);
        }

        return 4294967292;
      }

      if (v9 == 1651733076)
      {
        v10 = *(*a1 + 128);
        v11 = a1;
        v12 = a2;
        v13 = a3;
        v14 = a4;

        return v10(v11, v12, v13, v14);
      }

      if (v9 == 1918976882)
      {
        goto LABEL_174;
      }

      v15 = 1918979693;
    }

    if (v9 == v15)
    {
      v10 = *(*a1 + 80);
      v11 = a1;
      v12 = a2;
      v13 = a3;
      v14 = a4;

      return v10(v11, v12, v13, v14);
    }

    return 4294967292;
  }

  if (v9 <= 1651721039)
  {
    if (v9 <= 1651718220)
    {
      if (v9 <= 1651717696)
      {
        if (v9 > 1651717453)
        {
          if (v9 == 1651717454)
          {
            v10 = *(*a1 + 856);
            v11 = a1;
            v12 = a2;
            v13 = a3;
            v14 = a4;

            return v10(v11, v12, v13, v14);
          }

          if (v9 == 1651717459)
          {
            v10 = *(*a1 + 872);
            v11 = a1;
            v12 = a2;
            v13 = a3;
            v14 = a4;

            return v10(v11, v12, v13, v14);
          }
        }

        else
        {
          if (v9 == 1651716685)
          {
            v10 = *(*a1 + 904);
            v11 = a1;
            v12 = a2;
            v13 = a3;
            v14 = a4;

            return v10(v11, v12, v13, v14);
          }

          if (v9 == 1651717453)
          {
            v10 = *(*a1 + 888);
            v11 = a1;
            v12 = a2;
            v13 = a3;
            v14 = a4;

            return v10(v11, v12, v13, v14);
          }
        }
      }

      else if (v9 <= 1651717708)
      {
        if (v9 == 1651717697)
        {
          v10 = *(*a1 + 1176);
          v11 = a1;
          v12 = a2;
          v13 = a3;
          v14 = a4;

          return v10(v11, v12, v13, v14);
        }

        if (v9 == 1651717699)
        {
          v10 = *(*a1 + 1112);
          v11 = a1;
          v12 = a2;
          v13 = a3;
          v14 = a4;

          return v10(v11, v12, v13, v14);
        }
      }

      else
      {
        switch(v9)
        {
          case 1651717709:
            v10 = *(*a1 + 1128);
            v11 = a1;
            v12 = a2;
            v13 = a3;
            v14 = a4;

            return v10(v11, v12, v13, v14);
          case 1651717712:
            v10 = *(*a1 + 1208);
            v11 = a1;
            v12 = a2;
            v13 = a3;
            v14 = a4;

            return v10(v11, v12, v13, v14);
          case 1651717715:
            v10 = *(*a1 + 1144);
            v11 = a1;
            v12 = a2;
            v13 = a3;
            v14 = a4;

            return v10(v11, v12, v13, v14);
        }
      }
    }

    else if (v9 > 1651720787)
    {
      if (v9 <= 1651720790)
      {
        if (v9 == 1651720788)
        {
          v10 = *(*a1 + 1096);
          v11 = a1;
          v12 = a2;
          v13 = a3;
          v14 = a4;

          return v10(v11, v12, v13, v14);
        }

        if (v9 == 1651720789)
        {
          v10 = *(*a1 + 1000);
          v11 = a1;
          v12 = a2;
          v13 = a3;
          v14 = a4;

          return v10(v11, v12, v13, v14);
        }
      }

      else
      {
        switch(v9)
        {
          case 1651720791:
            v10 = *(*a1 + 768);
            v11 = a1;
            v12 = a2;
            v13 = a3;
            v14 = a4;

            return v10(v11, v12, v13, v14);
          case 1651721025:
            v10 = *(*a1 + 1192);
            v11 = a1;
            v12 = a2;
            v13 = a3;
            v14 = a4;

            return v10(v11, v12, v13, v14);
          case 1651721027:
            v10 = *(*a1 + 224);
            v11 = a1;
            v12 = a2;
            v13 = a3;
            v14 = a4;

            return v10(v11, v12, v13, v14);
        }
      }
    }

    else if (v9 <= 1651720518)
    {
      if (v9 == 1651718221)
      {
        v10 = *(*a1 + 816);
        v11 = a1;
        v12 = a2;
        v13 = a3;
        v14 = a4;

        return v10(v11, v12, v13, v14);
      }

      if (v9 == 1651720515)
      {
        v10 = *(*a1 + 144);
        v11 = a1;
        v12 = a2;
        v13 = a3;
        v14 = a4;

        return v10(v11, v12, v13, v14);
      }
    }

    else
    {
      switch(v9)
      {
        case 1651720519:
          v10 = *(*a1 + 936);
          v11 = a1;
          v12 = a2;
          v13 = a3;
          v14 = a4;

          return v10(v11, v12, v13, v14);
        case 1651720521:
          v10 = *(*a1 + 920);
          v11 = a1;
          v12 = a2;
          v13 = a3;
          v14 = a4;

          return v10(v11, v12, v13, v14);
        case 1651720532:
          v10 = *(*a1 + 448);
          v11 = a1;
          v12 = a2;
          v13 = a3;
          v14 = a4;

          return v10(v11, v12, v13, v14);
      }
    }
  }

  else if (v9 > 1651721796)
  {
    if (v9 > 1651722051)
    {
      if (v9 <= 1651722058)
      {
        if (v9 == 1651722052)
        {
          v10 = *(*a1 + 688);
          v11 = a1;
          v12 = a2;
          v13 = a3;
          v14 = a4;

          return v10(v11, v12, v13, v14);
        }

        if (v9 == 1651722053)
        {
          v10 = *(*a1 + 624);
          v11 = a1;
          v12 = a2;
          v13 = a3;
          v14 = a4;

          return v10(v11, v12, v13, v14);
        }
      }

      else
      {
        switch(v9)
        {
          case 1651722059:
            v10 = *(*a1 + 416);
            v11 = a1;
            v12 = a2;
            v13 = a3;
            v14 = a4;

            return v10(v11, v12, v13, v14);
          case 1651722061:
            v10 = *(*a1 + 784);
            v11 = a1;
            v12 = a2;
            v13 = a3;
            v14 = a4;

            return v10(v11, v12, v13, v14);
          case 1651722062:
            v10 = *(*a1 + 640);
            v11 = a1;
            v12 = a2;
            v13 = a3;
            v14 = a4;

            return v10(v11, v12, v13, v14);
        }
      }
    }

    else if (v9 <= 1651721810)
    {
      if (v9 == 1651721797)
      {
        v10 = *(*a1 + 1160);
        v11 = a1;
        v12 = a2;
        v13 = a3;
        v14 = a4;

        return v10(v11, v12, v13, v14);
      }

      if (v9 == 1651721805)
      {
        v10 = *(*a1 + 528);
        v11 = a1;
        v12 = a2;
        v13 = a3;
        v14 = a4;

        return v10(v11, v12, v13, v14);
      }
    }

    else
    {
      switch(v9)
      {
        case 1651721811:
          v10 = *(*a1 + 464);
          v11 = a1;
          v12 = a2;
          v13 = a3;
          v14 = a4;

          return v10(v11, v12, v13, v14);
        case 1651722049:
          v10 = *(*a1 + 512);
          v11 = a1;
          v12 = a2;
          v13 = a3;
          v14 = a4;

          return v10(v11, v12, v13, v14);
        case 1651722051:
          v10 = *(*a1 + 704);
          v11 = a1;
          v12 = a2;
          v13 = a3;
          v14 = a4;

          return v10(v11, v12, v13, v14);
      }
    }
  }

  else if (v9 > 1651721293)
  {
    if (v9 <= 1651721298)
    {
      if (v9 == 1651721294)
      {
        v10 = *(*a1 + 1048);
        v11 = a1;
        v12 = a2;
        v13 = a3;
        v14 = a4;

        return v10(v11, v12, v13, v14);
      }

      if (v9 == 1651721296)
      {
        v10 = *(*a1 + 32);
        v11 = a1;
        v12 = a2;
        v13 = a3;
        v14 = a4;

        return v10(v11, v12, v13, v14);
      }
    }

    else
    {
      switch(v9)
      {
        case 1651721299:
          v10 = *(*a1 + 1064);
          v11 = a1;
          v12 = a2;
          v13 = a3;
          v14 = a4;

          return v10(v11, v12, v13, v14);
        case 1651721539:
          v10 = *(*a1 + 1016);
          v11 = a1;
          v12 = a2;
          v13 = a3;
          v14 = a4;

          return v10(v11, v12, v13, v14);
        case 1651721552:
          v10 = *(*a1 + 1032);
          v11 = a1;
          v12 = a2;
          v13 = a3;
          v14 = a4;

          return v10(v11, v12, v13, v14);
      }
    }
  }

  else if (v9 <= 1651721280)
  {
    if (v9 == 1651721040)
    {
      v10 = *(*a1 + 1224);
      v11 = a1;
      v12 = a2;
      v13 = a3;
      v14 = a4;

      return v10(v11, v12, v13, v14);
    }

    if (v9 == 1651721068)
    {
      v10 = *(*a1 + 1080);
      v11 = a1;
      v12 = a2;
      v13 = a3;
      v14 = a4;

      return v10(v11, v12, v13, v14);
    }
  }

  else
  {
    switch(v9)
    {
      case 1651721281:
        v10 = *(*a1 + 576);
        v11 = a1;
        v12 = a2;
        v13 = a3;
        v14 = a4;

        return v10(v11, v12, v13, v14);
      case 1651721282:
        v10 = *(*a1 + 752);
        v11 = a1;
        v12 = a2;
        v13 = a3;
        v14 = a4;

        return v10(v11, v12, v13, v14);
      case 1651721289:
        v10 = *(*a1 + 192);
        v11 = a1;
        v12 = a2;
        v13 = a3;
        v14 = a4;

        return v10(v11, v12, v13, v14);
    }
  }

  return 4294967292;
}

uint64_t sub_23EB97254(int a1, int a2, const __CFString *a3, void *a4, _BYTE *a5)
{
  v9 = sub_23EB4BD2C(a2, v13);
  sub_23EB8CCB8(&__p, v9);
  v10 = sub_23EB94F30(a1, &__p, a3, a4, a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v10;
}

void sub_23EB972DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_23EB972F8(uint64_t a1, int a2)
{
  v3 = *(a1 + 200);
  v4 = *(a1 + 208);
  if (v4 == v3)
  {
    sub_23EB8A428(a1, 0);
    v3 = *(a1 + 200);
    v4 = *(a1 + 208);
  }

  v6 = v4 - v3;
  if (v6 < 0xC)
  {
    return 0;
  }

  v7 = v6 / 0xC - 1;
  do
  {
    v8 = *v3;
    v3 += 12;
    result = v8 == a2;
  }

  while (v8 != a2 && v7-- != 0);
  return result;
}

uint64_t sub_23EB97374(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  number = 0;
  v5 = sub_23EB912D0(a1, a2, &number, a4);
  if (!v5)
  {
    if (CFNumberGetValue(number, kCFNumberSInt32Type, a3))
    {
      v5 = 0;
    }

    else
    {
      v5 = 4294960553;
    }
  }

  if (number)
  {
    CFRelease(number);
  }

  return v5;
}

uint64_t sub_23EB973DC(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  valuePtr = a3;
  v7 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt16Type, &valuePtr);
  if (!v7)
  {
    return 4294960568;
  }

  v8 = v7;
  v9 = sub_23EB8FC04(a1, a2, v7, a4);
  CFRelease(v8);
  return v9;
}

uint64_t sub_23EB97464(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  number = 0;
  v5 = sub_23EB912D0(a1, a2, &number, a4);
  if (!v5)
  {
    if (CFNumberGetValue(number, kCFNumberSInt16Type, a3))
    {
      v5 = 0;
    }

    else
    {
      v5 = 4294960553;
    }
  }

  if (number)
  {
    CFRelease(number);
  }

  return v5;
}

uint64_t sub_23EB974CC(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  sub_23EB4BD2C(a2, __s);
  sub_23EB8CCB8(__p, __s);
  v7 = sub_23EB97464(a1, __p, a3, a4);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  return v7;
}

void sub_23EB9754C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EB97568(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v4 = MEMORY[0x277CBED28];
  if (!a3)
  {
    v4 = MEMORY[0x277CBED10];
  }

  return sub_23EB8FC04(a1, a2, *v4, a4);
}

uint64_t sub_23EB97588(uint64_t a1, uint64_t a2, BOOL *a3, uint64_t a4)
{
  BOOLean = 0;
  v5 = sub_23EB912D0(a1, a2, &BOOLean, a4);
  if (!v5)
  {
    *a3 = CFBooleanGetValue(BOOLean) != 0;
  }

  if (BOOLean)
  {
    CFRelease(BOOLean);
  }

  return v5;
}

uint64_t sub_23EB975E8(uint64_t a1, int a2, BOOL *a3, uint64_t a4)
{
  sub_23EB4BD2C(a2, __s);
  sub_23EB8CCB8(__p, __s);
  v7 = sub_23EB97588(a1, __p, a3, a4);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  return v7;
}

void sub_23EB97668(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EB97684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 23) >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = *a3;
  }

  v8 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], v7, 0x8000100u);
  if (!v8)
  {
    return 4294960568;
  }

  v9 = v8;
  v10 = sub_23EB8FC04(a1, a2, v8, a4);
  CFRelease(v9);
  return v10;
}

uint64_t sub_23EB97710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v13 = 0;
  cf = 0;
  v12 = 0;
  v5 = sub_23EB912D0(a1, a2, &cf, a4);
  v6 = cf;
  if (!v5 && cf)
  {
    v7 = CFGetTypeID(cf);
    TypeID = CFNumberGetTypeID();
    v9 = cf;
    if (v7 == TypeID)
    {
      valuePtr = 0;
      if (CFNumberGetValue(cf, kCFNumberSInt32Type, &valuePtr))
      {
        snprintf(__str, 0x20uLL, "%ld", valuePtr);
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        v9 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], __str, 0x8000100u);
        cf = v9;
        if (v9)
        {
          goto LABEL_8;
        }

        v5 = 4294967293;
      }

      else
      {
        v5 = 4294960553;
      }

LABEL_12:
      v6 = cf;
      goto LABEL_13;
    }

LABEL_8:
    v5 = sub_23EB70FE4(v9, &v13, &v12);
    if (!v5)
    {
      MEMORY[0x23EF1EFD0](a3, v13);
    }

    goto LABEL_12;
  }

LABEL_13:
  if (v6)
  {
    CFRelease(v6);
    cf = 0;
  }

  if (v12)
  {
    free(v12);
  }

  return v5;
}

uint64_t sub_23EB97854(uint64_t a1, CFDataRef theData, CFTypeRef *a3)
{
  result = 4294960591;
  if (theData && a3)
  {
    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(theData);
    *a3 = 0;
    if (BytePtr && (v9 = Length) != 0)
    {
      v13 = 0;
      v14 = 0;
      v10 = sub_23EB71C30(BytePtr, Length, &v14, &v13);
      v11 = *MEMORY[0x277CBECE8];
      if (v10)
      {
        result = sub_23EB6EC4C(*MEMORY[0x277CBECE8], BytePtr, v9, a3);
        if (result)
        {
          return result;
        }
      }

      else
      {
        v12 = CFDataCreate(*MEMORY[0x277CBECE8], v14, v13);
        free(v14);
        if (!v12)
        {
          return 4294960568;
        }

        *a3 = CFPropertyListCreateWithData(v11, v12, 2uLL, 0, 0);
        CFRelease(v12);
        if (!*a3)
        {
          return 4294960568;
        }
      }
    }

    else
    {
      *a3 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    result = 0;
    *(a1 + 373) = 1;
  }

  return result;
}

uint64_t sub_23EB9798C(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v16 = 0;
  v17 = 0;
  v3 = 4294960591;
  cf = 0;
  if (!a2 || !a3)
  {
LABEL_14:
    if (v17)
    {
      free(v17);
    }

    return v3;
  }

  v6 = sub_23EB9B238(a1, &cf);
  if (v6)
  {
    goto LABEL_4;
  }

  if (!cf)
  {
    v3 = 4294960569;
    goto LABEL_14;
  }

  if (*(a1 + 372))
  {
LABEL_11:
    v7 = sub_23EB8BE08(a1, 1651534953);
    v8 = *MEMORY[0x277CBECE8];
    if (!v7)
    {
      Data = CFPropertyListCreateData(*MEMORY[0x277CBECE8], cf, kCFPropertyListXMLFormat_v1_0, 0, 0);
      if (Data)
      {
        v11 = Data;
        BytePtr = CFDataGetBytePtr(Data);
        Length = CFDataGetLength(v11);
        v3 = sub_23EB71B08(BytePtr, Length, &v17, &v16);
        CFRelease(v11);
        if (!v3)
        {
          v14 = CFDataCreate(v8, v17, v16);
          *a3 = v14;
          if (v14)
          {
            v3 = 0;
          }

          else
          {
            v3 = 4294960568;
          }
        }
      }

      else
      {
        v3 = 4294960568;
      }

      goto LABEL_5;
    }

    v6 = sub_23EB6E6A4(*MEMORY[0x277CBECE8], cf, a3);
LABEL_4:
    v3 = v6;
LABEL_5:
    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_14;
  }

  if (sub_23EB8BE08(a1, 1920159858))
  {
    CFDictionaryRemoveValue(cf, @"profiles");
    CFDictionaryRemoveValue(cf, @"currentProfile");
    goto LABEL_11;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return 4294960576;
}

BOOL sub_23EB97B0C(uint64_t a1, int a2)
{
  v4 = 0;
  sub_23EBB4A90(a2, &v4);
  return !v4 || sub_23EB8BE08(a1, v4);
}

BOOL sub_23EB97B60(CFDataRef theData, int a2)
{
  result = 0;
  if (theData && a2)
  {
    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(theData);
    if (Length >= 4)
    {
      v7 = (Length >> 2) - 1;
      do
      {
        v8 = *BytePtr;
        BytePtr += 4;
        v9 = bswap32(v8);
        result = v9 == a2;
      }

      while (v9 != a2 && v7-- != 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

__CFArray *sub_23EB97BE0(uint64_t a1)
{
  cf = 0;
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (!sub_23EB8BFFC(a1, 1717920116, &cf, 0))
  {
    if (!cf)
    {
      return Mutable;
    }

    v4 = CFGetTypeID(cf);
    if (v4 == CFDataGetTypeID())
    {
      BytePtr = CFDataGetBytePtr(cf);
      Length = CFDataGetLength(cf);
      if (Length >= 4)
      {
        v12 = (Length >> 2) - 1;
        do
        {
          v13 = *BytePtr;
          BytePtr += 4;
          if (sub_23EB6FDFC(v2, Mutable, "%C", v7, v8, v9, v10, v11, bswap32(v13)))
          {
            v14 = 1;
          }

          else
          {
            v14 = v12 == 0;
          }

          --v12;
        }

        while (!v14);
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return Mutable;
}

uint64_t sub_23EB97CE8(uint64_t a1, CFMutableArrayRef theArray)
{
  if (!theArray)
  {
    return 4294967292;
  }

  if (!*(a1 + 40))
  {
    return 0;
  }

  CFArrayRemoveAllValues(theArray);
  Count = CFDictionaryGetCount(*(a1 + 40));
  if (Count < 1)
  {
    return 0;
  }

  v5 = Count;
  v6 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  CFDictionaryGetKeysAndValues(*(a1 + 40), v6, 0);
  if (!*v7)
  {
LABEL_22:
    v11 = 0;
    goto LABEL_26;
  }

  v8 = v7;
  while (*v8)
  {
    v9 = sub_23EB97E48(*v8);
    if (v9 > 1936017003)
    {
      if (v9 == 1936017004 || v9 == 1953066341)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    if (v9 == 1349676902)
    {
      if ((*(a1 + 372) & 1) == 0 && !sub_23EB97EAC(a1))
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    if (v9 != 1668573549)
    {
      if (!v9)
      {
        break;
      }

LABEL_20:
      CFArrayAppendValue(theArray, *v8);
    }

LABEL_21:
    ++v8;
    if (!--v5)
    {
      goto LABEL_22;
    }
  }

  v11 = 4294967291;
LABEL_26:
  free(v7);
  return v11;
}

const char *sub_23EB97E48(const __CFString *a1)
{
  v3 = 0;
  if (!a1)
  {
    return 0;
  }

  if (sub_23EB710E8(a1, &v3))
  {
    v1 = 0;
  }

  else
  {
    v1 = sub_23EB9AC64(v3);
  }

  if (v3)
  {
    free(v3);
  }

  return v1;
}

BOOL sub_23EB97EAC(uint64_t a1)
{
  result = sub_23EB8BE08(a1, 1349676902);
  if (result)
  {
    result = sub_23EB8BE08(a1, 1920159858);
    if (result)
    {
      return sub_23EB9B420(a1, 0) == 0;
    }
  }

  return result;
}

uint64_t sub_23EB97F04(uint64_t a1, CFMutableDictionaryRef theDict)
{
  v33 = *MEMORY[0x277D85DE8];
  cf = 0;
  if (!theDict)
  {
    return 4294967292;
  }

  if (!*(a1 + 40))
  {
    return 0;
  }

  CFDictionaryRemoveAllValues(theDict);
  Count = CFDictionaryGetCount(*(a1 + 40));
  if (Count < 1)
  {
    return 0;
  }

  v5 = Count;
  v6 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
  if (!v6)
  {
    return 4294967293;
  }

  v7 = v6;
  CFDictionaryGetKeysAndValues(*(a1 + 40), v6, 0);
  if (!*v7)
  {
    v18 = 0;
    goto LABEL_36;
  }

  v30 = *MEMORY[0x277CBECE8];
  v8 = v7;
  while (1)
  {
    v32[0] = 0;
    if (!*v8)
    {
      break;
    }

    v9 = sub_23EB97E48(*v8);
    v10 = v9;
    if (v9 > 1936017003)
    {
      if (v9 == 1936017004 || v9 == 1953066341)
      {
        goto LABEL_26;
      }

      goto LABEL_19;
    }

    if (v9 != 1349676902)
    {
      if (!v9)
      {
        break;
      }

LABEL_19:
      if (sub_23EB972F8(a1, v9))
      {
        goto LABEL_20;
      }

      goto LABEL_26;
    }

    if ((*(a1 + 372) & 1) != 0 || sub_23EB97EAC(a1))
    {
LABEL_20:
      v12 = sub_23EB92884(a1, v10, &cf, v32);
      if (v12)
      {
        goto LABEL_30;
      }

      v18 = sub_23EB6FDFC(v30, theDict, "%kC=%O", v13, v14, v15, v16, v17, v10);
      if (v32[0] == 1)
      {
        if (cf)
        {
          CFRelease(cf);
        }

        cf = 0;
      }

      if (v18)
      {
        goto LABEL_36;
      }
    }

LABEL_26:
    ++v8;
    if (!--v5)
    {
      v12 = sub_23EC0F418(v32, 0x10u);
      if (!v12)
      {
        v12 = sub_23EB6FDFC(v30, theDict, "%kC=%s", v19, v20, v21, v22, v23, 1818449523);
        if (!v12)
        {
          v12 = sub_23EB6FDFC(v30, theDict, "%kC=%i", v24, v25, v26, v27, v28, 1818449522);
        }
      }

LABEL_30:
      v18 = v12;
      goto LABEL_36;
    }
  }

  v18 = 4294967291;
LABEL_36:
  free(v7);
  return v18;
}

uint64_t sub_23EB98170(uint64_t a1)
{
  v4 = a1;
  pthread_mutex_lock((a1 + 392));
  ++*(a1 + 456);
  v2 = *(a1 + 40);
  if (v2)
  {
    CFDictionaryRemoveAllValues(v2);
  }

  if (sub_23EB8BE08(a1, 1349676902))
  {
    *(a1 + 372) = 0;
    sub_23EB8BF4C(a1);
  }

  *(a1 + 385) = 0;
  sub_23EBADBC0(&v4);
  return 0;
}

void sub_23EB981EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EBADBC0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23EB98200(uint64_t a1)
{
  v11 = 0;
  v12 = 0;
  v10 = a1;
  pthread_mutex_lock((a1 + 392));
  ++*(a1 + 456);
  v13 = 0;
  if (!*(a1 + 40))
  {
    v2 = 4294960591;
    goto LABEL_15;
  }

  if (sub_23EB98318(a1))
  {
    v2 = sub_23EB71A18(*(a1 + 40), &v13);
    if (v2)
    {
      goto LABEL_13;
    }

    if (!v13)
    {
      v2 = 4294960568;
      goto LABEL_15;
    }

    v3 = *MEMORY[0x277CBECE8];
    while (sub_23EB71AC0(v13, &v12, &v11))
    {
      v2 = sub_23EB6FDFC(v3, *(a1 + 32), "%kO=%O", v4, v5, v6, v7, v8, v12);
      if (v2)
      {
        goto LABEL_13;
      }
    }

    sub_23EB98170(a1);
  }

  v2 = 0;
LABEL_13:
  if (v13)
  {
    sub_23EB71AB4(v13);
  }

LABEL_15:
  sub_23EBADBC0(&v10);
  return v2;
}

void sub_23EB98300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EBADBC0(va);
  _Unwind_Resume(a1);
}

BOOL sub_23EB98318(uint64_t a1)
{
  Count = CFDictionaryGetCount(*(a1 + 40));
  if (Count < 1)
  {
    return 0;
  }

  v3 = 1;
  if (Count == 1 && (*(a1 + 372) & 1) == 0)
  {
    cf = 0;
    v3 = sub_23EB8BFFC(a1, 1349676902, &cf, 1) == -5;
    if (cf)
    {
      CFRelease(cf);
    }
  }

  return v3;
}

uint64_t sub_23EB983A0(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 4294960591;
  }

  DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x277CBECE8], *(a1 + 32), 2uLL);
  *a2 = DeepCopy;
  if (!DeepCopy)
  {
    return 4294960568;
  }

  v5 = *(a1 + 40);

  return sub_23EB6FED4(DeepCopy, v5);
}

uint64_t sub_23EB98414(uint64_t a1, const __CFDictionary *a2, CFMutableDictionaryRef *a3)
{
  v3 = 4294960591;
  if (a2 && a3)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *a3 = Mutable;
    if (!Mutable)
    {
      return 4294967293;
    }

    Count = CFDictionaryGetCount(a2);
    if (Count < 1)
    {
      return 0;
    }

    v9 = Count;
    v10 = 8 * Count;
    v11 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
    if (v11)
    {
      v12 = v11;
      v13 = malloc_type_malloc(v10, 0x80040B8603338uLL);
      if (v13)
      {
        v14 = v13;
        CFDictionaryGetKeysAndValues(a2, v12, v13);
        v15 = 0;
        while (1)
        {
          v16 = v12[v15];
          if (!v16 || !v14[v15])
          {
            break;
          }

          v17 = sub_23EB97E48(v16);
          if (v17 == 1466517097)
          {
            goto LABEL_13;
          }

          v3 = v17;
          if (!v17)
          {
            goto LABEL_24;
          }

          if (sub_23EB972F8(a1, v17))
          {
LABEL_13:
            CFDictionarySetValue(*a3, v12[v15], v14[v15]);
          }

          else if (dword_27E381AB0 <= 5000 && (dword_27E381AB0 != -1 || sub_23EB74AC8(&dword_27E381AB0, 0x1388u)))
          {
            sub_23EB75374(&dword_27E381AB0, "ACPStatus BaseStation::_CopySupported(CFDictionaryRef, CFDictionaryRef *)", 5000, "%s: skipping key: %@ value: %@ because it isn't supported.\n", v18, v19, v20, v21, "ACPStatus BaseStation::_CopySupported(CFDictionaryRef, CFDictionaryRef *)");
          }

          if (v9 == ++v15)
          {
            v3 = 0;
            goto LABEL_24;
          }
        }

        v3 = 4294967291;
LABEL_24:
        free(v12);
      }

      else
      {
        v3 = 4294967293;
        v14 = v12;
      }

      free(v14);
    }

    else
    {
      return 4294967293;
    }
  }

  return v3;
}

uint64_t sub_23EB985FC(uint64_t a1, CFMutableDictionaryRef *a2)
{
  cf = 0;
  if (!a2)
  {
    return 4294960591;
  }

  v4 = sub_23EB983A0(a1, &cf);
  if (!v4)
  {
    if (!cf)
    {
      return 4294967291;
    }

    v4 = sub_23EB98414(a1, cf, a2);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

uint64_t sub_23EB98680(uint64_t a1, CFMutableDictionaryRef *a2)
{
  if (!a2)
  {
    return 4294960591;
  }

  DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x277CBECE8], *(a1 + 32), 2uLL);
  if (!DeepCopy)
  {
    return 4294960568;
  }

  v5 = DeepCopy;
  v6 = sub_23EB98414(a1, DeepCopy, a2);
  CFRelease(v5);
  return v6;
}

uint64_t sub_23EB98700(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 4294960591;
  }

  DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x277CBECE8], *(a1 + 32), 2uLL);
  *a2 = DeepCopy;
  if (DeepCopy)
  {
    return 0;
  }

  else
  {
    return 4294960568;
  }
}

uint64_t sub_23EB9875C(uint64_t a1, const __CFDictionary *a2, int a3, uint64_t a4)
{
  v76 = *MEMORY[0x277D85DE8];
  v73 = 0;
  cf = 0;
  sub_23EB8CCB8(v71, "WiFi.radios.[*].");
  memset(&__p, 0, sizeof(__p));
  if (!a2)
  {
    v14 = 4294960591;
    goto LABEL_32;
  }

  if (!CFDictionaryGetValue(a2, @"APPLE-CONFIG"))
  {
    v14 = 4294960569;
    goto LABEL_32;
  }

  sub_23EB89214(a1);
  sub_23EB6FF14(a2, &v73, "%kC", v8, v9, v10, v11, v12, 1937326416);
  v14 = v13;
  if (v13)
  {
    goto LABEL_32;
  }

  if (!v73)
  {
    goto LABEL_31;
  }

  v14 = sub_23EB8C09C(a1, 1937326416, v73, 2);
  if (v14)
  {
    goto LABEL_32;
  }

  sub_23EB6FF14(a2, &v73, "%kC", v15, v16, v17, v18, v19, 1717907505);
  v14 = v20;
  if (v20)
  {
    goto LABEL_32;
  }

  if (!v73)
  {
    goto LABEL_31;
  }

  v14 = sub_23EB8C09C(a1, 1717907505, v73, 2);
  if (v14)
  {
    goto LABEL_32;
  }

  sub_23EB6FF14(a2, &v73, "%kC", v21, v22, v23, v24, v25, 1937327724);
  v14 = v26;
  if (v26)
  {
    goto LABEL_32;
  }

  if (!v73)
  {
LABEL_31:
    v14 = 4294967291;
    goto LABEL_32;
  }

  v14 = sub_23EB8C09C(a1, 1937327724, v73, 2);
  if (v14)
  {
    goto LABEL_32;
  }

  sub_23EB6FF14(a2, &v73, "%kC", v27, v28, v29, v30, v31, 1717920116);
  if (v32)
  {
    sub_23EB897A0(a1, 1);
  }

  else
  {
    v14 = sub_23EB8C09C(a1, 1717920116, v73, 2);
    if (v14)
    {
      goto LABEL_32;
    }
  }

  Value = CFDictionaryGetValue(a2, @"secureProperties");
  if (a4 && Value)
  {
    v39 = *(a4 + 23);
    if (v39 < 0)
    {
      v39 = *(a4 + 8);
    }

    if (!v39)
    {
      v14 = 4294967280;
      goto LABEL_32;
    }

    v14 = sub_23EB98D30(Value, a4, Value, &cf);
    if (v14)
    {
      goto LABEL_32;
    }
  }

  v73 = 0;
  if (cf)
  {
    sub_23EB6FF14(cf, &v73, "%kC", v34, v35, v36, v37, v38, 1466517097);
    v14 = v40;
    v41 = v73;
    if (v40)
    {
      v42 = 1;
    }

    else
    {
      v42 = v73 == 0;
    }

    v43 = !v42;
    v69 = v43;
    if (v73)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v14 = 0;
    v69 = 0;
  }

  sub_23EB6FF14(a2, &v73, "%kC", v34, v35, v36, v37, v38, 1466517097);
  if (v45)
  {
    v46 = 0;
    goto LABEL_48;
  }

  v41 = v73;
LABEL_46:
  v14 = sub_23EB8C09C(a1, 1466517097, v41, 2);
  if (v14)
  {
    goto LABEL_32;
  }

  v46 = 1;
LABEL_48:
  v48 = *(a1 + 200);
  v47 = *(a1 + 208);
  if (v47 == v48)
  {
    sub_23EB8A428(a1, 0);
    v48 = *(a1 + 200);
    v47 = *(a1 + 208);
  }

  v49 = v47 - v48;
  if (v49 >= 0xC)
  {
    v50 = v49 / 0xC;
    alloc = *MEMORY[0x277CBECE8];
    if (v50 <= 1)
    {
      v51 = 1;
    }

    else
    {
      v51 = v50;
    }

    while (1)
    {
      v53 = *v48;
      v48 += 3;
      v52 = v53;
      v54 = sub_23EB8F5B4(v53);
      if (a3)
      {
        v55 = sub_23EB98F20(a1, v52);
      }

      else
      {
        v55 = sub_23EB98FD8(a1, v52);
      }

      if (v52 == 1466517097)
      {
        v56 = v46;
      }

      else
      {
        v56 = 0;
      }

      if ((v56 & 1) != 0 || !v55)
      {
        goto LABEL_68;
      }

      if (v52 > 1937326415)
      {
        if (v52 == 1937326416)
        {
          goto LABEL_68;
        }

        v57 = 1937327724;
      }

      else
      {
        if (v52 == 1717907505)
        {
          goto LABEL_68;
        }

        v57 = 1717920116;
      }

      if (v52 != v57)
      {
        if (!v46 || (!cf ? (v58 = v54) : (v58 = 0), (v58 & 1) == 0 && (cf ? (v59 = v54) : (v59 = 0), v59 != 1 || ((v69 | sub_23EB9931C(v55, v52) ^ 1) & 1) == 0)))
        {
          if (v54)
          {
            sub_23EB8FB78(v71, v52, &__p);
          }

          else if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            *__p.__r_.__value_.__l.__data_ = 0;
            __p.__r_.__value_.__l.__size_ = 0;
          }

          else
          {
            __p.__r_.__value_.__s.__data_[0] = 0;
            *(&__p.__r_.__value_.__s + 23) = 0;
          }

          sub_23EB4BD2C(v52, cStr);
          v60 = CFStringCreateWithCString(alloc, cStr, 0x8000100u);
          v61 = v60;
          if (!v60)
          {
            v14 = 4294960554;
            break;
          }

          v62 = sub_23EB9931C(v60, v52);
          if ((v62 & (cf != 0)) != 0)
          {
            v63 = cf;
          }

          else
          {
            v63 = a2;
          }

          v73 = CFDictionaryGetValue(v63, v61);
          CFRelease(v61);
          v65 = v73;
          if (v73)
          {
            size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              size = __p.__r_.__value_.__l.__size_;
            }

            if (size)
            {
              v67 = sub_23EB91690(v64, v52);
              if (v67)
              {
                v14 = sub_23EB91744(a1, v52, v65, &v73);
                if (v14)
                {
                  break;
                }

                v65 = v73;
              }

              v14 = sub_23EB8FC04(a1, &__p, v65, 2);
              if (v67)
              {
                CFRelease(v73);
              }
            }

            else
            {
              v14 = sub_23EB8C09C(a1, v52, v73, 2);
            }

            if (v14)
            {
              break;
            }
          }
        }
      }

LABEL_68:
      if (!--v51)
      {
        *(a1 + 193) = 1;
        v14 = sub_23EB897A0(a1, 1);
        break;
      }
    }
  }

LABEL_32:
  if (cf)
  {
    CFRelease(cf);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v72 < 0)
  {
    operator delete(v71[0]);
  }

  return v14;
}

void sub_23EB98CF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EB98D30(int a1, void *data, const __CFData *a3, void *a4)
{
  cryptorRef[7] = *MEMORY[0x277D85DE8];
  v6 = *(data + 23);
  if (v6 < 0)
  {
    v7 = 4294960591;
    if (!a4)
    {
      return v7;
    }

    if (!a3)
    {
      return v7;
    }

    v6 = data[1];
    if (!v6)
    {
      return v7;
    }

    data = *data;
  }

  else
  {
    v7 = 4294960591;
    if (!a4 || !a3 || !*(data + 23))
    {
      return v7;
    }
  }

  CC_SHA1(data, v6, md);
  v17 = 0uLL;
  sub_23EB4F6C4(cryptorRef, md, &v17);
  Length = CFDataGetLength(a3);
  v9 = malloc_type_malloc(Length, 0x100004077774924uLL);
  if (!v9)
  {
    return 4294960568;
  }

  v10 = v9;
  BytePtr = CFDataGetBytePtr(a3);
  sub_23EB4F720(cryptorRef, BytePtr, Length, v10);
  sub_23EB4F8E0(cryptorRef);
  v12 = *MEMORY[0x277CBECE8];
  v13 = CFDataCreate(*MEMORY[0x277CBECE8], v10, Length);
  if (v13)
  {
    v14 = v13;
    v15 = CFPropertyListCreateWithData(v12, v13, 0, 0, 0);
    if (v15)
    {
      v7 = 0;
    }

    else
    {
      v7 = 4294967280;
    }

    *a4 = v15;
    CFRelease(v14);
  }

  else
  {
    v7 = 4294960568;
  }

  free(v10);
  return v7;
}

void sub_23EB98EAC(uint64_t a1, void *a2, unint64_t *a3)
{
  if (*(a1 + 208) == *(a1 + 200))
  {
    sub_23EB8A428(a1, 0);
  }

  if (a2)
  {
    *a2 = *(a1 + 200);
  }

  if (a3)
  {
    *a3 = (*(a1 + 208) - *(a1 + 200)) / 0xCuLL;
  }
}

BOOL sub_23EB98F20(uint64_t a1, int a2)
{
  v4 = 0;
  sub_23EB89D74(a1, 1937326416, &v4, 0);
  result = 0;
  if (a2 <= 1464626794)
  {
    if (a2 != 1280077419 && a2 != 1346918739)
    {
      return 1;
    }
  }

  else if (a2 != 1464626795 && a2 != 1936017004)
  {
    if (a2 == 1937326416)
    {
      return v4 == 0;
    }

    return 1;
  }

  return result;
}

BOOL sub_23EB98FD8(uint64_t a1, int a2)
{
  if (!qword_27E383818)
  {
    return 1;
  }

  v2 = *(qword_27E383818 + 8);
  if (!v2)
  {
    return 1;
  }

  v4 = qword_27E383818 + 8;
  do
  {
    if (*(v2 + 32) >= a2)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < a2));
  }

  while (v2);
  if (v4 == qword_27E383818 + 8 || *(v4 + 32) > a2)
  {
    return 1;
  }

  v6 = *(v4 + 40);
  if (*(v6 + 24))
  {
    return 0;
  }

  if (*(v6 + 25))
  {
    return 1;
  }

  result = 1;
  if (a2 <= 1717907504)
  {
    if (a2 <= 1349676901)
    {
      if (a2 <= 1229213292)
      {
        if (a2 == 1095783250 || a2 == 1097098612)
        {
          return 0;
        }

        v7 = 1148808787;
      }

      else if (a2 > 1298223987)
      {
        if (a2 == 1298223988)
        {
          return 0;
        }

        v7 = 1346918739;
      }

      else
      {
        if (a2 == 1229213293)
        {
          return 0;
        }

        v7 = 1280077419;
      }
    }

    else if (a2 > 1684099955)
    {
      if (a2 > 1684558667)
      {
        if (a2 == 1684558668)
        {
          return 0;
        }

        v7 = 1684886388;
      }

      else
      {
        if (a2 == 1684099956)
        {
          return 0;
        }

        v7 = 1684362100;
      }
    }

    else if (a2 > 1464626794)
    {
      if (a2 == 1464626795)
      {
        return 0;
      }

      v7 = 1635078258;
    }

    else
    {
      if (a2 == 1349676902)
      {
        return 0;
      }

      v7 = 1381327990;
    }

    goto LABEL_59;
  }

  if (a2 <= 1918980945)
  {
    if (a2 > 1835090283)
    {
      if ((a2 - 1886547529) <= 0x20 && ((1 << (a2 - 73)) & 0x100000201) != 0 || a2 == 1835090284)
      {
        return 0;
      }

      v7 = 1918980940;
    }

    else
    {
      if (a2 == 1717907505 || a2 == 1717920116)
      {
        return 0;
      }

      v7 = 1752641585;
    }

LABEL_59:
    if (a2 != v7)
    {
      return result;
    }

    return 0;
  }

  if (a2 > 1937326417)
  {
    if (a2 > 1937330257)
    {
      if (a2 == 1937330258)
      {
        return 0;
      }

      v8 = 20567;
    }

    else
    {
      if (a2 == 1937326418)
      {
        return 0;
      }

      v8 = 19538;
    }

    v7 = v8 | 0x73790000;
    goto LABEL_59;
  }

  if (a2 <= 1937006963)
  {
    if (a2 == 1918980946)
    {
      return 0;
    }

    v7 = 1936017004;
    goto LABEL_59;
  }

  if (a2 == 1937006964)
  {
    return 0;
  }

  if (a2 == 1937326416)
  {
    v9 = 0;
    sub_23EB89D74(a1, 1937326416, &v9, 0);
    return v9 == 0;
  }

  return result;
}

uint64_t sub_23EB9931C(uint64_t a1, int a2)
{
  result = 1;
  if (a2 <= 1918981956)
  {
    if (a2 > 1885622358)
    {
      if (a2 <= 1918976881)
      {
        if (a2 == 1885622359)
        {
          return result;
        }

        v3 = 1885687895;
        goto LABEL_30;
      }

      if (a2 == 1918976882 || a2 == 1918980914)
      {
        return result;
      }

      v3 = 1918980965;
    }

    else
    {
      if (a2 <= 1718842223)
      {
        if (a2 == 1635077712)
        {
          return result;
        }

        v3 = 1682792803;
        goto LABEL_30;
      }

      if (a2 == 1718842224 || a2 == 1766026340)
      {
        return result;
      }

      v3 = 1836011607;
    }

LABEL_30:
    if (a2 != v3)
    {
      return 0;
    }

    return result;
  }

  if (a2 <= 1936611158)
  {
    if (a2 <= 1936609867)
    {
      if (a2 == 1918981957)
      {
        return result;
      }

      v4 = 17235;
    }

    else
    {
      if (a2 == 1936609868 || a2 == 1936609879)
      {
        return result;
      }

      v4 = 22348;
    }

    v3 = v4 | 0x736E0000;
    goto LABEL_30;
  }

  if (a2 > 1970500195)
  {
    if (a2 == 1970500196 || a2 == 2002929744)
    {
      return result;
    }

    v3 = 2002932304;
    goto LABEL_30;
  }

  if (a2 != 1936611159 && a2 != 1937330258)
  {
    v3 = 1937330263;
    goto LABEL_30;
  }

  return result;
}

void sub_23EB994CC(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8) - *a1;
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_23EBADE2C(a1, v4);
  }

  else if (!v3)
  {
    *(a1 + 8) = *a1 + a2;
  }
}

uint64_t sub_23EB994F4(uint64_t a1, CFDictionaryRef theDict, const __CFString *a3, int a4)
{
  memset(&__p, 0, sizeof(__p));
  if (!theDict)
  {
    v10 = 4294967292;
    goto LABEL_114;
  }

  Count = CFDictionaryGetCount(theDict);
  v8 = Count;
  if (Count <= 0)
  {
    v10 = 0;
    goto LABEL_114;
  }

  keys = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
  if (!keys)
  {
    v10 = 4294967293;
    goto LABEL_114;
  }

  v9 = malloc_type_malloc(8 * v8, 0x80040B8603338uLL);
  if (!v9)
  {
    v10 = 4294967293;
    v66 = keys;
    goto LABEL_113;
  }

  CFDictionaryGetKeysAndValues(theDict, keys, v9);
  v68 = a3;
  v69 = v9;
  v10 = 0;
  v11 = 0;
  v12 = off_27E381AF0;
  while (1)
  {
    v13 = keys[v11];
    if (!v13 || !v69[v11])
    {
      v10 = 4294967291;
      goto LABEL_112;
    }

    v14 = v12;
    v15 = sub_23EB97E48(v13);
    if (!v15)
    {
      goto LABEL_112;
    }

    if (a4 == 1 && !sub_23EB98FD8(a1, v15))
    {
      goto LABEL_92;
    }

    v16 = sub_23EB8E1B0(a1, v15);
    v17 = v16;
    if (v16)
    {
      LODWORD(valuePtr[0]) = 0;
      v10 = sub_23EBB4A90(v15, valuePtr);
      if (v10)
      {
        goto LABEL_112;
      }

      if (LODWORD(valuePtr[0]) && !sub_23EB8BE08(a1, valuePtr[0]))
      {
        goto LABEL_103;
      }

      v10 = 0;
    }

    else
    {
      v18 = sub_23EB972F8(a1, v15);
      v19 = v15 == 1466517097 || v18;
      if (v19 != 1)
      {
        goto LABEL_104;
      }
    }

    v20 = sub_23EB4BD2C(v15, v75);
    MEMORY[0x23EF1EFD0](&__p, v20);
    if (sub_23EB8F5B4(v15))
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
        size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      if (size >= 1)
      {
        v23 = p_p + size;
        v24 = p_p;
        do
        {
          v25 = memchr(v24, 46, size);
          if (!v25)
          {
            break;
          }

          if (*v25 == 46)
          {
            if (v25 != v23 && v25 - p_p != -1)
            {
              goto LABEL_39;
            }

            break;
          }

          v24 = (v25 + 1);
          size = v23 - v24;
        }

        while (v23 - v24 >= 1);
      }

      MEMORY[0x23EF1EFD0](&__p, "WiFi.radios.[*].");
      sub_23EB8FB78(&__p, v15, &__p);
      if (dword_27E381AB0 <= 8000 && (dword_27E381AB0 != -1 || sub_23EB74AC8(&dword_27E381AB0, 0x1F40u)))
      {
        sub_23EB75374(&dword_27E381AB0, "ACPStatus BaseStation::ImportFromDictionary(CFDictionaryRef, CFDictionaryRef, eImportChoice)", 8000, "%s: Just created a path %s for a WiFi setting without one.\n", v26, v27, v28, v29, "ACPStatus BaseStation::ImportFromDictionary(CFDictionaryRef, CFDictionaryRef, eImportChoice)");
      }
    }

LABEL_39:
    v12 = v14;
    if (sub_23EBB4A64(v15) == 6)
    {
      break;
    }

LABEL_44:
    if (!v17)
    {
      valuePtr[0] = 0;
      v10 = sub_23EB8CFF0(a1, &__p, valuePtr);
      if (!v10)
      {
        if (valuePtr[0])
        {
          if (sub_23EB99D18(0, &__p))
          {
            if (!sub_23EB9A798(a1, &__p, v69[v11]))
            {
              if (dword_27E381AB0 <= 5000 && (dword_27E381AB0 != -1 || sub_23EB74AC8(&dword_27E381AB0, 0x1388u)))
              {
                sub_23EB75374(&dword_27E381AB0, "ACPStatus BaseStation::ImportFromDictionary(CFDictionaryRef, CFDictionaryRef, eImportChoice)", 5000, "%s: skipping import of value %@ for %s because it is invalid, reseting to default val: %@.\n", v54, v55, v56, v57, "ACPStatus BaseStation::ImportFromDictionary(CFDictionaryRef, CFDictionaryRef, eImportChoice)");
              }

              v10 = sub_23EB8FC04(a1, &__p, valuePtr[0], 0);
              CFRelease(valuePtr[0]);
              if (v10)
              {
                goto LABEL_112;
              }

              goto LABEL_103;
            }
          }

          else if (CFEqual(valuePtr[0], v69[v11]))
          {
            if (dword_27E381AB0 <= 8000 && (dword_27E381AB0 != -1 || sub_23EB74AC8(&dword_27E381AB0, 0x1F40u)))
            {
              sub_23EB75374(&dword_27E381AB0, "ACPStatus BaseStation::ImportFromDictionary(CFDictionaryRef, CFDictionaryRef, eImportChoice)", 8000, "%s: skipping import of default value %@ for %s.\n", v62, v63, v64, v65, "ACPStatus BaseStation::ImportFromDictionary(CFDictionaryRef, CFDictionaryRef, eImportChoice)");
            }

            CFRelease(valuePtr[0]);
LABEL_103:
            v10 = 0;
            goto LABEL_104;
          }

          CFRelease(valuePtr[0]);
        }
      }
    }

    v35 = v69[v11];
    if (v15 != 1466517097)
    {
      v10 = sub_23EB8FC04(a1, &__p, v69[v11], 0);
      if (dword_27E381AB0 <= 5000 && (dword_27E381AB0 != -1 || sub_23EB74AC8(&dword_27E381AB0, 0x1388u)))
      {
        sub_23EB75374(&dword_27E381AB0, "ACPStatus BaseStation::ImportFromDictionary(CFDictionaryRef, CFDictionaryRef, eImportChoice)", 5000, "%s: Importing '%s' as: %@\n", v58, v59, v60, v61, "ACPStatus BaseStation::ImportFromDictionary(CFDictionaryRef, CFDictionaryRef, eImportChoice)");
      }

      if (v10)
      {
        goto LABEL_112;
      }

LABEL_92:
      v12 = v14;
      goto LABEL_104;
    }

    if (CFDictionaryGetCount(v69[v11]))
    {
      v41 = 0;
      v74 = 0;
      do
      {
        sub_23EB6FF14(v35, &v74, "%ks", v36, v37, v38, v39, v40, v14[v41]);
        if (!v42)
        {
          sub_23EB8CCB8(valuePtr, v14[v41]);
          if (v73 < 0)
          {
            if (valuePtr[1] == 6)
            {
              v49 = *valuePtr[0] != 1768186226 || *(valuePtr[0] + 2) != 29551;
              operator delete(valuePtr[0]);
              if (!v49)
              {
LABEL_65:
                v10 = sub_23EB8E448(a1, theDict, v68, v74, v43, v44, v45, v46);
                if (v10)
                {
                  goto LABEL_112;
                }

                v10 = sub_23EB90978(a1);
                goto LABEL_75;
              }
            }

            else
            {
              operator delete(valuePtr[0]);
            }
          }

          else if (v73 == 6 && LODWORD(valuePtr[0]) == 1768186226 && WORD2(valuePtr[0]) == 29551)
          {
            goto LABEL_65;
          }

          MEMORY[0x23EF1EFD0](&__p, "WiFi.");
          sub_23EB8CCB8(valuePtr, v14[v41]);
          sub_23EB90814(&__p, valuePtr, &__p);
          if (v73 < 0)
          {
            operator delete(valuePtr[0]);
          }

          if (dword_27E381AB0 <= 8000 && (dword_27E381AB0 != -1 || sub_23EB74AC8(&dword_27E381AB0, 0x1F40u)))
          {
            sub_23EB75374(&dword_27E381AB0, "ACPStatus BaseStation::ImportFromDictionary(CFDictionaryRef, CFDictionaryRef, eImportChoice)", 8000, "%s: Importing WiFi root property val: '%@' @ %s.\n", v50, v51, v52, v53, "ACPStatus BaseStation::ImportFromDictionary(CFDictionaryRef, CFDictionaryRef, eImportChoice)");
          }

          v10 = sub_23EB8FC04(a1, &__p, v74, 0);
          if (v10)
          {
            goto LABEL_112;
          }
        }

LABEL_75:
        ++v41;
      }

      while (v41 != 4);
    }

LABEL_104:
    if (++v11 == v8)
    {
      v10 = sub_23EB8C480(a1);
      goto LABEL_112;
    }
  }

  LODWORD(valuePtr[0]) = 0;
  if (CFNumberGetValue(v69[v11], kCFNumberIntType, valuePtr))
  {
    v30 = valuePtr[0];
    if (v15 == 2002862934)
    {
      v30 = valuePtr[0] & 0xFFFE7FFF;
      LODWORD(valuePtr[0]) &= 0xFFFE7FFF;
    }

    if (!sub_23EB90740(a1, &__p, v30, 1))
    {
      if (dword_27E381AB0 <= 8000 && (dword_27E381AB0 != -1 || sub_23EB74AC8(&dword_27E381AB0, 0x1F40u)))
      {
        sub_23EB75374(&dword_27E381AB0, "ACPStatus BaseStation::ImportFromDictionary(CFDictionaryRef, CFDictionaryRef, eImportChoice)", 8000, "%s: skipping %s because possible value (%u) isn't supported.\n", v31, v32, v33, v34, "ACPStatus BaseStation::ImportFromDictionary(CFDictionaryRef, CFDictionaryRef, eImportChoice)");
      }

      goto LABEL_104;
    }

    goto LABEL_44;
  }

  v10 = 4294967292;
LABEL_112:
  free(keys);
  v66 = v69;
LABEL_113:
  free(v66);
LABEL_114:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v10;
}

void sub_23EB99CC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_23EB99D18(int a1, std::string *__str)
{
  v15 = 0;
  sub_23EB8DCF4(__str, &v15, 0);
  result = 0;
  if (v15 <= 1851868779)
  {
    if (v15 <= 1635078737)
    {
      if (v15 > 913337459)
      {
        if (v15 <= 1397572210)
        {
          if (v15 > 913601123)
          {
            if (v15 > 1146250610)
            {
              if (v15 != 1146250611)
              {
                return v15 == 1163543366;
              }

              return 1;
            }

            if (v15 == 913601124)
            {
              return 1;
            }

            v3 = 913730676;
          }

          else if (v15 > 913532258)
          {
            if (v15 == 913532259)
            {
              return 1;
            }

            v3 = 913532535;
          }

          else
          {
            if (v15 == 913337460)
            {
              return 1;
            }

            v3 = 913337712;
          }
        }

        else if (v15 <= 1633116525)
        {
          if (v15 > 1398097261)
          {
            if (v15 == 1398097262)
            {
              return 1;
            }

            v3 = 1398097521;
          }

          else
          {
            if (v15 == 1397572211)
            {
              return 1;
            }

            v3 = 1397572215;
          }
        }

        else if (v15 <= 1633899616)
        {
          if (v15 == 1633116526)
          {
            return 1;
          }

          v3 = 1633895790;
        }

        else
        {
          if (v15 == 1633899617 || v15 == 1635077710)
          {
            return 1;
          }

          v3 = 1635077712;
        }
      }

      else
      {
        if (v15 <= 911697527)
        {
          if (v15 <= 911230048)
          {
            if ((v15 - 911102769) >= 3 && (v15 - 910976631) >= 2)
            {
              v3 = 910975332;
              goto LABEL_188;
            }

            return 1;
          }

          if (v15 == 911230049 || v15 == 911230060)
          {
            return 1;
          }

          v11 = 24932;
          goto LABEL_131;
        }

        if (v15 <= 912356723)
        {
          if (v15 <= 911701092)
          {
            if (v15 == 911697528)
            {
              return 1;
            }

            v11 = 26487;
LABEL_131:
            v3 = v11 | 0x36570000;
            goto LABEL_188;
          }

          if (v15 == 911701093)
          {
            return 1;
          }

          v3 = 912353394;
        }

        else if (v15 <= 912550002)
        {
          if (v15 == 912356724)
          {
            return 1;
          }

          v3 = 912483943;
        }

        else
        {
          if (v15 == 912550003 || v15 == 912552815)
          {
            return 1;
          }

          v3 = 912684908;
        }
      }

LABEL_188:
      if (v15 != v3)
      {
        return result;
      }

      return 1;
    }

    if (v15 <= 1766026339)
    {
      if (v15 > 1718186596)
      {
        if (v15 <= 1735279981)
        {
          if (v15 <= 1735276852)
          {
            if (v15 == 1718186597)
            {
              return 1;
            }

            v3 = 1718842224;
            goto LABEL_188;
          }

          if (v15 == 1735276853)
          {
            return 1;
          }

          v5 = 16999;
        }

        else if (v15 <= 1735282022)
        {
          if (v15 == 1735279982)
          {
            return 1;
          }

          v5 = 19557;
        }

        else
        {
          if (v15 == 1735282023 || v15 == 1735283311)
          {
            return 1;
          }

          v5 = 21326;
        }

        v3 = v5 | 0x676E0000;
        goto LABEL_188;
      }

      if (v15 > 1684555117)
      {
        if (v15 > 1684557158)
        {
          if (v15 == 1684557159)
          {
            return 1;
          }

          v3 = 1685538412;
          goto LABEL_188;
        }

        if (v15 == 1684555118)
        {
          return 1;
        }

        v13 = 19557;
      }

      else
      {
        if (v15 <= 1684551988)
        {
          if (v15 == 1635078738)
          {
            return 1;
          }

          v3 = 1683440723;
          goto LABEL_188;
        }

        if (v15 == 1684551989)
        {
          return 1;
        }

        v13 = 16999;
      }

      v3 = v13 | 0x64680000;
      goto LABEL_188;
    }

    if (v15 <= 1836009795)
    {
      if (v15 > 1836007759)
      {
        if (v15 > 1836008264)
        {
          if (v15 == 1836008265)
          {
            return 1;
          }

          v14 = 17492;
        }

        else
        {
          if (v15 == 1836007760)
          {
            return 1;
          }

          v14 = 17219;
        }
      }

      else
      {
        if (v15 <= 1818317644)
        {
          if (v15 == 1766026340)
          {
            return 1;
          }

          v3 = 1818315088;
          goto LABEL_188;
        }

        if (v15 == 1818317645)
        {
          return 1;
        }

        v14 = 16708;
      }
    }

    else
    {
      if (v15 > 1836011587)
      {
        if (v15 > 1836012877)
        {
          if (v15 == 1836012878 || v15 == 1849970010)
          {
            return 1;
          }

          v3 = 1851867462;
          goto LABEL_188;
        }

        if ((v15 - 1836011588) > 0x13)
        {
          return result;
        }

        v6 = 1 << (v15 - 68);
        v7 = 525313;
        goto LABEL_70;
      }

      if (v15 == 1836009796 || v15 == 1836010822)
      {
        return 1;
      }

      v14 = 19792;
    }

    v3 = v14 | 0x6D6F0000;
    goto LABEL_188;
  }

  if (v15 <= 1918980718)
  {
    if (v15 > 1918976832)
    {
      if (v15 > 1918977643)
      {
        if (v15 > 1918979427)
        {
          if (v15 > 1918979648)
          {
            if (v15 == 1918979649)
            {
              return 1;
            }

            v4 = 20591;
          }

          else
          {
            if (v15 == 1918979428)
            {
              return 1;
            }

            v4 = 19829;
          }
        }

        else
        {
          if ((v15 - 1918978353) < 2 || v15 == 1918977644)
          {
            return 1;
          }

          v4 = 19284;
        }
      }

      else
      {
        if (v15 <= 1918977106)
        {
          v8 = (v15 - 1918976833);
          if (v8 <= 0x31 && (((1 << (v15 - 65)) & 0x2088000000001) != 0 || v8 == 40))
          {
            return 1;
          }

          return result;
        }

        if (v15 > 1918977344)
        {
          if (v15 == 1918977345)
          {
            return 1;
          }

          v4 = 17970;
        }

        else
        {
          if (v15 == 1918977107)
          {
            return 1;
          }

          v4 = 17509;
        }
      }

LABEL_175:
      v3 = v4 | 0x72610000;
      goto LABEL_188;
    }

    if (v15 > 1885684046)
    {
      if (v15 <= 1885688653)
      {
        if (v15 > 1885687894)
        {
          if (v15 == 1885687895)
          {
            return 1;
          }

          v12 = 21315;
        }

        else
        {
          if (v15 == 1885684047)
          {
            return 1;
          }

          v12 = 18756;
        }
      }

      else
      {
        if (v15 > 1886213216)
        {
          if (v15 == 1886213217 || v15 == 1918128974)
          {
            return 1;
          }

          v4 = 16757;
          goto LABEL_175;
        }

        if (v15 == 1885688654)
        {
          return 1;
        }

        v12 = 21838;
      }

LABEL_187:
      v3 = v12 | 0x70650000;
      goto LABEL_188;
    }

    if (v15 > 1885621570)
    {
      if (v15 > 1885623629)
      {
        if (v15 == 1885623630)
        {
          return 1;
        }

        v12 = 16707;
        goto LABEL_187;
      }

      if (v15 == 1885621571)
      {
        return 1;
      }

      v10 = 20567;
    }

    else if (v15 > 1885619819)
    {
      if (v15 == 1885619820)
      {
        return 1;
      }

      v10 = 18756;
    }

    else
    {
      if (v15 == 1851868780)
      {
        return 1;
      }

      v10 = 16722;
    }

    v3 = v10 | 0x70640000;
    goto LABEL_188;
  }

  if (v15 <= 2002863152)
  {
    if (v15 <= 1936488043)
    {
      if (v15 > 1918980979)
      {
        if ((v15 - 1918981954) <= 0xB && ((1 << (v15 - 66)) & 0x80B) != 0 || v15 == 1918980980)
        {
          return 1;
        }

        v4 = 21810;
      }

      else
      {
        if (v15 == 1918980719 || v15 == 1918980914)
        {
          return 1;
        }

        v4 = 21349;
      }

      goto LABEL_175;
    }

    if (v15 <= 1937329262)
    {
      if (v15 > 1937068113)
      {
        if (v15 == 1937068114)
        {
          return 1;
        }

        v3 = 1937326964;
      }

      else
      {
        if (v15 == 1936488044)
        {
          return 1;
        }

        v3 = 1936605510;
      }

      goto LABEL_188;
    }

    if (v15 <= 1953645422)
    {
      if (v15 == 1937329263)
      {
        return 1;
      }

      v3 = 1950434124;
      goto LABEL_188;
    }

    if (v15 == 1953645423 || v15 == 2002862916)
    {
      return 1;
    }

    v9 = 17238;
LABEL_138:
    v3 = v9 | 0x77610000;
    goto LABEL_188;
  }

  if (v15 > 2002929005)
  {
    if (v15 <= 2002932291)
    {
      if ((v15 - 2002929742) <= 7 && ((1 << (v15 - 78)) & 0x85) != 0)
      {
        return 1;
      }

      v3 = 2002929006;
    }

    else
    {
      if ((v15 - 2002932292) <= 0x11 && ((1 << (v15 - 68)) & 0x21001) != 0 || v15 == 2003060332)
      {
        return 1;
      }

      v3 = 2003061875;
    }

    goto LABEL_188;
  }

  if (v15 > 2002864493)
  {
    if (v15 == 2002864494 || v15 == 2002865741)
    {
      return 1;
    }

    v9 = 21316;
    goto LABEL_138;
  }

  if ((v15 - 2002863153) > 0x1D)
  {
    return result;
  }

  v6 = 1 << (v15 - 49);
  v7 = 537133063;
LABEL_70:
  if ((v6 & v7) != 0)
  {
    return 1;
  }

  return result;
}

BOOL sub_23EB9A798(int a1, std::string *__str, const __CFString *a3)
{
  v12 = 0;
  sub_23EB8DCF4(__str, &v12 + 1, 0);
  if (sub_23EB9AE88(v5, __str, &v12, &v11))
  {
    return 1;
  }

  v7 = CFGetTypeID(a3);
  if (HIDWORD(v12) == 1970496070)
  {
    if (v7 == CFNumberGetTypeID())
    {
      v10 = 0;
      if (CFNumberGetValue(a3, kCFNumberSInt32Type, &v10))
      {
        v8 = v10 == 0;
      }

      else
      {
        v8 = 0;
      }

      return !v8;
    }

    return 1;
  }

  if (HIDWORD(v12) != 1853117270)
  {
    if (v12 == 7)
    {
      if (v7 != CFStringGetTypeID())
      {
        return 1;
      }

      v9 = @"0.0.0.0";
    }

    else if (v12 == 12)
    {
      if (v7 != CFStringGetTypeID())
      {
        return 1;
      }

      v9 = @"::";
    }

    else
    {
      if (v12 != 8 || v7 != CFStringGetTypeID())
      {
        return 1;
      }

      v9 = @"00:00:00:00:00:00";
    }

    return CFStringCompare(a3, v9, 0) != kCFCompareEqualTo && CFStringCompare(a3, &stru_285145FE8, 0) != kCFCompareEqualTo;
  }

  if (v7 != CFStringGetTypeID())
  {
    return 1;
  }

  v8 = CFStringCompare(a3, &stru_285145FE8, 0) == kCFCompareEqualTo;
  return !v8;
}

BOOL sub_23EB9A90C(uint64_t a1, const void *a2)
{
  v2 = sub_23EB9A954(a1, a2);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFBooleanGetValue(v2) != 0;
  CFRelease(v3);
  return v4;
}

const void *sub_23EB9A954(uint64_t a1, const void *a2)
{
  theDict = 0;
  if (!a2)
  {
    return 0;
  }

  v9 = 0;
  v4 = sub_23EB8BFFC(a1, 1937329234, &theDict, 0);
  v5 = 0;
  v6 = theDict;
  if (!v4 && theDict)
  {
    if (sub_23EB89D74(a1, 1937330789, &v9, 0) || (Value = CFDictionaryGetValue(theDict, @"regions")) == 0)
    {
      v5 = 0;
    }

    else
    {
      v5 = sub_23EB9048C(Value, Value, v9, a2);
    }

    v6 = theDict;
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v5;
}

uint64_t sub_23EB9AA24(uint64_t a1, uint64_t a2, int *a3)
{
  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  v7 = sub_23EB9AC64(v6);
  v8 = 4294967292;
  if (!a3 || !v7)
  {
    return v8;
  }

  if (v7 == 1398097521)
  {
    v9 = 604800;
LABEL_12:
    *a3 = v9;
    return 0;
  }

  if (v7 != 1918979445)
  {
    v9 = 0;
    goto LABEL_12;
  }

  v15 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_23EBADCE0(&__dst, *a2, *(a2 + 8));
  }

  else
  {
    __dst = *a2;
  }

  sub_23EB8CCB8(__p, "raMd");
  sub_23EB90814(&__dst, __p, &__dst);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = sub_23EB97374(a1, &__dst, &v15, 0);
  if (!v8)
  {
    if ((v15 - 4) > 6)
    {
      v10 = 2;
    }

    else
    {
      v10 = dword_23EC21F24[v15 - 4];
    }

    *a3 = v10;
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (!v8)
  {
    return 0;
  }

  return v8;
}

void sub_23EB9AB70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EB9ABA8(uint64_t a1, char *a2)
{
  cf = 0;
  sub_23EB8CCB8(__p, a2);
  v4 = sub_23EB912D0(a1, __p, &cf, 0);
  v5 = v4;
  if (v8 < 0)
  {
    operator delete(__p[0]);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else if (v4)
  {
    goto LABEL_3;
  }

  v5 = sub_23EB90ED4(a1, a2, cf, 0, 0);
LABEL_3:
  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

void sub_23EB9AC48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const char *sub_23EB9AC64(const char *a1)
{
  v1 = a1;
  v16 = 0;
  __p = 0;
  v14 = 0;
  v15 = 0;
  if (!a1)
  {
    return v1;
  }

  MEMORY[0x23EF1EFD0](&__p, a1);
  v2 = HIBYTE(v15);
  p_p = __p;
  if (v15 < 0)
  {
    v2 = v14;
  }

  else
  {
    p_p = &__p;
  }

  if (v2)
  {
    v4 = &p_p[v2];
    v5 = p_p;
    v6 = &p_p[v2];
    do
    {
      v7 = v5;
      v8 = v5;
      while (1)
      {
        v9 = *v8++;
        if (v9 == 46)
        {
          break;
        }

        v7 = v8;
        if (v8 == v4)
        {
          v7 = v6;
          goto LABEL_12;
        }
      }

      v5 = v7 + 1;
      v6 = v7;
    }

    while (v8 != v4);
LABEL_12:
    if (v7 != v4)
    {
      v10 = v7 - p_p;
      if (v10 != -1)
      {
        if (v10 - v2 != -5)
        {
          goto LABEL_15;
        }

LABEL_19:
        v12 = strlen(v1);
        sub_23EB4BD54(&v1[v12 - 4], 4uLL, &v16);
        v1 = v16;
        if ((v15 & 0x8000000000000000) == 0)
        {
          return v1;
        }

        goto LABEL_16;
      }
    }
  }

  if (strlen(v1) == 4)
  {
    goto LABEL_19;
  }

LABEL_15:
  v1 = 0;
  if (v15 < 0)
  {
LABEL_16:
    operator delete(__p);
  }

  return v1;
}

void sub_23EB9AD88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EB9ADA4(uint64_t a1, uint64_t a2, BOOL *a3)
{
  cf2 = 0;
  cf1 = 0;
  if (!a3)
  {
    return 4294967292;
  }

  *a3 = 0;
  v6 = sub_23EB912D0(a1, a2, &cf1, 1);
  if (v6 == -5)
  {
    v7 = 0;
LABEL_10:
    if (cf1)
    {
      CFRelease(cf1);
      cf1 = 0;
    }

    goto LABEL_12;
  }

  v7 = v6;
  if (v6)
  {
    goto LABEL_10;
  }

  if (cf1)
  {
    v7 = sub_23EB912D0(a1, a2, &cf2, 2);
    if (!v7)
    {
      if (cf2)
      {
        v7 = 0;
        *a3 = CFEqual(cf1, cf2) == 0;
      }

      else
      {
        v7 = 4294967291;
      }
    }

    goto LABEL_10;
  }

  v7 = 4294967291;
LABEL_12:
  if (cf2)
  {
    CFRelease(cf2);
  }

  return v7;
}

uint64_t sub_23EB9AE88(int a1, std::string *__str, _DWORD *a3, _DWORD *a4)
{
  if (!qword_27E383818)
  {
    return 4294960578;
  }

  v27 = 0;
  sub_23EB8DCF4(__str, &v27, 0);
  *a4 = 0;
  if (!v27)
  {
    *a3 = 9;
    if (dword_27E381AB0 <= 5000)
    {
      if (dword_27E381AB0 != -1 || (result = sub_23EB74AC8(&dword_27E381AB0, 0x1388u), result))
      {
        if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = __str;
        }

        else
        {
          v21 = __str->__r_.__value_.__r.__words[0];
        }

        sub_23EB75374(&dword_27E381AB0, "ACPStatus BaseStation::GetPropertyTypeInfo(const std::string &, ACPPropertyType &, BSUIType &) const", 5000, "Property in path: %s ***ASSUMED*** to be kACPPropertyTypeCustom\n", v7, v8, v9, v10, v21);
        return 0;
      }

      return result;
    }

    return 0;
  }

  v11 = *(qword_27E383818 + 8);
  if (v11)
  {
    v12 = qword_27E383818 + 8;
    do
    {
      if (*(v11 + 32) >= v27)
      {
        v12 = v11;
      }

      v11 = *(v11 + 8 * (*(v11 + 32) < v27));
    }

    while (v11);
    if (v12 != qword_27E383818 + 8 && v27 >= *(v12 + 32))
    {
      result = 0;
      v23 = *(v12 + 40);
      v24 = *(v23 + 8);
      LODWORD(v23) = *(v23 + 12);
      *a3 = v24;
      *a4 = v23;
      return result;
    }
  }

  v14 = dword_27E381AB0 > 5000 || v27 == 1918979378 || v27 == 1937327219;
  if (!v14 && (dword_27E381AB0 != -1 || sub_23EB74AC8(&dword_27E381AB0, 0x1388u)))
  {
    if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = __str;
    }

    else
    {
      v25 = __str->__r_.__value_.__r.__words[0];
    }

    sub_23EB75374(&dword_27E381AB0, "ACPStatus BaseStation::GetPropertyTypeInfo(const std::string &, ACPPropertyType &, BSUIType &) const", 5000, "Property in path: %s NOT in _propertyMap\n", v7, v8, v9, v10, v25);
  }

  v26 = 0;
  result = sub_23EB4BB3C(v27, &v26);
  if (!result)
  {
    v22 = *(v26 + 1);
    *a3 = v22;
    if (dword_27E381AB0 <= 5000)
    {
      result = 0;
      if (v27 != 1918979378 && v27 != 1937327219)
      {
        if (dword_27E381AB0 == -1)
        {
          result = sub_23EB74AC8(&dword_27E381AB0, 0x1388u);
          if (!result)
          {
            return result;
          }

          v22 = *a3;
        }

        sub_23EB75374(&dword_27E381AB0, "ACPStatus BaseStation::GetPropertyTypeInfo(const std::string &, ACPPropertyType &, BSUIType &) const", 5000, "...but found it in ACP Property Map, type: %d\n", v16, v17, v18, v19, v22);
        return 0;
      }

      return result;
    }

    return 0;
  }

  if (result != -5)
  {
    return result;
  }

  *a3 = 9;
  if (dword_27E381AB0 > 5000)
  {
    return 0;
  }

  if (dword_27E381AB0 != -1 || (result = sub_23EB74AC8(&dword_27E381AB0, 0x1388u), result))
  {
    if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = __str;
    }

    else
    {
      v20 = __str->__r_.__value_.__r.__words[0];
    }

    sub_23EB75374(&dword_27E381AB0, "ACPStatus BaseStation::GetPropertyTypeInfo(const std::string &, ACPPropertyType &, BSUIType &) const", 5000, "...and not found in ACP Property Map... so ***ASSUMED*** to be type: kACPPropertyTypeCustom\n", v16, v17, v18, v19, v20);
    return 0;
  }

  return result;
}

char *sub_23EB9B144(char *__s)
{
  if (!qword_27E383810)
  {
    v1 = __s;
    if ((__s[23] & 0x80000000) == 0 || (v1 = *__s) != 0)
    {
      v2 = strlen(v1);
      qword_27E383810 = malloc_type_malloc(v2 + 1, 0x100004077774924uLL);
      __s = strncpy(qword_27E383810, v1, v2);
      *(qword_27E383810 + v2) = 0;
    }
  }

  return __s;
}

BOOL sub_23EB9B1C4(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

uint64_t sub_23EB9B238(uint64_t a1, void *a2)
{
  propertyList = 0;
  if (!a2)
  {
    return 4294967292;
  }

  v3 = sub_23EB8BFFC(a1, 1349676902, &propertyList, 0);
  if (!v3)
  {
    DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x277CBECE8], propertyList, 2uLL);
    if (DeepCopy)
    {
      v3 = 0;
      *a2 = DeepCopy;
    }

    else
    {
      v3 = 4294960568;
    }
  }

  if (propertyList)
  {
    CFRelease(propertyList);
  }

  return v3;
}

uint64_t sub_23EB9B2C8(uint64_t a1, const __CFDictionary *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 4294960591;
  }

  v5 = *(a1 + 200);
  v4 = *(a1 + 208);
  if (v4 == v5)
  {
    sub_23EB8A428(a1, 0);
    v5 = *(a1 + 200);
    v4 = *(a1 + 208);
  }

  v6 = v4 - v5;
  if (v6 < 0xC)
  {
    return 4294960551;
  }

  v8 = v6 / 0xC;
  v9 = *MEMORY[0x277CBECE8];
  if (v8 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8;
  }

  while (1)
  {
    v12 = *v5;
    v5 += 12;
    v11 = v12;
    if (v12 != 1349676902)
    {
      break;
    }

LABEL_14:
    if (!--v10)
    {
      return 0;
    }
  }

  sub_23EB4BD2C(v11, v16);
  v13 = CFStringCreateWithCString(v9, v16, 0x8000100u);
  if (v13)
  {
    v14 = v13;
    Value = CFDictionaryGetValue(a2, v13);
    CFRelease(v14);
    if (Value)
    {
      sub_23EB8C09C(a1, v11, Value, 0);
    }

    goto LABEL_14;
  }

  return 4294960554;
}

uint64_t sub_23EB9B420(uint64_t a1, CFTypeRef *a2)
{
  cf = 0;
  v4 = sub_23EB9B238(a1, &cf);
  if (!v4)
  {
    if (!cf)
    {
      return 4294960551;
    }

    if (sub_23EB8BE08(a1, 1920159858))
    {
      Value = CFDictionaryGetValue(cf, @"restoreProfile");
      if (Value)
      {
        v4 = 0;
        if (a2)
        {
          *a2 = CFRetain(Value);
        }
      }

      else
      {
        v4 = 4294960569;
      }
    }

    else
    {
      v4 = 4294960561;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

uint64_t sub_23EB9B4DC(uint64_t a1)
{
  cf = 0;
  v2 = sub_23EB9B420(a1, &cf);
  v3 = cf;
  if (!v2 && cf)
  {
    v2 = sub_23EB9B2C8(a1, cf);
    v3 = cf;
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v2;
}

uint64_t sub_23EB9B540(uint64_t a1, const __CFArray **a2)
{
  if (!sub_23EB9B5C4(a1))
  {
    return 4294960569;
  }

  v4 = *(a1 + 104);
  if (!v4)
  {
    return 4294960569;
  }

  if (!a2)
  {
    return 4294960591;
  }

  v5 = sub_23EBAF698(*(a1 + 40), *(*(*(a1 + 72) + (((v4 + *(a1 + 96) - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v4 + *(a1 + 96) - 1) & 0x1FF)));
  *a2 = v5;
  if (v5)
  {
    return 0;
  }

  else
  {
    return 4294960569;
  }
}

uint64_t sub_23EB9B624(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (!v1)
  {
    return 4294960591;
  }

  DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x277CBECE8], v1, 2uLL);
  if (!DeepCopy)
  {
    return 4294960568;
  }

  sub_23EBADF7C((a1 + 64), &DeepCopy);
  return 0;
}

uint64_t sub_23EB9B694(uint64_t a1, int a2)
{
  v3 = *(a1 + 40);
  if (!v3)
  {
    return 4294960591;
  }

  v4 = *(a1 + 104);
  if (!v4)
  {
    return 4294960569;
  }

  if (a2)
  {
    CFRelease(v3);
    v5 = *(a1 + 104) - 1;
    *(a1 + 40) = *(*(*(a1 + 72) + (((v5 + *(a1 + 96)) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v5 + *(a1 + 96)) & 0x1FF));
    *(a1 + 384) = 0;
  }

  else
  {
    CFRelease(*(*(*(a1 + 72) + (((v4 + *(a1 + 96) - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v4 + *(a1 + 96) - 1) & 0x1FF)));
    v5 = *(a1 + 104) - 1;
  }

  *(a1 + 104) = v5;
  sub_23EBAE648((a1 + 64), 1);
  return 0;
}

BOOL sub_23EB9B750(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char **a5)
{
  if ((a4 - 1) > 1)
  {
    return sub_23EB9BB90(a1, a2, a3, a5, 0);
  }

  else
  {
    return sub_23EB9B77C(a3, a4, a5, 0);
  }
}

BOOL sub_23EB9B77C(uint64_t a1, int a2, char **a3, char a4)
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 23);
  if (v4 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (v4 >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = *(a1 + 8);
  }

  if (!v6)
  {
    return v6;
  }

  if (a2 == 2)
  {
    v9 = 13;
  }

  else
  {
    v9 = 5;
  }

  if (v6 == v9)
  {
    v10 = *a3;
    v11 = a3[1] - *a3;
    if (v6 <= v11)
    {
      if (v6 < v11)
      {
        a3[1] = &v10[v6];
      }
    }

    else
    {
      sub_23EBADE2C(a3, v6 - v11);
      v10 = *a3;
    }

    v17 = v5;
    v18 = v6;
    goto LABEL_26;
  }

  v36 = 0;
  v13 = 10;
  if (a2 == 2)
  {
    v13 = 26;
  }

  if (v6 == v13)
  {
    if (strspn(v5, "0123456789abcdefABCDEF") == v6)
    {
      if (v6 == 10)
      {
        v14 = 5;
      }

      else
      {
        v14 = 13;
      }

      v15 = *a3;
      v16 = a3[1] - *a3;
      if (v14 <= v16)
      {
        if (v14 < v16)
        {
          a3[1] = &v15[v14];
        }
      }

      else
      {
        sub_23EBADE2C(a3, v14 - v16);
        v15 = *a3;
      }

      v23 = sub_23EB7EFEC(v5, v6, v14, v15, &v36);
LABEL_67:
      if (!v23)
      {
        return v36 == v14;
      }

      return 0;
    }

    if (a2 != 2 || v6 != 15)
    {
      goto LABEL_36;
    }

    goto LABEL_33;
  }

  v19 = 7;
  if (a2 == 2)
  {
    v19 = 15;
  }

  if (v6 == v19)
  {
LABEL_33:
    if (*v5 == 34 && v5[v6 - 1] == 34)
    {
      sub_23EB994CC(a3, v6 - 2);
      v10 = *a3;
      v17 = v5 + 1;
      v18 = v6 - 2;
LABEL_26:
      memcpy(v10, v17, v18);
      return 1;
    }
  }

LABEL_36:
  v20 = 11;
  if (a2 == 2)
  {
    v20 = 27;
  }

  if (v6 == v20 && *v5 == 36)
  {
    v21 = strspn(v5 + 1, "0123456789abcdefABCDEF");
    if (v21 == v6 - 1)
    {
      v22 = v21;
      if (v6 == 11)
      {
        v14 = 5;
      }

      else
      {
        v14 = 13;
      }

      sub_23EB994CC(a3, v14);
      v23 = sub_23EB7EFEC(v5 + 1, v22, v14, *a3, &v36);
      goto LABEL_67;
    }
  }

  v24 = 12;
  if (a2 == 2)
  {
    v24 = 28;
  }

  if (v6 == v24 && *v5 == 48 && (v5[1] | 0x20) == 0x78)
  {
    v25 = strspn(v5 + 2, "0123456789abcdefABCDEF");
    if (v25 == v6 - 2)
    {
      v26 = v25;
      if (v6 == 12)
      {
        v14 = 5;
      }

      else
      {
        v14 = 13;
      }

      sub_23EB994CC(a3, v14);
      v23 = sub_23EB7EFEC(v5 + 2, v26, v14, *a3, &v36);
      goto LABEL_67;
    }
  }

  v28 = *a3;
  v27 = a3[1];
  if (a4)
  {
    if (v27 != v28)
    {
      v6 = 0;
      a3[1] = v28;
      return v6;
    }

    return 0;
  }

  v29 = v27 - v28;
  if (v9 <= v29)
  {
    if (v9 < v29)
    {
      a3[1] = &v28[v9];
    }
  }

  else
  {
    sub_23EBADE2C(a3, v9 - v29);
    v28 = *a3;
  }

  v30 = strlen(v5);
  v31 = malloc_type_malloc(v30 + 17, 0x100004075806E5BuLL);
  v6 = v31 != 0;
  if (v31)
  {
    v32 = v31;
    v33 = strcpy(v31, v5);
    strcpy(&v32[strlen(v33)], "\x16\xEB\xAD\x57\x0F\xF4\xE3\xDE\x7Dtr\xE8\xD2\xAB\xA6\xA7");
    sub_23EB78D7C(v37);
    v34 = strlen(v32);
    sub_23EB78D90(v37, v32, v34);
    sub_23EB78D98(&__src, v37);
    sub_23EB78D90(v37, &__src, 0x10uLL);
    sub_23EB78D98(&__src, v37);
    sub_23EB78D90(v37, &__src, 0x10uLL);
    sub_23EB78D98(&__src, v37);
    memcpy(v28, &__src, v9);
    free(v32);
  }

  return v6;
}

BOOL sub_23EB9BB90(uint64_t a1, uint64_t a2, uint64_t a3, char **a4, char *a5)
{
  v14[0] = 0;
  v14[1] = 0;
  v15 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_23EBADCE0(&__dst, *a2, *(a2 + 8));
  }

  else
  {
    __dst = *a2;
  }

  sub_23EB8CCB8(__p, "raNm");
  sub_23EB90814(&__dst, __p, &__dst);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  sub_23EB97710(a1, &__dst, v14, 0);
  v9 = sub_23EB9BCD0(a3, v14, a4, a5);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }

  return v9;
}

void sub_23EB9BC80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_23EB9BCD0(uint64_t a1, void **a2, char **a3, char *a4)
{
  v22 = 0;
  v6 = *(a1 + 23);
  if (v6 >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  if (v6 >= 0)
  {
    v8 = *(a1 + 23);
  }

  else
  {
    v8 = *(a1 + 8);
  }

  if ((v8 - 8) > 0x37)
  {
    if (v8 == 64 && strspn(v7, "0123456789abcdefABCDEF") == 64)
    {
      v14 = *a3;
      v15 = a3[1] - *a3;
      if (v15 > 0x1F)
      {
        if (v15 != 32)
        {
          a3[1] = v14 + 32;
        }
      }

      else
      {
        sub_23EBADE2C(a3, 32 - v15);
        v14 = *a3;
      }

      if (!sub_23EB7EFEC(v7, 64, 32, v14, &v22))
      {
        v21 = 0;
        result = v22 == 32;
        if (!a4)
        {
          return result;
        }

        goto LABEL_32;
      }
    }

LABEL_31:
    result = 0;
    v21 = 0;
    if (!a4)
    {
      return result;
    }

    goto LABEL_32;
  }

  v10 = v7;
  do
  {
    v12 = *v10++;
    v11 = v12;
  }

  while ((v12 - 127) > 0xFFFFFFA0);
  if (v11)
  {
    goto LABEL_31;
  }

  v13 = a3[1] - *a3;
  if (v13 > 0x1F)
  {
    if (v13 != 32)
    {
      a3[1] = *a3 + 32;
    }
  }

  else
  {
    sub_23EBADE2C(a3, 32 - v13);
  }

  v16 = *(a2 + 23);
  if ((v16 & 0x80000000) != 0)
  {
    v19 = a2;
    a2 = *a2;
    v18 = v19[1];
    if (v18 >= 0x20)
    {
      v17 = 32;
    }

    else
    {
      v17 = v18;
    }
  }

  else if (v16 >= 0x20)
  {
    v17 = 32;
  }

  else
  {
    v17 = v16;
  }

  sub_23EB844B8(v7, v8, a2, v17, *a3);
  result = 1;
  v21 = 1;
  if (a4)
  {
LABEL_32:
    *a4 = v21;
  }

  return result;
}

uint64_t sub_23EB9BE68(uint64_t a1, int a2)
{
  v2 = *(a1 + 260);
  if (v2 == 1 || v2 == 4)
  {
    if (a2 == 5)
    {
      return 1;
    }

    v4 = &unk_23EC21E30;
    v5 = 37;
    while (--v5)
    {
      v6 = v4 + 5;
      v7 = v4[6];
      v4 += 5;
      if (v7 == a2)
      {
        return *v6;
      }
    }
  }

  else
  {
    if (a2 == 5)
    {
      return 1;
    }

    v9 = &unk_23EC21E30;
    v10 = 37;
    while (--v10)
    {
      v6 = v9 + 5;
      v11 = v9[7];
      v9 += 5;
      if (v11 == a2)
      {
        return *v6;
      }
    }
  }

  return 37;
}

uint64_t sub_23EB9BEF4(uint64_t a1, _BYTE *a2, BOOL *a3, uint64_t a4)
{
  v4 = a4;
  v23 = 0;
  cf = 0;
  v7 = sub_23EB8BFFC(a1, 1466517097, &cf, a4);
  v8 = v7;
  if ((v4 != 1 || v7 != -5) && !v7)
  {
    Value = CFDictionaryGetValue(cf, @"radios");
    if (Value)
    {
      v11 = Value;
      Count = CFArrayGetCount(Value);
      if (Count < 1)
      {
        goto LABEL_18;
      }

      v18 = Count;
      for (i = 0; i != v18; ++i)
      {
        sub_23EB6FF14(v11, &v23, "[*].%kO:int", v13, v14, v15, v16, v17, i);
        if (v20)
        {
          v8 = v20;
          goto LABEL_4;
        }

        v21 = v23;
        if (v23)
        {
          break;
        }

        v8 = 0;
      }

      *a2 = 1;
      if (a3)
      {
        v8 = 0;
        *a3 = (v21 & 2) != 0;
      }

      else
      {
LABEL_18:
        v8 = 0;
      }
    }

    else
    {
      v8 = 4294967291;
    }
  }

LABEL_4:
  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t sub_23EB9C020(uint64_t a1, CFArrayRef theArray)
{
  Value = theArray;
  v15 = 0;
  cf = 0;
  if (!theArray)
  {
    if (!sub_23EB8BE08(a1, 1935819842))
    {
      return 0;
    }

    if (sub_23EB8BFFC(a1, 1466517097, &cf, 0))
    {
      goto LABEL_10;
    }

    Value = CFDictionaryGetValue(cf, @"radios");
    if (!Value)
    {
      goto LABEL_10;
    }
  }

  Count = CFArrayGetCount(Value);
  if (Count >= 2)
  {
    v9 = Count;
    v10 = 0;
    while (1)
    {
      sub_23EB6FF14(Value, &v15, "[*].%kO:int", v4, v5, v6, v7, v8, v10);
      if (!v11 && (v15 & 0x70) != 0)
      {
        break;
      }

      if (v9 == ++v10)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v10 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

BOOL sub_23EB9C128(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v6 = 0;
  memset(&__p, 0, sizeof(__p));
  if (!sub_23EB8BE08(a1, 1198748750))
  {
    return 0;
  }

  v2 = sub_23EBB65EC(v7, 0x11uLL);
  MEMORY[0x23EF1EFD0](&__p, v2);
  sub_23EB8FB78(&__p, 1651722053, &__p);
  sub_23EB97588(a1, &__p, &v6, 0);
  v3 = v6;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v3;
}

void sub_23EB9C1FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_23EB9C218(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  if (!sub_23EB8BE08(a1, 1935819842))
  {
    return 0;
  }

  memset(&v18, 0, sizeof(v18));
  v17 = 0;
  if (sub_23EB8F428(a1, 0) != 2)
  {
    return 0;
  }

  v4 = 0;
  v5 = 1;
  while (1)
  {
    MEMORY[0x23EF1EFD0](&v18, "WiFi.radios.[*].");
    snprintf(__str, 0x10uLL, "%ld", v4);
    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v18;
    }

    else
    {
      v6 = v18.__r_.__value_.__r.__words[0];
    }

    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = SHIBYTE(v18.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v18.__r_.__value_.__l.__size_;
    }

    v8 = v6 + size;
    if (size >= 1)
    {
      v9 = v6;
      do
      {
        v10 = memchr(v9, 42, size);
        if (!v10)
        {
          break;
        }

        if (*v10 == 42)
        {
          goto LABEL_16;
        }

        v9 = (v10 + 1);
        size = v8 - v9;
      }

      while (v8 - v9 > 0);
    }

    v10 = v8;
LABEL_16:
    if (v10 == v8)
    {
      v11 = -1;
    }

    else
    {
      v11 = v10 - v6;
    }

    std::string::replace(&v18, v11, 1uLL, __str);
    sub_23EB8CCB8(__p, "raCA");
    sub_23EB90814(&v18, __p, &v18);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    if (sub_23EB97588(a1, &v18, &v17, a2))
    {
      break;
    }

    v12 = v5 & v17;
    v4 = 1;
    v5 = 0;
    if ((v12 & 1) == 0)
    {
      v13 = !v17;
      goto LABEL_27;
    }
  }

  v13 = 0;
LABEL_27:
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  return v13;
}

void sub_23EB9C3F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EB9C430(uint64_t a1, uint64_t a2)
{
  v62 = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  v5 = sub_23EB9AC64(v4);
  v60 = 0;
  if (!v5)
  {
    return 1;
  }

  v6 = v5;
  sub_23EBB4A90(v5, &v60);
  if (v60 && !sub_23EB8BE08(a1, v60))
  {
    return 0;
  }

  v58 = 0;
  v59 = 0;
  v57 = 0;
  v56 = 0;
  v7 = sub_23EB8BE08(a1, 1935819842);
  v8 = sub_23EB8BE08(a1, 1198748750);
  v9 = sub_23EB8BE08(a1, 1196311928);
  v55 = 0;
  v54 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_23EBADCE0(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v52 = 0;
  v51 = 0;
  v50 = 0;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  if (sub_23EB89D74(a1, 1651722563, &v49, 0))
  {
    goto LABEL_44;
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (size == 4)
  {
    v12 = sub_23EBB65EC(v61, 0x11uLL);
    MEMORY[0x23EF1EFD0](&__p, v12);
  }

  sub_23EB8FB78(&__p, 1651723853, &__p);
  if (sub_23EB97374(a1, &__p, &v59 + 4, 0))
  {
    goto LABEL_44;
  }

  v13 = HIDWORD(v59);
  v14 = !HIDWORD(v59) || HIDWORD(v59) == 10;
  v15 = v14;
  sub_23EB8FB78(&__p, 1651718221, &__p);
  if (sub_23EB97374(a1, &__p, &v58, 0))
  {
    goto LABEL_44;
  }

  if (v7)
  {
    v16 = (v58 & 0xFFFF0000) == 0x50000 || (v58 & 0xFFFD0000) == 0x80000;
    LOBYTE(v17) = v16;
  }

  else if (v58 > 0xA)
  {
    LOBYTE(v17) = 0;
  }

  else
  {
    v17 = 0x520u >> v58;
  }

  sub_23EB8FB78(&__p, 1651725133, &__p);
  if (sub_23EB97374(a1, &__p, &v59, 0))
  {
    goto LABEL_44;
  }

  v18 = sub_23EB9C128(a1);
  HIDWORD(v58) = 1;
  if (v18)
  {
    sub_23EB8FB78(&__p, 1651722067, &__p);
    sub_23EB97374(a1, &__p, &v58 + 4, 0);
  }

  if (sub_23EB975E8(a1, 1918979649, &v57 + 1, 0))
  {
    goto LABEL_44;
  }

  if (sub_23EB89D74(a1, 1851868780, &v50, 0))
  {
    goto LABEL_44;
  }

  if (sub_23EB975E8(a1, 1918977107, &v57, 0))
  {
    goto LABEL_44;
  }

  if (sub_23EB975E8(a1, 1651721811, &v55, 0))
  {
    goto LABEL_44;
  }

  if (sub_23EB975E8(a1, 1635078738, &v48 + 1, 0))
  {
    goto LABEL_44;
  }

  if (sub_23EB975E8(a1, 1885688643, &v48, 0))
  {
    goto LABEL_44;
  }

  v54 = 2;
  v46 = v55;
  if (v55 && (sub_23EB975E8(a1, 1651724870, &v56, 0) || sub_23EB89D74(a1, 1651721805, &v54, 0)))
  {
    goto LABEL_44;
  }

  if (sub_23EB8BE08(a1, 1768961606))
  {
    if (sub_23EB89D74(a1, 912483943, &v52, 0) || sub_23EB975E8(a1, 912356724, &v51 + 1, 0) || sub_23EB975E8(a1, 913532535, &v51, 0))
    {
      goto LABEL_44;
    }
  }

  else
  {
    v52 = 0;
  }

  if (sub_23EB975E8(a1, 2002929006, &v47, 0) || (v20 = v59, v45 = sub_23EB8BE08(a1, 1950434124), sub_23EB8FB78(&__p, 1651720532, &__p), sub_23EB97374(a1, &__p, &v50 + 4, 0)))
  {
LABEL_44:
    v10 = 1;
    goto LABEL_45;
  }

  v21 = v20 - 9;
  v10 = 1;
  if (v6 <= 1684551988)
  {
    if (v6 > 1651721024)
    {
      if (v6 > 1651724354)
      {
        if (v6 <= 1651725132)
        {
          if (v6 <= 1651724876)
          {
            if (v6 != 1651724355)
            {
              v10 = v15;
              if (v6 != 1651724867)
              {
                v10 = 1;
                if (v6 == 1651724870)
                {
                  v33 = HIBYTE(v57);
                  v34 = v46;
LABEL_320:
                  v10 = v33 & v34;
                  goto LABEL_45;
                }
              }

              goto LABEL_45;
            }

LABEL_271:
            v28 = v49 == 2;
LABEL_272:
            v10 = v28;
            goto LABEL_45;
          }

          if (v6 != 1651724877)
          {
            if (v6 != 1651724880)
            {
              if (v6 == 1651725131)
              {
                v10 = v13 != 3 && v59 != 1 && v21 > 3;
              }

              goto LABEL_45;
            }

            goto LABEL_242;
          }

          goto LABEL_231;
        }

        if (v6 <= 1651726149)
        {
          if (v6 == 1651725133)
          {
            goto LABEL_279;
          }

          if (v6 == 1651725143)
          {
            goto LABEL_242;
          }

          v26 = 22339;
        }

        else
        {
          if (v6 > 1651733075)
          {
            if (v6 == 1651733076)
            {
              goto LABEL_255;
            }

            v40 = 1683440723;
            goto LABEL_266;
          }

          if (v6 == 1651726150)
          {
            v10 = v56;
            goto LABEL_45;
          }

          v26 = 22357;
        }

        v27 = v26 | 0x62730000;
        goto LABEL_193;
      }

      if (v6 > 1651722061)
      {
        if (v6 <= 1651723636)
        {
          if (v6 != 1651722062)
          {
            if (v6 == 1651722064)
            {
              v39 = !v18 || HIDWORD(v58) == 1;
              goto LABEL_311;
            }

            if (v6 != 1651722067)
            {
              goto LABEL_45;
            }
          }

          v10 = v18;
          goto LABEL_45;
        }

        if ((v6 - 1651724337) < 2)
        {
          goto LABEL_255;
        }

        v41 = 19829;
      }

      else
      {
        if (v6 <= 1651722048)
        {
          if (v6 == 1651721025)
          {
            v33 = v52 != 0;
            v34 = HIBYTE(v51);
            goto LABEL_320;
          }

          if (v6 != 1651721040)
          {
            if (v6 != 1651721797)
            {
              goto LABEL_45;
            }

            if (v52 == 5 || v52 == 3) && (v51)
            {
              v37 = 1;
            }

            else
            {
              v37 = HIBYTE(v57);
            }

            goto LABEL_332;
          }

          if (v52 == 5 || v52 == 3)
          {
            v37 = HIBYTE(v51);
            goto LABEL_332;
          }

          goto LABEL_301;
        }

        if (v6 <= 1651722052)
        {
          v10 = v46;
          if (v6 != 1651722049)
          {
            v10 = 1;
            if (v6 == 1651722052)
            {
LABEL_230:
              v33 = v18;
              v34 = v57;
              goto LABEL_320;
            }
          }

          goto LABEL_45;
        }

        if (v6 == 1651722053)
        {
          if (v8)
          {
            if (v13 != 10 && v13 || HIBYTE(v57) != v57)
            {
              v10 = v13 == 20 && v9;
            }

            goto LABEL_45;
          }

          goto LABEL_328;
        }

        v41 = 18251;
      }

      v40 = v41 | 0x62730000;
LABEL_266:
      if (v6 != v40)
      {
        goto LABEL_45;
      }

      goto LABEL_267;
    }

    if (v6 > 1397572214)
    {
      if (v6 <= 1651717458)
      {
        if (v6 > 1635077709)
        {
          if (v6 <= 1635214180)
          {
            if (v6 == 1635077710 || v6 == 1635077712)
            {
              v10 = HIBYTE(v48);
            }

            goto LABEL_45;
          }

          if (v6 != 1635214181)
          {
            if (v6 != 1651717454)
            {
              goto LABEL_45;
            }

            goto LABEL_245;
          }

          goto LABEL_248;
        }

        v10 = v46;
        if (v6 == 1397572215)
        {
          goto LABEL_45;
        }

        if (v6 != 1633116526)
        {
          v10 = 1;
          if (v6 != 1633899617)
          {
            goto LABEL_45;
          }

          v35 = v13 == 1;
          v36 = (HIDWORD(v50) == 1) & ~v45;
LABEL_290:
          if (v35)
          {
            v10 = 0;
          }

          else
          {
            v10 = v36;
          }

          goto LABEL_45;
        }

        v37 = HIBYTE(v48) & HIBYTE(v57);
LABEL_332:
        v10 = v37 & 1;
        goto LABEL_45;
      }

      if (v6 > 1651717711)
      {
        if (v6 > 1651718220)
        {
          if (v6 != 1651718221)
          {
            if (v6 != 1651720532)
            {
              goto LABEL_45;
            }

            v39 = v13 == 1;
            goto LABEL_311;
          }

          goto LABEL_280;
        }

        if (v6 != 1651717712)
        {
          if (v6 != 1651717715)
          {
            goto LABEL_45;
          }

          if ((sub_23EB9D5D0(a1) & 1) == 0)
          {
            v28 = (v52 & 0xFFFFFFFB) == 1;
            goto LABEL_272;
          }

          goto LABEL_328;
        }

        v31 = v52 == 3 || v52 == 5;
        goto LABEL_315;
      }

      if (v6 == 1651717459)
      {
        goto LABEL_245;
      }

      if (v6 != 1651717697)
      {
        v38 = 1651717709;
        goto LABEL_207;
      }

LABEL_278:
      v33 = v52 != 0;
LABEL_318:
      v44 = HIBYTE(v51);
LABEL_319:
      v34 = v44 ^ 1;
      goto LABEL_320;
    }

    if (v6 > 912684907)
    {
      if (v6 > 913601123)
      {
        if (v6 > 1229409615)
        {
          if (v6 != 1229409616)
          {
            if (v6 == 1397572211)
            {
              v10 = v46;
            }

            goto LABEL_45;
          }

          v25 = sub_23EB8BE08(a1, 1229409616);
          goto LABEL_330;
        }

        if (v6 != 913601124)
        {
          v24 = 1146250611;
          goto LABEL_157;
        }

LABEL_227:
        if (v52 == 5 || v52 == 3)
        {
          v37 = v51;
          goto LABEL_332;
        }

LABEL_301:
        v37 = 0;
        goto LABEL_332;
      }

      if (v6 == 912684908 || v6 == 913532259)
      {
        goto LABEL_227;
      }

      if (v6 != 913532535)
      {
        goto LABEL_45;
      }

LABEL_180:
      v28 = v52 == 3 || v52 == 5;
      goto LABEL_272;
    }

    if (v6 > 911697782)
    {
      if (v6 == 911697783)
      {
LABEL_208:
        v39 = v52 == 0;
        goto LABEL_311;
      }

      if (v6 != 911701093)
      {
        v38 = 912356724;
LABEL_207:
        if (v6 != v38)
        {
          goto LABEL_45;
        }

        goto LABEL_208;
      }

      v31 = v52 == 3;
    }

    else
    {
      if (v6 == 910975332)
      {
        goto LABEL_180;
      }

      if (v6 == 911696228)
      {
        goto LABEL_278;
      }

      if (v6 != 911697528)
      {
        goto LABEL_45;
      }

      v31 = (v52 & 0xFFFFFFFB) == 1;
    }

LABEL_315:
    v33 = v31;
    goto LABEL_318;
  }

  if (v6 > 1918978899)
  {
    if (v6 > 1937330788)
    {
      if (v6 > 2002929741)
      {
        if (v6 <= 2002932291)
        {
          if ((v6 - 2002929742) > 7 || ((1 << (v6 - 78)) & 0x85) == 0)
          {
            goto LABEL_45;
          }
        }

        else if ((v6 - 2002932292) > 0x11 || ((1 << (v6 - 68)) & 0x21001) == 0)
        {
          if (v6 != 2003003251 && v6 != 2003003253)
          {
            goto LABEL_45;
          }

LABEL_248:
          v25 = sub_23EB8BE08(a1, 1635215715);
          goto LABEL_330;
        }

        v10 = v47;
        goto LABEL_45;
      }

      if (v6 <= 2002863170)
      {
        if (v6 != 1937330789)
        {
          if (v6 != 1950434124)
          {
            if (v6 != 1970500196)
            {
              goto LABEL_45;
            }

            v29 = v54 == 0;
LABEL_239:
            v10 = v29 && v46;
            goto LABEL_45;
          }

          v36 = v45;
          if (HIDWORD(v50) != 3)
          {
            v36 = 0;
          }

          v35 = v13 == 1;
          goto LABEL_290;
        }

        goto LABEL_245;
      }

      if (v6 != 2002863171)
      {
        if (v6 == 2002867012)
        {
          goto LABEL_242;
        }

        if (v6 != 2002929006)
        {
          goto LABEL_45;
        }

        v25 = sub_23EB8BE08(a1, 2000834122);
        goto LABEL_330;
      }

      v39 = v49 == 2 || v49 == 7;
LABEL_311:
      v10 = !v39;
      goto LABEL_45;
    }

    if (v6 > 1918980718)
    {
      if (v6 <= 1918981425)
      {
        if (v6 != 1918980719)
        {
          if (v6 != 1918980914)
          {
            v30 = 21349;
            goto LABEL_254;
          }

          goto LABEL_255;
        }

        if (v13 == 10 || !v13)
        {
          if (sub_23EBB6BD8(v58) && sub_23EB8BE08(a1, 1382109807))
          {
            goto LABEL_45;
          }

          if (sub_23EBB6BB0(v58))
          {
            v25 = sub_23EB8BE08(a1, 1381123655);
            goto LABEL_330;
          }
        }
      }

      else
      {
        if (v6 > 1937006963)
        {
          if (v6 != 1937006964 && v6 != 1937011781)
          {
            goto LABEL_45;
          }

          v25 = sub_23EB8BE08(a1, 1097749364);
LABEL_330:
          v10 = v25;
          goto LABEL_45;
        }

        if (v6 == 1918981426)
        {
          goto LABEL_255;
        }

        if (v6 != 1918981955)
        {
          goto LABEL_45;
        }

        if (v13 == 10 || !v13) && (v17)
        {
          v25 = sub_23EB9A90C(a1, @"ht40_5GHz");
          goto LABEL_330;
        }
      }

LABEL_328:
      v10 = 0;
      goto LABEL_45;
    }

    if (v6 <= 1918979648)
    {
      if (v6 == 1918978900)
      {
LABEL_267:
        v10 = v15;
        goto LABEL_45;
      }

      if (v6 != 1918979428)
      {
        v32 = 19829;
LABEL_212:
        v40 = v32 | 0x72610000;
        goto LABEL_266;
      }

LABEL_280:
      if (v13 == 10 || !v13)
      {
        v10 = !sub_23EB8BE08(a1, 1852782669);
        goto LABEL_45;
      }

      goto LABEL_328;
    }

    if (v6 == 1918979649)
    {
LABEL_231:
      v61[0] = 0;
      v10 = sub_23EB89D74(a1, 1937326416, v61, 0);
      if (v10)
      {
        goto LABEL_45;
      }

      v35 = sub_23EB4BDAC(v61[0]) == 1 && v13 == 3;
      v36 = (v13 == 20) ^ (v13 != 1);
      goto LABEL_290;
    }

    if (v6 != 1918979693)
    {
      v32 = 20591;
      goto LABEL_212;
    }

LABEL_279:
    v39 = v13 == 3;
    goto LABEL_311;
  }

  if (v6 <= 1885687894)
  {
    if (v6 <= 1735279206)
    {
      if (v6 <= 1684556900)
      {
        if (v6 != 1684551989 && v6 != 1684554343)
        {
          v22 = 17774;
          goto LABEL_156;
        }

LABEL_158:
        v10 = v57;
        goto LABEL_45;
      }

      if (v6 <= 1718186596)
      {
        if (v6 != 1684556901)
        {
          v22 = 19815;
LABEL_156:
          v24 = v22 | 0x64680000;
LABEL_157:
          if (v6 != v24)
          {
            goto LABEL_45;
          }

          goto LABEL_158;
        }

        goto LABEL_158;
      }

      if (v6 != 1718186597)
      {
        if (v6 != 1718842224)
        {
          goto LABEL_45;
        }

        v29 = v54 == 1;
        goto LABEL_239;
      }

LABEL_242:
      v10 = HIBYTE(v57);
      goto LABEL_45;
    }

    if (v6 > 1849970009)
    {
      if (v6 <= 1885684034)
      {
        if (v6 == 1849970010)
        {
          goto LABEL_242;
        }

        v27 = 1851868780;
        goto LABEL_193;
      }

      if (v6 != 1885684035)
      {
        if (v6 != 1885686084)
        {
          goto LABEL_45;
        }

        v33 = v49 == 2;
        v44 = v48;
        goto LABEL_319;
      }

      goto LABEL_271;
    }

    if (v6 != 1735279207 && v6 != 1735279982)
    {
      v27 = 1818315088;
LABEL_193:
      if (v6 != v27)
      {
        goto LABEL_45;
      }

      goto LABEL_242;
    }

    goto LABEL_230;
  }

  if (v6 > 1918976875)
  {
    if (v6 > 1918977643)
    {
      if ((v6 - 1918978353) >= 2)
      {
        v30 = 18028;
        goto LABEL_254;
      }

LABEL_255:
      v28 = v21 < 4 || HIDWORD(v50) == 2;
      goto LABEL_272;
    }

    if (v6 != 1918976876)
    {
      if (v6 != 1918977107)
      {
        v30 = 17970;
        goto LABEL_254;
      }

      goto LABEL_231;
    }

LABEL_245:
    if (v13 == 20)
    {
      v10 = 1;
    }

    else
    {
      v10 = v15;
    }

    goto LABEL_45;
  }

  if (v6 > 1885689165)
  {
    if (v6 <= 1918976372)
    {
      if (v6 != 1885689166)
      {
        if (v6 == 1886213217)
        {
          v23 = sub_23EB8BE08(a1, 1181898604);
          v10 = !v23 & HIBYTE(v57);
        }

        goto LABEL_45;
      }

      goto LABEL_271;
    }

    if (v6 != 1918976373)
    {
      v30 = 17257;
LABEL_254:
      if (v6 != (v30 | 0x72610000))
      {
        goto LABEL_45;
      }

      goto LABEL_255;
    }

    goto LABEL_255;
  }

  if (v6 == 1885687895 || v6 == 1885688643 || v6 == 1885688654)
  {
    goto LABEL_271;
  }

LABEL_45:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v10;
}