BOOL sub_23EBDCF40(const __CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "Boolean _BaseStationIs80211g(CFDictionaryRef)", 800, "\n", a5, a6, a7, a8, v12);
  }

  if (!a1)
  {
    return 0;
  }

  v9 = sub_23EB6A2C0(a1, a2, a3, a4, a5, a6, a7, a8);
  return v9 == 3 || v9 == 102;
}

BOOL sub_23EBDCFD0(const __CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "Boolean _BaseStationIsTooNewToSetUp(CFDictionaryRef)", 800, "\n", a5, a6, a7, a8, v11);
  }

  if (!a1)
  {
    return 0;
  }

  v9 = sub_23EB6A2C0(a1, a2, a3, a4, a5, a6, a7, a8);
  return sub_23EC136C0(v9) == 0;
}

uint64_t sub_23EBDD05C(CFArrayRef theArray, __CFArray **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus _CopyAllUnconfiguredBaseStations(CFArrayRef, CFDictionaryRef *)", 800, "\n", a5, a6, a7, a8, v38);
  }

  v10 = 4294960591;
  if (theArray && a2)
  {
    Count = CFArrayGetCount(theArray);
    if (Count)
    {
      v12 = Count;
      v13 = *MEMORY[0x277CBECE8];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v15 = Mutable;
        v39 = 0;
        if (v12 >= 1)
        {
          v16 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, v16);
            if (!ValueAtIndex)
            {
LABEL_21:
              v10 = 4294960568;
              goto LABEL_24;
            }

            v25 = ValueAtIndex;
            if (sub_23EB6B0C8(ValueAtIndex, v18, v19, v20, v21, v22, v23, v24))
            {
              sub_23EB6FF14(v25, &v39, "%ks", v26, v27, v28, v29, v30, "name");
              if (v31)
              {
                break;
              }

              if (!v39)
              {
                goto LABEL_21;
              }

              v31 = sub_23EB6FDFC(v13, v15, "%kO=%O", v32, v33, v34, v35, v36, v39);
              if (v31)
              {
                break;
              }
            }

            if (v12 == ++v16)
            {
              goto LABEL_17;
            }
          }

          v10 = v31;
          goto LABEL_24;
        }

LABEL_17:
        if (!CFDictionaryGetCount(v15))
        {
          v10 = 4294960569;
LABEL_24:
          CFRelease(v15);
          return v10;
        }

        v10 = 0;
        *a2 = v15;
      }

      else
      {
        return 4294960568;
      }
    }

    else
    {
      return 4294960569;
    }
  }

  return v10;
}

uint64_t sub_23EBDD20C(CFArrayRef theArray, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "CFIndex _ConfiguredBaseStationCount(CFArrayRef)", 800, "\n", a5, a6, a7, a8, v22);
  }

  if (!theArray)
  {
    return 0;
  }

  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    return 0;
  }

  v10 = Count;
  v11 = 0;
  for (i = 0; i != v10; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
    if (!ValueAtIndex)
    {
      break;
    }

    if (!sub_23EB6B0C8(ValueAtIndex, v14, v15, v16, v17, v18, v19, v20))
    {
      ++v11;
    }
  }

  return v11;
}

uint64_t sub_23EBDD2D4(const __CFString *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "Boolean _BaseStationHasPreviousConfig(CFDictionaryRef, CFDictionaryRef)", 800, "\n", a5, a6, a7, a8, v26);
  }

  v10 = 0;
  v27 = 0;
  if (a1 && a2)
  {
    v29 = 0;
    v30 = 0;
    v28 = 0;
    v16 = sub_23EB71A18(a2, &v27);
    v10 = 0;
    v17 = v27;
    if (!v16 && v27)
    {
      v29 = 0;
      sub_23EB6FF14(a1, &v30, "%ks", v11, v12, v13, v14, v15, "raMA");
      v10 = 0;
      if (!v18)
      {
        if (v30)
        {
          if (!CFDictionaryContainsKey(a1, @"raM2") || (sub_23EB6FF14(a1, &v29, "%ks", v19, v20, v21, v22, v23, "raM2"), v10 = 0, !v24) && v29)
          {
            while (sub_23EB71AC0(v27, &v28, 0))
            {
              if (sub_23EBAFDF4(v30, v28) & 1) != 0 || v29 && (sub_23EBAFDF4(v29, v28))
              {
                v10 = 1;
                goto LABEL_20;
              }
            }

            v10 = 0;
          }
        }
      }

LABEL_20:
      v17 = v27;
    }

    if (v17)
    {
      sub_23EB71AB4(v17);
    }
  }

  return v10;
}

uint64_t sub_23EBDD458(const __CFString *a1, const void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus _GetConfigFilePathForBaseStation(CFDictionaryRef, CFDictionaryRef, CFStringRef *)", 800, "\n", a5, a6, a7, a8, v31);
  }

  v37 = 0;
  v35 = 0;
  v36 = 0;
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v11 = 4294960591;
  if (!a1 || !a2 || !a3)
  {
    goto LABEL_10;
  }

  v12 = sub_23EB71A18(a2, &v33);
  if (v12)
  {
    goto LABEL_9;
  }

  if (!v33)
  {
    return 4294960568;
  }

  v36 = 0;
  v32 = 0;
  sub_23EB6FF14(a1, &v37, "%ks", v13, v14, v15, v16, v17, "raMA");
  v11 = v19;
  if (!v19)
  {
    if (v37)
    {
      if (!CFDictionaryContainsKey(a1, @"raM2") || (sub_23EB6FF14(a1, &v36, "%ks", v20, v21, v22, v23, v24, "raM2"), v11 = v25, !v25) && v36)
      {
        if (sub_23EB71AC0(v33, &v35, &v34))
        {
          while ((sub_23EBAFDF4(v37, v35) & 1) == 0 && (!v36 || !sub_23EBAFDF4(v36, v35)))
          {
            v11 = 4294960569;
            if (!sub_23EB71AC0(v33, &v35, &v34))
            {
              goto LABEL_10;
            }
          }

          sub_23EB6FF14(v34, &v32, "%ks", v26, v27, v28, v29, v30, "path");
          if (v12)
          {
LABEL_9:
            v11 = v12;
            goto LABEL_10;
          }

          if (v32)
          {
            v11 = 0;
            *a3 = v32;
          }

          else
          {
            v11 = 4294960568;
          }
        }

        else
        {
          v11 = 4294960569;
        }
      }
    }
  }

LABEL_10:
  if (v33)
  {
    sub_23EB71AB4(v33);
  }

  return v11;
}

BOOL sub_23EBDD648(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "Boolean _NetworkIs80211g(CFDictionaryRef)", 800, "\n", a5, a6, a7, a8, v12);
  }

  if (!a1)
  {
    return 0;
  }

  v9 = sub_23EC0FA70(a1, a2);
  return v9 == 3 || v9 == 102;
}

uint64_t sub_23EBDD6D8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "Boolean _NetworkIsTooNewToSetUp(CFDictionaryRef)", 800, "\n", a5, a6, a7, a8, v10);
  }

  if (!a1)
  {
    return 0;
  }

  result = sub_23EC0FA70(a1, a2);
  if (result)
  {
    return sub_23EC136C0(result) == 0;
  }

  return result;
}

uint64_t sub_23EBDD768(CFArrayRef theArray, __CFArray **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus _CopyAllUnconfiguredNetworks(CFArrayRef, CFDictionaryRef *)", 800, "\n", a5, a6, a7, a8, v32);
  }

  if (!a2)
  {
    return 4294960591;
  }

  if (!theArray)
  {
    return 4294960569;
  }

  Count = CFArrayGetCount(theArray);
  if (!Count)
  {
    return 4294960569;
  }

  v11 = Count;
  v12 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    return 4294960568;
  }

  v14 = Mutable;
  v33 = 0;
  if (v11 >= 1)
  {
    v15 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v15);
      if (!ValueAtIndex)
      {
LABEL_22:
        v30 = 4294960568;
        goto LABEL_25;
      }

      v18 = ValueAtIndex;
      if (sub_23EC0F9F4(ValueAtIndex, v17))
      {
        sub_23EB6FF14(v18, &v33, "%kO", v19, v20, v21, v22, v23, @"SSID_STR");
        if (v24)
        {
          break;
        }

        if (!v33)
        {
          goto LABEL_22;
        }

        v24 = sub_23EB6FDFC(v12, v14, "%kO=%O", v25, v26, v27, v28, v29, v33);
        if (v24)
        {
          break;
        }
      }

      if (v11 == ++v15)
      {
        goto LABEL_17;
      }
    }

    v30 = v24;
    goto LABEL_25;
  }

LABEL_17:
  if (!CFDictionaryGetCount(v14))
  {
    v30 = 4294960569;
LABEL_25:
    CFRelease(v14);
    return v30;
  }

  v30 = 0;
  *a2 = v14;
  return v30;
}

uint64_t sub_23EBDD91C(const void *a1, __CFDictionary **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus _CopyNetworksFilter80211g(CFDictionaryRef, CFDictionaryRef *)", 800, "\n", a5, a6, a7, a8, v21);
  }

  v24 = 0;
  v10 = 4294960591;
  if (a1 && a2)
  {
    v22 = 0;
    v23 = 0;
    v10 = sub_23EB71A18(a1, &v24);
    if (!v10)
    {
      if (!v24)
      {
        return 4294960568;
      }

      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v12 = Mutable;
        while (sub_23EB71AC0(v24, &v23, &v22))
        {
          if (!sub_23EBDD648(v22, v13, v14, v15, v16, v17, v18, v19))
          {
            CFDictionarySetValue(v12, v23, v22);
          }
        }

        if (CFDictionaryGetCount(v12))
        {
          v10 = 0;
          *a2 = v12;
        }

        else
        {
          CFRelease(v12);
          v10 = 4294960569;
        }
      }

      else
      {
        v10 = 4294960568;
      }
    }

    if (v24)
    {
      sub_23EB71AB4(v24);
    }
  }

  return v10;
}

uint64_t sub_23EBDDA70(CFArrayRef theArray, __CFArray **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus _CopyNetworksFilterDuplicateNames(CFArrayRef, CFArrayRef *)", 800, "\n", a5, a6, a7, a8, v28);
  }

  if (!a2)
  {
    return 4294960591;
  }

  if (!theArray)
  {
    return 4294960569;
  }

  Count = CFArrayGetCount(theArray);
  if (!Count)
  {
    return 4294960569;
  }

  v11 = Count;
  v12 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    return 4294960568;
  }

  v14 = Mutable;
  if (v11 >= 1)
  {
    v15 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v15);
      if (!ValueAtIndex)
      {
        v26 = 4294960568;
        goto LABEL_25;
      }

      v18 = ValueAtIndex;
      v19 = sub_23EC0F94C(ValueAtIndex, v17);
      if (v19)
      {
        if (sub_23EB6B6FC(v19, 0, v14) == -1)
        {
          v25 = sub_23EB6FDFC(v12, v14, "%O", v20, v21, v22, v23, v24, v18);
          if (v25)
          {
            break;
          }
        }
      }

      if (v11 == ++v15)
      {
        goto LABEL_16;
      }
    }

    v26 = v25;
    goto LABEL_25;
  }

LABEL_16:
  if (!CFArrayGetCount(v14))
  {
    v26 = 4294960569;
LABEL_25:
    CFRelease(v14);
    return v26;
  }

  v26 = 0;
  *a2 = v14;
  return v26;
}

uint64_t sub_23EBDDBF8(CFArrayRef theArray, const __CFDictionary *a2, CFTypeRef *a3)
{
  cf = 0;
  if (!a2)
  {
    return 4294960591;
  }

  if (theArray)
  {
    if (CFArrayGetCount(theArray))
    {
      if (sub_23EB6A1FC(a2) - 3 <= 1 && !sub_23EB6A264(a2))
      {
        sub_23EC0FA80(a2, v6);
        sub_23EC0FAA4(a2, v7);
      }

      v9 = sub_23EC0FAEC(theArray);
      if (v9)
      {
        v10 = v9;
        if (CFArrayGetCount(v9))
        {
          v8 = sub_23EBDDA70(v10, &cf, v11, v12, v13, v14, v15, v16);
          CFRelease(v10);
          if (!v8)
          {
            v17 = cf;
            if (!cf)
            {
              return 4294960568;
            }

            v8 = 0;
            if (a3)
            {
              *a3 = cf;
              return v8;
            }

LABEL_18:
            CFRelease(v17);
            return v8;
          }

LABEL_17:
          v17 = cf;
          if (!cf)
          {
            return v8;
          }

          goto LABEL_18;
        }

        CFRelease(v10);
      }
    }

    v8 = 4294960569;
    goto LABEL_17;
  }

  return 4294960569;
}

BOOL sub_23EBDDD20(const __CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "Boolean _HostNotUsingWireless(CFDictionaryRef)", 800, "\n", a5, a6, a7, a8, v10);
  }

  v11 = 0;
  sub_23EB6FF14(a1, &v11, "%ks:BOOL", a4, a5, a6, a7, a8, "BSAutoGuessContext_HostNotUsingWireless");
  return v11 != 0;
}

BOOL sub_23EBDDDC4(const __CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "Boolean _HostHasPreferredNetworkSupport(CFDictionaryRef)", 800, "\n", a5, a6, a7, a8, v10);
  }

  v11 = 0;
  sub_23EB6FF14(a1, &v11, "%ks:BOOL", a4, a5, a6, a7, a8, "BSAutoGuessContext_HostHasPreferredNetworkSupport");
  return v11 != 0;
}

uint64_t sub_23EBDDE68(CFDictionaryRef theDict, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus _GetTheOnlyDictionaryKey(CFDictionaryRef, CFStringRef *)", 800, "\n", a5, a6, a7, a8, v12);
  }

  v13 = 0;
  v10 = 4294960591;
  if (theDict && a2)
  {
    v12 = 0;
    if (CFDictionaryGetCount(theDict) == 1)
    {
      v10 = sub_23EB71A18(theDict, &v13);
      if (!v10)
      {
        if (!v13)
        {
          return 4294960568;
        }

        sub_23EB71AC0(v13, &v12, 0);
        if (v12)
        {
          v10 = 0;
          *a2 = v12;
        }

        else
        {
          v10 = 4294960569;
        }
      }
    }

    else
    {
      v10 = 4294960586;
    }

    if (v13)
    {
      sub_23EB71AB4(v13);
    }
  }

  return v10;
}

uint64_t sub_23EBDDF6C(CFDictionaryRef theDict, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus _GetTheOnlyDictionaryValue(CFDictionaryRef, CFTypeRef *)", 800, "\n", a5, a6, a7, a8, v12);
  }

  v13 = 0;
  v10 = 4294960591;
  if (theDict && a2)
  {
    v12 = 0;
    if (CFDictionaryGetCount(theDict) == 1)
    {
      v10 = sub_23EB71A18(theDict, &v13);
      if (!v10)
      {
        if (!v13)
        {
          return 4294960568;
        }

        sub_23EB71AC0(v13, 0, &v12);
        if (v12)
        {
          v10 = 0;
          *a2 = v12;
        }

        else
        {
          v10 = 4294960569;
        }
      }
    }

    else
    {
      v10 = 4294960586;
    }

    if (v13)
    {
      sub_23EB71AB4(v13);
    }
  }

  return v10;
}

void sub_23EBDE070(const __CFString *a1, const __CFArray *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus _UpdateBrowsedBaseStationsWithBrowseInfo(CFDictionaryRef, CFMutableArrayRef)", 800, "\n", a5, a6, a7, a8, v26);
  }

  if (a1)
  {
    if (a2)
    {
      v27 = 0;
      v28 = 0;
      sub_23EB6FF14(a1, &v28, "%ks", a4, a5, a6, a7, a8, "raMA");
      if (!v10)
      {
        if (v28)
        {
          Count = CFArrayGetCount(a2);
          if (Count < 1)
          {
LABEL_19:
            if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
            {
              sub_23EB75374(&dword_27E382C08, "OSStatus _UpdateBrowsedBaseStationsWithBrowseInfo(CFDictionaryRef, CFMutableArrayRef)", 800, "tempMACAddress: %@ was not found -- appending", v13, v14, v15, v16, v28);
            }

            CFArrayAppendValue(a2, a1);
          }

          else
          {
            v17 = Count;
            v18 = 0;
            while (1)
            {
              sub_23EB6FF14(a2, &v27, "[*].%ks", v12, v13, v14, v15, v16, v18);
              if (v23)
              {
                break;
              }

              v24 = v27;
              if (!v27)
              {
                break;
              }

              if (dword_27E382C08 <= 800)
              {
                if (dword_27E382C08 != -1 || (v25 = sub_23EB74AC8(&dword_27E382C08, 0x320u), v24 = v27, v25))
                {
                  sub_23EB75374(&dword_27E382C08, "OSStatus _UpdateBrowsedBaseStationsWithBrowseInfo(CFDictionaryRef, CFMutableArrayRef)", 800, "Comparing nextMACAddress: %@ and tempMACAddress: %@", v19, v20, v21, v22, v24);
                  v24 = v27;
                }
              }

              if (sub_23EBAFDF4(v24, v28))
              {
                if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
                {
                  sub_23EB75374(&dword_27E382C08, "OSStatus _UpdateBrowsedBaseStationsWithBrowseInfo(CFDictionaryRef, CFMutableArrayRef)", 800, "tempMACAddress: %@ was found", v13, v14, v15, v16, v28);
                }

                return;
              }

              if (v17 == ++v18)
              {
                goto LABEL_19;
              }
            }
          }
        }
      }
    }
  }
}

void sub_23EBDE2BC(CFArrayRef theArray, const __CFArray *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus _UpdateBrowsedBaseStationsWithRecords(CFArrayRef, CFMutableArrayRef)", 800, "\n", a5, a6, a7, a8, v26);
  }

  if (theArray)
  {
    if (a2)
    {
      Count = CFArrayGetCount(theArray);
      if (Count >= 1)
      {
        v16 = Count;
        v17 = 0;
        v27 = 0;
        do
        {
          sub_23EB6FF14(theArray, &v27, "[*]", v11, v12, v13, v14, v15, v17);
          if (v24)
          {
            break;
          }

          if (!v27)
          {
            break;
          }

          sub_23EBDE070(v27, a2, v18, v19, v20, v21, v22, v23);
          if (v25)
          {
            break;
          }

          ++v17;
        }

        while (v16 != v17);
      }
    }
  }
}

void sub_23EBDE3B8(__CFArray *a1, const __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (a2)
    {
      *v16 = 0;
      sub_23EB6FF14(a2, v16, "%kO", a4, a5, a6, a7, a8, @"SSID_STR");
      if (!v10)
      {
        if (*v16)
        {
          if (sub_23EB6B6FC(*v16, 0, a1) == -1)
          {
            sub_23EB6FDFC(*MEMORY[0x277CBECE8], a1, "%O", v11, v12, v13, v14, v15, a2);
          }
        }
      }
    }
  }
}

uint64_t sub_23EBDE464(const __CFString *a1, const __CFArray *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus _GetLocalBrowseInfoForRemoteBase(CFDictionaryRef, CFArrayRef, CFDictionaryRef *)", 800, "\n", a5, a6, a7, a8, v16);
  }

  v11 = 4294960591;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v17 = 0;
        sub_23EB6FF14(a1, &v17, "%ks.%ks", a4, a5, a6, a7, a8, "txt");
        v11 = v12;
        if (!v12)
        {
          if (v17)
          {
            v14 = sub_23EB6B3A8(a2, v17);
            v11 = 4294960569;
            if (v14 != -1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(a2, v14);
              *a3 = ValueAtIndex;
              if (ValueAtIndex)
              {
                return 0;
              }

              else
              {
                return 4294960569;
              }
            }
          }

          else
          {
            return 4294960568;
          }
        }
      }
    }
  }

  return v11;
}

uint64_t sub_23EBDE570(CFDictionaryRef theDict, CFTypeRef *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus _CreateBrowseInfoForRemoteBase(CFDictionaryRef, CFDictionaryRef *)", 800, "\n", a5, a6, a7, a8, v16);
  }

  result = 4294960591;
  if (theDict && a2)
  {
    if (CFDictionaryGetValue(theDict, @"txt"))
    {
      result = sub_23EB6F348(*MEMORY[0x277CBECE8], a2, "{%##O%##O}", v11, v12, v13, v14, v15, theDict);
      if (!result)
      {
        if (*a2)
        {
          return 0;
        }

        else
        {
          return 4294960568;
        }
      }
    }

    else
    {
      return 4294960591;
    }
  }

  return result;
}

uint64_t sub_23EBDE648(const void *a1, __CFArray **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus _RemoteBrowseResultsToBaseStationArray(CFDictionaryRef, CFArrayRef *)", 800, "\n", a5, a6, a7, a8, v27);
  }

  v30 = 0;
  v10 = 4294960591;
  if (a1 && a2)
  {
    cf = 0;
    theDict = 0;
    v11 = *MEMORY[0x277CBECE8];
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    if (Mutable)
    {
      v13 = Mutable;
      v14 = sub_23EB71A18(a1, &v30);
      if (v14)
      {
LABEL_9:
        v10 = v14;
      }

      else
      {
        if (v30)
        {
          while (sub_23EB71AC0(v30, 0, &theDict))
          {
            v14 = sub_23EBDE570(theDict, &cf, v15, v16, v17, v18, v19, v20);
            if (v14)
            {
              goto LABEL_9;
            }

            if (!cf)
            {
              goto LABEL_19;
            }

            v10 = sub_23EB6FDFC(v11, v13, "%O", v21, v22, v23, v24, v25, cf);
            if (cf)
            {
              CFRelease(cf);
              cf = 0;
            }

            if (v10)
            {
              goto LABEL_20;
            }
          }

          v10 = 0;
          *a2 = v13;
          goto LABEL_21;
        }

LABEL_19:
        v10 = 4294960568;
      }

LABEL_20:
      CFRelease(v13);
    }

    else
    {
      v10 = 4294960568;
    }

LABEL_21:
    if (v30)
    {
      sub_23EB71AB4(v30);
    }
  }

  return v10;
}

uint64_t sub_23EBDE7C0(uint64_t a1, const __CFDictionary *a2, uint64_t a3, _BYTE *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v53 = 0;
  cf = 0;
  if (a4)
  {
    *a4 = 0;
  }

  v51 = 0;
  v52 = 0;
  sub_23EBDCB98("_CopyAllNeededSettingsFromBaseStation for base:\n", a2, a3, a4, a5, a6, a7, a8);
  v13 = 4294960591;
  if (!a1 || !a2 || !a5)
  {
    goto LABEL_18;
  }

  if (sub_23EB6A344(a2))
  {
    goto LABEL_7;
  }

  v21 = sub_23EB6B0C8(a2, v14, v15, v16, v17, v18, v19, v20);
  if (!(sub_23EBDCF40(a2, v22, v23, v24, v25, v26, v27, v28) | v21))
  {
    v29 = sub_23EBAF4FC("AMarAMalAMawiFiWANarSDarVCawforPgBhdnEhdRLysPIawPIalVStnLCAtFAnslFesRSarFbsuSYHPWPyslFystSysgIys", &cf);
    if (v29)
    {
      goto LABEL_17;
    }

    if (!cf)
    {
      v13 = 4294960568;
      goto LABEL_20;
    }
  }

  v29 = sub_23EBB0E1C(&v53);
  if (v29)
  {
    goto LABEL_17;
  }

  if (!v53)
  {
    goto LABEL_40;
  }

  v37 = sub_23EB6AE14(a2, v30, v31, v32, v33, v34, v35, v36);
  if (!v37)
  {
LABEL_7:
    v13 = 4294960569;
    goto LABEL_18;
  }

  if (!v21)
  {
    v44 = v37;
    if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
    {
      sub_23EB75374(&dword_27E382C08, "OSStatus _CopyAllNeededSettingsFromBaseStation(AutoGuessContextRef, CFDictionaryRef, Boolean, Boolean *, CFDictionaryRef *)", 800, "Calling back for password promptflag: %d\n", v38, v39, v40, v41, a3);
    }

    v45 = sub_23EBECA80(*(a1 + 48), @"keychainBaseStationType", a2, &v52, v38, v39, v40, v41);
    v13 = v45;
    if (a3 && v45 == -6727)
    {
      v13 = sub_23EBECE2C(*(a1 + 48), @"keychainBaseStationType", v44, &v52, v46, v47, v48, v49);
    }

    if (v13)
    {
      goto LABEL_18;
    }

    if (!v52)
    {
      goto LABEL_40;
    }

    sub_23EBB3DBC(v53, 1651721296, v52);
    if (v52)
    {
      CFRelease(v52);
      v52 = 0;
    }
  }

  v42 = sub_23EBB14AC(v53, cf, 1);
  if (a4 && v42 == -6768)
  {
    *a4 = 1;
    goto LABEL_7;
  }

  if (v42)
  {
    goto LABEL_7;
  }

  v29 = sub_23EBB4234(v53, &v51);
  if (v29)
  {
LABEL_17:
    v13 = v29;
    goto LABEL_18;
  }

  if (v51)
  {
    v13 = 0;
    *a5 = v51;
    goto LABEL_18;
  }

LABEL_40:
  v13 = 4294960568;
LABEL_18:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

LABEL_20:
  if (v53)
  {
    sub_23EBB0D6C(v53);
  }

  return v13;
}

uint64_t sub_23EBDEA14(uint64_t a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  cf = 0;
  v14 = 0;
  if (a1)
  {
    if (a2)
    {
      sub_23EBDCB98("_IsSecurityErrorWithBase for base:\n", a2, a3, a4, a5, a6, a7, a8);
      sub_23EBDE7C0(a1, a2, 0, &v14, &cf, v10, v11, v12);
      if (cf)
      {
        CFRelease(cf);
      }
    }
  }

  return v14;
}

uint64_t sub_23EBDEA88(uint64_t a1, const __CFString *a2, uint64_t a3, CFTypeRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  cf = 0;
  if (!a1)
  {
    return 4294960591;
  }

  v58 = 0;
  v59 = 0;
  v9 = 4294960591;
  if (!a4 || !a2 || !*(a1 + 16))
  {
    goto LABEL_7;
  }

  sub_23EBDCB98("Get cached settings for base station:\n", a2, a3, a4, a5, a6, a7, a8);
  sub_23EB6FF14(a2, &v59, "%ks", v13, v14, v15, v16, v17, "raMA");
  if (v18)
  {
LABEL_6:
    v9 = v18;
    goto LABEL_7;
  }

  if (!v59)
  {
    goto LABEL_35;
  }

  v58 = 0;
  if (!CFDictionaryContainsKey(a2, @"raM2"))
  {
    goto LABEL_20;
  }

  sub_23EB6FF14(a2, &v58, "%ks", v20, v21, v22, v23, v24, "raM2");
  if (v18)
  {
    goto LABEL_6;
  }

  v25 = v58;
  if (!v58)
  {
LABEL_35:
    v9 = 4294960568;
    goto LABEL_7;
  }

  if (dword_27E382C08 <= 800)
  {
    if (dword_27E382C08 != -1)
    {
LABEL_19:
      sub_23EB75374(&dword_27E382C08, "OSStatus _CopyCachedSettingsForBaseStation(AutoGuessContextRef, CFDictionaryRef, Boolean, CFDictionaryRef *)", 800, "inBaseStation has Radio MAC Address 2: %@", v21, v22, v23, v24, v25);
      goto LABEL_20;
    }

    if (sub_23EB74AC8(&dword_27E382C08, 0x320u))
    {
      v25 = v58;
      goto LABEL_19;
    }
  }

LABEL_20:
  sub_23EB6FF14(*(a1 + 16), &cf, "%kO:obj", v20, v21, v22, v23, v24, v59);
  v9 = v31;
  if (v31 == -6727 && v58)
  {
    sub_23EB6FF14(*(a1 + 16), &cf, "%kO:obj", v26, v27, v28, v29, v30, v58);
    v9 = v32;
  }

  if (!v9)
  {
LABEL_42:
    if (cf)
    {
      if (CFDictionaryGetCount(cf))
      {
        v9 = 0;
        *a4 = cf;
        return v9;
      }

      v9 = 4294960569;
      goto LABEL_7;
    }

    return 4294960568;
  }

  if (v9 == -6727)
  {
    v33 = sub_23EBDE7C0(a1, a2, a3, 0, &cf, v28, v29, v30);
    if (v33 == -6727)
    {
      v48 = *MEMORY[0x277CBECE8];
      cf = CFDictionaryCreate(*MEMORY[0x277CBECE8], 0, 0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!cf)
      {
        return 4294960568;
      }

      v18 = sub_23EB6FDFC(v48, *(a1 + 16), "%kO=%O", v49, v50, v51, v52, v53, v59);
      if (v18)
      {
        goto LABEL_6;
      }

      if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
      {
        sub_23EB75374(&dword_27E382C08, "OSStatus _CopyCachedSettingsForBaseStation(AutoGuessContextRef, CFDictionaryRef, Boolean, CFDictionaryRef *)", 800, "Added BLANK settings for %@ to cache.\n", v54, v55, v56, v57, v59);
      }

      goto LABEL_42;
    }

    v9 = v33;
    if (!v33)
    {
      if (!cf)
      {
        return 4294960568;
      }

      sub_23EB6FF14(cf, &v59, "%kC", v34, v35, v36, v37, v38, 1918979393);
      if (v18)
      {
        goto LABEL_6;
      }

      if (v59)
      {
        v18 = sub_23EB6FDFC(*MEMORY[0x277CBECE8], *(a1 + 16), "%kO=%O", v39, v40, v41, v42, v43, v59);
        if (v18)
        {
          goto LABEL_6;
        }

        if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
        {
          sub_23EB75374(&dword_27E382C08, "OSStatus _CopyCachedSettingsForBaseStation(AutoGuessContextRef, CFDictionaryRef, Boolean, CFDictionaryRef *)", 800, "Added settings for %@ to cache.\n", v44, v45, v46, v47, v59);
        }

        goto LABEL_42;
      }

      goto LABEL_35;
    }
  }

LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

void sub_23EBDEDF0(const __CFString *a1, int *a2, CFTypeRef *a3, BOOL *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus _NetworkInfoFromSettingsDictionary(CFDictionaryRef, BSNetworkMode *, CFStringRef *, Boolean *)", 800, "\n", a5, a6, a7, a8, v16);
  }

  if (a1)
  {
    if (a2)
    {
      v17 = 0;
      sub_23EB6FF14(a1, &v17, "%kC", a4, a5, a6, a7, a8, 1466517097);
      if (!v15)
      {
        if (v17)
        {
          sub_23EBEF00C(v17, a2, a3, a4, 0, v12, v13, v14);
        }
      }
    }
  }
}

uint64_t sub_23EBDEECC(uint64_t a1, int *a2, CFTypeRef *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  number = 0;
  cf = 0;
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus _NetworkAndRouterInfoFromInstance(BSRef, BSNetworkMode *, CFStringRef *, BSRouterMode *)", 800, "\n", a5, a6, a7, a8, number);
  }

  v12 = 4294960591;
  if (a1 && a2)
  {
    v13 = sub_23EBB3F30(a1, 1466517097, &cf);
    if (v13)
    {
      goto LABEL_13;
    }

    if (!a4)
    {
LABEL_12:
      sub_23EBEF00C(cf, a2, a3, 0, 0, v14, v15, v16);
      goto LABEL_13;
    }

    v13 = sub_23EBB3F30(a1, 1651724877, &number);
    if (v13)
    {
LABEL_13:
      v12 = v13;
      goto LABEL_14;
    }

    if (number)
    {
      if (CFNumberGetValue(number, kCFNumberSInt32Type, a4))
      {
        goto LABEL_12;
      }

      v12 = 4294960553;
    }

    else
    {
      v12 = 4294960568;
    }
  }

LABEL_14:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (number)
  {
    CFRelease(number);
  }

  return v12;
}

uint64_t sub_23EBDF004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "Boolean _ConflictingDHCPRange(BSRef)", 800, "\n", a5, a6, a7, a8, v12);
  }

  cf = 0;
  if (a1 && !sub_23EBB4DE4(a1, 2002864464) && sub_23EBAE7A0(a1, 1684554343, &cf))
  {
    v9 = sub_23EBAE7A0(a1, 1684555118, &cf) ^ 1;
  }

  else
  {
    v9 = 1;
  }

  v10 = cf;
  if (cf && dword_27E382C08 <= 800)
  {
    if (dword_27E382C08 == -1)
    {
      if (!sub_23EB74AC8(&dword_27E382C08, 0x320u))
      {
LABEL_16:
        v10 = cf;
        goto LABEL_17;
      }

      v10 = cf;
    }

    sub_23EB75374(&dword_27E382C08, "Boolean _ConflictingDHCPRange(BSRef)", 800, "errorString: %@\n", a5, a6, a7, a8, v10);
    goto LABEL_16;
  }

LABEL_17:
  if (v10)
  {
    CFRelease(v10);
  }

  return v9;
}

uint64_t sub_23EBDF140(uint64_t a1, const __CFString *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  cf = 0;
  theData = 0;
  v8 = 4294960591;
  if (a1 && a2 && a4)
  {
    v11 = a3;
    sub_23EBDCB98("_BaseStationCountOfPortsInUse for base station:\n", a2, a3, a4, a5, a6, a7, a8);
    v17 = sub_23EBDEA88(a1, a2, 0, &cf, v13, v14, v15, v16);
    if (v17)
    {
      goto LABEL_5;
    }

    if (!cf)
    {
      return 4294960568;
    }

    sub_23EB6FF14(cf, &theData, "%kC", v18, v19, v20, v21, v22, 1346918739);
    if (v17)
    {
LABEL_5:
      v8 = v17;
    }

    else if (theData && (BytePtr = CFDataGetBytePtr(theData)) != 0)
    {
      v25 = BytePtr;
      v26 = v11 != 0;
      Length = CFDataGetLength(theData);
      v32 = 0;
      v33 = (Length >> 2) - v26;
      if (Length >> 2 > v26)
      {
        v34 = &v25[4 * v26];
        do
        {
          v35 = *v34;
          v34 += 4;
          if (v35)
          {
            ++v32;
          }

          --v33;
        }

        while (v33);
      }

      if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
      {
        sub_23EB75374(&dword_27E382C08, "OSStatus _BaseStationCountOfPortsInUse(AutoGuessContextRef, CFDictionaryRef, eWhichPorts, CFIndex *)", 800, "portsInUseCountIs: %d", v28, v29, v30, v31, v32);
      }

      v8 = 0;
      *a4 = v32;
    }

    else
    {
      v8 = 4294960568;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t sub_23EBDF2B4(uint64_t a1, const __CFString *a2, int a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus _BaseStationHasFeature(AutoGuessContextRef, CFDictionaryRef, ACPFeatureCode, Boolean *)", 800, "\n", a5, a6, a7, a8, v20);
  }

  theData = 0;
  cf = 0;
  v12 = 4294960591;
  if (a1 && a2 && a4)
  {
    v13 = sub_23EBDEA88(a1, a2, 0, &cf, a5, a6, a7, a8);
    if (v13)
    {
      goto LABEL_9;
    }

    if (!cf)
    {
      return 4294960568;
    }

    sub_23EB6FF14(cf, &theData, "%kC", v14, v15, v16, v17, v18, 1717920116);
    if (v13)
    {
LABEL_9:
      v12 = v13;
    }

    else if (theData)
    {
      v12 = 0;
      *a4 = sub_23EBEF2E4(theData, a3);
    }

    else
    {
      v12 = 4294960568;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

uint64_t sub_23EBDF3D8(uint64_t a1, CFDictionaryRef theDict, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "Boolean _BaseStationIsSimultaneousDualBand(AutoGuessContextRef, CFDictionaryRef)", 800, "\n", a5, a6, a7, a8, v11);
  }

  result = 0;
  if (a1 && theDict)
  {
    result = CFDictionaryContainsKey(theDict, @"raMA");
    if (result)
    {
      return CFDictionaryContainsKey(theDict, @"raM2") != 0;
    }
  }

  return result;
}

uint64_t sub_23EBDF480(uint64_t a1, const __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "Boolean _BaseStationIsAudioPortInUse(AutoGuessContextRef, CFDictionaryRef)", 800, "\n", a5, a6, a7, a8, v13);
  }

  result = 0;
  if (a1 && a2)
  {
    v14 = 0;
    sub_23EB6FF14(a2, &v14, "%ks.%kC:int", a4, a5, a6, a7, a8, "txt");
    v12 = v11;
    result = 0;
    if (!v12)
    {
      return v14 >> 7;
    }
  }

  return result;
}

uint64_t sub_23EBDF544(uint64_t a1, const __CFString *a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  theData = 0;
  v63 = 0;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v64 = 0;
  v65 = 0;
  v14 = sub_23EBDEA88(a1, a2, 0, &v65, a5, a6, a7, a8);
  v15 = v65;
  v16 = 1;
  if (!v14 && v65)
  {
    v17 = sub_23EBDEA88(a1, a3, 0, &v64, v10, v11, v12, v13);
    v23 = 1;
    if (v17)
    {
      goto LABEL_9;
    }

    if (!v64)
    {
      goto LABEL_9;
    }

    sub_23EB6FF14(v65, &theData, "%kC", v18, v19, v20, v21, v22, 1717920116);
    v23 = 1;
    if (v29 || !theData)
    {
      goto LABEL_9;
    }

    sub_23EB6FF14(v64, &v63, "%kC", v24, v25, v26, v27, v28, 1466517097);
    if (!v35)
    {
      if (v63)
      {
        sub_23EB6FF14(v63, &v60, "%ks", v30, v31, v32, v33, v34, "radios");
        if (!v42)
        {
          if (v60)
          {
            sub_23EB6FF14(v60, &v61, "[*].%ks:int", v37, v38, v39, v40, v41, 0);
            if (!v43)
            {
              if (v61 == 1 && !sub_23EBEF2E4(theData, 1112757313))
              {
                goto LABEL_27;
              }

              v44 = sub_23EBEF2E4(theData, 1852787795);
              v45 = sub_23EBEF2E4(theData, 1852788045);
              if (v44 | v45)
              {
                v51 = v45;
                sub_23EB6FF14(v60, &v59, "[*].%ks:int", v46, v47, v48, v49, v50, 0);
                if (!v57)
                {
                  if ((v59 - 1) < 3)
                  {
                    v23 = v44 == 0;
                    goto LABEL_9;
                  }

                  if (v59 == 4)
                  {
                    if (v51)
                    {
LABEL_27:
                      v23 = 0;
                      goto LABEL_9;
                    }

                    if (v44)
                    {
                      v58 = 0;
                      sub_23EB6FF14(v60, &v58, "[*].%ks:BOOL", v52, v53, v54, v55, v56, 0);
                      v23 = v58 ^ 1;
                      goto LABEL_9;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v23 = 1;
LABEL_9:
    v16 = v23 & 1;
    v15 = v65;
  }

  if (v15)
  {
    CFRelease(v15);
    v65 = 0;
  }

  if (v64)
  {
    CFRelease(v64);
  }

  return v16;
}

uint64_t sub_23EBDF780(uint64_t a1, const __CFString *a2, const __CFArray *a3, const __CFString **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "Boolean _BaseStationIsInSTAMode(AutoGuessContextRef, CFDictionaryRef, CFArrayRef, CFStringRef *)", 800, "\n", a5, a6, a7, a8, v52);
  }

  result = 0;
  v55 = 0;
  if (!a1 || !a2 || !a4)
  {
    return result;
  }

  v58 = 0;
  cf = 0;
  v56 = 0;
  v13 = sub_23EBDEA88(a1, a2, 0, &cf, a5, a6, a7, a8);
  if (v13 == -6727)
  {
    *v54 = 0;
    sub_23EB6FF14(a2, v54, "%ks.%ks", v14, v15, v16, v17, v18, "txt");
    if (!v28)
    {
      if (*v54)
      {
        *v53 = 0;
        sub_23EB6FF14(a2, v53, "%ks.%ks", v23, v24, v25, v26, v27, "txt");
        if ((v29 == -6727 || !v29 && *v53) && sub_23EB6B8F0(*v54, 0, a3) == -1 && (!*v53 || sub_23EB6B8F0(*v53, 0, a3) == -1))
        {
          sub_23EB6FF14(a2, &v58, "%ks.%kC:int", v30, v31, v32, v33, v34, "txt");
          if (!v40)
          {
            sub_23EB6FF14(a2, &v55, "%ks.%ks", v35, v36, v37, v38, v39, "txt");
            if (v41 == -6727)
            {
              v49 = sub_23EB6AE58(a2, v42, v43, v44, v45, v46, v47, v48);
              v55 = v49;
              v50 = v49 == 0;
            }

            else
            {
              v51 = v41;
              v49 = v55;
              v50 = v51 != 0;
            }

            if (!v50 && v49)
            {
              v21 = (*(&v58 + 1) & 0x180) == 0;
LABEL_16:
              if (v21)
              {
                *a4 = v55;
                return 1;
              }
            }
          }
        }
      }
    }

    return 0;
  }

  if (v13)
  {
    return 0;
  }

  result = cf;
  if (cf)
  {
    sub_23EBDEDF0(cf, &v56, &v55, 0, v15, v16, v17, v18);
    v20 = v19;
    if (cf)
    {
      CFRelease(cf);
    }

    result = 0;
    if (!v20)
    {
      if (v55)
      {
        v21 = v56 == 1;
        goto LABEL_16;
      }
    }
  }

  return result;
}

CFTypeRef sub_23EBDF9E8(uint64_t a1, const __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "Boolean _BaseStationIsNATEnabled(AutoGuessContextRef, CFDictionaryRef)", 800, "\n", a5, a6, a7, a8, v18);
  }

  result = 0;
  if (a1 && a2)
  {
    v20 = 0;
    cf = 0;
    if (sub_23EBDEA88(a1, a2, 0, &cf, a5, a6, a7, a8))
    {
      return 0;
    }

    result = cf;
    if (cf)
    {
      sub_23EB6FF14(cf, &v20, "%kC:BOOL", v11, v12, v13, v14, v15, 1918979649);
      v17 = v16;
      if (cf)
      {
        CFRelease(cf);
      }

      if (!v17)
      {
        return (v20 != 0);
      }

      return 0;
    }
  }

  return result;
}

CFTypeRef sub_23EBDFAD8(uint64_t a1, const __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "Boolean _BaseStationIsCreatingGuestNetwork(AutoGuessContextRef, CFDictionaryRef)", 800, "\n", a5, a6, a7, a8, cf);
  }

  result = 0;
  if (a1 && a2)
  {
    v19 = 0;
    v18 = 0;
    cf = 0;
    if (sub_23EBDEA88(a1, a2, 0, &cf, a5, a6, a7, a8))
    {
      return 0;
    }

    result = cf;
    if (cf)
    {
      sub_23EBDEDF0(cf, &v19, 0, &v18, v11, v12, v13, v14);
      v16 = v15;
      if (cf)
      {
        CFRelease(cf);
      }

      if (!v16)
      {
        return v18;
      }

      return 0;
    }
  }

  return result;
}

BOOL sub_23EBDFBC0(uint64_t a1, const __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = *MEMORY[0x277D85DE8];
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "Boolean _BaseStationHasPublicRoutableIP(AutoGuessContextRef, CFDictionaryRef)", 800, "\n", a5, a6, a7, a8, v18);
  }

  v10 = 0;
  cf = 0;
  if (a1 && a2)
  {
    theString = 0;
    v19 = 0;
    if (sub_23EBDEA88(a1, a2, 0, &cf, a5, a6, a7, a8))
    {
      goto LABEL_8;
    }

    if (!cf)
    {
      return 0;
    }

    sub_23EB6FF14(cf, &theString, "%kC", v11, v12, v13, v14, v15, 2002864464);
    if (v16 || !theString || !CFStringGetCString(theString, buffer, 256, 0x8000100u) || sub_23EB7DE5C(buffer, 0, &v19, 0, 0, 0, 0))
    {
LABEL_8:
      v10 = 0;
    }

    else
    {
      v10 = sub_23EB7D870(bswap32(v19));
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  return v10;
}

CFTypeRef sub_23EBDFD3C(uint64_t a1, const __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "Boolean _BaseStationIsInCreateMode(AutoGuessContextRef, CFDictionaryRef)", 800, "\n", a5, a6, a7, a8, v21);
  }

  result = 0;
  if (a1 && a2)
  {
    v24 = 0;
    cf = 0;
    v22 = 0;
    v11 = sub_23EBDEA88(a1, a2, 0, &cf, a5, a6, a7, a8);
    if (v11 == -6727)
    {
      sub_23EB6FF14(a2, &v24, "%ks.%kC:int", v12, v13, v14, v15, v16, "txt");
      if (!v20)
      {
        return ((v24 & 0x10000) == 0);
      }
    }

    else if (!v11)
    {
      result = cf;
      if (!cf)
      {
        return result;
      }

      sub_23EBDEDF0(cf, &v22, 0, 0, v13, v14, v15, v16);
      v18 = v17;
      if (cf)
      {
        CFRelease(cf);
      }

      if (!v18)
      {
        return (v22 == 0);
      }
    }

    return 0;
  }

  return result;
}

void sub_23EBDFE68(uint64_t a1, const __CFString *a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  cf = a3;
  if (!a1 || !a2 || !*(a1 + 16))
  {
    return;
  }

  key = 0;
  sub_23EBDCB98("_SetCachedSettingsForBaseStation:\n", a2, a3, a4, a5, a6, a7, a8);
  if (a3)
  {
    sub_23EB6FF14(a2, &key, "%ks", v12, v13, v14, v15, v16, "raMA");
    if (v17 || !key)
    {
      return;
    }

    v38 = 0;
    if (!CFDictionaryContainsKey(a2, @"raM2"))
    {
      goto LABEL_15;
    }

    sub_23EB6FF14(a2, &v38, "%ks", v18, v19, v20, v21, v22, "raM2");
    if (v27)
    {
      return;
    }

    v28 = v38;
    if (!v38)
    {
      return;
    }

    if (dword_27E382C08 > 800)
    {
      goto LABEL_15;
    }

    if (dword_27E382C08 == -1)
    {
      if (!sub_23EB74AC8(&dword_27E382C08, 0x320u))
      {
LABEL_15:
        if (CFDictionaryContainsKey(*(a1 + 16), key))
        {
          CFDictionaryRemoveValue(*(a1 + 16), key);
          if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
          {
            sub_23EB75374(&dword_27E382C08, "OSStatus _SetCachedSettingsForBaseStation(AutoGuessContextRef, CFDictionaryRef, CFDictionaryRef, Boolean)", 800, "inContext->cachedBaseSttings contains tempMACAddress: %@ -- removing", v30, v31, v32, v33, key);
          }
        }

        else if (v38)
        {
          if (CFDictionaryContainsKey(*(a1 + 16), v38))
          {
            CFDictionaryRemoveValue(*(a1 + 16), v38);
            if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
            {
              sub_23EB75374(&dword_27E382C08, "OSStatus _SetCachedSettingsForBaseStation(AutoGuessContextRef, CFDictionaryRef, CFDictionaryRef, Boolean)", 800, "inContext->cachedBaseSttings contains tempMACAddress2: %@ -- removing", v30, v31, v32, v33, v38);
            }
          }
        }

        if (!sub_23EB6FDFC(*MEMORY[0x277CBECE8], *(a1 + 16), "%kO=%O", v29, v30, v31, v32, v33, key) && dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
        {
          sub_23EB75374(&dword_27E382C08, "OSStatus _SetCachedSettingsForBaseStation(AutoGuessContextRef, CFDictionaryRef, CFDictionaryRef, Boolean)", 800, "Added settings for %@ to cache.\n", v34, v35, v36, v37, key);
        }

        return;
      }

      v28 = v38;
    }

    sub_23EB75374(&dword_27E382C08, "OSStatus _SetCachedSettingsForBaseStation(AutoGuessContextRef, CFDictionaryRef, CFDictionaryRef, Boolean)", 800, "inBaseStation has Radio MAC Address 2: %@", v23, v24, v25, v26, v28);
    goto LABEL_15;
  }

  if (!sub_23EBDEA88(a1, a2, a4, &cf, v13, v14, v15, v16) && cf)
  {
    CFRelease(cf);
  }
}

void sub_23EBE0134(uint64_t a1, CFArrayRef theArray, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus _CacheNeededSettingsForBaseStationList(AutoGuessContextRef, CFArrayRef)", 800, "\n", a5, a6, a7, a8, v25);
  }

  if (a1)
  {
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      if (Count >= 1)
      {
        v16 = Count;
        v17 = 0;
        v26 = 0;
        do
        {
          sub_23EB6FF14(theArray, &v26, "[*]", v11, v12, v13, v14, v15, v17);
          if (v22 || !v26)
          {
            break;
          }

          sub_23EBDFE68(a1, v26, 0, 0, v18, v19, v20, v21);
          if (v23 && v23 != -6727)
          {
            break;
          }

          ++v17;
        }

        while (v16 != v17);
      }
    }
  }
}

uint64_t sub_23EBE0244(uint64_t a1, const char *a2, uint64_t a3, unsigned int a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus _JoinNetworkAndBrowseForBaseStations(AutoGuessContextRef, CFDictionaryRef, Boolean, uint32_t, CFArrayRef *)", 800, "\n", a5, a6, a7, a8, v24);
  }

  result = 4294960591;
  if (a1 && a2 && a5)
  {
    v13 = sub_23EC0F94C(a2, a2);
    if (v13)
    {
      if (sub_23EBEBC34(*(a1 + 48), v13, 0, v14, v15, v16, v17, v18) || (result = sub_23EBEE390(*(a1 + 48), a2, 0, 0, 0, v21, v22, v23), !result))
      {
        v25 = 0;
        result = sub_23EBED960(*(a1 + 48), a4, &v25, v19, v20, v21, v22, v23);
        if (!result)
        {
          if (v25)
          {
            result = 0;
            *a5 = v25;
          }

          else
          {
            return 4294960568;
          }
        }
      }
    }

    else
    {
      return 4294960569;
    }
  }

  return result;
}

uint64_t sub_23EBE0354(uint64_t a1, CFArrayRef theArray, uint64_t a3, unsigned int a4, CFTypeRef *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus _JoinANetworkAndBrowseForBaseStations(AutoGuessContextRef, CFArrayRef, Boolean, uint32_t, CFArrayRef *)", 800, "\n", a5, a6, a7, a8, v27);
  }

  cf = 0;
  v12 = 4294960591;
  if (a1 && theArray && a5)
  {
    Count = CFArrayGetCount(theArray);
    if (Count < 1)
    {
      return 4294960569;
    }

    else
    {
      v19 = Count;
      v20 = 0;
      v29 = 0;
      while (1)
      {
        sub_23EB6FF14(theArray, &v29, "[*]", v14, v15, v16, v17, v18, v20);
        if (v21)
        {
          v12 = v21;
          goto LABEL_25;
        }

        if (!v29)
        {
          break;
        }

        v25 = sub_23EBE0244(a1, v29, 0, a4, &cf, v22, v23, v24);
        v12 = v25;
        if (v25 != -6723)
        {
          if (!v25)
          {
            if (!cf)
            {
              return 4294960568;
            }

            v12 = 0;
            *a5 = cf;
            return v12;
          }

          if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
          {
            v30 = &stru_285145FE8;
            if (v29)
            {
              sub_23EB6FF14(v29, &v30, "%kO", v14, v15, v16, v17, v18, @"SSID_STR");
            }

            sub_23EB75374(&dword_27E382C08, "OSStatus _JoinANetworkAndBrowseForBaseStations(AutoGuessContextRef, CFArrayRef, Boolean, uint32_t, CFArrayRef *)", 800, "Err: %d, joining/browsing network: %@", v15, v16, v17, v18, v12);
          }

          if (v19 != ++v20)
          {
            continue;
          }
        }

        goto LABEL_25;
      }

      v12 = 4294960568;
LABEL_25:
      if (cf)
      {
        CFRelease(cf);
      }
    }
  }

  return v12;
}

uint64_t sub_23EBE0544(uint64_t a1, CFArrayRef theArray, const __CFString *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a4;
  if (dword_27E382C08 <= 800)
  {
    if (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u))
    {
      sub_23EB75374(&dword_27E382C08, "OSStatus _CopyScanInfoForNetwork(AutoGuessContextRef, CFMutableArrayRef, CFStringRef, WiFiType, CFDictionaryRef *)", 800, "\n", a5, a6, a7, a8, v38);
    }

    if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
    {
      sub_23EB75374(&dword_27E382C08, "OSStatus _CopyScanInfoForNetwork(AutoGuessContextRef, CFMutableArrayRef, CFStringRef, WiFiType, CFDictionaryRef *)", 800, "_CopyScanInfoForNetwork %@\n", a5, a6, a7, a8, a3);
    }
  }

  sub_23EBDC50C("Scanned networks", theArray, a3, a4, a5, a6, a7, a8);
  result = 4294960591;
  if (a1 && a3 && a5)
  {
    v14 = sub_23EB6B7D0(a3, v9, 0, theArray);
    if (v14 != -1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v14);
      if (ValueAtIndex)
      {
        v20 = ValueAtIndex;
        CFRetain(ValueAtIndex);
        sub_23EBDCCB4("foundScanInfo from BSAssistant_IndexOfNetworkNameInNetworkList", v20, v21, v22, v23, v24, v25, v26);
LABEL_15:
        result = 0;
        *a5 = v20;
        return result;
      }

      return 4294960568;
    }

    if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
    {
      sub_23EB75374(&dword_27E382C08, "OSStatus _CopyScanInfoForNetwork(AutoGuessContextRef, CFMutableArrayRef, CFStringRef, WiFiType, CFDictionaryRef *)", 800, "Callback will direct scan to find it if not visible\n", v15, v16, v17, v18, v38);
    }

    v39 = 0;
    result = sub_23EBEC4F4(*(a1 + 48), a3, v9, &v39, v15, v16, v17, v18);
    if (!result)
    {
      if (!v39)
      {
        return 4294960568;
      }

      result = sub_23EB6FDFC(*MEMORY[0x277CBECE8], theArray, "%O", v27, v28, v29, v30, v31, v39);
      if (!result)
      {
        sub_23EBDCCB4("foundScanInfo from callback\n", v39, v32, v33, v34, v35, v36, v37);
        v20 = v39;
        if (v39)
        {
          goto LABEL_15;
        }

        return 4294960569;
      }
    }
  }

  return result;
}

uint64_t sub_23EBE0748(uint64_t a1, const __CFArray *a2, CFArrayRef theArray, __CFArray **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus _CopyScanInfoForNetworksNamed(AutoGuessContextRef, CFMutableArrayRef, CFArrayRef, CFArrayRef *)", 800, "\n", a5, a6, a7, a8, v34);
  }

  v12 = 4294960591;
  if (a1 && theArray && a4)
  {
    Count = CFArrayGetCount(theArray);
    if (Count)
    {
      v14 = Count;
      v15 = *MEMORY[0x277CBECE8];
      Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
      if (Mutable)
      {
        v22 = Mutable;
        v36 = 0;
        if (v14 >= 1)
        {
          v23 = 0;
          while (1)
          {
            cf = 0;
            sub_23EB6FF14(theArray, &v36, "[*]", v17, v18, v19, v20, v21, v23);
            if (v24 || (v24 = sub_23EBE0544(a1, a2, v36, 3, &cf, v25, v26, v27), v24))
            {
              v12 = v24;
              goto LABEL_26;
            }

            if (!cf)
            {
              break;
            }

            v12 = sub_23EB6FDFC(v15, v22, "%O", v28, v29, v30, v31, v32, cf);
            if (cf)
            {
              CFRelease(cf);
            }

            if (v12)
            {
              goto LABEL_26;
            }

            if (v14 == ++v23)
            {
              goto LABEL_19;
            }
          }

          v12 = 4294960568;
          goto LABEL_26;
        }

LABEL_19:
        if (!CFArrayGetCount(v22))
        {
          v12 = 4294960569;
LABEL_26:
          CFRelease(v22);
          return v12;
        }

        v12 = 0;
        *a4 = v22;
      }

      else
      {
        return 4294960568;
      }
    }

    else
    {
      return 4294960569;
    }
  }

  return v12;
}

uint64_t sub_23EBE0908(uint64_t a1, uint64_t a2, CFDictionaryRef theDict, CFTypeRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus _AskUserToChooseFromList(AutoGuessContextRef, eAssistantCallback, CFDictionaryRef, CFStringRef *)", 800, "\n", a5, a6, a7, a8, v39);
  }

  cf = 0;
  context = 0;
  v12 = 4294960591;
  if (theDict && a1 && (a2 - 7) >= 0xFFFFFFFE && CFDictionaryGetCount(theDict) >= 2)
  {
    v13 = sub_23EBE9E2C(*(a1 + 48), &context);
    if (v13)
    {
LABEL_10:
      v12 = v13;
      goto LABEL_11;
    }

    if (context)
    {
      v13 = sub_23EBEB5E8(context, @"BSAssistantCallback_AskUserDictionary", theDict, v14, v15, v16, v17, v18);
      if (v13)
      {
        goto LABEL_10;
      }

      v13 = sub_23EBEA59C(context, a2, v20, v21, v22, v23, v24, v25);
      if (v13)
      {
        goto LABEL_10;
      }

      v13 = sub_23EBEA92C(context, v26, v27, v28, v29, v30, v31, v32);
      if (v13)
      {
        goto LABEL_10;
      }

      v12 = *(context + 8);
      if (!v12)
      {
        sub_23EB6FF14(*(context + 3), &cf, "%ks:obj", v33, v34, v35, v36, v37, "BSAssistantCallback_String");
        v12 = v38;
        if (!v38)
        {
          *a4 = cf;
          cf = 0;
        }
      }
    }

    else
    {
      v12 = 4294960568;
    }
  }

LABEL_11:
  sub_23EBE9F5C(context);
  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

BOOL sub_23EBE0A74(const __CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!(a1 | a2))
  {
    return 0;
  }

  if (!a1)
  {
    if (!a2)
    {
      return 0;
    }

    return sub_23EC0FA18(a2, a2) != 0;
  }

  v9 = sub_23EB6C0E0(a1, a2, a3, a4, a5, a6, a7, a8);
  result = v9 != 0;
  if (!v9 && a2)
  {
    return sub_23EC0FA18(a2, a2) != 0;
  }

  return result;
}

BOOL sub_23EBE0AE4(const __CFString *a1)
{
  if (!a1)
  {
    return 1;
  }

  return CFStringCompare(a1, @"BSSetupRecommend_DeviceIsTooNewToSetUp", 0) && CFStringCompare(a1, @"BSSetupRecommend_UseAUFor80211g", 0);
}

uint64_t sub_23EBE0B4C(int a1, const void *a2, int a3, uint64_t a4, const void *a5, const __CFString *a6, const __CFString *a7, const void *a8, const __CFString *a9, const void *a10, void *a11, uint64_t a12)
{
  valuePtr = a1;
  if (!a12 || !*(a12 + 8))
  {
    return 4294960591;
  }

  cf = 0;
  v19 = *MEMORY[0x277CBECE8];
  value = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
  if (value)
  {
    Mutable = CFDictionaryCreateMutable(v19, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      v33 = 4294960568;
LABEL_46:
      CFRelease(value);
      return v33;
    }

    v21 = Mutable;
    CFDictionarySetValue(Mutable, @"BSAutoGuess_FinalState", value);
    CFDictionarySetValue(v21, @"BSAutoGuess_StateTrace", a2);
    if (a3 != -1)
    {
      v27 = sub_23EB6FDFC(v19, v21, "%ks=%i", v22, v23, v24, v25, v26, "BSAutoGuess_RestoreNetworkMode");
      if (v27)
      {
        goto LABEL_15;
      }
    }

    if (CFStringCompare(a6, @"BSSetupRecommend_OfferReplaceSourceIsUnconfigurable", 0))
    {
      if (a4 == -1)
      {
        goto LABEL_16;
      }

      v27 = sub_23EB6FDFC(v19, v21, "%ks=%i", v28, v29, v30, v31, v32, "BSAutoGuess_NoRestoreReason");
    }

    else
    {
      v27 = sub_23EB6FDFC(v19, v21, "%ks=%i", v28, v29, v30, v31, v32, "kBSAutoGuessSetupOptionKey_NoConfigureReason");
    }

    if (v27)
    {
LABEL_15:
      v33 = v27;
LABEL_45:
      CFRelease(v21);
      goto LABEL_46;
    }

LABEL_16:
    if (a5)
    {
      CFDictionarySetValue(v21, @"BSAutoGuess_RestoreData", a5);
    }

    CFDictionarySetValue(v21, @"BSAutoGuess_Recommendation", a6);
    if (a8)
    {
      CFDictionarySetValue(v21, @"BSAutoGuess_UnconfiguredNetwork", a8);
    }

    if (a10)
    {
      CFDictionarySetValue(v21, @"BSAutoGuess_SourceNetwork", a10);
    }

    if (a11)
    {
      CFDictionarySetValue(v21, @"BSAutoGuess_AskUserList", a11);
    }

    if (a7)
    {
      CFDictionarySetValue(v21, @"BSAutoGuess_UnconfiguredBase", a7);
      if (sub_23EBE0AE4(a6))
      {
        v38 = sub_23EBDEA88(a12, a7, 0, &cf, v34, v35, v36, v37);
        if (v38 == -6727)
        {
          if (!sub_23EBDEA14(a12, a7, v39, v40, v41, v42, v43, v44))
          {
            v33 = 4294960569;
            goto LABEL_45;
          }

          CFDictionarySetValue(v21, @"BSAutoGuess_Recommendation", @"BSSetupRecommend_FirmwareUpdateRequired");
        }

        else
        {
          v33 = v38;
          if (v38)
          {
            goto LABEL_45;
          }

          if (!cf)
          {
            goto LABEL_48;
          }

          CFDictionarySetValue(v21, @"BSAutoGuess_UnconfiguredBaseSettings", cf);
          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }
        }
      }
    }

    if (!a9)
    {
      goto LABEL_40;
    }

    v45 = sub_23EBDEA88(a12, a9, 0, &cf, v34, v35, v36, v37);
    if (v45 == -6727)
    {
LABEL_39:
      CFDictionarySetValue(v21, @"BSAutoGuess_SourceBase", a9);
LABEL_40:
      CFArrayAppendValue(*(a12 + 8), v21);
      if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
      {
        sub_23EB75374(&dword_27E382C08, "OSStatus __SetupOfferToDoSomething(BaseStationAutoGuessStates, CFArrayRef, BSNetworkMode, int32_t, CFStringRef, CFStringRef, CFDictionaryRef, CFDictionaryRef, CFDictionaryRef, CFDictionaryRef, CFArrayRef, AutoGuessContextRef)", 800, "Reason: %d Recommendation: %@\n", v46, v47, v48, v49, a4);
      }

      v33 = 0;
      goto LABEL_45;
    }

    v33 = v45;
    if (v45)
    {
      goto LABEL_45;
    }

    if (cf)
    {
      CFDictionarySetValue(v21, @"BSAutoGuess_SourceBaseSettings", cf);
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      goto LABEL_39;
    }

LABEL_48:
    v33 = 4294960568;
    goto LABEL_45;
  }

  return 4294960568;
}

uint64_t sub_23EBE0F68(CFDictionaryRef theDict, const void *a2, const __CFString **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus _IntelligentlyChooseABaseToConfigure(CFDictionaryRef, CFDictionaryRef, CFDictionaryRef *)", 800, "\n", a5, a6, a7, a8, theDicta);
  }

  v38 = 0;
  v39 = 0;
  v40 = 0;
  theDicta = 0;
  if (theDict && CFDictionaryGetCount(theDict))
  {
    v11 = sub_23EB71A18(theDict, &v40);
    if (!v11)
    {
      if (v40)
      {
        if (sub_23EB71AC0(v40, &v39, &v38))
        {
          v19 = 0;
          v11 = 0;
          while (1)
          {
            if (sub_23EB6B5A0(v38, v12, v13, v14, v15, v16, v17, v18))
            {
              sub_23EBDCB98("Base station has WAN link", v38, v21, v22, v23, v24, v25, v26);
              v27 = sub_23EBB7360(v38, @"local.", @"_airport._tcp", @"wan", 2u, 1, &theDicta);
              v11 = v27;
              if (v27 != -6735)
              {
                if (v27)
                {
                  goto LABEL_24;
                }

                if (!theDicta)
                {
                  goto LABEL_31;
                }

                v11 = 0;
                if (CFDictionaryGetCount(theDicta))
                {
                  break;
                }
              }
            }

            if (sub_23EB6B268(v38, v20, v21, v22, v23, v24, v25, v26))
            {
              v35 = v38;
              v36 = "Base station has restore profile";
LABEL_34:
              sub_23EBDCB98(v36, v35, v28, v29, v30, v31, v32, v33);
              break;
            }

            if (a2 && sub_23EBDD2D4(v38, a2, v28, v29, v30, v31, v32, v33))
            {
              v35 = v38;
              v36 = "Base station has previous config files";
              goto LABEL_34;
            }

            if (!v19)
            {
              v19 = v38;
            }

            if (!sub_23EB71AC0(v40, &v39, &v38))
            {
              goto LABEL_36;
            }
          }

          v19 = v38;
LABEL_36:
          if (v19)
          {
            *a3 = v19;
            goto LABEL_26;
          }
        }

        v11 = 4294960569;
      }

      else
      {
LABEL_31:
        v11 = 4294960568;
      }
    }
  }

  else
  {
    v11 = 4294960591;
  }

LABEL_24:
  if (a3)
  {
    CFRelease(a3);
  }

LABEL_26:
  if (theDicta)
  {
    CFRelease(theDicta);
    theDicta = 0;
  }

  if (v40)
  {
    sub_23EB71AB4(v40);
  }

  return v11;
}

void sub_23EBE1188(uint64_t a1, const __CFString *a2, const __CFString *a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus _ShouldNewBaseStationReplaceExistingBaseStation(AutoGuessContextRef, CFDictionaryRef, CFDictionaryRef, eReplaceMode *)", 800, "\n", a5, a6, a7, a8, v71);
  }

  if (a3)
  {
    if (a2)
    {
      if (a1)
      {
        if (a4)
        {
          v75 = 0;
          v76 = 0;
          v74 = 0;
          *a4 = 0;
          sub_23EBDF544(a1, a2, a3, a4, a5, a6, a7, a8);
          sub_23EB6FF14(a3, &v75, "%kO.%kO:int", v12, v13, v14, v15, v16, @"txt");
          if (!v24)
          {
            if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
            {
              sub_23EB75374(&dword_27E382C08, "OSStatus _ShouldNewBaseStationReplaceExistingBaseStation(AutoGuessContextRef, CFDictionaryRef, CFDictionaryRef, eReplaceMode *)", 800, "-- existingProdID2 is: %d", v20, v21, v22, v23, v75);
            }

            v25 = 2;
            if (v75 == 3 || v75 == 102)
            {
              goto LABEL_16;
            }

            v26 = *a4;
            if (*a4)
            {
              goto LABEL_18;
            }

            if (!sub_23EB6C1A0(a3, v17, v18, v19, v20, v21, v22, v23))
            {
              v25 = 3;
              goto LABEL_16;
            }

            v26 = *a4;
            if (*a4)
            {
              goto LABEL_18;
            }

            v76 = -1;
            if (v75 == 104)
            {
              if (sub_23EBDF140(a1, a3, 1, &v76, v29, v30, v31, v32) || v76 == -1)
              {
                return;
              }

              if (v76 > 1)
              {
                goto LABEL_61;
              }

              v26 = *a4;
              if (*a4)
              {
                goto LABEL_18;
              }
            }

            if (sub_23EBDF480(a1, a3, v27, v28, v29, v30, v31, v32))
            {
              sub_23EBDCB98("Existing base station has audio port in use:\n", a3, v33, v34, v35, v36, v37, v38);
              if (sub_23EBDF2B4(a1, a2, 1632923251, &v74 + 1, v39, v40, v41, v42))
              {
                return;
              }

              v49 = HIBYTE(v74) ? "New base station has audio port:\n" : "New base station does not have audio port:\n";
              sub_23EBDCB98(v49, a2, v43, v44, v45, v46, v47, v48);
              if (!HIBYTE(v74))
              {
LABEL_60:
                v26 = *a4;
                goto LABEL_18;
              }
            }

            sub_23EB6FF14(a2, &v75 + 4, "%ks.%kC:int", v34, v35, v36, v37, v38, "txt");
            if (v50)
            {
              return;
            }

            v51 = sub_23EB4BDAC(v75);
            if (v51 <= sub_23EB4BDAC(HIDWORD(v75)))
            {
              if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
              {
                sub_23EB75374(&dword_27E382C08, "OSStatus _ShouldNewBaseStationReplaceExistingBaseStation(AutoGuessContextRef, CFDictionaryRef, CFDictionaryRef, eReplaceMode *)", 800, "Existing base station has less ethernet ports than the new base station", v54, v55, v56, v57, v72);
              }
            }

            else
            {
              if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
              {
                sub_23EB75374(&dword_27E382C08, "OSStatus _ShouldNewBaseStationReplaceExistingBaseStation(AutoGuessContextRef, CFDictionaryRef, CFDictionaryRef, eReplaceMode *)", 800, "Existing base station has more ethernet ports than the new base station", v54, v55, v56, v57, v72);
              }

              v58 = v76;
              if (v76 == -1)
              {
                if (sub_23EBDF140(a1, a3, 1, &v76, v54, v55, v56, v57))
                {
                  return;
                }

                v58 = v76;
                if (v76 == -1)
                {
                  return;
                }
              }

              if (v58 >= sub_23EB4BDAC(HIDWORD(v75)))
              {
                goto LABEL_60;
              }
            }

            if (!sub_23EBDF3D8(a1, a2, v52, v53, v54, v55, v56, v57) || sub_23EBDF3D8(a1, a3, v59, v60, v61, v62, v63, v64))
            {
              v26 = *a4;
              if (!*a4)
              {
                v70 = sub_23EBDF2B4(a1, a2, 825319779, &v74, v61, v62, v63, v64);
                if (!v70 && v74)
                {
                  v73 = 0;
                  v70 = sub_23EBDF2B4(a1, a3, 825319779, &v73, v66, v67, v68, v69);
                  if (!v70)
                  {
                    if (v73)
                    {
                      goto LABEL_56;
                    }

                    goto LABEL_55;
                  }

                  if ((v75 - 1) < 0x76)
                  {
LABEL_55:
                    *a4 = 1;
                  }
                }

LABEL_56:
                if (*a4 && !sub_23EBDF544(a1, a2, a3, v65, v66, v67, v68, v69))
                {
                  *a4 = 0;
                }

                if (v70)
                {
                  return;
                }

                goto LABEL_60;
              }

LABEL_18:
              v25 = 1;
              if (v26 <= 3 && v26 != 1)
              {
                return;
              }

LABEL_16:
              *a4 = v25;
              return;
            }

LABEL_61:
            v25 = 1;
            goto LABEL_16;
          }
        }
      }
    }
  }
}

uint64_t sub_23EBE15C4(uint64_t a1, CFArrayRef theArray, const __CFArray *a3, const __CFArray **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus _CopyAllNetworksForBaseStationsInSTAMode(AutoGuessContextRef, CFArrayRef, CFMutableArrayRef, CFArrayRef *)", 800, "\n", a5, a6, a7, a8, v50);
  }

  v12 = 4294960591;
  if (!a1 || !theArray || !a4)
  {
    return v12;
  }

  Count = CFArrayGetCount(theArray);
  if (!Count)
  {
    return 4294960569;
  }

  v14 = Count;
  v15 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    return 4294960568;
  }

  v17 = Mutable;
  v51 = v15;
  value = 0;
  if (v14 >= 1)
  {
    for (i = 0; v14 != i; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      if (!ValueAtIndex)
      {
LABEL_36:
        v12 = 4294960568;
        goto LABEL_38;
      }

      v27 = ValueAtIndex;
      if (!sub_23EB6C0E0(ValueAtIndex, v20, v21, v22, v23, v24, v25, v26) && sub_23EBDF780(a1, v27, a3, &value, v28, v29, v30, v31) && value)
      {
        v54.length = CFArrayGetCount(v17);
        v54.location = 0;
        if (CFArrayContainsValue(v17, v54, value))
        {
          if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
          {
            sub_23EB75374(&dword_27E382C08, "OSStatus _CopyAllNetworksForBaseStationsInSTAMode(AutoGuessContextRef, CFArrayRef, CFMutableArrayRef, CFArrayRef *)", 800, "Already added STA network: %@\n", v32, v33, v34, v35, value);
          }
        }

        else
        {
          cf = 0;
          if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
          {
            sub_23EB75374(&dword_27E382C08, "OSStatus _CopyAllNetworksForBaseStationsInSTAMode(AutoGuessContextRef, CFArrayRef, CFMutableArrayRef, CFArrayRef *)", 800, "Adding STA network: %@ if it is scannable\n", v32, v33, v34, v35, value);
          }

          v36 = sub_23EBE0544(a1, a3, value, 3, &cf, v33, v34, v35);
          if (v36 != -6727)
          {
            v12 = v36;
            if (v36)
            {
              goto LABEL_38;
            }

            if (!cf)
            {
              goto LABEL_36;
            }

            CFRelease(cf);
            cf = 0;
            sub_23EBDCB98("Base station is in STA mode:\n", v27, v37, v38, v39, v40, v41, v42);
            v48 = sub_23EB6FDFC(v51, v17, "%O", v43, v44, v45, v46, v47, value);
            if (v48)
            {
              v12 = v48;
LABEL_38:
              CFRelease(v17);
              return v12;
            }
          }
        }
      }
    }
  }

  if (!CFArrayGetCount(v17))
  {
    v12 = 4294960569;
    goto LABEL_38;
  }

  v12 = 0;
  *a4 = v17;
  return v12;
}

uint64_t sub_23EBE188C(uint64_t a1, char a2, CFArrayRef theArray, __CFArray **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus _NarrowBaseStationList(AutoGuessContextRef, eNarrowBaseStationList, CFArrayRef, CFArrayRef *)", 800, "\n", a5, a6, a7, a8, v30);
  }

  v12 = 4294960591;
  if (a1)
  {
    if (theArray)
    {
      if (a4)
      {
        Count = CFArrayGetCount(theArray);
        if (Count)
        {
          v14 = Count;
          v15 = *MEMORY[0x277CBECE8];
          Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
          if (Mutable)
          {
            v17 = Mutable;
            if (v14 >= 1)
            {
              v18 = 0;
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(theArray, v18);
                if (!ValueAtIndex)
                {
                  v12 = 4294960568;
                  goto LABEL_23;
                }

                v27 = ValueAtIndex;
                if ((a2 & 1) == 0 || !sub_23EBDCF40(ValueAtIndex, v20, v21, v22, v23, v24, v25, v26))
                {
                  v28 = sub_23EB6FDFC(v15, v17, "%O", v22, v23, v24, v25, v26, v27);
                  if (v28)
                  {
                    break;
                  }
                }

                if (v14 == ++v18)
                {
                  goto LABEL_17;
                }
              }

              v12 = v28;
              goto LABEL_23;
            }

LABEL_17:
            if (!CFArrayGetCount(v17))
            {
              v12 = 4294960569;
LABEL_23:
              CFRelease(v17);
              return v12;
            }

            v12 = 0;
            *a4 = v17;
          }

          else
          {
            return 4294960568;
          }
        }
      }
    }
  }

  return v12;
}

uint64_t sub_23EBE1A10(uint64_t a1, CFArrayRef theArray, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus _NarrowBaseStationListToBestOneToExtend(AutoGuessContextRef, CFArrayRef, CFDictionaryRef *)", 800, "\n", a5, a6, a7, a8, v60);
  }

  result = 4294960591;
  if (a1 && theArray && a3)
  {
    Count = CFArrayGetCount(theArray);
    if (Count)
    {
      v13 = Count;
      if (Count >= 1)
      {
        v14 = 0;
        v15 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v14);
          if (!ValueAtIndex)
          {
            return 4294960568;
          }

          v23 = ValueAtIndex;
          if (sub_23EBDF9E8(a1, ValueAtIndex, v17, v18, v19, v20, v21, v22))
          {
            if (v15)
            {
              sub_23EBDCB98("_BaseStationIsNATEnabled true again for base so clearing found base:\n", v23, v24, v25, v26, v27, v28, v29);
              goto LABEL_20;
            }

            sub_23EBDCB98("_BaseStationIsNATEnabled true for base:\n", v23, v24, v25, v26, v27, v28, v29);
            v15 = v23;
          }

          ++v14;
        }

        while (v13 != v14);
        if (v15)
        {
LABEL_17:
          result = 0;
          *a3 = v15;
          return result;
        }

LABEL_20:
        if (v13 >= 1)
        {
          v30 = 0;
          v15 = 0;
          while (1)
          {
            v31 = CFArrayGetValueAtIndex(theArray, v30);
            if (!v31)
            {
              return 4294960568;
            }

            v38 = v31;
            if (sub_23EBDFAD8(a1, v31, v32, v33, v34, v35, v36, v37))
            {
              if (v15)
              {
                sub_23EBDCB98("_BaseStationIsCreatingGuestNetwork true again for base so clearing found base:\n", v38, v39, v40, v41, v42, v43, v44);
LABEL_30:
                v45 = 0;
                v15 = 0;
                while (1)
                {
                  v46 = CFArrayGetValueAtIndex(theArray, v45);
                  if (!v46)
                  {
                    return 4294960568;
                  }

                  v53 = v46;
                  if (sub_23EBDF3D8(a1, v46, v47, v48, v49, v50, v51, v52))
                  {
                    if (v15)
                    {
                      sub_23EBDCB98("_BaseStationIsSimultaneousDualBand true again for base so clearing found base:\n", v53, v54, v55, v56, v57, v58, v59);
                      return 4294960569;
                    }

                    sub_23EBDCB98("_BaseStationIsSimultaneousDualBand true for base:\n", v53, v54, v55, v56, v57, v58, v59);
                    v15 = v53;
                  }

                  if (v13 == ++v45)
                  {
                    if (v15)
                    {
                      goto LABEL_17;
                    }

                    return 4294960569;
                  }
                }
              }

              sub_23EBDCB98("_BaseStationIsCreatingGuestNetwork true for base:\n", v38, v39, v40, v41, v42, v43, v44);
              v15 = v38;
            }

            if (v13 == ++v30)
            {
              if (v15)
              {
                goto LABEL_17;
              }

              goto LABEL_30;
            }
          }
        }
      }

      return 4294960569;
    }

    else
    {
      return 4294960591;
    }
  }

  return result;
}

void sub_23EBE1C34(CFArrayRef theArray, uint64_t a2, const __CFDate *a3, const __CFString **a4)
{
  if (theArray && a4)
  {
    v15 = 0;
    sub_23EB6BA5C(theArray, a3, &v15);
    if (v12 == -6727)
    {
      sub_23EB6FF14(theArray, &v15, "[*]", v7, v8, v9, v10, v11, a2);
      if (v13)
      {
        return;
      }

      v14 = v15;
      if (!v15)
      {
        return;
      }
    }

    else
    {
      v14 = v15;
      if (!v15)
      {
        return;
      }
    }

    *a4 = v14;
  }
}

uint64_t sub_23EBE1CE0(uint64_t a1, const __CFArray *a2, CFArrayRef theArray, const __CFString *a4, uint64_t a5, __CFArray **a6, uint64_t a7, uint64_t a8)
{
  v9 = a5;
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus _CopyNetworksScannableInPreferredList(AutoGuessContextRef, CFMutableArrayRef, CFArrayRef, CFDictionaryRef, ScanOptions, CFArrayRef *)", 800, "\n", a5, a6, a7, a8, v79);
  }

  v14 = 4294960591;
  if (!a1 || !a6 || (v9 & 3) == 0)
  {
    return v14;
  }

  if (!theArray || !CFArrayGetCount(theArray))
  {
    return 4294960569;
  }

  *a6 = 0;
  v15 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    return 4294960568;
  }

  v22 = Mutable;
  v23 = 0;
  theArraya = 0;
  v87 = 0;
  cf = 0;
  theString1 = 0;
  theDate = 0;
  theString2 = 0;
  v83 = 0;
  if ((v9 & 2) != 0)
  {
    theArraya = CFArrayCreateMutable(v15, 0, MEMORY[0x277CBF128]);
    if (!theArraya)
    {
      v26 = 0;
      otherDate = 0;
      goto LABEL_21;
    }

    Current = CFAbsoluteTimeGetCurrent();
    v23 = CFDateCreate(v15, Current + -1209600.0);
    if (!v23)
    {
      otherDate = 0;
      goto LABEL_78;
    }
  }

  otherDate = v23;
  if (!a4)
  {
    theString2 = 0;
    goto LABEL_23;
  }

  sub_23EB6FF14(a4, &theString2, "%kO", v17, v18, v19, v20, v21, @"SSID_STR");
  if (v25)
  {
    v14 = v25;
LABEL_82:
    v26 = theArraya;
    goto LABEL_83;
  }

  if (!theString2)
  {
LABEL_78:
    v14 = 4294960568;
    goto LABEL_82;
  }

LABEL_23:
  Count = CFArrayGetCount(theArray);
  if (!Count)
  {
    goto LABEL_81;
  }

  v80 = v22;
  theDate = 0;
  if (Count < 1)
  {
LABEL_55:
    v22 = v80;
    if (theArraya)
    {
      v62 = CFArrayGetCount(theArraya);
      if (v62)
      {
        v63 = v62 >= 6 ? 6 : v62;
        if (v62 >= 1)
        {
          v26 = theArraya;
          ValueAtIndex = CFArrayGetValueAtIndex(theArraya, 0);
          theString1 = ValueAtIndex;
          if (ValueAtIndex)
          {
            v68 = ValueAtIndex;
            v69 = 0;
            do
            {
              v70 = sub_23EBE0544(a1, a2, v68, 3, &cf, v65, v66, v67);
              if (v70 != -6727)
              {
                v14 = v70;
                if (v70)
                {
                  goto LABEL_82;
                }

                if (!cf)
                {
                  goto LABEL_78;
                }

                if (sub_23EC0F928(cf, v71))
                {
                  if (cf)
                  {
                    CFRelease(cf);
                    cf = 0;
                  }

                  sub_23EBDCCB4("Skipping IBSS network", 0, v72, v73, v74, v75, v76, v77);
                }

                else
                {
                  v14 = sub_23EB6FDFC(v15, v80, "%O", v73, v74, v75, v76, v77, cf);
                  if (cf)
                  {
                    CFRelease(cf);
                    cf = 0;
                  }

                  if (v14)
                  {
                    goto LABEL_82;
                  }

                  if ((v9 & 8) != 0)
                  {
                    goto LABEL_79;
                  }
                }
              }

              if (++v69 >= v63)
              {
                goto LABEL_79;
              }

              v68 = CFArrayGetValueAtIndex(theArraya, v69);
              theString1 = v68;
              v14 = 4294960568;
            }

            while (v68);
            goto LABEL_82;
          }

LABEL_21:
          v14 = 4294960568;
          goto LABEL_83;
        }
      }
    }

LABEL_79:
    if (CFArrayGetCount(v80))
    {
      v14 = 0;
      *a6 = v80;
      v26 = theArraya;
      goto LABEL_84;
    }

LABEL_81:
    v14 = 4294960569;
    goto LABEL_82;
  }

  v28 = 0;
  while (1)
  {
    v29 = Count;
    sub_23EBE1C34(theArray, v28, theDate, &v87);
    if (v30)
    {
      goto LABEL_89;
    }

    if (!v87)
    {
      break;
    }

    sub_23EB6FF14(v87, &v83, "%ks:int", v31, v32, v33, v34, v35, "WiFiShim_PreferredNetwork_SecMode");
    if (v30)
    {
LABEL_89:
      v14 = v30;
      goto LABEL_91;
    }

    if (v83 - 9 <= 3)
    {
      if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
      {
        sub_23EB75374(&dword_27E382C08, "OSStatus _CopyNetworksScannableInPreferredList(AutoGuessContextRef, CFMutableArrayRef, CFArrayRef, CFDictionaryRef, ScanOptions, CFArrayRef *)", 800, "skipping Enterprise preferred network: %@\n", v37, v38, v39, v40, v87);
      }

      goto LABEL_54;
    }

    sub_23EB6FF14(v87, &theString1, "%ks", v36, v37, v38, v39, v40, "WiFiShim_PreferredNetwork_SSID");
    if (v30)
    {
      goto LABEL_89;
    }

    if (!theString1)
    {
      break;
    }

    sub_23EB6FF14(v87, &theDate, "%ks", v41, v42, v43, v44, v45, "WiFiShim_PreferredNetwork_TimeAssociated");
    if (v46 != -6727)
    {
      v14 = v46;
      if (v46)
      {
        goto LABEL_91;
      }

      if (!theDate)
      {
        break;
      }
    }

    if (theString2 && CFStringCompare(theString1, theString2, 0) == kCFCompareEqualTo)
    {
      goto LABEL_54;
    }

    v47 = sub_23EB6B7D0(theString1, 3, 0, a2);
    if (v47 == -1)
    {
      if ((v9 & 2) == 0 || (v9 & 4) != 0 && v83 < 2 || theDate && CFDateCompare(theDate, otherDate, 0) != kCFCompareGreaterThan)
      {
        goto LABEL_54;
      }

      v30 = sub_23EB6FDFC(v15, theArraya, "%O", v48, v49, v50, v51, v52, theString1);
    }

    else
    {
      if ((v9 & 1) == 0)
      {
        goto LABEL_54;
      }

      v53 = CFArrayGetValueAtIndex(a2, v47);
      cf = v53;
      if (!v53)
      {
        break;
      }

      v55 = v53;
      if (sub_23EC0F9F4(v53, v54) || sub_23EC0F928(v55, v56))
      {
        goto LABEL_54;
      }

      v30 = sub_23EB6FDFC(v15, v80, "%O", v57, v58, v59, v60, v61, v55);
    }

    if (v30)
    {
      goto LABEL_89;
    }

LABEL_54:
    ++v28;
    Count = v29;
    if (v29 == v28)
    {
      goto LABEL_55;
    }
  }

  v14 = 4294960568;
LABEL_91:
  v26 = theArraya;
  v22 = v80;
LABEL_83:
  CFRelease(v22);
LABEL_84:
  if (v26)
  {
    CFRelease(v26);
  }

  if (otherDate)
  {
    CFRelease(otherDate);
  }

  return v14;
}

uint64_t sub_23EBE220C(uint64_t a1, CFArrayRef theArray, const __CFArray *a3, const __CFArray *a4, CFMutableArrayRef *a5)
{
  v5 = 4294960591;
  if (!a1 || !theArray || !a5)
  {
    return v5;
  }

  Count = CFArrayGetCount(theArray);
  if (!Count)
  {
    return 4294960569;
  }

  v12 = Count;
  v13 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    return 4294960568;
  }

  v20 = Mutable;
  v41 = 0;
  cf = 0;
  v39 = 0;
  v40 = 0;
  if (v12 >= 1)
  {
    for (i = 0; v12 != i; ++i)
    {
      sub_23EB6FF14(theArray, &v41, "[*]", v15, v16, v17, v18, v19, i);
      if (v22)
      {
LABEL_30:
        v5 = v22;
        goto LABEL_34;
      }

      v28 = v41;
      if (!v41)
      {
        goto LABEL_32;
      }

      if (a3)
      {
        sub_23EB6FF14(v41, &v40, "%ks.%ks", v23, v24, v25, v26, v27, "txt");
        if (v22)
        {
          goto LABEL_30;
        }

        if (!v40)
        {
          v5 = 0;
LABEL_34:
          CFRelease(v20);
          return v5;
        }

        v29 = sub_23EB6B3A8(a3, v40);
        if (v29 != -1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a3, v29);
          v41 = ValueAtIndex;
          if (!ValueAtIndex)
          {
            v5 = 4294960586;
            goto LABEL_34;
          }

LABEL_24:
          v22 = sub_23EB6FDFC(v13, v20, "%O", v31, v32, v33, v34, v35, ValueAtIndex);
          if (v22)
          {
            goto LABEL_30;
          }

          continue;
        }

        v28 = v41;
      }

      sub_23EB6FF14(v28, &v39, "%ks.%ks", v23, v24, v25, v26, v27, "txt");
      if (v36 != -6727)
      {
        v5 = v36;
        if (v36)
        {
          goto LABEL_34;
        }

        if (!v39)
        {
          goto LABEL_32;
        }

        v37 = sub_23EBE0544(a1, a4, v39, 3, &cf, v17, v18, v19);
        if (v37 != -6727)
        {
          v5 = v37;
          if (v37)
          {
            goto LABEL_34;
          }

          if (!cf)
          {
LABEL_32:
            v5 = 4294960568;
            goto LABEL_34;
          }

          CFRelease(cf);
          cf = 0;
          ValueAtIndex = v41;
          goto LABEL_24;
        }
      }
    }
  }

  if (!CFArrayGetCount(v20))
  {
    v5 = 4294960569;
    goto LABEL_34;
  }

  v5 = 0;
  *a5 = v20;
  return v5;
}

uint64_t sub_23EBE2440(uint64_t a1, const __CFString *a2, CFArrayRef theArray, const __CFArray *a4, CFMutableArrayRef *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus _BaseStationsBrowsedAndCreatingNetworksVisibleToBaseStation(AutoGuessContextRef, CFDictionaryRef, CFArrayRef, CFArrayRef, CFArrayRef *)", 800, "\n", a5, a6, a7, a8, v52);
  }

  v13 = 4294960569;
  if (!theArray)
  {
    return v13;
  }

  if (!a4)
  {
    return v13;
  }

  if (!CFArrayGetCount(theArray))
  {
    return v13;
  }

  if (!CFArrayGetCount(a4))
  {
    return v13;
  }

  v13 = 4294960591;
  if (!a1 || !a5)
  {
    return v13;
  }

  *a5 = 0;
  v14 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    return 4294960568;
  }

  v20 = Mutable;
  v55 = 0;
  v56 = 0;
  v54 = 0;
  v21 = sub_23EBDF2B4(a1, a2, 1852787795, &v54, v16, v17, v18, v19);
  v13 = v21;
  if (v54)
  {
    v22 = v21 == 0;
  }

  else
  {
    v22 = 0;
  }

  if (v22)
  {
    v23 = 30;
  }

  else
  {
    v23 = 22;
  }

  Count = CFArrayGetCount(a4);
  if (Count >= 1)
  {
    v30 = Count;
    v53 = v14;
    v31 = 0;
    while (1)
    {
      sub_23EB6FF14(a4, &v56, "[*]", v25, v26, v27, v28, v29, v31);
      if (v32)
      {
LABEL_36:
        v13 = v32;
        goto LABEL_42;
      }

      if (!v56)
      {
        goto LABEL_38;
      }

      if (sub_23EC0FB00(v56, v23))
      {
        sub_23EBDCCB4("Skipping IBSS, non-secure, enterprise, or legacy sec mode network: %@\n", v56, v33, v34, v35, v36, v37, v38);
      }

      else
      {
        sub_23EB6FF14(v56, &v55, "%kO", v34, v35, v36, v37, v38, @"BSSID");
        if (v32)
        {
          goto LABEL_36;
        }

        if (!v55)
        {
LABEL_38:
          v13 = 4294960568;
          goto LABEL_42;
        }

        v39 = sub_23EB6B3A8(theArray, v55);
        if (v39 != -1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v39);
          if (!ValueAtIndex)
          {
            v13 = 4294960586;
LABEL_42:
            CFRelease(v20);
            return v13;
          }

          v48 = ValueAtIndex;
          if (!sub_23EB6B0C8(ValueAtIndex, v41, v42, v43, v44, v45, v46, v47) && !sub_23EB6B674(a2, v48, v49, v25, v26, v27, v28, v29) && (!CFArrayGetCount(v20) || sub_23EB6B3A8(v20, v55) == -1))
          {
            if (sub_23EBDFD3C(a1, v48, v50, v25, v26, v27, v28, v29))
            {
              v32 = sub_23EB6FDFC(v53, v20, "%O", v25, v26, v27, v28, v29, v48);
              if (v32)
              {
                goto LABEL_36;
              }
            }
          }
        }
      }

      if (v30 == ++v31)
      {
        v13 = 0;
        break;
      }
    }
  }

  if (!CFArrayGetCount(v20))
  {
    v13 = 4294960569;
    goto LABEL_42;
  }

  *a5 = v20;
  return v13;
}

BOOL sub_23EBE26E8(const __CFString *a1, CFArrayRef theArray, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "Boolean _WirelessNetworkVisibleInNetworkScan(CFStringRef, CFArrayRef)", 800, "\n", a5, a6, a7, a8, v11);
  }

  result = 0;
  if (a1)
  {
    if (theArray)
    {
      return sub_23EB6B6FC(a1, 0, theArray) != -1;
    }
  }

  return result;
}

uint64_t sub_23EBE277C(CFDictionaryRef theDict, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "Boolean _UnconfiguredBaseStationIsSpecifiedByBonjourRecord(CFDictionaryRef)", 800, "\n", a5, a6, a7, a8, v10);
  }

  if (!theDict)
  {
    return 0;
  }

  result = CFDictionaryContainsKey(theDict, @"BSAutoGuessContext_ChosenUnconfiguredBrowseRecord");
  if (result)
  {
    return CFDictionaryContainsKey(theDict, @"BSAutoGuessContext_ChosenUnconfiguredScanRecord") == 0;
  }

  return result;
}

BOOL sub_23EBE2820(CFDictionaryRef theDict, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "Boolean _UnconfiguredBaseStationIsSpecifiedByWirelessScanRecord(CFDictionaryRef)", 800, "\n", a5, a6, a7, a8, v10);
  }

  return theDict && !CFDictionaryContainsKey(theDict, @"BSAutoGuessContext_ChosenUnconfiguredBrowseRecord") && CFDictionaryContainsKey(theDict, @"BSAutoGuessContext_ChosenUnconfiguredScanRecord") != 0;
}

BOOL sub_23EBE28C4(CFDictionaryRef theDict, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "Boolean _UnconfiguredBaseStationInContextDictionary(CFDictionaryRef)", 800, "\n", a5, a6, a7, a8, v17);
  }

  if (!theDict)
  {
    return 0;
  }

  if (sub_23EBE277C(theDict, a2, a3, a4, a5, a6, a7, a8))
  {
    return 1;
  }

  result = sub_23EBE2820(theDict, v9, v10, v11, v12, v13, v14, v15);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_23EBE2958(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus BSAutoGuess_Create(AutoGuessContextRef *)", 800, "BSAutoGuess_Create\n", a5, a6, a7, a8, v27);
  }

  if (!a1)
  {
    return 4294960591;
  }

  v9 = malloc_type_calloc(1uLL, 0x38uLL, 0x1060040837169E1uLL);
  if (!v9)
  {
    return 4294960568;
  }

  v17 = v9;
  *(v9 + 28) = 0u;
  *v9 = 0u;
  v9[1] = 0u;
  v25 = sub_23EBE9B10(v9 + 6, v10, v11, v12, v13, v14, v15, v16);
  if (!v25)
  {
    if (*(v17 + 6))
    {
      v25 = 0;
      *a1 = v17;
      return v25;
    }

    v25 = 4294960568;
  }

  sub_23EBE2A44(v17, v18, v19, v20, v21, v22, v23, v24);
  return v25;
}

uint64_t sub_23EBE2A44(const void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 4294960591;
  }

  v9 = *a1;
  if (v9)
  {
    CFRelease(v9);
    *a1 = 0;
  }

  v10 = a1[1];
  if (v10)
  {
    CFRelease(v10);
    a1[1] = 0;
  }

  v11 = a1[2];
  if (v11)
  {
    CFRelease(v11);
    a1[2] = 0;
  }

  v12 = a1[3];
  if (v12)
  {
    CFRelease(v12);
    a1[3] = 0;
  }

  v13 = a1[4];
  if (v13)
  {
    CFRelease(v13);
    a1[4] = 0;
  }

  sub_23EBE9CC0(a1[6], a2, a3, a4, a5, a6, a7, a8);
  free(a1);
  return 0;
}

uint64_t sub_23EBE2AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus BSAutoGuess_SetAssistantCallback(AutoGuessContextRef, assistant_callback_t, void *)", 800, " \n", a5, a6, a7, a8, v13);
  }

  if (!a1)
  {
    return 4294960591;
  }

  v11 = *(a1 + 48);

  return sub_23EBEA4E8(v11, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_23EBE2B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus BSAutoGuess_SetProgressCallback(AutoGuessContextRef, assistant_progress_t, void *)", 800, " \n", a5, a6, a7, a8, v13);
  }

  if (!a1)
  {
    return 4294960591;
  }

  v11 = *(a1 + 48);

  return sub_23EBEAA74(v11, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_23EBE2C38(uint64_t *a1, CFDictionaryRef theDict, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus BSAutoGuess_PerformGuess(AutoGuessContextRef, CFDictionaryRef)", 800, "Auto Guess START\n", a5, a6, a7, a8, v24);
  }

  result = 4294960591;
  if (a1 && theDict)
  {
    if (CFDictionaryGetCount(theDict))
    {
      *a1 = theDict;
      CFRetain(theDict);
      Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
      a1[1] = Mutable;
      if (Mutable)
      {
        global_queue = dispatch_get_global_queue(0, 0);
        dispatch_async_f(global_queue, a1, sub_23EBE2D48);
        result = sub_23EBEA0DC(a1[6], v13, v14, v15, v16, v17, v18, v19);
        if (!result)
        {
          sub_23EBEAB18(a1[6], 17, 0, 0, v20, v21, v22, v23);
          return 0;
        }
      }

      else
      {
        return 4294960568;
      }
    }

    else
    {
      return 4294960591;
    }
  }

  return result;
}

int *sub_23EBE2D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ValueAtIndex = 0;
  v1144 = 0;
  v1142 = 0;
  v1139 = 0;
  v1140 = -1;
  v1141 = -1;
  theArray = 0;
  cf = 0;
  v1135 = 0;
  theDict = 0;
  v1145 = 0;
  v9 = MEMORY[0x277CBECE8];
  if (!a1 || (v10 = *a1) == 0 || !CFDictionaryGetCount(v10))
  {
    Mutable = 0;
    goto LABEL_8;
  }

  Value = CFDictionaryGetValue(*a1, @"BSAutoGuessContext_HostCurrentWirelessAssociation");
  v12 = CFDictionaryGetValue(*a1, @"BSAutoGuessContext_HostPreferredNetworks");
  v13 = CFDictionaryGetValue(*a1, @"BSAutoGuessContext_HostPrevConfigFiles");
  *(a1 + 24) = CFDictionaryGetValue(*a1, @"BSAutoGuessContext_HostBrowsedBaseStations");
  *(a1 + 16) = CFDictionaryGetValue(*a1, @"BSAutoGuessContext_CachedBaseStationSettings");
  *(a1 + 32) = CFDictionaryGetValue(*a1, @"BSAutoGuessContext_HostScannedNetworks");
  v21 = sub_23EBDDD20(*a1, v14, v15, v16, v17, v18, v19, v20);
  v29 = sub_23EBDDDC4(*a1, v22, v23, v24, v25, v26, v27, v28);
  v30 = *v9;
  Mutable = CFArrayCreateMutable(*v9, 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
LABEL_8:
    v34 = 0;
    v35 = 4294960591;
LABEL_9:
    v36 = 1;
    goto LABEL_10;
  }

  v32 = *(a1 + 16);
  if (v32)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(v30, 0, v32);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(v30, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  *(a1 + 16) = MutableCopy;
  if (!MutableCopy || ((v37 = *(a1 + 24)) == 0 ? (v38 = CFArrayCreateMutable(v30, 0, MEMORY[0x277CBF128])) : (v38 = CFArrayCreateMutableCopy(v30, 0, v37)), (*(a1 + 24) = v38) == 0 || ((v39 = *(a1 + 32)) == 0 ? (v40 = CFArrayCreateMutable(v30, 0, MEMORY[0x277CBF128])) : (v40 = CFArrayCreateMutableCopy(v30, 0, v39)), (*(a1 + 32) = v40) == 0)))
  {
    v34 = 0;
    v35 = 4294960568;
    goto LABEL_9;
  }

  v1133 = v29;
  if (dword_27E382C08 >= 801)
  {
    v45 = Value;
    v44 = Value != 0;
  }

  else
  {
    if (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u))
    {
      sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "State machine starting... \n", a5, a6, a7, a8, v1123);
    }

    v42 = dword_27E382C08;
    v43 = Value;
    v44 = Value != 0;
    v45 = v43;
    if (v43 && dword_27E382C08 <= 800)
    {
      if (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u))
      {
        sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "currentAssociationNetworkDict: %@\n", a5, a6, a7, a8, v45);
      }

      v42 = dword_27E382C08;
    }

    if (v12 && v42 <= 800)
    {
      if (v42 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u))
      {
        sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "myHostPreferredNetworks: %@\n", a5, a6, a7, a8, v12);
      }

      v42 = dword_27E382C08;
    }

    if (v13 && v42 <= 800 && (v42 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
    {
      sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "myHostPreviousConfigFiles: %@\n", a5, a6, a7, a8, v13);
    }

    if (dword_27E382C08 <= 800)
    {
      if (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u))
      {
        sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "noWirelessOnHost: %d\n", a5, a6, a7, a8, v21);
      }

      if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
      {
        sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "hostHasPreferredNetworkSupport: %d\n", a5, a6, a7, a8, v29);
      }
    }
  }

  sub_23EBDC01C("obj->browsedBaseStations: \n", *(a1 + 24), v41, a4, a5, a6, a7, a8);
  sub_23EBDC50C("obj->scannedNetworks: \n", *(a1 + 32), v46, v47, v48, v49, v50, v51);
  v1132 = v44;
  if (!v44)
  {
    goto LABEL_64;
  }

  v1146[0] = 0;
  v57 = v45;
  sub_23EB6FF14(v45, v1146, "%kO", v52, v53, v54, v55, v56, @"SSID_STR");
  v35 = v58;
  v9 = MEMORY[0x277CBECE8];
  if (v58)
  {
LABEL_60:
    v34 = 0;
    goto LABEL_9;
  }

  if (!v1146[0])
  {
    goto LABEL_969;
  }

  if (sub_23EB6B6FC(v1146[0], 0, *(a1 + 32)) == -1)
  {
    v35 = sub_23EBEC4F4(*(a1 + 48), v1146[0], 3, &theDict, v59, v60, v61, v62);
    if (v35)
    {
      goto LABEL_60;
    }

    if (theDict)
    {
      v35 = sub_23EB6FDFC(v30, *(a1 + 32), "%O", a4, a5, a6, a7, a8, theDict);
      if (theDict)
      {
        CFRelease(theDict);
        theDict = 0;
      }

      if (v35)
      {
        goto LABEL_60;
      }

      goto LABEL_63;
    }

LABEL_969:
    v35 = 4294960568;
    goto LABEL_60;
  }

LABEL_63:
  v45 = v57;
LABEL_64:
  v63 = sub_23EBEDC9C(*(a1 + 48), 300);
  if (v63)
  {
    v35 = v63;
    v34 = 0;
    v36 = 1;
    goto LABEL_68;
  }

  sub_23EBEAB18(*(a1 + 48), 15, 0, 0, a5, a6, a7, a8);
  if (sub_23EBEA238(*(a1 + 48)))
  {
    v36 = 0;
    v34 = 0;
    v35 = 4294960573;
    goto LABEL_68;
  }

  v1129 = v13;
  v1130 = v12;
  v66 = "(%d) No unconfigured networks are visible because Wi-Fi is disabled.";
  v34 = 0;
  v1131 = 0;
  v1128 = 0;
  v1125 = 0;
  if (!v21)
  {
    v66 = "(%d) No unconfigured networks are visible in Wi-Fi scans.";
  }

  v1126 = v66;
  v1127 = v21;
  v67 = 1;
  v68 = v45;
  v9 = MEMORY[0x277CBECE8];
  while (v67 <= 601)
  {
    if (v67 <= 401)
    {
      if (v67 > 102)
      {
        if (v67 <= 104)
        {
          if (v67 != 103)
          {
            if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
            {
              sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", a5, a6, a7, a8, 104);
            }

            if (sub_23EB6C0E0(v1144, v64, v65, a4, a5, a6, a7, a8))
            {
              v67 = 105;
              v117 = "(%d) This base station is a STA-only device.";
              v118 = "CHOSEN_BASE_STATION_IS_STA_ONLY_TRUE";
            }

            else
            {
              sub_23EBDFE68(a1, v1144, 0, 0, a5, a6, a7, a8);
              if (v505 == -6768)
              {
                v67 = 1102;
                v117 = "(%d) Security error reading chosen base. We don't support it with this software.";
                v118 = "CHOSEN_BASE_STATION_IS_OLDFW_TRUE";
              }

              else
              {
                v35 = v505;
                if (v505)
                {
                  v36 = 0;
                  goto LABEL_10;
                }

                v67 = 103;
                v117 = "(%d) This base station is not a STA-only device.";
                v118 = "CHOSEN_BASE_STATION_IS_STA_ONLY_FALSE";
              }
            }

            sub_23EBDBF78(v117, v115, v116, a4, a5, a6, a7, a8, 104);
            sub_23EBE9710(Mutable, byte_27E383C00, v118, v648, v649, v650, v651, v652);
            if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
            {
              v306 = 104;
              goto LABEL_944;
            }

            goto LABEL_945;
          }

          if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
          {
            sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", a5, a6, a7, a8, 103);
          }

          if (sub_23EB6B268(v1144, v64, v65, a4, a5, a6, a7, a8))
          {
            v1146[0] = &stru_285145FE8;
            if (v1144)
            {
              sub_23EB6FF14(v1144, v1146, "%ks", v251, v252, v253, v254, v255, "name");
            }

            sub_23EBDBF78("(%d) The chosen base station %@ has a restore profile.", v249, v250, v251, v252, v253, v254, v255, 103);
            goto LABEL_826;
          }

          if (sub_23EBDD2D4(v1144, v1129, v250, v251, v252, v253, v254, v255))
          {
            v1146[0] = &stru_285145FE8;
            if (v1144)
            {
              sub_23EB6FF14(v1144, v1146, "%ks", v549, v550, v551, v552, v553, "name");
            }

            sub_23EBDBF78("(%d) The chosen base station %@ has a previous configuration file.", v547, v548, v549, v550, v551, v552, v553, 103);
LABEL_826:
            v67 = 602;
            v769 = "TEXT_RECORD_HAS_PROFILE_OR_PREVIOUS_CONFIG_FILE_TRUE";
          }

          else
          {
            v1146[0] = &stru_285145FE8;
            if (v1144)
            {
              sub_23EB6FF14(v1144, v1146, "%ks", v549, v550, v551, v552, v553, "name");
            }

            sub_23EBDBF78("(%d) The chosen base station %@ does not have a restore profile or previous configuration file.", v547, v548, v549, v550, v551, v552, v553, 103);
            v67 = 501;
            v769 = "TEXT_RECORD_HAS_PROFILE_OR_PREVIOUS_CONFIG_FILE_FALSE";
          }

          sub_23EBE9710(Mutable, byte_27E383C00, v769, v596, v597, v598, v599, v600);
          if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
          {
            goto LABEL_945;
          }

          v306 = 103;
          goto LABEL_944;
        }

        if (v67 != 105)
        {
          if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
          {
            sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", a5, a6, a7, a8, 401);
          }

          sub_23EBEAB18(*(a1 + 48), 15, 0, 0, a5, a6, a7, a8);
          v172 = sub_23EBE2440(a1, v1144, *(a1 + 24), *(a1 + 32), &theArray, v169, v170, v171);
          if (v172)
          {
            v35 = v172;
            if (v172 != -6727)
            {
              v36 = 0;
              goto LABEL_10;
            }

            v1145 = 0;
LABEL_465:
            sub_23EBDBF78("(%d) No existing configured base stations are creating a network.", v173, v174, a4, a5, a6, a7, a8, 401);
            sub_23EBE9710(Mutable, byte_27E383C00, "HOST_BROWSED_BASE_STATIONS_CREATING_NETWORK_IS_ZERO_TRUE", v395, v396, v397, v398, v399);
            v67 = 403;
LABEL_466:
            if (theArray)
            {
              CFRelease(theArray);
              theArray = 0;
            }

            if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
            {
              goto LABEL_945;
            }

            v306 = 401;
            goto LABEL_944;
          }

          if (!theArray)
          {
            v36 = 0;
            v35 = 4294960568;
            goto LABEL_10;
          }

          Count = CFArrayGetCount(theArray);
          v1145 = Count;
          if (Count == 1)
          {
            sub_23EBDC01C("State 401 count == 1 configed base creating network: \n", theArray, v174, a4, a5, a6, a7, a8);
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
            CFRetain(ValueAtIndex);
            v680 = ValueAtIndex;
            v1146[0] = &stru_285145FE8;
            if (ValueAtIndex)
            {
              sub_23EB6FF14(ValueAtIndex, v1146, "%ks", v675, v676, v677, v678, v679, "name");
              v680 = ValueAtIndex;
            }

            sub_23EBDBFC4(v680, v673, v674, v675, v676, v677, v678, v679);
            sub_23EBDBF78("(%d) One existing configured base station named %@ is creating a network called %@.", v804, v805, v806, v807, v808, v809, v810, 401);
            sub_23EBE9710(Mutable, byte_27E383C00, "HOST_BROWSED_BASE_STATIONS_CREATING_NETWORK_IS_ONE_TRUE", v811, v812, v813, v814, v815);
            v67 = 402;
            goto LABEL_466;
          }

          if (!Count)
          {
            goto LABEL_465;
          }

          if (Count < 2)
          {
            v67 = 401;
            goto LABEL_466;
          }

          key = 0;
          sub_23EBDC01C("State 401 count >= 2 configed bases creating network: \n", theArray, v174, a4, a5, a6, a7, a8);
          v35 = sub_23EBE188C(a1, 1, theArray, &key, v697, v698, v699, v700);
          if (theArray)
          {
            CFRelease(theArray);
          }

          theArray = key;
          if (v35 != -6727)
          {
            if (v35)
            {
              goto LABEL_1296;
            }

            if (!key)
            {
LABEL_1297:
              v36 = 0;
              v35 = 4294960568;
              goto LABEL_68;
            }

            v701 = CFArrayGetCount(key);
            v1145 = v701;
            if (v701 == 1)
            {
              sub_23EBDC01C("State 401 (2) count == 1 configed base creating network: \n", theArray, v703, v704, a5, a6, a7, a8);
              ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
              CFRetain(ValueAtIndex);
              v906 = ValueAtIndex;
              v1146[0] = &stru_285145FE8;
              if (ValueAtIndex)
              {
                sub_23EB6FF14(ValueAtIndex, v1146, "%ks", v901, v902, v903, v904, v905, "name");
                v906 = ValueAtIndex;
              }

              sub_23EBDBFC4(v906, v899, v900, v901, v902, v903, v904, v905);
              sub_23EBDBF78("(%d) One non G-Only configured base station named %@ is creating a network called %@.", v927, v928, v929, v930, v931, v932, v933, 401);
              sub_23EBE9710(Mutable, byte_27E383C00, "HOST_BROWSED_BASE_STATIONS_CREATING_NETWORK_IS_ONE_TRUE", v934, v935, v936, v937, v938);
LABEL_959:
              v67 = 402;
              goto LABEL_960;
            }

            if (!v701)
            {
              sub_23EBDBF78("(%d) No non G-Only configured base stations are creating a network.", v702, v703, v704, a5, a6, a7, a8, 401);
              sub_23EBE9710(Mutable, byte_27E383C00, "HOST_BROWSED_BASE_STATIONS_CREATING_NETWORK_IS_ZERO_TRUE", v705, v706, v707, v708, v709);
              v67 = 403;
LABEL_960:
              v9 = MEMORY[0x277CBECE8];
              goto LABEL_466;
            }

            if (v701 >= 2)
            {
              sub_23EBDC01C("State 401 (2) count >= 2 non G-Only configed bases creating network: \n", theArray, v703, v704, a5, a6, a7, a8);
              v912 = sub_23EBE1A10(a1, theArray, &ValueAtIndex, v907, v908, v909, v910, v911);
              if (v912 == -6727)
              {
                sub_23EBDBF78("(%d) %d existing configured base stations are creating networks. However, one could not be automatically chosen.", v913, v914, a4, a5, a6, a7, a8, 401);
                sub_23EBE98EC(Mutable, byte_27E383C00, "HOST_BROWSED_BASE_STATIONS_CREATING_NETWORK_IS_GREATER_THAN_ONE_TRUE", v1145, v939, v940, v941, v942);
                cf = theArray;
                CFRetain(theArray);
                v67 = 1407;
                goto LABEL_960;
              }

              v35 = v912;
              if (v912)
              {
LABEL_1296:
                v36 = 0;
                goto LABEL_68;
              }

              if (!ValueAtIndex)
              {
                goto LABEL_1297;
              }

              CFRetain(ValueAtIndex);
              v922 = ValueAtIndex;
              v1146[0] = &stru_285145FE8;
              if (ValueAtIndex)
              {
                sub_23EB6FF14(ValueAtIndex, v1146, "%ks", v917, v918, v919, v920, v921, "name");
                v922 = ValueAtIndex;
              }

              sub_23EBDBFC4(v922, v915, v916, v917, v918, v919, v920, v921);
              sub_23EBDBF78("(%d) %d existing configured base stations are creating networks. The base station named %@ which creates the network called %@ was automatically chosen.", v943, v944, v945, v946, v947, v948, v949, 401);
              sub_23EBE98EC(Mutable, byte_27E383C00, "HOST_BROWSED_BASE_STATIONS_CREATING_NETWORK_IS_GREATER_THAN_ONE_TRUE", v1145, v950, v951, v952, v953);
              goto LABEL_959;
            }
          }

          v67 = 401;
          goto LABEL_960;
        }

        if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
        {
          sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", a5, a6, a7, a8, 105);
        }

        v1142 = 0;
        if (!v1132)
        {
          goto LABEL_439;
        }

        v1146[0] = 0;
        key = 0;
        v277 = sub_23EB6A1FC(v1131);
        sub_23EB6FF14(v68, v1146, "%kO", v278, v279, v280, v281, v282, @"SSID_STR");
        if (v283)
        {
          v35 = v283;
          goto LABEL_1160;
        }

        if (!v1146[0])
        {
          goto LABEL_1052;
        }

        v284 = sub_23EB6B7D0(v1146[0], 3, 0, *(a1 + 32));
        if (v284 == -1)
        {
          v35 = 4294960560;
          goto LABEL_1160;
        }

        key = CFArrayGetValueAtIndex(*(a1 + 32), v284);
        if (!key)
        {
          goto LABEL_1052;
        }

        if (v1131 && (v277 - 3) <= 1)
        {
          if (sub_23EC0FA80(v1131, v285) || !sub_23EC0FAC8(key, v64))
          {
            if (key)
            {
              goto LABEL_322;
            }
          }

          else
          {
            v795 = sub_23EBE0544(a1, *(a1 + 32), v1146[0], 1, &key, a6, a7, a8);
            if (v795 != -6727)
            {
              v35 = v795;
              if (v795)
              {
                goto LABEL_1160;
              }

              if (!key)
              {
LABEL_1052:
                v35 = 4294960568;
LABEL_1160:
                v36 = 0;
                goto LABEL_10;
              }

LABEL_322:
              if (sub_23EC0FAA4(v1131, v64))
              {
                if (key)
                {
                  goto LABEL_324;
                }
              }

              else if (!sub_23EC0FA3C(key, v64) && key)
              {
                goto LABEL_324;
              }
            }
          }
        }

        else
        {
LABEL_324:
          v286 = CFArrayCreateMutable(v30, 1, MEMORY[0x277CBF128]);
          theArray = v286;
          if (!v286)
          {
            goto LABEL_1052;
          }

          CFArrayAppendValue(v286, key);
          if (v1131)
          {
            v287 = v1131;
          }

          else
          {
            v287 = v1144;
          }

          v35 = sub_23EBDDBF8(theArray, v287, 0);
          if (theArray)
          {
            CFRelease(theArray);
            theArray = 0;
          }

          if (v35 != -6727)
          {
            if (v35)
            {
              goto LABEL_1160;
            }

            v1142 = key;
            CFRetain(key);
          }
        }

        if (v1142)
        {
          v1146[0] = &stru_285145FE8;
          sub_23EB6FF14(v1142, v1146, "%ks.%ks", a4, a5, a6, a7, a8, "txt");
          sub_23EBDBF78("(%d) Current network called %@ will be joined by STA-only device.", v288, v289, v290, v291, v292, v293, v294, 105);
          v67 = 1403;
          v300 = "CURRENT_NETWORK_FOR_STA_ONLY_TO_JOIN_IS_TRUE";
        }

        else
        {
LABEL_439:
          sub_23EBDBF78("(%d) No current network for the STA-only device to join.", v64, v65, a4, a5, a6, a7, a8, 105);
          v67 = 700;
          v300 = "CURRENT_NETWORK_FOR_STA_ONLY_TO_JOIN_IS_FALSE";
        }

        sub_23EBE9710(Mutable, byte_27E383C00, v300, v295, v296, v297, v298, v299);
        if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
        {
          goto LABEL_945;
        }

        v306 = 105;
        goto LABEL_944;
      }

      if (v67 > 100)
      {
        if (v67 != 101)
        {
          if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
          {
            sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", a5, a6, a7, a8, 102);
          }

          sub_23EBEAB18(*(a1 + 48), 16, 0, v1144, a5, a6, a7, a8);
          if (sub_23EBDCF40(v1144, v153, v154, v155, v156, v157, v158, v159))
          {
            v67 = 1101;
            v167 = "(%d) This base station is an 802.11g model. We don't support it with this software.";
            v168 = "CHOSEN_BASE_STATION_IS_80211G_TRUE";
          }

          else
          {
            v506 = sub_23EBDCFD0(v1144, v160, v161, v162, v163, v164, v165, v166);
            v507 = !v506;
            if (v506)
            {
              v167 = "(%d) This base station is too new to be set up with this software.";
            }

            else
            {
              v167 = "(%d) This base station is not an 802.11g model. OK to continue.";
            }

            if (v507)
            {
              v168 = "CHOSEN_BASE_STATION_IS_80211G_FALSE";
            }

            else
            {
              v168 = "CHOSEN_BASE_STATION_IS_TOO_NEW_TRUE";
            }

            if (v507)
            {
              v67 = 104;
            }

            else
            {
              v67 = 1104;
            }
          }

          sub_23EBDBF78(v167, v160, v161, v162, v163, v164, v165, v166, 102);
          sub_23EBE9710(Mutable, byte_27E383C00, v168, v508, v509, v510, v511, v512);
          if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
          {
            goto LABEL_945;
          }

          v306 = 102;
          goto LABEL_944;
        }

        if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
        {
          sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", a5, a6, a7, a8, 101);
        }

        v256 = sub_23EBDD05C(*(a1 + 24), &theDict, v65, a4, a5, a6, a7, a8);
        if (v256 == -6727)
        {
          v1145 = 0;
        }

        else
        {
          v35 = v256;
          if (v256)
          {
            goto LABEL_1145;
          }

          if (!theDict)
          {
LABEL_1146:
            v36 = 0;
            v35 = 4294960568;
            goto LABEL_10;
          }

          v1145 = CFDictionaryGetCount(theDict);
          sub_23EBDC8C0("State 101 unconfigured bases: \n", theDict, v259, v260, v261, v262, v263, v264);
          if (v1145 == 1)
          {
            v35 = sub_23EBDDF6C(theDict, &v1144, v258, a4, a5, a6, a7, a8);
            if (theDict)
            {
              CFRelease(theDict);
              theDict = 0;
            }

            if (v35)
            {
LABEL_1145:
              v36 = 0;
              goto LABEL_10;
            }

            if (!v1144)
            {
              goto LABEL_1146;
            }

            CFRetain(v1144);
            v1146[0] = &stru_285145FE8;
            if (v1144)
            {
              sub_23EB6FF14(v1144, v1146, "%ks", v692, v693, v694, v695, v696, "name");
            }

            sub_23EBDBF78("(%d) One unconfigured base station %@ is connected and has been chosen.", v690, v691, v692, v693, v694, v695, v696, 101);
            v67 = 102;
            v276 = "NUMBER_UNCONFIGURED_BASES_DISCOVERED_IS_ONE_TRUE";
            goto LABEL_506;
          }

          if (v1145)
          {
            if (v1145 < 2)
            {
              v67 = 101;
            }

            else
            {
              v35 = sub_23EBE0F68(theDict, v1129, &v1144, a4, a5, a6, a7, a8);
              if (theDict)
              {
                CFRelease(theDict);
                theDict = 0;
              }

              if (v35)
              {
                v36 = 0;
                goto LABEL_68;
              }

              if (!v1144)
              {
                v36 = 0;
                v35 = 4294960568;
                goto LABEL_68;
              }

              CFRetain(v1144);
              v1146[0] = &stru_285145FE8;
              if (v1144)
              {
                sub_23EB6FF14(v1144, v1146, "%ks", v267, v268, v269, v270, v271, "name");
              }

              sub_23EBDBF78("(%d) Found %d unconfigured base stations and automatically chose to configure the base station named %@.", v265, v266, v267, v268, v269, v270, v271, 101);
              v67 = 102;
              v276 = "NUMBER_UNCONFIGURED_BASES_DISCOVERED_IS_GREATER_THAN_ONE_TRUE";
              v9 = MEMORY[0x277CBECE8];
LABEL_506:
              sub_23EBE98EC(Mutable, byte_27E383C00, v276, v1145, v272, v273, v274, v275);
            }

            if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
            {
              goto LABEL_945;
            }

            v306 = 101;
            goto LABEL_944;
          }
        }

        sub_23EBDBF78("(%d) No unconfigured base stations are on the current network.", v257, v258, a4, a5, a6, a7, a8, 101);
        v67 = 801;
        v276 = "NUMBER_UNCONFIGURED_BASES_DISCOVERED_IS_ZERO_TRUE";
        goto LABEL_506;
      }

      if (v67 != 1)
      {
        if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
        {
          sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", a5, a6, a7, a8, 10);
        }

        v92 = sub_23EBE277C(*a1, v64, v65, a4, a5, a6, a7, a8);
        v93 = *a1;
        if (v92)
        {
          sub_23EB6FF14(v93, &v1144, "%ks", v87, v88, v89, v90, v91, "BSAutoGuessContext_ChosenUnconfiguredBrowseRecord");
          if (v94)
          {
            goto LABEL_1141;
          }

          if (!v1144)
          {
LABEL_1142:
            v36 = 0;
            v35 = 4294960568;
            goto LABEL_10;
          }

          CFRetain(v1144);
          sub_23EBDCB98("Base station is specified by a bonjour record", v1144, v95, v96, v97, v98, v99, v100);
          v1146[0] = &stru_285145FE8;
          if (v1144)
          {
            sub_23EB6FF14(v1144, v1146, "%ks", v103, v104, v105, v106, v107, "name");
          }

          sub_23EBDBF78("(%d) The base station named %@ was specified with a Bonjour record.", v101, v102, v103, v104, v105, v106, v107, 10);
          v67 = 102;
          v642 = "SIG_UNCONFIGURED_BASE_SPECIFIED_BY_BONJOUR_RECORD_TRUE";
LABEL_850:
          sub_23EBE9710(Mutable, byte_27E383C00, v642, v637, v638, v639, v640, v641);
        }

        else
        {
          if (sub_23EBE2820(v93, v85, v86, v87, v88, v89, v90, v91))
          {
            sub_23EB6FF14(*a1, &v1142, "%ks", v491, a5, a6, a7, a8, "BSAutoGuessContext_ChosenUnconfiguredScanRecord");
            if (v94)
            {
LABEL_1141:
              v35 = v94;
              v36 = 0;
              goto LABEL_10;
            }

            if (!v1142)
            {
              goto LABEL_1142;
            }

            CFRetain(v1142);
            sub_23EBDCCB4("Base station is specified by a wireless scan record", v1142, v492, v493, v494, v495, v496, v497);
            v1146[0] = &stru_285145FE8;
            if (v1142)
            {
              sub_23EB6FF14(v1142, v1146, "%kO", v500, v501, v502, v503, v504, @"SSID_STR");
            }

            sub_23EBDBF78("(%d) The base station named %@ was specified with a Wi-Fi scan", v498, v499, v500, v501, v502, v503, v504, 10);
            v67 = 807;
            v642 = "SIG_UNCONFIGURED_BASE_SPECIFIED_BY_WIRELESS_SCAN_RECORD_TRUE";
            goto LABEL_850;
          }

          v67 = 10;
        }

        if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
        {
          goto LABEL_945;
        }

        v306 = 10;
        goto LABEL_944;
      }

      if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
      {
        sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", a5, a6, a7, a8, 1);
      }

      if (sub_23EBE28C4(*a1, v64, v65, a4, a5, a6, a7, a8))
      {
        if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
        {
          sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "Unconfigured base station passed in to state machine", a5, a6, a7, a8, v1123);
        }

        sub_23EBDBF78("(%d) The user chose a specific base station to set up", v241, v242, v243, a5, a6, a7, a8, 1);
        sub_23EBE9710(Mutable, byte_27E383C00, "SIG_UNCONFIGURED_BASE_IN_IOCONTEXT_DICTIONARY_TRUE", v244, v245, v246, v247, v248);
        v67 = 10;
LABEL_588:
        if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
        {
          goto LABEL_945;
        }

        v306 = 1;
        goto LABEL_944;
      }

      if (dword_27E382C08 <= 800)
      {
        if (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u))
        {
          sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "(%d) No unconfigured base station passed in to state machine", a5, a6, a7, a8, 1);
        }

        v67 = 101;
        goto LABEL_588;
      }

      v67 = 101;
    }

    else if (v67 <= 501)
    {
      if (v67 > 403)
      {
        if (v67 == 404)
        {
          if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
          {
            sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", a5, a6, a7, a8, 404);
          }

          v330 = sub_23EBE15C4(a1, *(a1 + 24), *(a1 + 32), &theArray, a5, a6, a7, a8);
          if (v330)
          {
            v35 = v330;
            if (v330 != -6727)
            {
              goto LABEL_1217;
            }

            v1145 = 0;
LABEL_374:
            sub_23EBDBF78("(%d) No existing configured base stations are joined to a network.", v331, v332, a4, a5, a6, a7, a8, 404);
            v67 = 700;
            v338 = "NUMBER_BROWSED_BASE_STATIONS_IN_STA_MODE_NETWORKS_IS_ZERO_TRUE";
LABEL_856:
            sub_23EBE9710(Mutable, byte_27E383C00, v338, v333, v334, v335, v336, v337);
          }

          else
          {
            if (!theArray)
            {
              goto LABEL_1113;
            }

            v476 = CFArrayGetCount(theArray);
            v1145 = v476;
            if (v476 == 1)
            {
              v477 = CFArrayGetValueAtIndex(theArray, 0);
              if (!v477)
              {
                goto LABEL_1113;
              }

              v478 = sub_23EBE0544(a1, *(a1 + 32), v477, 3, &theDict, a6, a7, a8);
              if (v478)
              {
                v35 = v478;
LABEL_1217:
                v36 = 0;
                goto LABEL_10;
              }

              if (!theDict)
              {
LABEL_1113:
                v36 = 0;
                v35 = 4294960568;
                goto LABEL_10;
              }

              v1142 = theDict;
              CFRetain(theDict);
              if (theDict)
              {
                CFRelease(theDict);
                theDict = 0;
              }

              v1146[0] = &stru_285145FE8;
              if (v1142)
              {
                sub_23EB6FF14(v1142, v1146, "%kO", v481, v482, v483, v484, v485, @"SSID_STR");
              }

              sub_23EBDBF78("(%d) All the existing configured base stations are joining the same network called %@.", v479, v480, v481, v482, v483, v484, v485, 404);
              v67 = 1403;
              v338 = "NUMBER_BROWSED_BASE_STATIONS_IN_STA_MODE_NETWORKS_IS_ONE_TRUE";
              goto LABEL_856;
            }

            if (v476 < 2)
            {
              goto LABEL_374;
            }

            sub_23EBDBF78("(%d) The existing configured base stations are joined to %d different networks.", v331, v332, a4, a5, a6, a7, a8, 404);
            sub_23EBE98EC(Mutable, byte_27E383C00, "NUMBER_BROWSED_BASE_STATIONS_IN_STA_MODE_NETWORKS_IS_GREATER_THAN_ONE_TRUE", v1145, v576, v577, v578, v579);
            v35 = sub_23EBE0748(a1, *(a1 + 32), theArray, &cf, v580, v581, v582, v583);
            if (theArray)
            {
              CFRelease(theArray);
              theArray = 0;
            }

            if (v35)
            {
              v36 = 0;
              goto LABEL_10;
            }

            v67 = 1406;
            if (!cf)
            {
              v36 = 0;
              v35 = 4294960568;
              goto LABEL_10;
            }
          }

          if (theArray)
          {
            CFRelease(theArray);
            theArray = 0;
          }

          if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
          {
            goto LABEL_945;
          }

          v306 = 404;
          goto LABEL_944;
        }

        if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
        {
          sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", a5, a6, a7, a8, 501);
        }

        v1145 = 0;
        v195 = sub_23EBDF140(a1, v1144, 0, &v1145, a5, a6, a7, a8);
        if (v195)
        {
          v35 = v195;
          if (v195 != -6727)
          {
            v36 = 0;
            goto LABEL_10;
          }
        }

        if (v1145)
        {
          v1146[0] = &stru_285145FE8;
          if (v1144)
          {
            sub_23EB6FF14(v1144, v1146, "%ks", a4, a5, a6, a7, a8, "name");
          }

          sub_23EBDBF78("(%d) An Ethernet port of the base station named %@ is plugged in.", v196, v197, a4, a5, a6, a7, a8, 501);
          v67 = 502;
          v624 = "BASE_HAS_WAN_PLUGGED_IN_TRUE";
        }

        else
        {
          v1146[0] = &stru_285145FE8;
          if (v1144)
          {
            sub_23EB6FF14(v1144, v1146, "%ks", a4, a5, a6, a7, a8, "name");
          }

          sub_23EBDBF78("(%d) An Ethernet port of the base station named %@ is not plugged in.", v196, v197, a4, a5, a6, a7, a8, 501);
          v67 = 504;
          v624 = "BASE_HAS_WAN_PLUGGED_IN_FALSE";
        }

        sub_23EBE9710(Mutable, byte_27E383C00, v624, v619, v620, v621, v622, v623);
        if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
        {
          v306 = 501;
          goto LABEL_944;
        }
      }

      else
      {
        if (v67 == 402)
        {
          LODWORD(key) = 0;
          if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
          {
            sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", a5, a6, a7, a8, 402);
          }

          LODWORD(key) = 0;
          sub_23EBE1188(a1, v1144, ValueAtIndex, &key, a5, a6, a7, a8);
          switch(key)
          {
            case 3:
              v1146[0] = &stru_285145FE8;
              if (ValueAtIndex)
              {
                sub_23EB6FF14(ValueAtIndex, v1146, "%ks", v325, v326, v327, v328, v329, "name");
              }

              v1146[0] = &stru_285145FE8;
              if (v1144)
              {
                sub_23EB6FF14(v1144, v1146, "%ks", v325, v326, v327, v328, v329, "name");
              }

              sub_23EBDBF78("(%d) The existing base station named %@ is unconfigurable (non-SRP FW) but will be replaced by the new base station named %@", v323, v324, v325, v326, v327, v328, v329, 402);
              v67 = 1409;
              v768 = "PREVIOUS_DEVICE_IS_UNCONFIGURABLE_OLD_FW_TRUE";
              break;
            case 2:
              v1146[0] = &stru_285145FE8;
              if (ValueAtIndex)
              {
                sub_23EB6FF14(ValueAtIndex, v1146, "%ks", v325, v326, v327, v328, v329, "name");
              }

              v1146[0] = &stru_285145FE8;
              if (v1144)
              {
                sub_23EB6FF14(v1144, v1146, "%ks", v325, v326, v327, v328, v329, "name");
              }

              sub_23EBDBF78("(%d) The existing base station named %@ is unconfigurable (Q61/P81) but will be replaced by the new base station named %@", v323, v324, v325, v326, v327, v328, v329, 402);
              v67 = 1408;
              v768 = "PREVIOUS_DEVICE_IS_UNCONFIGURABLE_Q61_P81_TRUE";
              break;
            case 1:
              v1146[0] = &stru_285145FE8;
              if (ValueAtIndex)
              {
                sub_23EB6FF14(ValueAtIndex, v1146, "%ks", v325, v326, v327, v328, v329, "name");
              }

              v1146[0] = &stru_285145FE8;
              if (v1144)
              {
                sub_23EB6FF14(v1144, v1146, "%ks", v325, v326, v327, v328, v329, "name");
              }

              sub_23EBDBF78("(%d) The existing base station named %@ is inferior to the new base station named %@", v323, v324, v325, v326, v327, v328, v329, 402);
              v67 = 1402;
              v768 = "EXISTING_DEVICE_IS_INFERIOR_TRUE";
              break;
            default:
              v1146[0] = &stru_285145FE8;
              if (ValueAtIndex)
              {
                sub_23EB6FF14(ValueAtIndex, v1146, "%ks", v325, v326, v327, v328, v329, "name");
              }

              v1146[0] = &stru_285145FE8;
              if (v1144)
              {
                sub_23EB6FF14(v1144, v1146, "%ks", v325, v326, v327, v328, v329, "name");
              }

              sub_23EBDBF78("(%d) Existing base station named %@ is not inferior to the new base station named %@", v323, v324, v325, v326, v327, v328, v329, 402);
              v67 = 1401;
              v768 = "EXISTING_DEVICE_IS_INFERIOR_FALSE";
              break;
          }

          sub_23EBE9710(Mutable, byte_27E383C00, v768, v763, v764, v765, v766, v767);
          if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
          {
            goto LABEL_945;
          }

          v306 = 402;
          goto LABEL_944;
        }

        LOBYTE(key) = 0;
        if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
        {
          sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", a5, a6, a7, a8, 403);
        }

        v122 = sub_23EBDF2B4(a1, v1144, 1112757313, &key, a5, a6, a7, a8);
        if (v122)
        {
LABEL_1051:
          v35 = v122;
          v36 = 0;
          goto LABEL_68;
        }

        if (!key)
        {
          goto LABEL_444;
        }

        v125 = sub_23EB6A2C0(v1144, v123, v124, a4, a5, a6, a7, a8);
        if (v125 >= 0x77)
        {
          v126 = v125;
          LOBYTE(v1146[0]) = 0;
          v122 = sub_23EBDF2B4(a1, v1144, 1632923251, v1146, a5, a6, a7, a8);
          if (v122)
          {
            goto LABEL_1051;
          }

          if (!LOBYTE(v1146[0]))
          {
            if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
            {
              sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "Ignoring kACPFeatureCodeBeingSTA for this product id:(%d)", a5, a6, a7, a8, v126);
            }

            LOBYTE(key) = 0;
          }
        }

        if (key)
        {
          v1146[0] = &stru_285145FE8;
          if (v1144)
          {
            sub_23EB6FF14(v1144, v1146, "%ks", a4, a5, a6, a7, a8, "name");
          }

          sub_23EBDBF78("(%d) Chosen base station named %@ supports STA mode", v123, v124, a4, a5, a6, a7, a8, 403);
          v67 = 404;
          v636 = "CHOSEN_BASE_STATION_SUPPORTS_STA_TRUE";
        }

        else
        {
LABEL_444:
          v1146[0] = &stru_285145FE8;
          if (v1144)
          {
            sub_23EB6FF14(v1144, v1146, "%ks", a4, a5, a6, a7, a8, "name");
          }

          sub_23EBDBF78("(%d) Chosen base station named %@ does not support STA mode", v123, v124, a4, a5, a6, a7, a8, 403);
          v67 = 700;
          v636 = "CHOSEN_BASE_STATION_SUPPORTS_STA_FALSE";
        }

        sub_23EBE9710(Mutable, byte_27E383C00, v636, v631, v632, v633, v634, v635);
        if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
        {
          v306 = 403;
          goto LABEL_944;
        }
      }
    }

    else
    {
      if (v67 > 503)
      {
        if (v67 == 504)
        {
          if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
          {
            sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", a5, a6, a7, a8, 504);
          }

          v1145 = sub_23EBDD20C(*(a1 + 24), v64, v65, a4, a5, a6, a7, a8);
          if (v1145)
          {
            sub_23EBDBF78("(%d) %d existing base stations have been found.", v310, v311, v312, v313, v314, v315, v316, 504);
            v67 = 401;
            v322 = "HOST_BASE_STATIONS_BROWSED_TRUE";
          }

          else
          {
            sub_23EBDBF78("(%d) No existing base stations have been found.", v310, v311, v312, v313, v314, v315, v316, 504);
            v67 = 700;
            v322 = "HOST_BASE_STATIONS_BROWSED_FALSE";
          }

          sub_23EBE9710(Mutable, byte_27E383C00, v322, v317, v318, v319, v320, v321);
          if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
          {
            goto LABEL_945;
          }

          v306 = 504;
        }

        else if (v67 == 505)
        {
          if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
          {
            sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", a5, a6, a7, a8, 505);
          }

          if (sub_23EBDCE88(v1144, v64, v65, a4, a5, a6, a7, a8))
          {
            v1146[0] = &stru_285145FE8;
            if (v1144)
            {
              sub_23EB6FF14(v1144, v1146, "%ks", v381, v382, v383, v384, v385, "name");
            }

            sub_23EBDBF78("(%d) The base station named %@ has a DHCP lease.", v379, v380, v381, v382, v383, v384, v385, 505);
            v67 = 506;
            v618 = "BASE_HAS_DHCP_LEASE_TRUE";
          }

          else
          {
            v1146[0] = &stru_285145FE8;
            if (v1144)
            {
              sub_23EB6FF14(v1144, v1146, "%ks", v381, v382, v383, v384, v385, "name");
            }

            sub_23EBDBF78("(%d) The base station named %@ does not have a DHCP lease.", v379, v380, v381, v382, v383, v384, v385, 505);
            v67 = 503;
            v618 = "BASE_HAS_DHCP_LEASE_FALSE";
          }

          sub_23EBE9710(Mutable, byte_27E383C00, v618, v613, v614, v615, v616, v617);
          if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
          {
            goto LABEL_945;
          }

          v306 = 505;
        }

        else
        {
          if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
          {
            sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", a5, a6, a7, a8, 506);
          }

          if (sub_23EBDFBC0(a1, v1144, v65, a4, a5, a6, a7, a8))
          {
            v1146[0] = &stru_285145FE8;
            if (v1144)
            {
              sub_23EB6FF14(v1144, v1146, "%ks", v71, v72, v73, v74, v75, "name");
            }

            sub_23EBDBF78("(%d) The base station named %@ has a public routable IP address.", v69, v70, v71, v72, v73, v74, v75, 506);
            v67 = 1701;
            v606 = "BASE_HAS_PUBLIC_ROUTABLE_IP_TRUE";
          }

          else
          {
            v1146[0] = &stru_285145FE8;
            if (v1144)
            {
              sub_23EB6FF14(v1144, v1146, "%ks", v71, v72, v73, v74, v75, "name");
            }

            sub_23EBDBF78("(%d) The base station named %@ does not have a public routable IP address.", v69, v70, v71, v72, v73, v74, v75, 506);
            v67 = 503;
            v606 = "BASE_HAS_PUBLIC_ROUTABLE_IP_FALSE";
          }

          sub_23EBE9710(Mutable, byte_27E383C00, v606, v601, v602, v603, v604, v605);
          if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
          {
            goto LABEL_945;
          }

          v306 = 506;
        }

        goto LABEL_944;
      }

      if (v67 == 502)
      {
        if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
        {
          sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", a5, a6, a7, a8, 502);
        }

        if (sub_23EBDCDD0(v1144, v64, v65, a4, a5, a6, a7, a8))
        {
          v1146[0] = &stru_285145FE8;
          if (v1144)
          {
            sub_23EB6FF14(v1144, v1146, "%ks", v374, v375, v376, v377, v378, "name");
          }

          sub_23EBDBF78("(%d) A PPPoE server is available to the base station named %@.", v372, v373, v374, v375, v376, v377, v378, 502);
          v67 = 1701;
          v612 = "BASE_HAS_PPPOE_AVAILABLE_TRUE";
        }

        else
        {
          v1146[0] = &stru_285145FE8;
          if (v1144)
          {
            sub_23EB6FF14(v1144, v1146, "%ks", v374, v375, v376, v377, v378, "name");
          }

          sub_23EBDBF78("(%d) A PPPoE server is not available to the base station named %@.", v372, v373, v374, v375, v376, v377, v378, 502);
          v67 = 505;
          v612 = "BASE_HAS_PPPOE_AVAILABLE_FALSE";
        }

        sub_23EBE9710(Mutable, byte_27E383C00, v612, v607, v608, v609, v610, v611);
        if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
        {
          goto LABEL_945;
        }

        v306 = 502;
        goto LABEL_944;
      }

      if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
      {
        sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", a5, a6, a7, a8, 503);
      }

      v1145 = 0;
      v218 = sub_23EBB7360(v1144, @"local.", @"_airport._tcp", 0, 2u, 1, &theDict);
      if (v218 != -6735)
      {
        v35 = v218;
        v1146[0] = 0;
        if (v218)
        {
          goto LABEL_1053;
        }

        if (!theDict)
        {
          goto LABEL_1114;
        }

        v221 = CFDictionaryGetCount(theDict);
        v219 = theDict;
        if (v221)
        {
          sub_23EBDC8C0("State 501 remote browse results \n", theDict, v220, a4, a5, a6, a7, a8);
          v35 = sub_23EBDE648(theDict, v1146, v222, v223, v224, v225, v226, v227);
          if (theDict)
          {
            CFRelease(theDict);
            theDict = 0;
          }

          if (v35)
          {
LABEL_1053:
            v36 = 0;
            goto LABEL_10;
          }

          if (!v1146[0])
          {
            goto LABEL_1114;
          }

          v35 = sub_23EBE220C(a1, v1146[0], *(a1 + 24), *(a1 + 32), &theArray);
          if (v1146[0])
          {
            CFRelease(v1146[0]);
            v1146[0] = 0;
          }

          if (v35 == -6727)
          {
            v1145 = 0;
          }

          else
          {
            if (v35)
            {
              goto LABEL_1053;
            }

            if (!theArray)
            {
LABEL_1114:
              v36 = 0;
              v35 = 4294960568;
              goto LABEL_10;
            }

            v1145 = CFArrayGetCount(theArray);
          }
        }

        else if (theDict)
        {
          CFRelease(theDict);
          theDict = 0;
        }
      }

      if (v1145 == 1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
        v715 = CFArrayGetValueAtIndex(theArray, 0);
        v721 = sub_23EBDE464(v715, *(a1 + 24), &ValueAtIndex, v716, v717, v718, v719, v720);
        if (v721)
        {
          v35 = v721;
          if (v721 != -6727)
          {
            goto LABEL_1053;
          }
        }

        if (!ValueAtIndex)
        {
          v36 = 0;
          v35 = 4294960569;
          goto LABEL_10;
        }

        CFRetain(ValueAtIndex);
        v1146[0] = &stru_285145FE8;
        if (ValueAtIndex)
        {
          sub_23EB6FF14(ValueAtIndex, v1146, "%ks", v724, v725, v726, v727, v728, "name");
        }

        v1146[0] = &stru_285145FE8;
        if (v1144)
        {
          sub_23EB6FF14(v1144, v1146, "%ks", v724, v725, v726, v727, v728, "name");
        }

        sub_23EBDBF78("(%d) One base station named %@ is detected on the WAN port of the base station named %@.", v722, v723, v724, v725, v726, v727, v728, 503);
        sub_23EBE98EC(Mutable, byte_27E383C00, "NUMBER_BASE_STATIONS_ON_WAN_PORT_IS_ONE_TRUE", v1145, v744, v745, v746, v747);
        v67 = 1501;
      }

      else if (v1145)
      {
        if (v1145 < 2)
        {
          v67 = 503;
        }

        else
        {
          if (sub_23EBE1A10(a1, theArray, &ValueAtIndex, a4, a5, a6, a7, a8) == -6727)
          {
            v1146[0] = &stru_285145FE8;
            if (v1144)
            {
              sub_23EB6FF14(v1144, v1146, "%ks", v731, v732, v733, v734, v735, "name");
            }

            sub_23EBDBF78("(%d) %d base stations are detected on the WAN port of the base station named %@. However, one could not be automatically chosen as a canidate for extension.", v729, v730, v731, v732, v733, v734, v735, 503);
            sub_23EBE98EC(Mutable, byte_27E383C00, "NUMBER_BASE_STATIONS_ON_WAN_PORT_IS_GREATER_THAN_ONE_TRUE", v1145, v882, v883, v884, v885);
            cf = theArray;
            CFRetain(theArray);
            v67 = 1502;
          }

          else
          {
            v796 = sub_23EBDE464(ValueAtIndex, *(a1 + 24), &ValueAtIndex, v731, v732, v733, v734, v735);
            if (v796)
            {
              v35 = v796;
              if (v796 != -6727)
              {
                v36 = 0;
                goto LABEL_68;
              }
            }

            if (!ValueAtIndex)
            {
              v36 = 0;
              v35 = 4294960569;
              goto LABEL_68;
            }

            CFRetain(ValueAtIndex);
            v1146[0] = &stru_285145FE8;
            if (v1144)
            {
              sub_23EB6FF14(v1144, v1146, "%ks", v799, v800, v801, v802, v803, "name");
            }

            v1146[0] = &stru_285145FE8;
            if (ValueAtIndex)
            {
              sub_23EB6FF14(ValueAtIndex, v1146, "%ks", v799, v800, v801, v802, v803, "name");
            }

            sub_23EBDBF78("(%d) %d base stations are detected on the WAN port of the base station named %@. The base station named %@ was automatically chosen as a canidate for extension.", v797, v798, v799, v800, v801, v802, v803, 503);
            sub_23EBE98EC(Mutable, byte_27E383C00, "NUMBER_BASE_STATIONS_ON_WAN_PORT_IS_GREATER_THAN_ONE_TRUE", v1145, v886, v887, v888, v889);
            v67 = 1501;
          }

          v9 = MEMORY[0x277CBECE8];
        }
      }

      else
      {
        v1146[0] = &stru_285145FE8;
        if (v1144)
        {
          sub_23EB6FF14(v1144, v1146, "%ks", a4, a5, a6, a7, a8, "name");
        }

        sub_23EBDBF78("(%d) No base stations are detected on the WAN port of the base station named %@.", v219, v220, a4, a5, a6, a7, a8, 503);
        sub_23EBE98EC(Mutable, byte_27E383C00, "NUMBER_BASE_STATIONS_ON_WAN_PORT_IS_ZERO_TRUE", v1145, v736, v737, v738, v739);
        v67 = 504;
      }

      if (theArray)
      {
        CFRelease(theArray);
        theArray = 0;
      }

      if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
      {
        v306 = 503;
        goto LABEL_944;
      }
    }

LABEL_945:
    v35 = 4294960573;
    if (sub_23EBEA238(*(a1 + 48)))
    {
      goto LABEL_1009;
    }
  }

  if (v67 <= 700)
  {
    if (v67 <= 605)
    {
      if (v67 > 603)
      {
        if (v67 == 604)
        {
          if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
          {
            sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", a5, a6, a7, a8, 604);
          }

          if (v1140 == 3)
          {
            v130 = sub_23EBE0B4C(604, Mutable, v1141, 0xFFFFFFFFLL, v1139, @"BSSetupRecommend_OfferRestore", v1144, 0, 0, 0, 0, a1);
            if (v130)
            {
              goto LABEL_1008;
            }

            v1146[0] = &stru_285145FE8;
            if (v1144)
            {
              sub_23EB6FF14(v1144, v1146, "%ks", a4, a5, a6, a7, a8, "name");
            }

            sub_23EBDBF78("(%d) The chosen base station named %@ previous configuration is bridge mode and can be restored.", v368, v369, a4, a5, a6, a7, a8, 604);
            v67 = 501;
            v647 = "RESTORE_PROFILE_ROUTER_MODE_IS_BRIDGE_TRUE";
          }

          else
          {
            v1146[0] = &stru_285145FE8;
            if (v1144)
            {
              sub_23EB6FF14(v1144, v1146, "%ks", a4, a5, a6, a7, a8, "name");
            }

            sub_23EBDBF78("(%d) The chosen base station named %@ previous configuration is not bridge mode.", v64, v65, a4, a5, a6, a7, a8, 604);
            v67 = 608;
            v647 = "RESTORE_PROFILE_ROUTER_MODE_IS_BRIDGE_FALSE";
          }

          sub_23EBE98EC(Mutable, byte_27E383C00, v647, v1145, v643, v644, v645, v646);
          if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
          {
            goto LABEL_945;
          }

          v306 = 604;
        }

        else
        {
          if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
          {
            sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", a5, a6, a7, a8, 605);
          }

          if (sub_23EB6B5A0(v1144, v64, v65, a4, a5, a6, a7, a8))
          {
            v1146[0] = &stru_285145FE8;
            if (v1144)
            {
              sub_23EB6FF14(v1144, v1146, "%ks", v200, v201, v202, v203, v204, "name");
            }

            sub_23EBDBF78("(%d) The chosen base station named %@ indicates its WAN port is connected.", v198, v199, v200, v201, v202, v203, v204, 605);
            v67 = 604;
            v595 = "WAN_LINK_TRUE";
          }

          else
          {
            v130 = sub_23EBE0B4C(605, Mutable, v1141, 3, 0, @"BSSetupRecommend_OfferNoRestore", v1144, 0, 0, 0, 0, a1);
            if (v130)
            {
              goto LABEL_1008;
            }

            v1146[0] = &stru_285145FE8;
            if (v1144)
            {
              sub_23EB6FF14(v1144, v1146, "%ks", a4, a5, a6, a7, a8, "name");
            }

            sub_23EBDBF78("(%d) The chosen base station named %@ indicates its WAN port is not connected.", v515, v516, a4, a5, a6, a7, a8, 605);
            v67 = 501;
            v595 = "WAN_LINK_FALSE";
          }

          sub_23EBE9710(Mutable, byte_27E383C00, v595, v590, v591, v592, v593, v594);
          if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
          {
            goto LABEL_945;
          }

          v306 = 605;
        }

        goto LABEL_944;
      }

      if (v67 != 602)
      {
        if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
        {
          sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", a5, a6, a7, a8, 603);
        }

        if (sub_23EB6B5A0(v1144, v64, v65, a4, a5, a6, a7, a8))
        {
          v1146[0] = &stru_285145FE8;
          if (v1144)
          {
            sub_23EB6FF14(v1144, v1146, "%ks", v110, v111, v112, v113, v114, "name");
          }

          sub_23EBDBF78("(%d) The chosen base station named %@ indicates its WAN port is connected.", v108, v109, v110, v111, v112, v113, v114, 603);
          v67 = 604;
          v589 = "WAN_LINK_TRUE";
        }

        else
        {
          v130 = sub_23EBE0B4C(603, Mutable, v1141, 0xFFFFFFFFLL, v1139, @"BSSetupRecommend_OfferRestore", v1144, 0, 0, 0, 0, a1);
          if (v130)
          {
            goto LABEL_1008;
          }

          v1146[0] = &stru_285145FE8;
          if (v1144)
          {
            sub_23EB6FF14(v1144, v1146, "%ks", a4, a5, a6, a7, a8, "name");
          }

          sub_23EBDBF78("(%d) The chosen base station named %@ indicates its WAN port is not connected.", v513, v514, a4, a5, a6, a7, a8, 603);
          v67 = 501;
          v589 = "WAN_LINK_FALSE";
        }

        sub_23EBE9710(Mutable, byte_27E383C00, v589, v584, v585, v586, v587, v588);
        if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
        {
          goto LABEL_945;
        }

        v306 = 603;
        goto LABEL_944;
      }

      key = 0;
      if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
      {
        sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", a5, a6, a7, a8, 602);
      }

      sub_23EBEAB18(*(a1 + 48), 14, 0, 0, a5, a6, a7, a8);
      v339 = sub_23EBB0E1C(&v1135);
      if (v339)
      {
        goto LABEL_1010;
      }

      if (!v1135)
      {
        goto LABEL_1012;
      }

      v339 = sub_23EBDEA88(a1, v1144, 0, &key, a5, a6, a7, a8);
      if (v339)
      {
LABEL_1010:
        v35 = v339;
LABEL_1011:
        v36 = 0;
        goto LABEL_10;
      }

      if (!key)
      {
        goto LABEL_1012;
      }

      v35 = sub_23EBB1354(v1135, key);
      if (key)
      {
        CFRelease(key);
        key = 0;
      }

      if (v35)
      {
        goto LABEL_1011;
      }

      if (!sub_23EB6B268(v1144, v340, v341, a4, a5, a6, a7, a8))
      {
        goto LABEL_399;
      }

      v348 = sub_23EBB6418(v1135);
      if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
      {
        sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "BSSwitchToRestoreProfile err: %m\n", v344, v345, v346, v347, v348);
      }

      if (v348)
      {
LABEL_399:
        if (!sub_23EBDD2D4(v1144, v1129, v342, v343, v344, v345, v346, v347))
        {
          goto LABEL_400;
        }

        v1146[0] = 0;
        v339 = sub_23EBDD458(v1144, v1129, v1146, v351, v344, v345, v346, v347);
        if (v339)
        {
          goto LABEL_1010;
        }

        if (!v1146[0])
        {
LABEL_1012:
          v36 = 0;
          v35 = 4294960568;
          goto LABEL_10;
        }

        v352 = sub_23EBB1108(v1135, v1146[0], 0);
        if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
        {
          sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "BSImportFromConfigFile err: %m\n", v344, v345, v346, v347, v352);
        }

        if (v352)
        {
LABEL_400:
          v1146[0] = &stru_285145FE8;
          if (v1144)
          {
            sub_23EB6FF14(v1144, v1146, "%ks", v351, v344, v345, v346, v347, "name");
          }

          sub_23EBDBF78("(%d) The chosen base station %@ does not actually have a restore profile.", v349, v350, v351, v344, v345, v346, v347, 602);
          v67 = 501;
          v658 = "TEXT_RECORD_HAS_PROFILE_OR_PREVIOUS_CONFIG_FILE_FALSE";
LABEL_932:
          sub_23EBE9710(Mutable, byte_27E383C00, v658, v653, v654, v655, v656, v657);
LABEL_933:
          if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
          {
            goto LABEL_945;
          }

          v306 = 602;
          goto LABEL_944;
        }
      }

      v339 = sub_23EBDEECC(v1135, &v1141, &v1139, &v1140, v344, v345, v346, v347);
      if (v339)
      {
        goto LABEL_1010;
      }

      v67 = 602;
      if (v1141 <= 2)
      {
        if (v1141)
        {
          if (v1141 != 1)
          {
            goto LABEL_933;
          }

          v1146[0] = &stru_285145FE8;
          if (v1144)
          {
            sub_23EB6FF14(v1144, v1146, "%ks", a4, a5, a6, a7, a8, "name");
          }

          sub_23EBDBF78("(%d) The previous settings for the chosen base station named %@ are configured to Join a network called %@.", v569, v570, a4, a5, a6, a7, a8, 602);
          v67 = 606;
          v658 = "RESTORE_PROFILE_NETWORK_MODE_JOIN_TRUE";
        }

        else
        {
          v1146[0] = &stru_285145FE8;
          if (v1144)
          {
            sub_23EB6FF14(v1144, v1146, "%ks", a4, a5, a6, a7, a8, "name");
          }

          sub_23EBDBF78("(%d) The previous settings for the chosen base station named %@ are configured to Create a network called %@.", v569, v570, a4, a5, a6, a7, a8, 602);
          v67 = 603;
          v658 = "RESTORE_PROFILE_NETWORK_MODE_CREATE_TRUE";
        }
      }

      else
      {
        switch(v1141)
        {
          case 3:
            v1146[0] = &stru_285145FE8;
            if (v1144)
            {
              sub_23EB6FF14(v1144, v1146, "%ks", a4, a5, a6, a7, a8, "name");
            }

            sub_23EBDBF78("(%d) The previous settings for the chosen base station named %@ are configured with Wi-Fi disabled.", v569, v570, a4, a5, a6, a7, a8, 602);
            v67 = 605;
            v658 = "BASE_STATION_WIRELESS_ENABLED_FALSE";
            break;
          case 10:
            v1146[0] = &stru_285145FE8;
            if (v1144)
            {
              sub_23EB6FF14(v1144, v1146, "%ks", a4, a5, a6, a7, a8, "name");
            }

            sub_23EBDBF78("(%d) The previous settings for the chosen base station named %@ are configured to Extend a network called %@ using WDS.", v569, v570, a4, a5, a6, a7, a8, 602);
            v67 = 606;
            v658 = "RESTORE_PROFILE_NETWORK_MODE_WDS_TRUE";
            break;
          case 20:
            v1146[0] = &stru_285145FE8;
            if (v1144)
            {
              sub_23EB6FF14(v1144, v1146, "%ks", a4, a5, a6, a7, a8, "name");
            }

            sub_23EBDBF78("(%d) The previous settings for the chosen base station named %@ are configured to Extend a network called %@ using DWDS.", v569, v570, a4, a5, a6, a7, a8, 602);
            v67 = 606;
            v658 = "RESTORE_PROFILE_NETWORK_MODE_DWDS_EXTENDER_TRUE";
            break;
          default:
            goto LABEL_933;
        }
      }

      v9 = MEMORY[0x277CBECE8];
      goto LABEL_932;
    }

    if (v67 <= 607)
    {
      if (v67 == 606)
      {
        if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
        {
          sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", a5, a6, a7, a8, 606);
        }

        if (sub_23EBE26E8(v1139, *(a1 + 32), v65, a4, a5, a6, a7, a8))
        {
          v130 = sub_23EBE0B4C(606, Mutable, v1141, 0xFFFFFFFFLL, v1139, @"BSSetupRecommend_OfferRestore", v1144, 0, 0, 0, 0, a1);
          if (v130)
          {
            goto LABEL_1008;
          }

          sub_23EBDBF78("(%d) The network called %@ is visible in the Wi-Fi scan.", v360, v361, a4, a5, a6, a7, a8, 606);
          v67 = 501;
          v367 = "WIRELESS_NETWORK_VISIBLE_IN_NETWORK_SCAN_TRUE";
        }

        else
        {
          sub_23EBDBF78("(%d) The network called %@ is not visible in the Wi-Fi scan.", v353, v354, v355, v356, v357, v358, v359, 606);
          v67 = 607;
          v367 = "WIRELESS_NETWORK_VISIBLE_IN_NETWORK_SCAN_FALSE";
        }

        sub_23EBE9710(Mutable, byte_27E383C00, v367, v362, v363, v364, v365, v366);
        if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
        {
          goto LABEL_945;
        }

        v306 = 606;
        goto LABEL_944;
      }

      if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
      {
        sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", a5, a6, a7, a8, 607);
      }

      v127 = sub_23EBE0544(a1, *(a1 + 32), v1139, 3, &theDict, a6, a7, a8);
      v35 = v127;
      if ((v127 & 0xFFFFFFF7) == 0xFFFFE5B1)
      {
        if (v127 == -6735)
        {
          v130 = sub_23EBE0B4C(607, Mutable, v1141, 1, v1139, @"BSSetupRecommend_OfferNoRestore", v1144, 0, 0, 0, 0, a1);
          goto LABEL_677;
        }

        if (v127 == -6727)
        {
          v130 = sub_23EBE0B4C(607, Mutable, v1141, 2, v1139, @"BSSetupRecommend_OfferNoRestore", v1144, 0, 0, 0, 0, a1);
LABEL_677:
          if (v130)
          {
LABEL_1008:
            v35 = v130;
LABEL_1009:
            v36 = 0;
            goto LABEL_10;
          }
        }

        sub_23EBDBF78("(%d) The network called %@ is not found in a directed Wi-Fi scan.", v128, v129, a4, a5, a6, a7, a8, 607);
        v393 = "WIRELESS_NETWORK_VISIBLE_IN_DIRECT_NETWORK_SCAN_FALSE";
      }

      else
      {
        if (v127)
        {
          v36 = 0;
          goto LABEL_10;
        }

        if (!theDict)
        {
          v36 = 0;
          v35 = 4294960568;
          goto LABEL_10;
        }

        v130 = sub_23EBE0B4C(607, Mutable, v1141, 0xFFFFFFFFLL, v1139, @"BSSetupRecommend_OfferRestore", v1144, 0, 0, 0, 0, a1);
        if (v130)
        {
          goto LABEL_1008;
        }

        sub_23EBDBF78("(%d) The network called %@ is found in a directed Wi-Fi scan.", v386, v387, a4, a5, a6, a7, a8, 607);
        v393 = "WIRELESS_NETWORK_VISIBLE_IN_DIRECT_NETWORK_SCAN_TRUE";
      }

      sub_23EBE9710(Mutable, byte_27E383C00, v393, v388, v389, v390, v391, v392);
      if (theDict)
      {
        CFRelease(theDict);
        theDict = 0;
      }

      if (v1139)
      {
        CFRelease(v1139);
        v1139 = 0;
      }

      if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
      {
        v663 = 607;
        goto LABEL_768;
      }

      goto LABEL_769;
    }

    if (v67 == 608)
    {
      if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
      {
        sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", a5, a6, a7, a8, 608);
      }

      if (sub_23EBDF004(v1135, v64, v65, a4, a5, a6, a7, a8))
      {
        v130 = sub_23EBE0B4C(608, Mutable, v1141, 4, 0, @"BSSetupRecommend_OfferNoRestore", v1144, 0, 0, 0, 0, a1);
        if (v130)
        {
          goto LABEL_1008;
        }

        v1146[0] = &stru_285145FE8;
        if (v1144)
        {
          sub_23EB6FF14(v1144, v1146, "%ks", a4, a5, a6, a7, a8, "name");
        }

        sub_23EBDBF78("(%d) The DHCP range in the the previous settings of the chosen base station named %@ conflicts with the network the WAN port is plugged in to.", v370, v371, a4, a5, a6, a7, a8, 608);
        v630 = "DHCP_RANGE_CONFLICT_TRUE";
      }

      else
      {
        v130 = sub_23EBE0B4C(608, Mutable, v1141, 0xFFFFFFFFLL, v1139, @"BSSetupRecommend_OfferRestore", v1144, 0, 0, 0, 0, a1);
        if (v130)
        {
          goto LABEL_1008;
        }

        v1146[0] = &stru_285145FE8;
        if (v1144)
        {
          sub_23EB6FF14(v1144, v1146, "%ks", a4, a5, a6, a7, a8, "name");
        }

        sub_23EBDBF78("(%d) The DHCP range in the previous settings of the chosen base station named %@ does not conflict with the network the WAN port is plugged in to.", v567, v568, a4, a5, a6, a7, a8, 608);
        v630 = "DHCP_RANGE_CONFLICT_FALSE";
      }

      sub_23EBE9710(Mutable, byte_27E383C00, v630, v625, v626, v627, v628, v629);
      sub_23EBB0D6C(v1135);
      v1135 = 0;
      if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
      {
        v663 = 608;
LABEL_768:
        sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Exiting state: %d\n********************************************************************************\n\n", v659, v660, v661, v662, v663);
      }

LABEL_769:
      v67 = 501;
      goto LABEL_945;
    }

    if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
    {
      sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", a5, a6, a7, a8, 700);
    }

    if (v1128)
    {
      sub_23EBDBF78("(%d) Already looked at preferred networks.", v64, v65, a4, a5, a6, a7, a8, 700);
      sub_23EBE9710(Mutable, byte_27E383C00, "CONSIDERED_PREFERRED_NETWORKS_TRUE", v205, v206, v207, v208, v209);
      if (sub_23EBE0A74(v1144, v1131, v210, v211, v212, v213, v214, v215))
      {
        if (v1131)
        {
          v216 = v1131;
        }

        else
        {
          v216 = v1144;
        }

        v217 = sub_23EBDDBF8(*(a1 + 32), v216, &cf);
        if (v217 == -6727)
        {
          v67 = 1103;
        }

        else
        {
          v35 = v217;
          if (v217)
          {
            v36 = 0;
            goto LABEL_10;
          }

          if (!cf)
          {
            v36 = 0;
            v35 = 4294960568;
            goto LABEL_10;
          }

          v67 = 1406;
        }
      }

      else
      {
        v67 = 1701;
      }
    }

    else
    {
      sub_23EBDBF78("(%d) Will look at preferred networks.", v64, v65, a4, a5, a6, a7, a8, 700);
      sub_23EBE9710(Mutable, byte_27E383C00, "CONSIDERED_PREFERRED_NETWORKS_FALSE", v571, v572, v573, v574, v575);
      v67 = 701;
      v1128 = 1;
    }

    if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
    {
      v306 = 700;
      goto LABEL_944;
    }

    goto LABEL_945;
  }

  if (v67 > 801)
  {
    if (v67 >= 807)
    {
      if (v67 <= 807)
      {
        if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
        {
          sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", a5, a6, a7, a8, 807);
        }

        if (sub_23EBDD648(v1142, v64, v65, a4, a5, a6, a7, a8))
        {
          v67 = 1802;
          v235 = "(%d) This network is an 802.11g model. We don't support it with this software.";
          v236 = "CHOSEN_NETWORK_IS_80211G_TRUE";
        }

        else if (sub_23EBDD6D8(v1142, v228, v229, v230, v231, v232, v233, v234))
        {
          v1131 = v1142;
          v1142 = 0;
          v67 = 1104;
          v235 = "(%d) This network is too new to be set up with this software.";
          v236 = "CHOSEN_NETWORK_IS_TOO_NEW_TRUE";
        }

        else
        {
          v67 = 808;
          v235 = "(%d) This network is not an 802.11g model. OK to continue.";
          v236 = "CHOSEN_NETWORK_IS_80211G_FALSE";
        }

        sub_23EBDBF78(v235, v228, v229, v230, v231, v232, v233, v234, 807);
        sub_23EBE9710(Mutable, byte_27E383C00, v236, v710, v711, v712, v713, v714);
        if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
        {
          goto LABEL_945;
        }

        v306 = 807;
        goto LABEL_944;
      }

      if (v67 <= 1100)
      {
        if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
        {
          sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", a5, a6, a7, a8, 808);
        }

        if (sub_23EC0FA18(v1142, v64))
        {
          v1131 = v1142;
          v1142 = 0;
          v67 = 105;
          v83 = "(%d) This network is a STA-only device.";
          v84 = "CHOSEN_NETWORK_IS_STA_ONLY_TRUE";
        }

        else
        {
          v67 = 802;
          v83 = "(%d) This network is not a STA-only device.";
          v84 = "CHOSEN_NETWORK_IS_STA_ONLY_FALSE";
        }

        sub_23EBDBF78(v83, v76, v77, v78, v79, v80, v81, v82, 808);
        sub_23EBE9710(Mutable, byte_27E383C00, v84, v486, v487, v488, v489, v490);
        if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
        {
          goto LABEL_945;
        }

        v306 = 808;
        goto LABEL_944;
      }

      if (v67 <= 1405)
      {
        if (v67 > 1200)
        {
          if (v67 > 1401)
          {
            if (v67 == 1402)
            {
              if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
              {
                sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", a5, a6, a7, a8, 1402);
              }

              v1031 = sub_23EBE0B4C(1402, Mutable, -1, 0xFFFFFFFFLL, 0, @"BSSetupRecommend_OfferReplace", v1144, 0, ValueAtIndex, 0, 0, a1);
              if (v1031)
              {
                v35 = v1031;
                v36 = 0;
                goto LABEL_68;
              }

              v1146[0] = &stru_285145FE8;
              if (ValueAtIndex)
              {
                sub_23EB6FF14(ValueAtIndex, v1146, "%ks", a4, a5, a6, a7, a8, "name");
              }

              v1146[0] = &stru_285145FE8;
              if (v1144)
              {
                sub_23EB6FF14(v1144, v1146, "%ks", a4, a5, a6, a7, a8, "name");
              }

              sub_23EBDBF78("(%d) Offer to Replace the existing base station named %@ with the chosen base station named %@.", v1032, v1033, a4, a5, a6, a7, a8, 1402);
              sub_23EBE9710(Mutable, byte_27E383C00, "REPLACE_PREVIOUSLY_CONFIGURED_DEVICE", v1090, v1091, v1092, v1093, v1094);
              v9 = MEMORY[0x277CBECE8];
              if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
              {
                goto LABEL_1283;
              }
            }

            else
            {
              if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
              {
                sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", a5, a6, a7, a8, 1403);
              }

              theArray = 0;
              if (sub_23EBE0A74(v1144, v1131, v65, a4, a5, a6, a7, a8))
              {
                v994 = (v1131 ? v1131 : v1144);
                v995 = sub_23EBDDBF8(*(a1 + 32), v994, &theArray);
                if (v995)
                {
                  v35 = v995;
                  if (v995 != -6727)
                  {
                    goto LABEL_1043;
                  }
                }
              }

              v35 = sub_23EBE0B4C(1403, Mutable, -1, 0xFFFFFFFFLL, 0, @"BSSetupRecommend_OfferJoinNetwork", v1144, v1131, 0, v1142, theArray, a1);
              if (theArray)
              {
                CFRelease(theArray);
                theArray = 0;
              }

              if (v35)
              {
LABEL_1043:
                v36 = 0;
                goto LABEL_68;
              }

              v1146[0] = &stru_285145FE8;
              if (v1142)
              {
                sub_23EB6FF14(v1142, v1146, "%kO", a4, a5, a6, a7, a8, @"SSID_STR");
              }

              if (v1144)
              {
                v1146[0] = &stru_285145FE8;
                sub_23EB6FF14(v1144, v1146, "%ks", a4, a5, a6, a7, a8, "name");
              }

              else
              {
                v1146[0] = &stru_285145FE8;
                if (v1131)
                {
                  sub_23EB6FF14(v1131, v1146, "%kO", a4, a5, a6, a7, a8, @"SSID_STR");
                }
              }

              sub_23EBDBF78("(%d) Offer to Join the network called %@ with the chosen base station named %@.", v996, v997, a4, a5, a6, a7, a8, 1403);
              sub_23EBE9710(Mutable, byte_27E383C00, "JOIN_WIRELESS_NETWORK", v1115, v1116, v1117, v1118, v1119);
              v9 = MEMORY[0x277CBECE8];
              if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
              {
                goto LABEL_1283;
              }
            }
          }

          else if (v67 == 1201)
          {
            if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
            {
              sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", a5, a6, a7, a8, 1201);
            }

            v1016 = sub_23EBE0F24(1201, Mutable, a1);
            if (v1016)
            {
              v35 = v1016;
              v36 = 0;
              goto LABEL_68;
            }

            sub_23EBDBF78("(%d) Cannot find any unconfigured AirPort base stations and all configured devices appear to be functioning normally.", v1017, v1018, a4, a5, a6, a7, a8, 1201);
            sub_23EBE9710(Mutable, byte_27E383C00, "NOTHING_FOUND_TO_CONFIGURE", v1060, v1061, v1062, v1063, v1064);
            v9 = MEMORY[0x277CBECE8];
            if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
            {
              goto LABEL_1283;
            }
          }

          else
          {
            if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
            {
              sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", a5, a6, a7, a8, 1401);
            }

            v973 = sub_23EBE0B4C(1401, Mutable, -1, 0xFFFFFFFFLL, 0, @"BSSetupRecommend_OfferExtendWirelessly", v1144, 0, ValueAtIndex, 0, 0, a1);
            if (v973)
            {
              v35 = v973;
              v36 = 0;
              goto LABEL_68;
            }

            v1146[0] = &stru_285145FE8;
            if (ValueAtIndex)
            {
              sub_23EB6FF14(ValueAtIndex, v1146, "%ks", a4, a5, a6, a7, a8, "name");
            }

            v1146[0] = &stru_285145FE8;
            if (v1144)
            {
              sub_23EB6FF14(v1144, v1146, "%ks", a4, a5, a6, a7, a8, "name");
            }

            sub_23EBDBF78("(%d) Offer to Extend the existing base station named %@ wirelessly with the chosen base station named %@.", v974, v975, a4, a5, a6, a7, a8, 1401);
            sub_23EBE9710(Mutable, byte_27E383C00, "EXTEND_PREVIOUSLY_CONFIGURED_DEVICE_WIRELESSLY", v1105, v1106, v1107, v1108, v1109);
            v9 = MEMORY[0x277CBECE8];
            if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
            {
              goto LABEL_1283;
            }
          }
        }

        else if (v67 > 1102)
        {
          if (v67 == 1103)
          {
            if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
            {
              sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", a5, a6, a7, a8, 1103);
            }

            sub_23EBE0B4C(1103, Mutable, -1, 0xFFFFFFFFLL, 0, @"BSSetupRecommend_NoNetworkToJoin", v1144, v1131, 0, 0, 0, a1);
            sub_23EBDBF78("(%d) No network was found for the STA-only device.", v1019, v1020, v1021, v1022, v1023, v1024, v1025, 1103);
            sub_23EBE9710(Mutable, byte_27E383C00, "TELL_USER_NO_NETWORK_FOR_STA_ONLY", v1026, v1027, v1028, v1029, v1030);
            v9 = MEMORY[0x277CBECE8];
            if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
            {
              goto LABEL_1283;
            }
          }

          else
          {
            if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
            {
              sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", a5, a6, a7, a8, 1104);
            }

            sub_23EBE0B4C(1104, Mutable, -1, 0xFFFFFFFFLL, 0, @"BSSetupRecommend_DeviceIsTooNewToSetUp", v1144, v1131, 0, 0, 0, a1);
            sub_23EBDBF78("(%d) Device is too new to set up.", v982, v983, v984, v985, v986, v987, v988, 1104);
            sub_23EBE9710(Mutable, byte_27E383C00, "TELL_USER_DEVICE_IS_TOO_NEW_TO_SET_UP", v989, v990, v991, v992, v993);
            v9 = MEMORY[0x277CBECE8];
            if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
            {
              goto LABEL_1283;
            }
          }
        }

        else if (v67 == 1101)
        {
          if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
          {
            sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", a5, a6, a7, a8, 1101);
          }

          sub_23EBE0B4C(1101, Mutable, -1, 0xFFFFFFFFLL, 0, @"BSSetupRecommend_UseAUFor80211g", v1144, 0, 0, 0, 0, a1);
          sub_23EBDBF78("(%d) Use AirPort Utility for 802.11g to configure this base station.", v1004, v1005, v1006, v1007, v1008, v1009, v1010, 1101);
          sub_23EBE9710(Mutable, byte_27E383C00, "TELL_USER_USE_AU_FOR_80211G", v1011, v1012, v1013, v1014, v1015);
          v9 = MEMORY[0x277CBECE8];
          if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
          {
            goto LABEL_1283;
          }
        }

        else
        {
          if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
          {
            sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", a5, a6, a7, a8, 1102);
          }

          sub_23EBE0B4C(1102, Mutable, -1, 0xFFFFFFFFLL, 0, @"BSSetupRecommend_FirmwareUpdateRequired", v1144, 0, 0, 0, 0, a1);
          sub_23EBDBF78("(%d) A firmware update is required before configuring this base station.", v957, v958, v959, v960, v961, v962, v963, 1102);
          sub_23EBE9710(Mutable, byte_27E383C00, "TELL_USER_FIRMWARE_UPDATE_REQUIRED", v964, v965, v966, v967, v968);
          v9 = MEMORY[0x277CBECE8];
          if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
          {
            goto LABEL_1283;
          }
        }

        goto LABEL_1282;
      }

      if (v67 <= 1500)
      {
        if (v67 > 1407)
        {
          if (v67 == 1408)
          {
            if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
            {
              sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", a5, a6, a7, a8, 1408);
            }

            v1043 = sub_23EBE0B4C(1408, Mutable, -1, 1, 0, @"BSSetupRecommend_OfferReplaceSourceIsUnconfigurable", v1144, 0, ValueAtIndex, 0, 0, a1);
            if (v1043)
            {
              v35 = v1043;
              v36 = 0;
              goto LABEL_68;
            }

            v1146[0] = &stru_285145FE8;
            if (ValueAtIndex)
            {
              sub_23EB6FF14(ValueAtIndex, v1146, "%ks", a4, a5, a6, a7, a8, "name");
            }

            v1146[0] = &stru_285145FE8;
            if (v1144)
            {
              sub_23EB6FF14(v1144, v1146, "%ks", a4, a5, a6, a7, a8, "name");
            }

            sub_23EBDBF78("(%d) Offer to Replace the existing base station named %@ with the chosen base station named %@ . The existing base station is a Q61 or P81.", v1044, v1045, a4, a5, a6, a7, a8, 1408);
            sub_23EBE9710(Mutable, byte_27E383C00, "REPLACE_PREVIOUSLY_CONFIGURED_DEVICE_UNCONFIGURABLE", v1100, v1101, v1102, v1103, v1104);
            v9 = MEMORY[0x277CBECE8];
            if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
            {
              goto LABEL_1283;
            }
          }

          else
          {
            if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
            {
              sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", a5, a6, a7, a8, 1409);
            }

            v998 = sub_23EBE0B4C(1409, Mutable, -1, 2, 0, @"BSSetupRecommend_OfferReplaceSourceIsUnconfigurable", v1144, 0, ValueAtIndex, 0, 0, a1);
            if (v998)
            {
              v35 = v998;
              v36 = 0;
              goto LABEL_68;
            }

            v1146[0] = &stru_285145FE8;
            if (ValueAtIndex)
            {
              sub_23EB6FF14(ValueAtIndex, v1146, "%ks", a4, a5, a6, a7, a8, "name");
            }

            v1146[0] = &stru_285145FE8;
            if (v1144)
            {
              sub_23EB6FF14(v1144, v1146, "%ks", a4, a5, a6, a7, a8, "name");
            }

            sub_23EBDBF78("(%d) Offer to Replace the existing base station named %@ with the chosen base station named %@ . The existing base station is unconfigurable.", v999, v1000, a4, a5, a6, a7, a8, 1409);
            sub_23EBE9710(Mutable, byte_27E383C00, "REPLACE_PREVIOUSLY_CONFIGURED_DEVICE_UNCONFIGURABLE", v1110, v1111, v1112, v1113, v1114);
            v9 = MEMORY[0x277CBECE8];
            if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
            {
              goto LABEL_1283;
            }
          }

          goto LABEL_1282;
        }

        if (v67 == 1406)
        {
          if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
          {
            sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", a5, a6, a7, a8, 1406);
          }

          v1040 = sub_23EBE0B4C(1406, Mutable, -1, 0xFFFFFFFFLL, 0, @"BSSetupRecommend_AskUserChooseNetworkToJoin", v1144, v1131, 0, 0, cf, a1);
          if (v1040)
          {
            v35 = v1040;
            v36 = 0;
            goto LABEL_68;
          }

          if (v1144)
          {
            v1146[0] = &stru_285145FE8;
            sub_23EB6FF14(v1144, v1146, "%ks", a4, a5, a6, a7, a8, "name");
          }

          else
          {
            v1146[0] = &stru_285145FE8;
            if (v1131)
            {
              sub_23EB6FF14(v1131, v1146, "%kO", a4, a5, a6, a7, a8, @"SSID_STR");
            }
          }

          sub_23EBDBF78("(%d) Unable to make a configuration suggestion for the chosen base station or network named %@.", v1041, v1042, a4, a5, a6, a7, a8, 1406);
          sub_23EBE9710(Mutable, byte_27E383C00, "JOIN_WIRELESS_NETWORK", v1095, v1096, v1097, v1098, v1099);
          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          if (dword_27E382C08 <= 800)
          {
            v9 = MEMORY[0x277CBECE8];
            if (dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
            {
              goto LABEL_1283;
            }

            goto LABEL_1282;
          }
        }

        else
        {
          if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
          {
            sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", a5, a6, a7, a8, 1407);
          }

          v976 = sub_23EBE0B4C(1407, Mutable, -1, 0xFFFFFFFFLL, 0, @"BSSetupRecommend_AskUserChooseBaseWireless", v1144, 0, 0, 0, cf, a1);
          if (v976)
          {
            v35 = v976;
            v36 = 0;
            goto LABEL_68;
          }

          v1146[0] = &stru_285145FE8;
          if (v1144)
          {
            sub_23EB6FF14(v1144, v1146, "%ks", a4, a5, a6, a7, a8, "name");
          }

          sub_23EBDBF78("(%d) Unable to make a configuration suggestion for the chosen base station named %@.", v977, v978, a4, a5, a6, a7, a8, 1407);
          sub_23EBE9710(Mutable, byte_27E383C00, "EXTEND_PREVIOUSLY_CONFIGURED_DEVICE_WIRELESSLY", v1080, v1081, v1082, v1083, v1084);
          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          if (dword_27E382C08 <= 800)
          {
            v9 = MEMORY[0x277CBECE8];
            if (dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
            {
              goto LABEL_1283;
            }

            goto LABEL_1282;
          }
        }
      }

      else if (v67 <= 1700)
      {
        if (v67 == 1501)
        {
          if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
          {
            sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", a5, a6, a7, a8, 1501);
          }

          v1001 = sub_23EBE0B4C(1501, Mutable, -1, 0xFFFFFFFFLL, 0, @"BSSetupRecommend_OfferExtendOverEthernet", v1144, 0, ValueAtIndex, 0, 0, a1);
          if (v1001)
          {
            v35 = v1001;
            v36 = 0;
            goto LABEL_68;
          }

          v1146[0] = &stru_285145FE8;
          if (ValueAtIndex)
          {
            sub_23EB6FF14(ValueAtIndex, v1146, "%ks", a4, a5, a6, a7, a8, "name");
          }

          v1146[0] = &stru_285145FE8;
          if (v1144)
          {
            sub_23EB6FF14(v1144, v1146, "%ks", a4, a5, a6, a7, a8, "name");
          }

          sub_23EBDBF78("(%d) Offer to Extend the existing base station named %@ over ethernet with the chosen base station named %@.", v1002, v1003, a4, a5, a6, a7, a8, 1501);
          sub_23EBE9710(Mutable, byte_27E383C00, "EXTEND_USING_OTHER_BASE_CONFIGURATION_OVER_ETHERNET", v1085, v1086, v1087, v1088, v1089);
          v9 = MEMORY[0x277CBECE8];
          if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
          {
            goto LABEL_1283;
          }

          goto LABEL_1282;
        }

        if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
        {
          sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", a5, a6, a7, a8, 1502);
        }

        v979 = sub_23EBE0B4C(1502, Mutable, -1, 0xFFFFFFFFLL, 0, @"BSSetupRecommend_AskUserChooseBaseWired", v1144, 0, 0, 0, cf, a1);
        if (v979)
        {
          v35 = v979;
          v36 = 0;
          goto LABEL_68;
        }

        v1146[0] = &stru_285145FE8;
        if (v1144)
        {
          sub_23EB6FF14(v1144, v1146, "%ks", a4, a5, a6, a7, a8, "name");
        }

        sub_23EBDBF78("(%d) Unable to make a configuration suggestion for the chosen base station named %@.", v980, v981, a4, a5, a6, a7, a8, 1502);
        sub_23EBE9710(Mutable, byte_27E383C00, "ASK_USER_WHAT_TO_DO_2", v1055, v1056, v1057, v1058, v1059);
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        if (dword_27E382C08 <= 800)
        {
          v9 = MEMORY[0x277CBECE8];
          if (dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
          {
            goto LABEL_1283;
          }

          goto LABEL_1282;
        }
      }

      else
      {
        if (v67 == 1701)
        {
          if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
          {
            sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", a5, a6, a7, a8, 1701);
          }

          v1034 = sub_23EBE0B4C(1701, Mutable, -1, 0xFFFFFFFFLL, 0, @"BSSetupRecommend_OfferCreate", v1144, 0, 0, 0, 0, a1);
          if (v1034)
          {
            v35 = v1034;
            v36 = 0;
            goto LABEL_68;
          }

          v1146[0] = &stru_285145FE8;
          if (v1144)
          {
            sub_23EB6FF14(v1144, v1146, "%ks", a4, a5, a6, a7, a8, "name");
          }

          sub_23EBDBF78("(%d) Offer to Create a Wi-Fi network with the chosen base station named %@.", v1035, v1036, a4, a5, a6, a7, a8, 1701);
          sub_23EBE9710(Mutable, byte_27E383C00, "OFFER_TO_CREATE_NETWORK", v1065, v1066, v1067, v1068, v1069);
          v9 = MEMORY[0x277CBECE8];
          if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
          {
            goto LABEL_1283;
          }

          goto LABEL_1282;
        }

        if (v67 == 1801)
        {
          if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
          {
            sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", a5, a6, a7, a8, 1801);
          }

          v1037 = sub_23EBE0EE0(1801, Mutable, a1);
          if (v1037)
          {
            v35 = v1037;
            v36 = 0;
            goto LABEL_68;
          }

          sub_23EBDBF78("(%d) The new AirPort base station needs to be plugged in to your current network using an Ethernet cable.", v1038, v1039, a4, a5, a6, a7, a8, 1801);
          sub_23EBE9710(Mutable, byte_27E383C00, "TELL_USER_CANNOT_FIND_DEVICES", v1070, v1071, v1072, v1073, v1074);
          v9 = MEMORY[0x277CBECE8];
          if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
          {
            goto LABEL_1283;
          }

          goto LABEL_1282;
        }

        if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
        {
          sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", a5, a6, a7, a8, 1802);
        }

        v954 = sub_23EBE0B4C(1802, Mutable, -1, 0xFFFFFFFFLL, 0, @"BSSetupRecommend_UseAUFor80211g", 0, v1142, 0, 0, 0, a1);
        if (v954)
        {
          v35 = v954;
          v36 = 0;
          goto LABEL_68;
        }

        sub_23EBDBF78("(%d) Use AirPort Utility for 802.11g to configure this network.", v955, v956, a4, a5, a6, a7, a8, 1802);
        sub_23EBE9710(Mutable, byte_27E383C00, "TELL_USER_USE_AU_FOR_80211G", v1075, v1076, v1077, v1078, v1079);
        if (v1142)
        {
          CFRelease(v1142);
          v1142 = 0;
        }

        if (dword_27E382C08 <= 800)
        {
          v9 = MEMORY[0x277CBECE8];
          if (dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
          {
            goto LABEL_1283;
          }

LABEL_1282:
          sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Exiting state: %d\n********************************************************************************\n\n", v969, v970, v971, v972, v67);
LABEL_1283:
          v1120 = sub_23EC0C218();
          if (!v1120)
          {
            v1120 = sub_23EBEA18C(*(a1 + 48), v1121, v1122, a4, a5, a6, a7, a8);
          }

          v35 = v1120;
          v36 = 0;
          goto LABEL_10;
        }
      }

      v9 = MEMORY[0x277CBECE8];
      goto LABEL_1283;
    }

    if (v67 != 802)
    {
      key = 0;
      if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
      {
        sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", a5, a6, a7, a8, 806);
      }

      v35 = sub_23EBDD91C(v34, &theDict, v65, a4, a5, a6, a7, a8);
      if (v34)
      {
        CFRelease(v34);
      }

      if (v35 == -6727)
      {
        v1145 = 0;
      }

      else
      {
        if (v35)
        {
          goto LABEL_1292;
        }

        if (!theDict)
        {
LABEL_1147:
          v35 = 4294960568;
          goto LABEL_1292;
        }

        v1145 = CFDictionaryGetCount(theDict);
        sub_23EBDCA2C("State 806 filtered records: \n", theDict, v133, v134, v135, v136, v137, v138);
        if (v1145 == 1)
        {
          v664 = sub_23EBDDE68(theDict, &key, v132, a4, a5, a6, a7, a8);
          if (v664)
          {
            v35 = v664;
            goto LABEL_1292;
          }

          if (!key)
          {
            goto LABEL_1147;
          }

          v665 = CFDictionaryGetValue(theDict, key);
          v1142 = v665;
          if (!v665)
          {
            v35 = 4294960569;
            goto LABEL_1292;
          }

          CFRetain(v665);
          v1146[0] = &stru_285145FE8;
          if (v1142)
          {
            sub_23EB6FF14(v1142, v1146, "%kO", v668, v669, v670, v671, v672, @"SSID_STR");
          }

          sub_23EBDBF78("(%d) Found %d unconfigured network in Wi-Fi scans after filtering and the network is named %@.", v666, v667, v668, v669, v670, v671, v672, 806);
          v67 = 807;
          v152 = "NUMBER_UNCONFIGURED_APPLE_NETWORKS_VISIBLE_IS_ONE_TRUE";
LABEL_454:
          sub_23EBE98EC(Mutable, byte_27E383C00, v152, v1145, v148, v149, v150, v151);
          goto LABEL_455;
        }

        if (v1145)
        {
          if (v1145 >= 2)
          {
            v139 = sub_23EBE0908(a1, 6, theDict, &key, a5, a6, a7, a8);
            if (v139)
            {
              v35 = v139;
            }

            else if (key)
            {
              v140 = CFDictionaryGetValue(theDict, key);
              v1142 = v140;
              if (v140)
              {
                CFRetain(v140);
                v1146[0] = &stru_285145FE8;
                if (v1142)
                {
                  sub_23EB6FF14(v1142, v1146, "%kO", v143, v144, v145, v146, v147, @"SSID_STR");
                }

                sub_23EBDBF78("(%d) Found %d unconfigured networks in Wi-Fi scans and the user chose to configure the one called %@.", v141, v142, v143, v144, v145, v146, v147, 806);
                v67 = 807;
                v1125 = 1;
                v152 = "NUMBER_UNCONFIGURED_APPLE_NETWORKS_VISIBLE_IS_GREATER_THAN_ONE_TRUE";
                v9 = MEMORY[0x277CBECE8];
                goto LABEL_454;
              }

              v35 = 4294960569;
            }

            else
            {
              v35 = 4294960568;
            }

            v9 = MEMORY[0x277CBECE8];
LABEL_1292:
            v36 = 0;
            v34 = 0;
            goto LABEL_10;
          }

          v67 = 806;
LABEL_455:
          if (theDict)
          {
            CFRelease(theDict);
            theDict = 0;
          }

          if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
          {
            sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Exiting state: %d\n********************************************************************************\n\n", a5, a6, a7, a8, 806);
          }

          v34 = 0;
          goto LABEL_945;
        }
      }

      sub_23EBDBF78("(%d) Found zero unconfigured networks in Wi-Fi scans after filtering.", v131, v132, a4, a5, a6, a7, a8, 806);
      v67 = 1201;
      v152 = "NUMBER_UNCONFIGURED_APPLE_NETWORKS_VISIBLE_IS_ZERO_TRUE";
      goto LABEL_454;
    }

    if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
    {
      sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", a5, a6, a7, a8, 802);
    }

    if (v1127)
    {
      sub_23EBDBF78("(%d) The computer has wireless disabled and cannot switch networks", v64, v65, a4, a5, a6, a7, a8, 802);
      sub_23EBE98EC(Mutable, byte_27E383C00, "CAN_SWITCH_NETWORKS_FALSE", v1145, v237, v238, v239, v240);
      v67 = 1801;
LABEL_789:
      if (v1142)
      {
        CFRelease(v1142);
        v1142 = 0;
      }

      if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
      {
        goto LABEL_945;
      }

      v306 = 802;
      goto LABEL_944;
    }

    key = 0;
    sub_23EBE0134(a1, *(a1 + 24), v65, a4, a5, a6, a7, a8);
    if (v517)
    {
      goto LABEL_1112;
    }

    sub_23EBDCCB4("State 802 join network: \n", v1142, v518, a4, a5, a6, a7, a8);
    sub_23EBEAB18(*(a1 + 48), 5, 0, v1142, v519, v520, v521, v522);
    v527 = sub_23EBEEA6C(*(a1 + 48), v1142, v1125 == 0, &key, v523, v524, v525, v526);
    if (v527)
    {
      v35 = v527;
    }

    else if (key)
    {
      sub_23EBEAB18(*(a1 + 48), 6, 0, v1142, a5, a6, a7, a8);
      sub_23EBDCB98("State 802 save base station: \n", key, v528, v529, v530, v531, v532, v533);
      sub_23EBDE070(key, *(a1 + 24), v534, v535, v536, v537, v538, v539);
      if (!v517)
      {
        v1144 = key;
        sub_23EBDFE68(a1, key, 0, 0, a5, a6, a7, a8);
        if (!v517)
        {
          sub_23EBEAB18(*(a1 + 48), 16, 0, v1144, a5, a6, a7, a8);
          v1146[0] = &stru_285145FE8;
          if (v1142)
          {
            sub_23EB6FF14(v1142, v1146, "%kO", v542, v543, v544, v545, v546, @"SSID_STR");
          }

          v1146[0] = &stru_285145FE8;
          if (v1144)
          {
            sub_23EB6FF14(v1144, v1146, "%ks", v542, v543, v544, v545, v546, "name");
          }

          sub_23EBDBF78("(%d) The computer has Wi-Fi enabled and can switch networks. Switched to the network called %@ to configure the AirPort base station named %@", v540, v541, v542, v543, v544, v545, v546, 802);
          sub_23EBE98EC(Mutable, byte_27E383C00, "CAN_SWITCH_NETWORKS_TRUE", v1145, v740, v741, v742, v743);
          v67 = 103;
          goto LABEL_789;
        }
      }

LABEL_1112:
      v35 = v517;
    }

    else
    {
      v35 = 4294960568;
    }

    v36 = 0;
    goto LABEL_10;
  }

  if (v67 > 702)
  {
    if (v67 != 703)
    {
      if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
      {
        sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", a5, a6, a7, a8, 801);
      }

      v175 = sub_23EBDD768(*(a1 + 32), &theDict, v65, a4, a5, a6, a7, a8);
      if (v175 == -6727)
      {
        v1145 = 0;
      }

      else
      {
        v35 = v175;
        if (v175)
        {
          goto LABEL_1226;
        }

        if (!theDict)
        {
          v36 = 0;
          v35 = 4294960568;
          goto LABEL_10;
        }

        v1145 = CFDictionaryGetCount(theDict);
        sub_23EBDCA2C("State 801 scan records: \n", theDict, v178, v179, v180, v181, v182, v183);
        if (v1145 == 1)
        {
          key = 0;
          v681 = sub_23EBDDE68(theDict, &key, v177, a4, a5, a6, a7, a8);
          if (v681)
          {
            v35 = v681;
LABEL_1226:
            v36 = 0;
            goto LABEL_10;
          }

          if (!key)
          {
            v35 = 4294960568;
LABEL_1231:
            v36 = 0;
            goto LABEL_68;
          }

          v682 = CFDictionaryGetValue(theDict, key);
          v1142 = v682;
          if (!v682)
          {
            v35 = 4294960569;
            goto LABEL_1231;
          }

          CFRetain(v682);
          v1146[0] = &stru_285145FE8;
          if (v1142)
          {
            sub_23EB6FF14(v1142, v1146, "%kO", v685, v686, v687, v688, v689, @"SSID_STR");
          }

          sub_23EBDBF78("(%d) One unconfigured network called %@ is visible in Wi-Fi scans and has been chosen.", v683, v684, v685, v686, v687, v688, v689, 801);
          sub_23EBE98EC(Mutable, byte_27E383C00, "NUMBER_UNCONFIGURED_APPLE_NETWORKS_VISIBLE_IS_ONE_TRUE", v1145, v830, v831, v832, v833);
          if (theDict)
          {
            CFRelease(theDict);
            theDict = 0;
          }

          v67 = 807;
          goto LABEL_500;
        }

        if (v1145)
        {
          if (v1145 < 2)
          {
            v67 = 801;
          }

          else
          {
            v34 = theDict;
            CFRetain(theDict);
            if (theDict)
            {
              CFRelease(theDict);
              theDict = 0;
            }

            sub_23EBDBF78("(%d) %d unconfigured network are visible in Wi-Fi scans", v184, v185, v186, v187, v188, v189, v190, 801);
            sub_23EBE98EC(Mutable, byte_27E383C00, "NUMBER_UNCONFIGURED_APPLE_NETWORKS_VISIBLE_IS_GREATER_THAN_ONE_TRUE", v1145, v191, v192, v193, v194);
            v67 = 806;
          }

LABEL_500:
          if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
          {
            goto LABEL_945;
          }

          v306 = 801;
          goto LABEL_944;
        }
      }

      sub_23EBDBF78(v1126, v176, v177, a4, a5, a6, a7, a8, 801);
      sub_23EBE98EC(Mutable, byte_27E383C00, "NUMBER_UNCONFIGURED_APPLE_NETWORKS_VISIBLE_IS_ZERO_TRUE", v1145, v439, v440, v441, v442);
      if (theDict)
      {
        CFRelease(theDict);
        theDict = 0;
      }

      v67 = 1201;
      goto LABEL_500;
    }

    if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
    {
      sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", a5, a6, a7, a8, 703);
    }

    v307 = sub_23EBE1CE0(a1, *(a1 + 32), v1130, v68, 14, &theArray, a7, a8);
    if (v307)
    {
      v35 = v307;
      if (v307 != -6727)
      {
        goto LABEL_1149;
      }

      v1145 = 0;
      goto LABEL_524;
    }

    if (!theArray)
    {
      goto LABEL_1144;
    }

    v1145 = CFArrayGetCount(theArray);
    if (!v1145)
    {
LABEL_524:
      sub_23EBDBF78("(%d) There are no preferred networks found using a directed Wi-Fi scan.", v308, v309, a4, a5, a6, a7, a8, 703);
      sub_23EBE9710(Mutable, byte_27E383C00, "HIDDEN_PREFERRED_NETWORK_FALSE", v463, v464, v465, v466, v467);
      if (sub_23EBE0A74(v1144, v1131, v468, v469, v470, v471, v472, v473))
      {
        if (v1131)
        {
          v474 = v1131;
        }

        else
        {
          v474 = v1144;
        }

        v475 = sub_23EBDDBF8(*(a1 + 32), v474, &cf);
        if (v475 == -6727)
        {
          v67 = 1103;
        }

        else
        {
          v35 = v475;
          if (v475)
          {
            goto LABEL_1149;
          }

          if (!cf)
          {
LABEL_1144:
            v36 = 0;
            v35 = 4294960568;
            goto LABEL_10;
          }

          v67 = 1406;
        }
      }

      else
      {
        v67 = 1701;
      }

      goto LABEL_938;
    }

    key = 0;
    sub_23EBDC50C("State 703 scan records: \n", theArray, v309, a4, a5, a6, a7, a8);
    sub_23EB6FF14(theArray, &key, "[*]", v443, v444, v445, v446, v447, 0);
    if (v448)
    {
      goto LABEL_1148;
    }

    if (!key)
    {
      goto LABEL_1161;
    }

    sub_23EBDE3B8(*(a1 + 32), key, v449, a4, a5, a6, a7, a8);
    if (v448)
    {
LABEL_1148:
      v35 = v448;
LABEL_1149:
      v36 = 0;
      goto LABEL_10;
    }

    if (sub_23EBE0A74(v1144, v1131, v450, a4, a5, a6, a7, a8))
    {
      if (v1131)
      {
        v454 = v1131;
      }

      else
      {
        v454 = v1144;
      }

      v455 = sub_23EBDDBF8(theArray, v454, 0);
      if (v455 != -6727)
      {
        v35 = v455;
        if (v455)
        {
          goto LABEL_1149;
        }

        v1142 = key;
        CFRetain(key);
        v1146[0] = &stru_285145FE8;
        if (v1142)
        {
          sub_23EB6FF14(v1142, v1146, "%kO", v458, v459, v460, v461, v462, @"SSID_STR");
        }

        sub_23EBDBF78("(%d) Found one hidden preferred network called %@ that can be joined by STA-only device.", v456, v457, v458, v459, v460, v461, v462, 703);
        sub_23EBE9710(Mutable, byte_27E383C00, "HIDDEN_PREFERRED_NETWORK_TRUE", v877, v878, v879, v880, v881);
        v67 = 1403;
        goto LABEL_914;
      }

      if (theArray)
      {
        CFRelease(theArray);
        theArray = 0;
      }

      if (v1131)
      {
        v770 = v1131;
      }

      else
      {
        v770 = v1144;
      }

      v771 = sub_23EBDDBF8(*(a1 + 32), v770, &theArray);
      if (v771 != -6727)
      {
        v35 = v771;
        v9 = MEMORY[0x277CBECE8];
        if (v771)
        {
          goto LABEL_1149;
        }

        if (theArray)
        {
          v1145 = CFArrayGetCount(theArray);
          v781 = theArray;
          if (v1145 == 1)
          {
            v782 = CFArrayGetValueAtIndex(theArray, 0);
            v1142 = v782;
            if (!v782)
            {
              goto LABEL_1161;
            }

            CFRetain(v782);
            v1146[0] = &stru_285145FE8;
            if (v1142)
            {
              sub_23EB6FF14(v1142, v1146, "%kO", v785, v786, v787, v788, v789, @"SSID_STR");
            }

            sub_23EBDBF78("(%d) Found one network called %@ that can be joined by STA-only device (after re-filtering all networks).", v783, v784, v785, v786, v787, v788, v789, 703);
            sub_23EBE9710(Mutable, byte_27E383C00, "HIDDEN_PREFERRED_NETWORK_TRUE", v790, v791, v792, v793, v794);
            v67 = 1403;
          }

          else
          {
            theArray = 0;
            cf = v781;
            sub_23EBDBF78("(%d) Found %d networks that could be joined by STA-only device (after re-filtering all networks).", v774, v775, v776, v777, v778, v779, v780, 703);
            sub_23EBE98EC(Mutable, byte_27E383C00, "HIDDEN_PREFERRED_NETWORK_TRUE", v1145, v895, v896, v897, v898);
            v67 = 1406;
          }

          goto LABEL_938;
        }

LABEL_1161:
        v35 = 4294960568;
LABEL_1162:
        v36 = 0;
        goto LABEL_68;
      }

      sub_23EBDBF78("(%d) There are no networks available (after re-filtering all networks).", v772, v773, a4, a5, a6, a7, a8, 703);
      sub_23EBE9710(Mutable, byte_27E383C00, "HIDDEN_PREFERRED_NETWORK_FALSE", v872, v873, v874, v875, v876);
      v67 = 1103;
    }

    else
    {
      v755 = sub_23EBE0244(a1, key, 0, 0xFu, &theArray, v451, v452, v453);
      if (!v755)
      {
        if (!theArray)
        {
          goto LABEL_1161;
        }

        sub_23EBDC01C("State 703 adding browse record: \n", theArray, v757, a4, a5, a6, a7, a8);
        sub_23EBDE2BC(theArray, *(a1 + 24), v834, v835, v836, v837, v838, v839);
        v35 = v842;
        if (theArray)
        {
          CFRelease(theArray);
          theArray = 0;
        }

        v9 = MEMORY[0x277CBECE8];
        if (v35)
        {
          goto LABEL_1149;
        }

        v1146[0] = &stru_285145FE8;
        if (key)
        {
          sub_23EB6FF14(key, v1146, "%kO", a4, a5, a6, a7, a8, @"SSID_STR");
        }

        sub_23EBDBF78("(%d) The hidden preferred network called %@ was found using a directed Wi-Fi scan.", v840, v841, a4, a5, a6, a7, a8, 703);
        sub_23EBE9710(Mutable, byte_27E383C00, "HIDDEN_PREFERRED_NETWORK_TRUE", v843, v844, v845, v846, v847);
        v67 = 401;
        goto LABEL_938;
      }

      if (v755 == -6723)
      {
        v35 = v755;
        goto LABEL_1162;
      }

      sub_23EBDBF78("(%d) There are no preferred networks found using a directed Wi-Fi scan and base stations found. err: %d", v756, v757, a4, a5, a6, a7, a8, 703);
      sub_23EBE9710(Mutable, byte_27E383C00, "HIDDEN_PREFERRED_NETWORK_FALSE", v758, v759, v760, v761, v762);
      v67 = 1701;
    }

LABEL_914:
    v9 = MEMORY[0x277CBECE8];
LABEL_938:
    if (theArray)
    {
      CFRelease(theArray);
      theArray = 0;
    }

    if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
    {
      goto LABEL_945;
    }

    v306 = 703;
    goto LABEL_944;
  }

  if (v67 == 701)
  {
    if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
    {
      sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", a5, a6, a7, a8, 701);
    }

    if (v1133)
    {
      sub_23EBDBF78("(%d) The computer has support for accessing the preferred networks list.", v64, v65, a4, a5, a6, a7, a8, 701);
      sub_23EBE9710(Mutable, byte_27E383C00, "HOST_SUPPORTS_PREFERRED_NETWORK_ACCESS_TRUE", v301, v302, v303, v304, v305);
      v67 = 702;
    }

    else
    {
      sub_23EBDBF78("(%d) The computer does not have support for accessing the preferred networks list.", v64, v65, a4, a5, a6, a7, a8, 701);
      sub_23EBE9710(Mutable, byte_27E383C00, "HOST_SUPPORTS_PREFERRED_NETWORK_ACCESS_FALSE", v554, v555, v556, v557, v558);
      if (sub_23EBE0A74(v1144, v1131, v559, v560, v561, v562, v563, v564))
      {
        if (v1131)
        {
          v565 = v1131;
        }

        else
        {
          v565 = v1144;
        }

        v566 = sub_23EBDDBF8(*(a1 + 32), v565, &cf);
        if (v566 == -6727)
        {
          v67 = 1103;
        }

        else
        {
          v35 = v566;
          if (v566)
          {
            v36 = 0;
            goto LABEL_10;
          }

          if (!cf)
          {
            v36 = 0;
            v35 = 4294960568;
            goto LABEL_10;
          }

          v67 = 1406;
        }
      }

      else
      {
        v67 = 1701;
      }
    }

    if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
    {
      v306 = 701;
LABEL_944:
      sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Exiting state: %d\n********************************************************************************\n\n", a5, a6, a7, a8, v306);
      goto LABEL_945;
    }

    goto LABEL_945;
  }

  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "\n********************************************************************************\n* Entering state: %d (%s)\n********************************************************************************\n\n", a5, a6, a7, a8, 702);
  }

  v119 = sub_23EBE1CE0(a1, *(a1 + 32), v1130, v68, 1, &theArray, a7, a8);
  if (v119)
  {
    v35 = v119;
    if (v119 != -6727)
    {
      goto LABEL_1150;
    }

    v1145 = 0;
    goto LABEL_489;
  }

  if (!theArray)
  {
    v36 = 0;
    v35 = 4294960568;
    goto LABEL_10;
  }

  v1145 = CFArrayGetCount(theArray);
  if (!v1145)
  {
LABEL_489:
    sub_23EBDBF78("(%d) There are no preferred networks visible in the Wi-Fi scan.", v120, v121, a4, a5, a6, a7, a8, 702);
    sub_23EBE9710(Mutable, byte_27E383C00, "VISIBLE_PREFERRED_NETWORK_FALSE", v434, v435, v436, v437, v438);
    v67 = 703;
    goto LABEL_490;
  }

  sub_23EBDC50C("State 702 scan records: \n", theArray, v121, a4, a5, a6, a7, a8);
  v406 = sub_23EBE0A74(v1144, v1131, v400, v401, v402, v403, v404, v405);
  v410 = theArray;
  theArray = 0;
  if (v406)
  {
    if (v1131)
    {
      v411 = v1131;
    }

    else
    {
      v411 = v1144;
    }

    v35 = sub_23EBDDBF8(v410, v411, &theArray);
    if (v410)
    {
      CFRelease(v410);
    }

    if (v35 != -6727)
    {
      if (v35)
      {
        goto LABEL_1294;
      }

      if (!theArray)
      {
        goto LABEL_1218;
      }

      v1145 = CFArrayGetCount(theArray);
      if (v1145 == 1)
      {
        v421 = CFArrayGetValueAtIndex(theArray, 0);
        v1142 = v421;
        if (!v421)
        {
          goto LABEL_1218;
        }

        CFRetain(v421);
        v1146[0] = &stru_285145FE8;
        if (v1142)
        {
          sub_23EB6FF14(v1142, v1146, "%kO", v424, v425, v426, v427, v428, @"SSID_STR");
        }

        sub_23EBDBF78("(%d) Found one preferred network called %@ that can be joined by STA-only device.", v422, v423, v424, v425, v426, v427, v428, 702);
        goto LABEL_488;
      }

      sub_23EBDBF78("(%d) Found %d preferred networks that could be joined by STA-only device.", v414, v415, v416, v417, v418, v419, v420, 702);
      sub_23EBE98EC(Mutable, byte_27E383C00, "NUMBER_PREFERRED_NETWORKS_FOR_STA_ONLY_TO_JOIN_IS_GREATER_THAN_ONE_TRUE", v1145, v848, v849, v850, v851);
      if (theArray)
      {
        CFRelease(theArray);
        theArray = 0;
      }

      if (v1131)
      {
        v852 = v1131;
      }

      else
      {
        v852 = v1144;
      }

      v853 = sub_23EBDDBF8(*(a1 + 32), v852, &theArray);
      if (v853 == -6727)
      {
        sub_23EBDBF78("(%d) There are no networks available (after re-filtering all networks).", v854, v855, a4, a5, a6, a7, a8, 702);
        sub_23EBE9710(Mutable, byte_27E383C00, "VISIBLE_PREFERRED_NETWORK_FALSE", v890, v891, v892, v893, v894);
        v67 = 703;
      }

      else
      {
        v35 = v853;
        if (v853)
        {
          goto LABEL_1294;
        }

        if (!theArray)
        {
LABEL_1218:
          v36 = 0;
          v35 = 4294960568;
          goto LABEL_68;
        }

        v1145 = CFArrayGetCount(theArray);
        v863 = theArray;
        if (v1145 == 1)
        {
          v864 = CFArrayGetValueAtIndex(theArray, 0);
          v1142 = v864;
          if (!v864)
          {
            goto LABEL_1218;
          }

          CFRetain(v864);
          v1146[0] = &stru_285145FE8;
          if (v1142)
          {
            sub_23EB6FF14(v1142, v1146, "%kO", v867, v868, v869, v870, v871, @"SSID_STR");
          }

          sub_23EBDBF78("(%d) Found one network called %@ that can be joined by STA-only device (after re-filtering all networks).", v865, v866, v867, v868, v869, v870, v871, 702);
LABEL_488:
          sub_23EBE9710(Mutable, byte_27E383C00, "NUMBER_PREFERRED_NETWORKS_FOR_STA_ONLY_TO_JOIN_IS_ONE_TRUE", v429, v430, v431, v432, v433);
          v67 = 1403;
        }

        else
        {
          theArray = 0;
          cf = v863;
          sub_23EBDBF78("(%d) Found %d networks that could be joined by STA-only device (after re-filtering all networks).", v856, v857, v858, v859, v860, v861, v862, 702);
          sub_23EBE98EC(Mutable, byte_27E383C00, "NUMBER_PREFERRED_NETWORKS_FOR_STA_ONLY_TO_JOIN_IS_GREATER_THAN_ONE_TRUE", v1145, v923, v924, v925, v926);
          v67 = 1406;
        }
      }

LABEL_957:
      v9 = MEMORY[0x277CBECE8];
LABEL_490:
      if (theArray)
      {
        CFRelease(theArray);
        theArray = 0;
      }

      if (dword_27E382C08 > 800 || dword_27E382C08 == -1 && !sub_23EB74AC8(&dword_27E382C08, 0x320u))
      {
        goto LABEL_945;
      }

      v306 = 702;
      goto LABEL_944;
    }

    sub_23EBDBF78("(%d) There are no preferred networks available after filtering.", v412, v413, a4, a5, a6, a7, a8, 702);
LABEL_824:
    sub_23EBE9710(Mutable, byte_27E383C00, "VISIBLE_PREFERRED_NETWORK_FALSE", v750, v751, v752, v753, v754);
    v67 = 703;
    goto LABEL_490;
  }

  v35 = sub_23EBE0354(a1, v410, 0, 0xFu, &theArray, v407, v408, v409);
  if (v410)
  {
    CFRelease(v410);
  }

  if (v35)
  {
    if (v35 == -6723)
    {
LABEL_1150:
      v36 = 0;
      goto LABEL_10;
    }

    sub_23EBDBF78("(%d) There are no preferred networks successfully joined and base stations found. err: %d", v748, v749, a4, a5, a6, a7, a8, 702);
    goto LABEL_824;
  }

  if (!theArray)
  {
    goto LABEL_1218;
  }

  sub_23EBDC01C("State 702 adding browse record: \n", theArray, v749, a4, a5, a6, a7, a8);
  sub_23EBDE2BC(theArray, *(a1 + 24), v816, v817, v818, v819, v820, v821);
  if (!v822)
  {
    sub_23EBDBF78("(%d) At least one of your preferred networks is visible in the Wi-Fi scan.", v823, v824, a4, a5, a6, a7, a8, 702);
    sub_23EBE9710(Mutable, byte_27E383C00, "VISIBLE_PREFERRED_NETWORK_TRUE", v825, v826, v827, v828, v829);
    v67 = 401;
    goto LABEL_957;
  }

  v35 = v822;
LABEL_1294:
  v36 = 0;
LABEL_68:
  v9 = MEMORY[0x277CBECE8];
LABEL_10:
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "void __BSAutoGuessConfiguration(void *)", 800, "State machine exiting... err: %d state: %d\n", a5, a6, a7, a8, v35);
  }

  if (v36)
  {
    if (!a1)
    {
      goto LABEL_1124;
    }
  }

  else
  {
    sub_23EBEE150(*(a1 + 48));
  }

  *(a1 + 40) = v35;
  v1146[0] = 0;
  if (!sub_23EB6F348(*v9, v1146, "{%ks=%i%ks=%O}", a4, a5, a6, a7, a8, "BSAutoGuessComplete_ErrorResult"))
  {
    if (!v1146[0])
    {
      goto LABEL_1124;
    }

    sub_23EBEAB18(*(a1 + 48), 18, *(a1 + 40), v1146[0], v1046, v1047, v1048, v1049);
    if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
    {
      sub_23EB75374(&dword_27E382C08, "void _BSAutoGuess_NotifyComplete(AutoGuessContextRef)", 800, "Auto Guess END\n", v1050, v1051, v1052, v1053, v1124);
    }
  }

  if (v1146[0])
  {
    CFRelease(v1146[0]);
  }

LABEL_1124:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (theArray)
  {
    CFRelease(theArray);
    theArray = 0;
  }

  if (theDict)
  {
    CFRelease(theDict);
    theDict = 0;
  }

  if (v1139)
  {
    CFRelease(v1139);
    v1139 = 0;
  }

  if (v1142)
  {
    CFRelease(v1142);
    v1142 = 0;
  }

  if (v34)
  {
    CFRelease(v34);
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  result = v1135;
  if (v1135)
  {
    return sub_23EBB0D6C(v1135);
  }

  return result;
}

uint64_t sub_23EBE967C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C08, "OSStatus BSAutoGuess_Cancel(AutoGuessContextRef)", 800, "\n", a5, a6, a7, a8, v11);
  }

  if (!a1)
  {
    return 4294960591;
  }

  v9 = *(a1 + 48);

  return sub_23EBEA004(v9, a2, a3, a4, a5, a6, a7, a8);
}

void sub_23EBE9710(const __CFArray *a1, _BYTE *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && a2 && a3 && *a2 && *a3 && !sub_23EB6FDFC(*MEMORY[0x277CBECE8], a1, "{%ks=%s%ks=%s%ks=%b}", a4, a5, a6, a7, a8, "KEY_TITLE"))
  {
    if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
    {
      Count = CFArrayGetCount(a1);
      sub_23EB75374(&dword_27E382C08, "void LogUnconfigGuessCriterionTrue(CFMutableArrayRef, const char *, const char *)", 800, "\nAuto Guess step: %d\n\t%s\t\t:\t%s\n\t%s\t:\t%s\n", v10, v11, v12, v13, Count + 1);
    }

    v14 = MEMORY[0x277D85CD0];

    dispatch_sync_f(v14, a1, sub_23EBE985C);
  }
}

void sub_23EBE985C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = 0;
  if (a1)
  {
    v8 = sub_23EB6F348(*MEMORY[0x277CBECE8], &v12, "{%ks=%O}", a4, a5, a6, a7, a8, "BSAutoGuess_StateTrace");
    v9 = v12;
    if (v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v12 == 0;
    }

    if (!v10)
    {
      LocalCenter = CFNotificationCenterGetLocalCenter();
      if (LocalCenter)
      {
        CFNotificationCenterPostNotificationWithOptions(LocalCenter, @"com.apple.airport.autoguess.debug.progress", 0, v12, 1uLL);
      }

      v9 = v12;
    }

    if (v9)
    {
      CFRelease(v9);
    }
  }
}

void sub_23EBE98EC(const __CFArray *a1, _BYTE *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && a2 && a3 && *a2 && *a3 && !sub_23EB6FDFC(*MEMORY[0x277CBECE8], a1, "{%ks=%s%ks=%s%ks=%i%ks=%b}", a4, a5, a6, a7, a8, "KEY_TITLE"))
  {
    if (dword_27E382C08 <= 800 && (dword_27E382C08 != -1 || sub_23EB74AC8(&dword_27E382C08, 0x320u)))
    {
      Count = CFArrayGetCount(a1);
      sub_23EB75374(&dword_27E382C08, "void LogUnconfigGuessCriterionTrueWithInt32Value(CFMutableArrayRef, const char *, const char *, int32_t)", 800, "\nAuto Guess step: %d\n\t%s\t\t:\t%s\n\t%s\t:\t%s\n\t%s\t\t:\t%d\n", v10, v11, v12, v13, Count + 1);
    }

    v14 = MEMORY[0x277D85CD0];

    dispatch_sync_f(v14, a1, sub_23EBE985C);
  }
}

BOOL sub_23EBE9A58(const __CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "Boolean BSAssistant_RefObjGood(CFTypeRef)", 800, "inRefObj: %@ \n", a5, a6, a7, a8, a1);
  }

  if (a1 && (TypeID = CFStringGetTypeID(), TypeID == CFGetTypeID(a1)))
  {
    return CFStringCompare(a1, @"bad!", 0) != kCFCompareEqualTo;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23EBE9B10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "OSStatus BSAssistant_ContextCreate(AssistantContextRef *)", 800, " \n", a5, a6, a7, a8, v31);
  }

  if (!a1)
  {
    return 4294960591;
  }

  v9 = malloc_type_calloc(1uLL, 0x68uLL, 0x10A0040E715EC04uLL);
  if (!v9)
  {
    return 4294960568;
  }

  v16 = v9;
  v9[9] = 0;
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 16) = 257;
  *(v9 + 6) = 0;
  *(v9 + 8) = 0;
  *(v9 + 9) = 0;
  v17 = *MEMORY[0x277CBECE8];
  v18 = sub_23EB652C0(*MEMORY[0x277CBECE8], @"BSAssistant", v10, v11, v12, v13, v14, v15);
  *(v16 + 12) = v18;
  if (!v18 || (Mutable = CFStringCreateMutable(v17, 10), (*(v16 + 10) = Mutable) == 0))
  {
    v29 = 4294960568;
LABEL_19:
    sub_23EBE9CC0(v16, v19, v20, v21, v22, v23, v24, v25);
    return v29;
  }

  v27 = Mutable;
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "OSStatus _RefObjSetGood(CFTypeRef)", 800, "inRefObj: %@ \n", v22, v23, v24, v25, v27);
  }

  TypeID = CFStringGetTypeID();
  if (TypeID != CFGetTypeID(v27))
  {
    v29 = 4294960591;
    goto LABEL_19;
  }

  CFStringReplaceAll(v27, @"GOOD");
  v29 = 0;
  v16[22] = 1634561902;
  *a1 = v16;
  return v29;
}

uint64_t sub_23EBE9CC0(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "OSStatus BSAssistant_ContextRelease(AssistantContextRef)", 800, " \n", a5, a6, a7, a8, v15);
  }

  if (!a1 || a1[22] != 1634561902)
  {
    return 4294960578;
  }

  v9 = *(a1 + 6);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 6) = 0;
  }

  v10 = *(a1 + 12);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 12) = 0;
  }

  a1[22] = 1095585614;
  *(a1 + 2) = 0;
  *(a1 + 8) = 0;
  *(a1 + 9) = 0;
  v11 = *(a1 + 10);
  if (!v11)
  {
    goto LABEL_19;
  }

  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "OSStatus _RefObjSetDone(CFTypeRef)", 800, "inRefObj: %@ \n", a5, a6, a7, a8, v11);
  }

  TypeID = CFStringGetTypeID();
  if (TypeID == CFGetTypeID(v11))
  {
    CFStringReplaceAll(v11, @"bad!");
    v13 = *(a1 + 10);
    if (v13)
    {
      CFRelease(v13);
    }

LABEL_19:
    free(a1);
    return 0;
  }

  return 4294960591;
}

uint64_t sub_23EBE9E2C(uint64_t a1, void *a2)
{
  if (!a1 || *(a1 + 88) != 1634561902)
  {
    return 4294960578;
  }

  if (*(a1 + 64) && *(a1 + 72))
  {
    return 4294960587;
  }

  v6 = malloc_type_calloc(1uLL, 0x88uLL, 0x10A0040185FE424uLL);
  if (!v6)
  {
    return 4294960568;
  }

  v7 = v6;
  v8 = *(a1 + 64) == 0;
  *(v6 + 1) = a1;
  v9 = 64;
  if (!v8)
  {
    v9 = 72;
  }

  *(a1 + v9) = v6;
  v10 = !v8;
  *(v6 + 4) = 0;
  *(v6 + 8) = 0;
  *(v6 + 15) = 0;
  *(v6 + 16) = v10;
  *(v6 + 6) = 0;
  v4 = pthread_mutex_init((v6 + 56), 0);
  if (!v4)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(v7 + 3) = Mutable;
    if (Mutable)
    {
      v4 = 0;
      *(v7 + 5) = dispatch_semaphore_create(0);
      *v7 = 1634561902;
      *a2 = v7;
      return v4;
    }

    v4 = 4294960568;
  }

  sub_23EBE9F5C(v7);
  return v4;
}

uint64_t sub_23EBE9F5C(char *a1)
{
  if (!a1)
  {
    return 4294960578;
  }

  if (*a1 != 1634561902)
  {
    return 4294960578;
  }

  v2 = *(a1 + 3);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 3) = 0;
  }

  *a1 = 1095585614;
  v3 = *(a1 + 5);
  if (v3)
  {
    dispatch_release(v3);
  }

  pthread_mutex_destroy((a1 + 56));
  v4 = *(a1 + 1);
  if (v4)
  {
    v5 = 72;
    if (!*(a1 + 16))
    {
      v5 = 64;
    }

    *(v4 + v5) = 0;
  }

  free(a1);
  return 0;
}

uint64_t sub_23EBEA004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "OSStatus BSAssistant_Cancel(AssistantContextRef)", 800, "\n", a5, a6, a7, a8, v15);
  }

  if (!a1 || *(a1 + 88) != 1634561902)
  {
    return 4294960578;
  }

  v9 = *(a1 + 36);
  if (v9 != 2)
  {
    if (!v9)
    {
      return 4294960576;
    }

    *(a1 + 36) = 2;
    v11 = *(a1 + 64);
    if (v11)
    {
      v12 = *(v11 + 40);
      if (v12)
      {
        dispatch_semaphore_signal(v12);
      }
    }

    v13 = *(a1 + 72);
    if (v13)
    {
      v14 = *(v13 + 40);
      if (v14)
      {
        dispatch_semaphore_signal(v14);
      }
    }
  }

  return 4294960525;
}

uint64_t sub_23EBEA0DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "OSStatus BSAssistant_SetToRunningState(AssistantContextRef)", 800, "\n", a5, a6, a7, a8, v10);
  }

  if (!a1 || *(a1 + 88) != 1634561902)
  {
    return 4294960578;
  }

  if ((*(a1 + 36) | 2) != 2)
  {
    return 4294960587;
  }

  result = 0;
  *(a1 + 36) = 1;
  return result;
}

uint64_t sub_23EBEA18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "OSStatus BSAssistant_SetToIdleState(AssistantContextRef)", 800, "\n", a5, a6, a7, a8, v10);
  }

  if (!a1 || *(a1 + 88) != 1634561902)
  {
    return 4294960578;
  }

  result = *(a1 + 36);
  if (result)
  {
    if (result == 1)
    {
      result = 0;
      *(a1 + 36) = 0;
    }

    else
    {
      return 4294960587;
    }
  }

  return result;
}

uint64_t sub_23EBEA268(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "OSStatus BSAssistant_GetSaveBasePasswordToKeychain(AssistantContextRef, Boolean *)", 800, " \n", a5, a6, a7, a8, v11);
  }

  if (!a1 || *(a1 + 88) != 1634561902)
  {
    return 4294960578;
  }

  if (!a2)
  {
    return 4294960591;
  }

  result = 0;
  *a2 = *(a1 + 32);
  return result;
}

uint64_t sub_23EBEA310(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "OSStatus BSAssistant_SetSaveBasePasswordToKeychain(AssistantContextRef, Boolean)", 800, " \n", a5, a6, a7, a8, v11);
  }

  if (!a1 || *(a1 + 88) != 1634561902)
  {
    return 4294960578;
  }

  result = 0;
  *(a1 + 32) = a2;
  return result;
}

uint64_t sub_23EBEA3A8(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "OSStatus BSAssistant_GetSaveWiFiPasswordToKeychain(AssistantContextRef, Boolean *)", 800, " \n", a5, a6, a7, a8, v11);
  }

  if (!a1 || *(a1 + 88) != 1634561902)
  {
    return 4294960578;
  }

  if (!a2)
  {
    return 4294960591;
  }

  result = 0;
  *a2 = *(a1 + 33);
  return result;
}

uint64_t sub_23EBEA450(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "OSStatus BSAssistant_SetSaveWiFiPasswordToKeychain(AssistantContextRef, Boolean)", 800, " \n", a5, a6, a7, a8, v11);
  }

  if (!a1 || *(a1 + 88) != 1634561902)
  {
    return 4294960578;
  }

  result = 0;
  *(a1 + 33) = a2;
  return result;
}

uint64_t sub_23EBEA4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "OSStatus BSAssistant_SetAssistantCallback(AssistantContextRef, assistant_callback_t, void *)", 800, " \n", a5, a6, a7, a8, v12);
  }

  if (!a1 || *(a1 + 88) != 1634561902)
  {
    return 4294960578;
  }

  if (*a1)
  {
    return 4294960577;
  }

  result = 0;
  *a1 = a2;
  *(a1 + 8) = a3;
  return result;
}

uint64_t sub_23EBEA59C(void *context, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!context)
  {
    return 4294960578;
  }

  if (*context != 1634561902)
  {
    return 4294960578;
  }

  if (!context[3])
  {
    return 4294960591;
  }

  v9 = context[1];
  if (!v9 || *(v9 + 88) != 1634561902 || !*v9)
  {
    return 4294960591;
  }

  if (*(v9 + 36) == 2)
  {
    return 4294960573;
  }

  if (!a2)
  {
    return 4294960591;
  }

  *(context + 4) = a2;
  *(context + 8) = 0;
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "OSStatus BSAssistant_CallbackPerform(AssistantCallbackContextRef, eAssistantCallback)", 800, " %d...\n", a5, a6, a7, a8, a2);
  }

  dispatch_async_f(MEMORY[0x277D85CD0], context, sub_23EBEA6B4);
  return 0;
}

uint64_t sub_23EBEA6B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "void __BSAssistant_PerformCallbackOnMain(void *)", 800, "\n", a5, a6, a7, a8, v12);
  }

  if (a1 && *a1 == 1634561902)
  {
    v9 = *(a1 + 8);
    if (v9 && *v9 && *(a1 + 24) && *(a1 + 16))
    {
      if (*(v9 + 36) == 2)
      {
        v10 = 4294960573;
      }

      else
      {
        result = (*v9)(a1);
        v10 = result;
        if (!result)
        {
          return result;
        }
      }
    }

    else
    {
      v10 = 4294960591;
    }
  }

  else
  {
    v10 = 4294960578;
  }

  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "void __BSAssistant_PerformCallbackOnMain(void *)", 800, "failing err: %#m\n", a5, a6, a7, a8, v10);
  }

  return sub_23EBEB6CC(a1, v10, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_23EBEA814(void *context, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!context)
  {
    return 4294960578;
  }

  if (*context != 1634561902)
  {
    return 4294960578;
  }

  if (!context[3])
  {
    return 4294960591;
  }

  v9 = context[1];
  if (!v9 || *(v9 + 88) != 1634561902 || !*v9)
  {
    return 4294960591;
  }

  if (*(v9 + 36) == 2)
  {
    return 4294960573;
  }

  if (!a2)
  {
    return 4294960591;
  }

  *(context + 4) = a2;
  *(context + 8) = 0;
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "OSStatus BSAssistant_CallbackPerformSync(AssistantCallbackContextRef, eAssistantCallback)", 800, " %d...\n", a5, a6, a7, a8, a2);
  }

  dispatch_sync_f(MEMORY[0x277D85CD0], context, sub_23EBEA6B4);
  return 0;
}

uint64_t sub_23EBEA92C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 4294960578;
  }

  if (*a1 != 1634561902)
  {
    return 4294960578;
  }

  v9 = *(a1 + 8);
  if (!v9 || *(v9 + 88) != 1634561902 || !*(a1 + 40))
  {
    return 4294960591;
  }

  if (*(v9 + 36) == 2)
  {
    return 4294960573;
  }

  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "OSStatus BSAssistant_Wait(AssistantCallbackContextRef)", 800, " SLEEP... inContext->callbackResult: %#m\n", a5, a6, a7, a8, *(a1 + 32));
  }

  dispatch_semaphore_wait(*(a1 + 40), 0xFFFFFFFFFFFFFFFFLL);
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "OSStatus BSAssistant_Wait(AssistantCallbackContextRef)", 800, " AWAKE...\n", v11, v12, v13, v14, v15);
  }

  if (*(*(a1 + 8) + 36) == 2)
  {
    return 4294960573;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23EBEAA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "OSStatus BSAssistant_SetProgressCallback(AssistantContextRef, assistant_progress_t, void *)", 800, " \n", a5, a6, a7, a8, v12);
  }

  if (!a1 || *(a1 + 88) != 1634561902)
  {
    return 4294960578;
  }

  result = 0;
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  return result;
}

void sub_23EBEAB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "void BSAssistant_ProgressStatus_Dict(AssistantContextRef, int, OSStatus, CFDictionaryRef)", 800, "inSelector: %d inStatus %#m\n", a5, a6, a7, a8, a2);
  }

  if (a1 && *(a1 + 88) == 1634561902 && *(a1 + 16))
  {
    v20 = 0;
    v21 = 0;
    v11 = *MEMORY[0x277CBECE8];
    v12 = a4 ? sub_23EB6F348(v11, &v20, "{%ks=%i%ks=%i%ks={%ks=%O}}", a4, a5, a6, a7, a8, "kProgressParam_ProgressSelector") : sub_23EB6F348(v11, &v20, "{%ks=%i%ks=%i}", a4, a5, a6, a7, a8, "kProgressParam_ProgressSelector");
    if (!v12 && v20 != 0)
    {
      v19 = sub_23EBEAC98(a1, v20, &v21, v13, v14, v15, v16, v17);
      if (v20)
      {
        CFRelease(v20);
        v20 = 0;
      }

      if (!v19)
      {
        if (v21)
        {
          dispatch_async_f(MEMORY[0x277D85CD0], v21, sub_23EBEADC4);
        }
      }
    }
  }
}

uint64_t sub_23EBEAC98(uint64_t a1, const void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "OSStatus __ProgressContext_Create(AssistantContextRef, CFDictionaryRef, __ProgressContextRef *)", 800, " \n", a5, a6, a7, a8, v23);
  }

  if (*(a1 + 88) != 1634561902)
  {
    return 4294960578;
  }

  if (!a3)
  {
    return 4294960591;
  }

  v11 = malloc_type_calloc(1uLL, 0x20uLL, 0x10E0040E9A6435BuLL);
  if (!v11)
  {
    return 4294960568;
  }

  v19 = v11;
  *v11 = a1;
  v11[1] = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (*(a1 + 88) != 1634561902)
  {
    v21 = 4294960578;
LABEL_18:
    sub_23EBEF364(v19, v12, v13, v14, v15, v16, v17, v18);
    return v21;
  }

  v20 = *(a1 + 80);
  if (!v20)
  {
    v21 = 4294960591;
    goto LABEL_18;
  }

  v19[3] = v20;
  CFRetain(v20);
  v21 = 0;
  *(v19 + 4) = 1634561902;
  *a3 = v19;
  return v21;
}

void sub_23EBEADC4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v21 = 0;
    v20 = 0;
    v19 = 0;
    if (*(a1 + 4) == 1634561902 && sub_23EBE9A58(a1[3], a2, a3, a4, a5, a6, a7, a8))
    {
      v9 = *a1;
      if (*a1)
      {
        if (*(v9 + 88) == 1634561902)
        {
          if (*(v9 + 16))
          {
            v10 = a1[1];
            if (v10)
            {
              sub_23EB6FF14(v10, &v21, "%ks:int", a4, a5, a6, a7, a8, "kProgressParam_ProgressSelector");
              if (!v11)
              {
                sub_23EB6FF14(a1[1], &v20, "%ks:err", a4, a5, a6, a7, a8, "kProgressParam_OSStatus");
                if (!v12)
                {
                  sub_23EB6FF14(a1[1], &v19, "%ks", a4, a5, a6, a7, a8, "kProgressParam_DictionaryParam");
                  if (!v13)
                  {
                    goto LABEL_13;
                  }

                  if (v13 == -6727)
                  {
                    v19 = 0;
LABEL_13:
                    if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
                    {
                      sub_23EB75374(&dword_27E382C48, "void __Progress_CallbackOnMain(void *)", 800, "selector: %d status %#m\n", a5, a6, a7, a8, v21);
                    }

                    (*(*a1 + 16))(v21, v20, v19, *(*a1 + 24));
                    sub_23EBEF42C(v21, v20, v19, v14, v15, v16, v17, v18);
                  }
                }
              }
            }
          }
        }
      }
    }

    sub_23EBEF364(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

void sub_23EBEAF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "void BSAssistant_ProgressStatusWithSubSelector_Dict(AssistantContextRef, int, int, OSStatus, CFDictionaryRef)", 800, "inSelector: %d inStatus %#m\n", a5, a6, a7, a8, a2);
  }

  if (a1)
  {
    if (*(a1 + 88) == 1634561902)
    {
      if (*(a1 + 16))
      {
        v16 = 0;
        v17 = 0;
        if (!sub_23EB6F348(*MEMORY[0x277CBECE8], &v16, "{%ks=%i%ks=%i%ks={%ks=%O%ks=%i}}", a4, a5, a6, a7, a8, "kProgressParam_ProgressSelector"))
        {
          if (v16)
          {
            v15 = sub_23EBEAC98(a1, v16, &v17, v10, v11, v12, v13, v14);
            if (v16)
            {
              CFRelease(v16);
              v16 = 0;
            }

            if (!v15)
            {
              if (v17)
              {
                dispatch_async_f(MEMORY[0x277D85CD0], v17, sub_23EBEADC4);
              }
            }
          }
        }
      }
    }
  }
}

void sub_23EBEB0B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "void BSAssistant_ProgressStatus_String(AssistantContextRef, int, OSStatus, CFStringRef)", 800, "inSelector: %d inStatus %#m\n", a5, a6, a7, a8, a2);
  }

  if (a1 && *(a1 + 88) == 1634561902 && *(a1 + 16))
  {
    v20 = 0;
    v21 = 0;
    v11 = *MEMORY[0x277CBECE8];
    v12 = a4 ? sub_23EB6F348(v11, &v20, "{%ks=%i%ks=%i%ks={%ks=%O}}", a4, a5, a6, a7, a8, "kProgressParam_ProgressSelector") : sub_23EB6F348(v11, &v20, "{%ks=%i%ks=%i}", a4, a5, a6, a7, a8, "kProgressParam_ProgressSelector");
    if (!v12 && v20 != 0)
    {
      v19 = sub_23EBEAC98(a1, v20, &v21, v13, v14, v15, v16, v17);
      if (v20)
      {
        CFRelease(v20);
        v20 = 0;
      }

      if (!v19)
      {
        if (v21)
        {
          dispatch_async_f(MEMORY[0x277D85CD0], v21, sub_23EBEADC4);
        }
      }
    }
  }
}

void sub_23EBEB230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "void BSAssistant_ProgressStatus_Number(AssistantContextRef, int, OSStatus, CFIndex)", 800, "inSelector: %d inStatus %#m\n", a5, a6, a7, a8, a2);
  }

  if (a1)
  {
    if (*(a1 + 88) == 1634561902)
    {
      if (*(a1 + 16))
      {
        v16 = 0;
        v17 = 0;
        if (!sub_23EB6F348(*MEMORY[0x277CBECE8], &v16, "{%ks=%i%ks=%i%ks={%ks=%i}}", a4, a5, a6, a7, a8, "kProgressParam_ProgressSelector"))
        {
          if (v16)
          {
            v15 = sub_23EBEAC98(a1, v16, &v17, v10, v11, v12, v13, v14);
            if (v16)
            {
              CFRelease(v16);
              v16 = 0;
            }

            if (!v15)
            {
              if (v17)
              {
                dispatch_async_f(MEMORY[0x277D85CD0], v17, sub_23EBEADC4);
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_23EBEB384(uint64_t a1, _DWORD *a2)
{
  if (!a1)
  {
    return 4294960591;
  }

  result = 4294960591;
  if (a2)
  {
    if (*(a1 + 88) == 1634561902)
    {
      result = 0;
      *a2 = *(a1 + 40);
    }
  }

  return result;
}

uint64_t sub_23EBEB3C0(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || *(a1 + 88) != 1634561902)
  {
    return 4294960591;
  }

  if (a2 > 2)
  {
    return 4294960586;
  }

  *(a1 + 40) = a2;
  sub_23EBEB230(a1, 13, 0, a2, a5, a6, a7, a8);
  return 0;
}

uint64_t sub_23EBEB420(uint64_t a1, CFDictionaryRef *a2)
{
  if (!a1 || *(a1 + 88) != 1634561902)
  {
    return 4294960578;
  }

  v3 = *(a1 + 48);
  if (!v3)
  {
    return 4294960578;
  }

  Copy = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], v3);
  *a2 = Copy;
  if (Copy)
  {
    return 0;
  }

  else
  {
    return 4294960568;
  }
}

void sub_23EBEB494(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (*a1 == 1634561902)
    {
      v13[3] = v8;
      v13[4] = v9;
      if (a3)
      {
        if (a2)
        {
          v11 = *(a1 + 24);
          if (v11)
          {
            v13[0] = 0;
            sub_23EB6FF14(v11, v13, "%kO", a4, a5, a6, a7, a8, a2);
            if (!v12)
            {
              if (v13[0])
              {
                *a3 = v13[0];
              }
            }
          }
        }
      }
    }
  }
}

void sub_23EBEB52C(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (*a1 == 1634561902)
    {
      v14 = v8;
      v15 = v9;
      if (a3)
      {
        if (a2)
        {
          v11 = *(a1 + 24);
          if (v11)
          {
            v13 = 0;
            sub_23EB6FF14(v11, &v13, "%kO:int", a4, a5, a6, a7, a8, a2);
            if (!v12)
            {
              *a3 = v13;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_23EBEB5B8(uint64_t a1, const void *a2)
{
  if (a1 && *a1 == 1634561902 && a2 && (v2 = *(a1 + 24)) != 0)
  {
    return CFDictionaryContainsKey(v2, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23EBEB5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || *a1 != 1634561902)
  {
    return 4294960578;
  }

  result = 4294960591;
  if (a3 && a2)
  {
    v10 = *(a1 + 24);
    if (v10)
    {
      return sub_23EB6FDFC(*MEMORY[0x277CBECE8], v10, "%kO=%O", a4, a5, a6, a7, a8, a2);
    }
  }

  return result;
}

uint64_t sub_23EBEB65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || *a1 != 1634561902)
  {
    return 4294960578;
  }

  result = 4294960591;
  if (a2)
  {
    v10 = *(a1 + 24);
    if (v10)
    {
      return sub_23EB6FDFC(*MEMORY[0x277CBECE8], v10, "%kO=%i", a4, a5, a6, a7, a8, a2);
    }
  }

  return result;
}

uint64_t sub_23EBEB6CC(void *context, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!context)
  {
    return 4294960578;
  }

  if (*context != 1634561902)
  {
    return 4294960578;
  }

  if (!context[5])
  {
    return 4294960591;
  }

  *(context + 8) = a2;
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "OSStatus BSAssistant_CallbackWithFinalResult(AssistantCallbackContextRef, OSStatus)", 800, " %d result: %#m ...\n", a5, a6, a7, a8, *(context + 4));
  }

  dispatch_async_f(MEMORY[0x277D85CD0], context, sub_23EBEB7B0);
  return 0;
}

intptr_t sub_23EBEB7B0(intptr_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = result;
  if (dword_27E382C48 > 800 || dword_27E382C48 == -1 && (result = sub_23EB74AC8(&dword_27E382C48, 0x320u), !result))
  {
    if (!v8)
    {
      return result;
    }
  }

  else
  {
    result = sub_23EB75374(&dword_27E382C48, "void __BSAssistant_CallbackWithFinalResultOnMain(void *)", 800, " %d result: %#m...\n", a5, a6, a7, a8, *(v8 + 16));
  }

  if (*v8 == 1634561902)
  {
    result = *(v8 + 40);
    if (result)
    {

      return dispatch_semaphore_signal(result);
    }
  }

  return result;
}

uint64_t sub_23EBEB874(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "OSStatus BSAssistant_CopyConfigurationChangeLogs(AssistantContextRef, CFStringRef, CFArrayRef, CFArrayRef *)", 800, "\n", a5, a6, a7, a8, v38);
  }

  context = 0;
  if (!a1 || *(a1 + 88) != 1634561902)
  {
    return 4294960578;
  }

  if (!a4)
  {
    return 4294960591;
  }

  cf = 0;
  v12 = sub_23EBE9E2C(a1, &context);
  v19 = context;
  if (v12)
  {
    v20 = v12;
    if (!context)
    {
      return v20;
    }

    goto LABEL_28;
  }

  if (context)
  {
    if (!a2)
    {
      goto LABEL_35;
    }

    if (*context != 1634561902)
    {
      v20 = 4294960578;
      goto LABEL_28;
    }

    v22 = *(context + 3);
    if (!v22)
    {
      v20 = 4294960591;
      goto LABEL_28;
    }

    v23 = sub_23EB6FDFC(*MEMORY[0x277CBECE8], v22, "%kO=%O", v14, v15, v16, v17, v18, @"BSAssistantCallback_String");
    if (!v23)
    {
LABEL_35:
      if (!a3 || (v23 = sub_23EBEB5E8(v19, @"BSAssistantCallback_StringList", a3, v14, v15, v16, v17, v18), !v23))
      {
        v23 = sub_23EBEA59C(v19, 11, v13, v14, v15, v16, v17, v18);
        if (!v23)
        {
          v31 = sub_23EBEA92C(v19, v24, v25, v26, v27, v28, v29, v30);
          v20 = *(v19 + 8);
          if (v20)
          {
            goto LABEL_28;
          }

          v20 = v31;
          if (v31)
          {
            goto LABEL_28;
          }

          sub_23EBEB494(v19, @"BSAssistantCallback_ConfigChangeLogs", &cf, v32, v33, v34, v35, v36);
          if (!v23)
          {
            v37 = cf;
            if (cf)
            {
              *a4 = cf;
              CFRetain(v37);
              v20 = 0;
            }

            else
            {
              v20 = 4294960568;
            }

            goto LABEL_28;
          }
        }
      }
    }

    v20 = v23;
LABEL_28:
    sub_23EBE9F5C(v19);
    return v20;
  }

  return 4294960568;
}

uint64_t sub_23EBEBA44(uint64_t a1, CFTypeRef *a2, CFTypeRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "OSStatus BSAssistant_CopyCurrentNetworkAssociationInfo(AssistantContextRef, CFStringRef *, CFStringRef *)", 800, "\n", a5, a6, a7, a8, v49);
  }

  context = 0;
  if (!a1 || *(a1 + 88) != 1634561902)
  {
    return 4294960578;
  }

  if (!(a2 | a3))
  {
    return 4294960591;
  }

  cf = 0;
  v52 = 0;
  v50 = 0;
  v11 = sub_23EBE9E2C(a1, &context);
  v18 = context;
  if (v11)
  {
    v19 = v11;
    if (!context)
    {
      return v19;
    }

    goto LABEL_20;
  }

  if (context)
  {
    v21 = sub_23EBEA59C(context, 8, v12, v13, v14, v15, v16, v17);
    if (!v21)
    {
      v29 = sub_23EBEA92C(v18, v22, v23, v24, v25, v26, v27, v28);
      v19 = *(v18 + 8);
      if (v19)
      {
        goto LABEL_20;
      }

      v19 = v29;
      if (v29)
      {
        goto LABEL_20;
      }

      sub_23EBEB494(v18, @"BSAssistantCallback_AssociationInfo", &v52, v30, v31, v32, v33, v34);
      if (!v21)
      {
        if (!v52)
        {
          goto LABEL_34;
        }

        if (!a2)
        {
LABEL_27:
          if (!a3)
          {
LABEL_33:
            v19 = 0;
            goto LABEL_20;
          }

          sub_23EB6FF14(v52, &v50, "%kO", v35, v36, v37, v38, v39, @"BSSID");
          v19 = v46;
          if (v46 == -6727)
          {
            sub_23EB6FF14(v52, &v50, "%kO", v41, v42, v43, v44, v45, @"BSSID");
            v19 = v47;
          }

          if (v19)
          {
            goto LABEL_20;
          }

          v48 = v50;
          if (v50)
          {
            *a3 = v50;
            CFRetain(v48);
            goto LABEL_33;
          }

LABEL_34:
          v19 = 4294960568;
          goto LABEL_20;
        }

        sub_23EB6FF14(v52, &cf, "%kO", v35, v36, v37, v38, v39, @"SSID_STR");
        if (!v21)
        {
          v40 = cf;
          if (!cf)
          {
            goto LABEL_34;
          }

          *a2 = cf;
          CFRetain(v40);
          goto LABEL_27;
        }
      }
    }

    v19 = v21;
LABEL_20:
    sub_23EBE9F5C(v18);
    return v19;
  }

  return 4294960568;
}