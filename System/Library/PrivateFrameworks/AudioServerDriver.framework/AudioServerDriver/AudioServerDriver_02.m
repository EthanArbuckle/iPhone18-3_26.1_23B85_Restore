void CASmartPreferences::AddHandler<int>(CASmartPreferences *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = *MEMORY[0x277D85DE8];
  CASmartPreferences::instance(a1);
  std::__function::__value_func<void ()(int)>::__value_func[abi:ne200100](v5, a4);
  v5[7] = 0;
  operator new();
}

void sub_241629998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<BOOL ()(void const*)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](v6 + 8);
  _Unwind_Resume(a1);
}

uint64_t PrefValueToPriority(const __CFString *a1, BOOL *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  valuePtr = -1;
  v4 = CFGetTypeID(a1);
  if (v4 == CFNumberGetTypeID())
  {
    CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
    v5 = valuePtr + 3;
  }

  else
  {
    if (v4 != CFStringGetTypeID())
    {
      goto LABEL_22;
    }

    if (CFEqual(a1, @"error"))
    {
      v5 = 1;
      goto LABEL_23;
    }

    if (CFEqual(a1, @"warning"))
    {
      v5 = 2;
      goto LABEL_23;
    }

    if (CFEqual(a1, @"note") || CFEqual(a1, @"notice"))
    {
      v5 = 3;
      goto LABEL_23;
    }

    if (CFEqual(a1, @"info"))
    {
      v5 = 4;
      goto LABEL_23;
    }

    if (CFEqual(a1, @"details"))
    {
      v5 = 5;
      goto LABEL_23;
    }

    if (CFEqual(a1, @"minutiae"))
    {
      v5 = 6;
      goto LABEL_23;
    }

    if (CFEqual(a1, @"spew"))
    {
      v5 = 7;
      goto LABEL_23;
    }

    if (!CFStringGetCString(a1, buffer, 64, 0x8000100u))
    {
LABEL_22:
      v5 = -1;
      goto LABEL_23;
    }

    v10 = 0;
    v6 = sscanf(buffer, "%d", &v10);
    v5 = v10 + 3;
    if (v6 != 1)
    {
      v5 = -1;
    }
  }

LABEL_23:
  *a2 = v5 > 0;
  v7 = *MEMORY[0x277D85DE8];
  return v5 & ~(v5 >> 31);
}

uint64_t CALog::RegisterScope(CALog *this, uint64_t a2, unint64_t a3, const char *a4, const char *a5, const char *a6)
{
  if ((CALog::sSubscopeMask & a2) != 0)
  {
    CALog::RegisterScope(a2);
    v14 = v13;
    MEMORY[0x245CEB8C0](v6, v7);
    _Unwind_Resume(v14);
  }

  if (!a2)
  {
    goto LABEL_9;
  }

  pthread_rwlock_rdlock(&sLock);
  if (!gScopes || (v9 = *gScopes, v10 = *(gScopes + 8), *gScopes == v10))
  {
LABEL_7:
    v11 = 0;
  }

  else
  {
    while (*v9 != (CALog::sScopeMask & a2))
    {
      v9 += 2;
      if (v9 == v10)
      {
        goto LABEL_7;
      }
    }

    v11 = v9[1];
  }

  pthread_rwlock_unlock(&sLock);
  if (!v11)
  {
LABEL_9:
    operator new();
  }

  return v11;
}

char *LogFilenameOnly(char *__s)
{
  v1 = __s;
  if (__s)
  {
    __s = strrchr(__s, 47);
  }

  if (__s)
  {
    return __s + 1;
  }

  else
  {
    return v1;
  }
}

uint64_t CALog::Scope::SetPriorityThreshold(uint64_t this, unint64_t a2, int a3)
{
  if (a2)
  {
    v3 = a2 >> CALog::sNumberScopeBits;
    v4 = (this + 72);
    v5 = ~(a2 >> CALog::sNumberScopeBits);
    for (i = 1; i != 8; ++i)
    {
      v7 = *v4 & v5;
      if (i <= a3)
      {
        v7 = *v4 | v3;
      }

      *v4++ = v7;
    }

    *(this + 16) |= v3;
  }

  else
  {
    if (a3 >= 5)
    {
      v8 = 5;
    }

    else
    {
      v8 = a3;
    }

    if ((*(this + 48) & 0x20) != 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = a3;
    }

    *(this + 8) = v9;
  }

  return this;
}

uint64_t CALog::Scope::GetPriorityThreshold(CALog::Scope *this, uint64_t a2)
{
  if (a2)
  {
    v2 = 0;
    v3 = (this + 120);
    while (v2 != 7)
    {
      v4 = *v3--;
      ++v2;
      if ((v4 & a2) != 0)
      {
        return (8 - v2);
      }
    }
  }

  return *(this + 2);
}

uint64_t CALog::Scope::SetScopeFileDestination(uint64_t this, __sFILE *a2, char a3)
{
  *(this + 56) = a2;
  if (a2)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  *(this + 64) = v3;
  return this;
}

BOOL CALog::Scope::ScopeLogEnabled(CALog::Scope *this, int a2, unint64_t a3)
{
  v3 = a3 >> CALog::sNumberScopeBits;
  if (!(a3 >> CALog::sNumberScopeBits))
  {
    return *(this + 2) >= a2;
  }

  if ((a2 - 1) <= 6 && (*(this + (a2 - 1) + 9) & v3) != 0)
  {
    return 1;
  }

  return (v3 & ~*(this + 2)) != 0 && *(this + 2) >= a2;
}

uint64_t CALog::LogEnabled(int a1, uint64_t *a2)
{
  v4 = *a2;
  if (a1 > 5)
  {
    goto LABEL_15;
  }

  if (v4)
  {
    if (!*v4)
    {
LABEL_16:
      v8 = a2[1] >> CALog::sNumberScopeBits;
      if (v8)
      {
        if ((a1 - 1) <= 6)
        {
          a2[1];
          if ((*(v4 + 8 * (a1 - 1) + 72) & v8) != 0)
          {
            return 1;
          }
        }

        a2[1];
        if ((v8 & ~*(v4 + 16)) == 0)
        {
          return 0;
        }
      }

      return *(v4 + 8) >= a1;
    }
  }

  else if (gUseOSLogInDefaultScope != 1)
  {
    return a1 < 4;
  }

  if ((a1 - 1) < 3)
  {
    return 1;
  }

  if ((a1 - 4) > 1 || (!v4 ? (v5 = MEMORY[0x277D86220]) : (v5 = *v4), (v6 = 1, a1 == 4) ? (v7 = OS_LOG_TYPE_INFO) : (v7 = OS_LOG_TYPE_DEBUG), !os_log_type_enabled(v5, v7)))
  {
LABEL_15:
    if (v4)
    {
      goto LABEL_16;
    }

    return a1 < 4;
  }

  return v6;
}

void CALog::CALog(CALog *this, const char *__filename)
{
  *(this + 1) = 0;
  *this = 1;
  if (__filename)
  {
    *(this + 1) = fopen(__filename, "a");
  }
}

{
  *(this + 1) = 0;
  *this = 1;
  if (__filename)
  {
    *(this + 1) = fopen(__filename, "a");
  }
}

void CALog::~CALog(CALog *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    fclose(v2);
    *(this + 1) = 0;
  }
}

{
  v2 = *(this + 1);
  if (v2)
  {
    fclose(v2);
    *(this + 1) = 0;
  }
}

FILE *CALog::setFile(CALog *this, __sFILE *a2)
{
  result = *(this + 1);
  if (result)
  {
    result = fclose(result);
  }

  *(this + 1) = a2;
  return result;
}

void formatLikeOSLog(UInt8 *a1, uint64_t a2, unsigned __int8 *a3, unsigned int *a4)
{
  v82 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    goto LABEL_163;
  }

  v4 = a1;
  v5 = &a1[a2 - 1];
  if (v5 <= a1)
  {
    goto LABEL_159;
  }

  v7 = MEMORY[0x277D85DE0];
  v61 = &a1[a2 - 1];
  while (1)
  {
    v9 = a3 + 1;
    v8 = *a3;
    if (v8 != 37)
    {
      if (!*a3)
      {
        goto LABEL_159;
      }

      goto LABEL_8;
    }

    if (*v9 != 37)
    {
      break;
    }

LABEL_8:
    *v4++ = v8;
    ++a3;
LABEL_153:
    if (v4 >= v5)
    {
      goto LABEL_159;
    }
  }

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  *__dst = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  *v66 = 0u;
  v67 = 0u;
  v10 = *v9;
  if (v10 != 123)
  {
    v12 = 0;
    if (!*v9)
    {
      goto LABEL_46;
    }

    goto LABEL_19;
  }

  v11 = strchr(a3 + 2, 125);
  if (v11)
  {
    v12 = v11;
    v13 = *(a3 + 2) == 1986622064 && *(a3 + 5) == 1702125942;
    if (v13)
    {
      v15 = 0;
      v16 = a3 + 9;
    }

    else
    {
      v14 = *(a3 + 2) ^ 0x6C627570 | *(a3 + 3) ^ 0x6369;
      v13 = v14 == 0;
      v15 = v14 != 0;
      v16 = a3 + 8;
      if (!v13)
      {
        v16 = a3 + 2;
      }
    }

    v19 = v16 - 1;
    do
    {
      v20 = v19[1];
      if ((v20 & 0x80000000) != 0)
      {
        v21 = __maskrune(v20, 0x4000uLL);
      }

      else
      {
        v21 = *(v7 + 4 * v20 + 60) & 0x4000;
      }

      ++v19;
    }

    while (v21);
    if (!v15 && *v19 == 44)
    {
      ++v19;
    }

    v22 = (v19 - 1);
    v23 = v19 - 2;
    do
    {
      v24 = v22[1];
      if ((v24 & 0x80000000) != 0)
      {
        v25 = __maskrune(v24, 0x4000uLL);
      }

      else
      {
        v25 = *(v7 + 4 * v24 + 60) & 0x4000;
      }

      ++v22;
      ++v23;
    }

    while (v25);
    v26 = strchr(v22, 58);
    if (v26)
    {
      v27 = v26;
      if (v26 < v12)
      {
        if ((v26 - v23) >= 0x80)
        {
          v28 = 128;
        }

        else
        {
          v28 = v26 - v23;
        }

        strlcpy(__dst, v22, v28);
        if ((v12 - v27) < 0x80)
        {
          v29 = v12 - v27;
        }

        else
        {
          v29 = 128;
        }

        strlcpy(v66, v27 + 1, v29);
      }
    }

    v9 = v12 + 1;
    LOBYTE(v10) = v12[1];
    if (!v10)
    {
LABEL_46:
      v18 = 0;
      goto LABEL_47;
    }

    do
    {
LABEL_19:
      if (!memchr("-+ #0123456789.'", v10, 0x11uLL))
      {
        break;
      }

      v17 = *++v9;
      LOBYTE(v10) = v17;
    }

    while (v17);
    v18 = v10 == 42;
LABEL_47:
    v30 = &v9[v18];
    v31 = *v30;
    if (v31 > 0x6B)
    {
      if (v31 == 108)
      {
        v31 = v30[1];
        if (v31 != 108)
        {
          v32 = 3;
          ++v30;
          if (v12)
          {
            goto LABEL_68;
          }

          goto LABEL_74;
        }

        v30 += 2;
        v32 = 4;
      }

      else if (v31 == 116)
      {
        ++v30;
        v32 = 7;
      }

      else
      {
        v32 = 0;
        if (v31 != 122)
        {
          goto LABEL_67;
        }

        ++v30;
        v32 = 6;
      }
    }

    else if (v31 == 76)
    {
      ++v30;
      v32 = 8;
    }

    else
    {
      if (v31 != 104)
      {
        v32 = 0;
        if (v31 == 106)
        {
          ++v30;
          v32 = 5;
          goto LABEL_66;
        }

LABEL_67:
        if (v12)
        {
LABEL_68:
          if (v31 != 80)
          {
            __format = 37;
            v35 = v12 + 1;
            if ((v30 - (v12 + 1) + 2) >= 0x9F)
            {
              v36 = 159;
            }

            else
            {
              v36 = v30 - (v12 + 1) + 2;
            }

            p_format = v65;
            goto LABEL_78;
          }
        }

LABEL_74:
        if ((v30 - a3 + 2) >= 0xA0)
        {
          v36 = 160;
        }

        else
        {
          v36 = v30 - a3 + 2;
        }

        p_format = &__format;
        v35 = a3;
LABEL_78:
        strlcpy(p_format, v35, v36);
        if (v31 <= 99)
        {
          if (v31 <= 79)
          {
            if ((v31 - 69) < 3)
            {
              goto LABEL_101;
            }

            if (v31 != 64)
            {
              if (v31 != 65)
              {
                goto LABEL_132;
              }

              goto LABEL_101;
            }

            v52 = a4;
            a4 += 2;
            v53 = CFStringCreateWithFormat(0, 0, @"%@", *v52);
            usedBufLen = 0;
            v83.length = CFStringGetLength(v53);
            v5 = v61;
            v83.location = 0;
            CFStringGetBytes(v53, v83, 0x8000100u, 0, 0, v4, ~v4 + v61, &usedBufLen);
            v54 = usedBufLen;
            v4[usedBufLen] = 0;
            v49 = (v54 >> 31) & 1;
            v4 += v54 & ~(v54 >> 31);
            CFRelease(v53);
            goto LABEL_156;
          }

          if (v31 <= 96)
          {
            if (v31 != 80)
            {
              if (v31 != 88)
              {
                goto LABEL_132;
              }

              goto LABEL_110;
            }

            if (v18)
            {
              a4 += 4;
              LOBYTE(v49) = 1;
              goto LABEL_133;
            }

            v5 = v61;
            snprintf(v4, v61 - v4, "<expected .* before %%P>");
            LOBYTE(v49) = 1;
LABEL_156:
            if (v49)
            {
              goto LABEL_159;
            }

            goto LABEL_152;
          }

          if (v31 == 97)
          {
            goto LABEL_101;
          }

          if (v31 != 99)
          {
            goto LABEL_132;
          }

          v38 = a4;
          a4 += 2;
          v39 = *v38;
        }

        else
        {
          if (v31 <= 110)
          {
            if ((v31 - 101) >= 3)
            {
              if (v31 != 100 && v31 != 105)
              {
                goto LABEL_132;
              }

LABEL_110:
              if (v32 > 3)
              {
                if (v32 <= 5)
                {
                  if (v32 != 4)
                  {
                    v47 = v32 == 5;
                    goto LABEL_119;
                  }

LABEL_122:
                  v48 = a4;
                  a4 += 2;
                  v39 = *v48;
LABEL_143:
                  if (v18)
                  {
                    v5 = v61;
                    v46 = a4;
                    goto LABEL_145;
                  }

                  v5 = v61;
                  if (__dst[0])
                  {
                    goto LABEL_159;
                  }

LABEL_148:
                  v43 = v5 - v4;
LABEL_149:
                  v44 = snprintf(v4, v43, &__format, v39, v60);
                  goto LABEL_150;
                }

                if (v32 == 6)
                {
                  goto LABEL_122;
                }

                v47 = v32 == 7;
LABEL_119:
                v55 = a4;
                a4 += 2;
                if (v47)
                {
                  v39 = *v55;
                }

                else
                {
                  v39 = *v55;
                }

                v5 = v61;
                if (!v18)
                {
                  if (__dst[0])
                  {
                    goto LABEL_159;
                  }

                  goto LABEL_148;
                }

                v46 = a4;
LABEL_145:
                a4 = v46 + 2;
                if (__dst[0])
                {
                  goto LABEL_159;
                }

LABEL_146:
                v44 = snprintf(v4, v5 - v4, &__format, *v46, v39);
                goto LABEL_150;
              }

              if (v32 != 1)
              {
                if (v32 == 2)
                {
                  v57 = a4;
                  a4 += 2;
                  v39 = *v57;
                  goto LABEL_143;
                }

                v47 = v32 == 3;
                goto LABEL_119;
              }

              v56 = a4;
              a4 += 2;
              v39 = *v56;
              if (!v18)
              {
LABEL_139:
                v51 = __dst[0];
                v5 = v61;
LABEL_140:
                if (v51)
                {
                  goto LABEL_159;
                }

                goto LABEL_148;
              }

LABEL_109:
              v5 = v61;
              v46 = a4;
LABEL_128:
              a4 = v46 + 2;
              if (__dst[0])
              {
                goto LABEL_159;
              }

              goto LABEL_146;
            }

LABEL_101:
            v5 = v61;
            v40 = a4;
            a4 += 2;
            v41 = *v40;
            if (v18)
            {
              v42 = a4;
              a4 += 2;
              if (__dst[0])
              {
                goto LABEL_159;
              }

              v39 = *v42;
              v43 = v61 - v4;
              v60 = v41;
              goto LABEL_149;
            }

            if (__dst[0])
            {
              goto LABEL_159;
            }

            v44 = snprintf(v4, v61 - v4, &__format, v41, v60);
LABEL_150:
            if ((v44 & 0x80000000) != 0)
            {
              goto LABEL_159;
            }

            v4 += v44;
LABEL_152:
            a3 = v30 + 1;
            goto LABEL_153;
          }

          if (v31 <= 114)
          {
            if (v31 == 111)
            {
              goto LABEL_110;
            }

            if (v31 != 112)
            {
              goto LABEL_132;
            }

            v45 = a4;
            a4 += 2;
            v39 = *v45;
            if (!v18)
            {
              goto LABEL_139;
            }

            goto LABEL_109;
          }

          if (v31 != 115)
          {
            if (v31 == 117 || v31 == 120)
            {
              goto LABEL_110;
            }

LABEL_132:
            LOBYTE(v49) = 0;
            *v4++ = v31;
LABEL_133:
            v5 = v61;
            goto LABEL_156;
          }

          v50 = a4;
          a4 += 2;
          v39 = *v50;
        }

        v5 = v61;
        if (!v18)
        {
          v51 = __dst[0];
          goto LABEL_140;
        }

        v46 = a4;
        goto LABEL_128;
      }

      v33 = *++v30;
      v34 = v33 == 104;
      if (v33 == 104)
      {
        v32 = 1;
      }

      else
      {
        v32 = 2;
      }

      if (v34)
      {
        ++v30;
      }
    }

LABEL_66:
    v31 = *v30;
    goto LABEL_67;
  }

  snprintf(v4, v5 - v4, "<%%P parse error>");
LABEL_159:
  if (v4 >= v5)
  {
    v58 = v5;
  }

  else
  {
    v58 = v4;
  }

  *v58 = 0;
LABEL_163:
  v59 = *MEMORY[0x277D85DE8];
}

void CALog::log_va(CALog *this, int a2, const CALog::Scope *a3, char *__s, int a5, const char *a6, char *__s1, CFStringRef format, va_list arguments)
{
  v36 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    LOBYTE(v16) = 31;
    goto LABEL_5;
  }

  v16 = *(a3 + 12);
  if (v16)
  {
LABEL_5:
    CurrentGregorianDate = CATimeUtilities::GetCurrentGregorianDate(this);
    v20 = snprintf(__str, 0x400uLL, "%.2d:%.2d:%.2d.%.3d ", (CurrentGregorianDate >> 24) >> 24, CurrentGregorianDate >> 56, v19, ((v19 - v19) * 1000.0));
    v17 = v20 & ~(v20 >> 31);
    goto LABEL_6;
  }

  v17 = 0;
LABEL_6:
  if ((a2 - 1) <= 6 && (v16 & 2) != 0)
  {
    v21 = snprintf(&__str[v17], 1024 - v17, "%s", gPriorityStrings[a2 - 1]);
    v17 += v21 & ~(v21 >> 31);
  }

  if ((v16 & 4) != 0)
  {
    LOBYTE(usedBufLen[0]) = 0;
    v22 = pthread_self();
    pthread_getname_np(v22, usedBufLen, 0x40uLL);
    if (LOBYTE(usedBufLen[0]))
    {
      v23 = snprintf(&__str[v17], 1024 - v17, "[%s] ");
    }

    else
    {
      pthread_self();
      v23 = snprintf(&__str[v17], 1024 - v17, "[%p] ");
    }

    v17 += v23 & ~(v23 >> 31);
  }

  if (a3 && *(a3 + 3))
  {
    v24 = &__str[v17];
    v25 = 1024 - v17;
    if (a2 >= 3)
    {
      v26 = snprintf(v24, v25, "<%s> ");
    }

    else
    {
      v26 = snprintf(v24, v25, ">%s> ");
    }

    v17 += v26 & ~(v26 >> 31);
  }

  if ((v16 & 8) != 0)
  {
    if (__s)
    {
      strrchr(__s, 47);
      v27 = snprintf(&__str[v17], 1024 - v17, "%s:%d: ");
    }

    else
    {
      v27 = snprintf(&__str[v17], 1024 - v17, "%d: ");
    }

    v17 += v27 & ~(v27 >> 31);
  }

  if (a6 && (v16 & 0x10) != 0)
  {
    v28 = snprintf(&__str[v17], 1024 - v17, "%s: ", a6);
    v17 += v28 & ~(v28 >> 31);
  }

  if (__s1)
  {
    if (strstr(__s1, "%@") || strstr(__s1, "%{"))
    {
      formatLikeOSLog(&__str[v17], 1024 - v17, __s1, arguments);
    }

    else
    {
      vsnprintf(&__str[v17], 1024 - v17, __s1, arguments);
    }

    goto LABEL_36;
  }

  if (!format)
  {
LABEL_36:
    CALog::scopedPrint(this, a3, a2, __str);
    goto LABEL_37;
  }

  v29 = CFStringCreateWithFormatAndArguments(0, 0, format, arguments);
  v30 = __str;
  if (CFStringGetCString(v29, &__str[v17], 1023 - v17, 0x8000100u))
  {
    v31 = 0;
  }

  else
  {
    usedBufLen[0] = 0;
    v37.length = CFStringGetLength(v29);
    v37.location = 0;
    CFStringGetBytes(v29, v37, 0x8000100u, 0x3Fu, 0, 0, 0, usedBufLen);
    if ((usedBufLen[0] - 1) > 0x3FFE)
    {
      v31 = 0;
      v30 = __str;
    }

    else
    {
      v33 = v17 + usedBufLen[0] + 1;
      v31 = malloc_type_malloc(v33, 0x100004077774924uLL);
      strlcpy(v31, __str, v33);
      CFStringGetCString(v29, &v31[v17], (v33 - v17), 0x8000100u);
      v30 = v31;
    }
  }

  CFRelease(v29);
  CALog::scopedPrint(this, a3, a2, v30);
  if (v31)
  {
    free(v31);
  }

LABEL_37:
  v32 = *MEMORY[0x277D85DE8];
}

void CALog::scopedPrint(CALog *this, const CALog::Scope *a2, int a3, const char *a4)
{
  if (!a2 || (v8 = *(a2 + 7)) == 0 || (fprintf(v8, "%s\n", a4), fflush(*(a2 + 7)), (*(a2 + 64) & 1) == 0))
  {

    CALog::print(this, a3, a4);
  }
}

void CALog::vprintf(CALog *this, int a2, const char *a3, va_list a4)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    vsnprintf(__str, 0x400uLL, a3, a4);
    CALog::print(this, a2, __str);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void CALog::print(CALog *this, int a2, const char *a3)
{
  v4 = *(this + 1);
  if (v4)
  {
    fprintf(v4, "%s\n", a3);
    v5 = *(this + 1);

    fflush(v5);
  }

  else
  {
    if (a2 >= 3)
    {
      v6 = 3;
    }

    else
    {
      v6 = a2;
    }

    v7 = *this;
    if (*this == 3)
    {

      puts(a3);
    }

    else if (v7 == 2)
    {
      syslog(v6 + 2, "%s", a3);
    }

    else if (v7 == 1)
    {
      CFLog();
    }
  }
}

void _CALog_Log(CALog *a1, const CALog::Scope *a2, char *a3, int a4, const char *a5, char *a6, uint64_t a7, uint64_t a8, char arguments)
{
  v14 = a1;
  v15 = CALog::Instance(a1);
  CALog::log_va(v15, v14, a2, a3, a4, a5, a6, 0, &arguments);
}

uint64_t _CALog_LogEnabled(int a1, uint64_t a2)
{
  v3[0] = a2;
  v3[1] = 0;
  return CALog::LogEnabled(a1, v3);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long long,CALog::Scope *>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__function::__value_func<void ()(int)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void *std::__function::__func<void CASmartPreferences::AddHandler<int>(__CFString const*,__CFString const*,int (*)(void const*,BOOL &),std::function<void ()(int)>)::{lambda(void const*)#1},std::allocator<void CASmartPreferences::AddHandler<int>(__CFString const*,__CFString const*,int (*)(void const*,BOOL &),std::function<void ()(int)>)::{lambda(void const*)#1}>,BOOL ()(void const*)>::~__func(void *a1)
{
  *a1 = &unk_2853445E8;
  std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100]((a1 + 2));
  return a1;
}

void std::__function::__func<void CASmartPreferences::AddHandler<int>(__CFString const*,__CFString const*,int (*)(void const*,BOOL &),std::function<void ()(int)>)::{lambda(void const*)#1},std::allocator<void CASmartPreferences::AddHandler<int>(__CFString const*,__CFString const*,int (*)(void const*,BOOL &),std::function<void ()(int)>)::{lambda(void const*)#1}>,BOOL ()(void const*)>::~__func(void *a1)
{
  *a1 = &unk_2853445E8;
  std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100]((a1 + 2));

  JUMPOUT(0x245CEB8C0);
}

uint64_t std::__function::__func<void CASmartPreferences::AddHandler<int>(__CFString const*,__CFString const*,int (*)(void const*,BOOL &),std::function<void ()(int)>)::{lambda(void const*)#1},std::allocator<void CASmartPreferences::AddHandler<int>(__CFString const*,__CFString const*,int (*)(void const*,BOOL &),std::function<void ()(int)>)::{lambda(void const*)#1}>,BOOL ()(void const*)>::__clone(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_2853445E8;
  a2[1] = v2;
  return std::__function::__value_func<void ()(int)>::__value_func[abi:ne200100]((a2 + 2), a1 + 16);
}

void std::__function::__func<void CASmartPreferences::AddHandler<int>(__CFString const*,__CFString const*,int (*)(void const*,BOOL &),std::function<void ()(int)>)::{lambda(void const*)#1},std::allocator<void CASmartPreferences::AddHandler<int>(__CFString const*,__CFString const*,int (*)(void const*,BOOL &),std::function<void ()(int)>)::{lambda(void const*)#1}>,BOOL ()(void const*)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](a1 + 16);

  operator delete(a1);
}

uint64_t std::__invoke_void_return_wrapper<BOOL,false>::__call[abi:ne200100]<void CASmartPreferences::AddHandler<int>(__CFString const*,__CFString const*,int (*)(void const*,BOOL &),std::function<void ()(int)>)::{lambda(void const*)#1} &,void const*>(uint64_t (**a1)(uint64_t, char *), uint64_t *a2)
{
  v3 = *a2;
  v7 = 0;
  v4 = (*a1)(v3, &v7);
  v5 = 0;
  if (v7 == 1)
  {
    std::function<void ()(int)>::operator()((a1 + 1), v4);
    v5 = v7;
  }

  return v5 & 1;
}

uint64_t std::function<void ()(int)>::operator()(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t std::__function::__func<CALog::Scope::init(unsigned long long,char const*,__CFString const*,__CFString const*,unsigned int)::$_0,std::allocator<CALog::Scope::init(unsigned long long,char const*,__CFString const*,__CFString const*,unsigned int)::$_0>,void ()(int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2853445A0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<CALog::Scope::init(unsigned long long,char const*,__CFString const*,__CFString const*,unsigned int)::$_0,std::allocator<CALog::Scope::init(unsigned long long,char const*,__CFString const*,__CFString const*,unsigned int)::$_0>,void ()(int)>::operator()(uint64_t result, int *a2)
{
  v2 = *a2;
  v3 = *(result + 8);
  if (*a2 >= 5)
  {
    v4 = 5;
  }

  else
  {
    v4 = *a2;
  }

  if ((*(v3 + 48) & 0x20) != 0)
  {
    v2 = v4;
  }

  *(v3 + 8) = v2;
  return result;
}

uint64_t std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t ASDDSPStreamHelper::DSPStream::DSPStream(uint64_t a1, int a2, __int128 *a3, uint64_t a4, void *a5, void *a6)
{
  *a1 = a2;
  v9 = *a3;
  v10 = a3[1];
  *(a1 + 40) = *(a3 + 4);
  *(a1 + 24) = v10;
  *(a1 + 8) = v9;
  v11 = a6;
  v12 = a5;
  *(a1 + 48) = MEMORY[0x245CEBEA0](a4);
  v13 = MEMORY[0x245CEBEA0](v12);

  *(a1 + 56) = v13;
  v14 = MEMORY[0x245CEBEA0](v11);

  *(a1 + 64) = v14;
  *(a1 + 72) = 0;
  return a1;
}

uint64_t ASDDSPStreamHelper::DSPStream::DSPStream(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v5;
  *(a1 + 8) = v4;
  *(a1 + 48) = MEMORY[0x245CEBEA0](*(a2 + 48));
  *(a1 + 56) = MEMORY[0x245CEBEA0](*(a2 + 56));
  *(a1 + 64) = MEMORY[0x245CEBEA0](*(a2 + 64));
  *(a1 + 72) = 0;
  return a1;
}

{
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v5;
  *(a1 + 8) = v4;
  *(a1 + 48) = MEMORY[0x245CEBEA0](*(a2 + 48));
  *(a1 + 56) = MEMORY[0x245CEBEA0](*(a2 + 56));
  v6 = MEMORY[0x245CEBEA0](*(a2 + 64));
  v7 = *(a2 + 72);
  *(a2 + 72) = 0;
  *(a1 + 64) = v6;
  *(a1 + 72) = v7;
  return a1;
}

uint64_t ASDDSPStreamHelper::DSPStream::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v5;
  *(a1 + 8) = v4;
  v6 = MEMORY[0x245CEBEA0](*(a2 + 48));
  v7 = *(a1 + 48);
  *(a1 + 48) = v6;

  v8 = MEMORY[0x245CEBEA0](*(a2 + 56));
  v9 = *(a1 + 56);
  *(a1 + 56) = v8;

  v10 = MEMORY[0x245CEBEA0](*(a2 + 64));
  v11 = *(a1 + 64);
  *(a1 + 64) = v10;

  v12 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v12)
  {
    std::default_delete<ASDBufferList>::operator()[abi:ne200100](a1 + 72, v12);
  }

  return a1;
}

{
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v5;
  *(a1 + 8) = v4;
  v6 = MEMORY[0x245CEBEA0](*(a2 + 48));
  v7 = *(a1 + 48);
  *(a1 + 48) = v6;

  v8 = MEMORY[0x245CEBEA0](*(a2 + 56));
  v9 = *(a1 + 56);
  *(a1 + 56) = v8;

  v10 = MEMORY[0x245CEBEA0](*(a2 + 64));
  v11 = *(a1 + 64);
  *(a1 + 64) = v10;

  v12 = *(a2 + 72);
  *(a2 + 72) = 0;
  v13 = *(a1 + 72);
  *(a1 + 72) = v12;
  if (v13)
  {
    std::default_delete<ASDBufferList>::operator()[abi:ne200100](a1 + 72, v13);
  }

  return a1;
}

uint64_t ASDDSPStreamHelper::DSPStream::writeMix(ASDDSPStreamHelper::DSPStream *this, unsigned int a2, const AudioServerPlugInIOCycleInfo *a3)
{
  v5 = *(this + 7);
  if (!v5)
  {
    return 1852797029;
  }

  v6 = *(this + 9);
  if (!v6)
  {
    return 1852797029;
  }

  v7 = *(v6 + 40);
  if (*(v7 + 24) != 1)
  {
    ASDDSPStreamHelper::DSPStream::writeMix();
  }

  v8 = *(v7 + 40);
  v9 = *(v5 + 16);

  return v9();
}

uint64_t ASDDSPStreamHelper::DSPStream::readInput(ASDDSPStreamHelper::DSPStream *this, unsigned int a2, const AudioServerPlugInIOCycleInfo *a3)
{
  v5 = *(this + 6);
  if (!v5)
  {
    return 1852797029;
  }

  v6 = *(this + 9);
  if (!v6)
  {
    return 1852797029;
  }

  v7 = *(v6 + 40);
  if (*(v7 + 24) != 1)
  {
    ASDDSPStreamHelper::DSPStream::writeMix();
  }

  v8 = *(v7 + 40);
  v9 = *(v5 + 16);

  return v9();
}

uint64_t ASDDSPStreamHelper::DSPStream::readIsolatedInput(ASDDSPStreamHelper::DSPStream *this, uint64_t a2, uint64_t a3, const AudioServerPlugInIOCycleInfo *a4)
{
  v4 = *(this + 8);
  if (v4)
  {
    return (*(v4 + 16))(v4, a2, a3, a4);
  }

  else
  {
    return 1852797029;
  }
}

uint64_t ASDDSPStreamHelper::DSPStream::setupIO(uint64_t a1, uint64_t a2, int a3, __int128 *a4)
{
  v4 = a4[1];
  v7[0] = *a4;
  v7[1] = v4;
  v5 = a4[3];
  v7[2] = a4[2];
  v7[3] = v5;
  return SetupGraphIOData(a2, a3, v7, *(a1 + 72));
}

uint64_t SetupGraphIOData(uint64_t a1, int a2, __int128 *a3, uint64_t a4)
{
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *a1 = a2;
  v5 = *a3;
  v6 = a3[1];
  v7 = a3[2];
  *(a1 + 56) = a3[3];
  *(a1 + 40) = v7;
  *(a1 + 24) = v6;
  *(a1 + 8) = v5;
  v8 = *(a4 + 40);
  *(a1 + 72) = v8 + 6;
  v9 = *(a4 + 24) * a2;
  v10 = v8[4];
  if (v10)
  {
    v11 = v9 > v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = !v11;
  if (v12 == 1)
  {
    CABufferList::SetNumBytes(v8, v9);
  }

  return v12;
}

uint64_t ASDDSPStreamHelper::ASDDSPStreamHelper(uint64_t a1, __int128 *a2, const CAStreamBasicDescription *a3, uint64_t a4, int a5)
{
  v10 = *a2;
  v11 = a2[1];
  *(a1 + 32) = *(a2 + 4);
  *a1 = v10;
  *(a1 + 16) = v11;
  *(a1 + 40) = CABufferList::New("", a2, a3);
  v12 = *(a2 + 4);
  v13 = a2[1];
  *(a1 + 48) = *a2;
  *(a1 + 64) = v13;
  *(a1 + 80) = v12;
  *(a1 + 88) = CABufferList::New("", a2, v14);
  v15 = *a2;
  v16 = a2[1];
  *(a1 + 128) = *(a2 + 4);
  *(a1 + 96) = v15;
  *(a1 + 112) = v16;
  v18 = CABufferList::New("", a2, v17);
  *(a1 + 152) = 0u;
  *(a1 + 184) = 0u;
  v19 = (a1 + 184);
  *(a1 + 136) = v18;
  *(a1 + 144) = a4;
  *(a1 + 232) = 0u;
  *(a1 + 304) = 850045863;
  *(a1 + 296) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 353) = 0u;
  v21 = *a3;
  v20 = *(a3 + 1);
  if (v20 == *a3)
  {
    v89 = "underlyingStreams.size() > 0";
    v90 = 163;
    goto LABEL_75;
  }

  if ((*(a2 + 12) & 0x20) != 0)
  {
    v89 = "dspFormat.IsInterleaved()";
    v90 = 164;
LABEL_75:
    __assert_rtn("ASDDSPStreamHelper", "ASDDSPStreamHelper.mm", v90, v89);
  }

  v22 = a5 == 1768845428;
  v23 = a5 != 1768845428;
  v24 = "stream.mFormat.IsInterleaved()";
  do
  {
    if ((*(v21 + 20) & 0x20) != 0)
    {
      v88 = 181;
      goto LABEL_72;
    }

    v25 = *v21;
    if (a5 == 1768845428 && v25 != 1768845428)
    {
      v88 = 185;
      v24 = "stream.mDirection == ASDStreamDirectionInput";
LABEL_72:
      __assert_rtn("ASDDSPStreamHelper", "ASDDSPStreamHelper.mm", v88, v24);
    }

    v26 = v25 == 1768845428;
    if (v25 == 1768845428)
    {
      v27 = v23;
    }

    else
    {
      v27 = v22;
    }

    if (v26)
    {
      v23 = v27 + 1;
    }

    else
    {
      v22 = v27 + 1;
    }

    v21 = (v21 + 80);
  }

  while (v21 != v20);
  if (!v23)
  {
    v91 = "numDspGraphIn != 0";
    v92 = 192;
    goto LABEL_78;
  }

  if (!v22)
  {
    v91 = "numDspGraphOut != 0";
    v92 = 193;
LABEL_78:
    __assert_rtn("ASDDSPStreamHelper", "ASDDSPStreamHelper.mm", v92, v91);
  }

  std::vector<ASDDSPStreamHelper::DSPStream>::reserve((a1 + 160), v23);
  std::vector<DSPGraph::GraphIOData>::reserve((a1 + 184), v23);
  std::vector<CAStreamBasicDescription>::reserve((a1 + 208), v23);
  std::vector<ASDDSPStreamHelper::DSPStream>::reserve((a1 + 232), v22);
  std::vector<DSPGraph::GraphIOData>::reserve((a1 + 256), v22);
  std::vector<CAStreamBasicDescription>::reserve((a1 + 280), v22);
  if (a5 == 1768845428)
  {
    v33 = *(a1 + 288);
    v34 = *(a1 + 296);
    if (v33 >= v34)
    {
      v43 = *(a1 + 280);
      v44 = 0xCCCCCCCCCCCCCCCDLL * ((v33 - v43) >> 3);
      v45 = v44 + 1;
      if (v44 + 1 > 0x666666666666666)
      {
        goto LABEL_79;
      }

      v46 = 0xCCCCCCCCCCCCCCCDLL * ((v34 - v43) >> 3);
      if (2 * v46 > v45)
      {
        v45 = 2 * v46;
      }

      if (v46 >= 0x333333333333333)
      {
        v47 = 0x666666666666666;
      }

      else
      {
        v47 = v45;
      }

      if (v47)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<CAStreamBasicDescription>>(a1 + 280, v47);
      }

      v62 = 40 * v44;
      v63 = *a2;
      v64 = a2[1];
      *(v62 + 32) = *(a2 + 4);
      *v62 = v63;
      *(v62 + 16) = v64;
      v37 = 40 * v44 + 40;
      v65 = *(a1 + 280);
      v66 = *(a1 + 288) - v65;
      v67 = 40 * v44 - v66;
      memcpy((v62 - v66), v65, v66);
      v68 = *(a1 + 280);
      *(a1 + 280) = v67;
      *(a1 + 288) = v37;
      *(a1 + 296) = 0;
      if (v68)
      {
        operator delete(v68);
      }
    }

    else
    {
      v35 = *a2;
      v36 = a2[1];
      *(v33 + 32) = *(a2 + 4);
      *v33 = v35;
      *(v33 + 16) = v36;
      v37 = v33 + 40;
    }

    *(a1 + 288) = v37;
    v69 = *(a1 + 264);
    v70 = *(a1 + 272);
    if (v69 >= v70)
    {
      v72 = *(a1 + 256);
      v73 = 0xCCCCCCCCCCCCCCCDLL * ((v69 - v72) >> 4);
      v74 = v73 + 1;
      if (v73 + 1 > 0x333333333333333)
      {
        std::vector<CAStreamBasicDescription>::__throw_length_error[abi:ne200100]();
      }

      v75 = 0xCCCCCCCCCCCCCCCDLL * ((v70 - v72) >> 4);
      if (2 * v75 > v74)
      {
        v74 = 2 * v75;
      }

      if (v75 >= 0x199999999999999)
      {
        v76 = 0x333333333333333;
      }

      else
      {
        v76 = v74;
      }

      if (v76)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<DSPGraph::GraphIOData>>(a1 + 256, v76);
      }

      v82 = 80 * v73;
      v71 = 80 * v73 + 80;
      *(v82 + 48) = 0u;
      *(v82 + 64) = 0u;
      *(v82 + 16) = 0u;
      *(v82 + 32) = 0u;
      *v82 = 0u;
      v83 = *(a1 + 256);
      v84 = *(a1 + 264) - v83;
      v85 = 80 * v73 - v84;
      memcpy((v82 - v84), v83, v84);
      v86 = *(a1 + 256);
      *(a1 + 256) = v85;
      *(a1 + 264) = v71;
      *(a1 + 272) = 0;
      if (v86)
      {
        operator delete(v86);
      }
    }

    else
    {
      v69[3] = 0u;
      v69[4] = 0u;
      v71 = (v69 + 5);
      v69[1] = 0u;
      v69[2] = 0u;
      *v69 = 0u;
    }

    *(a1 + 264) = v71;
    goto LABEL_67;
  }

  v28 = *(a1 + 216);
  v29 = *(a1 + 224);
  if (v28 < v29)
  {
    v30 = *a2;
    v31 = a2[1];
    *(v28 + 32) = *(a2 + 4);
    *v28 = v30;
    *(v28 + 16) = v31;
    v32 = v28 + 40;
    goto LABEL_39;
  }

  v38 = *(a1 + 208);
  v39 = 0xCCCCCCCCCCCCCCCDLL * ((v28 - v38) >> 3);
  v40 = v39 + 1;
  if (v39 + 1 > 0x666666666666666)
  {
LABEL_79:
    std::vector<CAStreamBasicDescription>::__throw_length_error[abi:ne200100]();
  }

  v41 = 0xCCCCCCCCCCCCCCCDLL * ((v29 - v38) >> 3);
  if (2 * v41 > v40)
  {
    v40 = 2 * v41;
  }

  if (v41 >= 0x333333333333333)
  {
    v42 = 0x666666666666666;
  }

  else
  {
    v42 = v40;
  }

  if (v42)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<CAStreamBasicDescription>>(a1 + 208, v42);
  }

  v48 = 40 * v39;
  v49 = *a2;
  v50 = a2[1];
  *(v48 + 32) = *(a2 + 4);
  *v48 = v49;
  *(v48 + 16) = v50;
  v32 = 40 * v39 + 40;
  v51 = *(a1 + 208);
  v52 = *(a1 + 216) - v51;
  v53 = 40 * v39 - v52;
  memcpy((v48 - v52), v51, v52);
  v54 = *(a1 + 208);
  *(a1 + 208) = v53;
  *(a1 + 216) = v32;
  *(a1 + 224) = 0;
  if (v54)
  {
    operator delete(v54);
  }

LABEL_39:
  *(a1 + 216) = v32;
  v55 = *(a1 + 192);
  v56 = *(a1 + 200);
  if (v55 >= v56)
  {
    v58 = 0xCCCCCCCCCCCCCCCDLL * ((v55 - *v19) >> 4);
    v59 = v58 + 1;
    if (v58 + 1 > 0x333333333333333)
    {
      std::vector<CAStreamBasicDescription>::__throw_length_error[abi:ne200100]();
    }

    v60 = 0xCCCCCCCCCCCCCCCDLL * ((v56 - *v19) >> 4);
    if (2 * v60 > v59)
    {
      v59 = 2 * v60;
    }

    if (v60 >= 0x199999999999999)
    {
      v61 = 0x333333333333333;
    }

    else
    {
      v61 = v59;
    }

    if (v61)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<DSPGraph::GraphIOData>>(a1 + 184, v61);
    }

    v77 = 80 * v58;
    v57 = 80 * v58 + 80;
    *(v77 + 48) = 0u;
    *(v77 + 64) = 0u;
    *(v77 + 16) = 0u;
    *(v77 + 32) = 0u;
    *v77 = 0u;
    v78 = *(a1 + 184);
    v79 = *(a1 + 192) - v78;
    v80 = 80 * v58 - v79;
    memcpy((v77 - v79), v78, v79);
    v81 = *(a1 + 184);
    *(a1 + 184) = v80;
    *(a1 + 192) = v57;
    *(a1 + 200) = 0;
    if (v81)
    {
      operator delete(v81);
    }
  }

  else
  {
    v55[3] = 0u;
    v55[4] = 0u;
    v57 = (v55 + 5);
    v55[1] = 0u;
    v55[2] = 0u;
    *v55 = 0u;
  }

  *(a1 + 192) = v57;
LABEL_67:
  if (*a3 != *(a3 + 1))
  {
    ASDDSPStreamHelper::addStream(a1, *a3);
  }

  return a1;
}

void sub_24162BE88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::mutex *a10, uint64_t a11, uint64_t a12)
{
  std::mutex::~mutex(a10);
  v16 = *(v14 + 96);
  if (v16)
  {
    v13[36] = v16;
    operator delete(v16);
  }

  v17 = *(v14 + 72);
  if (v17)
  {
    v13[33] = v17;
    operator delete(v17);
  }

  std::vector<ASDDSPStreamHelper::DSPStream>::__destroy_vector::operator()[abi:ne200100](&a12);
  v18 = *(v14 + 24);
  if (v18)
  {
    v13[27] = v18;
    operator delete(v18);
  }

  v19 = *v14;
  if (*v14)
  {
    v13[24] = v19;
    operator delete(v19);
  }

  a12 = a11;
  std::vector<ASDDSPStreamHelper::DSPStream>::__destroy_vector::operator()[abi:ne200100](&a12);
  v20 = v13[17];
  v13[17] = 0;
  if (v20)
  {
    std::default_delete<CABufferList>::operator()[abi:ne200100](v13 + 136, v20);
  }

  v21 = *(v12 + 48);
  *(v12 + 48) = 0;
  if (v21)
  {
    std::default_delete<CABufferList>::operator()[abi:ne200100](v12 + 48, v21);
  }

  v22 = *v12;
  *v12 = 0;
  if (v22)
  {
    std::default_delete<CABufferList>::operator()[abi:ne200100](v12, v22);
  }

  _Unwind_Resume(a1);
}

void *std::vector<ASDDSPStreamHelper::DSPStream>::reserve(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x333333333333334)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<ASDDSPStreamHelper::DSPStream>>(result, a2);
    }

    std::vector<CAStreamBasicDescription>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_24162C020(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<ASDDSPStreamHelper::DSPStream>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::vector<DSPGraph::GraphIOData>::reserve(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x333333333333334)
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<DSPGraph::GraphIOData>>(result, a2);
    }

    std::vector<CAStreamBasicDescription>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void *std::vector<CAStreamBasicDescription>::reserve(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x666666666666667)
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<CAStreamBasicDescription>>(result, a2);
    }

    std::vector<CAStreamBasicDescription>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void ASDDSPStreamHelper::addStream(ASDDSPStreamHelper *this, const ASDDSPStreamHelper::DSPStream *a2)
{
  v4 = a2 + 8;
  if (*a2 == 1768845428)
  {
    v5 = *(this + 27);
    v6 = *(this + 28);
    if (v5 < v6)
    {
      v7 = *v4;
      v8 = *(a2 + 24);
      *(v5 + 32) = *(a2 + 5);
      *v5 = v7;
      *(v5 + 16) = v8;
      v9 = v5 + 40;
LABEL_24:
      *(this + 27) = v9;
      v32 = *(this + 24);
      v33 = *(this + 25);
      if (v32 < v33)
      {
        v32[3] = 0u;
        v32[4] = 0u;
        v34 = (v32 + 5);
        v32[1] = 0u;
        v32[2] = 0u;
        *v32 = 0u;
        goto LABEL_48;
      }

      v35 = *(this + 23);
      v36 = 0xCCCCCCCCCCCCCCCDLL * ((v32 - v35) >> 4);
      v37 = v36 + 1;
      if (v36 + 1 <= 0x333333333333333)
      {
        v38 = 0xCCCCCCCCCCCCCCCDLL * ((v33 - v35) >> 4);
        if (2 * v38 > v37)
        {
          v37 = 2 * v38;
        }

        if (v38 >= 0x199999999999999)
        {
          v39 = 0x333333333333333;
        }

        else
        {
          v39 = v37;
        }

        if (v39)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<DSPGraph::GraphIOData>>(this + 184, v39);
        }

        v55 = 80 * v36;
        v34 = 80 * v36 + 80;
        *(v55 + 48) = 0u;
        *(v55 + 64) = 0u;
        *(v55 + 16) = 0u;
        *(v55 + 32) = 0u;
        *v55 = 0u;
        v56 = *(this + 23);
        v57 = *(this + 24) - v56;
        v58 = 80 * v36 - v57;
        memcpy((v55 - v57), v56, v57);
        v59 = *(this + 23);
        *(this + 23) = v58;
        *(this + 24) = v34;
        *(this + 25) = 0;
        if (v59)
        {
          operator delete(v59);
        }

LABEL_48:
        *(this + 24) = v34;
        v60 = *(this + 21);
        if (v60 >= *(this + 22))
        {
          v61 = std::vector<ASDDSPStreamHelper::DSPStream>::__emplace_back_slow_path<ASDDSPStreamHelper::DSPStream const&>(this + 160, a2);
        }

        else
        {
          v61 = ASDDSPStreamHelper::DSPStream::DSPStream(v60, a2) + 80;
        }

        *(this + 21) = v61;
        operator new();
      }

LABEL_59:
      std::vector<CAStreamBasicDescription>::__throw_length_error[abi:ne200100]();
    }

    v15 = *(this + 26);
    v16 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - v15) >> 3);
    v17 = v16 + 1;
    if (v16 + 1 <= 0x666666666666666)
    {
      v18 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - v15) >> 3);
      if (2 * v18 > v17)
      {
        v17 = 2 * v18;
      }

      if (v18 >= 0x333333333333333)
      {
        v19 = 0x666666666666666;
      }

      else
      {
        v19 = v17;
      }

      if (v19)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<CAStreamBasicDescription>>(this + 208, v19);
      }

      v25 = 40 * v16;
      v26 = *v4;
      v27 = *(v4 + 1);
      *(v25 + 32) = *(v4 + 4);
      *v25 = v26;
      *(v25 + 16) = v27;
      v9 = 40 * v16 + 40;
      v28 = *(this + 26);
      v29 = *(this + 27) - v28;
      v30 = 40 * v16 - v29;
      memcpy((v25 - v29), v28, v29);
      v31 = *(this + 26);
      *(this + 26) = v30;
      *(this + 27) = v9;
      *(this + 28) = 0;
      if (v31)
      {
        operator delete(v31);
      }

      goto LABEL_24;
    }

LABEL_58:
    std::vector<CAStreamBasicDescription>::__throw_length_error[abi:ne200100]();
  }

  v10 = *(this + 36);
  v11 = *(this + 37);
  if (v10 >= v11)
  {
    v20 = *(this + 35);
    v21 = 0xCCCCCCCCCCCCCCCDLL * ((v10 - v20) >> 3);
    v22 = v21 + 1;
    if (v21 + 1 > 0x666666666666666)
    {
      goto LABEL_58;
    }

    v23 = 0xCCCCCCCCCCCCCCCDLL * ((v11 - v20) >> 3);
    if (2 * v23 > v22)
    {
      v22 = 2 * v23;
    }

    if (v23 >= 0x333333333333333)
    {
      v24 = 0x666666666666666;
    }

    else
    {
      v24 = v22;
    }

    if (v24)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CAStreamBasicDescription>>(this + 280, v24);
    }

    v40 = 40 * v21;
    v41 = *v4;
    v42 = *(v4 + 1);
    *(v40 + 32) = *(v4 + 4);
    *v40 = v41;
    *(v40 + 16) = v42;
    v14 = 40 * v21 + 40;
    v43 = *(this + 35);
    v44 = *(this + 36) - v43;
    v45 = 40 * v21 - v44;
    memcpy((v40 - v44), v43, v44);
    v46 = *(this + 35);
    *(this + 35) = v45;
    *(this + 36) = v14;
    *(this + 37) = 0;
    if (v46)
    {
      operator delete(v46);
    }
  }

  else
  {
    v12 = *v4;
    v13 = *(a2 + 24);
    *(v10 + 32) = *(a2 + 5);
    *v10 = v12;
    *(v10 + 16) = v13;
    v14 = v10 + 40;
  }

  *(this + 36) = v14;
  v47 = *(this + 33);
  v48 = *(this + 34);
  if (v47 >= v48)
  {
    v50 = *(this + 32);
    v51 = 0xCCCCCCCCCCCCCCCDLL * ((v47 - v50) >> 4);
    v52 = v51 + 1;
    if (v51 + 1 > 0x333333333333333)
    {
      goto LABEL_59;
    }

    v53 = 0xCCCCCCCCCCCCCCCDLL * ((v48 - v50) >> 4);
    if (2 * v53 > v52)
    {
      v52 = 2 * v53;
    }

    if (v53 >= 0x199999999999999)
    {
      v54 = 0x333333333333333;
    }

    else
    {
      v54 = v52;
    }

    if (v54)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<DSPGraph::GraphIOData>>(this + 256, v54);
    }

    v62 = 80 * v51;
    v49 = 80 * v51 + 80;
    *(v62 + 48) = 0u;
    *(v62 + 64) = 0u;
    *(v62 + 16) = 0u;
    *(v62 + 32) = 0u;
    *v62 = 0u;
    v63 = *(this + 32);
    v64 = *(this + 33) - v63;
    v65 = 80 * v51 - v64;
    memcpy((v62 - v64), v63, v64);
    v66 = *(this + 32);
    *(this + 32) = v65;
    *(this + 33) = v49;
    *(this + 34) = 0;
    if (v66)
    {
      operator delete(v66);
    }
  }

  else
  {
    v47[3] = 0u;
    v47[4] = 0u;
    v49 = (v47 + 5);
    v47[1] = 0u;
    v47[2] = 0u;
    *v47 = 0u;
  }

  *(this + 33) = v49;
  v67 = *(this + 30);
  if (v67 >= *(this + 31))
  {
    v68 = std::vector<ASDDSPStreamHelper::DSPStream>::__emplace_back_slow_path<ASDDSPStreamHelper::DSPStream const&>(this + 232, a2);
  }

  else
  {
    v68 = ASDDSPStreamHelper::DSPStream::DSPStream(v67, a2) + 80;
  }

  *(this + 30) = v68;
  operator new();
}

uint64_t ASDDSPStreamHelper::allocateStreamingResources(ASDDSPStreamHelper *this, int a2)
{
  result = CABufferList::AllocateBuffers(*(this + 5), *(this + 6) * a2);
  v5 = *(this + 20);
  v6 = *(this + 21);
  while (v5 != v6)
  {
    result = CABufferList::AllocateBuffers(*(*(v5 + 72) + 40), *(*(v5 + 72) + 24) * a2);
    v5 += 80;
  }

  v8 = *(this + 29);
  v7 = *(this + 30);
  while (v8 != v7)
  {
    result = CABufferList::AllocateBuffers(*(*(v8 + 72) + 40), *(*(v8 + 72) + 24) * a2);
    v8 += 80;
  }

  return result;
}

uint64_t ASDDSPStreamHelper::deallocateStreamingResources(ASDDSPStreamHelper *this)
{
  result = CABufferList::DeallocateBuffers(*(this + 5));
  v3 = *(this + 20);
  v4 = *(this + 21);
  while (v3 != v4)
  {
    result = CABufferList::DeallocateBuffers(*(*(v3 + 72) + 40));
    v3 += 80;
  }

  v6 = *(this + 29);
  v5 = *(this + 30);
  while (v6 != v5)
  {
    result = CABufferList::DeallocateBuffers(*(*(v6 + 72) + 40));
    v6 += 80;
  }

  return result;
}

uint64_t ASDDSPStreamHelper::readInput(ASDDSPStreamHelper *this, unsigned int a2, const AudioServerPlugInIOCycleInfo *a3, void *a4, void *a5)
{
  v84 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    if (a3)
    {
      v8 = this;
      if (std::mutex::try_lock((this + 304)))
      {
        v9 = *(v8 + 20);
        v80 = v8;
        if (*(v8 + 368))
        {
          Input = (*(*(v9 + 48) + 16))();
          if (Input && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            ASDDSPStreamHelper::readInput();
          }

          goto LABEL_65;
        }

        v27 = 1970171760;
        v28 = *(v8 + 21);
        if (v9 != v28)
        {
          v29 = 0;
          v30 = -1;
          while (1)
          {
            v31 = *(v9 + v29 + 72);
            v32 = *(*(v31 + 5) + 16);
            CAStreamBasicDescription::BytesToFrames(v31);
            if (v33 < a2)
            {
              v67 = v9 + v29;
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                *&buf[4] = "ioBufferFrameSize > inStream.mBufferList->capacityFrames()";
                *&buf[12] = 2080;
                *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/DSP/ASDDSPStreamHelper.mm";
                *&buf[22] = 1024;
                *&buf[24] = 303;
                _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIfWithFault %s failed in %s at line %d goto Exit. ", buf, 0x1Cu);
              }

              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                v68 = *(v67 + 72);
                v69 = *(*(v68 + 5) + 16);
                CAStreamBasicDescription::BytesToFrames(v68);
                *buf = 67109376;
                *&buf[4] = a2;
                *&buf[8] = 1024;
                *&buf[10] = v70;
                _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ioBufferFrameSize %d passed to DSP readInput exceeds ringbuffer capacity %d\n", buf, 0xEu);
              }

              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
              {
                v71 = *(v67 + 72);
                v72 = *(*(v71 + 5) + 16);
                CAStreamBasicDescription::BytesToFrames(v71);
                ASDDSPStreamHelper::readInput(buf, a2, v73);
              }

              goto LABEL_61;
            }

            v34 = *(v80 + 184);
            if (0xCCCCCCCCCCCCCCCDLL * ((*(v80 + 192) - v34) >> 4) <= ++v30)
            {
              std::vector<CAStreamBasicDescription>::__throw_out_of_range[abi:ne200100]();
            }

            v35 = *&a3->mInputTime.mRateScalar;
            *buf = *&a3->mInputTime.mSampleTime;
            *&buf[16] = v35;
            v36 = *&a3->mInputTime.mSMPTETime.mHours;
            v82 = *&a3->mInputTime.mSMPTETime.mSubframes;
            v83 = v36;
            if ((SetupGraphIOData(v34 + v29, a2, buf, *(v9 + v29 + 72)) & 1) == 0)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                ASDDSPStreamHelper::readInput();
              }

LABEL_61:
              Input = v27;
              goto LABEL_64;
            }

            Input = ASDDSPStreamHelper::DSPStream::readInput((v9 + v29), a2, a3);
            if (Input)
            {
              break;
            }

            v27 = 0;
            v29 += 80;
            if (v9 + v29 == v28)
            {
              goto LABEL_30;
            }
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            ASDDSPStreamHelper::readInput();
          }

          goto LABEL_64;
        }

        Input = 1970171760;
LABEL_30:
        v8 = v80;
        v37 = *(v80 + 256);
        if (*(v80 + 264) == v37)
        {
          std::vector<CAStreamBasicDescription>::__throw_out_of_range[abi:ne200100]();
        }

        v38 = *&a3->mInputTime.mRateScalar;
        *buf = *&a3->mInputTime.mSampleTime;
        *&buf[16] = v38;
        v39 = *&a3->mInputTime.mSMPTETime.mHours;
        v82 = *&a3->mInputTime.mSMPTETime.mSubframes;
        v83 = v39;
        if ((SetupGraphIOData(v37, a2, buf, v80) & 1) == 0)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            *&buf[4] = "!setupGraphIO";
            *&buf[12] = 2080;
            *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/DSP/ASDDSPStreamHelper.mm";
            *&buf[22] = 1024;
            *&buf[24] = 314;
            _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIfWithFault %s failed in %s at line %d goto Exit. ", buf, 0x1Cu);
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to setup Graph output buffer for DSP readInput\n", buf, 2u);
          }

          v59 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
          if (v59)
          {
            ASDDSPStreamHelper::readInput(v59, v60, v61, v62, v63, v64, v65, v66);
          }

          goto LABEL_65;
        }

        v40 = *(v80 + 144);
        atomic_fetch_add((v40 + 16), 1u);
        v41 = atomic_load((v40 + 8));
        if (!v41 || (caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::table_impl::findSlotForKey(v41, -1), (v43 = v42) == 0))
        {
          atomic_fetch_add((v40 + 16), 0xFFFFFFFF);
          __assert_rtn("readInput", "ASDDSPStreamHelper.mm", 321, "graphHelper");
        }

        atomic_fetch_add(v42, 1u);
        v44 = *(v42 + 16);
        atomic_fetch_add((v40 + 16), 0xFFFFFFFF);
        if (v44)
        {
          v45 = *(v80 + 184);
          if (*(v80 + 192) == v45)
          {
            goto LABEL_73;
          }

          mSampleTime = a3->mInputTime.mSampleTime;
          v47 = *(v45 + 8);
          kdebug_trace();
          if (*(v44 + 2))
          {
            v48 = *(v80 + 184);
            v49 = *(v80 + 256);
            v50 = *v80;
            DSPGraph::Graph::preflight();
            if (*(v44 + 2))
            {
              v8 = v80;
              v51 = *(v80 + 184);
              v52 = *(v80 + 256);
              DSPGraph::Graph::processMultiple();
              ASDDSPStreamHelper::validateGraphAudio(v8, v44, *(v8 + 26), *(v8 + 35));
              v53 = *(v80 + 184);
              if (*(v80 + 192) != v53)
              {
                v54 = a3->mInputTime.mSampleTime;
                v55 = *(v53 + 8);
                kdebug_trace();
                v56 = *(v80 + 24) * a2;
                if (v56 <= *(*(v80 + 40) + 36))
                {
                  ASDBufferList::copyDataFromBufferList(v80, a4, a2);
                  Input = 0;
                  atomic_fetch_add(v43, 0xFFFFFFFF);
                  goto LABEL_65;
                }

                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315650;
                  *&buf[4] = "numBytes > mDSPBL.dataSize()";
                  *&buf[12] = 2080;
                  *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/DSP/ASDDSPStreamHelper.mm";
                  *&buf[22] = 1024;
                  *&buf[24] = 333;
                  _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIfWithFault %s failed in %s at line %d goto Exit. ", buf, 0x1Cu);
                }

                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  v57 = *(*(v80 + 40) + 36);
                  *buf = 67109376;
                  *&buf[4] = v56;
                  *&buf[8] = 1024;
                  *&buf[10] = v57;
                  _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "numBytes %d passed to DSP readInput exceeds ringbuffer data size %d\n", buf, 0xEu);
                }

                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
                {
                  ASDDSPStreamHelper::readInput(v80 + 40, v56, v58);
                }

                atomic_fetch_add(v43, 0xFFFFFFFF);
LABEL_64:
                v8 = v80;
LABEL_65:
                std::mutex::unlock((v8 + 304));
                goto LABEL_66;
              }

LABEL_73:
              std::vector<CAStreamBasicDescription>::__throw_out_of_range[abi:ne200100]();
            }
          }

          v76 = "mFormatMatchedGraph";
          v77 = 38;
          v78 = "ASDDSPGraphHelper.h";
          v79 = "graphToProcess";
        }

        else
        {
          v76 = "*graphHelper";
          v77 = 322;
          v78 = "ASDDSPStreamHelper.mm";
          v79 = "readInput";
        }

        __assert_rtn(v79, v78, v77, v76);
      }

      bzero(a4, *(v8 + 6) * a2);
      Input = 0;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "NULL == ioCycleInfo";
        *&buf[12] = 2080;
        *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/DSP/ASDDSPStreamHelper.mm";
        *&buf[22] = 1024;
        *&buf[24] = 290;
        _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIfNULLWithFault %s failed in %s at line %d goto Exit. ", buf, 0x1Cu);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "NULL ioCycleInfo passed to DSP readInput\n", buf, 2u);
      }

      Input = 1970171760;
      v19 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v19)
      {
        ASDDSPStreamHelper::readInput(v19, v20, v21, v22, v23, v24, v25, v26);
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "NULL == ioMainBuffer";
      *&buf[12] = 2080;
      *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/DSP/ASDDSPStreamHelper.mm";
      *&buf[22] = 1024;
      *&buf[24] = 289;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIfNULLWithFault %s failed in %s at line %d goto Exit. ", buf, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "NULL ioMainBuffer passed to DSP readInput\n", buf, 2u);
    }

    Input = 1970171760;
    v11 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v11)
    {
      ASDDSPStreamHelper::readInput(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

LABEL_66:
  v74 = *MEMORY[0x277D85DE8];
  return Input;
}

void sub_24162D090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  std::mutex::unlock((a10 + 304));
  if (a2 == 4)
  {
    v12 = __cxa_begin_catch(exception_object);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ASDDSPStreamHelper::readInput(v12);
    }

    v13 = v12[2];
    __cxa_end_catch();
LABEL_16:
    JUMPOUT(0x24162CF84);
  }

  if (a2 == 3)
  {
    v14 = __cxa_begin_catch(exception_object);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
LABEL_8:
      ASDSRCStreamHelper::readInput(v14);
    }
  }

  else
  {
    v14 = __cxa_begin_catch(exception_object);
    v15 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (a2 != 2)
    {
      if (v15)
      {
        ASDDSPStreamHelper::readInput();
      }

      goto LABEL_14;
    }

    if (v15)
    {
      goto LABEL_8;
    }
  }

LABEL_14:
  __cxa_end_catch();
  goto LABEL_16;
}

ASDDSPStreamHelper *ASDDSPStreamHelper::validateGraphAudio(ASDDSPStreamHelper *this, ASDDSPGraphHelper *a2, const CAStreamBasicDescription *a3, const CAStreamBasicDescription *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(this + 19))
  {
    v6 = this;
    v19 = this;
    v7 = *(this + 23);
    v8 = *(this + 24);
    if (v7 == v8)
    {
      v11 = 0;
    }

    else
    {
      v10 = 0;
      while (1)
      {
        this = ASDDSPStreamHelper::validateGraphAudio(ASDDSPGraphHelper *,CAStreamBasicDescription const*,CAStreamBasicDescription const*)::$_0::operator()<DSPGraph::GraphIOData>(&v19, v7, a3);
        v11 = this;
        if (this)
        {
          break;
        }

        ++v10;
        v7 += 80;
        if (v7 == v8)
        {
          v11 = 0;
          break;
        }
      }
    }

    v12 = *(v6 + 32);
    v13 = *(v6 + 33);
    if (v12 == v13)
    {
      if (!v11)
      {
        goto LABEL_30;
      }

LABEL_15:
      v15 = 0;
    }

    else
    {
      v14 = 0;
      while (1)
      {
        this = ASDDSPStreamHelper::validateGraphAudio(ASDDSPGraphHelper *,CAStreamBasicDescription const*,CAStreamBasicDescription const*)::$_0::operator()<DSPGraph::GraphIOData>(&v19, v12, a4);
        v15 = this;
        if (this)
        {
          break;
        }

        ++v14;
        v12 += 80;
        if (v12 == v13)
        {
          if (v11)
          {
            goto LABEL_15;
          }

          goto LABEL_30;
        }
      }
    }

    __s[0] = 0;
    if (v11)
    {
      if (v11 != 1 && v11 != 2)
      {
        ASDDSPStreamHelper::validateGraphAudio();
      }

      snprintf(__s, 0x100uLL, "input stream[%u] ABL[%u] channel[%u] (%s)");
    }

    else if (v15)
    {
      v16 = strlen(__s);
      if (v16)
      {
        strcat(__s, " and ");
      }

      if (v15 != 1 && v15 != 2)
      {
        ASDDSPStreamHelper::validateGraphAudio();
      }

      snprintf(&__s[v16], 256 - v16, "output stream[%u] ABL[%u] channel[%u] (%s)");
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ASDDSPStreamHelper::validateGraphAudio();
    }

    v17 = *(a2 + 2);
    if (!v17)
    {
      ASDDSPStreamHelper::validateGraphAudio();
    }

    this = DSPGraph::Graph::reset(v17);
  }

LABEL_30:
  v18 = *MEMORY[0x277D85DE8];
  return this;
}

void *ASDBufferList::copyDataFromBufferList(ASDBufferList *this, void *__dst, int a3)
{
  if (!__dst)
  {
    ASDBufferList::copyDataFromBufferList();
  }

  v3 = *(this + 5);
  if (*(v3 + 24) != 1)
  {
    ASDBufferList::copyDataFromBufferList();
  }

  v4 = (*(this + 6) * a3);
  if (v4 > *(v3 + 36))
  {
    ASDBufferList::copyDataFromBufferList();
  }

  v6 = *(v3 + 40);

  return memcpy(__dst, v6, v4);
}

uint64_t ASDDSPStreamHelper::processOutput(ASDDSPStreamHelper *this, int a2, const AudioServerPlugInIOCycleInfo *a3, void *a4, void *a5, unsigned int a6)
{
  v65 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    if (a3)
    {
      if (a5)
      {
        if (!std::mutex::try_lock((this + 304)))
        {
LABEL_34:
          v31 = 0;
          goto LABEL_35;
        }

        v12 = *(this + 18);
        v13 = (v12 + 16);
        atomic_fetch_add((v12 + 16), 1u);
        v14 = atomic_load((v12 + 8));
        if (v14)
        {
          caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::table_impl::findSlotForKey(v14, a6);
          if (v15)
          {
            v16 = v15;
            atomic_fetch_add(v15, 1u);
            v17 = *(v15 + 16);
            atomic_fetch_add((v12 + 16), 0xFFFFFFFF);
            if (v17)
            {
              ASDBufferList::setBufferListFromData((this + 48), a4, a2);
              ASDBufferList::setBufferListFromData((this + 96), a5, a2);
              v18 = *&a3->mOutputTime.mRateScalar;
              *v62 = *&a3->mOutputTime.mSampleTime;
              *&v62[16] = v18;
              v19 = *&a3->mOutputTime.mSMPTETime.mHours;
              v63 = *&a3->mOutputTime.mSMPTETime.mSubframes;
              v64 = v19;
              v20 = *(this + 23);
              if (*(this + 24) == v20)
              {
                std::vector<CAStreamBasicDescription>::__throw_out_of_range[abi:ne200100]();
              }

              v21 = *(this + 11) + 24;
              *v20 = a2;
              *(v20 + 4) = 0;
              *(v20 + 8) = *v62;
              *(v20 + 24) = *&v62[16];
              *(v20 + 40) = v63;
              *(v20 + 56) = v64;
              *(v20 + 72) = v21;
              v22 = *&a3->mOutputTime.mRateScalar;
              *v62 = *&a3->mOutputTime.mSampleTime;
              *&v62[16] = v22;
              v23 = *&a3->mOutputTime.mSMPTETime.mHours;
              v63 = *&a3->mOutputTime.mSMPTETime.mSubframes;
              v64 = v23;
              v24 = *(this + 32);
              if (*(this + 33) == v24)
              {
                std::vector<CAStreamBasicDescription>::__throw_out_of_range[abi:ne200100]();
              }

              v25 = *(this + 17) + 24;
              *v24 = a2;
              *(v24 + 4) = 0;
              *(v24 + 8) = *v62;
              *(v24 + 24) = *&v62[16];
              *(v24 + 40) = v63;
              *(v24 + 56) = v64;
              *(v24 + 72) = v25;
              if (*(v17 + 2))
              {
                v26 = *(this + 23);
                v27 = *(this + 32);
                v28 = *this;
                DSPGraph::Graph::preflight();
                if (*(v17 + 2))
                {
                  v29 = *(this + 23);
                  v30 = *(this + 32);
                  DSPGraph::Graph::processMultiple();
                  ASDDSPStreamHelper::validateGraphAudio(this, v17, this, this);
                  atomic_fetch_add(v16, 0xFFFFFFFF);
LABEL_33:
                  std::mutex::unlock((this + 304));
                  goto LABEL_34;
                }
              }

              v58 = "mFormatMatchedGraph";
              v59 = 38;
              v60 = "ASDDSPGraphHelper.h";
              v61 = "graphToProcess";
            }

            else
            {
              v58 = "*graphHelper";
              v59 = 403;
              v60 = "ASDDSPStreamHelper.mm";
              v61 = "processOutput";
            }

            __assert_rtn(v61, v60, v59, v58);
          }

          v13 = (v12 + 16);
        }

        atomic_fetch_add(v13, 0xFFFFFFFF);
        memcpy(a5, a4, (*(this + 6) * a2));
        goto LABEL_33;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v62 = 136315650;
        *&v62[4] = "NULL == ioSecondaryBuffer";
        *&v62[12] = 2080;
        *&v62[14] = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/DSP/ASDDSPStreamHelper.mm";
        *&v62[22] = 1024;
        *&v62[24] = 388;
        _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIfNULLWithFault %s failed in %s at line %d goto Exit. ", v62, 0x1Cu);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v62 = 0;
        _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "NULL ioSecondaryBuffer passed to DSP processOutput\n", v62, 2u);
      }

      v31 = 1970171760;
      v48 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v48)
      {
        ASDDSPStreamHelper::processOutput(v48, v49, v50, v51, v52, v53, v54, v55);
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v62 = 136315650;
        *&v62[4] = "NULL == ioCycleInfo";
        *&v62[12] = 2080;
        *&v62[14] = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/DSP/ASDDSPStreamHelper.mm";
        *&v62[22] = 1024;
        *&v62[24] = 387;
        _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIfNULLWithFault %s failed in %s at line %d goto Exit. ", v62, 0x1Cu);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v62 = 0;
        _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "NULL ioCycleInfo passed to DSP processOutput\n", v62, 2u);
      }

      v31 = 1970171760;
      v40 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v40)
      {
        ASDDSPStreamHelper::processOutput(v40, v41, v42, v43, v44, v45, v46, v47);
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v62 = 136315650;
      *&v62[4] = "NULL == ioMainBuffer";
      *&v62[12] = 2080;
      *&v62[14] = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/DSP/ASDDSPStreamHelper.mm";
      *&v62[22] = 1024;
      *&v62[24] = 386;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIfNULLWithFault %s failed in %s at line %d goto Exit. ", v62, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v62 = 0;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "NULL ioMainBuffer passed to DSP processOutput\n", v62, 2u);
    }

    v31 = 1970171760;
    v32 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v32)
    {
      ASDDSPStreamHelper::processOutput(v32, v33, v34, v35, v36, v37, v38, v39);
    }
  }

LABEL_35:
  v56 = *MEMORY[0x277D85DE8];
  return v31;
}

void sub_24162D9A8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  atomic_fetch_add(v3, 0xFFFFFFFF);
  std::mutex::unlock((v2 + 304));
  if (a2 == 4)
  {
    v6 = __cxa_begin_catch(exception_object);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ASDDSPStreamHelper::readInput(v6);
    }

    v7 = v6[2];
    __cxa_end_catch();
LABEL_16:
    JUMPOUT(0x24162D918);
  }

  if (a2 == 3)
  {
    v8 = __cxa_begin_catch(exception_object);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
LABEL_8:
      ASDSRCStreamHelper::readInput(v8);
    }
  }

  else
  {
    v8 = __cxa_begin_catch(exception_object);
    v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (a2 != 2)
    {
      if (v9)
      {
        ASDDSPStreamHelper::readInput();
      }

      goto LABEL_14;
    }

    if (v9)
    {
      goto LABEL_8;
    }
  }

LABEL_14:
  __cxa_end_catch();
  goto LABEL_16;
}

uint64_t ASDDSPStreamHelper::writeMix(ASDDSPStreamHelper *this, unsigned int a2, const AudioServerPlugInIOCycleInfo *a3, void *a4, void *a5)
{
  v129 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.mIOCycleCounter) = 136315650;
      *(&buf.mIOCycleCounter + 4) = "NULL == ioMainBuffer";
      *(&buf.mNominalIOBufferFrameSize + 2) = 2080;
      *(&buf.mNominalIOBufferFrameSize + 6) = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/DSP/ASDDSPStreamHelper.mm";
      HIWORD(buf.mCurrentTime.mSampleTime) = 1024;
      LODWORD(buf.mCurrentTime.mHostTime) = 460;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIfNULLWithFault %s failed in %s at line %d goto Exit. ", &buf, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.mIOCycleCounter) = 0;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "NULL ioMainBuffer passed to DSP writeMix\n", &buf, 2u);
    }

    v12 = 1970171760;
    v13 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v13)
    {
      ASDDSPStreamHelper::writeMix(v13, v14, v15, v16, v17, v18, v19, v20);
    }

    goto LABEL_109;
  }

  if (!a3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.mIOCycleCounter) = 136315650;
      *(&buf.mIOCycleCounter + 4) = "NULL == ioCycleInfo";
      *(&buf.mNominalIOBufferFrameSize + 2) = 2080;
      *(&buf.mNominalIOBufferFrameSize + 6) = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/DSP/ASDDSPStreamHelper.mm";
      HIWORD(buf.mCurrentTime.mSampleTime) = 1024;
      LODWORD(buf.mCurrentTime.mHostTime) = 461;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIfNULLWithFault %s failed in %s at line %d goto Exit. ", &buf, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.mIOCycleCounter) = 0;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "NULL ioCycleInfo passed to DSP writeMix\n", &buf, 2u);
    }

    v12 = 1970171760;
    v21 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v21)
    {
      ASDDSPStreamHelper::writeMix(v21, v22, v23, v24, v25, v26, v27, v28);
    }

    goto LABEL_109;
  }

  v9 = std::mutex::try_lock((this + 304));
  v126 = this;
  if (!v9)
  {
    v30 = *(this + 29);
    v29 = *(this + 30);
    if (v30 == v29)
    {
      v12 = 0;
      goto LABEL_109;
    }

    v125 = 0;
    v31 = 1970171760;
    while (1)
    {
      v32 = *(v30 + 9);
      v33 = *(*(v32 + 5) + 16);
      CAStreamBasicDescription::BytesToFrames(v32);
      if (v34 < a2)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf.mIOCycleCounter) = 136315650;
          *(&buf.mIOCycleCounter + 4) = "ioBufferFrameSize > outStream.mBufferList->capacityFrames()";
          *(&buf.mNominalIOBufferFrameSize + 2) = 2080;
          *(&buf.mNominalIOBufferFrameSize + 6) = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/DSP/ASDDSPStreamHelper.mm";
          HIWORD(buf.mCurrentTime.mSampleTime) = 1024;
          LODWORD(buf.mCurrentTime.mHostTime) = 539;
          _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIfWithFault %s failed in %s at line %d goto Exit. ", &buf, 0x1Cu);
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v66 = *(v30 + 9);
          v67 = *(*(v66 + 5) + 16);
          CAStreamBasicDescription::BytesToFrames(v66);
          LODWORD(buf.mIOCycleCounter) = 67109376;
          HIDWORD(buf.mIOCycleCounter) = a2;
          LOWORD(buf.mNominalIOBufferFrameSize) = 1024;
          *(&buf.mNominalIOBufferFrameSize + 2) = v68;
          _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ioBufferFrameSize %d passed to DSP writeMix exceeds capacity %d on output streams\n", &buf, 0xEu);
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
        {
          v112 = *(v30 + 9);
          v113 = *(*(v112 + 5) + 16);
          CAStreamBasicDescription::BytesToFrames(v112);
          ASDDSPStreamHelper::writeMix(&buf, a2, v114);
        }

        v12 = v31;
        goto LABEL_107;
      }

      v35 = *(v30 + 9);
      v36 = *(v35 + 40);
      v37 = *(v36 + 4);
      if (v37)
      {
        v38 = *(v35 + 24) * a2 > v37;
      }

      else
      {
        v38 = 0;
      }

      if (!v38)
      {
        CABufferList::SetNumBytes(v36, *(v35 + 24) * a2);
        v36 = *(*(v30 + 9) + 40);
        v37 = *(v36 + 4);
      }

      CABufferList::SetToZeroes(v36, v37);
      v12 = ASDDSPStreamHelper::DSPStream::writeMix(v30, a2, a3);
      if (v12)
      {
        break;
      }

      v31 = 0;
      v30 = (v30 + 80);
      if (v30 == v29)
      {
        goto LABEL_107;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_107;
    }

LABEL_60:
    ASDDSPStreamHelper::writeMix();
    goto LABEL_107;
  }

  if (*(this + 368))
  {
    v10 = *(this + 29);
    v11 = *(this + 30);
    if (v10 == v11)
    {
      v12 = 0;
LABEL_108:
      std::mutex::unlock((v126 + 304));
      goto LABEL_109;
    }

    v125 = v9;
    while (1)
    {
      v12 = (*(*(v10 + 56) + 16))();
      if (v12)
      {
        break;
      }

      v10 += 80;
      if (v10 == v11)
      {
        v12 = 0;
        goto LABEL_107;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_107;
    }

    goto LABEL_60;
  }

  v125 = v9;
  v12 = 1970171760;
  v39 = *(this + 20);
  v124 = *(this + 21);
  if (v124 == v39)
  {
LABEL_41:
    v57 = *(this + 23);
    if (*(this + 24) == v57)
    {
      std::vector<CAStreamBasicDescription>::__throw_out_of_range[abi:ne200100]();
    }

    v58 = *&a3->mOutputTime.mRateScalar;
    *&buf.mIOCycleCounter = *&a3->mOutputTime.mSampleTime;
    *&buf.mCurrentTime.mSampleTime = v58;
    v59 = *&a3->mOutputTime.mSMPTETime.mHours;
    *&buf.mCurrentTime.mRateScalar = *&a3->mOutputTime.mSMPTETime.mSubframes;
    *&buf.mCurrentTime.mSMPTETime.mSubframes = v59;
    if (SetupGraphIOData(v57, a2, &buf, this))
    {
      v60 = *(*(this + 5) + 16);
      CAStreamBasicDescription::BytesToFrames(this);
      if (v61 >= a2)
      {
        ASDBufferList::copyDataToBufferList(this, a4, a2);
        v84 = *(this + 29);
        v85 = *(this + 30);
        if (v84 == v85)
        {
LABEL_85:
          v94 = *(v126 + 18);
          atomic_fetch_add((v94 + 16), 1u);
          v95 = atomic_load((v94 + 8));
          if (!v95 || (caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::table_impl::findSlotForKey(v95, -1), (v97 = v96) == 0))
          {
            atomic_fetch_add((v94 + 16), 0xFFFFFFFF);
            __assert_rtn("writeMix", "ASDDSPStreamHelper.mm", 509, "graphHelper");
          }

          atomic_fetch_add(v96, 1u);
          v98 = *(v96 + 16);
          atomic_fetch_add((v94 + 16), 0xFFFFFFFF);
          v99 = *(v126 + 23);
          if (*(v126 + 24) == v99)
          {
            goto LABEL_114;
          }

          mSampleTime = a3->mOutputTime.mSampleTime;
          v101 = *(v99 + 8);
          kdebug_trace();
          if (!*(v98 + 2) || (v102 = *(v126 + 23), v103 = *(v126 + 32), v104 = *v126, DSPGraph::Graph::preflight(), !*(v98 + 2)))
          {
            __assert_rtn("graphToProcess", "ASDDSPGraphHelper.h", 38, "mFormatMatchedGraph");
          }

          v105 = *(v126 + 23);
          v106 = *(v126 + 32);
          DSPGraph::Graph::processMultiple();
          ASDDSPStreamHelper::validateGraphAudio(v126, v98, *(v126 + 26), *(v126 + 35));
          v107 = *(v126 + 23);
          if (*(v126 + 24) == v107)
          {
LABEL_114:
            std::vector<CAStreamBasicDescription>::__throw_out_of_range[abi:ne200100]();
          }

          v108 = a3->mOutputTime.mSampleTime;
          v109 = *(v107 + 8);
          kdebug_trace();
          v111 = *(v126 + 29);
          v110 = *(v126 + 30);
          while (1)
          {
            if (v111 == v110)
            {
              v12 = 0;
              goto LABEL_106;
            }

            v12 = ASDDSPStreamHelper::DSPStream::writeMix(v111, a2, a3);
            if (v12)
            {
              break;
            }

            v111 = (v111 + 80);
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            ASDDSPStreamHelper::writeMix();
          }

LABEL_106:
          atomic_fetch_add(v97, 0xFFFFFFFF);
        }

        else
        {
          v86 = 0;
          v87 = -1;
          while (1)
          {
            v88 = *(v84 + v86 + 72);
            v89 = *(*(v88 + 5) + 16);
            CAStreamBasicDescription::BytesToFrames(v88);
            if (v90 < a2)
            {
              break;
            }

            v91 = *(v126 + 32);
            if (0xCCCCCCCCCCCCCCCDLL * ((*(v126 + 33) - v91) >> 4) <= ++v87)
            {
              std::vector<CAStreamBasicDescription>::__throw_out_of_range[abi:ne200100]();
            }

            v92 = *&a3->mOutputTime.mRateScalar;
            *&buf.mIOCycleCounter = *&a3->mOutputTime.mSampleTime;
            *&buf.mCurrentTime.mSampleTime = v92;
            v93 = *&a3->mOutputTime.mSMPTETime.mHours;
            *&buf.mCurrentTime.mRateScalar = *&a3->mOutputTime.mSMPTETime.mSubframes;
            *&buf.mCurrentTime.mSMPTETime.mSubframes = v93;
            if ((SetupGraphIOData(v91 + v86, a2, &buf, *(v84 + v86 + 72)) & 1) == 0)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                ASDDSPStreamHelper::writeMix();
              }

              goto LABEL_107;
            }

            v86 += 80;
            if (v84 + v86 == v85)
            {
              goto LABEL_85;
            }
          }

          v115 = v84 + v86;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf.mIOCycleCounter) = 136315650;
            *(&buf.mIOCycleCounter + 4) = "ioBufferFrameSize > outStream.mBufferList->capacityFrames()";
            *(&buf.mNominalIOBufferFrameSize + 2) = 2080;
            *(&buf.mNominalIOBufferFrameSize + 6) = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/DSP/ASDDSPStreamHelper.mm";
            HIWORD(buf.mCurrentTime.mSampleTime) = 1024;
            LODWORD(buf.mCurrentTime.mHostTime) = 500;
            _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIfWithFault %s failed in %s at line %d goto Exit. ", &buf, 0x1Cu);
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v116 = *(v115 + 72);
            v117 = *(*(v116 + 5) + 16);
            CAStreamBasicDescription::BytesToFrames(v116);
            LODWORD(buf.mIOCycleCounter) = 67109376;
            HIDWORD(buf.mIOCycleCounter) = a2;
            LOWORD(buf.mNominalIOBufferFrameSize) = 1024;
            *(&buf.mNominalIOBufferFrameSize + 2) = v118;
            _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ioBufferFrameSize %d passed to DSP writeMix exceeds ringbuffer capacity %d on output streams\n", &buf, 0xEu);
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
          {
            v119 = *(v115 + 72);
            v120 = *(*(v119 + 5) + 16);
            CAStreamBasicDescription::BytesToFrames(v119);
            ASDDSPStreamHelper::writeMix(&buf, a2, v121);
          }
        }
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf.mIOCycleCounter) = 136315650;
          *(&buf.mIOCycleCounter + 4) = "ioBufferFrameSize > mDSPBL.capacityFrames()";
          *(&buf.mNominalIOBufferFrameSize + 2) = 2080;
          *(&buf.mNominalIOBufferFrameSize + 6) = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/DSP/ASDDSPStreamHelper.mm";
          HIWORD(buf.mCurrentTime.mSampleTime) = 1024;
          LODWORD(buf.mCurrentTime.mHostTime) = 494;
          _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIfWithFault %s failed in %s at line %d goto Exit. ", &buf, 0x1Cu);
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v62 = *(*(this + 5) + 16);
          CAStreamBasicDescription::BytesToFrames(this);
          LODWORD(buf.mIOCycleCounter) = 67109376;
          HIDWORD(buf.mIOCycleCounter) = a2;
          LOWORD(buf.mNominalIOBufferFrameSize) = 1024;
          *(&buf.mNominalIOBufferFrameSize + 2) = v63;
          _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ioBufferFrameSize %d passed to DSP writeMix exceeds ringbuffer capacity %d\n", &buf, 0xEu);
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
        {
          v64 = *(*(this + 5) + 16);
          CAStreamBasicDescription::BytesToFrames(this);
          ASDDSPStreamHelper::writeMix(&buf, a2, v65);
        }
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.mIOCycleCounter) = 136315650;
        *(&buf.mIOCycleCounter + 4) = "!setupGraphIO";
        *(&buf.mNominalIOBufferFrameSize + 2) = 2080;
        *(&buf.mNominalIOBufferFrameSize + 6) = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/DSP/ASDDSPStreamHelper.mm";
        HIWORD(buf.mCurrentTime.mSampleTime) = 1024;
        LODWORD(buf.mCurrentTime.mHostTime) = 492;
        _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIfWithFault %s failed in %s at line %d goto Exit. ", &buf, 0x1Cu);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.mIOCycleCounter) = 0;
        _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to setup Graph output buffer for DSP writeMix\n", &buf, 2u);
      }

      v69 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v69)
      {
        ASDDSPStreamHelper::writeMix(v69, v70, v71, v72, v73, v74, v75, v76);
      }
    }
  }

  else
  {
    v40 = 0;
    v41 = 0;
    v42 = *&a3->mOutputTime.mSampleTime;
    v43 = *&a3->mOutputTime.mSMPTETime.mSubframes;
    *&buf.mOutputTime.mRateScalar = *&a3->mOutputTime.mRateScalar;
    *&buf.mOutputTime.mSMPTETime.mSubframes = v43;
    v44 = *&a3->mOutputTime.mSMPTETime.mSubframes;
    v45 = *&a3->mMainHostTicksPerFrame;
    *&buf.mOutputTime.mSMPTETime.mHours = *&a3->mOutputTime.mSMPTETime.mHours;
    *&buf.mMainHostTicksPerFrame = v45;
    v46 = *&a3->mCurrentTime.mSMPTETime.mSubframes;
    *&buf.mCurrentTime.mRateScalar = *&a3->mCurrentTime.mRateScalar;
    *&buf.mCurrentTime.mSMPTETime.mSubframes = v46;
    v47 = *&a3->mInputTime.mSampleTime;
    *&buf.mCurrentTime.mSMPTETime.mHours = *&a3->mCurrentTime.mSMPTETime.mHours;
    *&buf.mInputTime.mSampleTime = v47;
    v48 = *&a3->mCurrentTime.mSampleTime;
    *&buf.mIOCycleCounter = *&a3->mIOCycleCounter;
    *&buf.mCurrentTime.mSampleTime = v48;
    v49 = *&a3->mInputTime.mRateScalar;
    v50 = *&a3->mInputTime.mSMPTETime.mSubframes;
    *&buf.mInputTime.mSampleTime = v42;
    *&buf.mInputTime.mRateScalar = *&buf.mOutputTime.mRateScalar;
    *&buf.mInputTime.mSMPTETime.mSubframes = v50;
    v51 = *&a3->mInputTime.mSMPTETime.mHours;
    v52 = *&a3->mOutputTime.mSampleTime;
    *&buf.mInputTime.mSMPTETime.mSubframes = v44;
    *&buf.mInputTime.mSMPTETime.mHours = *&buf.mOutputTime.mSMPTETime.mHours;
    *&buf.mOutputTime.mSampleTime = v52;
    while (1)
    {
      v53 = *(v39 + v40 + 72);
      v54 = *(*(v53 + 5) + 16);
      CAStreamBasicDescription::BytesToFrames(v53);
      if (v55 < a2)
      {
        break;
      }

      v56 = *(this + 23);
      if (0xCCCCCCCCCCCCCCCDLL * ((*(this + 24) - v56) >> 4) <= ++v41)
      {
        std::vector<CAStreamBasicDescription>::__throw_out_of_range[abi:ne200100]();
      }

      mInputTime = buf.mInputTime;
      if ((SetupGraphIOData(v56 + v40 + 80, a2, &mInputTime, *(v39 + v40 + 72)) & 1) == 0)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          ASDDSPStreamHelper::writeMix();
        }

        goto LABEL_107;
      }

      v12 = ASDDSPStreamHelper::DSPStream::readInput((v39 + v40), a2, &buf);
      if (v12)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          ASDDSPStreamHelper::readInput();
        }

        goto LABEL_107;
      }

      v40 += 80;
      if (v39 + v40 == v124)
      {
        v12 = 0;
        goto LABEL_41;
      }
    }

    v77 = v39 + v40;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(mInputTime.mSampleTime) = 136315650;
      *(&mInputTime.mSampleTime + 4) = "ioBufferFrameSize > inStream.mBufferList->capacityFrames()";
      WORD2(mInputTime.mHostTime) = 2080;
      *(&mInputTime.mHostTime + 6) = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/DSP/ASDDSPStreamHelper.mm";
      HIWORD(mInputTime.mRateScalar) = 1024;
      LODWORD(mInputTime.mWordClockTime) = 481;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIfWithFault %s failed in %s at line %d goto Exit. ", &mInputTime, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v78 = *(v77 + 72);
      v79 = *(*(v78 + 5) + 16);
      CAStreamBasicDescription::BytesToFrames(v78);
      LODWORD(mInputTime.mSampleTime) = 67109376;
      HIDWORD(mInputTime.mSampleTime) = a2;
      LOWORD(mInputTime.mHostTime) = 1024;
      *(&mInputTime.mHostTime + 2) = v80;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ioBufferFrameSize %d passed to DSP writeMix exceeds ringbuffer capacity %d on input streams\n", &mInputTime, 0xEu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      v81 = *(v77 + 72);
      v82 = *(*(v81 + 5) + 16);
      CAStreamBasicDescription::BytesToFrames(v81);
      ASDDSPStreamHelper::writeMix(&mInputTime, a2, v83);
    }
  }

LABEL_107:
  if (v125)
  {
    goto LABEL_108;
  }

LABEL_109:
  v122 = *MEMORY[0x277D85DE8];
  return v12;
}

void sub_24162E7C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  if (a12)
  {
    std::mutex::unlock((a13 + 304));
  }

  if (a2 == 4)
  {
    v15 = __cxa_begin_catch(exception_object);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ASDDSPStreamHelper::readInput(v15);
    }

    v16 = v15[2];
    __cxa_end_catch();
LABEL_18:
    JUMPOUT(0x24162E704);
  }

  if (a2 == 3)
  {
    v17 = __cxa_begin_catch(exception_object);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
LABEL_10:
      ASDSRCStreamHelper::readInput(v17);
    }
  }

  else
  {
    v17 = __cxa_begin_catch(exception_object);
    v18 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (a2 != 2)
    {
      if (v18)
      {
        ASDDSPStreamHelper::readInput();
      }

      goto LABEL_16;
    }

    if (v18)
    {
      goto LABEL_10;
    }
  }

LABEL_16:
  __cxa_end_catch();
  goto LABEL_18;
}

uint64_t ASDBufferList::copyDataToBufferList(ASDBufferList *this, void *a2, int a3)
{
  if (!a2)
  {
    ASDBufferList::copyDataToBufferList();
  }

  v4 = *(this + 5);
  if (*(v4 + 24) != 1)
  {
    ASDBufferList::copyDataToBufferList();
  }

  v6 = (*(this + 6) * a3);
  if (v6 > *(v4 + 16))
  {
    return 0;
  }

  memcpy(*(v4 + 40), a2, v6);
  v7 = *(this + 6) * a3;
  v8 = *(this + 5);
  v9 = v8[4];
  if (v9 && v7 > v9)
  {
    return 0;
  }

  CABufferList::SetNumBytes(v8, v7);
  return 1;
}

uint64_t ASDDSPStreamHelper::readIsolatedInput(ASDDSPStreamHelper *this, uint64_t a2, uint64_t a3, const AudioServerPlugInIOCycleInfo *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315650;
      v24 = "NULL == inIOCycleInfo";
      v25 = 2080;
      v26 = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/DSP/ASDDSPStreamHelper.mm";
      v27 = 1024;
      v28 = 582;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIfNULLWithFault %s failed in %s at line %d goto Exit. ", &v23, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "NULL ioCycleInfo passed to DSP readInput\n", &v23, 2u);
    }

    v12 = 1970171760;
    v13 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v13)
    {
      ASDDSPStreamHelper::readInput(v13, v14, v15, v16, v17, v18, v19, v20);
    }

    goto LABEL_19;
  }

  v8 = std::mutex::try_lock((this + 304));
  v9 = *(this + 20);
  v10 = *(this + 21);
  while (1)
  {
    if (v9 == v10)
    {
      v12 = 0;
      if (!v8)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v11 = *(v9 + 64);
    if (!v11)
    {
      break;
    }

    v12 = (*(v11 + 16))(v11, a2, a3, a4);
    if (v12)
    {
      goto LABEL_16;
    }

    v9 += 80;
  }

  v12 = 1852797029;
LABEL_16:
  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    if (!v8)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  ASDDSPStreamHelper::readInput();
  if (v8)
  {
LABEL_18:
    std::mutex::unlock((this + 304));
  }

LABEL_19:
  v21 = *MEMORY[0x277D85DE8];
  return v12;
}

void sub_24162EB98(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  if (v3)
  {
    std::mutex::unlock((v2 + 304));
  }

  if (a2 == 4)
  {
    v6 = __cxa_begin_catch(exception_object);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ASDDSPStreamHelper::readInput(v6);
    }

    v7 = v6[2];
    __cxa_end_catch();
LABEL_18:
    JUMPOUT(0x24162EB50);
  }

  if (a2 == 3)
  {
    v8 = __cxa_begin_catch(exception_object);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
LABEL_10:
      ASDSRCStreamHelper::readInput(v8);
    }
  }

  else
  {
    v8 = __cxa_begin_catch(exception_object);
    v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (a2 != 2)
    {
      if (v9)
      {
        ASDDSPStreamHelper::readInput();
      }

      goto LABEL_16;
    }

    if (v9)
    {
      goto LABEL_10;
    }
  }

LABEL_16:
  __cxa_end_catch();
  goto LABEL_18;
}

uint64_t ASDDSPStreamHelper::validateGraphAudio(ASDDSPGraphHelper *,CAStreamBasicDescription const*,CAStreamBasicDescription const*)::$_0::operator()<DSPGraph::GraphIOData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*a1 + 152) == 2)
  {
    v3 = *a2;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a2 + 72);
  if (!*v4)
  {
    return 0;
  }

  v7 = 0;
  while (1)
  {
    v8 = &v4[4 * v7];
    v16 = 0;
    if (CAStreamBasicDescription::IdentifyCommonPCMFormat((a3 + 40 * v7), &v16, 0) && v16 == 1)
    {
      break;
    }

    v17 = 0;
    if (CAStreamBasicDescription::IdentifyCommonPCMFormat((a3 + 40 * v7), &v17, 0))
    {
      v10 = v17 == 4;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      v11 = (v8[2] * v3);
      if (v11)
      {
        v12 = 0;
        while (fabs(*(*(v8 + 2) + 8 * v12)) != INFINITY)
        {
          if (v11 == ++v12)
          {
            goto LABEL_24;
          }
        }

        return (v7 << 32) | 2;
      }
    }

LABEL_24:
    ++v7;
    v4 = *(a2 + 72);
    if (v7 >= *v4)
    {
      return 0;
    }
  }

  v13 = (v8[2] * v3);
  if (!v13)
  {
    goto LABEL_24;
  }

  v14 = 0;
  while (fabsf(*(*(v8 + 2) + 4 * v14)) != INFINITY)
  {
    if (v13 == ++v14)
    {
      goto LABEL_24;
    }
  }

  return (v7 << 32) | 2;
}

void CAStreamBasicDescription::BytesToFrames(CAStreamBasicDescription *this)
{
  if (!*(this + 6))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      CAStreamBasicDescription::BytesToFrames();
    }

    __break(1u);
  }
}

_DWORD *CABufferList::SetNumBytes(_DWORD *this, unsigned int a2)
{
  v2 = this[4];
  if (v2)
  {
    v3 = v2 >= a2;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v4 = this[6];
    if (v4)
    {
      v5 = 0;
      v6 = vdupq_n_s64(v4 - 1);
      v7 = (v4 + 3) & 0x1FFFFFFFCLL;
      v8 = this + 21;
      do
      {
        v9 = vdupq_n_s64(v5);
        v10 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v9, xmmword_241642DF0)));
        if (vuzp1_s16(v10, *v6.i8).u8[0])
        {
          *(v8 - 12) = a2;
        }

        if (vuzp1_s16(v10, *&v6).i8[2])
        {
          *(v8 - 8) = a2;
        }

        if (vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v9, xmmword_241642DE0)))).i32[1])
        {
          *(v8 - 4) = a2;
          *v8 = a2;
        }

        v5 += 4;
        v8 += 16;
      }

      while (v7 != v5);
    }
  }

  else
  {
    v11 = CABufferList::SetNumBytes();
    return CABufferList::SetToZeroes(v11, v12);
  }

  return this;
}

void CABufferList::SetToZeroes(CABufferList *this, unsigned int a2)
{
  v2 = *(this + 4);
  if (v2)
  {
    v3 = v2 >= a2;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v4 = *(this + 6);
    if (v4)
    {
      v6 = a2;
      v7 = (this + 40);
      do
      {
        --v4;
        bzero(*v7, v6);
        *(v7 - 1) = a2;
        v7 += 2;
      }

      while (v4);
    }
  }

  else
  {
    v8 = CABufferList::SetToZeroes();
    std::vector<ASDDSPStreamHelper::DSPStream>::__emplace_back_slow_path<ASDDSPStreamHelper::DSPStream const&>(v8);
  }
}

uint64_t std::vector<ASDDSPStreamHelper::DSPStream>::__emplace_back_slow_path<ASDDSPStreamHelper::DSPStream const&>(uint64_t a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    std::vector<CAStreamBasicDescription>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ASDDSPStreamHelper::DSPStream>>(a1, v6);
  }

  v13 = 0;
  v14 = 80 * v2;
  ASDDSPStreamHelper::DSPStream::DSPStream(80 * v2, a2);
  v15 = 80 * v2 + 80;
  v7 = *(a1 + 8);
  v8 = (80 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ASDDSPStreamHelper::DSPStream>,ASDDSPStreamHelper::DSPStream*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<ASDDSPStreamHelper::DSPStream>::~__split_buffer(&v13);
  return v12;
}

void sub_24162F09C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<ASDDSPStreamHelper::DSPStream>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_1_4(uint64_t result, int a2, int a3, float a4)
{
  *result = a4;
  *(result + 4) = a2;
  *(result + 8) = 1024;
  *(result + 10) = a3;
  return result;
}

void OUTLINED_FUNCTION_4_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

uint64_t OUTLINED_FUNCTION_5_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 39);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_1(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(result + 95);
  return result;
}

void OUTLINED_FUNCTION_8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, a5, 0xEu);
}

void ResamplerInitLocker::ResamplerInitLocker(ResamplerInitLocker *this)
{
  pthread_mutex_lock(&sInitLocker);
}

{
  pthread_mutex_lock(&sInitLocker);
}

void ResamplerInitLocker::~ResamplerInitLocker(ResamplerInitLocker *this)
{
  pthread_mutex_unlock(&sInitLocker);
}

{
  pthread_mutex_unlock(&sInitLocker);
}

void sub_241631414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2416322AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ASDSRCStreamHelper::ASDSRCStreamHelper()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void ASDSRCStreamHelper::allocateStreamingResources()
{
  __assert_rtn("allocateStreamingResources", "ASDSRCStreamHelper.mm", 161, "mBuffer[0]");
}

{
  __assert_rtn("allocateStreamingResources", "ASDSRCStreamHelper.mm", 155, "mBufferSize[1] != 0");
}

{
  __assert_rtn("allocateStreamingResources", "ASDSRCStreamHelper.mm", 154, "mBuffer[1]");
}

void ASDSRCStreamHelper::readInput(unsigned int *a1)
{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xEu);
  v6 = *MEMORY[0x277D85DE8];
}

void ASDSRCStreamHelper::readInput()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void ASDSRCStreamHelper::readInput(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2(a1, *MEMORY[0x277D85DE8]);
  (*(v2 + 16))(v1);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  v8 = *MEMORY[0x277D85DE8];
}

void ASDSRCStreamHelper::writeMix(unsigned int *a1)
{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x277D85DE8]);
  v2 = *v1;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0xEu);
  v8 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xEu);
  v6 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x277D85DE8]);
  v2 = *v1;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0xEu);
  v8 = *MEMORY[0x277D85DE8];
}

void ASDSRCStreamHelper::writeMix()
{
  OUTLINED_FUNCTION_4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void ASDSRCStreamHelper::readIsolatedInput(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = __cxa_begin_catch(a1);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    (*(*v1 + 16))(v1);
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

void ASDDSP::exceptionBarrier<objc_object *({block_pointer} {__strong})(void)>(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = __cxa_begin_catch(a1);
  OUTLINED_FUNCTION_3_0(v2);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_7_0();
    if (v5 < 0)
    {
      v6 = *v4;
    }

    OUTLINED_FUNCTION_6_0();
    if (v8 < 0)
    {
      v9 = *v7;
    }

    v10 = *(v1 + 40);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_3();
    _os_log_error_impl(v11, v12, v13, v14, v15, 0x32u);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void ASDDSP::exceptionBarrier<objc_object *({block_pointer} {__strong})(void)>()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x277D85DE8];
}

void ASDDSP::exceptionBarrier<objc_object *({block_pointer} {__strong})(void)>(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_2(a1, *MEMORY[0x277D85DE8]);
  (*(v2 + 16))(v1);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  v8 = *MEMORY[0x277D85DE8];
}

{
  v9 = *MEMORY[0x277D85DE8];
  v1 = OUTLINED_FUNCTION_3_2(a1);
  (*(v2 + 16))(v1);
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  v8 = *MEMORY[0x277D85DE8];
}

void caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::element_t::release()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void ASDDSP::exceptionBarrier<void({block_pointer} {__strong})(void)>(void *a1, _DWORD *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = __cxa_begin_catch(a1);
  *a2 = v3[2];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    if (*(v3 + 95) < 0)
    {
      v5 = *(v3 + 9);
    }

    if (*(v3 + 39) < 0)
    {
      v6 = *(v3 + 2);
    }

    v7 = v3[10];
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_3();
    _os_log_error_impl(v8, v9, v10, v11, v12, 0x32u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void ASDDSP::exceptionBarrier<void({block_pointer} {__strong})(void)>(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  (*(*a1 + 16))(a1);
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void ASDDSP::exceptionBarrier<BOOL({block_pointer} {__strong})(void)>(void *a1, _DWORD *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = __cxa_begin_catch(a1);
  *a2 = v3[2];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    if (*(v3 + 95) < 0)
    {
      v5 = *(v3 + 9);
    }

    if (*(v3 + 39) < 0)
    {
      v6 = *(v3 + 2);
    }

    v12 = v3[10];
    OUTLINED_FUNCTION_3();
    _os_log_error_impl(v7, v8, v9, v10, v11, 0x32u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void ASDDSP::exceptionBarrier<BOOL({block_pointer} {__strong})(void)>()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x277D85DE8];
}

void ASDPluginInterfaceInfo::setRealTimeOperationVectorSize(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v3 = 138412290;
  v4 = v1;
  _os_log_error_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%@: Attempt to move from vectors to maps for realtime operations.", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void ASDBufferList::setBufferListFromData()
{
  __assert_rtn("setBufferListFromData", "ASDBufferList.h", 95, "mBufferList->GetNumberBuffers() == 1");
}

{
  __assert_rtn("setBufferListFromData", "ASDBufferList.h", 94, "inData");
}

void CALog::RegisterScope(uint64_t a1)
{
  if (CALog_DefaultScope)
  {
    v2 = *CALog_DefaultScope;
  }

  else
  {
    v2 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315906;
    v4 = "CALog.cpp";
    v5 = 1024;
    v6 = 240;
    v7 = 2080;
    v8 = "RegisterScope";
    v9 = 2048;
    v10 = a1;
    _os_log_impl(&dword_2415D8000, v2, OS_LOG_TYPE_ERROR, "%s:%d:%s: ERROR: subscope bits are set in scope: 0x%lx", &v3, 0x26u);
  }

  __break(1u);
}

void ASDDSPStreamHelper::addStream()
{
  __assert_rtn("addStream", "ASDDSPStreamHelper.mm", 236, "outStream.mBufferList");
}

{
  __assert_rtn("addStream", "ASDDSPStreamHelper.mm", 228, "inStream.mBufferList");
}

void ASDDSPStreamHelper::readInput()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ASDDSPStreamHelper::readInput(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_4_1(&dword_2415D8000, MEMORY[0x277D86220], a3, "Failed to setup Graph output buffer for DSP readInput\n", a5, a6, a7, a8, 0);
}

{
  OUTLINED_FUNCTION_4_1(&dword_2415D8000, MEMORY[0x277D86220], a3, "NULL ioCycleInfo passed to DSP readInput\n", a5, a6, a7, a8, 0);
}

{
  OUTLINED_FUNCTION_4_1(&dword_2415D8000, MEMORY[0x277D86220], a3, "NULL ioMainBuffer passed to DSP readInput\n", a5, a6, a7, a8, 0);
}

void ASDDSPStreamHelper::readInput(uint64_t a1, int a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(*a1 + 36);
  v5[0] = 67109376;
  v5[1] = a2;
  v6 = 1024;
  v7 = v3;
  OUTLINED_FUNCTION_8(&dword_2415D8000, MEMORY[0x277D86220], a3, "numBytes %d passed to DSP readInput exceeds ringbuffer data size %d\n", v5);
  v4 = *MEMORY[0x277D85DE8];
}

void ASDDSPStreamHelper::readInput(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_5_0(a1, *MEMORY[0x277D85DE8]);
  if (v3 < 0)
  {
    v4 = *v2;
  }

  OUTLINED_FUNCTION_6_1(v1);
  if (v6 < 0)
  {
    v7 = *v5;
  }

  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x1Cu);
  v13 = *MEMORY[0x277D85DE8];
}

void ASDDSPStreamHelper::validateGraphAudio()
{
  __assert_rtn("operator()", "ASDDSPStreamHelper.mm", 739, "false");
}

{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

{
  __assert_rtn("graphToProcess", "ASDDSPGraphHelper.h", 38, "mFormatMatchedGraph");
}

void ASDBufferList::copyDataFromBufferList()
{
  __assert_rtn("copyDataFromBufferList", "ASDBufferList.h", 86, "mBufferList->GetNumberBuffers() == 1");
}

{
  __assert_rtn("copyDataFromBufferList", "ASDBufferList.h", 87, "numBytes <= mBufferList->GetNumBytes()");
}

{
  __assert_rtn("copyDataFromBufferList", "ASDBufferList.h", 85, "inData");
}

void ASDDSPStreamHelper::processOutput(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_4_1(&dword_2415D8000, MEMORY[0x277D86220], a3, "NULL ioSecondaryBuffer passed to DSP processOutput\n", a5, a6, a7, a8, 0);
}

{
  OUTLINED_FUNCTION_4_1(&dword_2415D8000, MEMORY[0x277D86220], a3, "NULL ioCycleInfo passed to DSP processOutput\n", a5, a6, a7, a8, 0);
}

{
  OUTLINED_FUNCTION_4_1(&dword_2415D8000, MEMORY[0x277D86220], a3, "NULL ioMainBuffer passed to DSP processOutput\n", a5, a6, a7, a8, 0);
}

void ASDDSPStreamHelper::writeMix()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ASDDSPStreamHelper::writeMix(uint64_t a1, int a2, int a3)
{
  OUTLINED_FUNCTION_1_4(a1, a2, a3, 1.5047e-36);
  OUTLINED_FUNCTION_8(&dword_2415D8000, MEMORY[0x277D86220], v3, "ioBufferFrameSize %d passed to DSP writeMix exceeds capacity %d on output streams\n", v4);
}

{
  OUTLINED_FUNCTION_1_4(a1, a2, a3, 1.5047e-36);
  OUTLINED_FUNCTION_8(&dword_2415D8000, MEMORY[0x277D86220], v3, "ioBufferFrameSize %d passed to DSP writeMix exceeds ringbuffer capacity %d on input streams\n", v4);
}

{
  OUTLINED_FUNCTION_1_4(a1, a2, a3, 1.5047e-36);
  OUTLINED_FUNCTION_8(&dword_2415D8000, MEMORY[0x277D86220], v3, "ioBufferFrameSize %d passed to DSP writeMix exceeds ringbuffer capacity %d on output streams\n", v4);
}

{
  OUTLINED_FUNCTION_1_4(a1, a2, a3, 1.5047e-36);
  OUTLINED_FUNCTION_8(&dword_2415D8000, MEMORY[0x277D86220], v3, "ioBufferFrameSize %d passed to DSP writeMix exceeds ringbuffer capacity %d\n", v4);
}

void ASDDSPStreamHelper::writeMix(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_4_1(&dword_2415D8000, MEMORY[0x277D86220], a3, "Failed to setup Graph output buffer for DSP writeMix\n", a5, a6, a7, a8, 0);
}

{
  OUTLINED_FUNCTION_4_1(&dword_2415D8000, MEMORY[0x277D86220], a3, "NULL ioCycleInfo passed to DSP writeMix\n", a5, a6, a7, a8, 0);
}

{
  OUTLINED_FUNCTION_4_1(&dword_2415D8000, MEMORY[0x277D86220], a3, "NULL ioMainBuffer passed to DSP writeMix\n", a5, a6, a7, a8, 0);
}

void ASDBufferList::copyDataToBufferList()
{
  __assert_rtn("copyDataToBufferList", "ASDBufferList.h", 70, "mBufferList->GetNumberBuffers() == 1");
}

{
  __assert_rtn("copyDataToBufferList", "ASDBufferList.h", 69, "inData");
}

CFGregorianDate CFAbsoluteTimeGetGregorianDate(CFAbsoluteTime at, CFTimeZoneRef tz)
{
  v2 = MEMORY[0x28210EEA0](tz, at);
  result.second = v3;
  result.year = v2;
  result.month = BYTE4(v2);
  result.day = BYTE5(v2);
  result.hour = BYTE6(v2);
  result.minute = HIBYTE(v2);
  return result;
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void operator new()
{
    ;
  }
}