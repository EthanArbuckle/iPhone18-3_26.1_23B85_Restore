BOOL sub_23EBEBC34(uint64_t a1, const __CFString *a2, CFStringRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "Boolean BSAssistant_IsAssociatedToNetworkNamedAndCopyCurrentNetworkName(AssistantContextRef, CFStringRef, CFStringRef *)", 800, "\n", a5, a6, a7, a8, v13);
  }

  if (!a1)
  {
    return 0;
  }

  v11 = 0;
  if (a2 && *(a1 + 88) == 1634561902)
  {
    theString2 = 0;
    if (sub_23EBEBA44(a1, &theString2, 0, a4, a5, a6, a7, a8))
    {
      return 0;
    }

    v11 = CFStringCompare(a2, theString2, 0) == kCFCompareEqualTo;
    if (a3)
    {
      *a3 = theString2;
    }

    else if (theString2)
    {
      CFRelease(theString2);
    }
  }

  return v11;
}

uint64_t sub_23EBEBD2C(uint64_t a1)
{
  if (!a1 || *(a1 + 88) != 1634561902)
  {
    return 4294960578;
  }

  v43 = 0;
  v2 = sub_23EBE9E2C(a1, &v43);
  v3 = v43;
  if (v2)
  {
    v4 = v2;
    if (!v43)
    {
      return v4;
    }

    goto LABEL_25;
  }

  if (v43)
  {
    valuePtr = 60;
    v5 = *MEMORY[0x277CBECE8];
    v6 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
    if (v6)
    {
      v12 = v6;
      if (*v3 == 1634561902)
      {
        v13 = *(v3 + 24);
        if (v13)
        {
          v4 = sub_23EB6FDFC(v5, v13, "%kO=%O", v7, v8, v9, v10, v11, @"BSAssistantCallback_Number");
          CFRelease(v12);
          if (!v4)
          {
            sub_23EBEF4C0(v3, v14, v15, v16, v17, v18, v19, v20);
            if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
            {
              sub_23EB75374(&dword_27E382C48, "OSStatus _DisassociateNetwork(AssistantContextRef)", 800, "\n", v23, v24, v25, v26, v41);
            }

            context = 0;
            if (*(a1 + 88) != 1634561902)
            {
              v4 = 4294960578;
LABEL_31:
              sub_23EBEE034(v3, 4294960573, v21, v22, v23, v24, v25, v26);
              goto LABEL_25;
            }

            v27 = sub_23EBE9E2C(a1, &context);
            v28 = context;
            if (v27)
            {
              v4 = v27;
              if (!context)
              {
                goto LABEL_31;
              }

LABEL_30:
              sub_23EBE9F5C(v28);
              goto LABEL_31;
            }

            if (!context)
            {
              v4 = 4294960568;
              goto LABEL_31;
            }

            v4 = sub_23EBEA59C(context, 9, v21, v22, v23, v24, v25, v26);
            if (v4)
            {
              goto LABEL_30;
            }

            v37 = sub_23EBEA92C(v28, v30, v31, v32, v33, v34, v35, v36);
            v4 = *(v28 + 8);
            if (v4)
            {
              goto LABEL_30;
            }

            v38 = v37;
            sub_23EBE9F5C(v28);
            v4 = v38;
            if (v38)
            {
              goto LABEL_31;
            }

            v40 = sub_23EBEA92C(v3, v39, v21, v22, v23, v24, v25, v26);
            if (!v40)
            {
              v4 = *(v3 + 32);
              goto LABEL_25;
            }

            v4 = v40;
            if (v40 == -6723)
            {
              v4 = 4294960573;
              goto LABEL_31;
            }
          }

LABEL_25:
          sub_23EBE9F5C(v3);
          return v4;
        }

        v4 = 4294960591;
      }

      else
      {
        v4 = 4294960578;
      }

      CFRelease(v6);
      goto LABEL_25;
    }

    v4 = 4294960568;
    goto LABEL_25;
  }

  return 4294960568;
}

uint64_t sub_23EBEBF74(uint64_t a1, const __CFString *a2, const __CFString *cf)
{
  if (!a1 || *(a1 + 88) != 1634561902)
  {
    return 4294960578;
  }

  v5 = 4294960591;
  if (a2 && cf)
  {
    CFRetain(cf);
    if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
    {
      sub_23EB6AE14(cf, v7, v8, v9, v10, v11, v12, v13);
      sub_23EB75374(&dword_27E382C48, "OSStatus BSAssistant_ScanForNetworkUntilBaseNOTFound(AssistantContextRef, CFStringRef, CFDictionaryRef)", 800, "inNetworkName: %@ inBaseStation: %@\n", v14, v15, v16, v17, a2);
    }

    v18 = 0;
    cfa = 0;
    while (1)
    {
      v19 = dword_27E382C48;
      if (v18)
      {
        if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
        {
          sub_23EB75374(&dword_27E382C48, "OSStatus BSAssistant_ScanForNetworkUntilBaseNOTFound(AssistantContextRef, CFStringRef, CFDictionaryRef)", 800, "waiting err: %#m pauseSecs: %d\n", v10, v11, v12, v13, 0);
        }

        v20 = sub_23EBEC174(a1, 6);
        if (v20)
        {
          v5 = v20;
LABEL_31:
          CFRelease(cf);
          return v5;
        }

        v19 = dword_27E382C48;
      }

      if (v19 <= 800 && (v19 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
      {
        sub_23EB75374(&dword_27E382C48, "OSStatus BSAssistant_ScanForNetworkUntilBaseNOTFound(AssistantContextRef, CFStringRef, CFDictionaryRef)", 800, "retries: %d\n", v10, v11, v12, v13, v18);
      }

      v5 = sub_23EBEC27C(a1, a2, cf, 3, &cfa, v11, v12, v13);
      if (cfa)
      {
        CFRelease(cfa);
        cfa = 0;
      }

      if (v5)
      {
        if (v5 != -6727)
        {
          goto LABEL_31;
        }

LABEL_29:
        v5 = 0;
        goto LABEL_31;
      }

      if (++v18 == 21)
      {
        goto LABEL_29;
      }
    }
  }

  return v5;
}

uint64_t sub_23EBEC174(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 4294960578;
  }

  if (*(a1 + 88) != 1634561902)
  {
    return 4294960578;
  }

  v4 = mach_absolute_time();
  v9 = v4 / sub_23EB803C4();
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "OSStatus BSAssistant_SleepSecs(AssistantContextRef, CFIndex)", 800, "inTimeoutSecs: %d\n", v5, v6, v7, v8, a2);
  }

  v10 = v9 + a2;
  while (1)
  {
    v11 = mach_absolute_time();
    if (v11 / sub_23EB803C4() >= v10)
    {
      break;
    }

    sleep(1u);
    if (*(a1 + 88) != 1634561902 || *(a1 + 36) == 2)
    {
      return 4294960573;
    }
  }

  return 0;
}

uint64_t sub_23EBEC27C(uint64_t a1, const __CFString *a2, const __CFString *cf, int a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "OSStatus BSAssistant_CopyScanForFirstNetworkNamedCreatedByBaseStation(AssistantContextRef, CFStringRef, CFDictionaryRef, WiFiType, CFDictionaryRef *)", 800, "inNetworkName: %@\n", a5, a6, a7, a8, a2);
  }

  if (!a1 || *(a1 + 88) != 1634561902)
  {
    return 4294960578;
  }

  v13 = 4294960591;
  if (a2 && a4 && a5)
  {
    theArray = 0;
    if (cf)
    {
      CFRetain(cf);
      v13 = sub_23EBEC5F4(a1, a2, a4, 1, &theArray, v14, v15, v16);
      if (v13)
      {
LABEL_20:
        CFRelease(cf);
        return v13;
      }

      v17 = sub_23EB6B9B0(cf, theArray);
      if (v17 == -1)
      {
        v13 = 4294960569;
        goto LABEL_20;
      }
    }

    else
    {
      v13 = sub_23EBEC5F4(a1, a2, a4, 1, &theArray, a6, a7, a8);
      if (v13)
      {
        goto LABEL_19;
      }

      v17 = sub_23EB6B7D0(a2, a4, 0, theArray);
      if (v17 == -1)
      {
        return 4294960569;
      }
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v17);
    *a5 = ValueAtIndex;
    CFRetain(ValueAtIndex);
    v13 = 0;
LABEL_19:
    if (cf)
    {
      goto LABEL_20;
    }
  }

  return v13;
}

uint64_t sub_23EBEC3FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "OSStatus BSAssistant_ClearScanCache(AssistantContextRef)", 800, "\n", a5, a6, a7, a8, v28);
  }

  context = 0;
  if (!a1 || *(a1 + 88) != 1634561902)
  {
    return 4294960578;
  }

  v9 = sub_23EBE9E2C(a1, &context);
  v16 = context;
  if (v9)
  {
    v17 = v9;
    if (!context)
    {
      return v17;
    }
  }

  else
  {
    if (!context)
    {
      return 4294960568;
    }

    v17 = sub_23EBEA59C(context, 10, v10, v11, v12, v13, v14, v15);
    if (!v17)
    {
      v25 = sub_23EBEA92C(v16, v18, v19, v20, v21, v22, v23, v24);
      v26 = *(v16 + 8);
      if (v26)
      {
        v17 = v26;
      }

      else
      {
        v17 = v25;
      }
    }
  }

  sub_23EBE9F5C(v16);
  return v17;
}

uint64_t sub_23EBEC4F4(uint64_t a1, const __CFString *a2, int a3, CFTypeRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "OSStatus BSAssistant_CopyScanForFirstNetworkNamed(AssistantContextRef, CFStringRef, WiFiType, CFDictionaryRef *)", 800, "inNetworkName: %@\n", a5, a6, a7, a8, a2);
  }

  cf = 0;
  if (!a1 || *(a1 + 88) != 1634561902)
  {
    return 4294960578;
  }

  v12 = 4294960591;
  if (a2 && a3 && a4)
  {
    v12 = sub_23EBEC27C(a1, a2, 0, a3, &cf, a6, a7, a8);
    if (v12)
    {
      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      *a4 = cf;
    }
  }

  return v12;
}

uint64_t sub_23EBEC5F4(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "OSStatus BSAssistant_CopyScanForNetworks(AssistantContextRef, CFStringRef, WiFiType, Boolean, CFArrayRef *)", 800, "\n", a5, a6, a7, a8, v72);
  }

  if (!a1 || *(a1 + 88) != 1634561902)
  {
    v18 = 4294960578;
    goto LABEL_63;
  }

  if (!a5)
  {
    v18 = 4294960591;
    goto LABEL_63;
  }

  if (a2)
  {
    v13 = 9;
  }

  else
  {
    v13 = 1;
  }

  sub_23EBEB0B0(a1, v13, 0, a2, a5, a6, a7, a8);
  v14 = mach_absolute_time();
  v15 = v14 / sub_23EB803C4() + 12;
  v16 = mach_absolute_time();
  if (v16 / sub_23EB803C4() >= v15)
  {
    goto LABEL_72;
  }

  v74 = a5;
  v75 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  allocator = *MEMORY[0x277CBECE8];
  if (a4)
  {
    v20 = MEMORY[0x277CBED28];
  }

  else
  {
    v20 = MEMORY[0x277CBED10];
  }

  v73 = *v20;
  do
  {
    if (v17)
    {
      if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
      {
        sub_23EB75374(&dword_27E382C48, "OSStatus BSAssistant_CopyScanForNetworks(AssistantContextRef, CFStringRef, WiFiType, Boolean, CFArrayRef *)", 800, "waiting in retries err: %#m pauseSecs: %d (kDefault_ScanningBusy_RetrySecs)\n", a5, a6, a7, a8, v18);
      }

      v21 = sub_23EBEC174(a1, 2);
      if (v21)
      {
        v18 = v21;
        goto LABEL_63;
      }

      v19 = (v19 + 2);
    }

    v79 = v19;
    valuePtr = a3;
    if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
    {
      sub_23EB75374(&dword_27E382C48, "OSStatus _CopyScanForNetworks(AssistantContextRef, CFStringRef, WiFiType, Boolean, uint32_t, CFArrayRef *)", 800, "inMaxAge: %d\n", a5, a6, a7, a8, v19);
    }

    v78 = 0;
    if (*(a1 + 88) == 1634561902)
    {
      theArray = 0;
      v22 = sub_23EBE9E2C(a1, &v78);
      v28 = v78;
      if (v22)
      {
        v18 = v22;
        if (!v78)
        {
          goto LABEL_32;
        }

        goto LABEL_30;
      }

      if (v78)
      {
        if (!a2)
        {
          goto LABEL_41;
        }

        if (*v78 != 1634561902)
        {
          v18 = 4294960578;
          goto LABEL_30;
        }

        v30 = *(v78 + 24);
        if (!v30)
        {
          v18 = 4294960591;
          goto LABEL_30;
        }

        v31 = sub_23EB6FDFC(allocator, v30, "%kO=%O", v23, v24, v25, v26, v27, @"BSAssistantCallback_String");
        if (v31)
        {
          goto LABEL_39;
        }

LABEL_41:
        v32 = CFNumberCreate(allocator, kCFNumberCFIndexType, &valuePtr);
        if (!v32)
        {
          goto LABEL_56;
        }

        v38 = v32;
        if (*v28 == 1634561902)
        {
          v39 = *(v28 + 24);
          if (v39)
          {
            v18 = sub_23EB6FDFC(allocator, v39, "%kO=%O", v33, v34, v35, v36, v37, @"BSAssistantCallback_WiFiType");
            CFRelease(v38);
            if (v18)
            {
              goto LABEL_30;
            }

            v31 = sub_23EBEB5E8(v28, @"BSAssistantCallback_Boolean", v73, v40, v41, v42, v43, v44);
            if (!v31)
            {
              v45 = CFNumberCreate(allocator, kCFNumberCFIndexType, &v79);
              if (!v45)
              {
                goto LABEL_56;
              }

              v51 = v45;
              v18 = sub_23EBEB5E8(v28, @"BSAssistantCallback_Number", v45, v46, v47, v48, v49, v50);
              CFRelease(v51);
              if (v18)
              {
                goto LABEL_30;
              }

              v31 = sub_23EBEA59C(v28, 7, v52, v53, v54, v55, v56, v57);
              if (!v31)
              {
                v31 = sub_23EBEA92C(v28, v58, v59, v60, v61, v62, v63, v64);
                v18 = *(v28 + 32);
                if ((v18 | 2) == 0xFFFFE5BF)
                {
                  goto LABEL_30;
                }

                if (!v31)
                {
                  sub_23EBEB494(v28, @"BSAssistantCallback_ScanInfoRecords", &theArray, v65, v66, v67, v68, v69);
                  if (!v31)
                  {
                    if (theArray)
                    {
                      if (CFArrayGetCount(theArray))
                      {
                        v75 = theArray;
                        CFRetain(theArray);
                        v18 = 0;
                      }

                      else
                      {
                        v18 = 4294960569;
                      }

                      goto LABEL_30;
                    }

LABEL_56:
                    v18 = 4294960568;
LABEL_30:
                    sub_23EBE9F5C(v28);
                    goto LABEL_32;
                  }
                }
              }
            }

LABEL_39:
            v18 = v31;
            goto LABEL_30;
          }

          v18 = 4294960591;
        }

        else
        {
          v18 = 4294960578;
        }

        CFRelease(v32);
        goto LABEL_30;
      }

      v18 = 4294960568;
    }

    else
    {
      v18 = 4294960578;
    }

LABEL_32:
    v29 = mach_absolute_time();
    --v17;
  }

  while (v29 / sub_23EB803C4() < v15);
  if (v18)
  {
    goto LABEL_63;
  }

  if (v75)
  {
    if (CFArrayGetCount(v75))
    {
      *v74 = v75;
      CFRetain(v75);
      v18 = 0;
    }

    else
    {
      v18 = 4294960569;
    }

    goto LABEL_63;
  }

LABEL_72:
  v18 = 4294960568;
LABEL_63:
  if (a2)
  {
    v70 = 10;
  }

  else
  {
    v70 = 2;
  }

  sub_23EBEB0B0(a1, v70, v18, 0, a5, a6, a7, a8);
  return v18;
}

uint64_t sub_23EBECA80(uint64_t a1, const __CFString *a2, const __CFString *a3, CFTypeRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "OSStatus BSAssistant_CopyGetKeychainPassword(AssistantContextRef, CFStringRef, CFDictionaryRef, CFStringRef *)", 800, "\n", a5, a6, a7, a8, v52);
  }

  v55 = 0;
  if (!a1 || *(a1 + 88) != 1634561902)
  {
    return 4294960578;
  }

  v12 = 4294960591;
  if (a2 && a3 && a4)
  {
    cf = 0;
    v13 = sub_23EBE9E2C(a1, &v55);
    v14 = v55;
    if (v13)
    {
      v12 = v13;
      if (!v55)
      {
        return v12;
      }

      goto LABEL_28;
    }

    if (v55)
    {
      if (CFStringCompare(a2, @"keychainBaseStationType", 0))
      {
        v22 = sub_23EBEB5E8(v14, @"BSAssistantCallback_ScanInfo", a3, v17, v18, v19, v20, v21);
        if (v22)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v53 = 0;
        v22 = sub_23EB6AB20(a3, &v53, v16, v17, v18, v19, v20, v21);
        if (v22)
        {
          goto LABEL_27;
        }

        if (!v53)
        {
          goto LABEL_34;
        }

        v12 = sub_23EBEB5E8(v14, @"BSAssistantCallback_KeychainAccounts", v53, v47, v48, v49, v50, v51);
        if (v53)
        {
          CFRelease(v53);
        }

        if (v12)
        {
          goto LABEL_28;
        }
      }

      v22 = sub_23EBEB5E8(v14, @"BSAssistantCallback_KeychainServiceType", a2, v23, v24, v25, v26, v27);
      if (!v22)
      {
        v22 = sub_23EBEA59C(v14, 13, v28, v29, v30, v31, v32, v33);
        if (!v22)
        {
          v22 = sub_23EBEA92C(v14, v34, v35, v36, v37, v38, v39, v40);
          if (!v22)
          {
            v12 = *(v14 + 32);
            if (v12)
            {
LABEL_28:
              sub_23EBE9F5C(v14);
              return v12;
            }

            sub_23EBEB494(v14, @"BSAssistantCallback_String", &cf, v41, v42, v43, v44, v45);
            if (!v22)
            {
              v46 = cf;
              if (cf)
              {
                *a4 = cf;
                CFRetain(v46);
                v12 = 0;
                goto LABEL_28;
              }

LABEL_34:
              v12 = 4294960568;
              goto LABEL_28;
            }
          }
        }
      }

LABEL_27:
      v12 = v22;
      goto LABEL_28;
    }

    return 4294960568;
  }

  return v12;
}

uint64_t sub_23EBECC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "OSStatus BSAssistant_SetKeychainPassword(AssistantContextRef, CFStringRef, CFStringRef, CFStringRef, CFStringRef)", 800, "\n", a5, a6, a7, a8, v47);
  }

  v48 = 0;
  if (!a1 || *(a1 + 88) != 1634561902)
  {
    return 4294960578;
  }

  v13 = 4294960591;
  if (a2 && a3 && a5)
  {
    v14 = sub_23EBE9E2C(a1, &v48);
    v20 = v48;
    if (v14)
    {
      v13 = v14;
      if (!v48)
      {
        return v13;
      }

      goto LABEL_23;
    }

    if (v48)
    {
      if (*v48 == 1634561902)
      {
        v22 = *(v48 + 24);
        if (v22)
        {
          v23 = sub_23EB6FDFC(*MEMORY[0x277CBECE8], v22, "%kO=%O", v15, v16, v17, v18, v19, @"BSAssistantCallback_KeychainAccount");
          if (v23 || (v23 = sub_23EBEB5E8(v20, @"BSAssistantCallback_KeychainServiceType", a2, v24, v25, v26, v27, v28), v23) || a4 && (v23 = sub_23EBEB5E8(v20, @"BSAssistantCallback_KeychainDeviceName", a4, v29, v30, v31, v32, v33), v23) || (v23 = sub_23EBEB5E8(v20, @"BSAssistantCallback_String", a5, v29, v30, v31, v32, v33), v23) || (v23 = sub_23EBEA59C(v20, 14, v34, v35, v36, v37, v38, v39), v23) || (v23 = sub_23EBEA92C(v20, v40, v41, v42, v43, v44, v45, v46), v23))
          {
            v13 = v23;
          }

          else
          {
            v13 = *(v20 + 32);
          }
        }
      }

      else
      {
        v13 = 4294960578;
      }

LABEL_23:
      sub_23EBE9F5C(v20);
      return v13;
    }

    return 4294960568;
  }

  return v13;
}

uint64_t sub_23EBECE2C(uint64_t a1, const __CFString *a2, uint64_t a3, CFTypeRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "OSStatus BSAssistant_CopyAskUserForPassword(AssistantContextRef, CFStringRef, CFStringRef, CFStringRef *)", 800, "\n", a5, a6, a7, a8, v65);
  }

  v68 = 0;
  if (!a1 || *(a1 + 88) != 1634561902)
  {
    return 4294960578;
  }

  v12 = 4294960591;
  if (a2 && a4)
  {
    cf = 0;
    v66 = 0;
    v13 = sub_23EBE9E2C(a1, &v68);
    v19 = v68;
    if (v13)
    {
      v12 = v13;
      if (!v68)
      {
        return v12;
      }

      goto LABEL_24;
    }

    if (v68)
    {
      if (*v68 != 1634561902)
      {
        v12 = 4294960578;
        goto LABEL_24;
      }

      v21 = *(v68 + 24);
      if (!v21)
      {
LABEL_24:
        sub_23EBE9F5C(v19);
        return v12;
      }

      v22 = sub_23EB6FDFC(*MEMORY[0x277CBECE8], v21, "%kO=%O", v14, v15, v16, v17, v18, @"BSAssistantCallback_KeychainServiceType");
      if (!v22)
      {
        v22 = sub_23EBEB5E8(v19, @"BSAssistantCallback_KeychainDeviceName", a3, v23, v24, v25, v26, v27);
        if (!v22)
        {
          v22 = sub_23EBEA59C(v19, 12, v28, v29, v30, v31, v32, v33);
          if (!v22)
          {
            v22 = sub_23EBEA92C(v19, v34, v35, v36, v37, v38, v39, v40);
            if (!v22)
            {
              v12 = *(v19 + 32);
              if (v12)
              {
                goto LABEL_24;
              }

              sub_23EBEB494(v19, @"BSAssistantCallback_String", &cf, v41, v42, v43, v44, v45);
              if (!v22)
              {
                if (!cf)
                {
                  v12 = 4294960568;
                  goto LABEL_24;
                }

                sub_23EB6FF14(*(v19 + 24), &v66, "%ks:BOOL", v46, v47, v48, v49, v50, "BSAssistantCallback_Boolean");
                if (v51 == -6727)
                {
                  goto LABEL_36;
                }

                v12 = v51;
                if (v51)
                {
                  goto LABEL_24;
                }

                if (CFStringCompare(a2, @"keychainBaseStationType", 0))
                {
                  if (CFStringCompare(a2, @"keychainNetworkType", 0))
                  {
                    goto LABEL_36;
                  }

                  v22 = sub_23EBEA450(a1, v66, v58, v59, v60, v61, v62, v63);
                  if (!v22)
                  {
                    goto LABEL_36;
                  }

                  goto LABEL_21;
                }

                v22 = sub_23EBEA310(a1, v66, v52, v53, v54, v55, v56, v57);
                if (!v22)
                {
LABEL_36:
                  v64 = cf;
                  *a4 = cf;
                  CFRetain(v64);
                  v12 = 0;
                  goto LABEL_24;
                }
              }
            }
          }
        }
      }

LABEL_21:
      v12 = v22;
      goto LABEL_24;
    }

    return 4294960568;
  }

  return v12;
}

uint64_t sub_23EBED07C(uint64_t a1, const __CFString *a2, uint64_t a3, void *a4)
{
  cf = 0;
  if (!a1)
  {
    return 4294960578;
  }

  v17 = 0;
  if (*(a1 + 88) == 1634561902)
  {
    v5 = 4294960591;
    if (a2 && a3 >= 1 && a4)
    {
      v7 = sub_23EBED1A8(a1, a2, 0, 0, a3, &cf);
      if (v7)
      {
        v5 = v7;
        if (v7 != -6722)
        {
          goto LABEL_11;
        }
      }

      else
      {
        if (!cf)
        {
          return 4294960568;
        }

        v9 = sub_23EB6B3A8(cf, a2);
        if (v9 != -1)
        {
          sub_23EB6FF14(cf, &v17, "[*]:obj", v10, v11, v12, v13, v14, v9);
          v5 = v15;
          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          if (!v5)
          {
            if (v17)
            {
              v5 = 0;
              *a4 = v17;
              v17 = 0;
            }

            else
            {
              v5 = 4294960568;
            }
          }

          goto LABEL_11;
        }
      }

      v5 = 4294960569;
    }
  }

  else
  {
    v5 = 4294960578;
  }

LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

uint64_t sub_23EBED1A8(uint64_t a1, const __CFString *a2, uint64_t a3, int a4, uint64_t a5, CFNumberRef *a6)
{
  if (*(a1 + 88) != 1634561902)
  {
    return 4294960578;
  }

  if (a2)
  {
    v12 = 3;
  }

  else
  {
    v12 = 1;
  }

  v13 = mach_absolute_time();
  v18 = v13 / sub_23EB803C4() + a5;
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "OSStatus _CopyBrowsedDevicesWithTimeout(AssistantContextRef, CFStringRef, CFNumberRef, Boolean, CFIndex, CFArrayRef *)", 800, "retries into: %dx\n", v14, v15, v16, v17, v12);
  }

  v19 = mach_absolute_time();
  if (v19 / sub_23EB803C4() < v18)
  {
    v24 = 0;
    v25 = a6;
    v26 = 0;
    v27 = 0;
    v96 = v25;
    v98 = a5 / v12;
    if (v25)
    {
      v28 = a5 / v12 == 0;
    }

    else
    {
      v28 = 1;
    }

    v29 = v28;
    v30 = MEMORY[0x277CBED28];
    if (!a4)
    {
      v30 = MEMORY[0x277CBED10];
    }

    allocator = *MEMORY[0x277CBECE8];
    v97 = *v30;
    while (1)
    {
      if (v24)
      {
        if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
        {
          sub_23EB75374(&dword_27E382C48, "OSStatus _CopyBrowsedDevicesWithTimeout(AssistantContextRef, CFStringRef, CFNumberRef, Boolean, CFIndex, CFArrayRef *)", 800, "waiting in retries err: %#m pauseSecs: %d duplicateErrors: %d\n", v20, v21, v22, v23, v27);
        }

        v31 = sub_23EBEC174(a1, 5);
        if (v31)
        {
          return v31;
        }
      }

      if (v26 >= 5)
      {
        v32 = 0;
      }

      else
      {
        v32 = a3;
      }

      if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
      {
        sub_23EB75374(&dword_27E382C48, "OSStatus _CopyBrowsedDevicesWithTimeout_sub(AssistantContextRef, CFStringRef, CFNumberRef, Boolean, CFIndex, CFArrayRef *)", 800, "inStopAtMACAddress: %@\n", v20, v21, v22, v23, a2);
      }

      v101 = 0;
      v33 = *(a1 + 88);
      v34 = v33 == 1634561902;
      if (v33 == 1634561902)
      {
        v35 = v29;
      }

      else
      {
        v35 = 1;
      }

      if (v34)
      {
        v27 = 4294960591;
      }

      else
      {
        v27 = 4294960578;
      }

      if (v35)
      {
        goto LABEL_44;
      }

      v36 = sub_23EBE9E2C(a1, &v101);
      v42 = v101;
      if (v36)
      {
        v27 = v36;
        if (!v101)
        {
          goto LABEL_42;
        }

        goto LABEL_41;
      }

      if (!v101)
      {
        v27 = 4294960568;
        if (!a2)
        {
          return v27;
        }

        goto LABEL_45;
      }

      if (a2)
      {
        if (*v101 != 1634561902)
        {
          v27 = 4294960578;
          goto LABEL_41;
        }

        v45 = *(v101 + 24);
        if (!v45)
        {
          v27 = 4294960591;
          goto LABEL_41;
        }

        v46 = sub_23EB6FDFC(allocator, v45, "%kO=%O", v37, v38, v39, v40, v41, @"BSAssistantCallback_String");
        if (v46)
        {
          goto LABEL_56;
        }

        if (v32)
        {
          v46 = sub_23EBEB5E8(v42, @"BSAssistantCallback_BonjourSeed", v32, v47, v48, v49, v50, v51);
          if (v46)
          {
            goto LABEL_56;
          }
        }
      }

      valuePtr = v98;
      v52 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
      if (!v52)
      {
        goto LABEL_72;
      }

      v58 = v52;
      if (*v42 != 1634561902)
      {
        v27 = 4294960578;
        goto LABEL_75;
      }

      v59 = *(v42 + 24);
      if (!v59)
      {
        v27 = 4294960591;
        goto LABEL_75;
      }

      v27 = sub_23EB6FDFC(allocator, v59, "%kO=%O", v53, v54, v55, v56, v57, @"BSAssistantCallback_Number");
      CFRelease(v58);
      if (!v27)
      {
        break;
      }

LABEL_41:
      sub_23EBE9F5C(v42);
LABEL_42:
      if (v27 == -6730)
      {
        ++v26;
      }

LABEL_44:
      if (!a2)
      {
        return v27;
      }

LABEL_45:
      if ((v27 + 6730) <= 8 && ((1 << (v27 + 74)) & 0x109) != 0)
      {
        v44 = mach_absolute_time();
        --v24;
        if (v44 / sub_23EB803C4() < v18)
        {
          continue;
        }
      }

      return v27;
    }

    v46 = sub_23EBEB5E8(v42, @"BSAssistantCallback_Boolean", v97, v60, v61, v62, v63, v64);
    if (!v46)
    {
      Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x277CBF128]);
      if (Mutable)
      {
        v58 = Mutable;
        v71 = sub_23EBEB5E8(v42, @"BSAssistantCallback_BrowseRecords", Mutable, v66, v67, v68, v69, v70);
        if (!v71)
        {
          v71 = sub_23EBEF954(v42, v72, v73, v74, v75, v76, v77, v78);
          if (!v71)
          {
            v86 = sub_23EBEA92C(v42, v79, v80, v81, v82, v83, v84, v85);
            if (v86)
            {
              v27 = v86;
              if (v86 == -6723)
              {
                v27 = 4294960573;
                sub_23EBEFB5C(v42, -6723, v87, v88, v89, v90, v91, v92);
              }

              goto LABEL_75;
            }

            v27 = *(v42 + 32);
            v94 = v27 != -6722 && v27 != -6745;
            if (a2 || v94)
            {
              if (a2 && v27 == -6745)
              {
                v27 = 4294960569;
                *(v42 + 32) = -6727;
                goto LABEL_75;
              }

              if (v27)
              {
                goto LABEL_75;
              }
            }

            else
            {
              *(v42 + 32) = 0;
            }

            if (CFArrayGetCount(v58) && (!a2 || sub_23EB6B3A8(v58, a2) != -1))
            {
              v27 = 0;
              *v96 = v58;
              goto LABEL_41;
            }

            v27 = 4294960569;
            goto LABEL_75;
          }
        }

        v27 = v71;
LABEL_75:
        CFRelease(v58);
        goto LABEL_41;
      }

LABEL_72:
      v27 = 4294960568;
      goto LABEL_41;
    }

LABEL_56:
    v27 = v46;
    goto LABEL_41;
  }

  return 0;
}

uint64_t sub_23EBED690(uint64_t a1, __CFString *a2, const __CFString *cf, int a4, uint64_t a5, CFTypeRef *a6, uint64_t a7, uint64_t a8)
{
  cfa = 0;
  if (a6)
  {
    *a6 = 0;
  }

  v42 = 0;
  v39 = 0;
  v40 = 0;
  if (!a1 || *(a1 + 88) != 1634561902)
  {
    v14 = 4294960578;
    goto LABEL_19;
  }

  v14 = 4294960591;
  if (!cf || a5 < 1 || !a6)
  {
LABEL_19:
    v22 = 0;
    v23 = 0;
    if (!a6)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  CFRetain(cf);
  if (a2)
  {
    CFRetain(a2);
  }

  sub_23EB6FF14(cf, &v40, "%ks.%ks", v15, v16, v17, v18, v19, "txt");
  v14 = v21;
  v22 = cf;
  v23 = a2;
  if (!v21)
  {
    if (!v40)
    {
      goto LABEL_46;
    }

    v39 = 0;
    if (a4)
    {
      sub_23EB6FF14(cf, &v39, "%ks.%ks", v20, a5, a6, a7, a8, "txt");
      if (v24 != -6727)
      {
        v14 = v24;
        v22 = cf;
        v23 = a2;
        if (v24)
        {
          goto LABEL_20;
        }

        if (!v39)
        {
          goto LABEL_46;
        }
      }
    }

    if (a2)
    {
      sub_23EBEB0B0(a1, 7, 0, a2, a5, a6, a7, a8);
    }

    else
    {
      sub_23EBEAB18(a1, 7, 0, cf, a5, a6, a7, a8);
    }

    v33 = v39;
    v32 = v40;
    sub_23EB6A6F0(cf);
    v35 = sub_23EBED1A8(a1, v32, v33, v34, a5, &cfa);
    if (v35 == -6722)
    {
      goto LABEL_47;
    }

    v14 = v35;
    v22 = cf;
    v23 = a2;
    if (v35)
    {
      goto LABEL_20;
    }

    if (!cfa)
    {
      goto LABEL_46;
    }

    v36 = sub_23EB6B3A8(cfa, v40);
    if (v36 == -1)
    {
LABEL_47:
      v14 = 4294960569;
      goto LABEL_48;
    }

    sub_23EB6FF14(cfa, &v42, "[*]:obj", v37, a5, a6, a7, a8, v36);
    v14 = v38;
    if (cfa)
    {
      CFRelease(cfa);
      cfa = 0;
    }

    v22 = cf;
    v23 = a2;
    if (!v14)
    {
      v25 = v42;
      if (v42)
      {
        v14 = 0;
        *a6 = v42;
        v42 = 0;
        v23 = a2;
        v22 = cf;
        goto LABEL_21;
      }

LABEL_46:
      v14 = 4294960568;
LABEL_48:
      v22 = cf;
      v23 = a2;
    }
  }

LABEL_20:
  v25 = *a6;
  if (*a6)
  {
LABEL_21:
    v26 = a1;
    v27 = v14;
LABEL_24:
    sub_23EBEAB18(v26, 8, v27, v25, a5, a6, a7, a8);
    goto LABEL_29;
  }

LABEL_22:
  if (cf)
  {
    v26 = a1;
    v27 = v14;
    v25 = cf;
    goto LABEL_24;
  }

  if (a2)
  {
    v28 = a1;
    v29 = v14;
    v30 = a2;
  }

  else
  {
    v30 = &stru_285145FE8;
    v28 = a1;
    v29 = v14;
  }

  sub_23EBEB0B0(v28, 8, v29, v30, a5, a6, a7, a8);
LABEL_29:
  if (cfa)
  {
    CFRelease(cfa);
    cfa = 0;
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  return v14;
}

uint64_t sub_23EBED960(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 4294960578;
  }

  if (*(a1 + 88) != 1634561902)
  {
    return 4294960578;
  }

  result = 4294960591;
  if (a2 >= 1)
  {
    if (a3)
    {
      v17 = 0;
      sub_23EBEAB18(a1, 3, 0, 0, a5, a6, a7, a8);
      v12 = sub_23EBED1A8(a1, 0, 0, 0, a2, &v17);
      sub_23EBEAB18(a1, 4, 0, 0, v13, v14, v15, v16);
      result = 4294960569;
      if (v12 != -6727 && v12 != -6722)
      {
        result = v12;
        if (!v12)
        {
          if (v17)
          {
            result = 0;
            *a3 = v17;
          }

          else
          {
            return 4294960568;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_23EBEDA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "OSStatus BSAssistant_WarnUser(AssistantContextRef, CFStringRef, CFStringRef, CFStringRef, CFStringRef, CFStringRef, CFStringRef, CFStringRef, CFStringRef)", 800, "\n", a5, a6, a7, a8, v46);
  }

  v47 = 0;
  if (!a1 || *(a1 + 88) != 1634561902)
  {
    return 4294960578;
  }

  v17 = 4294960591;
  if (a2 && a5)
  {
    v18 = sub_23EBE9E2C(a1, &v47);
    v24 = v47;
    if (v18)
    {
      v17 = v18;
      if (!v47)
      {
        return v17;
      }

      goto LABEL_21;
    }

    if (v47)
    {
      if (*v47 == 1634561902)
      {
        v26 = *(v47 + 24);
        if (v26)
        {
          v27 = sub_23EB6FDFC(*MEMORY[0x277CBECE8], v26, "%kO=%O", v19, v20, v21, v22, v23, @"kBSAssistantCallback_Warn_PromptKey");
          if (v27 || a3 && (v27 = sub_23EBEB5E8(v24, @"kBSAssistantCallback_Warn_PromptParam1", a3, v28, v29, v30, v31, v32), v27) || a4 && (v27 = sub_23EBEB5E8(v24, @"kBSAssistantCallback_Warn_PromptParam2", a4, v28, v29, v30, v31, v32), v27) || (v27 = sub_23EBEB5E8(v24, @"kBSAssistantCallback_Warn_MessageKey", a5, v28, v29, v30, v31, v32), v27) || a6 && (v27 = sub_23EBEB5E8(v24, @"kBSAssistantCallback_Warn_MessageParam1", a6, v33, v34, v35, v36, v37), v27) || a7 && (v27 = sub_23EBEB5E8(v24, @"kBSAssistantCallback_Warn_MessageParam2", a7, v33, v34, v35, v36, v37), v27) || a8 && (v27 = sub_23EBEB5E8(v24, @"kBSAssistantCallback_Warn_OkKey", a8, v33, v34, v35, v36, v37), v27) || (v38 = a9) != 0 && (v27 = sub_23EBEB5E8(v24, @"kBSAssistantCallback_Warn_CancelKey", a9, v33, v34, v35, v36, v37), v27) || (v27 = sub_23EBEA59C(v24, 3, v38, v33, v34, v35, v36, v37), v27) || (v27 = sub_23EBEA92C(v24, v39, v40, v41, v42, v43, v44, v45), v27))
          {
            v17 = v27;
          }

          else
          {
            v17 = *(v24 + 32);
          }
        }
      }

      else
      {
        v17 = 4294960578;
      }

LABEL_21:
      sub_23EBE9F5C(v24);
      return v17;
    }

    return 4294960568;
  }

  return v17;
}

uint64_t sub_23EBEDC9C(uint64_t a1, uint64_t a2)
{
  v46 = 0;
  if (!a1)
  {
    return 4294960578;
  }

  if (*(a1 + 88) != 1634561902)
  {
    v4 = 4294960578;
    goto LABEL_14;
  }

  v3 = a2;
  v4 = 4294960591;
  if (!a2)
  {
    goto LABEL_14;
  }

  v5 = *(a1 + 96);
  if (!v5)
  {
    goto LABEL_14;
  }

  v4 = sub_23EB65ADC(v5);
  if (v4 != -6709)
  {
    goto LABEL_14;
  }

  valuePtr = v3;
  if (*(a1 + 88) == 1634561902 && *(a1 + 36) != 1)
  {
    v44 = sub_23EBEA0DC(a1, v6, v7, v8, v9, v10, v11, v12);
    if (v44)
    {
      v4 = v44;
      goto LABEL_14;
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_23EBE9E2C(a1, &v46);
  if (v14)
  {
    v4 = v14;
    if (!v13)
    {
      goto LABEL_14;
    }

LABEL_28:
    sub_23EBEA18C(a1, v15, v16, v17, v18, v19, v20, v21);
    goto LABEL_14;
  }

  v23 = v46;
  if (!v46 || (v24 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr)) == 0)
  {
    v4 = 4294960568;
    goto LABEL_27;
  }

  v25 = v24;
  v4 = sub_23EBEB5E8(v23, @"BSAssistantCallback_Number", v24, v17, v18, v19, v20, v21);
  CFRelease(v25);
  if (v4)
  {
    goto LABEL_27;
  }

  sub_23EBEB0B0(a1, 11, 0, 0, v18, v19, v20, v21);
  sub_23EBEDE70(v23, v26, v27, v28, v29, v30, v31, v32);
  v4 = sub_23EBEA92C(v23, v33, v34, v35, v36, v37, v38, v39);
  sub_23EBEB0B0(a1, 12, v4, 0, v40, v41, v42, v43);
  if (!v4)
  {
    v4 = *(v23 + 8);
    if (v13)
    {
      goto LABEL_28;
    }

    goto LABEL_14;
  }

  if (v4 != -6723)
  {
LABEL_27:
    if (!v13)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

  v4 = 4294960573;
  sub_23EBEE034(v23, 4294960573, v16, v17, v18, v19, v20, v21);
  if (v13)
  {
    goto LABEL_28;
  }

LABEL_14:
  if (v46)
  {
    sub_23EBE9F5C(v46);
  }

  return v4;
}

uint64_t sub_23EBEDE70(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = result;
  if (dword_27E382C48 <= 800)
  {
    if (dword_27E382C48 != -1 || (result = sub_23EB74AC8(&dword_27E382C48, 0x320u), result))
    {
      result = sub_23EB75374(&dword_27E382C48, "void __BSAssistant_AssistantResourceAquiredCallbackStart(void *)", 800, "\n", a5, a6, a7, a8, v16);
    }
  }

  if (!v8)
  {
    return result;
  }

  v17 = 0;
  if (*v8 != 1634561902)
  {
    v10 = -6718;
    return sub_23EBEB6CC(v8, v10, a3, a4, a5, a6, a7, a8);
  }

  v9 = *(v8 + 8);
  if (!v9 || !*(v9 + 96))
  {
    v10 = -6705;
    return sub_23EBEB6CC(v8, v10, a3, a4, a5, a6, a7, a8);
  }

  sub_23EB6FF14(*(v8 + 24), &v17, "%ks:int", a4, a5, a6, a7, a8, "BSAssistantCallback_Number");
  if (result)
  {
    goto LABEL_10;
  }

  if (v17 < 1)
  {
    v10 = -6710;
    return sub_23EBEB6CC(v8, v10, a3, a4, a5, a6, a7, a8);
  }

  v11 = *(v8 + 48);
  if (v11)
  {
    dispatch_source_cancel(v11);
    dispatch_release(*(v8 + 48));
    *(v8 + 48) = 0;
  }

  global_queue = dispatch_get_global_queue(0, 0);
  v13 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, global_queue);
  *(v8 + 48) = v13;
  if (!v13)
  {
    v10 = -6728;
    return sub_23EBEB6CC(v8, v10, a3, a4, a5, a6, a7, a8);
  }

  dispatch_set_context(v13, v8);
  dispatch_source_set_event_handler_f(*(v8 + 48), sub_23EBF016C);
  v14 = *(v8 + 48);
  v15 = dispatch_time(0, 1000000000 * v17);
  dispatch_source_set_timer(v14, v15, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  dispatch_resume(*(v8 + 48));
  result = sub_23EB65514(*(*(v8 + 8) + 96), sub_23EBF018C, v8);
  if (result)
  {
LABEL_10:
    v10 = result;
    return sub_23EBEB6CC(v8, v10, a3, a4, a5, a6, a7, a8);
  }

  return result;
}

uint64_t sub_23EBEE034(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (dword_27E382C48 <= 800)
  {
    if (dword_27E382C48 != -1 || (result = sub_23EB74AC8(&dword_27E382C48, 0x320u), result))
    {
      result = sub_23EB75374(&dword_27E382C48, "void _BSAssistant_LinkChangeCallbackStopWithResult(AssistantCallbackContextRef, OSStatus)", 800, "result: %m\n", a5, a6, a7, a8, a2);
    }
  }

  if (v9)
  {
    if (*v9 == 1634561902)
    {
      result = CFNotificationCenterGetLocalCenter();
      if (result)
      {
        CFNotificationCenterRemoveObserver(result, v9, @"com.apple.AirPort.WiFiShim.Notification.LinkChange", 0);
        pthread_mutex_lock((v9 + 14));
        v10 = *(v9 + 6);
        if (v10)
        {
          dispatch_source_cancel(v10);
          dispatch_release(*(v9 + 6));
          *(v9 + 6) = 0;
        }

        result = pthread_mutex_unlock((v9 + 14));
        v11 = a2;
      }

      else
      {
        v11 = -6728;
      }
    }

    else
    {
      v11 = -6718;
    }

    if (a2 != -6723)
    {

      return sub_23EBEB6CC(v9, v11, a3, a4, a5, a6, a7, a8);
    }
  }

  return result;
}

uint64_t sub_23EBEE150(uint64_t a1)
{
  if (!a1 || *(a1 + 88) != 1634561902)
  {
    return 4294960578;
  }

  v1 = *(a1 + 96);
  if (v1)
  {
    return sub_23EB65CE4(v1);
  }

  else
  {
    return 4294960591;
  }
}

uint64_t sub_23EBEE184(uint64_t a1, const __CFString *a2, const __CFString *a3, int a4, const void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  cf = 0;
  if (!a1)
  {
    return 4294960578;
  }

  if (*(a1 + 88) == 1634561902)
  {
    if (a2)
    {
      v13 = 0;
      v14 = 2;
      if (a4)
      {
        v14 = 20;
      }

      v19 = v14;
      while (1)
      {
        if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
        {
          sub_23EB75374(&dword_27E382C48, "OSStatus BSAssistant_JoinNetworkNameWithPasswordPrompt(AssistantContextRef, CFStringRef, CFStringRef, Boolean, Boolean)", 800, "retries: %d\n", a5, a6, a7, a8, v13);
        }

        v16 = sub_23EBEC4F4(a1, a2, 3, &cf, a5, a6, a7, a8);
        v17 = v16;
        if (a4 && v16 == -6727)
        {
          v17 = 4294960569;
          if (v13 >= 0x14)
          {
            goto LABEL_33;
          }
        }

        else
        {
          if (v16)
          {
            goto LABEL_33;
          }

          if (!cf)
          {
            return 4294960568;
          }

          v17 = sub_23EBEE398(a1, cf, a3, a4, a5, 1, a7, a8);
          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          if (v13 >= v19 || v17 != -3905 && v17 != -6727)
          {
            goto LABEL_33;
          }
        }

        if (++v13)
        {
          if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
          {
            sub_23EB75374(&dword_27E382C48, "OSStatus BSAssistant_JoinNetworkNameWithPasswordPrompt(AssistantContextRef, CFStringRef, CFStringRef, Boolean, Boolean)", 800, "waiting err: %#m pauseSecs: %d\n", a5, a6, a7, a8, v17);
          }

          v15 = sub_23EBEC174(a1, 6);
          if (v15)
          {
            v17 = v15;
            goto LABEL_33;
          }
        }
      }
    }

    v17 = 4294960591;
  }

  else
  {
    v17 = 4294960578;
  }

LABEL_33:
  if (cf)
  {
    CFRelease(cf);
  }

  return v17;
}

uint64_t sub_23EBEE398(uint64_t a1, const char *a2, const __CFString *a3, int a4, CFTypeRef a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a6;
  v9 = a5;
  v67 = 0;
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "OSStatus BSAssistant_JoinNetworkWithPasswordPromptAndWait(AssistantContextRef, CFDictionaryRef, CFStringRef, Boolean, Boolean, Boolean)", 800, " \n", a5, a6, a7, a8, v61);
  }

  if (!a1)
  {
    v28 = 4294960578;
    goto LABEL_79;
  }

  if (*(a1 + 88) != 1634561902)
  {
    v28 = 4294960578;
    goto LABEL_74;
  }

  if (!a2)
  {
    v28 = 4294960591;
    goto LABEL_79;
  }

  v64 = sub_23EC0F94C(a2, a2);
  if (!v64)
  {
    v28 = 4294960591;
    goto LABEL_78;
  }

  sub_23EBEAB18(a1, 5, 0, a2, a5, a6, a7, a8);
  v13 = a3;
  v67 = a3;
  if (a3)
  {
    CFRetain(a3);
    v13 = a3;
  }

  if (a4)
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  v66 = v14;
  v15 = v13;
  v63 = v9;
  v62 = *MEMORY[0x277CBECE8];
  while (1)
  {
    if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
    {
      sub_23EB75374(&dword_27E382C48, "OSStatus _JoinNetworkRetryAndWait(AssistantContextRef, CFDictionaryRef, CFStringRef, Boolean, JoinNetworkRememberChoice, CFIndex, Boolean)", 800, "\n", a5, a6, a7, a8, v61);
    }

    if (*(a1 + 88) != 1634561902)
    {
      break;
    }

    v16 = mach_absolute_time();
    v17 = 0;
    v18 = 0;
    v19 = v16 / sub_23EB803C4() + 12;
    while (1)
    {
      v20 = mach_absolute_time();
      if (v20 / sub_23EB803C4() >= v19)
      {
        v28 = v18;
        goto LABEL_65;
      }

      if (v17)
      {
        if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
        {
          sub_23EB75374(&dword_27E382C48, "OSStatus _JoinNetworkRetryAndWait(AssistantContextRef, CFDictionaryRef, CFStringRef, Boolean, JoinNetworkRememberChoice, CFIndex, Boolean)", 800, "waiting in retries err: %#m pauseSecs: %d (kDefault_JoiningBusy_RetrySecs)\n", a5, a6, a7, a8, v18);
        }

        v22 = sub_23EBEC174(a1, 2);
        if (v22)
        {
          break;
        }
      }

      if (v8)
      {
        v69 = 0;
        if (*(a1 + 88) == 1634561902)
        {
          v23 = sub_23EC0F94C(a2, v21);
          if (v23)
          {
            v24 = v23;
            if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
            {
              sub_23EB75374(&dword_27E382C48, "OSStatus _JoinNetworkAndWait(AssistantContextRef, CFDictionaryRef, CFStringRef, Boolean, JoinNetworkRememberChoice, CFIndex)", 800, "networkName: %@\n", a5, a6, a7, a8, v24);
            }

            v25 = sub_23EBE9E2C(a1, &v69);
            v27 = v69;
            if (v25)
            {
              v28 = v25;
              if (!v69)
              {
                goto LABEL_50;
              }

              goto LABEL_49;
            }

            if (v69)
            {
              if (*v69 != 1634561902)
              {
                v28 = 4294960578;
                goto LABEL_49;
              }

              v29 = *(v69 + 24);
              if (!v29)
              {
                v28 = 4294960591;
                goto LABEL_49;
              }

              v30 = sub_23EB6FDFC(v62, v29, "%kO=%O", v26, a5, a6, a7, a8, @"BSAssistantCallback_String");
              if (v30)
              {
                v28 = v30;
                goto LABEL_49;
              }

              valuePtr = 60;
              v31 = CFNumberCreate(v62, kCFNumberSInt32Type, &valuePtr);
              if (!v31)
              {
                v28 = 4294960568;
                goto LABEL_49;
              }

              v37 = v31;
              v28 = sub_23EBEB5E8(v27, @"BSAssistantCallback_Number", v31, v32, v33, v34, v35, v36);
              CFRelease(v37);
              if (!v28)
              {
                sub_23EBEF4C0(v27, v38, v39, v40, v41, v42, v43, v44);
                v49 = sub_23EBF0460(a1, a2, v15, v66, v45, v46, v47, v48);
                if (v49)
                {
                  v28 = v49;
LABEL_56:
                  sub_23EBEE034(v27, 4294960573, v51, v52, v53, v54, v55, v56);
                  goto LABEL_49;
                }

                v57 = sub_23EBEA92C(v27, v50, v51, v52, v53, v54, v55, v56);
                if (!v57)
                {
                  v28 = *(v27 + 32);
                  if (!v28)
                  {
                    sub_23EBF064C(a1, v58, v51, v52, v53, v54, v55, v56);
                  }

                  goto LABEL_49;
                }

                v28 = v57;
                if (v57 == -6723)
                {
                  v28 = 4294960573;
                  goto LABEL_56;
                }
              }

LABEL_49:
              sub_23EBE9F5C(v27);
              goto LABEL_50;
            }

            v28 = 4294960568;
          }

          else
          {
            v28 = 4294960569;
          }
        }

        else
        {
          v28 = 4294960578;
        }
      }

      else
      {
        v28 = sub_23EBF0460(a1, a2, v15, v66, a5, a6, a7, a8);
      }

LABEL_50:
      --v17;
      v18 = 4294960575;
      if (v28 != -6721)
      {
        goto LABEL_65;
      }
    }

    v28 = v22;
LABEL_65:
    if (v28 != -16)
    {
      goto LABEL_83;
    }

    if (!v63)
    {
      v28 = 4294967280;
      goto LABEL_74;
    }

    if (v67)
    {
      CFRelease(v67);
      v67 = 0;
    }

    v59 = sub_23EBECE2C(a1, @"keychainNetworkType", v64, &v67, a5, a6, a7, a8);
    if (v59)
    {
      v28 = v59;
      goto LABEL_74;
    }

    v15 = v67;
    if (!v67)
    {
      v28 = 4294960568;
      goto LABEL_74;
    }
  }

  v28 = 4294960578;
LABEL_83:
  if (!v28)
  {
    if (*(a1 + 33))
    {
      a5 = v67;
      if (v67)
      {
        if (!a3)
        {
          goto LABEL_89;
        }

        if (CFStringCompare(v67, a3, 0))
        {
          a5 = v67;
LABEL_89:
          sub_23EBECC6C(a1, @"keychainNetworkType", v64, 0, a5, a6, a7, a8);
        }

        v28 = 0;
      }
    }
  }

LABEL_74:
  if (a2)
  {
LABEL_78:
    sub_23EBEAB18(a1, 6, 0, a2, a5, a6, a7, a8);
  }

LABEL_79:
  if (v67)
  {
    CFRelease(v67);
  }

  return v28;
}

uint64_t sub_23EBEE8B0(uint64_t a1, const __CFString *cf, int a3, int a4, const void *a5, CFStringRef *a6, void *a7, uint64_t a8)
{
  cfa = 0;
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "OSStatus BSAssistant_CopyBrowseInfoForBaseAfterJoiningNetworkIfNeeded(AssistantContextRef, CFDictionaryRef, Boolean, Boolean, Boolean, CFStringRef *, CFDictionaryRef *)", 800, " \n", a5, a6, a7, a8, v37);
  }

  if (!a1 || *(a1 + 88) != 1634561902)
  {
    return 4294960578;
  }

  v15 = 4294960591;
  if (cf && a7)
  {
    CFRetain(cf);
    v23 = sub_23EB6A344(cf);
    if (!v23 && !sub_23EB6A530(cf, v16, v17, v18, v19, v20, v21, v22))
    {
      goto LABEL_14;
    }

    v24 = sub_23EB6AE58(cf, v16, v17, v18, v19, v20, v21, v22);
    if (v24)
    {
      v30 = v24;
      if (sub_23EBEBC34(a1, v24, a6, v25, v26, v27, v28, v29))
      {
        if (!v23)
        {
LABEL_14:
          v34 = 0;
LABEL_26:
          v15 = 0;
          *a7 = v34;
          goto LABEL_27;
        }
      }

      else
      {
        v15 = sub_23EBEE184(a1, v30, 0, a4, a5, v31, v32, v33);
        if (v15)
        {
          goto LABEL_28;
        }
      }

      if (a4)
      {
        v36 = 120;
      }

      else
      {
        v36 = 60;
      }

      v15 = sub_23EBED690(a1, 0, cf, a3, v36, &cfa, v32, v33);
      v34 = cfa;
      if (!v15)
      {
        if (!cfa)
        {
          v15 = 4294960568;
          goto LABEL_28;
        }

        goto LABEL_26;
      }

      if (cfa)
      {
        CFRelease(cfa);
LABEL_27:
        cfa = 0;
      }
    }

    else
    {
      v15 = 4294960569;
    }

LABEL_28:
    CFRelease(cf);
  }

  return v15;
}

uint64_t sub_23EBEEA6C(uint64_t a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "OSStatus BSAssistant_JoinNetworkAndBrowseForTheBaseStation(AssistantContextRef, CFDictionaryRef, Boolean, CFDictionaryRef *)", 800, "\n", a5, a6, a7, a8, v25);
  }

  if (!a1 || *(a1 + 88) != 1634561902)
  {
    return 4294960578;
  }

  v11 = 4294960591;
  if (a2 && a4)
  {
    v12 = sub_23EC0F94C(a2, a2);
    if (!v12)
    {
      return 4294960569;
    }

    if (!sub_23EBEBC34(a1, v12, 0, v13, v14, v15, v16, v17))
    {
      v23 = sub_23EBEE398(a1, a2, 0, 0, 0, 1, v21, v22);
      if (v23)
      {
        return v23;
      }
    }

    v25 = 0;
    cf = 0;
    v23 = sub_23EBEBA44(a1, 0, &cf, v18, v19, v20, v21, v22);
    if (v23)
    {
      return v23;
    }

    if (!cf)
    {
      return 4294960568;
    }

    v11 = sub_23EBED07C(a1, cf, 60, &v25);
    if (cf)
    {
      CFRelease(cf);
    }

    if (!v11)
    {
      if (v25)
      {
        v11 = 0;
        *a4 = v25;
        return v11;
      }

      return 4294960568;
    }
  }

  return v11;
}

uint64_t sub_23EBEEBCC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "OSStatus BSAssistant_AssistantMonitoringContext_Release(AssistantMonitoringContextRef)", 800, " \n", a5, a6, a7, a8, v13);
  }

  if (!a1 || *(a1 + 26) != 1634561902)
  {
    return 4294960578;
  }

  v9 = *(a1 + 12);
  if (!v9)
  {
    return 4294960591;
  }

  dispatch_group_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  *(a1 + 26) = 1095585614;
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 4) = 0;
  v10 = *(a1 + 11);
  if (v10)
  {
    dispatch_release(v10);
  }

  v11 = *(a1 + 12);
  if (v11)
  {
    dispatch_release(v11);
  }

  pthread_mutex_destroy((a1 + 24));
  free(a1);
  return 0;
}

uint64_t sub_23EBEECB0(_DWORD *a1, uint64_t a2, int a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "OSStatus BSAssistant_MonitorBaseForACPSystemFlagTrue(AssistantCallbackContextRef, BSRef, ACPSystemFlags, AssistantMonitoringContextRef *)", 800, " \n", a5, a6, a7, a8, v33);
  }

  cf = 0;
  if (!a1 || *a1 != 1634561902)
  {
    return 4294960578;
  }

  v12 = 4294960591;
  if (a2 && a3 && a4)
  {
    if (sub_23EBB4248(a2, 1095593838))
    {
      if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
      {
        sub_23EB75374(&dword_27E382C48, "OSStatus __ACPMonitoringContext_Create(AssistantCallbackContextRef, AssistantMonitoringContextRef *)", 800, " \n", v13, v14, v15, v16, v33);
      }

      if (*a1 == 1634561902)
      {
        v17 = malloc_type_calloc(1uLL, 0x70uLL, 0x1020040071D634FuLL);
        if (v17)
        {
          v18 = v17;
          *v17 = a1;
          v17[1] = 0;
          *(v17 + 4) = 0;
          *(v17 + 20) = 0;
          v17[11] = dispatch_queue_create("__ACPMonitoringContext.queue", 0);
          *(v18 + 96) = dispatch_group_create();
          v19 = pthread_mutex_init((v18 + 24), 0);
          if (v19)
          {
            v12 = v19;
            sub_23EBEEBCC(v18, v20, v21, v22, v23, v24, v25, v26);
          }

          else
          {
            *(v18 + 104) = 1634561902;
            *(v18 + 8) = a2;
            *(v18 + 16) = a3;
            v27 = sub_23EB6F348(*MEMORY[0x277CBECE8], &cf, "{%ks={%kC={}%kC={}%kC={}}}", v22, v23, v24, v25, v26, "filters");
            if (v27)
            {
              v12 = v27;
            }

            else
            {
              v12 = sub_23EBB627C(a2, cf, sub_23EBEEF00, v18, v28, v29, v30, v31);
              if (!v12)
              {
                *a4 = v18;
              }
            }
          }
        }

        else
        {
          v12 = 4294960568;
        }
      }

      else
      {
        v12 = 4294960578;
      }
    }

    else
    {
      v12 = 4294960561;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

void sub_23EBEEF00(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v8 = 0;
  }

  else if (a3 && *(a3 + 104) == 1634561902 && *(a3 + 96) && *(a3 + 88))
  {
    pthread_mutex_lock((a3 + 24));
    v8 = *(a3 + 20);
    *(a3 + 20) = 1;
    pthread_mutex_unlock((a3 + 24));
    if (!v8)
    {
      dispatch_group_async_f(*(a3 + 96), *(a3 + 88), a3, sub_23EBF0898);
    }
  }

  else
  {
    v8 = 0;
  }

  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "void __ACPMonitoringForFlagCallback(OSStatus, CFDictionaryRef, void *)", 800, " taskPending: %d err: %d \ninData: %@\n", a5, a6, a7, a8, v8);
  }
}

void sub_23EBEF00C(const __CFString *a1, int *a2, CFTypeRef *a3, BOOL *a4, _BYTE *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *&v57[4] = *MEMORY[0x277D85DE8];
  if (!a1 || !a2 && !a3 && !a4 && !a5)
  {
    return;
  }

  v54 = 0;
  theArray = 0;
  v53 = 0;
  v52 = 0;
  v51 = 0;
  sub_23EB6FF14(a1, &theArray, "%ks", a4, a5, a6, a7, a8, "radios");
  if (v17)
  {
    return;
  }

  if (!theArray)
  {
    return;
  }

  sub_23EB6FF14(theArray, &v56, "[*].%ks:int", v12, v13, v14, v15, v16, 0);
  if (v18)
  {
    return;
  }

  if (CFArrayGetCount(theArray) >= 2)
  {
    sub_23EB6FF14(theArray, v57, "[*].%ks:int", v19, v20, v21, v22, v23, 1);
    if (v24)
    {
      return;
    }
  }

  sub_23EB6FF14(theArray, &v54 + 4, "[*].%ks:int", v19, v20, v21, v22, v23, 0);
  if (v30)
  {
    return;
  }

  sub_23EB6FF14(theArray, &v54, "[*].%ks:int", v25, v26, v27, v28, v29, 0);
  if (v36)
  {
    return;
  }

  v37 = v56;
  if (v56)
  {
    if (v54)
    {
      v38 = v56 == 1;
    }

    else
    {
      v38 = 0;
    }

    if (v38)
    {
      v37 = 20;
    }
  }

  else if ((BYTE4(v54) & 3u) - 1 >= 2)
  {
    v37 = 0;
  }

  else
  {
    v37 = 10;
  }

  if (a2)
  {
    *a2 = v37;
  }

  if (!a3)
  {
LABEL_30:
    if (!a4)
    {
      goto LABEL_47;
    }

    goto LABEL_31;
  }

  if (v37 == 3)
  {
    *a3 = &stru_285145FE8;
    goto LABEL_30;
  }

  sub_23EB6FF14(theArray, a3, "[*].%ks", v31, v32, v33, v34, v35, 0);
  if (v49 || !*a3)
  {
    return;
  }

  CFRetain(*a3);
  if (!a4)
  {
LABEL_47:
    if (a5)
    {
      *a5 = v54;
    }

    return;
  }

LABEL_31:
  *a4 = 0;
  sub_23EB6FF14(theArray, &v53, "[*].%ks", v31, v32, v33, v34, v35, 0);
  if (v39 == -6727)
  {
    goto LABEL_47;
  }

  if (v39 || !v53)
  {
    return;
  }

  Count = CFArrayGetCount(v53);
  if (Count < 1)
  {
    goto LABEL_47;
  }

  v46 = Count;
  v47 = 0;
  while (1)
  {
    sub_23EB6FF14(v53, &v52, "[*].%ks:int", v41, v42, v43, v44, v45, v47);
    if (v48)
    {
      break;
    }

    if (v52 == 6)
    {
      sub_23EB6FF14(v53, &v51, "[*].%ks:BOOL", v41, v42, v43, v44, v45, v47);
      if (v50)
      {
        return;
      }

      *a4 = v51 != 0;
      goto LABEL_47;
    }

    if (v46 == ++v47)
    {
      goto LABEL_47;
    }
  }
}

uint64_t sub_23EBEF2E4(CFDataRef theData, int a2)
{
  result = 0;
  if (theData)
  {
    if (a2)
    {
      result = CFDataGetBytePtr(theData);
      if (result)
      {
        v5 = result;
        Length = CFDataGetLength(theData);
        if (Length < 4)
        {
          return 0;
        }

        else
        {
          v7 = Length >> 2;
          while (1)
          {
            v8 = *v5++;
            if (bswap32(v8) == a2)
            {
              break;
            }

            if (!--v7)
            {
              return 0;
            }
          }

          return 1;
        }
      }
    }
  }

  return result;
}

void sub_23EBEF364(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "OSStatus __ProgressContext_Release(__ProgressContextRef)", 800, " \n", a5, a6, a7, a8, v11);
  }

  if (*(a1 + 4) == 1634561902)
  {
    v9 = a1[1];
    if (v9)
    {
      CFRelease(v9);
      a1[1] = 0;
    }

    *(a1 + 4) = 1095585614;
    v10 = a1[3];
    if (v10)
    {
      CFRelease(v10);
    }

    free(a1);
  }
}

void sub_23EBEF42C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = 0;
  if (a1 == 13)
  {
    v8 = sub_23EB6F348(*MEMORY[0x277CBECE8], &v12, "{%##O%kO=%i}", a4, a5, a6, a7, a8, a3);
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
        CFNotificationCenterPostNotificationWithOptions(LocalCenter, @"com.apple.airport.assistant.BusyStateChange", 0, v12, 1uLL);
      }

      v9 = v12;
    }

    if (v9)
    {
      CFRelease(v9);
    }
  }
}

uint64_t sub_23EBEF4C0(uint64_t context, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = context;
  if (dword_27E382C48 <= 800)
  {
    if (dword_27E382C48 != -1 || (context = sub_23EB74AC8(&dword_27E382C48, 0x320u), context))
    {
      context = sub_23EB75374(&dword_27E382C48, "void __BSAssistant_LinkChangeCallbackStart(void *)", 800, "\n", a5, a6, a7, a8, v12);
    }
  }

  if (v8)
  {
    v13 = 0;
    if (*v8 != 1634561902)
    {
      v10 = -6718;
      return sub_23EBEB6CC(v8, v10, a3, a4, a5, a6, a7, a8);
    }

    v9 = v8[3];
    if (!v9)
    {
      v10 = -6705;
      return sub_23EBEB6CC(v8, v10, a3, a4, a5, a6, a7, a8);
    }

    if (v8[6] || v8[15])
    {
      v10 = -6721;
      return sub_23EBEB6CC(v8, v10, a3, a4, a5, a6, a7, a8);
    }

    sub_23EB6FF14(v9, &v13, "%ks:int", a4, a5, a6, a7, a8, "BSAssistantCallback_Number");
    if (context)
    {
      goto LABEL_16;
    }

    if (v13 < 1)
    {
      v10 = -6710;
      return sub_23EBEB6CC(v8, v10, a3, a4, a5, a6, a7, a8);
    }

    LocalCenter = CFNotificationCenterGetLocalCenter();
    if (!LocalCenter)
    {
      v10 = -6728;
      return sub_23EBEB6CC(v8, v10, a3, a4, a5, a6, a7, a8);
    }

    CFNotificationCenterAddObserver(LocalCenter, v8, sub_23EBEF614, @"com.apple.AirPort.WiFiShim.Notification.LinkChange", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    context = sub_23EBEF788(v8, 1000 * v13);
    if (context)
    {
LABEL_16:
      v10 = context;
      return sub_23EBEB6CC(v8, v10, a3, a4, a5, a6, a7, a8);
    }
  }

  return context;
}

void sub_23EBEF614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFString *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = 0;
  theString1 = 0;
  if (a2)
  {
    if (a5)
    {
      if (*a2 == 1634561902)
      {
        v25 = 0;
        v10 = *(a2 + 24);
        if (!v10 || !CFDictionaryContainsKey(v10, @"BSAssistantCallback_String") || (sub_23EBEB494(a2, @"BSAssistantCallback_String", &theString1, a4, a5, a6, a7, a8), !v11) && theString1)
        {
          sub_23EB6FF14(a5, &v25, "%kO:int", a4, a5, a6, a7, a8, @"kNetworkLinkManager_LinkChangeKey_LinkState");
          if (!v17)
          {
            sub_23EB6FF14(a5, &v27, "%kO", v12, v13, v14, v15, v16, @"kNetworkLinkManager_LinkChangeKey_WiFiName");
            if (v24 == -6727 || v27)
            {
              if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
              {
                sub_23EB75374(&dword_27E382C48, "void __BSAssistant_LinkChangeCallBack(CFNotificationCenterRef, void *, CFStringRef, const void *, CFDictionaryRef)", 800, "stopOnName: %@ inUserInfo: %@\n", v20, v21, v22, v23, theString1);
              }

              if (!theString1)
              {
                if (v27)
                {
                  return;
                }

                goto LABEL_21;
              }

              if (v27 && v25 == 1 && CFStringCompare(theString1, v27, 0) == kCFCompareEqualTo)
              {
LABEL_21:
                sub_23EBEE034(a2, 0, v18, v19, v20, v21, v22, v23);
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_23EBEF788(dispatch_source_t *a1, int a2)
{
  if (*a1 != 1634561902)
  {
    return 4294960578;
  }

  if (a2 < 1)
  {
    return 4294960559;
  }

  v4 = a1[6];
  if (v4)
  {
    dispatch_source_cancel(v4);
    dispatch_release(a1[6]);
    a1[6] = 0;
  }

  global_queue = dispatch_get_global_queue(0, 0);
  v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, global_queue);
  a1[6] = v6;
  if (!v6)
  {
    return 4294960568;
  }

  dispatch_set_context(v6, a1);
  dispatch_source_set_event_handler_f(a1[6], sub_23EBEF88C);
  v7 = a1[6];
  v8 = dispatch_time(0, 1000000 * a2);
  dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  dispatch_resume(a1[6]);
  return 0;
}

uint64_t sub_23EBEF8AC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = result;
  if (dword_27E382C48 <= 800)
  {
    if (dword_27E382C48 != -1 || (result = sub_23EB74AC8(&dword_27E382C48, 0x320u), result))
    {
      result = sub_23EB75374(&dword_27E382C48, "void __BSAssistant_LinkChangeTimerFiredCallbackOnMain(void *)", 800, "\n", a5, a6, a7, a8, v9);
    }
  }

  if (v8 && *v8 == 1634561902)
  {

    return sub_23EBEE034(v8, 4294960574, a3, a4, a5, a6, a7, a8);
  }

  return result;
}

uint64_t sub_23EBEF954(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "OSStatus _BSAssistant_BonjourBrowseCallbackStart(AssistantCallbackContextRef)", 800, "\n", a5, a6, a7, a8, v15);
  }

  v18 = 0;
  v17 = 0;
  v16 = 0;
  if (!a1 || *a1 != 1634561902)
  {
    v10 = 4294960578;
    goto LABEL_12;
  }

  v9 = a1[3];
  if (!v9)
  {
    v10 = 4294960591;
    goto LABEL_12;
  }

  if (a1[6] || a1[15])
  {
    v10 = 4294960575;
    goto LABEL_12;
  }

  sub_23EB6FF14(v9, &v17, "%ks:int", a4, a5, a6, a7, a8, "BSAssistantCallback_Number");
  if (v12)
  {
    goto LABEL_16;
  }

  if (v17 < 1)
  {
    v10 = 4294960586;
    goto LABEL_12;
  }

  sub_23EB6FF14(a1[3], &v16, "%ks:BOOL", a4, a5, a6, a7, a8, "BSAssistantCallback_Boolean");
  if (v12)
  {
    goto LABEL_16;
  }

  LocalCenter = CFNotificationCenterGetLocalCenter();
  if (!LocalCenter)
  {
LABEL_26:
    v10 = 4294960568;
    goto LABEL_12;
  }

  v14 = LocalCenter;
  CFNotificationCenterAddObserver(LocalCenter, a1, sub_23EBEFC94, @"com.apple.bonjour.txt.BaseAssistant.Updated", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(v14, a1, sub_23EBEFC94, @"com.apple.bonjour.txt.BaseAssistant.Removed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v12 = sub_23EB54398("com.apple.bonjour.txt.BaseAssistant.Updated", "com.apple.bonjour.txt.BaseAssistant.Removed", "BSAssistant:BrowserSession", &v18);
  if (v12)
  {
LABEL_16:
    v10 = v12;
    goto LABEL_12;
  }

  if (!v18)
  {
    goto LABEL_26;
  }

  v12 = sub_23EB54824(v18, 0, v16 != 0);
  if (v12)
  {
    goto LABEL_16;
  }

  v10 = sub_23EBF0024(a1, 1000 * v17);
  if (!v10)
  {
    a1[15] = v18;
    return v10;
  }

LABEL_12:
  sub_23EBEFB5C(a1, -6723, a3, a4, a5, a6, a7, a8);
  return v10;
}

void sub_23EBEFB5C(NSObject **a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "void _BSAssistant_BonjourBrowseCallbackStopWithResult(AssistantCallbackContextRef, OSStatus)", 800, "\n", a5, a6, a7, a8, v15);
  }

  if (a1)
  {
    if (*a1 == 1634561902)
    {
      LocalCenter = CFNotificationCenterGetLocalCenter();
      if (LocalCenter)
      {
        v11 = LocalCenter;
        CFNotificationCenterRemoveObserver(LocalCenter, a1, @"com.apple.bonjour.txt.BaseAssistant.Updated", 0);
        CFNotificationCenterRemoveObserver(v11, a1, @"com.apple.bonjour.txt.BaseAssistant.Removed", 0);
        v12 = a1[15];
        if (v12)
        {
          sub_23EB54BC4(v12);
          a1[15] = 0;
        }

        v13 = a1[6];
        v14 = a2;
        if (v13)
        {
          dispatch_source_cancel(v13);
          dispatch_release(a1[6]);
          a1[6] = 0;
          v14 = a2;
        }
      }

      else
      {
        v14 = -6728;
      }
    }

    else
    {
      v14 = -6718;
    }

    if (a2 != -6723)
    {

      sub_23EBEB6CC(a1, v14, a3, a4, a5, a6, a7, a8);
    }
  }
}

void sub_23EBEFC94(int a1, uint64_t a2, CFStringRef theString1, uint64_t a4, const __CFString *a5)
{
  v60 = 0;
  v61 = 0;
  if (a2)
  {
    if (a5)
    {
      if (*a2 == 1634561902)
      {
        v62 = 0;
        theArray = 0;
        v7 = CFStringCompare(theString1, @"com.apple.bonjour.txt.BaseAssistant.Updated", 0);
        sub_23EBEB494(a2, @"BSAssistantCallback_BrowseRecords", &theArray, v8, v9, v10, v11, v12);
        if (!v13)
        {
          if (theArray)
          {
            if (*a2 == 1634561902 && (v14 = *(a2 + 24)) != 0 && CFDictionaryContainsKey(v14, @"BSAssistantCallback_String"))
            {
              sub_23EBEB494(a2, @"BSAssistantCallback_String", &v60, v15, v16, v17, v18, v19);
              if (v25 || !v60)
              {
                return;
              }
            }

            else if (sub_23EBF0024(a2, 5000))
            {
              return;
            }

            sub_23EB6FF14(a5, &v62, "%ks.%ks", v20, v21, v22, v23, v24, "txt");
            if (!v31 && v62)
            {
              if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
              {
                sub_23EB75374(&dword_27E382C48, "void __BSAssistant_TxtUpdateCallBack(CFNotificationCenterRef, void *, CFStringRef, const void *, CFDictionaryRef)", 800, "add: %d MAC: %@ stopOnMACAddress: %@\n", v27, v28, v29, v30, v7 == kCFCompareEqualTo);
              }

              if (v7)
              {
                v32 = sub_23EB6B3A8(theArray, v62);
                if (v32 != -1)
                {
                  CFArrayRemoveValueAtIndex(theArray, v32);
                }

                return;
              }

              if (!sub_23EB6FDFC(*MEMORY[0x277CBECE8], theArray, "%O", v26, v27, v28, v29, v30, a5))
              {
                if (v60)
                {
                  sub_23EB6FF14(a5, &v61, "%ks.%ks", v33, v34, v35, v36, v37, "txt");
                  if ((v38 == -6727 || !v38 && v61) && ((sub_23EBAFDF4(v62, v60) & 1) != 0 || v61 && sub_23EBAFDF4(v61, v60)))
                  {
                    number = 0;
                    otherNumber = 0;
                    if (*a2 == 1634561902 && (v45 = *(a2 + 24)) != 0 && CFDictionaryContainsKey(v45, @"BSAssistantCallback_BonjourSeed"))
                    {
                      sub_23EBEB494(a2, @"BSAssistantCallback_BonjourSeed", &number, v40, v41, v42, v43, v44);
                      if (v51 || !number)
                      {
                        return;
                      }

                      sub_23EB6FF14(a5, &otherNumber, "%ks.%ks", v46, v47, v48, v49, v50, "txt");
                      v53 = v52;
                      if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
                      {
                        sub_23EB75374(&dword_27E382C48, "void __BSAssistant_TxtUpdateCallBack(CFNotificationCenterRef, void *, CFStringRef, const void *, CFDictionaryRef)", 800, "checking bonjour seeds old: %@ cur: %@\n", v41, v42, v43, v44, number);
                      }
                    }

                    else
                    {
                      v53 = 0;
                    }

                    if (!v53 && number && otherNumber && CFNumberCompare(number, otherNumber, 0) == kCFCompareEqualTo)
                    {
                      if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
                      {
                        sub_23EB75374(&dword_27E382C48, "void __BSAssistant_TxtUpdateCallBack(CFNotificationCenterRef, void *, CFStringRef, const void *, CFDictionaryRef)", 800, "responding with duplicate error\n", v41, v42, v43, v44, v56);
                      }

                      sub_23EB54A9C(*(a2 + 120), a5);
                      v54 = a2;
                      v55 = -6730;
                    }

                    else
                    {
                      v54 = a2;
                      v55 = 0;
                    }

                    sub_23EBEFB5C(v54, v55, v39, v40, v41, v42, v43, v44);
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

uint64_t sub_23EBF0024(dispatch_source_t *a1, int a2)
{
  if (*a1 != 1634561902)
  {
    return 4294960578;
  }

  if (a2 < 1)
  {
    return 4294960559;
  }

  v4 = a1[6];
  if (v4)
  {
    dispatch_source_cancel(v4);
    dispatch_release(a1[6]);
    a1[6] = 0;
  }

  global_queue = dispatch_get_global_queue(0, 0);
  v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, global_queue);
  a1[6] = v6;
  if (!v6)
  {
    return 4294960568;
  }

  dispatch_set_context(v6, a1);
  dispatch_source_set_event_handler_f(a1[6], sub_23EBF0128);
  v7 = a1[6];
  v8 = dispatch_time(0, 1000000 * a2);
  dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  dispatch_resume(a1[6]);
  return 0;
}

void sub_23EBF0148(NSObject **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (*a1 == 1634561902)
    {
      sub_23EBEFB5C(a1, -6722, a3, a4, a5, a6, a7, a8);
    }
  }
}

void sub_23EBF018C(const __CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = 0;
  if (!a2 || *a2 != 1634561902)
  {
    v11 = 4294960578;
    goto LABEL_13;
  }

  if (!a1)
  {
    v11 = 4294960591;
    goto LABEL_13;
  }

  sub_23EB6FF14(a1, &v13, "%kO:int", a4, a5, a6, a7, a8, @"kAssistantResourceManager_StateKey");
  v11 = v10;
  if (v10)
  {
LABEL_13:
    sub_23EBF0338(a2, v11, a3, a4, a5, a6, a7, a8);
    return;
  }

  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "void __BSAssistant_AssistantResourceChangedCallBack(CFDictionaryRef, void *)", 800, "inResourceStatus: %@\n", a5, a6, a7, a8, a1);
  }

  if (v13 == 1)
  {
    v12 = sub_23EB65ADC(*(*(a2 + 8) + 96));
    if (v12 != -6709)
    {
      v11 = v12;
      goto LABEL_13;
    }
  }
}

uint64_t sub_23EBF0290(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = result;
  if (dword_27E382C48 <= 800)
  {
    if (dword_27E382C48 != -1 || (result = sub_23EB74AC8(&dword_27E382C48, 0x320u), result))
    {
      result = sub_23EB75374(&dword_27E382C48, "void __BSAssistant_AssistantResourceTimerFiredCallbackOnMain(void *)", 800, "\n", a5, a6, a7, a8, v9);
    }
  }

  if (v8 && *v8 == 1634561902)
  {

    return sub_23EBF0338(v8, 4294960574, a3, a4, a5, a6, a7, a8);
  }

  return result;
}

uint64_t sub_23EBF0338(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (dword_27E382C48 <= 800)
  {
    if (dword_27E382C48 != -1 || (result = sub_23EB74AC8(&dword_27E382C48, 0x320u), result))
    {
      result = sub_23EB75374(&dword_27E382C48, "void _BSAssistant_AssistantResourceCallbackStopWithResult(AssistantCallbackContextRef, OSStatus)", 800, "result: %m\n", a5, a6, a7, a8, a2);
    }
  }

  if (v9)
  {
    if (*v9 == 1634561902)
    {
      v10 = *(v9 + 8);
      if (v10 && *(v10 + 96))
      {
        pthread_mutex_lock((v9 + 56));
        v11 = *(v9 + 48);
        if (v11)
        {
          dispatch_source_cancel(v11);
          dispatch_release(*(v9 + 48));
          *(v9 + 48) = 0;
        }

        pthread_mutex_unlock((v9 + 56));
        result = sub_23EB65514(*(*(v9 + 8) + 96), 0, 0);
        if (result)
        {
          v12 = result;
        }

        else
        {
          v12 = a2;
        }
      }

      else
      {
        v12 = -6705;
      }
    }

    else
    {
      v12 = -6718;
    }

    if (a2 != -6723)
    {

      return sub_23EBEB6CC(v9, v12, a3, a4, a5, a6, a7, a8);
    }
  }

  return result;
}

uint64_t sub_23EBF0460(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "OSStatus _JoinNetwork(AssistantContextRef, CFDictionaryRef, CFStringRef, Boolean, JoinNetworkRememberChoice)", 800, "\n", a5, a6, a7, a8, v54);
  }

  v55 = 0;
  if (*(a1 + 88) != 1634561902)
  {
    return 4294960578;
  }

  sub_23EC0F95C(a2, a2);
  v13 = sub_23EC0F94C(a2, v12);
  if (dword_27E382C48 <= 800)
  {
    v18 = v13;
    if (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u))
    {
      sub_23EB75374(&dword_27E382C48, "OSStatus _JoinNetwork(AssistantContextRef, CFDictionaryRef, CFStringRef, Boolean, JoinNetworkRememberChoice)", 800, "networkName: %@ bssid: %@\n", v14, v15, v16, v17, v18);
    }
  }

  v19 = sub_23EBE9E2C(a1, &v55);
  v25 = v55;
  if (v19)
  {
    v26 = v19;
    if (!v55)
    {
      return v26;
    }
  }

  else
  {
    if (!v55)
    {
      return 4294960568;
    }

    v27 = sub_23EBEB5E8(v55, @"BSAssistantCallback_ScanInfo", a2, v20, v21, v22, v23, v24);
    if (v27 || a3 && (v27 = sub_23EBEB5E8(v25, @"BSAssistantCallback_ScanInfoPassword", a3, v28, v29, v30, v31, v32), v27) || (v27 = sub_23EBEB5E8(v25, @"BSAssistantCallback_Boolean", *MEMORY[0x277CBED10], v28, v29, v30, v31, v32), v27) || (v27 = sub_23EBEB65C(v25, @"BSAssistantCallback_JoinRememberChoice", a4, v34, v35, v36, v37, v38), v27) || (v27 = sub_23EBEA59C(v25, 2, v39, v40, v41, v42, v43, v44), v27))
    {
      v26 = v27;
    }

    else
    {
      v52 = sub_23EBEA92C(v25, v45, v46, v47, v48, v49, v50, v51);
      v53 = *(v25 + 32);
      if (v53)
      {
        v26 = v53;
      }

      else
      {
        v26 = v52;
      }
    }
  }

  sub_23EBE9F5C(v25);
  return v26;
}

void sub_23EBF064C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
  {
    sub_23EB75374(&dword_27E382C48, "OSStatus _BSAssistant_WaitForIPv6Flags(AssistantContextRef, CFIndex, int32_t, Boolean)", 800, "inFlags: 0x%x inAND: %d\n", a5, a6, a7, a8, 2);
  }

  cf = 0;
  if (*(a1 + 88) == 1634561902)
  {
    v9 = mach_absolute_time();
    v10 = v9 / sub_23EB803C4() + 10;
    theArray = 0;
    v11 = mach_absolute_time();
    if (v11 / sub_23EB803C4() < v10)
    {
      while (!sub_23EC0F808(&cf, v12, v13))
      {
        if (!cf)
        {
          break;
        }

        sub_23EB6FF14(cf, &theArray, "%kO.%kO", v14, v15, v16, v17, v18, @"kNetworkLinkManager_LinkChangeKey_IPv6Dict");
        if (v19)
        {
          break;
        }

        if (!theArray)
        {
          break;
        }

        Count = CFArrayGetCount(theArray);
        if (!Count)
        {
          break;
        }

        v26 = Count;
        if (Count >= 1)
        {
          v27 = 0;
          v28 = 1;
          while (1)
          {
            v31 = 0;
            sub_23EB6FF14(theArray, &v31, "[*]:int", v21, v22, v23, v24, v25, v27);
            if (v29)
            {
              goto LABEL_27;
            }

            if (dword_27E382C48 <= 800 && (dword_27E382C48 != -1 || sub_23EB74AC8(&dword_27E382C48, 0x320u)))
            {
              sub_23EB75374(&dword_27E382C48, "OSStatus _BSAssistant_WaitForIPv6Flags(AssistantContextRef, CFIndex, int32_t, Boolean)", 800, "Checking IPv6 flags: 0x%x against: 0x%x\n", v22, v23, v24, v25, 2);
            }

            if ((v31 & 2) != 0)
            {
              v28 = ++v27 < v26;
              if (v26 != v27)
              {
                continue;
              }
            }

            goto LABEL_23;
          }
        }

        v28 = 0;
LABEL_23:
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        if (!v28)
        {
          sub_23EBEC174(a1, 1);
          theArray = 0;
          v30 = mach_absolute_time();
          if (v30 / sub_23EB803C4() < v10)
          {
            continue;
          }
        }

        break;
      }
    }

LABEL_27:
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

uint64_t sub_23EBF0898(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = result;
  if (dword_27E382C48 <= 800)
  {
    if (dword_27E382C48 != -1 || (result = sub_23EB74AC8(&dword_27E382C48, 0x320u), result))
    {
      result = sub_23EB75374(&dword_27E382C48, "void __CheckSystemFlagsAsync(void *)", 800, " \n", a5, a6, a7, a8, v16);
    }
  }

  if (v8)
  {
    v17 = 0;
    if (*(v8 + 104) == 1634561902)
    {
      if (*v8)
      {
        if (**v8 == 1634561902)
        {
          v9 = *(v8 + 8);
          if (v9)
          {
            if (!sub_23EBB4DE4(v9, 1937327724) && !sub_23EBB3F7C(*(v8 + 8), 1937327724, &v17) && (*(v8 + 16) & v17) != 0)
            {
              sub_23EBEB6CC(*v8, 0, v10, v11, v12, v13, v14, v15);
            }
          }
        }
      }
    }

    pthread_mutex_lock((v8 + 24));
    *(v8 + 20) = 0;
    return pthread_mutex_unlock((v8 + 24));
  }

  return result;
}

uint64_t sub_23EBF366C(uint64_t result, const char *a2)
{
  if (*(result + 48) > a2)
  {
    v4 = result;
    objc_msgSend_deleteAllRowsInSectionCore_(*(result + 32), a2, a2);
    v6 = *(v4 + 40);

    return objc_msgSend_removeObjectAtIndex_(v6, v5, a2);
  }

  return result;
}

CGColorRef sub_23EBFD680(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  components[4] = *MEMORY[0x277D85DE8];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  components[0] = a1;
  components[1] = a2;
  components[2] = a3;
  components[3] = a4;
  v9 = CGColorCreate(DeviceRGB, components);
  CGColorSpaceRelease(DeviceRGB);
  return v9;
}

CGColorRef sub_23EBFD718()
{
  v4 = *MEMORY[0x277D85DE8];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  memset(v3, 0, sizeof(v3));
  v1 = CGColorCreate(DeviceRGB, v3);
  CGColorSpaceRelease(DeviceRGB);
  return v1;
}

CGImageRef sub_23EBFD790(CGImage *a1, double a2)
{
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  v6 = a2 / 100.0;
  v7 = a2 / 100.0 * Width;
  v8 = v6 * Height;
  BitsPerComponent = CGImageGetBitsPerComponent(a1);
  ColorSpace = CGImageGetColorSpace(a1);
  v11 = CGBitmapContextCreate(0, v7, v8, BitsPerComponent, 0, ColorSpace, 2u);
  v14.size.width = v7;
  v14.size.height = v8;
  v14.origin.x = 0.0;
  v14.origin.y = 0.0;
  CGContextDrawImage(v11, v14, a1);
  Image = CGBitmapContextCreateImage(v11);
  CGContextRelease(v11);
  return Image;
}

void sub_23EBFD864(CGContext *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7)
{
  v8 = sub_23EBFD8AC(a2, a3, a4, a5, a6, a7);
  CGContextAddPath(a1, v8);

  CGPathRelease(v8);
}

CGPath *sub_23EBFD8AC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6)
{
  Mutable = CGPathCreateMutable();
  v20.origin.x = a1;
  v20.origin.y = a2;
  v20.size.width = a3;
  v20.size.height = a4;
  MinX = CGRectGetMinX(v20);
  v21.origin.x = a1;
  v21.origin.y = a2;
  v21.size.width = a3;
  v21.size.height = a4;
  MidX = CGRectGetMidX(v21);
  v22.origin.x = a1;
  v22.origin.y = a2;
  v22.size.width = a3;
  v22.size.height = a4;
  MaxX = CGRectGetMaxX(v22);
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  MinY = CGRectGetMinY(v23);
  v24.origin.x = a1;
  v24.origin.y = a2;
  v24.size.width = a3;
  v24.size.height = a4;
  MidY = CGRectGetMidY(v24);
  v25.origin.x = a1;
  v25.origin.y = a2;
  v25.size.width = a3;
  v25.size.height = a4;
  MaxY = CGRectGetMaxY(v25);
  CGPathMoveToPoint(Mutable, 0, MinX, MidY);
  CGPathAddArcToPoint(Mutable, 0, MinX, MinY, MidX, MinY, a5);
  CGPathAddArcToPoint(Mutable, 0, MaxX, MinY, MaxX, MidY, a5);
  CGPathAddArcToPoint(Mutable, 0, MaxX, MaxY, MidX, MaxY, a5);
  if (a6 != 0.0)
  {
    CGPathAddLineToPoint(Mutable, 0, MidX + a6, MaxY);
    CGPathAddLineToPoint(Mutable, 0, MidX, MaxY + a6);
    CGPathAddLineToPoint(Mutable, 0, MidX - a6, MaxY);
  }

  CGPathAddArcToPoint(Mutable, 0, MinX, MaxY, MinX, MidY, a5);
  return Mutable;
}

void sub_23EBFDA80(CGContext *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v7 = sub_23EBFD8AC(a2, a3, a4, a5, a6, 0.0);
  CGContextAddPath(a1, v7);

  CGPathRelease(v7);
}

uint64_t sub_23EC09DCC(const void *a1, CFTypeRef **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E383180 <= 800 && (dword_27E383180 != -1 || sub_23EB74AC8(&dword_27E383180, 0x320u)))
  {
    sub_23EB75374(&dword_27E383180, "OSStatus _WiFiShimPrivateContext_Create(WiFiShimSubContextRef, WiFiShimContextRef *)", 800, " \n", a5, a6, a7, a8, v28);
  }

  theArray = 0;
  v10 = 4294960591;
  if (!a1 || !a2)
  {
    return v10;
  }

  v11 = malloc_type_calloc(1uLL, 0x10uLL, 0x600405C6656D0uLL);
  v19 = v11;
  if (!v11)
  {
    goto LABEL_20;
  }

  v11[1] = a1;
  v20 = sub_23EC0BE3C(v11, &theArray, v13, v14, v15, v16, v17, v18);
  if (v20)
  {
LABEL_9:
    v10 = v20;
    goto LABEL_21;
  }

  if (!theArray)
  {
    v10 = 4294960568;
LABEL_24:
    sub_23EC09FB8(v19, v12, v13, v14, v15, v16, v17, v18);
    return v10;
  }

  Count = CFArrayGetCount(theArray);
  v22 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], Count, MEMORY[0x277CBF128]);
  *v19 = Mutable;
  if (Mutable)
  {
    if (Count >= 1)
    {
      v24 = 0;
      do
      {
        v29 = 0;
        sub_23EB6FF14(theArray, &v29, "[*]", v14, v15, v16, v17, v18, v24);
        if (v20)
        {
          goto LABEL_9;
        }

        v25 = sub_23EB61B14(v22, v29, v13, v14, v15, v16, v17, v18);
        if (!v25)
        {
          goto LABEL_20;
        }

        v26 = v25;
        v20 = sub_23EB6FDFC(v22, *v19, "%O", v14, v15, v16, v17, v18, v25);
        if (v20)
        {
          goto LABEL_9;
        }

        v20 = sub_23EB61DE4(v26, @"com.apple.AirPort.WiFiShim.Notification.LinkChange");
        if (v20)
        {
          goto LABEL_9;
        }

        CFRelease(v26);
      }

      while (Count != ++v24);
    }

    v10 = 0;
    *a2 = v19;
    v19 = 0;
  }

  else
  {
LABEL_20:
    v10 = 4294960568;
  }

LABEL_21:
  if (theArray)
  {
    CFRelease(theArray);
    theArray = 0;
  }

  if (v19)
  {
    goto LABEL_24;
  }

  return v10;
}

uint64_t sub_23EC09FB8(CFTypeRef *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E383180 <= 800 && (dword_27E383180 != -1 || sub_23EB74AC8(&dword_27E383180, 0x320u)))
  {
    sub_23EB75374(&dword_27E383180, "OSStatus _WiFiShimPrivateContext_Release(WiFiShimContextRef)", 800, " \n", a5, a6, a7, a8, v10);
  }

  if (!a1)
  {
    return 4294960591;
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
  return 0;
}

void sub_23EC0A048(CFArrayRef *a1, char *a2)
{
  if (a1)
  {
    if (a2)
    {
      if (CFArrayGetCount(*a1))
      {
        v9 = *a1;
        v12 = 0;
        sub_23EB6FF14(v9, &v12, "[*]", v4, v5, v6, v7, v8, 0);
        if (!v11)
        {
          if (v12)
          {
            sub_23EB62218(v12, a2, v10);
          }
        }
      }
    }
  }
}

uint64_t sub_23EC0A0C8(uint64_t a1, const char *a2, const __CFString *a3, int a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  cf = 0;
  theArray = 0;
  if (dword_27E383180 <= 800 && (dword_27E383180 != -1 || sub_23EB74AC8(&dword_27E383180, 0x320u)))
  {
    sub_23EB75374(&dword_27E383180, "OSStatus WiFiShim_JoinNetworkNamedAndCopyScanInfo(WiFiShimContextRef, CFStringRef, CFStringRef, WiFiType, JoinNetworkRememberChoice, CFDictionaryRef *)", 800, "\n", a5, a6, a7, a8, cf);
  }

  v14 = 4294960591;
  if (a1 && a2)
  {
    v15 = sub_23EC0B89C(a1, a2, a4, 1, 0, &theArray, a7, a8);
    if (v15)
    {
LABEL_8:
      v14 = v15;
      goto LABEL_18;
    }

    if (!theArray)
    {
      goto LABEL_16;
    }

    if (!CFArrayGetCount(theArray) || (v16 = sub_23EB6B7D0(a2, a4, 0, theArray), v16 == -1))
    {
      v14 = 4294960569;
      goto LABEL_18;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v16);
    if (!ValueAtIndex)
    {
LABEL_16:
      v14 = 4294960568;
      goto LABEL_18;
    }

    v23 = ValueAtIndex;
    if (!a3)
    {
      if (sub_23EC0A274(ValueAtIndex, v18) == 1)
      {
        a3 = 0;
      }

      else
      {
        v27 = sub_23EC0C054(v23, &cf, v24, v25, v19, v20, v21, v22);
        if (v27 == -6727)
        {
          v14 = 4294967280;
          goto LABEL_18;
        }

        v14 = v27;
        if (v27)
        {
          goto LABEL_18;
        }

        a3 = cf;
      }
    }

    v15 = sub_23EC0B188(a1, v23, a3, a5, v19, v20, v21, v22);
    if (v15)
    {
      goto LABEL_8;
    }

    if (a6)
    {
      *a6 = v23;
      CFRetain(v23);
    }

    v14 = 0;
  }

LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  return v14;
}

uint64_t sub_23EC0A274(void *a1, const char *a2)
{
  v3 = objc_msgSend_objectForKey_(a1, a2, @"CAPABILITIES");
  if ((objc_msgSend_shortValue(v3, v4, v5) & 0x10) == 0)
  {
    return 1;
  }

  v52 = 0;
  v8 = objc_msgSend_objectForKey_(a1, v6, @"RSN_IE");
  v17 = objc_msgSend_count(v8, v9, v10);
  if (v17)
  {
    sub_23EB6FF14(v8, &v52, "%kO:int", v12, v13, v14, v15, v16, @"IE_KEY_RSN_MCIPHER");
    if (!v18 && v52 == 5)
    {
      v19 = 0;
      v20 = 1;
      goto LABEL_9;
    }

    v33 = objc_msgSend_objectForKey_(v8, v11, @"IE_KEY_RSN_AUTHSELS");
    v37 = objc_msgSend_objectEnumerator(v33, v34, v35);
    while (1)
    {
      Object = objc_msgSend_nextObject(v37, v11, v36);
      v19 = Object != 0;
      if (!Object)
      {
        break;
      }

      v40 = objc_msgSend_integerValue(Object, v11, v39);
      if (v40 == 2)
      {
        break;
      }

      if (v40 == 8)
      {
        v19 = 0;
        v20 = 0;
        v21 = 13;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = 0;
LABEL_9:
  v21 = 12;
LABEL_10:
  v22 = objc_msgSend_objectForKey_(a1, v11, @"WPA_IE");
  if (objc_msgSend_count(v22, v23, v24))
  {
    sub_23EB6FF14(v22, &v52, "%kO:int", v25, v26, v27, v28, v29, @"IE_KEY_WPA_MCIPHER");
    if (v31 || v52 != 5)
    {
      v41 = objc_msgSend_objectForKey_(v22, v30, @"IE_KEY_WPA_AUTHSELS");
      v46 = objc_msgSend_objectEnumerator(v41, v42, v43);
      while (1)
      {
        v47 = objc_msgSend_nextObject(v46, v44, v45);
        if (!v47)
        {
          break;
        }

        if (objc_msgSend_integerValue(v47, v48, v49) == 2)
        {
          v19 = 1;
          break;
        }
      }

      if (v19)
      {
        v50 = 4;
      }

      else
      {
        v50 = 9;
      }

      if (v19)
      {
        v51 = 5;
      }

      else
      {
        v51 = 10;
      }

      if (v17)
      {
        v50 = v51;
      }

      if (v20)
      {
        return 8;
      }

      else
      {
        return v50;
      }
    }

    else
    {
      return 8;
    }
  }

  else
  {
    if (v19)
    {
      v32 = 7;
    }

    else
    {
      v32 = v21;
    }

    if (!v17)
    {
      v32 = 3;
    }

    if (v20)
    {
      return 8;
    }

    else
    {
      return v32;
    }
  }
}

const __CFString *sub_23EC0A464(const __CFString *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v9 = 0;
    sub_23EB6FF14(result, &v9, "%kO:int", a4, a5, a6, a7, a8, @"AP_MODE");
    if (v8)
    {
      return 0;
    }

    else
    {
      return (v9 == 1);
    }
  }

  return result;
}

uint64_t sub_23EC0A4C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3831C0 <= 800 && (dword_27E3831C0 != -1 || sub_23EB74AC8(&dword_27E3831C0, 0x320u)))
  {
    sub_23EB75374(&dword_27E3831C0, "OSStatus _InitMobileWiFi(WiFiShimSubContextRef)", 800, "\n", a5, a6, a7, a8, v21);
  }

  if (a1 && (v9 = WiFiManagerClientCreate()) != 0)
  {
    v10 = v9;
    a1[2] = CFRunLoopGetMain();
    WiFiManagerClientScheduleWithRunLoop();
    WiFiManagerClientSetType();
    v11 = WiFiManagerClientCopyDevices();
    v14 = v11;
    if (!v11 || !objc_msgSend_count(v11, v12, v13) || (v16 = objc_msgSend_objectAtIndex_(v14, v15, 0), objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v17, 27), v18 = WiFiDeviceClientCopyProperty(), (a1[6] = v18) == 0))
    {

      CFRelease(v10);
      return 4294960569;
    }

    v19 = 0;
    a1[1] = v10;
    a1[3] = v16;
  }

  else
  {
    v14 = 0;
    v19 = 4294960578;
  }

  return v19;
}

uint64_t sub_23EC0A60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3831C0 <= 800 && (dword_27E3831C0 != -1 || sub_23EB74AC8(&dword_27E3831C0, 0x320u)))
  {
    sub_23EB75374(&dword_27E3831C0, "OSStatus _CloseMobileWiFi(WiFiShimContextRef)", 800, "\n", a5, a6, a7, a8, v14);
  }

  if (!a1)
  {
    return 4294960578;
  }

  v9 = *(a1 + 8);
  if (!v9 || *v9 != 1634561902 || !*(v9 + 8) || !*(v9 + 24))
  {
    return 4294960578;
  }

  WiFiManagerClientUnscheduleFromRunLoop();
  v10 = *(a1 + 8);
  v11 = v10[1];
  if (v11)
  {
    CFRelease(v11);
    v10 = *(a1 + 8);
    v10[1] = 0;
  }

  v12 = v10[6];
  if (v12)
  {
    CFRelease(v12);
    v10 = *(a1 + 8);
    v10[6] = 0;
  }

  result = 0;
  v10[2] = 0;
  v10[3] = 0;
  return result;
}

void *sub_23EC0A6F8(CFArrayRef theArray, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = *MEMORY[0x277D85DE8];
  if (dword_27E3831C0 <= 800 && (dword_27E3831C0 != -1 || sub_23EB74AC8(&dword_27E3831C0, 0x320u)))
  {
    sub_23EB75374(&dword_27E3831C0, "CFArrayRef _ScanInfoRecordsFromWiFiNetworkRefs(CFArrayRef)", 800, "\n", a5, a6, a7, a8, v24);
  }

  if (theArray && CFArrayGetCount(theArray))
  {
    v9 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, a3);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(theArray, v10, &v25, v29, 16);
    if (v11)
    {
      v12 = v11;
      v13 = *v26;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(theArray);
          }

          v15 = WiFiNetworkCopyRecord();
          if (v15)
          {
            v17 = v15;
            objc_msgSend_addObject_(v9, v16, v15);
          }
        }

        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(theArray, v16, &v25, v29, 16);
      }

      while (v12);
    }
  }

  else
  {
    v9 = 0;
  }

  if (dword_27E3831C0 <= 800 && (dword_27E3831C0 != -1 || sub_23EB74AC8(&dword_27E3831C0, 0x320u)))
  {
    v18 = objc_msgSend_count(v9, a2, a3);
    sub_23EB75374(&dword_27E3831C0, "CFArrayRef _ScanInfoRecordsFromWiFiNetworkRefs(CFArrayRef)", 800, "results: %d\n", v19, v20, v21, v22, v18);
  }

  return v9;
}

uint64_t sub_23EC0A8C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3831C0 <= 800 && (dword_27E3831C0 != -1 || sub_23EB74AC8(&dword_27E3831C0, 0x320u)))
  {
    sub_23EB75374(&dword_27E3831C0, "OSStatus WiFiShim_Create(WiFiShimContextRef *)", 800, " \n", a5, a6, a7, a8, v33);
  }

  v34 = 0;
  if (!a1)
  {
    return 4294960591;
  }

  v9 = malloc_type_calloc(1uLL, 0x78uLL, 0x10E0040543B7626uLL);
  if (!v9)
  {
    return 4294960568;
  }

  v10 = v9;
  *v9 = 1634561902;
  v9[1] = 0;
  v9[3] = 0;
  v9[4] = dispatch_semaphore_create(0);
  v10[5] = 0;
  v24 = sub_23EC0A4C0(v10, v11, v12, v13, v14, v15, v16, v17);
  if (v24)
  {
    return v24;
  }

  v24 = sub_23EC09DCC(v10, &v34, v18, v19, v20, v21, v22, v23);
  if (!v24)
  {
    if (v34)
    {
      if (v34[1])
      {
        v24 = 0;
        *a1 = v34;
        return v24;
      }

      v24 = 4294960568;
      goto LABEL_10;
    }

    return 4294960568;
  }

  if (v34)
  {
LABEL_10:
    sub_23EC0A9F4(v34, v25, v26, v27, v28, v29, v30, v31);
  }

  return v24;
}

uint64_t sub_23EC0A9F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3831C0 <= 800 && (dword_27E3831C0 != -1 || sub_23EB74AC8(&dword_27E3831C0, 0x320u)))
  {
    sub_23EB75374(&dword_27E3831C0, "OSStatus WiFiShim_Release(WiFiShimContextRef)", 800, " \n", a5, a6, a7, a8, v19);
  }

  if (!a1)
  {
    return 4294960578;
  }

  v9 = *(a1 + 8);
  if (!v9 || *v9 != 1634561902)
  {
    return 4294960578;
  }

  if (*(v9 + 40))
  {
    *(v9 + 40) = 0;
    if (dword_27E3831C0 <= 800 && (dword_27E3831C0 != -1 || sub_23EB74AC8(&dword_27E3831C0, 0x320u)))
    {
      sub_23EB75374(&dword_27E3831C0, "OSStatus WiFiShim_Release(WiFiShimContextRef)", 800, "Release forcing AutoJoin ON\n", a5, a6, a7, a8, v19);
    }

    WiFiManagerClientEnable();
  }

  sub_23EC0A60C(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = *(a1 + 8);
  if (v10[4])
  {
    dispatch_release(v10[4]);
    v10 = *(a1 + 8);
  }

  free(v10);

  return sub_23EC09FB8(a1, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_23EC0AB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3831C0 <= 800 && (dword_27E3831C0 != -1 || sub_23EB74AC8(&dword_27E3831C0, 0x320u)))
  {
    sub_23EB75374(&dword_27E3831C0, "Boolean WiFiShim_WiFiIsOn(WiFiShimContextRef)", 800, "\n", a5, a6, a7, a8, v11);
  }

  if (!a1)
  {
    return 0;
  }

  v9 = *(a1 + 8);
  if (!v9 || *v9 != 1634561902)
  {
    return 0;
  }

  result = *(v9 + 24);
  if (result)
  {
    return WiFiDeviceClientGetPower() != 0;
  }

  return result;
}

uint64_t sub_23EC0ABD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3831C0 <= 800 && (dword_27E3831C0 != -1 || sub_23EB74AC8(&dword_27E3831C0, 0x320u)))
  {
    sub_23EB75374(&dword_27E3831C0, "OSStatus WiFiShim_ClearScanCache(WiFiShimContextRef)", 800, "\n", a5, a6, a7, a8, v11);
  }

  if (!a1)
  {
    return 4294960578;
  }

  v9 = *(a1 + 8);
  if (!v9 || *v9 != 1634561902 || !*(v9 + 8))
  {
    return 4294960578;
  }

  sub_23EC0AB28(a1, a2, a3, a4, a5, a6, a7, a8);
  return 0;
}

uint64_t sub_23EC0AC78(void *a1, const char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2;
  v54 = *MEMORY[0x277D85DE8];
  v11 = &unk_27E383000;
  if (dword_27E3831C0 <= 800 && (dword_27E3831C0 != -1 || sub_23EB74AC8(&dword_27E3831C0, 0x320u)))
  {
    sub_23EB75374(&dword_27E3831C0, "OSStatus WiFiShim_PreferredNetworksCopy(WiFiShimContextRef, Boolean, CFArrayRef *)", 800, "\n", a5, a6, a7, a8, v47);
  }

  v16 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, a3);
  if (!a1)
  {
    goto LABEL_37;
  }

  v17 = a1[1];
  if (!v17 || *v17 != 1634561902 || !*(v17 + 8))
  {
    a1 = 0;
LABEL_37:
    v44 = 4294960578;
    goto LABEL_38;
  }

  if (!a3)
  {
    a1 = 0;
    v44 = 4294960591;
    goto LABEL_38;
  }

  a1 = WiFiManagerClientCopyNetworks();
  if (!objc_msgSend_count(a1, v18, v19) || (v51 = 0u, v52 = 0u, v49 = 0u, v50 = 0u, (v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v20, &v49, v53, 16)) == 0))
  {
    v44 = 0;
    goto LABEL_38;
  }

  v22 = v21;
  v48 = v9;
  v23 = *v50;
LABEL_13:
  v24 = 0;
  while (1)
  {
    if (*v50 != v23)
    {
      objc_enumerationMutation(a1);
    }

    if (WiFiNetworkRequiresPassword())
    {
      break;
    }

    if (!v48)
    {
      v30 = 1;
      goto LABEL_19;
    }

LABEL_31:
    if (v22 == ++v24)
    {
      v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v25, &v49, v53, 16);
      v22 = v43;
      if (!v43)
      {
        v44 = 0;
        goto LABEL_50;
      }

      goto LABEL_13;
    }
  }

  v26 = WiFiNetworkCopyRecord();
  if (v26)
  {
    v28 = v26;
    v29 = sub_23EC0A274(v26, v27);
    CFRelease(v28);
    v30 = v29;
LABEL_19:
    SSID = WiFiNetworkGetSSID();
    if (SSID)
    {
      v32 = SSID;
      AssociationDate = WiFiNetworkGetAssociationDate();
      v34 = WiFiNetworkGetAssociationDate();
      if (AssociationDate | v34)
      {
        if (AssociationDate)
        {
          v35 = AssociationDate;
        }

        else
        {
          v35 = v34;
        }

        if (AssociationDate)
        {
          v36 = v34 == 0;
        }

        else
        {
          v36 = 1;
        }

        if (!v36)
        {
          v35 = objc_msgSend_laterDate_(AssociationDate, v25, v34);
        }

        v37 = objc_msgSend_dictionaryWithObject_forKey_(MEMORY[0x277CBEB38], v25, v32, @"WiFiShim_PreferredNetwork_SSID");
        v39 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v38, v30);
        objc_msgSend_setObject_forKey_(v37, v40, v39, @"WiFiShim_PreferredNetwork_SecMode");
        objc_msgSend_setObject_forKey_(v37, v41, v35, @"WiFiShim_PreferredNetwork_TimeAssociated");
        objc_msgSend_addObject_(v16, v42, v37);
      }
    }

    goto LABEL_31;
  }

  v44 = 4294960568;
LABEL_50:
  v11 = &unk_27E383000;
LABEL_38:
  v45 = v11[112];
  if (v45 <= 800 && (v45 != -1 || sub_23EB74AC8(&dword_27E3831C0, 0x320u)))
  {
    sub_23EB75374(&dword_27E3831C0, "OSStatus WiFiShim_PreferredNetworksCopy(WiFiShimContextRef, Boolean, CFArrayRef *)", 800, "Preferrred networks:\n%@\n", v12, v13, v14, v15, v16);
  }

  if (a3)
  {
    *a3 = v16;
    CFRetain(v16);
  }

  if (a1)
  {
    CFRelease(a1);
  }

  return v44;
}

uint64_t sub_23EC0AFA4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && (v8 = *(a1 + 8)) != 0 && *v8 == 1634561902 && *(v8 + 24))
  {
    if (a2)
    {
      v10 = WiFiDeviceClientCopyCurrentNetwork();
      if (v10)
      {
        v13 = WiFiNetworkCopyRecord();
        if (v13)
        {
          v14 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v11, v12);
          v16 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v15, 4);
          objc_msgSend_setObject_forKey_(v14, v17, v16, @"STATE");
          v19 = objc_msgSend_objectForKey_(v13, v18, @"BSSID");
          if (v19)
          {
            objc_msgSend_setObject_forKey_(v14, v20, v19, @"BSSID");
          }

          v21 = objc_msgSend_objectForKey_(v13, v20, @"SSID_STR");
          if (v21)
          {
            objc_msgSend_setObject_forKey_(v14, v22, v21, @"SSID_STR");
          }

          v23 = objc_msgSend_objectForKey_(v13, v22, @"AP_MODE");
          if (v23)
          {
            objc_msgSend_setObject_forKey_(v14, v24, v23, @"AP_MODE");
          }

          *a2 = v14;
          CFRetain(v14);
          v25 = 0;
        }

        else
        {
          v14 = 0;
          v25 = 4294960568;
        }
      }

      else
      {
        v14 = 0;
        v13 = 0;
        v25 = 4294960569;
      }
    }

    else
    {
      v14 = 0;
      v10 = 0;
      v13 = 0;
      v25 = 4294960591;
    }
  }

  else
  {
    v14 = 0;
    v10 = 0;
    v13 = 0;
    v25 = 4294960578;
  }

  if (dword_27E3831C0 <= 800 && (dword_27E3831C0 != -1 || sub_23EB74AC8(&dword_27E3831C0, 0x320u)))
  {
    sub_23EB75374(&dword_27E3831C0, "OSStatus WiFiShim_CurrentAssociationInfoCopy(WiFiShimContextRef, CFDictionaryRef *)", 800, "assocInfo:\n%@\n", a5, a6, a7, a8, v14);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v25;
}

uint64_t sub_23EC0B188(uint64_t a1, uint64_t a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  if (dword_27E3831C0 <= 800 && (dword_27E3831C0 != -1 || sub_23EB74AC8(&dword_27E3831C0, 0x320u)))
  {
    sub_23EB75374(&dword_27E3831C0, "OSStatus WiFiShim_JoinNetwork(WiFiShimContextRef, CFDictionaryRef, CFStringRef, JoinNetworkRememberChoice)", 800, "\n", a5, a6, a7, a8, v47);
  }

  if (!a1)
  {
    return 4294960578;
  }

  v12 = *(a1 + 8);
  if (!v12 || *v12 != 1634561902 || !*(v12 + 8) || !*(v12 + 24))
  {
    return 4294960578;
  }

  if (!a2)
  {
    return 4294960591;
  }

  v13 = sub_23EC0B530(a1, 0, a3, a4, a5, a6, a7, a8);
  if (!v13)
  {
    v14 = WiFiNetworkCreate();
    if (!v14)
    {
      sub_23EC0B530(a1, 1, v15, v16, v17, v18, v19, v20);
      return 4294960568;
    }

    v21 = v14;
    if (WiFiNetworkRequiresPassword())
    {
      if (!a3)
      {
        v30 = 0;
        v13 = 4294960591;
        goto LABEL_35;
      }

      v30 = WiFiNetworkCopyPassword();
      if (dword_27E3831C0 <= 800 && (dword_27E3831C0 != -1 || sub_23EB74AC8(&dword_27E3831C0, 0x320u)))
      {
        v31 = objc_msgSend_length(v30, v28, v29);
        CFStringGetLength(a3);
        sub_23EB75374(&dword_27E3831C0, "OSStatus WiFiShim_JoinNetwork(WiFiShimContextRef, CFDictionaryRef, CFStringRef, JoinNetworkRememberChoice)", 800, "curPW len: %d inPassword len: %d\n", v32, v33, v34, v35, v31);
      }

      if (!v30 || (objc_msgSend_isEqualToString_(v30, v28, a3) & 1) == 0)
      {
        if (!WiFiNetworkSetPassword())
        {
          v13 = 4294960596;
          goto LABEL_35;
        }

        v36 = 1;
LABEL_29:
        v38 = *(a1 + 8);
        v39 = *(v38 + 32);
        *(v38 + 96) = 0;
        *(v38 + 104) = v39;
        *(v38 + 112) = 0;
        v40 = WiFiDeviceClientAssociateAsync();
        if (v40)
        {
          v13 = v40;
          goto LABEL_35;
        }

        v41 = *(a1 + 8);
        if (*(v41 + 112) || (v42 = *(v41 + 104)) == 0)
        {
          v13 = 4294960573;
          goto LABEL_35;
        }

        dispatch_semaphore_wait(v42, 0xFFFFFFFFFFFFFFFFLL);
        v44 = *(a1 + 8);
        *(v44 + 104) = 0;
        v45 = *(v44 + 88);
        v46 = v36 ^ 1;
        if (!v45)
        {
          v46 = 1;
        }

        if ((v46 & 1) == 0)
        {
          WiFiNetworkRemovePassword();
          if (dword_27E3831C0 <= 800 && (dword_27E3831C0 != -1 || sub_23EB74AC8(&dword_27E3831C0, 0x320u)))
          {
            sub_23EB75374(&dword_27E3831C0, "OSStatus WiFiShim_JoinNetwork(WiFiShimContextRef, CFDictionaryRef, CFStringRef, JoinNetworkRememberChoice)", 800, "Join network err: %d\n", v24, v25, v26, v27, v45);
          }
        }

        v13 = 4294967280;
        if (v45 <= -3903)
        {
          if (v45 == -3924)
          {
            goto LABEL_35;
          }

          if (v45 != -3906)
          {
            if (v45 == -3905)
            {
LABEL_58:
              v13 = v45;
              goto LABEL_35;
            }

LABEL_57:
            if (!v45)
            {
              v13 = *(*(a1 + 8) + 96);
              if (v13)
              {
                if (v8 == 1 || (objc_msgSend_date(MEMORY[0x277CBEAA8], v43, v22), WiFiNetworkSetAssociationDate(), WiFiManagerClientAddNetwork(), (v13 = *(*(a1 + 8) + 96)) != 0))
                {
                  CFRelease(v13);
                  v13 = 0;
                  *(*(a1 + 8) + 96) = 0;
                }
              }

              else
              {
                v13 = 4294960569;
              }

              goto LABEL_35;
            }

            goto LABEL_58;
          }
        }

        else if (v45 > 4)
        {
          if (v45 == 16)
          {
            v13 = 4294960575;
LABEL_35:
            sub_23EC0B530(a1, 1, v22, v23, v24, v25, v26, v27);
            CFRelease(v21);
            if (v30)
            {
              CFRelease(v30);
            }

            return v13;
          }

          if (v45 != 5)
          {
            goto LABEL_57;
          }
        }

        else if (v45 != -3902)
        {
          if (v45 == -100)
          {
            goto LABEL_35;
          }

          goto LABEL_57;
        }

        v13 = 4294963391;
        goto LABEL_35;
      }
    }

    else
    {
      v30 = 0;
    }

    v36 = 0;
    goto LABEL_29;
  }

  return v13;
}

uint64_t sub_23EC0B530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 4294960578;
  }

  v8 = *(a1 + 8);
  if (!v8 || *v8 != 1634561902 || !*(v8 + 8))
  {
    return 4294960578;
  }

  v10 = *(v8 + 40);
  if (a2)
  {
    if (v10)
    {
      v11 = v10 - 1;
      *(v8 + 40) = v11;
      if (!v11)
      {
        if (dword_27E3831C0 <= 800 && (dword_27E3831C0 != -1 || sub_23EB74AC8(&dword_27E3831C0, 0x320u)))
        {
          sub_23EB75374(&dword_27E3831C0, "OSStatus WiFiShim_SetAutoJoinState(WiFiShimContextRef, Boolean)", 800, " Set AutoJoin ON\n", a5, a6, a7, a8, v13);
        }

        WiFiManagerClientEnable();
      }
    }
  }

  else
  {
    *(v8 + 40) = v10 + 1;
    if (!v10)
    {
      if (dword_27E3831C0 <= 800 && (dword_27E3831C0 != -1 || sub_23EB74AC8(&dword_27E3831C0, 0x320u)))
      {
        sub_23EB75374(&dword_27E3831C0, "OSStatus WiFiShim_SetAutoJoinState(WiFiShimContextRef, Boolean)", 800, " Set AutoJoin Off\n", a5, a6, a7, a8, v13);
      }

      WiFiManagerClientDisable();
    }
  }

  if (dword_27E3831C0 > 800)
  {
    return 0;
  }

  if (dword_27E3831C0 != -1 || (result = sub_23EB74AC8(&dword_27E3831C0, 0x320u), result))
  {
    sub_23EB75374(&dword_27E3831C0, "OSStatus WiFiShim_SetAutoJoinState(WiFiShimContextRef, Boolean)", 800, "inState: %d autoJoinOffCount: %d\n", a5, a6, a7, a8, a2);
    return 0;
  }

  return result;
}

void sub_23EC0B6CC(int a1, CFTypeRef cf, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3831C0 <= 800 && (dword_27E3831C0 != -1 || sub_23EB74AC8(&dword_27E3831C0, 0x320u)))
  {
    sub_23EB75374(&dword_27E3831C0, "void __joinUsingDeviceCallback(WiFiDeviceClientRef, WiFiNetworkRef, CFDictionaryRef, WiFiError, void *)", 800, "\n", a5, a6, a7, a8, v12);
  }

  if (a5)
  {
    *a5 = a4;
    if (*(a5 + 24))
    {
      if (dword_27E3831C0 <= 800 && (dword_27E3831C0 != -1 || sub_23EB74AC8(&dword_27E3831C0, 0x320u)))
      {
        sub_23EB75374(&dword_27E3831C0, "void __joinUsingDeviceCallback(WiFiDeviceClientRef, WiFiNetworkRef, CFDictionaryRef, WiFiError, void *)", 800, "Cancelling out of __joinUsingDeviceCallback?\n", a5, a6, a7, a8, v12);
      }
    }

    else
    {
      *(a5 + 8) = cf;
      if (cf)
      {
        CFRetain(cf);
      }
    }

    v11 = *(a5 + 16);
    if (v11)
    {

      dispatch_semaphore_signal(v11);
    }
  }
}

uint64_t sub_23EC0B7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 4294960578;
  }

  v9 = *(a1 + 8);
  if (!v9 || *v9 != 1634561902 || !*(v9 + 24))
  {
    return 4294960578;
  }

  if (dword_27E3831C0 <= 800 && (dword_27E3831C0 != -1 || sub_23EB74AC8(&dword_27E3831C0, 0x320u)))
  {
    sub_23EB75374(&dword_27E3831C0, "OSStatus WiFiShim_Disassociate(WiFiShimContextRef)", 800, "\n", a5, a6, a7, a8, v12);
  }

  v10 = *(*(a1 + 8) + 24);

  return MEMORY[0x282187638](v10, 0);
}

uint64_t sub_23EC0B89C(uint64_t a1, const char *a2, char a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a6;
  v9 = a5;
  v68 = *MEMORY[0x277D85DE8];
  if (dword_27E3831C0 <= 800 && (dword_27E3831C0 != -1 || sub_23EB74AC8(&dword_27E3831C0, 0x320u)))
  {
    sub_23EB75374(&dword_27E3831C0, "OSStatus WiFiShim_ScanInfo(WiFiShimContextRef, CFStringRef, WiFiType, Boolean, uint32_t, CFArrayRef *)", 800, "inName: %@\n", a5, a6, a7, a8, a2);
  }

  if (!a1)
  {
    return 4294960578;
  }

  v14 = *(a1 + 8);
  if (!v14 || *v14 != 1634561902 || !*(v14 + 24))
  {
    return 4294960578;
  }

  if (!v8)
  {
    return 4294960591;
  }

  *v8 = 0;
  v15 = MEMORY[0x277CBEB38];
  v16 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], a2, a4 != 0);
  v18 = objc_msgSend_dictionaryWithObject_forKey_(v15, v17, v16, @"SCAN_MERGE");
  v20 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v19, v9);
  objc_msgSend_setObject_forKey_(v18, v21, v20, @"SCAN_MAXAGE");
  if (a2)
  {
    objc_msgSend_setObject_forKey_(v18, v22, a2, @"SSID_STR");
  }

  if ((a3 & 2) == 0)
  {
    v61 = v18;
    v62 = v8;
    v24 = objc_msgSend_array(MEMORY[0x277CBEB18], v22, v23);
    v26 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v25, 0);
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v27 = *(*(a1 + 8) + 48);
    v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v63, v67, 16);
    if (v29)
    {
      v31 = v29;
      v32 = *v64;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v64 != v32)
          {
            objc_enumerationMutation(v27);
          }

          v34 = objc_msgSend_objectForKey_(*(*(&v63 + 1) + 8 * i), v30, @"SUP_CHANNEL");
          v37 = objc_msgSend_integerValue(v34, v35, v36);
          if ((v37 - 1) <= 0xD)
          {
            v38 = MEMORY[0x277CBEAC0];
            v39 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v30, v37);
            v41 = objc_msgSend_dictionaryWithObjectsAndKeys_(v38, v40, v39, @"CHANNEL", v26, @"CHANNEL_FLAGS", 0);
            objc_msgSend_addObject_(v24, v42, v41);
          }
        }

        v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v30, &v63, v67, 16);
      }

      while (v31);
    }

    objc_msgSend_setObject_forKey_(v61, v30, v24, @"SCAN_CHANNELS");
    v8 = v62;
  }

  v43 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v44 = *(a1 + 8);
  *(v44 + 56) = 0;
  v44 += 56;
  v45 = *(v44 - 24);
  *(v44 + 8) = v43;
  *(v44 + 16) = v45;
  *(v44 + 24) = 0;
  v46 = WiFiDeviceClientScanAsync();
  if (!v46)
  {
    v47 = *(a1 + 8);
    if (*(v47 + 80) || (v49 = *(v47 + 72)) == 0)
    {
      v46 = 4294960573;
    }

    else
    {
      dispatch_semaphore_wait(v49, 0xFFFFFFFFFFFFFFFFLL);
      v52 = *(a1 + 8);
      *(v52 + 72) = 0;
      v53 = *(v52 + 56);
      if (v53)
      {
        if (v53 == 16)
        {
          v46 = 4294960575;
        }

        else
        {
          v46 = v53;
        }
      }

      else if (objc_msgSend_count(v43, v50, v51))
      {
        v46 = 0;
        *v8 = sub_23EC0A6F8(v43, v54, v55, v56, v57, v58, v59, v60);
      }

      else
      {
        v46 = 4294960569;
      }
    }
  }

  *(*(a1 + 8) + 64) = 0;
  if (v43)
  {
  }

  return v46;
}

void sub_23EC0BC18(int a1, CFArrayRef theArray, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3831C0 <= 800 && (dword_27E3831C0 != -1 || sub_23EB74AC8(&dword_27E3831C0, 0x320u)))
  {
    if (theArray)
    {
      CFArrayGetCount(theArray);
    }

    sub_23EB75374(&dword_27E3831C0, "void __scanUsingDeviceCallback(WiFiDeviceClientRef, CFArrayRef, WiFiError, void *)", 800, "err: %d scanResults: %d\n", a5, a6, a7, a8, a3);
  }

  if (a4)
  {
    *a4 = a3;
    if (*(a4 + 24))
    {
      if (dword_27E3831C0 <= 800 && (dword_27E3831C0 != -1 || sub_23EB74AC8(&dword_27E3831C0, 0x320u)))
      {
        sub_23EB75374(&dword_27E3831C0, "void __scanUsingDeviceCallback(WiFiDeviceClientRef, CFArrayRef, WiFiError, void *)", 800, "Cancelling out of __scanUsingDeviceCallback ?\n", a5, a6, a7, a8, v12);
      }
    }

    else if (theArray)
    {
      objc_msgSend_addObjectsFromArray_(*(a4 + 8), theArray, theArray);
    }

    v11 = *(a4 + 16);
    if (v11)
    {

      dispatch_semaphore_signal(v11);
    }
  }
}

uint64_t sub_23EC0BD4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3831C0 <= 800 && (dword_27E3831C0 != -1 || sub_23EB74AC8(&dword_27E3831C0, 0x320u)))
  {
    sub_23EB75374(&dword_27E3831C0, "OSStatus WIFIShim_Cancel(WiFiShimContextRef)", 800, "\n", a5, a6, a7, a8, v15);
  }

  if (!a1)
  {
    return 4294960578;
  }

  v9 = *(a1 + 8);
  if (!v9)
  {
    return 4294960578;
  }

  if (*v9 != 1634561902)
  {
    return 4294960578;
  }

  if (!*(v9 + 24))
  {
    return 4294960578;
  }

  v10 = *(v9 + 32);
  if (!v10)
  {
    return 4294960578;
  }

  if (*(v9 + 72) == v10)
  {
    WiFiDeviceClientScanCancel();
    v11 = 72;
    v12 = 80;
    goto LABEL_15;
  }

  if (*(v9 + 104) == v10)
  {
    WiFiDeviceClientAssociateCancel();
    v11 = 104;
    v12 = 112;
LABEL_15:
    v14 = *(a1 + 8);
    *(v14 + v12) = 1;
    dispatch_semaphore_signal(*(v14 + v11));
  }

  return 0;
}

uint64_t sub_23EC0BE3C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = *MEMORY[0x277D85DE8];
  if (a1 && (v9 = *(a1 + 8)) != 0 && *v9 == 1634561902 && *(v9 + 8))
  {
    v12 = WiFiManagerClientCopyDevices();
    if (!v12)
    {
      goto LABEL_23;
    }

    v13 = objc_msgSend_array(MEMORY[0x277CBEB18], v10, v11);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v25, v29, 16);
    if (v15)
    {
      v18 = v15;
      v19 = *v26;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(v12);
          }

          InterfaceName = WiFiDeviceClientGetInterfaceName();
          if (InterfaceName)
          {
            objc_msgSend_addObject_(v13, v22, InterfaceName);
          }
        }

        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v22, &v25, v29, 16);
      }

      while (v18);
    }

    if (objc_msgSend_count(v13, v16, v17))
    {
      *a2 = v13;
      CFRetain(v13);
      v23 = 0;
    }

    else
    {
LABEL_23:
      v23 = 4294960569;
    }
  }

  else
  {
    v12 = 0;
    v23 = 4294960578;
  }

  if (dword_27E3831C0 <= 800 && (dword_27E3831C0 != -1 || sub_23EB74AC8(&dword_27E3831C0, 0x320u)))
  {
    sub_23EB75374(&dword_27E3831C0, "OSStatus WiFiShim_GetIfListCopy(WiFiShimContextRef, CFArrayRef *)", 800, "outIfList: %@\n", a5, a6, a7, a8, *a2);
  }

  return v23;
}

uint64_t sub_23EC0C008(uint64_t a1, BOOL *a2)
{
  if (!a1)
  {
    return 4294960578;
  }

  v2 = *(a1 + 8);
  if (!v2 || *v2 != 1634561902)
  {
    return 4294960578;
  }

  if (!a2)
  {
    return 4294960591;
  }

  result = 0;
  *a2 = *(v2 + 40) == 0;
  return result;
}

uint64_t sub_23EC0C054(uint64_t a1, const __CFString **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3831C0 <= 800 && (dword_27E3831C0 != -1 || sub_23EB74AC8(&dword_27E3831C0, 0x320u)))
  {
    sub_23EB75374(&dword_27E3831C0, "OSStatus WiFiShim_KeychainPasswordCopy(CFDictionaryRef, CFStringRef *)", 800, "\n", a5, a6, a7, a8, v19);
  }

  result = 4294960591;
  if (a1 && a2)
  {
    v11 = WiFiNetworkCreate();
    if (!v11)
    {
      return 4294960568;
    }

    v12 = v11;
    if (WiFiNetworkRequiresPassword())
    {
      v17 = WiFiNetworkCopyPassword();
      if (dword_27E3831C0 <= 800 && (dword_27E3831C0 != -1 || sub_23EB74AC8(&dword_27E3831C0, 0x320u)))
      {
        if (v17)
        {
          Length = CFStringGetLength(v17);
        }

        else
        {
          Length = -1;
        }

        sub_23EB75374(&dword_27E3831C0, "OSStatus WiFiShim_KeychainPasswordCopy(CFDictionaryRef, CFStringRef *)", 800, "curPW len: %d \n", v13, v14, v15, v16, Length);
      }

      CFRelease(v12);
      if (v17)
      {
        result = 0;
        *a2 = v17;
        return result;
      }
    }

    else
    {
      CFRelease(v12);
    }

    return 4294960569;
  }

  return result;
}

BOOL sub_23EC0C1A8(void *a1, void *a2, void *a3)
{
  if (!a1 && !a2 && !a3 || byte_27E383480 != 1)
  {
    return 0;
  }

  if (a1)
  {
    *a1 = qword_27E383488;
  }

  if (a2)
  {
    *a2 = qword_27E383490;
  }

  v3 = qword_27E383498;
  if (a3)
  {
    *a3 = qword_27E383498;
  }

  return (qword_27E383488 | qword_27E383490 | v3) != 0;
}

uint64_t sub_23EC0C218()
{
  v16[4] = *MEMORY[0x277D85DE8];
  if (byte_27E383480)
  {
    return 0;
  }

  if (pthread_main_np())
  {
    return 4294960593;
  }

  if (byte_27E383480)
  {
    return 4294960577;
  }

  result = 4294960587;
  if (!qword_27E383488 && !qword_27E383490 && !qword_27E383498)
  {
    v2 = *MEMORY[0x277CBD000];
    v16[0] = *MEMORY[0x277CBD018];
    v16[1] = v2;
    v3 = *MEMORY[0x277CBD078];
    v16[2] = *MEMORY[0x277CBCFF8];
    v16[3] = v3;
    v4 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v1, v16, 4);
    v15 = 0;
    v5 = objc_alloc_init(MEMORY[0x277CBDAB8]);
    error = objc_msgSend__ios_meContactWithKeysToFetch_error_(v5, v6, v4, &v15);
    if (error)
    {
      v10 = error;
      qword_27E383488 = objc_msgSend_givenName(error, v8, v9, v15);
      qword_27E383490 = objc_msgSend_familyName(v10, v11, v12);
      qword_27E383498 = objc_msgSend_nickname(v10, v13, v14);
    }

    result = 0;
    byte_27E383480 = 1;
  }

  return result;
}

uint64_t sub_23EC0D248()
{
  if (qword_27E3834A8 != -1)
  {
    sub_23EC18E9C();
  }

  return byte_27E3834A0;
}

uint64_t sub_23EC0D280(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, a3);
  objc_msgSend_addSuiteNamed_(v3, v4, @"com.apple.logging");
  result = objc_msgSend_BOOLForKey_(v3, v5, @"DebugWACLogging");
  byte_27E3834A0 = result;
  return result;
}

uint64_t sub_23EC0D2D0(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  if (a2 < 4)
  {
    v5 = 0;
  }

  else
  {
    v4 = a1 + 3;
    v5 = ((a2 - 4) & 0xFFFFFFFFFFFFFFFCLL) + 4;
    do
    {
      *(v4 - 3) = bswap32(arc4random());
      v4 += 4;
      v2 -= 4;
    }

    while (v2 > 3);
  }

  if (v2 > 1)
  {
    v6 = arc4random();
    v7 = (a1 + v5);
    *v7 = HIBYTE(v6);
    v7[1] = BYTE2(v6);
    if (v2 != 2)
    {
      v7[2] = BYTE1(v6);
    }
  }

  else if (v2)
  {
    *(a1 + v5) = arc4random() >> 24;
  }

  return 0;
}

uint64_t sub_23EC0D398(NSObject ***a1, const char *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x50uLL, 0x10A0040C96B0B76uLL);
  if (v4)
  {
    v5 = v4;
    if (a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = "BonjourBrowser";
    }

    v7 = dispatch_queue_create(v6, 0);
    *v5 = v7;
    if (v7)
    {
      dispatch_set_context(v7, v5);
      dispatch_set_finalizer_f(*v5, sub_23EC0D44C);
      sub_23EC0D48C(v5, 0);
      result = 0;
      *a1 = v5;
      return result;
    }

    sub_23EC0D44C(v5);
  }

  return 4294960568;
}

void sub_23EC0D44C(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    dispatch_release(v2);
  }

  free(a1);
}

void sub_23EC0D48C(uint64_t a1, NSObject *a2)
{
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = MEMORY[0x277D85CD0];
  }

  dispatch_retain(v3);
  v4 = *(a1 + 8);
  if (v4)
  {
    dispatch_release(v4);
  }

  *(a1 + 8) = v3;
}

void sub_23EC0D4F0(NSObject **a1)
{
  sub_23EC0D7A4(a1);
  v2 = *a1;

  dispatch_release(v2);
}

uint64_t sub_23EC0D528(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 16) = a2;
  *(result + 24) = a3;
  return result;
}

uint64_t sub_23EC0D530(dispatch_queue_t *a1, const char *a2, const char *a3, const char *a4, uint64_t a5)
{
  v10 = malloc_type_calloc(1uLL, 0x28uLL, 0x1030040D16A4755uLL);
  if (v10)
  {
    v11 = v10;
    *v10 = a1;
    v12 = strdup(a2);
    v11[1] = v12;
    if (v12)
    {
      v13 = v12;
      if (a3)
      {
        v14 = a3;
      }

      else
      {
        v14 = "";
      }

      v15 = strdup(v14);
      v11[2] = v15;
      if (v15)
      {
        if (!a4 || !*a4 || (v16 = strdup(a4), (v11[3] = v16) != 0))
        {
          v11[4] = a5;
          dispatch_async_f(*a1, v11, sub_23EC0D638);
          return 0;
        }
      }

      free(v13);
    }

    v18 = v11[2];
    if (v18)
    {
      free(v18);
    }

    v19 = v11[3];
    if (v19)
    {
      free(v19);
    }

    free(v11);
  }

  return 4294960568;
}

void sub_23EC0D638(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[4];
  sdRef = 0;
  *(v2 + 64) = v3;
  *(v2 + 72) = 1;
  if (!DNSServiceCreateConnection((v2 + 32)))
  {
    DNSServiceSetDispatchQueue(*(v2 + 32), *v2);
    v5 = a1[3];
    if (v5)
    {
      v6 = if_nametoindex(v5);
    }

    else
    {
      v6 = 0;
    }

    sdRef = *(v2 + 32);
    if (!DNSServiceBrowse(&sdRef, v3 | 0x4000, v6, a1[1], a1[2], sub_23EC0DC04, v2))
    {
      *(v2 + 40) = sdRef;
      goto LABEL_13;
    }

    if (dword_27E383210 <= 5000 && (dword_27E383210 != -1 || sub_23EB74AC8(&dword_27E383210, 0x1388u)))
    {
      sub_23EB75374(&dword_27E383210, "void _BonjourBrowser_Start(void *)", 5000, "### Bonjour browse for %s%s on interface %u failed: %#m\n", v7, v8, v9, v10, a1[1]);
    }
  }

  v4 = *(v2 + 32);
  if (v4)
  {
    DNSServiceRefDeallocate(v4);
    *(v2 + 32) = 0;
  }

LABEL_13:
  free(a1[1]);
  free(a1[2]);
  v11 = a1[3];
  if (v11)
  {
    free(v11);
  }

  free(a1);
}

void sub_23EC0D7A4(uint64_t a1)
{
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  v3 = *(a1 + 32);
  if (v3)
  {
    DNSServiceRefDeallocate(v3);
    *(a1 + 32) = 0;
  }

  *(a1 + 40) = 0;
  while (1)
  {
    v4 = *(a1 + 56);
    if (!v4)
    {
      break;
    }

    *(a1 + 56) = *v4;
    sub_23EC0F080(v4);
  }

  while (1)
  {
    v5 = *(a1 + 48);
    if (!v5)
    {
      break;
    }

    *(a1 + 48) = *v5;
    v5[9] = 0;
    sub_23EC0DFF8(v5);
  }

  if (v2)
  {

    sub_23EC0E754(a1, 3, 0);
  }
}

void sub_23EC0D83C(NSObject **a1, const void *a2, char a3)
{
  v6 = malloc_type_malloc(0x18uLL, 0x1060040520DAF6DuLL);
  if (v6)
  {
    v7 = v6;
    *v6 = a1;
    v6[1] = a2;
    *(v6 + 16) = a3;
    CFRetain(a2);
    v8 = *a1;

    dispatch_async_f(v8, v7, sub_23EC0D8D4);
  }
}

void sub_23EC0D8D4(const __CFDictionary **a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  memset(rdata, 0, sizeof(rdata));
  v26[0] = 0;
  v2 = *a1;
  sub_23EB71858(a1[1], @"deviceID", v26, 0x40uLL, 0);
  if (!v26[0])
  {
    goto LABEL_49;
  }

  v3 = v2 + 56;
  do
  {
    v3 = *v3;
    if (!v3)
    {
      goto LABEL_49;
    }
  }

  while (strcasecmp(v3 + 16, v26));
  v4 = *(v3 + 11);
  if (!v4)
  {
    goto LABEL_49;
  }

  do
  {
    if (*(a1 + 16) && !*(v4 + 48) || DNSServiceConstructFullName(fullName, *(v4 + 24), *(v4 + 32), *(v4 + 40)))
    {
      goto LABEL_20;
    }

    v5 = 0;
    rdata[0] = 0;
    while (1)
    {
      v6 = rdata[v5];
      if (v6 > 0x3F)
      {
LABEL_13:
        v7 = fullName;
        v8 = &v25 + 15;
LABEL_14:
        *v8 = 0;
        v9 = v8 + 1;
        if (!*v7)
        {
          snprintf(fullName, 0x3F1uLL, "%s%s", *(v4 + 32), *(v4 + 40));
          if (dword_27E383210 <= 3000 && (dword_27E383210 != -1 || sub_23EB74AC8(&dword_27E383210, 0xBB8u)))
          {
            sub_23EB75374(&dword_27E383210, "void _BonjourBrowser_ReconfirmDevice(void *)", 3000, "Reconfirming PTR for %s.%s%s on %s\n", v10, v11, v12, v13, *(v4 + 24));
          }

          DNSServiceReconfirmRecord(0, *(v4 + 48), fullName, 0xCu, 1u, v9 - rdata, rdata);
        }

        goto LABEL_20;
      }

      if (!rdata[v5])
      {
        break;
      }

      v5 += v6 + 1;
      if (v5 >= 0xFF)
      {
        goto LABEL_13;
      }
    }

    v8 = &rdata[v5];
    v7 = fullName;
    if (v5 > 0xFD)
    {
      goto LABEL_14;
    }

    LOBYTE(v14) = fullName[0];
    if (!fullName[0])
    {
      goto LABEL_14;
    }

    v7 = fullName;
    while (v14 != 46)
    {
      v15 = v5 <= 253 ? 253 : v5;
      v16 = v5;
      while (v14 && v14 != 46)
      {
        if (v15 == v16)
        {
          goto LABEL_43;
        }

        if (v14 == 92)
        {
          v17 = v7 + 2;
          v14 = v7[1];
          if ((v14 - 48) <= 9)
          {
            v18 = *v17;
            if ((v18 - 48) <= 9)
            {
              v19 = v7[3];
              if ((v19 - 48) <= 9)
              {
                v20 = 100 * v7[1] + 10 * v18 + v19;
                v21 = v7 + 4;
                if (v20 < 5584)
                {
                  LOBYTE(v14) = v20 + 48;
                  v17 = v21;
                }
              }
            }
          }
        }

        else
        {
          v17 = v7 + 1;
        }

        rdata[v16 + 1] = v14;
        LOBYTE(v14) = *v17;
        ++v16;
        v7 = v17;
      }

      v15 = v16;
LABEL_43:
      v22 = v15 - v5;
      if (v22 > 63)
      {
        break;
      }

      if (v14)
      {
        ++v7;
      }

      *v8 = v22;
      if (v15 <= 252)
      {
        v5 = v16 + 1;
        v8 = &rdata[v16 + 1];
        LOBYTE(v14) = *v7;
        if (*v7)
        {
          continue;
        }
      }

      v8 = &rdata[v16 + 1];
      goto LABEL_14;
    }

LABEL_20:
    v4 = *(v4 + 8);
  }

  while (v4);
LABEL_49:
  CFRelease(a1[1]);
  free(a1);
}

void sub_23EC0DC04(int a1, unsigned __int8 a2, unsigned int a3, int a4, char *a5, const char *a6, const char *a7, uint64_t a8, uint64_t a9)
{
  if (a4)
  {
    return;
  }

  if (*(a8 + 72))
  {
    v14 = a2;
    if (dword_27E383210 <= 500 && (dword_27E383210 != -1 || sub_23EB74AC8(&dword_27E383210, 0x1F4u)))
    {
      v15 = "Add";
      if (((v14 >> 1) & 1) == 0)
      {
        v15 = "Rmv";
      }

      sub_23EB75374(&dword_27E383210, "void _BonjourBrowser_BrowseHandler(DNSServiceRef, DNSServiceFlags, uint32_t, DNSServiceErrorType, const char *, const char *, const char *, void *)", 500, "Bonjour PTR %s %s.%s%s on %u\n", a5, a6, a7, a8, v15);
    }

    v17 = a8 + 48;
    v16 = *(a8 + 48);
    if (!v16)
    {
LABEL_16:
      if ((v14 & 2) == 0)
      {
        if (dword_27E383210 <= 5000 && (dword_27E383210 != -1 || sub_23EB74AC8(&dword_27E383210, 0x1388u)))
        {
          sub_23EB75374(&dword_27E383210, "void _BonjourBrowser_BrowseHandler(DNSServiceRef, DNSServiceFlags, uint32_t, DNSServiceErrorType, const char *, const char *, const char *, void *)", 5000, "### <radar:6451163> Remove of non-existent %s.%s%s%%%u\n", a5, a6, a7, a8, a5);
        }

        return;
      }

      v19 = malloc_type_calloc(1uLL, 0x60uLL, 0x10300400E9D42ADuLL);
      if (!v19)
      {
        return;
      }

      v20 = v19;
      v19[2] = a8;
      v21 = strdup(a5);
      *(v20 + 24) = v21;
      if (v21)
      {
        v22 = strdup(a6);
        *(v20 + 32) = v22;
        if (v22)
        {
          v23 = strdup(a7);
          *(v20 + 40) = v23;
          if (v23)
          {
            *(v20 + 48) = a3;
            if_indextoname(a3, (v20 + 52));
            if (*(v20 + 52) && sub_23EB7D918((v20 + 52)))
            {
              *(v20 + 69) = 1;
            }

            if (!sub_23EC0DF48(v20))
            {
              *v17 = v20;
              return;
            }
          }
        }
      }

      v24 = v20;
      goto LABEL_36;
    }

    while (1)
    {
      v18 = v17;
      v17 = v16;
      if (*(v16 + 48) == a3 && !strcasecmp(*(v16 + 24), a5) && !strcasecmp(*(v17 + 32), a6) && !strcasecmp(*(v17 + 40), a7))
      {
        break;
      }

      v16 = *v17;
      if (!*v17)
      {
        goto LABEL_16;
      }
    }

    if ((v14 & 2) == 0)
    {
      *v18 = *v17;
      sub_23EC0E084(a8, v17);
      v24 = v17;
LABEL_36:

      sub_23EC0DFF8(v24);
      return;
    }

    if (dword_27E383210 <= 5000 && (dword_27E383210 != -1 || sub_23EB74AC8(&dword_27E383210, 0x1388u)))
    {
      sub_23EB75374(&dword_27E383210, "void _BonjourBrowser_BrowseHandler(DNSServiceRef, DNSServiceFlags, uint32_t, DNSServiceErrorType, const char *, const char *, const char *, void *)", 5000, "### <radar:6451163> Duplicate add of %s.%s%s%%%u\n", a5, a6, a7, a8, a5);
    }
  }

  else if (dword_27E383210 <= 5000 && (dword_27E383210 != -1 || sub_23EB74AC8(&dword_27E383210, 0x1388u)))
  {

    sub_23EB75374(&dword_27E383210, "void _BonjourBrowser_BrowseHandler(DNSServiceRef, DNSServiceFlags, uint32_t, DNSServiceErrorType, const char *, const char *, const char *, void *)", 5000, "### Browse after stop\n", a5, a6, a7, a8, a9);
  }
}

uint64_t sub_23EC0DF48(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  result = DNSServiceConstructFullName(fullName, *(a1 + 24), *(a1 + 32), *(a1 + 40));
  if (!result)
  {
    sdRef = *(*(a1 + 16) + 32);
    result = DNSServiceQueryRecord(&sdRef, 0x4000u, *(a1 + 48), fullName, 0x10u, 1u, sub_23EC0E164, a1);
    if (!result)
    {
      *(a1 + 72) = sdRef;
    }
  }

  return result;
}

void sub_23EC0DFF8(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    free(v2);
    a1[3] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    free(v3);
    a1[4] = 0;
  }

  v4 = a1[5];
  if (v4)
  {
    free(v4);
    a1[5] = 0;
  }

  v5 = a1[9];
  if (v5)
  {
    DNSServiceRefDeallocate(v5);
    a1[9] = 0;
  }

  while (1)
  {
    v6 = a1[10];
    if (!v6)
    {
      break;
    }

    a1[10] = *v6;
    free(v6);
  }

  free(a1);
}

void sub_23EC0E084(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 88);
  if (!v2)
  {
    return;
  }

  v3 = v2[11];
  if (v3)
  {
    if (v3 != a2)
    {
      while (1)
      {
        v4 = v3;
        v3 = *(v3 + 8);
        if (!v3)
        {
          break;
        }

        if (v3 == a2)
        {
          v5 = (v4 + 8);
          goto LABEL_9;
        }
      }

LABEL_10:
      sub_23EC0E754(a1, 1, v2);

      sub_23EC0E6D8(v2);
      return;
    }

    v5 = v2 + 11;
LABEL_9:
    *v5 = *(v3 + 8);
    if (v2[11])
    {
      goto LABEL_10;
    }
  }

  v6 = (a1 + 56);
  while (1)
  {
    v7 = v6;
    v6 = *v6;
    if (!v6)
    {
      break;
    }

    if (v6 == v2)
    {
      *v7 = *v2;
      break;
    }
  }

  sub_23EC0E754(a1, 2, v2);

  sub_23EC0F080(v2);
}

void sub_23EC0E164(int a1, unsigned __int8 a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t __n, void *__s1, uint64_t a10, void *a11)
{
  v49 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    return;
  }

  v11 = a11[2];
  if (*(v11 + 72))
  {
    v12 = __n;
    v13 = a2;
    if (dword_27E383210 <= 500 && (dword_27E383210 != -1 || sub_23EB74AC8(&dword_27E383210, 0x1F4u)))
    {
      v14 = "Add";
      if (((v13 >> 1) & 1) == 0)
      {
        v14 = "Rmv";
      }

      sub_23EB75374(&dword_27E383210, "void _BonjourService_TXTHandler(DNSServiceRef, DNSServiceFlags, uint32_t, DNSServiceErrorType, const char *, uint16_t, uint16_t, uint16_t, const void *, uint32_t, void *)", 500, "Bonjour TXT %s %s on %u\n", a5, a6, a7, __n, v14);
    }

    v16 = a11 + 10;
    v15 = a11[10];
    v17 = v12;
    if ((v13 & 2) != 0)
    {
      v21 = a11 + 10;
      if (v15)
      {
        v22 = a11[10];
        while (1)
        {
          v21 = v22;
          if (v22[1] == v12 && !memcmp(__s1, v22 + 2, v12))
          {
            break;
          }

          v22 = *v21;
          if (!*v21)
          {
            goto LABEL_31;
          }
        }
      }

      else
      {
LABEL_31:
        v23 = malloc_type_calloc(1uLL, v12 + 16, 0x1020040545B2139uLL);
        if (v23)
        {
          v24 = v23;
          *v23 = 0;
          v23[1] = v17;
          memcpy(v23 + 2, __s1, v17);
          *v21 = v24;
        }
      }
    }

    else if (v15)
    {
      v18 = a11[10];
      v19 = a11 + 10;
      while (1)
      {
        v20 = v18;
        if (v18[1] == v12 && !memcmp(__s1, v18 + 2, v12))
        {
          break;
        }

        v18 = *v20;
        v19 = v20;
        if (!*v20)
        {
          goto LABEL_16;
        }
      }

      *v19 = *v20;
      free(v20);
    }

    else
    {
LABEL_16:
      if (dword_27E383210 <= 5000 && (dword_27E383210 != -1 || sub_23EB74AC8(&dword_27E383210, 0x1388u)))
      {
        sub_23EB75374(&dword_27E383210, "void _BonjourService_RemoveRData(BonjourServiceRef, const void *, size_t)", 5000, "### Removed RData missing for %s.%s%s %%%u\n%1.1H\n", a5, a6, a7, __n, a11[3]);
      }
    }

    v25 = *v16;
    if (*v16 && v25 != v15)
    {
      valueLen = 0;
      v26 = *(v25 + 8);
      v27 = a11[4];
      if (!strcasecmp(v27, "_airplay._tcp."))
      {
        ValuePtr = TXTRecordGetValuePtr(v26, (v25 + 16), "deviceid", &valueLen);
        if (!ValuePtr)
        {
          return;
        }

        v30 = valueLen;
LABEL_49:
        if (sub_23EB7E668(ValuePtr, v30, 6, v44))
        {
          return;
        }

        v33 = sub_23EB7E798(v44, 6, __s);
        v34 = strlen(v33);
        v35 = v34;
        valueLen = v34;
        if (v34 >= 0x40u)
        {
          return;
        }

        __memcpy_chk();
        v46[v35] = 0;
        v36 = a11[11];
        if (v36)
        {
          if (!strcasecmp((v36 + 16), v46))
          {
LABEL_65:
            sub_23EC0E6D8(v36);
            sub_23EC0E754(v11, 1, v36);
            return;
          }

          if (dword_27E383210 <= 1000 && (dword_27E383210 != -1 || sub_23EB74AC8(&dword_27E383210, 0x3E8u)))
          {
            sub_23EB75374(&dword_27E383210, "void _BonjourService_TXTHandler(DNSServiceRef, DNSServiceFlags, uint32_t, DNSServiceErrorType, const char *, uint16_t, uint16_t, uint16_t, const void *, uint32_t, void *)", 1000, "### <radar:10037073> Removing and re-adding %s.%s%s for stale TXT record update (%s -> %s)\n", v37, v38, v39, v40, a11[3]);
          }

          sub_23EC0E084(v11, a11);
          a11[11] = 0;
        }

        v36 = v11 + 56;
        while (1)
        {
          v36 = *v36;
          if (!v36)
          {
            break;
          }

          if (!strcasecmp((v36 + 16), v46))
          {
            goto LABEL_64;
          }
        }

        v41 = malloc_type_calloc(1uLL, 0x60uLL, 0x106004022B847F8uLL);
        if (!v41)
        {
          return;
        }

        v36 = v41;
        v41[1] = v11;
        __strlcpy_chk();
        *v36 = *(v11 + 56);
        *(v11 + 56) = v36;
LABEL_64:
        a11[11] = v36;
        a11[1] = *(v36 + 88);
        *(v36 + 88) = a11;
        goto LABEL_65;
      }

      if (!strcasecmp(v27, "_airport._tcp."))
      {
        v42 = 0;
        v43 = 0;
        if (v26)
        {
          *v46 = v25 + 17;
          v32 = v25 + 17 + v26 - 1;
          while (!sub_23EB7F6A4(*v46, v32, v47, 8, &v43, 0, __s, 256, &v42, 0, v46))
          {
            if (!sub_23EB74C04(v47, v43, "waMA"))
            {
              v30 = v42;
              ValuePtr = __s;
              goto LABEL_49;
            }
          }
        }
      }

      else if (!strcasecmp(v27, "_awp._tcp.") || !strcasecmp(v27, "_raop._tcp."))
      {
        v28 = a11[3];
        v29 = strchr(v28, 64);
        if (v29)
        {
          v30 = (v29 - v28);
          ValuePtr = v28;
          goto LABEL_49;
        }
      }
    }
  }

  else if (dword_27E383210 <= 5000 && (dword_27E383210 != -1 || sub_23EB74AC8(&dword_27E383210, 0x1388u)))
  {

    sub_23EB75374(&dword_27E383210, "void _BonjourService_TXTHandler(DNSServiceRef, DNSServiceFlags, uint32_t, DNSServiceErrorType, const char *, uint16_t, uint16_t, uint16_t, const void *, uint32_t, void *)", 5000, "### TXT after stop\n", a5, a6, a7, __n, __s1);
  }
}

void sub_23EC0E6D8(uint64_t a1)
{
  v2 = sub_23EC0E850(a1);
  if (v2)
  {
    v3 = v2;
    for (i = *(a1 + 88); i; i = *(i + 8))
    {
      if (i != v3)
      {
        v5 = *(i + 72);
        if (v5)
        {
          DNSServiceRefDeallocate(v5);
          *(i + 72) = 0;
        }
      }
    }

    if (!*(v3 + 72))
    {

      sub_23EC0DF48(v3);
    }
  }
}

void sub_23EC0E754(uint64_t a1, int a2, uint64_t a3)
{
  if (*(a1 + 16))
  {
    v12 = 0;
    if (!a3)
    {
      v11 = malloc_type_calloc(1uLL, 0x20uLL, 0x10E0040E15455BBuLL);
      if (!v11)
      {
        return;
      }

      v10 = v11;
      v7 = 0;
      goto LABEL_11;
    }

    v6 = sub_23EC0E8C8(a3, &v12);
    if (!v12)
    {
      v7 = v6;
      v8 = *(a3 + 80);
      if (v8)
      {
        CFRelease(v8);
      }

      *(a3 + 80) = v7;
      v9 = malloc_type_calloc(1uLL, 0x20uLL, 0x10E0040E15455BBuLL);
      if (v9)
      {
        v10 = v9;
        if (v7)
        {
          CFRetain(v7);
        }

LABEL_11:
        *v10 = a2;
        v10[1] = v7;
        *(v10 + 1) = *(a1 + 16);
        dispatch_async_f(*(a1 + 8), v10, sub_23EC0ED54);
      }
    }
  }
}

uint64_t sub_23EC0E850(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    v2 = 0;
    v3 = *(a1 + 88);
    do
    {
      if (!strcmp(*(v3 + 40), "local."))
      {
        if (!*(v3 + 69))
        {
          return v3;
        }

        if (!v2)
        {
          v2 = v3;
        }
      }

      v3 = *(v3 + 8);
    }

    while (v3);
    if (v2)
    {
      return v2;
    }
  }

  return v1;
}

__CFDictionary *sub_23EC0E8C8(uint64_t a1, int *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = sub_23EC0E850(a1);
  if (!v4 || (v5 = v4, (v6 = *(v4 + 80)) == 0))
  {
    Mutable = *(a1 + 80);
    if (!Mutable)
    {
      v11 = -6745;
      if (!a2)
      {
        return Mutable;
      }

      goto LABEL_17;
    }

    CFRetain(*(a1 + 80));
    goto LABEL_9;
  }

  v7 = *(v6 + 8);
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    v11 = -6728;
    if (!a2)
    {
      return Mutable;
    }

    goto LABEL_17;
  }

  v9 = *(v5 + 32);
  if (!strcasecmp(v9, "_awp._tcp.") || !strcasecmp(v9, "_raop._tcp."))
  {
    v10 = *(v5 + 24);
    v12 = strchr(v10, 64);
    if (v12)
    {
      v10 = v12 + 1;
    }
  }

  else
  {
    v10 = *(v5 + 24);
  }

  v13 = strlen(v10);
  sub_23EB718BC(Mutable, @"name", v10, v13);
  sub_23EB718BC(Mutable, @"deviceID", (a1 + 16), -1);
  v11 = sub_23EC0EDA4(__s, *(v5 + 24), *(v5 + 32), *(v5 + 40));
  if (!v11)
  {
    v15 = strlen(__s);
    snprintf(&__s[v15], 1073 - v15, "%%%u", *(v5 + 48));
    sub_23EB718BC(Mutable, @"dnsName", __s, -1);
    sub_23EB718BC(Mutable, @"serviceType", *(v5 + 32), -1);
    if (!strcasecmp(*(v5 + 32), "_airport._tcp."))
    {
      txtRecord = 0uLL;
      *valueSize = 0;
      v30 = 0;
      if (!v7)
      {
        v11 = -6743;
        goto LABEL_16;
      }

      TXTRecordCreate(&txtRecord, 0x100u, buffer);
      v31 = (v6 + 17);
      v16 = v6 + 17 + v7 - 1;
      for (i = sub_23EB7F6A4((v6 + 17), v16, key, 7, &v30, 0, value, 256, valueSize, 0, &v31); !i; i = sub_23EB7F6A4(v31, v16, key, 7, &v30, 0, value, 256, valueSize, 0, &v31))
      {
        key[v30] = 0;
        TXTRecordSetValue(&txtRecord, key, valueSize[0], value);
      }

      BytesPtr = TXTRecordGetBytesPtr(&txtRecord);
      Length = TXTRecordGetLength(&txtRecord);
      sub_23EB71950(Mutable, @"txt", BytesPtr, Length);
      TXTRecordDeallocate(&txtRecord);
    }

    else
    {
      sub_23EB71950(Mutable, @"txt", (v6 + 16), v7);
    }

    v20 = *(a1 + 88);
    if (v20)
    {
      v21 = 0;
      v22 = 1;
      v23 = MEMORY[0x277CBF150];
      do
      {
        if (!v21)
        {
          v21 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
          if (!v21)
          {
            goto LABEL_40;
          }
        }

        v24 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], v23);
        if (!v24)
        {
          CFRelease(v21);
LABEL_40:
          v11 = -6728;
          goto LABEL_16;
        }

        v25 = v24;
        v26 = *(v20 + 69);
        sub_23EB719B8(v24, @"ifindex", *(v20 + 48));
        sub_23EB718BC(v25, @"ifname", (v20 + 52), -1);
        v27 = sub_23EC0EDA4(__s, *(v20 + 24), *(v20 + 32), *(v20 + 40));
        if (v27)
        {
          v11 = v27;
          CFRelease(v21);
          CFRelease(v25);
          goto LABEL_16;
        }

        if (!v26)
        {
          v22 = 0;
        }

        v28 = strlen(__s);
        snprintf(&__s[v28], 1073 - v28, "%%%u", *(v20 + 48));
        sub_23EB718BC(v25, @"dnsName", __s, -1);
        sub_23EB718BC(v25, @"domain", *(v20 + 40), -1);
        CFArrayAppendValue(v21, v25);
        CFRelease(v25);
        v20 = *(v20 + 8);
      }

      while (v20);
      CFDictionarySetValue(Mutable, @"services", v21);
      CFRelease(v21);
      if (!v22)
      {
        goto LABEL_9;
      }
    }

    CFDictionarySetValue(Mutable, @"p2pOnly", *MEMORY[0x277CBED28]);
LABEL_9:
    v11 = 0;
    if (!a2)
    {
      return Mutable;
    }

    goto LABEL_17;
  }

LABEL_16:
  CFRelease(Mutable);
  Mutable = 0;
  if (a2)
  {
LABEL_17:
    *a2 = v11;
  }

  return Mutable;
}

void sub_23EC0ED54(unsigned int *a1)
{
  (*(a1 + 2))(*a1, *(a1 + 1), *(a1 + 3));
  v2 = *(a1 + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

uint64_t sub_23EC0EDA4(uint64_t a1, unsigned __int8 *a2, char *__s, unsigned __int8 *a4)
{
  v4 = 4294901756;
  if (__s)
  {
    v9 = strlen(__s);
    v10 = sub_23EC0EFFC(__s);
    if (a4)
    {
      v11 = v9 - v10;
      if (v11 >= 6)
      {
        if (*a4)
        {
          v12 = &__s[v11 - 4];
          if (!strncasecmp(v12, "_tcp", 4uLL) || !strncasecmp(v12, "_udp", 4uLL))
          {
            if (a2)
            {
              v13 = *a2;
              if (*a2)
              {
                v14 = 0;
                v15 = a2 + 1;
                v16 = a1;
                while (1)
                {
                  if (v13 < 0x21u)
                  {
LABEL_11:
                    if (v14 > 1000)
                    {
                      goto LABEL_41;
                    }

                    *v16 = 12380;
                    v17 = v14 + 3;
                    *(v16 + 2) = (v13 / 0xAu) | 0x30;
                    v13 = (v13 % 0xAu) | 0x30;
                    goto LABEL_23;
                  }

                  if (v13 > 0x39u)
                  {
                    if (v13 != 92)
                    {
                      if (v13 == 58)
                      {
                        goto LABEL_11;
                      }

LABEL_19:
                      if (v14 >= 1004)
                      {
                        goto LABEL_41;
                      }

                      v17 = v14;
                      goto LABEL_23;
                    }
                  }

                  else
                  {
                    if (v13 == 37)
                    {
                      goto LABEL_11;
                    }

                    if (v13 != 46)
                    {
                      goto LABEL_19;
                    }
                  }

                  if (v14 > 1002)
                  {
LABEL_41:
                    v28 = (a1 + v14);
                    goto LABEL_47;
                  }

                  v17 = v14 + 1;
                  *v16 = 92;
LABEL_23:
                  v14 = v17 + 1;
                  *(a1 + v17) = v13;
                  v18 = *v15++;
                  v13 = v18;
                  v16 = a1 + v17 + 1;
                  if (!v18)
                  {
                    v19 = v17 + 2;
                    *v16 = 46;
                    goto LABEL_26;
                  }
                }
              }
            }

            v19 = 0;
LABEL_26:
            v20 = (a1 + v19);
            v21 = *__s;
            if (*__s)
            {
              v22 = 1004;
              if (v19 > 1004)
              {
                v22 = v19;
              }

              v23 = __s + 1;
              while (v22 != v19)
              {
                ++v19;
                *v20++ = v21;
                v24 = *v23++;
                v21 = v24;
                if (!v24)
                {
                  goto LABEL_32;
                }
              }

              goto LABEL_40;
            }

LABEL_32:
            if (!sub_23EC0EFFC(__s))
            {
              if (v19 > 1003)
              {
LABEL_40:
                v28 = v20;
                goto LABEL_47;
              }

              *v20++ = 46;
            }

            v25 = a1 + 1005;
            v26 = *a4;
            if (*a4)
            {
              v27 = a4 + 1;
              while (1)
              {
                v28 = v20 + 1;
                if ((v20 + 1) >= v25)
                {
                  goto LABEL_40;
                }

                *v20 = v26;
                v29 = *v27++;
                v26 = v29;
                ++v20;
                if (!v29)
                {
                  goto LABEL_43;
                }
              }
            }

            v28 = v20;
LABEL_43:
            if (sub_23EC0EFFC(a4))
            {
              v4 = 0;
            }

            else if ((v28 + 1) < v25)
            {
              v4 = 0;
              *v28++ = 46;
            }

LABEL_47:
            *v28 = 0;
          }
        }
      }
    }
  }

  return v4;
}

BOOL sub_23EC0EFFC(unsigned __int8 *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  while (1)
  {
    v2 = a1[1];
    if (!a1[1])
    {
      break;
    }

    if (v1 == 92)
    {
      if ((v2 - 48) > 9 || a1[2] - 48 > 9 || a1[3] - 48 >= 0xA)
      {
        v3 = 2;
      }

      else
      {
        v3 = 4;
      }

      a1 += v3;
      v1 = *a1;
      if (!*a1)
      {
        return v1 == 46;
      }
    }

    else
    {
      v1 = *++a1;
      if (!v2)
      {
        return v1 == 46;
      }
    }
  }

  return v1 == 46;
}

void sub_23EC0F080(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

uint64_t sub_23EC0F418(void *a1, unsigned int a2)
{
  v4 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  if (!a1 || a2 < 0x10)
  {
    goto LABEL_10;
  }

  v5 = MEMORY[0x277CCA8D8];
  v6 = objc_opt_class();
  v8 = objc_msgSend_bundleForClass_(v5, v7, v6);
  if (!v8 || ((v10 = objc_msgSend_objectForInfoDictionaryKey_(v8, v9, @"CFBundleVersion"), !objc_msgSend_length(v10, v11, v12)) ? (v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, @"Unknown Version-%@", @"iOSFW")) : (v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, @"%@-%@", v10, @"iOSFW")), (v17 = objc_msgSend_UTF8String(v14, v15, v16)) == 0))
  {
    v21 = 4294960569;
    goto LABEL_12;
  }

  v18 = v17;
  v19 = strlen(v17);
  if (a2 > v19)
  {
    v20 = v19;
    memcpy(a1, v18, v19);
    v21 = 0;
    *(a1 + v20) = 0;
  }

  else
  {
LABEL_10:
    v21 = 4294960591;
  }

LABEL_12:

  return v21;
}

BOOL sub_23EC0F534(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CC1E70]);
  v4 = objc_msgSend_initWithBundleIdentifier_allowPlaceholder_error_(v2, v3, @"com.apple.airport.mobileairportutility", 0, 0);

  if (v4)
  {
    v7 = objc_msgSend_defaultWorkspace(MEMORY[0x277CC1E80], v5, v6);
    v9 = objc_msgSend_operationToOpenResource_usingApplication_userInfo_(v7, v8, a1, @"com.apple.airport.mobileairportutility", 0);
    objc_msgSend_start(v9, v10, v11);
  }

  return v4 != 0;
}

uint64_t sub_23EC0F5AC(void *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x48uLL, 0x1000040D2215A62uLL);
  if (!v2)
  {
    return 4294960568;
  }

  v3 = v2;
  result = 0;
  *v3 = 1;
  *a1 = v3;
  return result;
}

uint64_t sub_23EC0F608(void *a1)
{
  if (!a1)
  {
    return 4294960556;
  }

  free(a1);
  return 0;
}

unint64_t sub_23EC0F634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  if (a1 && a3)
  {
    v7 = mach_absolute_time();
    v8 = v7 / sub_23EB803C4();
    v9 = (a2 - *(a1 + 48)) / (v8 - *(a1 + 56));
    v10 = *(a1 + 44);
    *(a1 + 4 + 4 * v10) = v9;
    if (v10 < 0xA)
    {
      v11 = v10 + 1;
      v12 = *a1 ^ 1;
    }

    else
    {
      qsort((a1 + 4), 0xAuLL, 4uLL, sub_23EC0F764);
      v11 = 0;
      *a1 = 0;
      v12 = 1;
    }

    *(a1 + 44) = v11;
    if (a3 != a2 && (v12 & 1) != 0 && (v9 != 0.0 ? (v13 = v11 == 0) : (v13 = 0), v13))
    {
      v14 = 0.0;
      for (i = 12; i != 32; i += 4)
      {
        v14 = v14 + *(a1 + i);
      }

      v16 = v14 / 6.0;
      *(a1 + 64) = v16;
    }

    else
    {
      v16 = *(a1 + 64);
    }

    *(a1 + 48) = a2;
    *(a1 + 56) = v8;
    if (v16 == 0.0)
    {
      return 0;
    }

    else
    {
      return ((a3 - a2) / v16);
    }
  }

  return result;
}

uint64_t sub_23EC0F764(float *a1, float *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 > *a2;
  }
}

uint64_t sub_23EC0F7A0(void *a1, const char *a2, uint64_t a3)
{
  if (!a1)
  {
    return 4294960591;
  }

  v4 = objc_msgSend_sharedInstance(WiFiUtils, a2, a3);
  if (!v4)
  {
    return 4294960578;
  }

  IfList = objc_msgSend_getIfList(v4, v5, v6);
  if (!IfList)
  {
    return 4294960569;
  }

  v8 = IfList;
  result = 0;
  *a1 = v8;
  return result;
}

uint64_t sub_23EC0F808(void *a1, const char *a2, uint64_t a3)
{
  if (!a1)
  {
    return 4294960591;
  }

  v4 = objc_msgSend_sharedInstance(WiFiUtils, a2, a3);
  if (!v4)
  {
    return 4294960578;
  }

  LinkStatus = objc_msgSend_getLinkStatus(v4, v5, v6);
  if (!LinkStatus)
  {
    return 4294960569;
  }

  v8 = LinkStatus;
  result = 0;
  *a1 = v8;
  return result;
}

uint64_t sub_23EC0F870(void *a1, const char *a2, uint64_t a3)
{
  if (!a1)
  {
    return 4294960591;
  }

  v4 = objc_msgSend_sharedInstance(WiFiUtils, a2, a3);
  if (!v4)
  {
    return 4294960578;
  }

  CurrentAssociationInfo = objc_msgSend_getCurrentAssociationInfo(v4, v5, v6);
  if (!CurrentAssociationInfo)
  {
    return 4294960569;
  }

  v8 = CurrentAssociationInfo;
  result = 0;
  *a1 = v8;
  return result;
}

uint64_t sub_23EC0F8D8(uint64_t a1, const char *a2, _BYTE *a3)
{
  v5 = 0;
  result = objc_msgSend_networkIsSecure_secMode_isEnterprise_(WiFiUtils, a2, a1, a2, &v5);
  if (a3)
  {
    *a3 = v5;
  }

  return result;
}

uint64_t sub_23EC0F96C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_sharedInstance(WiFiUtils, a2, a3);

  return objc_msgSend_scanInfoForName_wifiType_(v5, v6, a1, a2);
}

uint64_t sub_23EC0F9B4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_sharedInstance(WiFiUtils, a2, a3);

  return objc_msgSend_scanInfoForMACAddress_(v4, v5, a1);
}

uint64_t sub_23EC10D08(void *a1, char *__s, int a3, int a4, uint64_t a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, NSObject *a12)
{
  if (!*__s)
  {
    return 4294960591;
  }

  v18 = __s;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  memset(v27, 0, sizeof(v27));
  v20 = strchr(__s, 58);
  if (v20 && v20[1] == 47 && v20[2] == 47)
  {
    result = sub_23EB80AA0(v18, 0, v27, 0);
    if (result)
    {
      return result;
    }

    v22 = *(&v28 + 1);
    v18 = v28;
  }

  else
  {
    v22 = strlen(v18);
  }

  v23 = malloc_type_calloc(1uLL, 0x60uLL, 0x10B00408BA0FE54uLL);
  if (!v23)
  {
    return 4294960568;
  }

  v24 = v23;
  *v23 = 1;
  v25 = sub_23EB7F3DC(v18, v22);
  *(v24 + 1) = v25;
  if (!v25)
  {
    sub_23EC11164(v24);
    return 4294960568;
  }

  v24[4] = a3;
  v24[5] = a4;
  if (a5)
  {
    v26 = a5;
  }

  else
  {
    v26 = -1;
  }

  *(v24 + 3) = v26;
  v24[8] = a6;
  v24[9] = a7;
  *(v24 + 7) = a8;
  *(v24 + 8) = a9;
  dispatch_retain(a12);
  *(v24 + 9) = a12;
  *(v24 + 10) = a10;
  *(v24 + 11) = a11;
  dispatch_async_f(a12, v24, sub_23EC10E94);
  result = 0;
  *a1 = v24;
  return result;
}

void sub_23EC10E94(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  if (!sub_23EB7D23C(*(a1 + 8), v21, 0x1CuLL, 0))
  {
    v16 = *(a1 + 16);
    if ((*(a1 + 20) & 4) != 0)
    {
      if (!sub_23EC114A8(a1, v21, 0, v16))
      {
        goto LABEL_27;
      }

      v16 = *(a1 + 16);
    }

    v17 = sub_23EC1172C(a1, v21, 0, v16);
    if (!v17)
    {
      goto LABEL_27;
    }

LABEL_24:
    v15 = v17;
    goto LABEL_31;
  }

  v2 = sub_23EB7F4DC(*(a1 + 8), "._tcp.");
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (!v2)
  {
    v17 = sub_23EC11AC8(a1, *(a1 + 8), *(a1 + 16));
    if (!v17)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  v5 = malloc_type_calloc(1uLL, 0x60uLL, 0x10600401FCF4767uLL);
  if (!v5)
  {
    v15 = 4294960568;
    goto LABEL_31;
  }

  v6 = v5;
  v23 = 0;
  interfaceIndex = 0;
  ++*a1;
  *v5 = 1;
  v5[2] = a1;
  *(v5 + 15) = -1;
  Record = sub_23EC12290(v3, fullname, &interfaceIndex, &v23);
  if (Record)
  {
    goto LABEL_17;
  }

  v12 = v23;
  if (v23)
  {
    v13 = v4 < 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v12 = v4;
  }

  *(v6 + 14) = v12;
  if (dword_27E383250 <= 500 && (dword_27E383250 != -1 || sub_23EB74AC8(&dword_27E383250, 0x1F4u)))
  {
    sub_23EB75374(&dword_27E383250, "OSStatus _AsyncConnection_StartSRVQuery(AsyncConnectionRef, const char *, int)", 500, "Querying SRV  %s\n", v8, v9, v10, v11, v3);
  }

  v14 = *(a1 + 56);
  if (v14)
  {
    v14(1, v3, *(a1 + 64));
  }

  Record = DNSServiceQueryRecord(v6 + 8, 0x400000u, interfaceIndex, fullname, 0x21u, 1u, sub_23EC1246C, v6);
  if (Record)
  {
LABEL_17:
    v15 = Record;
    sub_23EC11DF8(v6);
    goto LABEL_31;
  }

  DNSServiceSetDispatchQueue(v6[8], *(a1 + 72));
  v6[1] = *(a1 + 48);
  *(a1 + 48) = v6;
LABEL_27:
  if (*(a1 + 24) == -1)
  {
    return;
  }

  v18 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(a1 + 72));
  *(a1 + 40) = v18;
  if (v18)
  {
    dispatch_set_context(v18, a1);
    dispatch_source_set_event_handler_f(*(a1 + 40), sub_23EC11C84);
    v19 = *(a1 + 40);
    v20 = dispatch_time(0, *(a1 + 24));
    dispatch_source_set_timer(v19, v20, *(a1 + 24), 0x5F5E100uLL);
    dispatch_resume(*(a1 + 40));
    return;
  }

  v15 = 4294960596;
LABEL_31:
  sub_23EC11C90(a1, 0xFFFFFFFFLL, v15);
}

void sub_23EC11164(void *a1)
{
  if ((*a1)-- == 1)
  {
    sub_23EC11C90(a1, 0xFFFFFFFFLL, 4294960573);
    v4 = a1[9];
    if (v4)
    {
      dispatch_release(v4);
      a1[9] = 0;
    }

    v5 = a1[1];
    if (v5)
    {
      free(v5);
    }

    free(a1);
  }
}

void sub_23EC111D4(void *a1)
{
  sub_23EC11C90(a1, 0xFFFFFFFFLL, 4294960573);

  sub_23EC11164(a1);
}

uint64_t sub_23EC11240(char *a1, int a2, int a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8, unsigned int (*a9)(uint64_t), uint64_t a10, _DWORD *a11)
{
  dsema = 0;
  if (!*a1)
  {
    return 4294960591;
  }

  v35 = 0;
  v19 = dispatch_queue_create(a1, 0);
  object = v19;
  if (!v19)
  {
    v21 = 4294960596;
LABEL_21:
    if (dsema)
    {
      dispatch_release(dsema);
    }

    goto LABEL_24;
  }

  v20 = v19;
  dsema = dispatch_semaphore_create(0);
  if (dsema)
  {
    v35 = -6700;
    context = 0;
    v21 = sub_23EC10D08(&context, a1, a2, a3, a4, a5, a6, a7, a8, sub_23EC11494, &object, v20);
    if (!v21)
    {
      if (a9)
      {
        v22 = dispatch_time(0, 250000000);
        if (dispatch_semaphore_wait(dsema, v22))
        {
          v23 = 0;
          v24 = context;
          while (1)
          {
            if (!v23)
            {
              if (!a9(a10))
              {
                v23 = 0;
                v29 = 1;
                goto LABEL_16;
              }

              if (dword_27E383250 <= 3000 && (dword_27E383250 != -1 || sub_23EB74AC8(&dword_27E383250, 0xBB8u)))
              {
                sub_23EB75374(&dword_27E383250, "OSStatus AsyncConnection_ConnectSyncEx(const char *, int, AsyncConnectionFlags, uint64_t, int, int, AsyncConnectionProgressFunc, void *, AsyncConnectionWaitFunc, void *, SocketRef *)", 3000, "### Canceling connect to %s\n", v25, v26, v27, v28, a1);
              }

              dispatch_async_f(v24[9], v24, sub_23EC111D4);
            }

            v29 = 0;
            v23 = 1;
LABEL_16:
            v30 = dispatch_time(0, 250000000);
            if (!dispatch_semaphore_wait(dsema, v30))
            {
              if (!v29)
              {
                goto LABEL_31;
              }

              break;
            }
          }
        }
      }

      else
      {
        dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
      }

      dispatch_async_f(*(context + 9), context, sub_23EC111D4);
LABEL_31:
      v21 = v35;
      if (!v35)
      {
        *a11 = HIDWORD(v35);
      }
    }

    goto LABEL_21;
  }

  v21 = 4294960596;
LABEL_24:
  if (object)
  {
    dispatch_release(object);
  }

  return v21;
}

intptr_t sub_23EC11494(int a1, int a2, uint64_t a3)
{
  *(a3 + 16) = a2;
  if (!a2)
  {
    *(a3 + 20) = a1;
  }

  return dispatch_semaphore_signal(*(a3 + 8));
}

uint64_t sub_23EC114A8(uint64_t a1, unsigned __int8 *a2, int a3, unsigned int a4)
{
  memset(&context, 0, sizeof(context));
  v8 = malloc_type_calloc(1uLL, 0x60uLL, 0x10600401FCF4767uLL);
  if (v8)
  {
    v9 = v8;
    *&address.sa_len = 0;
    *&address.sa_data[6] = 0;
    v23 = 0;
    v22 = 0;
    flags = 0;
    ++*a1;
    *v8 = 1;
    v8[2] = a1;
    *(v8 + 15) = -1;
    sub_23EB7D6D0(a2, v8 + 3);
    v9[13] = a3;
    v9[14] = a4;
    sub_23EB7D6D0(a2, &address);
    if ((a4 & 0x80000000) != 0)
    {
      v11 = -a4;
    }

    else
    {
      v10 = sub_23EB7D380(&address);
      v11 = a4;
      if (v10)
      {
LABEL_8:
        v13 = SCNetworkReachabilityCreateWithAddress(0, &address);
        *(v9 + 11) = v13;
        if (v13 && (context.info = v9, SCNetworkReachabilitySetCallback(v13, sub_23EC11D00, &context)) && SCNetworkReachabilitySetDispatchQueue(*(v9 + 11), *(a1 + 72)))
        {
          flags = 0;
          if (!SCNetworkReachabilityGetFlags(*(v9 + 11), &flags) || (flags & 2) == 0)
          {
            goto LABEL_22;
          }

          if (dword_27E383250 <= 500 && (dword_27E383250 != -1 || sub_23EB74AC8(&dword_27E383250, 0x1F4u)))
          {
            sub_23EB75374(&dword_27E383250, "OSStatus _AsyncConnection_ReachabilityStart(AsyncConnectionRef, const void *, unsigned int, int)", 500, "Reachability of %##a default port %d OK, Flags 0x%X\n", v14, v15, v16, v17, a2);
          }

          if (sub_23EC1172C(a1, a2, a3, a4))
          {
            if (dword_27E383250 > 3000)
            {
LABEL_26:
              v12 = 0;
              *(v9 + 1) = *(a1 + 48);
              *(a1 + 48) = v9;
              return v12;
            }

            if (dword_27E383250 != -1 || sub_23EB74AC8(&dword_27E383250, 0xBB8u))
            {
              sub_23EB75374(&dword_27E383250, "OSStatus _AsyncConnection_ReachabilityStart(AsyncConnectionRef, const void *, unsigned int, int)", 3000, "### Connect %##a default port %d failed after reachability said OK\n", v14, v15, v16, v17, a2);
            }

LABEL_22:
            if (dword_27E383250 <= 500 && (dword_27E383250 != -1 || sub_23EB74AC8(&dword_27E383250, 0x1F4u)))
            {
              sub_23EB75374(&dword_27E383250, "OSStatus _AsyncConnection_ReachabilityStart(AsyncConnectionRef, const void *, unsigned int, int)", 500, "Monitoring reachability of %##a default port %d\n", v14, v15, v16, v17, a2);
            }

            goto LABEL_26;
          }

          v12 = 0;
        }

        else
        {
          v12 = 4294960596;
        }

        sub_23EC11DF8(v9);
        return v12;
      }
    }

    sub_23EB7D3A8(&address, v11);
    goto LABEL_8;
  }

  return 4294960568;
}

uint64_t sub_23EC1172C(uint64_t a1, unsigned __int8 *a2, int a3, unsigned int a4)
{
  v8 = malloc_type_calloc(1uLL, 0x60uLL, 0x10600401FCF4767uLL);
  if (v8)
  {
    v9 = v8;
    ++*a1;
    *v8 = 1;
    *(v8 + 2) = a1;
    v10 = (v8 + 24);
    sub_23EB7D6D0(a2, v8 + 24);
    if ((a4 & 0x80000000) != 0)
    {
      v12 = -a4;
    }

    else
    {
      v11 = sub_23EB7D380(v10);
      v12 = a4;
      if (v11)
      {
        goto LABEL_8;
      }
    }

    sub_23EB7D3A8(v10, v12);
LABEL_8:
    v30 = 0;
    *(v9 + 56) = a4;
    v14 = socket(*(v9 + 25), 1, 6);
    *(v9 + 60) = v14;
    if (v14 < 0)
    {
      if (!*__error())
      {
        goto LABEL_38;
      }

      v13 = *__error();
      if (v13)
      {
        goto LABEL_14;
      }

      v14 = *(v9 + 60);
    }

    v15 = sub_23EB7D3C8(v14, 1);
    if (v15)
    {
      goto LABEL_13;
    }

    if (*(a1 + 20))
    {
      sub_23EB7D5D0(*(v9 + 60), 1);
    }

    v30 = 1;
    setsockopt(*(v9 + 60), 0xFFFF, 4130, &v30, 4u);
    v15 = sub_23EB7D624(*(v9 + 60), *(v9 + 25), a3);
    if (v15)
    {
LABEL_13:
      v13 = v15;
LABEL_14:
      sub_23EC11DF8(v9);
      return v13;
    }

    v30 = 1;
    setsockopt(*(v9 + 60), 6, 1, &v30, 4u);
    sub_23EB7D444(*(v9 + 60), 4097, *(a1 + 32));
    sub_23EB7D444(*(v9 + 60), 4098, *(a1 + 36));
    if (dword_27E383250 <= 500 && (dword_27E383250 != -1 || sub_23EB74AC8(&dword_27E383250, 0x1F4u)))
    {
      sub_23EB75374(&dword_27E383250, "OSStatus _AsyncConnection_StartConnect(AsyncConnectionRef, const void *, unsigned int, int)", 500, "Connecting to %##a If %d\n", v17, v18, v19, v20, v10);
    }

    v21 = *(a1 + 56);
    if (v21)
    {
      v21(3, v10, *(a1 + 64));
    }

    v22 = *(v9 + 60);
    v23 = sub_23EB7D6B0(v10);
    if (!connect(v22, v10, v23))
    {
LABEL_29:
      sub_23EC11EE4(v9);
      v13 = 0;
      goto LABEL_14;
    }

    if (!*__error())
    {
      v13 = 4294960596;
      goto LABEL_31;
    }

    v13 = *__error();
    if (v13 != 36)
    {
      if (!v13)
      {
        goto LABEL_29;
      }

LABEL_31:
      if (dword_27E383250 <= 3000 && (dword_27E383250 != -1 || sub_23EB74AC8(&dword_27E383250, 0xBB8u)))
      {
        sub_23EB75374(&dword_27E383250, "OSStatus _AsyncConnection_StartConnect(AsyncConnectionRef, const void *, unsigned int, int)", 3000, "### Connect 1 to %##a failed: %#m\n", v24, v25, v26, v27, v10);
      }

      goto LABEL_14;
    }

    v28 = dispatch_source_create(MEMORY[0x277D85D28], *(v9 + 60), 0, *(a1 + 72));
    *(v9 + 72) = v28;
    if (v28)
    {
      dispatch_set_context(v28, v9);
      dispatch_source_set_event_handler_f(*(v9 + 72), sub_23EC11FEC);
      dispatch_source_set_cancel_handler_f(*(v9 + 72), sub_23EC121D8);
      dispatch_resume(*(v9 + 72));
      ++*v9;
      v29 = dispatch_source_create(MEMORY[0x277D85D50], *(v9 + 60), 0, *(a1 + 72));
      *(v9 + 80) = v29;
      if (v29)
      {
        dispatch_set_context(v29, v9);
        dispatch_source_set_event_handler_f(*(v9 + 80), sub_23EC11FEC);
        dispatch_source_set_cancel_handler_f(*(v9 + 80), sub_23EC121D8);
        dispatch_resume(*(v9 + 80));
        v13 = 0;
        ++*v9;
        *(v9 + 8) = *(a1 + 48);
        *(a1 + 48) = v9;
        return v13;
      }
    }

LABEL_38:
    v13 = 4294960596;
    goto LABEL_14;
  }

  return 4294960568;
}

uint64_t sub_23EC11AC8(uint64_t a1, char *a2, int a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = malloc_type_calloc(1uLL, 0x60uLL, 0x10600401FCF4767uLL);
  if (!v6)
  {
    return 4294960568;
  }

  v7 = v6;
  v18 = 0;
  interfaceIndex = 0;
  ++*a1;
  *v6 = 1;
  v6[2] = a1;
  *(v6 + 15) = -1;
  v8 = sub_23EC12290(a2, hostname, &interfaceIndex, &v18);
  if (v8)
  {
    AddrInfo = v8;
  }

  else
  {
    v14 = v18;
    if (v18)
    {
      v15 = a3 < 0;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      v14 = a3;
    }

    *(v7 + 14) = v14;
    if (dword_27E383250 <= 500 && (dword_27E383250 != -1 || sub_23EB74AC8(&dword_27E383250, 0x1F4u)))
    {
      sub_23EB75374(&dword_27E383250, "OSStatus _AsyncConnection_StartDNSResolve(AsyncConnectionRef, const char *, int)", 500, "Resolving     %s\n", v9, v10, v11, v12, a2);
    }

    v16 = *(a1 + 56);
    if (v16)
    {
      v16(2, a2, *(a1 + 64));
    }

    AddrInfo = DNSServiceGetAddrInfo(v7 + 8, (*(a1 + 20) << 14) & 0x8000, interfaceIndex, 0, hostname, sub_23EC1269C, v7);
    if (!AddrInfo)
    {
      DNSServiceSetDispatchQueue(v7[8], *(a1 + 72));
      v7[1] = *(a1 + 48);
      *(a1 + 48) = v7;
      return AddrInfo;
    }
  }

  sub_23EC11DF8(v7);
  return AddrInfo;
}

uint64_t sub_23EC11C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 80);
  *(a1 + 80) = 0;
  if (v4)
  {
    v4(a2, a3, *(a1 + 88));
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    dispatch_source_cancel(v5);
    dispatch_release(*(a1 + 40));
    *(a1 + 40) = 0;
  }

  while (1)
  {
    result = *(a1 + 48);
    if (!result)
    {
      break;
    }

    *(a1 + 48) = *(result + 8);
    sub_23EC11DF8();
  }

  return result;
}

void sub_23EC11D00(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E383250 <= 500 && (dword_27E383250 != -1 || sub_23EB74AC8(&dword_27E383250, 0x1F4u)))
  {
    sub_23EB75374(&dword_27E383250, "void _AsyncConnection_ReachabilityHandler(SCNetworkReachabilityRef, SCNetworkReachabilityFlags, void *)", 500, "Reachability of %##a, port %d changed: 0x%X\n", a5, a6, a7, a8, a3 + 24);
  }

  if ((a2 & 2) != 0 && !sub_23EC1172C(*(a3 + 16), (a3 + 24), *(a3 + 52), *(a3 + 56)))
  {
    v10 = *(a3 + 16);
    v13 = *(v10 + 48);
    v12 = (v10 + 48);
    v11 = v13;
    if (v13)
    {
      if (v11 == a3)
      {
LABEL_13:
        *v12 = *(v11 + 8);
      }

      else
      {
        while (1)
        {
          v14 = v11;
          v11 = *(v11 + 8);
          if (!v11)
          {
            break;
          }

          if (v11 == a3)
          {
            v12 = (v14 + 8);
            goto LABEL_13;
          }
        }
      }
    }

    sub_23EC11DF8(a3);
  }
}

void sub_23EC11DF8(_DWORD *a1)
{
  v2 = *(a1 + 11);
  if (v2)
  {
    SCNetworkReachabilitySetCallback(v2, 0, 0);
    SCNetworkReachabilitySetDispatchQueue(*(a1 + 11), 0);
    CFRelease(*(a1 + 11));
    *(a1 + 11) = 0;
  }

  v3 = *(a1 + 9);
  if (v3)
  {
    dispatch_source_cancel(v3);
    dispatch_release(*(a1 + 9));
    *(a1 + 9) = 0;
  }

  v4 = *(a1 + 10);
  if (v4)
  {
    dispatch_source_cancel(v4);
    dispatch_release(*(a1 + 10));
    *(a1 + 10) = 0;
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    DNSServiceRefDeallocate(v5);
    *(a1 + 8) = 0;
  }

  if ((*a1)-- == 1)
  {
    v7 = a1[15];
    if ((v7 & 0x80000000) == 0)
    {
      if (close(v7) && *__error())
      {
        __error();
      }

      a1[15] = -1;
    }

    sub_23EC11164(*(a1 + 2));

    free(a1);
  }
}

void sub_23EC11EE4(uint64_t a1)
{
  v10 = 4;
  v11 = 0;
  v2 = *(a1 + 60);
  if (getsockopt(*(a1 + 60), 0xFFFF, 4103, &v11, &v10))
  {
    if (!*__error())
    {
      v7 = 4294960596;
      goto LABEL_13;
    }

    v7 = *__error();
    if (v7)
    {
      goto LABEL_13;
    }
  }

  v7 = v11;
  if (v11)
  {
LABEL_13:
    sub_23EC121DC(a1, v7);
    return;
  }

  if (dword_27E383250 <= 500 && (dword_27E383250 != -1 || sub_23EB74AC8(&dword_27E383250, 0x1F4u)))
  {
    sub_23EB75374(&dword_27E383250, "void _AsyncConnection_ConnectHandler(AsyncConnectionOperationRef)", 500, "Connected to  %##a\n", v3, v4, v5, v6, a1 + 24);
  }

  v8 = *(a1 + 16);
  v9 = *(v8 + 56);
  if (v9)
  {
    v9(4, a1 + 24, *(v8 + 64));
    v8 = *(a1 + 16);
  }

  *(a1 + 60) = -1;
  sub_23EC11C90(v8, v2, 0);
}

void sub_23EC11FEC(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    v3 = DNSServiceProcessResult(v2);
    if (v3)
    {
      v8 = v3;
      if (dword_27E383250 <= 6000 && (dword_27E383250 != -1 || sub_23EB74AC8(&dword_27E383250, 0x1770u)))
      {
        sub_23EB75374(&dword_27E383250, "void _AsyncConnection_EventHandler(void *)", 6000, "DNSServiceProcessResult failed: %#m...mDNSResponder probably crashed\n", v4, v5, v6, v7, v8);
      }

      sub_23EC121DC(a1, v8);
    }

    return;
  }

  v9 = *(a1 + 60);
  v10 = sub_23EB7D6B0(a1 + 24);
  if (!connect(v9, (a1 + 24), v10))
  {
    goto LABEL_15;
  }

  *v17 = 0;
  if (!*__error())
  {
    goto LABEL_25;
  }

  v15 = *__error();
  switch(v15)
  {
    case 0x38:
LABEL_15:

      sub_23EC11EE4(a1);
      return;
    case 0x16:
      v17[0] = 4;
      v17[1] = 0;
      if (!getsockopt(*(a1 + 60), 0xFFFF, 4103, &v17[1], v17))
      {
LABEL_21:
        v16 = v17[1];
LABEL_22:
        if (v16)
        {
          v15 = v16;
        }

        else
        {
          v15 = 22;
        }

        break;
      }

      if (*__error())
      {
        v16 = *__error();
        if (v16)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

LABEL_25:
      v15 = 4294960596;
      break;
    case 0:
      goto LABEL_15;
  }

  if (dword_27E383250 <= 1000 && (dword_27E383250 != -1 || sub_23EB74AC8(&dword_27E383250, 0x3E8u)))
  {
    sub_23EB75374(&dword_27E383250, "void _AsyncConnection_EventHandler(void *)", 1000, "### Connect 2 to %##a failed: %#m\n", v11, v12, v13, v14, a1 + 24);
  }

  sub_23EC121DC(a1, v15);
}

void sub_23EC121DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(v3 + 48);
  if (v4)
  {
    if (v4 == a1)
    {
      v6 = (v3 + 48);
LABEL_10:
      *v6 = *(v4 + 8);
      if (!*(v3 + 48))
      {
        sub_23EC11C90(v3, 0xFFFFFFFFLL, a2);
      }

      sub_23EC11DF8(v4);
    }

    else
    {
      while (1)
      {
        v5 = v4;
        v4 = *(v4 + 8);
        if (!v4)
        {
          break;
        }

        if (v4 == a1)
        {
          v6 = (v5 + 8);
          goto LABEL_10;
        }
      }
    }
  }

  else
  {

    sub_23EC11C90(v3, 0xFFFFFFFFLL, a2);
  }
}

uint64_t sub_23EC12290(char *a1, void *a2, unsigned int *a3, _DWORD *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v19 = 0;
  v8 = strchr(a1, 37);
  if (v8)
  {
    v9 = v8;
    v10 = v8 + 1;
    v11 = strchr(v8 + 1, 58);
    if (v11)
    {
      v12 = v11;
      if (sscanf(v11 + 1, "%d", &v19) != 1)
      {
        return 4294960554;
      }

      v13 = 1;
    }

    else
    {
      v13 = 0;
      v12 = &v10[strlen(v9)];
    }

    v17 = v12 - v10;
    if (v17 <= 0x10)
    {
      __memcpy_chk();
      v21[v17] = 0;
      v20 = if_nametoindex(v21);
      if (v20 || sscanf(v21, "%u", &v20) == 1)
      {
        v16 = v9 - a1;
        goto LABEL_16;
      }
    }

    return 4294960554;
  }

  v14 = strchr(a1, 58);
  if (v14)
  {
    v15 = v14;
    if (sscanf(v14 + 1, "%d", &v19) != 1)
    {
      return 4294960554;
    }

    v16 = v15 - a1;
    v13 = 1;
  }

  else
  {
    v16 = strlen(a1);
    v13 = 0;
  }

  v20 = 0;
LABEL_16:
  if (v16 > 0x3F0)
  {
    return 4294960553;
  }

  memcpy(a2, a1, v16);
  *(a2 + v16) = 0;
  *a3 = v20;
  result = 0;
  if (v13)
  {
    *a4 = v19;
  }

  return result;
}

void sub_23EC1246C(uint64_t a1, char a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v28[134] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    goto LABEL_2;
  }

  if ((a2 & 2) == 0)
  {
    return;
  }

  if (a8 < 7)
  {
    a4 = 4294960554;
LABEL_2:
    sub_23EC121DC(a11, a4);
    return;
  }

  v11 = a5;
  v14 = a9 + 6;
  v13 = *(a9 + 6);
  v15 = *(a9 + 4);
  if (!*(a9 + 6))
  {
    v17 = v28;
    __s[0] = 46;
    goto LABEL_23;
  }

  v16 = 0;
  v17 = __s;
  v18 = a9 + 6;
LABEL_8:
  if (v16 + 1 + v13 <= 0xFE && v13 <= 0x3F)
  {
    v19 = v18 + v13;
    while (1)
    {
      v21 = *++v18;
      v20 = v21;
      if (v21 == 92 || v20 == 46)
      {
        *v17++ = 92;
      }

      else if (v20 <= 0x20)
      {
        *v17 = 12380;
        a5 = (205 * v20) >> 11;
        a6 = a5 | 0x30;
        v22 = v17 + 3;
        v17[2] = a5 | 0x30;
        LOBYTE(v20) = (v20 - 10 * a5) | 0x30;
        goto LABEL_15;
      }

      v22 = v17;
LABEL_15:
      *v22 = v20;
      v17 = v22 + 1;
      if (v18 >= v19)
      {
        v22[1] = 0;
        v16 += 1 + *(v14 + v16);
        v17 = v22 + 2;
        v22[1] = 46;
        v18 = v14 + v16;
        v13 = *(v14 + v16);
        if (!*(v14 + v16))
        {
LABEL_23:
          *v17 = 0;
          break;
        }

        goto LABEL_8;
      }
    }
  }

  v23 = __rev16(v15);
  if (dword_27E383250 <= 500 && (dword_27E383250 != -1 || sub_23EB74AC8(&dword_27E383250, 0x1F4u)))
  {
    sub_23EB75374(&dword_27E383250, "void _AsyncConnection_SRVCallBack(DNSServiceRef, DNSServiceFlags, uint32_t, DNSServiceErrorType, const char *, uint16_t, uint16_t, uint16_t, const void *, uint32_t, void *)", 500, "SRV resolved  %s -> %s port %d, If %u, Flags 0x%X, TTL %u\n", a5, a6, a7, a8, v11);
  }

  v24 = strlen(__s);
  snprintf(&__s[v24], 1073 - v24, "%%%u", a3);
  if (*(a11 + 56) < 0 || v23 == 0)
  {
    v26 = *(a11 + 56);
  }

  else
  {
    v26 = v23;
  }

  a4 = sub_23EC11AC8(*(a11 + 16), __s, v26);
  if (a4)
  {
    goto LABEL_2;
  }
}

void sub_23EC1269C(uint64_t a1, char a2, int a3, int a4, uint64_t a5, unsigned __int8 *a6, uint64_t a7, uint64_t a8)
{
  if ((a2 & 2) != 0 && !a4)
  {
    v11 = *(a8 + 16);
    if (dword_27E383250 <= 500 && (dword_27E383250 != -1 || sub_23EB74AC8(&dword_27E383250, 0x1F4u)))
    {
      sub_23EB75374(&dword_27E383250, "void _AsyncConnection_DNSCallBack(DNSServiceRef, DNSServiceFlags, uint32_t, DNSServiceErrorType, const char *, const struct sockaddr *, uint32_t, void *)", 500, "Resolved      %s -> %##a, Flags 0x%X, If %u, TTL %u\n", a5, a6, a7, a8, a5);
    }

    if ((*(v11 + 20) & 4) == 0 || sub_23EC114A8(v11, a6, a3, *(a8 + 56)))
    {
      v13 = *(a8 + 56);

      sub_23EC1172C(v11, a6, a3, v13);
    }
  }
}

void sub_23EC127B0(const __CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v36 = 0;
    sub_23EB6FF14(a1, &v36, "%kC", a4, a5, a6, a7, a8, 1918979393);
    if (!v16)
    {
      if (v36)
      {
        v17 = sub_23EB6AE14(a1, v9, v10, v11, v12, v13, v14, v15);
        if (v17)
        {
          v20 = v17;
          v21 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v18, v19);
          v24 = objc_msgSend_dictionaryForKey_(v21, v22, @"configuredAirPortIDs");
          if (v24)
          {
            v25 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x277CBEB38], v23, v24);
          }

          else
          {
            v25 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v23, 0);
          }

          v27 = v25;
          v28 = MEMORY[0x277CBEAC0];
          v29 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v26, 1);
          v31 = objc_msgSend_dictionaryWithObjectsAndKeys_(v28, v30, v20, @"deviceName", v29, @"monitorProblems", 0);
          objc_msgSend_setObject_forKey_(v27, v32, v31, v36);
          objc_msgSend_setObject_forKey_(v21, v33, v27, @"configuredAirPortIDs");
          objc_msgSend_synchronize(v21, v34, v35);
        }
      }
    }
  }
}

uint64_t sub_23EC132F8(uint64_t a1, const char *a2, uint64_t a3)
{
  if (byte_27E3834D8 == 1)
  {
    return byte_27E3834D9;
  }

  v4 = objc_msgSend_currentDevice(MEMORY[0x277D75418], a2, a3);
  v7 = objc_msgSend_systemVersion(v4, v5, v6);
  result = sub_23EC13610(v7, @"7.0", v8) != -1;
  byte_27E3834D9 = result;
  byte_27E3834D8 = 1;
  return result;
}

uint64_t sub_23EC13364(uint64_t a1, const char *a2, uint64_t a3)
{
  if (byte_27E3834DA == 1)
  {
    return byte_27E3834DB;
  }

  v4 = objc_msgSend_currentDevice(MEMORY[0x277D75418], a2, a3);
  v7 = objc_msgSend_systemVersion(v4, v5, v6);
  result = sub_23EC13610(v7, @"8.0", v8) != -1;
  byte_27E3834DB = result;
  byte_27E3834DA = 1;
  return result;
}

uint64_t sub_23EC133D0(void *a1, const char *a2, uint64_t a3)
{
  if (!sub_23EC13364(a1, a2, a3))
  {
    return 0;
  }

  if (a1)
  {
    if (objc_opt_respondsToSelector())
    {
      result = objc_msgSend_traitCollection(a1, v4, v5);
      if (result)
      {
        return result;
      }
    }
  }

  objc_msgSend_mainScreen(MEMORY[0x277D759A0], v4, v5);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v9 = objc_msgSend_mainScreen(MEMORY[0x277D759A0], v7, v8);

  return objc_msgSend_traitCollection(v9, v10, v11);
}

uint64_t sub_23EC13460(void *a1, const char *a2, uint64_t a3)
{
  v4 = sub_23EC133D0(a1, a2, a3);
  if (!v4)
  {
    goto LABEL_7;
  }

  result = objc_msgSend_horizontalSizeClass(v4, v5, v6);
  if (result == 2)
  {
    return result;
  }

  if (result == 1)
  {
    v8 = objc_msgSend_view(a1, v5, v6);
    objc_msgSend_bounds(v8, v9, v10);
    if (v11 < 400.0)
    {
      return 1;
    }

    else
    {
      return 3;
    }
  }

  else
  {
LABEL_7:
    v12 = objc_msgSend_currentDevice(MEMORY[0x277D75418], v5, v6);
    v15 = objc_msgSend_userInterfaceIdiom(v12, v13, v14);
    v18 = objc_msgSend_view(a1, v16, v17);
    if (v15)
    {
      if (v18)
      {
        v21 = objc_msgSend_view(a1, v19, v20);
        objc_msgSend_bounds(v21, v22, v23);
        if (v24 <= 480.0)
        {
          return 1;
        }

        else
        {
          return 2;
        }
      }

      else
      {
        return 2;
      }
    }

    else if (v18)
    {
      v25 = objc_msgSend_view(a1, v19, v20);
      objc_msgSend_bounds(v25, v26, v27);
      if (v28 >= 400.0)
      {
        return 3;
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return 1;
    }
  }
}

uint64_t sub_23EC13544(void *a1, const char *a2, uint64_t a3)
{
  v4 = sub_23EC133D0(a1, a2, a3);
  if (!v4)
  {
    goto LABEL_7;
  }

  result = objc_msgSend_horizontalSizeClass(v4, v5, v6);
  if (result == 2)
  {
    return result;
  }

  if (result == 1)
  {
    objc_msgSend_bounds(a1, v5, v6);
    if (v8 < 400.0)
    {
      return 1;
    }

    else
    {
      return 3;
    }
  }

  else
  {
LABEL_7:
    v9 = objc_msgSend_currentDevice(MEMORY[0x277D75418], v5, v6);
    if (objc_msgSend_userInterfaceIdiom(v9, v10, v11))
    {
      if (a1)
      {
        objc_msgSend_bounds(a1, v12, v13);
        if (v14 <= 480.0)
        {
          return 1;
        }

        else
        {
          return 2;
        }
      }

      else
      {
        return 2;
      }
    }

    else if (a1)
    {
      objc_msgSend_bounds(a1, v12, v13);
      if (v15 >= 400.0)
      {
        return 3;
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return 1;
    }
  }
}

uint64_t sub_23EC13610(void *a1, char *a2, uint64_t a3)
{
  result = objc_msgSend_UTF8String(a1, a2, a3);
  if (result)
  {
    v8 = 0;
    if (sub_23EB7E800(result, -1, &v8 + 1))
    {
      return 0;
    }

    result = objc_msgSend_UTF8String(a2, v5, v6);
    if (result)
    {
      if (sub_23EB7E800(result, -1, &v8))
      {
        return 0;
      }

      if ((HIDWORD(v8) & 0xFFFFFF00) < (v8 & 0xFFFFFF00))
      {
        return -1;
      }

      if ((HIDWORD(v8) & 0xFFFFFF00) > (v8 & 0xFFFFFF00))
      {
        return 1;
      }

      v7 = (BYTE4(v8) - 1);
      if (v7 < (v8 - 1))
      {
        return -1;
      }

      return v7 > (v8 - 1);
    }
  }

  return result;
}

uint64_t sub_23EC136C0(_BOOL8 a1)
{
  if (a1 && !sub_23EC136FC(a1) && (byte_27E3834DC & 1) == 0)
  {
    byte_27E3834DC = 1;
  }

  return 1;
}

BOOL sub_23EC136FC(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    v2 = sub_23EB6CDF8(1937326416);
    v3 = sub_23EB6CFF8(v2, v1);
    return objc_msgSend_length(v3, v4, v5) != 0;
  }

  return result;
}

uint64_t sub_23EC13744()
{
  if ((byte_27E3834DC & 1) == 0)
  {
    byte_27E3834DC = 1;
  }

  return 0;
}

uint64_t sub_23EC13760(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_27E3832D0 <= 800 && (dword_27E3832D0 != -1 || sub_23EB74AC8(&dword_27E3832D0, 0x320u)))
  {
    sub_23EB75374(&dword_27E3832D0, "ACPAppleProductID AUDataCache_GetProductIDFromImageName(CFStringRef)", 800, "%@\n", a5, a6, a7, a8, a1);
  }

  if (!a1)
  {
    return 0;
  }

  v9 = objc_msgSend_componentsSeparatedByString_(a1, a2, @"-");
  v11 = objc_msgSend_objectAtIndex_(v9, v10, 0);
  if (objc_msgSend_integerValue(v11, v12, v13) < 1)
  {
    return 0;
  }

  v15 = objc_msgSend_objectAtIndex_(v9, v14, 0);
  return objc_msgSend_integerValue(v15, v16, v17);
}

void sub_23EC13F7C(uint64_t a1)
{
  v2 = sub_23EBBD2B8(*(*(a1 + 32) + 40));
  v3 = sub_23EBEDC9C(v2, 300);
  if (v3)
  {
    v5 = v3;
    v6 = *(a1 + 32);

    objc_msgSend_endSetup_(v6, v4, v5);
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23EC1404C;
    block[3] = &unk_278C66C50;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t sub_23EC1404C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, a3);
  objc_msgSend_addObserver_selector_name_object_(v4, v5, *(a1 + 32), sel_linkChangeNotification_, @"com.apple.AirPort.WiFiShim.Notification.LinkChange", 0);
  v8 = objc_msgSend_joinTargetSWAP(*(a1 + 32), v6, v7);
  v10 = *(a1 + 32);
  if (v8)
  {
    v11 = v8;
    v12 = *(a1 + 32);

    return objc_msgSend_endSetup_(v12, v9, v11);
  }

  else
  {
    v14 = objc_msgSend_dictionaryWithObject_forKey_(MEMORY[0x277CBEAC0], v9, v10[26], @"BSAssistantProgressKey_StringParameter");
    objc_msgSend_sendProgressToUI_withParamDict_(v10, v15, 5, v14);
    objc_msgSend_performSelectorInBackground_withObject_(*(a1 + 32), v16, sel_startEasyConfigWhenReady, 0);
    v18 = *(a1 + 32);

    return objc_msgSend_sendProgressToUI_withParamDict_(v18, v17, 26, 0);
  }
}

uint64_t sub_23EC15690(uint64_t a1, int a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_23EC15714;
  v3[3] = &unk_278C693F8;
  v3[4] = *(a1 + 32);
  v4 = BYTE2(a2) & 1;
  dispatch_async(MEMORY[0x277D85CD0], v3);
  return 0;
}

void sub_23EC16634(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x23EF1FAF0](a2) == MEMORY[0x277D86480])
  {
    if (dword_27E383310 <= 800 && (dword_27E383310 != -1 || sub_23EB74AC8(&dword_27E383310, 0x320u)))
    {
      sub_23EB75374(&dword_27E383310, "void _xpc_airportassistant_handle_message(xpc_object_t)", 800, "ERROR XPC - message:%@\n", v3, v4, v5, v6, a2);
    }

    xpc_connection_cancel(qword_27E3834E0);
    xpc_release(qword_27E3834E0);
    qword_27E3834E0 = 0;
  }
}

void sub_23EC18918(uint64_t a1, const char *a2, uint64_t a3)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CEE3F8];
  v4 = objc_msgSend_bagSubProfile(MEMORY[0x277CEE570], a2, a3);
  v7 = objc_msgSend_bagSubProfileVersion(MEMORY[0x277CEE570], v5, v6);
  v9 = objc_msgSend_bagForProfile_profileVersion_(v3, v8, v4, v7);
  v10 = objc_alloc(MEMORY[0x277CEE570]);
  v12 = objc_msgSend_initWithType_clientIdentifier_clientVersion_bag_(v10, v11, 0, @"com.apple.preferences", @"1", v9);
  v20[0] = @"com.apple.airport.mobileairportutility";
  v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, v20, 1);
  objc_msgSend_setBundleIdentifiers_(v12, v15, v14);
  v18 = objc_msgSend_perform(v12, v16, v17);
  objc_msgSend_addFinishBlock_(v18, v19, &unk_285145848);
}

uint64_t sub_23EC18A10(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_responseDataItems(a2, a2, a3);
  if (a3 || (v15 = v4, !objc_msgSend_count(v4, v5, v6)))
  {
    v7 = objc_msgSend_currentLocale(MEMORY[0x277CBEAF8], v5, v6);
    v9 = objc_msgSend_objectForKey_(v7, v8, *MEMORY[0x277CBE690]);
    if (objc_msgSend_isEqualToString_(v9, v10, @"JP"))
    {
      result = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v11, @"itms-apps://iTunes.com/AirMacUtility-iOS");
    }

    else
    {
      result = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v11, @"itms-apps://iTunes.com/AirPortUtility-iOS");
    }
  }

  else
  {
    v16 = MEMORY[0x277CBEBC0];
    v17 = objc_msgSend_objectAtIndexedSubscript_(v15, v5, 0);
    v19 = objc_msgSend_objectForKeyedSubscript_(v17, v18, @"attributes");
    v21 = objc_msgSend_objectForKeyedSubscript_(v19, v20, @"url");
    result = objc_msgSend_URLWithString_(v16, v22, v21);
  }

  v23 = result;
  if (result)
  {
    v24 = objc_msgSend_defaultWorkspace(MEMORY[0x277CC1E80], v13, v14);

    return objc_msgSend_openSensitiveURL_withOptions_(v24, v25, v23, 0);
  }

  return result;
}

BOOL sub_23EC18B08(const __CFDictionary *a1)
{
  result = 0;
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, *MEMORY[0x277D06B18]);
    if (Value)
    {
      if (objc_msgSend_count(Value, v2, v3))
      {
        return 1;
      }
    }
  }

  return result;
}

const __CFDictionary *sub_23EC18B48(const __CFDictionary *result)
{
  v77 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    v2 = *MEMORY[0x277D06B18];
    result = CFDictionaryGetValue(result, *MEMORY[0x277D06B18]);
    if (result)
    {
      result = objc_msgSend_count(result, v3, v4);
      if (result)
      {
        Value = CFDictionaryGetValue(v1, v2);
        v65 = CFDictionaryGetValue(v1, *MEMORY[0x277D06AE8]);
        v66 = CFDictionaryGetValue(v1, *MEMORY[0x277D06B30]);
        v67 = CFDictionaryGetValue(v1, *MEMORY[0x277D06B20]);
        v68 = CFDictionaryGetValue(v1, *MEMORY[0x277D06B28]);
        v69 = CFDictionaryGetValue(v1, *MEMORY[0x277D06B00]);
        v70 = CFDictionaryGetValue(v1, *MEMORY[0x277D06B10]);
        v71 = CFDictionaryGetValue(v1, *MEMORY[0x277D06B58]);
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(Value, v6, &v72, v76, 16);
        if (v7)
        {
          v10 = v7;
          v11 = *v73;
          v12 = &stru_285145FE8;
          v13 = 1;
          do
          {
            v14 = 0;
            v15 = v13;
            do
            {
              if (*v73 != v11)
              {
                objc_enumerationMutation(Value);
              }

              v13 = (v15 + 1);
              v16 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v8, @"&id%d=%@", v15, *(*(&v72 + 1) + 8 * v14));
              v19 = objc_msgSend_URLQueryAllowedCharacterSet(MEMORY[0x277CCA900], v17, v18);
              v21 = objc_msgSend_stringByAddingPercentEncodingWithAllowedCharacters_(v16, v20, v19);
              v12 = objc_msgSend_stringByAppendingString_(v12, v22, v21);
              ++v14;
              v15 = v13;
            }

            while (v10 != v14);
            v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(Value, v8, &v72, v76, 16);
          }

          while (v10);
        }

        else
        {
          v12 = &stru_285145FE8;
        }

        v23 = MEMORY[0x277CCACA8];
        v24 = objc_msgSend_URLQueryAllowedCharacterSet(MEMORY[0x277CCA900], v8, v9);
        v26 = objc_msgSend_stringByAddingPercentEncodingWithAllowedCharacters_(v65, v25, v24);
        v29 = objc_msgSend_URLQueryAllowedCharacterSet(MEMORY[0x277CCA900], v27, v28);
        v31 = objc_msgSend_stringByAddingPercentEncodingWithAllowedCharacters_(v66, v30, v29);
        v34 = objc_msgSend_URLQueryAllowedCharacterSet(MEMORY[0x277CCA900], v32, v33);
        v36 = objc_msgSend_stringByAddingPercentEncodingWithAllowedCharacters_(v67, v35, v34);
        v39 = objc_msgSend_URLQueryAllowedCharacterSet(MEMORY[0x277CCA900], v37, v38);
        v41 = objc_msgSend_stringByAddingPercentEncodingWithAllowedCharacters_(v68, v40, v39);
        v44 = objc_msgSend_URLQueryAllowedCharacterSet(MEMORY[0x277CCA900], v42, v43);
        v46 = objc_msgSend_stringByAddingPercentEncodingWithAllowedCharacters_(v69, v45, v44);
        v49 = objc_msgSend_URLQueryAllowedCharacterSet(MEMORY[0x277CCA900], v47, v48);
        v51 = objc_msgSend_stringByAddingPercentEncodingWithAllowedCharacters_(v70, v50, v49);
        v54 = objc_msgSend_URLQueryAllowedCharacterSet(MEMORY[0x277CCA900], v52, v53);
        v56 = objc_msgSend_stringByAddingPercentEncodingWithAllowedCharacters_(v71, v55, v54);
        v58 = objc_msgSend_stringWithFormat_(v23, v57, @"itms-apps://?action=accessory-lookup%@&bid=%@&accessoryName=%@&manufacturer=%@&modelNumber=%@&firmwareVersion=%@&hardwareVersion=%@&serialNumber=%@", v12, v26, v31, v36, v41, v46, v51, v56);
        v60 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v59, v58);
        v63 = objc_msgSend_defaultWorkspace(MEMORY[0x277CC1E80], v61, v62);
        return objc_msgSend_openSensitiveURL_withOptions_(v63, v64, v60, 0);
      }
    }
  }

  return result;
}

Boolean CFCalendarDecomposeAbsoluteTime(CFCalendarRef calendar, CFAbsoluteTime at, const char *componentDesc, ...)
{
  va_start(va, componentDesc);
  v3 = va_arg(va, void);
  return MEMORY[0x28210F308](calendar, v3, at);
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x28210FD68](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
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

void operator new()
{
    ;
  }
}