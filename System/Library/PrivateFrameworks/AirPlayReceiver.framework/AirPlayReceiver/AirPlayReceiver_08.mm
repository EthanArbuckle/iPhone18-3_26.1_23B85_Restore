uint64_t APAdvertiserInfoSetProperty(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    APSLogErrorAt();
    return 4294960591;
  }

  pthread_mutex_lock((a1 + 16));
  if (CFEqual(a3, @"featuresEx"))
  {
    v8 = _APAdvertiserInfoSetFeaturesEx(*(a1 + 80), a5);
  }

  else
  {
    if (!CFEqual(a3, @"features"))
    {
      v11 = *(a1 + 80);
      if (a5)
      {
        CFDictionarySetValue(v11, a3, a5);
        a5 = 0;
      }

      else
      {
        CFDictionaryRemoveValue(v11, a3);
      }

      goto LABEL_12;
    }

    v9 = *(a1 + 80);
    valuePtr = 0;
    if (a5)
    {
      v10 = CFGetTypeID(a5);
      if (v10 != CFNumberGetTypeID())
      {
        APSLogErrorAt();
        a5 = 4294960591;
        goto LABEL_12;
      }

      CFNumberGetValue(a5, kCFNumberSInt64Type, &valuePtr);
    }

    v8 = _APAdvertiserInfoSetLegacyFeatures(v9);
  }

  a5 = v8;
LABEL_12:
  pthread_mutex_unlock((a1 + 16));
  return a5;
}

uint64_t _APAdvertiserInfoSetFeaturesEx(CFMutableDictionaryRef theDict, CFTypeRef cf)
{
  v6 = 0;
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 != CFDataGetTypeID())
    {
      APSLogErrorAt();
      return -6705;
    }

    CFDictionarySetValue(theDict, @"featuresEx", cf);
    APSFeaturesGetLegacyFlags();
  }

  else
  {
    CFDictionaryRemoveValue(theDict, @"featuresEx");
  }

  CFDictionarySetInt64();
  return v6;
}

uint64_t _APAdvertiserInfoSetLegacyFeatures(const __CFDictionary *a1)
{
  CFDictionarySetInt64();
  if (CFDictionaryGetValue(a1, @"featuresEx"))
  {
    MutableCopy = APSFeaturesCreateMutableCopy();
  }

  else
  {
    MutableCopy = APSFeaturesCreateMutable();
  }

  v3 = MutableCopy;
  if (MutableCopy)
  {
    APSFeaturesSetLegacyFlags();
    CFDictionarySetValue(a1, @"featuresEx", v3);
    CFRelease(v3);
    return 0;
  }

  else
  {
    APSLogErrorAt();
    return 4294960568;
  }
}

uint64_t APAdvertiserInfoCreateData(uint64_t a1, CFDataRef *a2)
{
  pthread_mutex_lock((a1 + 16));
  if (a2)
  {
    v4 = CFGetAllocator(a1);
    Data = CFPropertyListCreateData(v4, *(a1 + 80), kCFPropertyListBinaryFormat_v1_0, 0, 0);
    if (Data)
    {
      v6 = 0;
      *a2 = Data;
    }

    else
    {
      APSLogErrorAt();
      v6 = 4294960534;
    }
  }

  else
  {
    APSLogErrorAt();
    v6 = 4294960591;
  }

  pthread_mutex_unlock((a1 + 16));
  return v6;
}

uint64_t APAdvertiserInfoCreateWithDeviceTXTRecordDataAndDeviceName(uint64_t a1, const __CFData *a2, uint64_t a3, uint64_t a4, const __CFString *a5, CFMutableDictionaryRef **a6)
{
  v37 = 0;
  v38 = 0;
  if (!a5 || !a2 && !a3 && !a4)
  {
    APSLogErrorAt();
    return 4294960591;
  }

  APAdvertiserInfoCreate(a1, &v38);
  v11 = v38;
  if (!v38)
  {
    APSLogErrorAt();
    return 4294960568;
  }

  _APAdvertiserInfoCopyAndRemoveMDNSLabelSuffix(a5, &v37);
  v12 = v37;
  if (v37)
  {
    v13 = v37;
  }

  else
  {
    v13 = a5;
  }

  CFDictionarySetValue(v11[10], @"deviceName", v13);
  if (!a2)
  {
    goto LABEL_75;
  }

  v41 = 0;
  value = 0;
  v40 = 0;
  v39 = 0;
  BitListValueFromTXTRecord = APAdvertiserInfoGetBitListValueFromTXTRecord(@"cn", a2, &v39);
  if (BitListValueFromTXTRecord)
  {
    v16 = BitListValueFromTXTRecord;
    APSLogErrorAt();
    if (gLogCategory_APAdvertiserInfo > 40 || gLogCategory_APAdvertiserInfo == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_72;
    }

LABEL_101:
    LogPrintF();
    goto LABEL_72;
  }

  CFDictionarySetInt64();
  BooleanFromTXTRecord = APSTXTRecordUtilsGetBooleanFromTXTRecord();
  if (BooleanFromTXTRecord != -6727)
  {
    v16 = BooleanFromTXTRecord;
    if (BooleanFromTXTRecord)
    {
      goto LABEL_71;
    }

    v17 = MEMORY[0x277CBED28];
    if (!v41)
    {
      v17 = MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(v11[10], @"rfc2617DigestAuthKey", *v17);
  }

  v18 = APAdvertiserInfoGetBitListValueFromTXTRecord(@"et", a2, &v39);
  if (v18)
  {
    v16 = v18;
    APSLogErrorAt();
    if (gLogCategory_APAdvertiserInfo > 40 || gLogCategory_APAdvertiserInfo == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_72;
    }

    goto LABEL_101;
  }

  CFDictionarySetInt64();
  Int64FromTXTRecord = APSTXTRecordUtilsGetInt64FromTXTRecord();
  if (Int64FromTXTRecord != -6727)
  {
    v16 = Int64FromTXTRecord;
    if (Int64FromTXTRecord)
    {
      goto LABEL_71;
    }

    v20 = _APAdvertiserInfoSetLegacyFeatures(v11[10]);
    if (v20)
    {
      v16 = v20;
      goto LABEL_71;
    }
  }

  v21 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v21 != -6727)
  {
    v16 = v21;
    if (v21)
    {
      goto LABEL_71;
    }

    CFDictionarySetValue(v11[10], @"firmwareVersion", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v22 = APSTXTRecordUtilsGetInt64FromTXTRecord();
  if (v22 != -6727)
  {
    v16 = v22;
    if (v22)
    {
      goto LABEL_71;
    }

    CFDictionarySetInt64();
  }

  v23 = APAdvertiserInfoGetBitListValueFromTXTRecord(@"md", a2, &v39);
  if (v23 != -6727)
  {
    v16 = v23;
    if (v23)
    {
      goto LABEL_71;
    }

    CFDictionarySetInt64();
  }

  v24 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v24 != -6727)
  {
    v16 = v24;
    if (v24)
    {
      goto LABEL_71;
    }

    CFDictionarySetValue(v11[10], @"deviceModel", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v25 = APSTXTRecordUtilsGetBooleanFromTXTRecord();
  if (v25 != -6727)
  {
    v16 = v25;
    if (v25)
    {
      goto LABEL_71;
    }

    v26 = MEMORY[0x277CBED28];
    if (!v41)
    {
      v26 = MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(v11[10], @"password", *v26);
  }

  v27 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v27 != -6727)
  {
    v16 = v27;
    if (v27)
    {
      goto LABEL_71;
    }

    CFDictionarySetValue(v11[10], @"publicKey", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v28 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v28)
  {
    v16 = v28;
    APSLogErrorAt();
    if (gLogCategory_APAdvertiserInfo > 40 || gLogCategory_APAdvertiserInfo == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_72;
    }

    goto LABEL_101;
  }

  CFDictionarySetValue(v11[10], @"transportTypes", value);
  if (value)
  {
    CFRelease(value);
    value = 0;
  }

  v29 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (!v29)
  {
    CFDictionarySetValue(v11[10], @"airTunesProtocolVersion", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }

    v30 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
    if (v30 != -6727)
    {
      v16 = v30;
      if (v30)
      {
        goto LABEL_71;
      }

      CFDictionarySetValue(v11[10], @"airPlayVersion", value);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }
    }

    v31 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
    if (v31 == -6727)
    {
LABEL_57:
      v32 = APSTXTRecordUtilsGetInt64FromTXTRecord();
      if (v32 == -6727)
      {
        v16 = 0;
        goto LABEL_72;
      }

      v16 = v32;
      if (!v32)
      {
        CFDictionarySetInt64();
        goto LABEL_72;
      }

      goto LABEL_71;
    }

    v16 = v31;
    if (!v31)
    {
      CFDictionarySetValue(v11[10], @"OSVersion", value);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }

      goto LABEL_57;
    }

LABEL_71:
    APSLogErrorAt();
    goto LABEL_72;
  }

  v16 = v29;
  APSLogErrorAt();
  if (gLogCategory_APAdvertiserInfo <= 40 && (gLogCategory_APAdvertiserInfo != -1 || _LogCategory_Initialize()))
  {
    goto LABEL_101;
  }

LABEL_72:
  if (value)
  {
    CFRelease(value);
  }

  if (v16)
  {
LABEL_97:
    APSLogErrorAt();
    CFRelease(v11);
    if (!v12)
    {
      return v16;
    }

    goto LABEL_87;
  }

LABEL_75:
  if (!a4)
  {
    goto LABEL_84;
  }

  value = 0;
  v33 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v33 != -6727)
  {
    if (!v33)
    {
      CFDictionarySetValue(v11[10], @"nanServiceType", value);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }

      goto LABEL_83;
    }

    APSLogErrorAt();
  }

  if (value)
  {
    CFRelease(value);
  }

LABEL_83:
  v34 = _APAdvertiserInfoAddAirPlayData(v11, a4);
  if (v34)
  {
    v16 = v34;
    goto LABEL_97;
  }

LABEL_84:
  if (a3)
  {
    v35 = _APAdvertiserInfoAddAirPlayData(v11, a3);
    if (v35)
    {
      v16 = v35;
      goto LABEL_97;
    }
  }

  v16 = 0;
  *a6 = v11;
  if (v12)
  {
LABEL_87:
    CFRelease(v12);
  }

  return v16;
}

void _APAdvertiserInfoCopyAndRemoveMDNSLabelSuffix(const __CFString *a1, __CFString **a2)
{
  if (CFStringHasSuffix(a1, @"")))
  {
    result.location = 0;
    result.length = 0;
    Length = CFStringGetLength(a1);
    v18.location = 0;
    v18.length = Length;
    if (CFStringFindWithOptions(a1, @" ("), v18, 4uLL, &result)
    {
      v5 = Length - result.location;
      result.length = Length - result.location;
      if (result.location)
      {
        if (v5 >= 4)
        {
          v19.length = v5 - 3;
          v6 = *MEMORY[0x277CBECE8];
          v19.location = result.location + 2;
          v7 = CFStringCreateWithSubstring(*MEMORY[0x277CBECE8], a1, v19);
          v16.location = 0;
          v16.length = CFStringGetLength(v7);
          v8 = CFNumberFormatterCreate(v6, 0, kCFNumberFormatterNoStyle);
          if (v8)
          {
            v9 = CFNumberFormatterCreateNumberFromString(v6, v8, v7, &v16, 1uLL);
            if (v9)
            {
              v10 = v16.length;
              if (v10 == CFStringGetLength(v7))
              {
                v11 = CFStringCreateWithSubstring(v6, a1, result);
                if (v11)
                {
                  v12 = v11;
                  v13 = CFStringGetLength(a1);
                  MutableCopy = CFStringCreateMutableCopy(v6, v13, a1);
                  if (MutableCopy)
                  {
                    v15 = MutableCopy;
                    CFStringTrim(MutableCopy, v12);
                    *a2 = v15;
                  }

                  else
                  {
                    APSLogErrorAt();
                  }

                  CFRelease(v12);
                }

                else
                {
                  APSLogErrorAt();
                }
              }
            }
          }

          else
          {
            APSLogErrorAt();
            v9 = 0;
          }

          if (v7)
          {
            CFRelease(v7);
          }

          if (v8)
          {
            CFRelease(v8);
          }

          if (v9)
          {
            CFRelease(v9);
          }
        }
      }
    }
  }
}

uint64_t APAdvertiserInfoGetBitListValueFromTXTRecord(const __CFString *a1, CFDataRef theData, _DWORD *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = theData;
    v10 = 0;
    valueLen = 0;
    BytePtr = CFDataGetBytePtr(theData);
    LOWORD(v4) = CFDataGetLength(v4);
    buffer[0] = 0;
    CFStringGetCString(a1, buffer, 256, 0x8000100u);
    if (TXTRecordGetValuePtr(v4, BytePtr, buffer, &valueLen))
    {
      v7 = BitListString_Parse();
      if (v7)
      {
        APSLogErrorAt();
      }

      else
      {
        *a3 = v10;
      }
    }

    else
    {
      return 4294960569;
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294960591;
  }

  return v7;
}

uint64_t _APAdvertiserInfoAddAirPlayData(uint64_t a1, uint64_t a2)
{
  value = 0;
  v48 = 0;
  cf[0] = 0;
  cf[1] = 0;
  Int64FromTXTRecord = APSTXTRecordUtilsGetInt64FromTXTRecord();
  if (Int64FromTXTRecord != -6727)
  {
    v5 = Int64FromTXTRecord;
    if (Int64FromTXTRecord)
    {
      goto LABEL_182;
    }

    CFDictionarySetInt64();
  }

  v6 = APSTXTRecordUtilsGetInt64FromTXTRecord();
  if (v6 != -6727)
  {
    v5 = v6;
    if (v6)
    {
      goto LABEL_182;
    }

    CFDictionarySetInt64();
  }

  v7 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v7 != -6727)
  {
    v5 = v7;
    if (v7)
    {
      goto LABEL_182;
    }

    CFDictionarySetValue(*(a1 + 80), @"bluetoothAddress", value);
  }

  v8 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (!v8)
  {
    CFDictionarySetValue(*(a1 + 80), @"deviceID", value);
    v9 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
    if (v9 != -6727)
    {
      v5 = v9;
      if (v9)
      {
        goto LABEL_182;
      }

      CFDictionarySetValue(*(a1 + 80), @"correlationID", value);
    }

    APSFeaturesFromTXTRecord = APAdvertiserInfoCreateAPSFeaturesFromTXTRecordEx(a2, @"fex", @"features", cf);
    if (APSFeaturesFromTXTRecord != -6727)
    {
      v5 = APSFeaturesFromTXTRecord;
      if (APSFeaturesFromTXTRecord)
      {
        goto LABEL_182;
      }

      v11 = cf[0];
      _APAdvertiserInfoSetFeaturesEx(*(a1 + 80), cf[0]);
      if (v11)
      {
        CFRelease(v11);
        cf[0] = 0;
      }
    }

    v12 = APSTXTRecordUtilsGetInt64FromTXTRecord();
    if (v12 != -6727)
    {
      v5 = v12;
      if (v12)
      {
        goto LABEL_182;
      }

      CFDictionarySetInt64();
    }

    v13 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
    if (v13 != -6727)
    {
      v5 = v13;
      if (v13)
      {
        goto LABEL_182;
      }

      CFDictionarySetValue(*(a1 + 80), @"firmwareVersion", value);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }
    }

    v14 = APSTXTRecordUtilsGetInt64FromTXTRecord();
    if (v14 != -6727)
    {
      v5 = v14;
      if (v14)
      {
        goto LABEL_182;
      }

      CFDictionarySetInt64();
    }

    BooleanFromTXTRecord = APSTXTRecordUtilsGetBooleanFromTXTRecord();
    if (BooleanFromTXTRecord != -6727)
    {
      v5 = BooleanFromTXTRecord;
      if (BooleanFromTXTRecord)
      {
        goto LABEL_182;
      }

      v16 = MEMORY[0x277CBED28];
      if (!v48)
      {
        v16 = MEMORY[0x277CBED10];
      }

      CFDictionarySetValue(*(a1 + 80), @"groupContainsDiscoverableLeader", *v16);
    }

    v17 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
    if (v17 != -6727)
    {
      v5 = v17;
      if (v17)
      {
        goto LABEL_182;
      }

      CFDictionarySetValue(*(a1 + 80), @"groupID", value);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }
    }

    v18 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
    if (v18 != -6727)
    {
      v5 = v18;
      if (v18)
      {
        goto LABEL_182;
      }

      CFDictionarySetValue(*(a1 + 80), @"groupPublicName", value);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }
    }

    v19 = APSTXTRecordUtilsGetBooleanFromTXTRecord();
    if (v19 != -6727)
    {
      v5 = v19;
      if (v19)
      {
        goto LABEL_182;
      }

      v20 = MEMORY[0x277CBED28];
      if (!v48)
      {
        v20 = MEMORY[0x277CBED10];
      }

      CFDictionarySetValue(*(a1 + 80), @"isGroupLeader", *v20);
    }

    v21 = APSTXTRecordUtilsGetInt64FromTXTRecord();
    if (v21 != -6727)
    {
      v5 = v21;
      if (v21)
      {
        goto LABEL_182;
      }

      CFDictionarySetInt64();
    }

    v22 = APSTXTRecordUtilsGetInt64FromTXTRecord();
    if (v22 != -6727)
    {
      v5 = v22;
      if (v22)
      {
        goto LABEL_182;
      }

      CFDictionarySetInt64();
    }

    v23 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
    if (v23 != -6727)
    {
      v5 = v23;
      if (v23)
      {
        goto LABEL_182;
      }

      CFDictionarySetValue(*(a1 + 80), @"persistentGroupUUID", value);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }
    }

    v24 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
    if (v24 != -6727)
    {
      v5 = v24;
      if (v24)
      {
        goto LABEL_182;
      }

      CFDictionarySetValue(*(a1 + 80), @"persistentGroupModel", value);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }
    }

    v25 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
    if (v25 != -6727)
    {
      v5 = v25;
      if (v25)
      {
        goto LABEL_182;
      }

      CFDictionarySetValue(*(a1 + 80), @"persistentGroupMemberID", value);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }
    }

    v26 = APSTXTRecordUtilsGetBooleanFromTXTRecord();
    if (v26 != -6727)
    {
      v5 = v26;
      if (v26)
      {
        goto LABEL_182;
      }

      v27 = MEMORY[0x277CBED28];
      if (!v48)
      {
        v27 = MEMORY[0x277CBED10];
      }

      CFDictionarySetValue(*(a1 + 80), @"parentGroupContainsDiscoverableLeader", *v27);
    }

    v28 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
    if (v28 != -6727)
    {
      v5 = v28;
      if (v28)
      {
        goto LABEL_182;
      }

      CFDictionarySetValue(*(a1 + 80), @"parentGroupID", value);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }
    }

    v29 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
    if (v29 != -6727)
    {
      v5 = v29;
      if (v29)
      {
        goto LABEL_182;
      }

      CFDictionarySetValue(*(a1 + 80), @"tightSyncUUID", value);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }
    }

    v30 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
    if (v30 != -6727)
    {
      v5 = v30;
      if (v30)
      {
        goto LABEL_182;
      }

      CFDictionarySetValue(*(a1 + 80), @"tightSyncGroupModel", value);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }
    }

    v31 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
    if (v31 != -6727)
    {
      v5 = v31;
      if (v31)
      {
        goto LABEL_182;
      }

      CFDictionarySetValue(*(a1 + 80), @"deviceModel", value);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }
    }

    v32 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
    if (v32 != -6727)
    {
      v5 = v32;
      if (v32)
      {
        goto LABEL_182;
      }

      if (APSIsValidDeviceEnclosureColorString())
      {
        CFDictionarySetValue(*(a1 + 80), @"deviceEnclosureColor", value);
      }

      else if (gLogCategory_APAdvertiserInfo <= 60 && (gLogCategory_APAdvertiserInfo != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      if (value)
      {
        CFRelease(value);
        value = 0;
      }
    }

    v33 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
    if (v33 != -6727)
    {
      v5 = v33;
      if (v33)
      {
        goto LABEL_182;
      }

      CFDictionarySetValue(*(a1 + 80), @"manufacturer", value);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }
    }

    v34 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
    if (v34 != -6727)
    {
      v5 = v34;
      if (v34)
      {
        goto LABEL_182;
      }

      CFDictionarySetValue(*(a1 + 80), @"company", value);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }
    }

    v35 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
    if (v35 != -6727)
    {
      v5 = v35;
      if (v35)
      {
        goto LABEL_182;
      }

      CFDictionarySetValue(*(a1 + 80), @"serialNumber", value);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }
    }

    v36 = APSTXTRecordUtilsGetInt64FromTXTRecord();
    if (v36 != -6727)
    {
      v5 = v36;
      if (v36)
      {
        goto LABEL_182;
      }

      CFDictionarySetInt64();
    }

    v37 = APSTXTRecordUtilsGetBooleanFromTXTRecord();
    if (v37 != -6727)
    {
      v5 = v37;
      if (v37)
      {
        goto LABEL_182;
      }

      v38 = MEMORY[0x277CBED28];
      if (!v48)
      {
        v38 = MEMORY[0x277CBED10];
      }

      CFDictionarySetValue(*(a1 + 80), @"password", *v38);
    }

    v39 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
    if (v39 != -6727)
    {
      v5 = v39;
      if (v39)
      {
        goto LABEL_182;
      }

      CFDictionarySetValue(*(a1 + 80), @"protocolVersion", value);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }
    }

    v40 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
    if (v40 != -6727)
    {
      v5 = v40;
      if (v40)
      {
        goto LABEL_182;
      }

      CFDictionarySetValue(*(a1 + 80), @"publicCUAirPlayPairingIdentity", value);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }
    }

    v41 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
    if (v41 != -6727)
    {
      v5 = v41;
      if (v41)
      {
        goto LABEL_182;
      }

      CFDictionarySetValue(*(a1 + 80), @"publicCUSystemPairingIdentity", value);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }
    }

    v42 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
    if (v42 != -6727)
    {
      v5 = v42;
      if (v42)
      {
        goto LABEL_182;
      }

      CFDictionarySetValue(*(a1 + 80), @"publicKey", value);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }
    }

    v43 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
    if (v43 != -6727)
    {
      v5 = v43;
      if (v43)
      {
        goto LABEL_182;
      }

      CFDictionarySetValue(*(a1 + 80), @"airPlayVersion", value);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }
    }

    v44 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
    if (v44 == -6727)
    {
LABEL_167:
      v45 = APSTXTRecordUtilsGetInt64FromTXTRecord();
      if (v45 == -6727)
      {
        v5 = 0;
        goto LABEL_183;
      }

      v5 = v45;
      if (!v45)
      {
        CFDictionarySetInt64();
        goto LABEL_183;
      }

      goto LABEL_182;
    }

    v5 = v44;
    if (!v44)
    {
      CFDictionarySetValue(*(a1 + 80), @"OSVersion", value);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }

      goto LABEL_167;
    }

LABEL_182:
    APSLogErrorAt();
    goto LABEL_183;
  }

  v5 = v8;
  APSLogErrorAt();
  if (gLogCategory_APAdvertiserInfo <= 40 && (gLogCategory_APAdvertiserInfo != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_183:
  if (value)
  {
    CFRelease(value);
  }

  return v5;
}

uint64_t APAdvertiserInfoCreateAPSFeaturesFromTXTRecordEx(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  Int64FromTXTRecord = v6;
  if (v6 != -6727)
  {
    if (!v6)
    {
      v7 = APSFeaturesCreateFromStringRepresentation();
LABEL_7:
      *a4 = v7;
      return Int64FromTXTRecord;
    }

    goto LABEL_8;
  }

  if (a3)
  {
    Int64FromTXTRecord = APSTXTRecordUtilsGetInt64FromTXTRecord();
    if (!Int64FromTXTRecord)
    {
      v7 = APSFeaturesCreateFromLegacyFlags();
      if (!v7)
      {
        APSLogErrorAt();
        return -6728;
      }

      goto LABEL_7;
    }

LABEL_8:
    APSLogErrorAt();
  }

  return Int64FromTXTRecord;
}

uint64_t APAdvertiserInfoCreateWithSidePlayDataAndDeviceName(uint64_t a1, uint64_t a2, const __CFString *a3, CFMutableDictionaryRef **a4)
{
  v19 = 0;
  v20 = 0;
  if (!a3 || !a2)
  {
    APSLogErrorAt();
    return 4294960591;
  }

  v6 = a3;
  APAdvertiserInfoCreate(a1, &v20);
  v7 = v20;
  if (!v20)
  {
    APSLogErrorAt();
    return 4294960568;
  }

  _APAdvertiserInfoCopyAndRemoveMDNSLabelSuffix(v6, &v19);
  v8 = v19;
  if (v19)
  {
    v6 = v19;
  }

  CFDictionarySetValue(v7[10], @"deviceName", v6);
  cf = 0;
  value = 0;
  v9 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v9)
  {
    v11 = v9;
    APSLogErrorAt();
    if (gLogCategory_APAdvertiserInfo <= 40 && (gLogCategory_APAdvertiserInfo != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

LABEL_37:
    v17 = value;
    if (!value)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  CFDictionarySetValue(v7[10], @"deviceID", value);
  if (value)
  {
    CFRelease(value);
    value = 0;
  }

  APSFeaturesFromTXTRecord = APAdvertiserInfoCreateAPSFeaturesFromTXTRecordEx(a2, @"f", 0, &cf);
  if (APSFeaturesFromTXTRecord == -6727)
  {
    v12 = APSFeaturesCreateFromLegacyFlags();
  }

  else
  {
    v11 = APSFeaturesFromTXTRecord;
    if (APSFeaturesFromTXTRecord)
    {
      goto LABEL_36;
    }

    v12 = cf;
  }

  _APAdvertiserInfoSetFeaturesEx(v7[10], v12);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v13 != -6727)
  {
    v11 = v13;
    if (v13)
    {
      goto LABEL_36;
    }

    CFDictionarySetValue(v7[10], @"manufacturer", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v14 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v14 != -6727)
  {
    v11 = v14;
    if (v14)
    {
      goto LABEL_36;
    }

    CFDictionarySetValue(v7[10], @"deviceModel", value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  v15 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v15 == -6727)
  {
    goto LABEL_27;
  }

  v11 = v15;
  if (v15)
  {
LABEL_36:
    APSLogErrorAt();
    goto LABEL_37;
  }

  CFDictionarySetValue(v7[10], @"serialNumber", value);
  if (value)
  {
    CFRelease(value);
    value = 0;
  }

LABEL_27:
  v16 = APSTXTRecordUtilsCopyCFStringFromTXTRecord();
  if (v16 == -6727)
  {
    v11 = 0;
    goto LABEL_37;
  }

  v11 = v16;
  if (v16)
  {
    goto LABEL_36;
  }

  CFDictionarySetValue(v7[10], @"airPlayVersion", value);
  v17 = value;
  if (!value)
  {
    goto LABEL_40;
  }

  v11 = 0;
LABEL_38:
  CFRelease(v17);
LABEL_39:
  if (v11)
  {
    APSLogErrorAt();
    CFRelease(v7);
    if (!v8)
    {
      return v11;
    }

    goto LABEL_45;
  }

LABEL_40:
  if (gLogCategory_APAdvertiserInfo <= 30 && (gLogCategory_APAdvertiserInfo != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v11 = 0;
  *a4 = v7;
  if (v8)
  {
LABEL_45:
    CFRelease(v8);
  }

  return v11;
}

uint64_t APAdvertiserInfoCopy(uint64_t a1, uint64_t a2, void *a3)
{
  cf = 0;
  if (a2 && *(a2 + 80) && a3)
  {
    v5 = APAdvertiserInfoCreate(a1, &cf);
    if (v5)
    {
      APSLogErrorAt();
      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      v6 = cf;
      CFRelease(*(cf + 10));
      pthread_mutex_lock((a2 + 16));
      v6[10] = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, *(a2 + 80));
      pthread_mutex_unlock((a2 + 16));
      *a3 = v6;
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294960591;
  }

  return v5;
}

uint64_t APAdvertiserInfoCopyAirPlayDataWithNANServiceType(uint64_t a1, unsigned int a2, CFDataRef *a3)
{
  v83 = *MEMORY[0x277D85DE8];
  txtRecord = 0uLL;
  pthread_mutex_lock((a1 + 16));
  TXTRecordCreate(&txtRecord, 0x100u, buffer);
  if (!a3)
  {
    goto LABEL_109;
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (Int64Ranged)
  {
    v7 = snprintf(__str, 0x100uLL, "%u", Int64Ranged);
    v79 = TXTRecordSetValue(&txtRecord, "act", v7, __str);
    if (v79)
    {
      goto LABEL_139;
    }
  }

  v8 = CFDictionaryGetInt64Ranged();
  v9 = snprintf(__str, 0x100uLL, "%u", v8);
  v79 = TXTRecordSetValue(&txtRecord, "acl", v9, __str);
  if (v79)
  {
    goto LABEL_139;
  }

  Value = CFDictionaryGetValue(*(a1 + 80), @"bluetoothAddress");
  cf = Value;
  if (Value)
  {
    if (CFStringGetLength(Value))
    {
      v79 = _APAdvertiserInfoAddStringToTXTRecord(cf, &txtRecord, "btaddr");
      if (v79)
      {
        goto LABEL_139;
      }
    }
  }

  v11 = CFDictionaryGetValue(*(a1 + 80), @"deviceID");
  v79 = _APAdvertiserInfoAddStringToTXTRecord(v11, &txtRecord, "deviceid");
  if (!v79)
  {
    if (!a2)
    {
      CFStringGetTypeID();
      TypedValue = CFDictionaryGetTypedValue();
      cft = TypedValue;
      if (TypedValue)
      {
        if (CFStringGetLength(TypedValue))
        {
          v79 = _APAdvertiserInfoAddStringToTXTRecord(cft, &txtRecord, "cid");
          if (v79)
          {
            goto LABEL_139;
          }
        }
      }
    }

    CFStringGetTypeID();
    v12 = CFDictionaryGetTypedValue();
    cfa = v12;
    if (v12)
    {
      if (CFStringGetLength(v12))
      {
        v79 = _APAdvertiserInfoAddStringToTXTRecord(cfa, &txtRecord, "c");
        if (v79)
        {
          goto LABEL_139;
        }
      }
    }

    if (CFDictionaryGetValue(*(a1 + 80), @"featuresEx"))
    {
      v79 = APSFeaturesCopyStringRepresentation();
      if (v79)
      {
        goto LABEL_139;
      }

      v79 = _APAdvertiserInfoAddStringToTXTRecord(cfa, &txtRecord, "fex");
      CFRelease(cfa);
      if (v79)
      {
        goto LABEL_139;
      }

      LegacyFlags = APSFeaturesGetLegacyFlags();
      TXTRecordNumberCString = _APAdvertiserInfoGetTXTRecordNumberCString(LegacyFlags, __str);
      v79 = TXTRecordSetValue(&txtRecord, "features", TXTRecordNumberCString, __str);
      if (v79)
      {
        goto LABEL_139;
      }
    }

    Int64 = CFDictionaryGetInt64();
    if (Int64)
    {
      v16 = _APAdvertiserInfoGetTXTRecordNumberCString(Int64, __str);
      v79 = TXTRecordSetValue(&txtRecord, "rsf", v16, __str);
      if (v79)
      {
        goto LABEL_139;
      }
    }

    v17 = CFDictionaryGetValue(*(a1 + 80), @"firmwareVersion");
    cfb = v17;
    if (v17)
    {
      if (CFStringGetLength(v17))
      {
        v79 = _APAdvertiserInfoAddStringToTXTRecord(cfb, &txtRecord, "fv");
        if (v79)
        {
          goto LABEL_139;
        }
      }
    }

    v18 = CFDictionaryGetInt64Ranged();
    if (v18)
    {
      v19 = snprintf(__str, 0x100uLL, "0x%x", v18);
      v79 = TXTRecordSetValue(&txtRecord, "flags", v19, __str);
      if (v79)
      {
        goto LABEL_139;
      }
    }

    v20 = CFDictionaryGetValue(*(a1 + 80), @"groupID");
    cfc = v20;
    if (v20)
    {
      if (CFStringGetLength(v20))
      {
        v79 = _APAdvertiserInfoAddStringToTXTRecord(cfc, &txtRecord, "gid");
        if (v79)
        {
          goto LABEL_139;
        }

        v21 = CFDictionaryGetInt64();
        v22 = snprintf(__str, 0x100uLL, "%u", v21 != 0);
        v79 = TXTRecordSetValue(&txtRecord, "igl", v22, __str);
        if (v79)
        {
          goto LABEL_139;
        }

        v23 = CFDictionaryGetInt64();
        v24 = snprintf(__str, 0x100uLL, "%u", v23 != 0);
        v79 = TXTRecordSetValue(&txtRecord, "gcgl", v24, __str);
        if (v79)
        {
          goto LABEL_139;
        }

        v25 = CFDictionaryGetValue(*(a1 + 80), @"groupPublicName");
        cfd = v25;
        if (v25)
        {
          if (CFStringGetLength(v25))
          {
            v79 = _APAdvertiserInfoAddStringToTXTRecord(cfd, &txtRecord, "gpn");
            if (v79)
            {
              goto LABEL_139;
            }
          }
        }
      }
    }

    if (a2 < 2)
    {
LABEL_35:
      v27 = CFDictionaryGetInt64Ranged();
      v28 = snprintf(__str, 0x100uLL, "%u", v27);
      v79 = TXTRecordSetValue(&txtRecord, "psgsz", v28, __str);
      if (!v79)
      {
        v29 = CFDictionaryGetInt64Ranged();
        v30 = snprintf(__str, 0x100uLL, "%u", v29);
        v79 = TXTRecordSetValue(&txtRecord, "psgtp", v30, __str);
        if (!v79)
        {
          v31 = CFDictionaryGetValue(*(a1 + 80), @"persistentGroupUUID");
          cfe = v31;
          if (!v31 || !CFStringGetLength(v31) || (v79 = _APAdvertiserInfoAddStringToTXTRecord(cfe, &txtRecord, "psgid")) == 0)
          {
            v32 = CFDictionaryGetValue(*(a1 + 80), @"persistentGroupModel");
            cff = v32;
            if (!v32 || !CFStringGetLength(v32) || (v79 = _APAdvertiserInfoAddStringToTXTRecord(cff, &txtRecord, "pgm")) == 0)
            {
              v33 = CFDictionaryGetValue(*(a1 + 80), @"persistentGroupMemberID");
              cfg = v33;
              if (!v33 || !CFStringGetLength(v33) || (v79 = _APAdvertiserInfoAddStringToTXTRecord(cfg, &txtRecord, "pgmid")) == 0)
              {
                v34 = CFDictionaryGetValue(*(a1 + 80), @"parentGroupID");
                cfh = v34;
                if (!v34 || !CFStringGetLength(v34) || (v79 = _APAdvertiserInfoAddStringToTXTRecord(cfh, &txtRecord, "pgid")) == 0 && (v35 = CFDictionaryGetInt64(), v36 = snprintf(__str, 0x100uLL, "%u", v35 != 0), (v79 = TXTRecordSetValue(&txtRecord, "pgcgl", v36, __str)) == 0))
                {
                  v37 = CFDictionaryGetValue(*(a1 + 80), @"tightSyncUUID");
                  cfi = v37;
                  if (!v37 || !CFStringGetLength(v37) || (v79 = _APAdvertiserInfoAddStringToTXTRecord(cfi, &txtRecord, "tsid")) == 0)
                  {
                    v38 = CFDictionaryGetValue(*(a1 + 80), @"tightSyncGroupModel");
                    cfj = v38;
                    if (!v38 || !CFStringGetLength(v38) || (v79 = _APAdvertiserInfoAddStringToTXTRecord(cfj, &txtRecord, "tsm")) == 0)
                    {
                      v39 = CFDictionaryGetValue(*(a1 + 80), @"deviceModel");
                      cfk = v39;
                      if (!v39 || !CFStringGetLength(v39) || (v79 = _APAdvertiserInfoAddStringToTXTRecord(cfk, &txtRecord, "model")) == 0)
                      {
                        v40 = CFDictionaryGetValue(*(a1 + 80), @"manufacturer");
                        cfl = v40;
                        if (!v40 || !CFStringGetLength(v40) || (v79 = _APAdvertiserInfoAddStringToTXTRecord(cfl, &txtRecord, "manufacturer")) == 0)
                        {
                          v41 = CFDictionaryGetValue(*(a1 + 80), @"serialNumber");
                          cfm = v41;
                          if (!v41 || !CFStringGetLength(v41) || (v79 = _APAdvertiserInfoAddStringToTXTRecord(cfm, &txtRecord, "serialNumber")) == 0)
                          {
                            v42 = CFDictionaryGetInt64Ranged();
                            v43 = snprintf(__str, 0x100uLL, "%u", v42);
                            v79 = TXTRecordSetValue(&txtRecord, "at", v43, __str);
                            if (!v79)
                            {
                              v79 = 0;
                              if (!CFDictionaryGetInt64() || (v79 = TXTRecordSetValue(&txtRecord, "pw", 1u, "1")) == 0)
                              {
                                v44 = CFDictionaryGetValue(*(a1 + 80), @"protocolVersion");
                                cfn = v44;
                                if (!v44 || !CFStringGetLength(v44) || (v79 = _APAdvertiserInfoAddStringToTXTRecord(cfn, &txtRecord, "protovers")) == 0)
                                {
                                  v45 = CFDictionaryGetValue(*(a1 + 80), @"publicCUAirPlayPairingIdentity");
                                  cfo = v45;
                                  if (!v45 || !CFStringGetLength(v45) || (v79 = _APAdvertiserInfoAddStringToTXTRecord(cfo, &txtRecord, "pi")) == 0)
                                  {
                                    v46 = CFDictionaryGetValue(*(a1 + 80), @"publicCUSystemPairingIdentity");
                                    cfp = v46;
                                    if (!v46 || !CFStringGetLength(v46) || (v79 = _APAdvertiserInfoAddStringToTXTRecord(cfp, &txtRecord, "psi")) == 0)
                                    {
                                      v47 = CFDictionaryGetValue(*(a1 + 80), @"publicKey");
                                      cfq = v47;
                                      if (!v47 || !CFStringGetLength(v47) || (v79 = _APAdvertiserInfoAddStringToTXTRecord(cfq, &txtRecord, "pk")) == 0)
                                      {
                                        v48 = CFDictionaryGetValue(*(a1 + 80), @"airPlayVersion");
                                        cfr = v48;
                                        if (!v48 || !CFStringGetLength(v48) || (v79 = _APAdvertiserInfoAddStringToTXTRecord(cfr, &txtRecord, "srcvers")) == 0)
                                        {
                                          v49 = CFDictionaryGetValue(*(a1 + 80), @"OSVersion");
                                          cfs = v49;
                                          if (!v49 || !CFStringGetLength(v49) || (v79 = _APAdvertiserInfoAddStringToTXTRecord(cfs, &txtRecord, "osvers")) == 0)
                                          {
                                            v50 = CFDictionaryGetInt64Ranged();
                                            if (!v50 || (v51 = snprintf(__str, 0x100uLL, "%u", v50), (v79 = TXTRecordSetValue(&txtRecord, "vv", v51, __str)) == 0))
                                            {
                                              BytesPtr = TXTRecordGetBytesPtr(&txtRecord);
                                              Length = TXTRecordGetLength(&txtRecord);
                                              v54 = CFDataCreate(0, BytesPtr, Length);
                                              if (v54)
                                              {
                                                *a3 = v54;
                                                goto LABEL_90;
                                              }

                                              APSLogErrorAt();
                                              v57 = -6728;
LABEL_110:
                                              v79 = v57;
                                              goto LABEL_90;
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

LABEL_139:
      APSLogErrorAt();
      goto LABEL_90;
    }

    TXTString = APSNANServiceTypeGetTXTString();
    if (TXTString)
    {
      v79 = _APAdvertiserInfoAddStringToTXTRecord(TXTString, &txtRecord, "nanST");
      if (v79)
      {
        goto LABEL_139;
      }

      goto LABEL_35;
    }

LABEL_109:
    APSLogErrorAt();
    v57 = -6705;
    goto LABEL_110;
  }

  APSLogErrorAt();
  if (gLogCategory_APAdvertiserInfo <= 40 && (gLogCategory_APAdvertiserInfo != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_90:
  TXTRecordDeallocate(&txtRecord);
  pthread_mutex_unlock((a1 + 16));
  return v79;
}

uint64_t _APAdvertiserInfoAddStringToTXTRecord(const __CFString *a1, TXTRecordRef *a2, const char *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a1 && CFStringGetLength(a1))
  {
    buffer[0] = 0;
    if (CFStringGetCString(a1, buffer, 256, 0x8000100u))
    {
      v6 = strlen(buffer);
      v7 = TXTRecordSetValue(a2, a3, v6, buffer);
      if (v7)
      {
        APSLogErrorAt();
      }
    }

    else
    {
      APSLogErrorAt();
      return 4294960559;
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294960591;
  }

  return v7;
}

uint64_t _APAdvertiserInfoGetTXTRecordNumberCString(unint64_t a1, char *__str)
{
  if (HIDWORD(a1))
  {
    return snprintf(__str, 0x100uLL, "0x%X,0x%X");
  }

  else
  {
    return snprintf(__str, 0x100uLL, "0x%X");
  }
}

uint64_t APAdvertiserInfoCopyClusterCompatibleAirPlayData(uint64_t a1, int a2, CFDataRef *a3)
{
  v63 = *MEMORY[0x277D85DE8];
  txtRecord = 0uLL;
  pthread_mutex_lock((a1 + 16));
  TXTRecordCreate(&txtRecord, 0x100u, buffer);
  if (!a3)
  {
    APSLogErrorAt();
    v46 = -6705;
LABEL_75:
    v59 = v46;
    goto LABEL_68;
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  v7 = snprintf(__str, 0x100uLL, "%u", Int64Ranged);
  v59 = TXTRecordSetValue(&txtRecord, "acl", v7, __str);
  if (v59)
  {
    APSLogErrorAt();
    goto LABEL_68;
  }

  if (!CFDictionaryGetValue(*(a1 + 80), @"featuresEx"))
  {
    v9 = 0;
    goto LABEL_12;
  }

  MutableCopy = APSFeaturesCreateMutableCopy();
  if (!MutableCopy)
  {
    APSLogErrorAt();
    v46 = -6728;
    goto LABEL_75;
  }

  v9 = MutableCopy;
  if (a2 == 2)
  {
    APSFeaturesSetFeature();
    APSFeaturesSetFeature();
    APSFeaturesSetFeature();
    APSFeaturesSetFeature();
  }

  v59 = APSFeaturesCopyStringRepresentation();
  if (v59 || (v59 = _APAdvertiserInfoAddStringToTXTRecord(0, &txtRecord, "fex"), CFRelease(0), v59) || (LegacyFlags = APSFeaturesGetLegacyFlags(), TXTRecordNumberCString = _APAdvertiserInfoGetTXTRecordNumberCString(LegacyFlags, __str), (v59 = TXTRecordSetValue(&txtRecord, "features", TXTRecordNumberCString, __str)) != 0))
  {
    APSLogErrorAt();
    goto LABEL_67;
  }

LABEL_12:
  Int64 = CFDictionaryGetInt64();
  if (Int64)
  {
    v13 = _APAdvertiserInfoGetTXTRecordNumberCString(Int64, __str);
    v59 = TXTRecordSetValue(&txtRecord, "rsf", v13, __str);
    if (v59)
    {
      goto LABEL_77;
    }
  }

  v14 = CFDictionaryGetInt64Ranged();
  if (CFDictionaryGetValue(*(a1 + 80), @"tightSyncUUID") && !CFDictionaryGetValue(*(a1 + 80), @"persistentGroupUUID"))
  {
    v15 = 0x2000;
  }

  else
  {
    v15 = -8969;
  }

  v16 = v15 & v14;
  if (v16)
  {
    v17 = snprintf(__str, 0x100uLL, "0x%x", v16);
    v59 = TXTRecordSetValue(&txtRecord, "flags", v17, __str);
    if (v59)
    {
      goto LABEL_77;
    }
  }

  v18 = *(a1 + 80);
  if (a2 != 1)
  {
    Value = CFDictionaryGetValue(v18, @"persistentGroupUUID");
    cfb = Value;
    if (Value && CFStringGetLength(Value))
    {
      v59 = _APAdvertiserInfoAddStringToTXTRecord(cfb, &txtRecord, "psgid");
      if (v59)
      {
        goto LABEL_77;
      }

      v22 = CFDictionaryGetInt64Ranged();
      v23 = snprintf(__str, 0x100uLL, "%u", v22);
      v59 = TXTRecordSetValue(&txtRecord, "psgsz", v23, __str);
      if (v59)
      {
        goto LABEL_77;
      }

      v24 = CFDictionaryGetInt64Ranged();
      v25 = snprintf(__str, 0x100uLL, "%u", v24);
      v59 = TXTRecordSetValue(&txtRecord, "psgtp", v25, __str);
      if (v59)
      {
        goto LABEL_77;
      }

      v26 = CFDictionaryGetValue(*(a1 + 80), @"persistentGroupModel");
      cfc = v26;
      if (v26)
      {
        if (CFStringGetLength(v26))
        {
          v59 = _APAdvertiserInfoAddStringToTXTRecord(cfc, &txtRecord, "pgm");
          if (v59)
          {
            goto LABEL_77;
          }
        }
      }

      goto LABEL_38;
    }

LABEL_71:
    APSLogErrorAt();
    v47 = -6705;
    goto LABEL_73;
  }

  v19 = CFDictionaryGetValue(v18, @"tightSyncUUID");
  cf = v19;
  if (!v19 || !CFStringGetLength(v19))
  {
    goto LABEL_71;
  }

  v59 = _APAdvertiserInfoAddStringToTXTRecord(cf, &txtRecord, "tsid");
  if (!v59)
  {
    v20 = CFDictionaryGetValue(*(a1 + 80), @"tightSyncGroupModel");
    cfa = v20;
    if (!v20 || !CFStringGetLength(v20) || (v59 = _APAdvertiserInfoAddStringToTXTRecord(cfa, &txtRecord, "tsm")) == 0)
    {
LABEL_38:
      v27 = CFDictionaryGetValue(*(a1 + 80), @"groupID");
      cfd = v27;
      if (v27)
      {
        if (CFStringGetLength(v27))
        {
          v59 = _APAdvertiserInfoAddStringToTXTRecord(cfd, &txtRecord, "gid");
          if (v59)
          {
            goto LABEL_77;
          }

          v28 = CFDictionaryGetInt64();
          v29 = snprintf(__str, 0x100uLL, "%u", v28 != 0);
          v59 = TXTRecordSetValue(&txtRecord, "igl", v29, __str);
          if (v59)
          {
            goto LABEL_77;
          }

          v30 = CFDictionaryGetInt64();
          v31 = snprintf(__str, 0x100uLL, "%u", v30 != 0);
          v59 = TXTRecordSetValue(&txtRecord, "gcgl", v31, __str);
          if (v59)
          {
            goto LABEL_77;
          }

          v32 = CFDictionaryGetValue(*(a1 + 80), @"groupPublicName");
          cfe = v32;
          if (v32)
          {
            if (CFStringGetLength(v32))
            {
              v59 = _APAdvertiserInfoAddStringToTXTRecord(cfe, &txtRecord, "gpn");
              if (v59)
              {
                goto LABEL_77;
              }
            }
          }
        }
      }

      v33 = CFDictionaryGetValue(*(a1 + 80), @"parentGroupID");
      cff = v33;
      if (v33)
      {
        if (CFStringGetLength(v33))
        {
          v59 = _APAdvertiserInfoAddStringToTXTRecord(cff, &txtRecord, "pgid");
          if (v59)
          {
            goto LABEL_77;
          }

          v34 = CFDictionaryGetInt64();
          v35 = snprintf(__str, 0x100uLL, "%u", v34 != 0);
          v59 = TXTRecordSetValue(&txtRecord, "pgcgl", v35, __str);
          if (v59)
          {
            goto LABEL_77;
          }
        }
      }

      v36 = CFDictionaryGetValue(*(a1 + 80), @"deviceModel");
      cfg = v36;
      if (v36)
      {
        if (CFStringGetLength(v36))
        {
          v59 = _APAdvertiserInfoAddStringToTXTRecord(cfg, &txtRecord, "model");
          if (v59)
          {
            goto LABEL_77;
          }
        }
      }

      v37 = CFDictionaryGetValue(*(a1 + 80), @"protocolVersion");
      cfh = v37;
      if (v37)
      {
        if (CFStringGetLength(v37))
        {
          v59 = _APAdvertiserInfoAddStringToTXTRecord(cfh, &txtRecord, "protovers");
          if (v59)
          {
            goto LABEL_77;
          }
        }
      }

      v38 = CFDictionaryGetValue(*(a1 + 80), @"airPlayVersion");
      cfi = v38;
      if (v38)
      {
        if (CFStringGetLength(v38))
        {
          v59 = _APAdvertiserInfoAddStringToTXTRecord(cfi, &txtRecord, "srcvers");
          if (v59)
          {
            goto LABEL_77;
          }
        }
      }

      v39 = CFDictionaryGetValue(*(a1 + 80), @"OSVersion");
      cfj = v39;
      if (v39)
      {
        if (CFStringGetLength(v39))
        {
          v59 = _APAdvertiserInfoAddStringToTXTRecord(cfj, &txtRecord, "osvers");
          if (v59)
          {
            goto LABEL_77;
          }
        }
      }

      v40 = CFDictionaryGetInt64Ranged();
      if (v40)
      {
        v41 = snprintf(__str, 0x100uLL, "%u", v40);
        v59 = TXTRecordSetValue(&txtRecord, "vv", v41, __str);
        if (v59)
        {
          goto LABEL_77;
        }
      }

      BytesPtr = TXTRecordGetBytesPtr(&txtRecord);
      Length = TXTRecordGetLength(&txtRecord);
      v44 = CFDataCreate(0, BytesPtr, Length);
      if (v44)
      {
        *a3 = v44;
        goto LABEL_66;
      }

      APSLogErrorAt();
      v47 = -6728;
LABEL_73:
      v59 = v47;
      goto LABEL_66;
    }
  }

LABEL_77:
  APSLogErrorAt();
LABEL_66:
  if (v9)
  {
LABEL_67:
    CFRelease(v9);
  }

LABEL_68:
  TXTRecordDeallocate(&txtRecord);
  pthread_mutex_unlock((a1 + 16));
  return v59;
}

uint64_t APAdvertiserInfoCopyAirPlayP2PDataWithNANServiceType(uint64_t a1, int a2, int a3, CFDataRef *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  if (gLogCategory_APAdvertiserInfo <= 30 && (gLogCategory_APAdvertiserInfo != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  txtRecord = 0uLL;
  pthread_mutex_lock((a1 + 16));
  TXTRecordCreate(&txtRecord, 0x100u, buffer);
  if (!a4)
  {
    goto LABEL_25;
  }

  if (a2 != 1)
  {
    goto LABEL_12;
  }

  Value = CFDictionaryGetValue(*(a1 + 80), @"correlationID");
  if (gLogCategory_APAdvertiserInfo <= 30 && (gLogCategory_APAdvertiserInfo != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!Value)
  {
LABEL_12:
    Value = CFDictionaryGetValue(*(a1 + 80), @"deviceID");
  }

  v9 = _APAdvertiserInfoAddStringToTXTRecord(Value, &txtRecord, "deviceid");
  if (!v9)
  {
    if (!a3)
    {
LABEL_17:
      BytesPtr = TXTRecordGetBytesPtr(&txtRecord);
      Length = TXTRecordGetLength(&txtRecord);
      v14 = CFDataCreate(0, BytesPtr, Length);
      if (v14)
      {
        v15 = 0;
        *a4 = v14;
      }

      else
      {
        APSLogErrorAt();
        v15 = 4294960568;
      }

      goto LABEL_19;
    }

    TXTString = APSNANServiceTypeGetTXTString();
    if (TXTString)
    {
      v11 = _APAdvertiserInfoAddStringToTXTRecord(TXTString, &txtRecord, "nanST");
      if (v11)
      {
        v15 = v11;
        APSLogErrorAt();
        goto LABEL_19;
      }

      goto LABEL_17;
    }

LABEL_25:
    APSLogErrorAt();
    v15 = 4294960591;
    goto LABEL_19;
  }

  v15 = v9;
  APSLogErrorAt();
  if (gLogCategory_APAdvertiserInfo <= 40 && (gLogCategory_APAdvertiserInfo != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_19:
  TXTRecordDeallocate(&txtRecord);
  pthread_mutex_unlock((a1 + 16));
  return v15;
}

uint64_t APAdvertiserInfoCreateAirPlayServiceName(uint64_t a1, void *a2)
{
  if (!a2)
  {
    APSLogErrorAt();
    return 4294960591;
  }

  if (!a1)
  {
    return 4294960591;
  }

  pthread_mutex_lock((a1 + 16));
  Value = CFDictionaryGetValue(*(a1 + 80), @"deviceName");
  v5 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  pthread_mutex_unlock((a1 + 16));
  result = 0;
  *a2 = v5;
  return result;
}

uint64_t APAdvertiserInfoCopyRAOPData(uint64_t a1, CFDataRef *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  txtRecord = 0uLL;
  pthread_mutex_lock((a1 + 16));
  TXTRecordCreate(&txtRecord, 0x100u, buffer);
  if (!a2)
  {
    APSLogErrorAt();
    v26 = -6705;
    goto LABEL_46;
  }

  CFDictionaryGetInt64Ranged();
  BitListString_Make();
  v27 = TXTRecordSetValue(&txtRecord, "cn", 0, value);
  if (v27)
  {
    goto LABEL_47;
  }

  if (CFDictionaryGetInt64())
  {
    v27 = TXTRecordSetValue(&txtRecord, "da", 4u, "true");
    if (v27)
    {
      goto LABEL_47;
    }
  }

  CFDictionaryGetInt64Ranged();
  BitListString_Make();
  v27 = TXTRecordSetValue(&txtRecord, "et", 0, value);
  if (v27)
  {
    goto LABEL_47;
  }

  if (CFDictionaryGetValue(*(a1 + 80), @"featuresEx"))
  {
    LegacyFlags = APSFeaturesGetLegacyFlags();
    TXTRecordNumberCString = _APAdvertiserInfoGetTXTRecordNumberCString(LegacyFlags, value);
    TXTRecordSetValue(&txtRecord, "ft", TXTRecordNumberCString, value);
  }

  if ((v6 = CFDictionaryGetValue(*(a1 + 80), @"firmwareVersion")) != 0 && (v7 = v6, CFStringGetLength(v6)) && (v27 = _APAdvertiserInfoAddStringToTXTRecord(v7, &txtRecord, "fv")) != 0 || (Int64Ranged = CFDictionaryGetInt64Ranged()) != 0 && (v9 = snprintf(value, 0x100uLL, "0x%x", Int64Ranged), (v27 = TXTRecordSetValue(&txtRecord, "sf", v9, value)) != 0) || CFDictionaryGetInt64Ranged() && (BitListString_Make(), (v27 = TXTRecordSetValue(&txtRecord, "md", 0, value)) != 0) || (v10 = CFDictionaryGetValue(*(a1 + 80), @"deviceModel")) != 0 && (v11 = v10, CFStringGetLength(v10)) && (v27 = _APAdvertiserInfoAddStringToTXTRecord(v11, &txtRecord, "am")) != 0 || CFDictionaryGetInt64() && (v27 = TXTRecordSetValue(&txtRecord, "pw", 4u, "true")) != 0 || (v12 = CFDictionaryGetValue(*(a1 + 80), @"publicKey")) != 0 && (v13 = v12, CFStringGetLength(v12)) && (v27 = _APAdvertiserInfoAddStringToTXTRecord(v13, &txtRecord, "pk")) != 0)
  {
LABEL_47:
    APSLogErrorAt();
    goto LABEL_34;
  }

  v14 = CFDictionaryGetValue(*(a1 + 80), @"transportTypes");
  v27 = _APAdvertiserInfoAddStringToTXTRecord(v14, &txtRecord, "tp");
  if (v27)
  {
    APSLogErrorAt();
    if (gLogCategory_APAdvertiserInfo <= 40 && (gLogCategory_APAdvertiserInfo != -1 || _LogCategory_Initialize()))
    {
      goto LABEL_43;
    }
  }

  else
  {
    v15 = CFDictionaryGetValue(*(a1 + 80), @"airTunesProtocolVersion");
    v27 = _APAdvertiserInfoAddStringToTXTRecord(v15, &txtRecord, "vn");
    if (!v27)
    {
      v16 = CFDictionaryGetValue(*(a1 + 80), @"airPlayVersion");
      if (!v16 || (v17 = v16, !CFStringGetLength(v16)) || (v27 = _APAdvertiserInfoAddStringToTXTRecord(v17, &txtRecord, "vs")) == 0)
      {
        v18 = CFDictionaryGetValue(*(a1 + 80), @"OSVersion");
        if (!v18 || (v19 = v18, !CFStringGetLength(v18)) || (v27 = _APAdvertiserInfoAddStringToTXTRecord(v19, &txtRecord, "ov")) == 0)
        {
          v20 = CFDictionaryGetInt64Ranged();
          v21 = snprintf(value, 0x100uLL, "%u", v20);
          v27 = TXTRecordSetValue(&txtRecord, "vv", v21, value);
          if (!v27)
          {
            BytesPtr = TXTRecordGetBytesPtr(&txtRecord);
            Length = TXTRecordGetLength(&txtRecord);
            v24 = CFDataCreate(0, BytesPtr, Length);
            if (v24)
            {
              *a2 = v24;
              goto LABEL_34;
            }

            APSLogErrorAt();
            v26 = -6728;
LABEL_46:
            v27 = v26;
            goto LABEL_34;
          }
        }
      }

      goto LABEL_47;
    }

    APSLogErrorAt();
    if (gLogCategory_APAdvertiserInfo <= 40 && (gLogCategory_APAdvertiserInfo != -1 || _LogCategory_Initialize()))
    {
LABEL_43:
      LogPrintF();
    }
  }

LABEL_34:
  TXTRecordDeallocate(&txtRecord);
  pthread_mutex_unlock((a1 + 16));
  return v27;
}

uint64_t APAdvertiserInfoCreateRAOPServiceName(uint64_t a1, __CFString **a2)
{
  pthread_mutex_lock((a1 + 16));
  Value = CFDictionaryGetValue(*(a1 + 80), @"deviceID");
  v5 = CFDictionaryGetValue(*(a1 + 80), @"deviceName");
  if (Value)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    APSLogErrorAt();
LABEL_12:
    v11 = 4294960534;
    goto LABEL_8;
  }

  v7 = v5;
  Length = CFStringGetLength(Value);
  MutableCopy = CFStringCreateMutableCopy(0, Length, Value);
  if (!MutableCopy)
  {
    APSLogErrorAt();
    v11 = 4294960568;
    goto LABEL_8;
  }

  v10 = MutableCopy;
  v13.length = CFStringGetLength(MutableCopy);
  v13.location = 0;
  if (CFStringFindAndReplace(v10, @":", &stru_28512F888, v13, 0) != 5)
  {
    APSLogErrorAt();
    CFRelease(v10);
    goto LABEL_12;
  }

  CFStringAppend(v10, @"@");
  CFStringAppend(v10, v7);
  v11 = 0;
  *a2 = v10;
LABEL_8:
  pthread_mutex_unlock((a1 + 16));
  return v11;
}

uint64_t APAdvertiserInfoDebugShow(uint64_t a1, int a2, uint64_t a3)
{
  if (a3 && a1)
  {
    pthread_mutex_lock((a1 + 16));
    DataBuffer_AppendF();
    v5 = *(a1 + 80);
    if (a2)
    {
      v6 = CFCopyDescription(v5);
      DataBuffer_AppendF();
      pthread_mutex_unlock((a1 + 16));
      if (v6)
      {
        CFRelease(v6);
      }
    }

    else
    {
      CFDictionaryGetValue(v5, @"deviceName");
      DataBuffer_AppendF();
      pthread_mutex_unlock((a1 + 16));
    }

    return 0;
  }

  else
  {
    APSLogErrorAt();
    return 4294960591;
  }
}

__CFDictionary *APAdvertiserInfoCreateTestInfoDictionary()
{
  v0 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (IsAppleInternalBuild())
  {
    CFDictionarySetInt64();
    CFDictionarySetInt64();
    CFDictionarySetValue(Mutable, @"bluetoothAddress", @"AA:BB:CC:DD:EE:FF");
    CFDictionarySetValue(Mutable, @"deviceName", @"Name me, please");
    CFDictionarySetValue(Mutable, @"deviceID", @"FF:FF:FF:FF:FF:FF");
    _APAdvertiserInfoSetLegacyFeatures(Mutable);
    CFDictionarySetInt64();
    CFDictionarySetValue(Mutable, @"deviceModel", @"AppleTV5,3");
    CFDictionarySetValue(Mutable, @"deviceEnclosureColor", @"1");
    CFDictionarySetValue(Mutable, @"manufacturer", @"Apple");
    CFDictionarySetValue(Mutable, @"serialNumber", @"ABCD7890WXYZ");
    CFDictionarySetValue(Mutable, @"password", *MEMORY[0x277CBED10]);
    APSVersionUtilsGetShortVersionLength();
    CFDictionarySetCString();
    CFDictionarySetValue(Mutable, @"OSVersion", @"7.2");
    v2 = CFStringCreateWithFormat(v0, 0, @"%u", 65537);
    CFDictionarySetValue(Mutable, @"airTunesProtocolVersion", v2);
    CFRelease(v2);
    CFDictionarySetInt64();
    CFDictionarySetInt64();
    CFDictionarySetValue(Mutable, @"rfc2617DigestAuthKey", *MEMORY[0x277CBED28]);
    CFDictionarySetValue(Mutable, @"transportTypes", @"UDP");
    CFDictionarySetInt64();
  }

  else
  {
    APSLogErrorAt();
  }

  return Mutable;
}

uint64_t APReceiverAudioSessionBufferedHoseCreate(uint64_t a1, const void *a2, _OWORD *a3, const __CFDictionary *a4, uint64_t a5, uint64_t *a6)
{
  v103 = *MEMORY[0x277D85DE8];
  updated = 0;
  cf = 0;
  if (gLogCategory_APReceiverAudioSessionBufferedHose <= 30 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!a6)
  {
    APSLogErrorAt();
    v24 = 0;
    v23 = 0;
    v22 = 0;
    v21 = 0;
    v53 = -6705;
LABEL_125:
    updated = v53;
    goto LABEL_266;
  }

  v12 = malloc_type_calloc(1uLL, 0x168uLL, 0x10600405DA13CB8uLL);
  if (!v12)
  {
    APSLogErrorAt();
    v24 = 0;
    v23 = 0;
    v22 = 0;
    v21 = 0;
    v53 = -72150;
    goto LABEL_125;
  }

  v13 = v12;
  *v12 = a1;
  v12[3] = CFRetain(a2);
  *(v13 + 16) = 103;
  Value = CFDictionaryGetValue(a4, @"ClientID");
  if (Value)
  {
    Value = CFRetain(Value);
  }

  *(v13 + 64) = -1;
  *(v13 + 32) = Value;
  *(v13 + 80) = -1;
  v15 = CFDictionaryGetValue(a4, @"NetworkClock");
  if (!v15)
  {
    *(v13 + 208) = 0;
LABEL_20:
    APSLogErrorAt();
LABEL_21:
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -72151;
LABEL_25:
    updated = v25;
LABEL_265:
    free(v13);
    goto LABEL_266;
  }

  v16 = CFRetain(v15);
  *(v13 + 208) = v16;
  if (!v16)
  {
    goto LABEL_20;
  }

  v17 = CFGetTypeID(v16);
  if (v17 != APSNetworkClockGetTypeID())
  {
    goto LABEL_20;
  }

  v18 = CFDictionaryGetValue(a4, @"AudioFormat");
  if (!v18)
  {
    *(v13 + 192) = 0;
    goto LABEL_23;
  }

  v19 = CFRetain(v18);
  *(v13 + 192) = v19;
  if (!v19)
  {
LABEL_23:
    APSLogErrorAt();
LABEL_24:
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -6705;
    goto LABEL_25;
  }

  *(v13 + 116) = CFDictionaryGetInt64() != 0;
  if (updated)
  {
    goto LABEL_137;
  }

  v20 = CFDictionaryGetValue(a4, @"ReceiverSession");
  if (!v20)
  {
    APSLogErrorAt();
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    updated = APSSignalErrorAt();
    goto LABEL_265;
  }

  *(v13 + 276) = v20[124];
  APSCopyClusterInfo();
  if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v26 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  *(v13 + 8) = v26;
  if (!v26)
  {
LABEL_131:
    APSLogErrorAt();
    v21 = 0;
    v22 = 0;
LABEL_132:
    v23 = 0;
LABEL_133:
    v24 = 0;
LABEL_134:
    v25 = -6728;
    goto LABEL_25;
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  *(v13 + 40) = Int64Ranged;
  if (Int64Ranged != 1095778640 && Int64Ranged != 1095778644 && Int64Ranged != 1381257248)
  {
    if (gLogCategory_APReceiverAudioSessionBufferedHose <= 90 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    goto LABEL_21;
  }

  v28 = FigSimpleMutexCreate();
  *(v13 + 232) = v28;
  if (!v28)
  {
    goto LABEL_131;
  }

  *(v13 + 256) = a5;
  *(v13 + 240) = 0;
  allocator = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(v13 + 248) = Mutable;
  if (!Mutable)
  {
    goto LABEL_131;
  }

  *(v13 + 200) = 1;
  if (!CFDictionaryContainsKey(a4, @"MediaDataControl"))
  {
    v22 = 0;
    goto LABEL_54;
  }

  CFArrayGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (updated)
  {
LABEL_137:
    APSLogErrorAt();
    v21 = 0;
    v22 = 0;
LABEL_323:
    v23 = 0;
    goto LABEL_264;
  }

  Count = CFArrayGetCount(TypedValue);
  if (!Count)
  {
    v96 = a6;
    goto LABEL_45;
  }

  if (Count != 1)
  {
    if (Count == 2)
    {
      CFDataGetTypeID();
      CFArrayGetTypedValueAtIndex();
      goto LABEL_39;
    }

    goto LABEL_24;
  }

LABEL_39:
  v96 = a6;
  CFDataGetTypeID();
  CFArrayGetTypedValueAtIndex();
LABEL_45:
  v32 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v22 = v32;
  if (!v32)
  {
LABEL_324:
    APSLogErrorAt();
    v21 = 0;
    goto LABEL_132;
  }

  v33 = MEMORY[0x277CBED28];
  if (!*(v13 + 116))
  {
    v33 = MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(v32, @"MDC::AllowP2P", *v33);
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  CFDictionarySetValue(v22, @"MDC::Label", @"BUF");
  CFDictionarySetInt64();
  FigCFDictionarySetInt32();
  *&v98 = a1;
  *(&v98 + 1) = audioSessionBufferedHose_handleMediaDataControlRequest;
  v99 = 0;
  *label = *a3;
  *&label[12] = *(a3 + 12);
  updated = APMediaDataControlServerCreate(label, v22, &v98, (v13 + 48));
  if (updated)
  {
    goto LABEL_321;
  }

  if (gLogCategory_APReceiverAudioSessionBufferedHose > 50)
  {
    a6 = v96;
  }

  else
  {
    a6 = v96;
    if (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }

LABEL_54:
  if (!APSSettingsIsFeatureEnabled())
  {
    if (*(v13 + 40) == 1095778644)
    {
      APSLogErrorAt();
      if (gLogCategory_APReceiverAudioSessionBufferedHose <= 90 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      goto LABEL_322;
    }

    *(v13 + 120) = FigGetCFPreferenceNumberWithDefault();
    *(v13 + 124) = 0;
    if (FigGetCFPreferenceNumberWithDefault())
    {
      v37 = ServerSocketOpen();
      updated = v37;
      v36 = allocator;
      if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50)
      {
        if (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize())
        {
          LogPrintF();
        }

        v37 = updated;
      }
    }

    else
    {
      v37 = ServerSocketOpen();
      updated = v37;
      v36 = allocator;
    }

    if (!v37)
    {
      updated = SocketSetP2P();
      if (!updated)
      {
        *(v13 + 112) = 0;
        Int64 = CFDictionaryGetInt64();
        *(v13 + 117) = Int64 != 0;
        if (!updated)
        {
          if (!Int64)
          {
            SocketSetQoS();
          }

          if (gLogCategory_APReceiverAudioSessionBufferedHose <= 30 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
          {
            if (APSAudioFormatDescriptionGetAudioFormatIndex() != 6 && APSAudioFormatDescriptionGetAudioFormatIndex() != 10 && APSAudioFormatDescriptionGetAudioFormatIndex() != 11 && APSAudioFormatDescriptionGetAudioFormatIndex() != 15 && APSAudioFormatDescriptionGetAudioFormatIndex() != 18 && APSAudioFormatDescriptionGetAudioFormatIndex() != 22 && APSAudioFormatDescriptionGetAudioFormatIndex() != 24 && APSAudioFormatDescriptionGetAudioFormatIndex() != 2 && APSAudioFormatDescriptionGetAudioFormatIndex() != 3)
            {
              if (APSAudioFormatDescriptionGetAudioFormatIndex() != 4
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 5
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 7
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 8
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 9
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 12
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 13
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 14
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 16
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 17
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 45
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 46
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 44
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 38
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 78
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 80
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 82
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 84
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 93
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 47
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 48
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 79
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 81
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 83
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 69
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 94
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 85
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 19
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 20
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 86
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 21
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 40
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 39
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 90
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 23
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 42
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 41
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 25
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 26
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 27
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 28
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 29
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 30
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 31
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 32
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 43
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 49
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 50
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 51
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 52
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 53
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 54
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 55
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 56
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 57
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 58
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 60
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 89
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 61
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 62
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 63
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 33
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 34
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 35
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 87
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 88
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 91
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 64
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 65
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 66
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 67
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 76
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 77
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 68
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 92
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 70
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 71
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 72
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 73
                && APSAudioFormatDescriptionGetAudioFormatIndex() != 74)
              {
                APSAudioFormatDescriptionGetAudioFormatIndex();
              }

              v36 = allocator;
            }

            LogPrintF();
          }

          updated = OpenSelfConnectedLoopbackSocket();
          if (!updated)
          {
            v54 = FigSimpleMutexCreate();
            *(v13 + 88) = v54;
            if (v54)
            {
              v23 = 0;
              *(v13 + 104) = 36;
              goto LABEL_238;
            }

            goto LABEL_324;
          }
        }
      }
    }

LABEL_321:
    APSLogErrorAt();
LABEL_322:
    v21 = 0;
    goto LABEL_323;
  }

  v34 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v23 = v34;
  if (!v34)
  {
    APSLogErrorAt();
    v21 = 0;
    goto LABEL_133;
  }

  v35 = *MEMORY[0x277CBED28];
  CFDictionarySetValue(v34, *MEMORY[0x277CE4E88], *MEMORY[0x277CBED28]);
  CFDictionarySetInt64();
  if (CFDictionaryGetInt64())
  {
    FigCFDictionarySetUInt32();
  }

  if (CFDictionaryGetInt64())
  {
    FigCFDictionarySetUInt32();
  }

  if (*(v13 + 40) == 1095778644)
  {
    CFDictionarySetValue(v23, *MEMORY[0x277CE4E90], v35);
  }

  v36 = allocator;
  updated = APTransportConnectionUnbufferedNWCreate();
  if (updated)
  {
    goto LABEL_119;
  }

  if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v38 = *(v13 + 40);
  v39 = MEMORY[0x277CE4EB0];
  if (v38 != 1095778640)
  {
    v39 = MEMORY[0x277CE4EC8];
  }

  if (v38 == 1095778644)
  {
    v40 = MEMORY[0x277CE4EB8];
  }

  else
  {
    v40 = v39;
  }

  CMBaseObject = APTransportConnectionGetCMBaseObject();
  v42 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v42)
  {
    updated = -12782;
    goto LABEL_119;
  }

  updated = v42(CMBaseObject, *MEMORY[0x277CE4EF0], *v40);
  if (updated)
  {
    goto LABEL_119;
  }

  DefaultAirPlayMallocZoneCFAllocator = APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator();
  v44 = APTransportConnectionGetCMBaseObject();
  v45 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v45)
  {
    updated = -12782;
    goto LABEL_119;
  }

  updated = v45(v44, *MEMORY[0x277CE4ED0], DefaultAirPlayMallocZoneCFAllocator);
  if (updated)
  {
    goto LABEL_119;
  }

  v46 = APTransportConnectionGetCMBaseObject();
  v47 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v47)
  {
    updated = -12782;
    goto LABEL_119;
  }

  updated = v47(v46, *MEMORY[0x277CE4F08], *MEMORY[0x277CBED10]);
  if (updated)
  {
    goto LABEL_119;
  }

  v48 = *(v13 + 56);
  v49 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v49)
  {
    updated = -12782;
    goto LABEL_119;
  }

  updated = v49(v48, v13, audioSessionBufferedHose_handleAudioDataConnectionEvent, 0, 0);
  if (updated)
  {
LABEL_119:
    APSLogErrorAt();
    v21 = 0;
LABEL_264:
    v24 = 0;
    goto LABEL_265;
  }

  v50 = *(v13 + 56);
  v51 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v51)
  {
    updated = -12782;
    goto LABEL_119;
  }

  updated = v51(v50);
  if (updated)
  {
    goto LABEL_119;
  }

  *(v13 + 108) = APSGetFBOPropertyInt64();
  if (updated)
  {
    goto LABEL_119;
  }

LABEL_238:
  v21 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (!v21)
  {
    goto LABEL_328;
  }

  if (*(v13 + 40) != 1095778644)
  {
    goto LABEL_258;
  }

  CFDictionaryGetValue(a4, @"EncryptionReadKey");
  CFDictionaryGetValue(a4, @"EncryptionWriteKey");
  APSSettingsGetIntWithDefault();
  updated = APSAudioProtocolDriverReceiverAPATCreate();
  if (updated)
  {
    goto LABEL_263;
  }

  v55 = *(v13 + 152);
  APSAudioProtocolDriverHoseDataAPATProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v57 = *(ProtocolVTable + 16)) == 0)
  {
    v76 = -12788;
LABEL_262:
    updated = v76;
    goto LABEL_263;
  }

  v58 = *(v57 + 8);
  if (!v58)
  {
    v76 = -12782;
    goto LABEL_262;
  }

  updated = v58(v55, &gHoseDataRTPCallbacks, v21);
  if (updated)
  {
    goto LABEL_263;
  }

  v59 = *(v13 + 152);
  APSAudioProtocolDriverHoseDataAPATProtocolGetProtocolID();
  v60 = CMBaseObjectGetProtocolVTable();
  if (!v60 || (v61 = *(v60 + 16)) == 0)
  {
    v94 = -12788;
LABEL_312:
    updated = v94;
    goto LABEL_263;
  }

  v62 = *(v61 + 24);
  if (!v62)
  {
    v94 = -12782;
    goto LABEL_312;
  }

  updated = v62(v59, &gHoseDataRTCPCallbacks, v21);
  if (updated)
  {
    goto LABEL_263;
  }

  v63 = *(v13 + 56);
  v64 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (!v64)
  {
    updated = -12782;
    goto LABEL_263;
  }

  updated = v64(v63, audioSessionBufferedHose_readyToSendBatchCallback, v13);
  if (updated)
  {
LABEL_263:
    APSLogErrorAt();
    goto LABEL_264;
  }

  v65 = *(v13 + 152);
  v66 = *(CMBaseObjectGetVTable() + 16);
  if (!v66)
  {
    v95 = -12788;
LABEL_326:
    updated = v95;
    goto LABEL_263;
  }

  v67 = *(v66 + 24);
  if (!v67)
  {
    v95 = -12782;
    goto LABEL_326;
  }

  updated = v67(v65, &gProtocolDriverCallbacks, v21);
  if (updated)
  {
    goto LABEL_263;
  }

  v68 = FigSimpleMutexCreate();
  *(v13 + 160) = v68;
  if (!v68)
  {
    goto LABEL_328;
  }

  SNPrintF();
  v69 = FigDispatchQueueCreateWithPriority();
  *(v13 + 176) = v69;
  if (!v69)
  {
    goto LABEL_328;
  }

  v70 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v69);
  *(v13 + 184) = v70;
  if (!v70)
  {
    goto LABEL_328;
  }

  IntWithDefault = APSSettingsGetIntWithDefault();
  dispatch_source_set_timer(*(v13 + 184), 0, 1000000 * IntWithDefault, 0xF4240uLL);
  v72 = *(v13 + 184);
  v73 = CFRetain(v21);
  dispatch_set_context(v72, v73);
  dispatch_source_set_event_handler_f(*(v13 + 184), audioSessionBufferedHose_protocolDriverTickTimerFire);
  dispatch_source_set_cancel_handler_f(*(v13 + 184), MEMORY[0x277CBE550]);
  dispatch_resume(*(v13 + 184));
  v36 = allocator;
LABEL_258:
  v74 = FigSimpleMutexCreate();
  *(v13 + 136) = v74;
  if (!v74)
  {
LABEL_328:
    APSLogErrorAt();
    goto LABEL_133;
  }

  if (*(v13 + 40) == 1095778644)
  {
    Null = APSCryptorGetNull();
    cf = CFRetain(Null);
    goto LABEL_278;
  }

  CFDictionaryGetValue(a4, @"EncryptionReadKey");
  updated = APSCryptorChaCha20Poly1305Create();
  if (updated)
  {
    goto LABEL_263;
  }

LABEL_278:
  v78 = CFDictionaryCreateMutable(v36, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v24 = v78;
  if (!v78)
  {
LABEL_330:
    APSLogErrorAt();
    goto LABEL_134;
  }

  v79 = *MEMORY[0x277CBED28];
  CFDictionarySetValue(v78, *MEMORY[0x277CEA138], *MEMORY[0x277CBED28]);
  if (*(v13 + 40) == 1095778644)
  {
    CFDictionarySetValue(v24, *MEMORY[0x277CEA110], v79);
  }

  updated = APSEndpointStreamAudioHoseSBARCreate();
  if (updated)
  {
    goto LABEL_307;
  }

  v80 = *(v13 + 40);
  v81 = *(v13 + 128);
  APSEndpointStreamAudioHoseProtocolGetProtocolID();
  v82 = CMBaseObjectGetProtocolVTable();
  if (v80 != 1095778644)
  {
    if (v82 && (v85 = *(v82 + 16)) != 0)
    {
      v86 = *(v85 + 56);
      if (v86)
      {
        updated = v86(v81, &gHoseRegistrarCopyFromTransportCallbacks, v21);
        if (!updated)
        {
          goto LABEL_292;
        }

LABEL_307:
        APSLogErrorAt();
        goto LABEL_265;
      }

      v93 = -12782;
    }

    else
    {
      v93 = -12788;
    }

    updated = v93;
    goto LABEL_307;
  }

  if (!v82 || (v83 = *(v82 + 16)) == 0)
  {
    v92 = -12788;
LABEL_304:
    updated = v92;
    goto LABEL_307;
  }

  v84 = *(v83 + 56);
  if (!v84)
  {
    v92 = -12782;
    goto LABEL_304;
  }

  updated = v84(v81, &gHoseRegistrarCopyFromProtocolDriverCallbacks, v21);
  if (updated)
  {
    goto LABEL_307;
  }

LABEL_292:
  if (!*(v13 + 56))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    updated = FigNotificationCenterAddWeakListener();
    if (updated)
    {
      goto LABEL_307;
    }
  }

  CMNotificationCenterGetDefaultLocalCenter();
  updated = FigNotificationCenterAddWeakListener();
  if (updated)
  {
    goto LABEL_307;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  updated = FigNotificationCenterAddWeakListener();
  if (updated)
  {
    goto LABEL_307;
  }

  if (!*(v13 + 56))
  {
    updated = audioSessionBufferedHose_updateNetworkThreadPriority(v13);
    if (updated)
    {
      goto LABEL_307;
    }
  }

  SNPrintF();
  v87 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v88 = dispatch_queue_create(label, v87);
  *(v13 + 280) = v88;
  if (!v88)
  {
    goto LABEL_330;
  }

  v89 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v88);
  *(v13 + 288) = v89;
  if (!v89)
  {
    goto LABEL_330;
  }

  dispatch_source_set_timer(v89, 0, 0x3B9ACA00uLL, 0x5F5E100uLL);
  v90 = *(v13 + 288);
  v91 = CFRetain(v21);
  dispatch_set_context(v90, v91);
  dispatch_source_set_event_handler_f(*(v13 + 288), audioSessionBufferedHose_glitchMonitorTimerFire);
  dispatch_source_set_cancel_handler_f(*(v13 + 288), MEMORY[0x277CBE550]);
  dispatch_resume(*(v13 + 288));
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  APSRTCReportingAgentCreate();
  updated = 0;
  if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
  {
    APSAudioFormatDescriptionGetSampleRate();
    LogPrintF();
  }

  *a6 = v13;
LABEL_266:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  return updated;
}

uint64_t audioSessionBufferedHose_updateNetworkThreadPriority(uint64_t a1)
{
  cf = 0;
  if (*(a1 + 56))
  {
    APSLogErrorAt();
    v7 = -72153;
    goto LABEL_16;
  }

  v2 = *(a1 + 128);
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v3)
  {
    v7 = -12782;
LABEL_10:
    APSLogErrorAt();
    goto LABEL_16;
  }

  v7 = v3(v2, *MEMORY[0x277CEA1A0], *MEMORY[0x277CBECE8], &cf);
  if (v7)
  {
    goto LABEL_10;
  }

  v4 = CFGetInt64Ranged();
  if (v7)
  {
    goto LABEL_10;
  }

  FigSimpleMutexLock();
  if (*(a1 + 104) != v4)
  {
    if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
    {
      FigThreadGetMachThreadPriorityValue();
      FigThreadGetMachThreadPriorityValue();
      LogPrintF();
    }

    if (*(a1 + 96) && (v7 = FigThreadSetProperty()) != 0)
    {
      APSLogErrorAt();
    }

    else
    {
      *(a1 + 104) = v4;
    }
  }

  FigSimpleMutexUnlock();
LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

unint64_t audioSessionBufferedHose_handleUnderrunNotification(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  result = mach_absolute_time();
  if (v2)
  {
    v4 = result;
    result = FigCFEqual();
    if (result)
    {
      if (gLogCategory_APReceiverAudioSessionBufferedHose <= 90)
      {
        if (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || (result = _LogCategory_Initialize(), result))
        {
          result = LogPrintF();
        }
      }

      v2[38] = v4;
    }

    else
    {
      result = FigCFEqual();
      if (result && v2[38])
      {
        if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        ++v2[40];
        if (!v2[43])
        {
          v2[43] = v2[38];
        }

        v2[38] = 0;

        return audioSessionBufferedHose_updateGlitchyMinutes(v2);
      }
    }
  }

  return result;
}

unint64_t audioSessionBufferedHose_updateGlitchyMinutes(void *a1)
{
  v2 = mach_absolute_time();
  v3 = v2;
  if (a1[37])
  {
    v4 = a1[42];
  }

  else
  {
    v4 = a1[27];
    a1[37] = v4;
    a1[41] = 1;
    a1[42] = v4;
  }

  result = v2 - v4;
  if (v3 > v4)
  {
    result = UpTicksToSeconds();
    if (result >= 0x3C)
    {
      if (a1[43])
      {
        UpTicksToSecondsF();
        v7 = vcvtpd_u64_f64(v6 / 60.0);
        v8 = a1[41];
        if (v8 - a1[44] < v7)
        {
          v7 = v8 - a1[44];
        }

        a1[39] += v7;
        a1[44] = v8;
      }

      else
      {
        v8 = a1[41];
      }

      a1[42] = v3;
      a1[43] = 0;
      a1[41] = v8 + 1;
      result = UpTicksToSeconds();
      if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50)
      {
        if (gLogCategory_APReceiverAudioSessionBufferedHose != -1)
        {
          return LogPrintF();
        }

        result = _LogCategory_Initialize();
        if (result)
        {
          return LogPrintF();
        }
      }
    }
  }

  return result;
}

void audioSessionBufferedHose_glitchMonitorTimerFire()
{
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v0)
  {
    v1 = v0;
    v2 = *(v0 + 40);
    if (v2)
    {
      audioSessionBufferedHose_updateGlitchyMinutes(v2);
    }

    CFRelease(v1);
  }
}

uint64_t audioSessionBufferedHose_cryptorNoLongerUsedNotification(int a1, uint64_t a2, int a3, int a4, CFTypeRef cf)
{
  v5 = *(a2 + 40);
  value = 0;
  if (cf && (v6 = CFGetTypeID(cf), v6 == CFDictionaryGetTypeID()) && (v7 = FigCFDictionaryGetValue()) != 0)
  {
    v8 = v7;
    FigCFNumberGetUInt64();
    FigSimpleMutexLock();
    if (CFDictionaryGetValueIfPresent(*(v5 + 248), v8, &value))
    {
      if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      CFDictionaryRemoveValue(*(v5 + 248), v8);
    }

    else if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  else
  {
    APSLogErrorAt();
  }

  return FigSimpleMutexUnlock();
}

uint64_t audioSessionBufferedHose_audioFormatChangedNotification(int a1, uint64_t a2, int a3, int a4, CFTypeRef cf)
{
  v5 = *(a2 + 40);
  if (!cf || (v6 = CFGetTypeID(cf), v6 != CFDictionaryGetTypeID()))
  {

    return APSLogErrorAt();
  }

  if (!FigCFDictionaryGetValueIfPresent())
  {
    return APSLogErrorAt();
  }

  v7 = v5[24];
  v5[24] = 0;
  if (v7)
  {
    CFRelease(v7);
  }

  ChannelCount = APSAudioFormatDescriptionGetChannelCount();
  v11 = *v5;
  if (ChannelCount < 3)
  {
    if (APReceiverAudioSessionPlatformSetProperty(v11, v8, @"RASP::PrefersMultiChannel", v9, *MEMORY[0x277CBED10]))
    {
      return APSLogErrorAt();
    }
  }

  else if (APReceiverAudioSessionPlatformSetProperty(v11, v8, @"RASP::PrefersMultiChannel", v9, *MEMORY[0x277CBED28]))
  {
    return APSLogErrorAt();
  }

  result = audioSessionBufferedHose_updatePreferredAudioFormat(v5);
  if (result)
  {
    return APSLogErrorAt();
  }

  if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50)
  {
    if (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || (result = _LogCategory_Initialize(), result))
    {
      if (APSAudioFormatDescriptionGetAudioFormatIndex() != 6
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 10
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 11
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 15
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 18
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 22
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 24
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 2
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 3
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 4
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 5
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 7
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 8
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 9
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 12
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 13
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 14
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 16
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 17
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 45
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 46
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 44
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 38
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 78
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 80
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 82
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 84
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 93
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 47
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 48
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 79
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 81
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 83
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 69
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 94
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 85
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 19
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 20
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 86
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 21
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 40
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 39
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 90
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 23
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 42
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 41
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 25
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 26
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 27
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 28
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 29
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 30
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 31
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 32
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 43
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 49
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 50
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 51
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 52
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 53
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 54
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 55
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 56
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 57
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 58
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 60
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 89
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 61
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 62
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 63
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 33
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 34
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 35
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 87
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 88
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 91
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 64
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 65
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 66
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 67
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 76
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 77
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 68
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 92
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 70
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 71
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 72
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 73
        && APSAudioFormatDescriptionGetAudioFormatIndex() != 74)
      {
        APSAudioFormatDescriptionGetAudioFormatIndex();
      }

      return LogPrintF();
    }
  }

  return result;
}

uint64_t audioSessionBufferedHose_updatePreferredAudioFormat(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v3 = Mutable;
    APSAudioFormatDescriptionGetChannelLayoutTag();
    if (APSAudioFormatDoesAudioChannelLayoutTagHaveHeights() && *(a1 + 200) || (FigCFDictionarySetInt64(), APSAudioFormatDescriptionGetChannelCount() > 7) || APSAudioFormatDescriptionGetChannelCount() >= 6)
    {
      FigCFDictionarySetInt64();
    }

    v6 = APReceiverAudioSessionPlatformSetProperty(*a1, v4, @"RASP::PreferredAudioFormat", v5, v3);
    CFRelease(v3);
    return v6;
  }

  else
  {
    APSLogErrorAt();
    return 4294960568;
  }
}

uint64_t audioSessionBufferedHose_handleBufferingPriorityChangedNotification(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  if (result)
  {
    return audioSessionBufferedHose_updateNetworkThreadPriority(result);
  }

  return result;
}

uint64_t audioSessionBufferedHose_copyAudioDataBBufsCallback(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v4)
  {
    v5 = v4;
    v6 = *(v4 + 40);
    FigSimpleMutexLock();
    *a3 = *(v6 + 144);
    *(v6 + 144) = 0;
    FigSimpleMutexUnlock();
    if (*(v6 + 56))
    {
      CMBaseObject = APTransportConnectionGetCMBaseObject();
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v8)
      {
        v8(CMBaseObject, *MEMORY[0x277CE4F08], *MEMORY[0x277CBED28]);
      }
    }

    else
    {
      audioSessionBufferedHose_resumeNetworkReads(v6);
    }

    CFRelease(v5);
  }

  return 0;
}

uint64_t audioSessionBufferedHose_resumeNetworkReads(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 56))
    {
      goto LABEL_10;
    }

    if (!*(result + 124))
    {
      if (gLogCategory_APReceiverAudioSessionBufferedHose <= 20 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      *(v1 + 124) = 1;
      result = SendSelfConnectedLoopbackMessage();
      if (result)
      {
LABEL_10:

        return APSLogErrorAt();
      }
    }
  }

  return result;
}

uint64_t audioSessionBufferedHose_copyProtocolDriverDataBBufsCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v4)
  {
    v5 = v4;
    v6 = *(*(v4 + 40) + 152);
    v7 = *(CMBaseObjectGetVTable() + 16);
    if (!v7 || (v8 = *(v7 + 32)) == 0 || v8(v6, a3))
    {
      APSLogErrorAt();
    }

    CFRelease(v5);
  }

  return 0;
}

void audioSessionBufferedHose_protocolDriverTickTimerFire()
{
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v0)
  {
    v1 = v0;
    v2 = *(v0 + 40);
    if (v2)
    {
      v3 = *(v2 + 152);
      v4 = *(CMBaseObjectGetVTable() + 16);
      if (!v4 || (v5 = *(v4 + 8)) == 0 || (v6 = *MEMORY[0x277CC0898], v7 = *(MEMORY[0x277CC0898] + 16), v5(v3, &v6, 0)))
      {
        APSLogErrorAt();
      }
    }

    CFRelease(v1);
  }
}

uint64_t audioSessionBufferedHose_protocolDriverReceiverAudioDataAvailableCallback()
{
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v0)
  {
    v1 = v0;
    v2 = *(*(v0 + 40) + 128);
    APSEndpointStreamAudioHoseProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (!ProtocolVTable || (v4 = *(ProtocolVTable + 16)) == 0 || (v5 = *(v4 + 40)) == 0 || v5(v2))
    {
      APSLogErrorAt();
    }

    CFRelease(v1);
  }

  return 0;
}

void audioSessionBufferedHose_readyToSendBatchCallback(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void **), void *a4)
{
  v17 = 0;
  value = 0;
  if (!a3)
  {
    APSLogErrorAt();
    v11 = 0;
    v17 = APSSignalErrorAt();
    if (!a4)
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  if (!a4)
  {
    APSLogErrorAt();
    v11 = 0;
    v17 = APSSignalErrorAt();
    goto LABEL_21;
  }

  FigSimpleMutexLock();
  v7 = *(a1 + 168);
  if (v7 && (Count = CFArrayGetCount(v7), Count >= 1))
  {
    v9 = *MEMORY[0x277CBECE8];
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], Count, MEMORY[0x277CBF128]);
    if (Mutable)
    {
      v11 = Mutable;
      while (CFArrayGetCount(*(a1 + 168)))
      {
        CMBlockBufferGetTypeID();
        TypedValueAtIndex = CFArrayGetTypedValueAtIndex();
        if (v17 || (v17 = a3(v9, &value)) != 0)
        {
          APSLogErrorAt();
          break;
        }

        v13 = value;
        v14 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v14)
        {
          v14(v13, TypedValueAtIndex);
        }

        CFArrayAppendValue(v11, value);
        if (value)
        {
          CFRelease(value);
          value = 0;
        }

        CFArrayRemoveValueAtIndex(*(a1 + 168), 0);
      }
    }

    else
    {
      APSLogErrorAt();
      v11 = 0;
      v17 = APSSignalErrorAt();
    }
  }

  else
  {
    v11 = 0;
  }

  FigSimpleMutexUnlock();
  if (a4)
  {
LABEL_17:
    v15 = 0;
    if (!v17 && v11)
    {
      v15 = CFRetain(v11);
    }

    *a4 = v15;
  }

LABEL_21:
  if (value)
  {
    CFRelease(value);
  }

  if (v11)
  {
    CFRelease(v11);
  }
}

uint64_t audioSessionBufferedHose_receiveDataCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (a3)
  {
    if (CFArrayGetCount(a3) < 1)
    {
      a3 = 0;
      goto LABEL_11;
    }

    v6 = v5[5];
    FigSimpleMutexLock();
    if (!*(v6 + 168))
    {
      *(v6 + 168) = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    }

    FigCFArrayAppendArray();
    FigSimpleMutexUnlock();
    v7 = *(v6 + 56);
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (!v8)
    {
      a3 = 4294954514;
LABEL_10:
      APSLogErrorAt();
      goto LABEL_11;
    }

    a3 = v8(v7);
    if (a3)
    {
      goto LABEL_10;
    }
  }

LABEL_11:
  CFRelease(v5);
  return a3;
}

uint64_t audioSessionBufferedHose_copyRTPDataCallback(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v4)
  {
    v5 = v4;
    v6 = *(v4 + 40);
    FigSimpleMutexLock();
    *a3 = *(v6 + 144);
    *(v6 + 144) = 0;
    FigSimpleMutexUnlock();
    CMBaseObject = APTransportConnectionGetCMBaseObject();
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v8)
    {
      v8(CMBaseObject, *MEMORY[0x277CE4F08], *MEMORY[0x277CBED28]);
    }

    CFRelease(v5);
  }

  return 0;
}

uint64_t audioSessionBufferedHose_handleAudioDataConnectionEvent(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 != 7)
  {
    return 0;
  }

  if (a2)
  {
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v5)
    {
      v6 = v5(a2);
      if (v6)
      {
        v7 = v6;
        if (CMBlockBufferGetDataLength(v6))
        {
          FigSimpleMutexLock();
          v8 = CFArrayEnsureCreatedAndAppend();
          v9 = *(a3 + 144);
          if (v9)
          {
            v10 = CFArrayGetCount(v9) < 128;
          }

          else
          {
            v10 = 1;
          }

          FigSimpleMutexUnlock();
          if (v8)
          {
            goto LABEL_28;
          }

          if (*(a3 + 40) == 1095778644)
          {
            v11 = *(a3 + 152);
            APSAudioProtocolDriverHoseDataAPATProtocolGetProtocolID();
            ProtocolVTable = CMBaseObjectGetProtocolVTable();
            if (!ProtocolVTable || (v13 = *(ProtocolVTable + 16)) == 0)
            {
              v8 = 4294954508;
              goto LABEL_28;
            }

            v14 = *(v13 + 16);
            if (!v14)
            {
              v8 = 4294954514;
              goto LABEL_28;
            }

            v15 = v14(v11);
            if (v15)
            {
              v8 = v15;
LABEL_28:
              APSLogErrorAt();
              goto LABEL_29;
            }
          }

          else
          {
            v16 = *(a3 + 128);
            APSEndpointStreamAudioHoseProtocolGetProtocolID();
            v17 = CMBaseObjectGetProtocolVTable();
            if (!v17 || (v18 = *(v17 + 16)) == 0)
            {
              v8 = 4294954508;
              goto LABEL_28;
            }

            v19 = *(v18 + 40);
            if (!v19)
            {
              v8 = 4294954514;
              goto LABEL_28;
            }

            v20 = v19(v16);
            if (v20)
            {
              v8 = v20;
              goto LABEL_28;
            }
          }

          if (!v10)
          {
            CMBaseObject = APTransportConnectionGetCMBaseObject();
            v22 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v22)
            {
              v22(CMBaseObject, *MEMORY[0x277CE4F08], *MEMORY[0x277CBED10]);
            }
          }
        }

        v8 = 0;
LABEL_29:
        CFRelease(v7);
        return v8;
      }
    }

    v8 = 4294895145;
  }

  else
  {
    v8 = 4294895145;
  }

  APSLogErrorAt();
  return v8;
}

void audioSessionBufferedHose_handleMediaDataControlRequest(uint64_t a1, uint64_t a2, int a3, uint64_t a4, const void *a5, uint64_t a6)
{
  Anchor = 0;
  v11 = *(a6 + 40);
  if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v12 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v14 = Mutable;
    if (a3 > 1835103328)
    {
      if (a3 <= 1937011315)
      {
        if (a3 != 1835103329)
        {
          if (a3 != 1936549491)
          {
            if (a3 == 1936875892)
            {
              *v118 = *MEMORY[0x277CEA038];
              v15 = *v118;
              *&v118[12] = *(MEMORY[0x277CEA038] + 12);
              *v117 = v15;
              *&v117[12] = *&v118[12];
              *v116 = v15;
              *&v116[12] = *&v118[12];
              v113[0] = 0;
              v113[1] = 0;
              v114 = 0;
              if (a5)
              {
                v16 = CFGetTypeID(a5);
                if (v16 == CFDictionaryGetTypeID())
                {
                  Int64Ranged = CFDictionaryGetInt64Ranged();
                  v108 = a1;
                  if (Int64Ranged != 1)
                  {
                    v18 = a2;
                    v19 = a4;
                    v22 = 0;
                    Int64 = 0;
                    v20 = 0;
                    v23 = 0;
LABEL_86:
                    *v115 = *v118;
                    *&v115[12] = *&v118[12];
                    v112[0] = *v117;
                    *(v112 + 12) = *&v117[12];
                    *&v109 = v22;
                    *(&v109 + 1) = Int64;
                    v110 = v20;
                    v111 = v23;
                    Anchor = APReceiverAudioSessionBufferedHoseSetRateAndAnchorTime(v11, Int64Ranged, v115, v112, &v109, v116, v113);
                    if (Anchor)
                    {
                      CFDictionarySetInt64();
                      a4 = v19;
                      a2 = v18;
                    }

                    else
                    {
                      a4 = v19;
                      a2 = v18;
                      if (Int64Ranged == 1 && (v114 & 0x100000000) == 0)
                      {
                        CFDictionarySetInt64();
                        CFDictionarySetInt64();
                        CFDictionarySetInt64();
                        CFDictionarySetInt64();
                      }
                    }

                    *v115 = *v116;
                    *&v115[12] = *&v116[12];
                    a1 = v108;
                    if (APSAudioTransportTimeIsValid())
                    {
                      *v115 = *v116;
                      *&v115[12] = *&v116[12];
                      APSAudioTransportTimeUtilsEncodeToRequestResponseDictionary();
                    }

                    if (!Anchor)
                    {
                      goto LABEL_204;
                    }

                    goto LABEL_115;
                  }

                  Anchor = APSAudioTransportTimeUtilsDecodeFromRequestResponseDictionary();
                  if (!Anchor)
                  {
                    *v115 = *v118;
                    *&v115[12] = *&v118[12];
                    if (!APSAudioTransportTimeIsValid())
                    {
                      APSLogErrorAt();
                      Anchor = -72151;
LABEL_251:
                      a1 = v108;
                      goto LABEL_204;
                    }

                    v18 = a2;
                    Anchor = APSAudioTransportTimeUtilsDecodeFromRequestResponseDictionary();
                    if (!Anchor)
                    {
                      v19 = a4;
                      v20 = CFDictionaryGetInt64Ranged();
                      Int64 = CFDictionaryGetInt64();
                      v22 = CFDictionaryGetInt64();
                      v23 = CFDictionaryGetInt64Ranged();
                      goto LABEL_86;
                    }

LABEL_250:
                    APSLogErrorAt();
                    a2 = v18;
                    goto LABEL_251;
                  }

                  goto LABEL_115;
                }
              }

              goto LABEL_213;
            }

LABEL_119:
            v62 = -6714;
LABEL_120:
            Anchor = v62;
            goto LABEL_204;
          }

          v45 = CFDictionaryGetInt64();
          if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          v59 = *(v11 + 128);
          if (v45)
          {
            v60 = MEMORY[0x277CBED28];
          }

          else
          {
            v60 = MEMORY[0x277CBED10];
          }

          v61 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (!v61)
          {
            Anchor = -12782;
            goto LABEL_115;
          }

          Anchor = v61(v59, *MEMORY[0x277CEA1A8], *v60);
          if (Anchor)
          {
            goto LABEL_115;
          }

LABEL_204:
          APMediaDataControlServerSendResponse(a1, a2, a4, v14, Anchor);
          CFRelease(v14);
          return;
        }

        if (a5)
        {
          v52 = CFGetTypeID(a5);
          if (v52 == CFDictionaryGetTypeID())
          {
            v53 = CFDictionaryGetInt64();
            v54 = v53 != 0;
            if (!v11)
            {
              goto LABEL_249;
            }

            if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            if (*(v11 + 200) != v54)
            {
              *(v11 + 200) = v54;
              if (audioSessionBufferedHose_updatePreferredAudioFormat(v11))
              {
LABEL_249:
                APSLogErrorAt();
              }
            }

            goto LABEL_119;
          }
        }

        goto LABEL_213;
      }

      if (a3 == 1937011316)
      {
        *v118 = *MEMORY[0x277CEA038];
        v55 = *v118;
        *&v118[12] = *(MEMORY[0x277CEA038] + 12);
        *v117 = v55;
        *&v117[12] = *&v118[12];
        memset(v115, 0, 24);
        if (a5)
        {
          v56 = CFGetTypeID(a5);
          if (v56 == CFDictionaryGetTypeID())
          {
            v57 = CFDictionaryGetInt64Ranged();
            if (v57 == 1)
            {
              Anchor = APSAudioTransportTimeUtilsDecodeFromRequestResponseDictionary();
              if (Anchor)
              {
                goto LABEL_115;
              }

              *v116 = *v118;
              *&v116[12] = *&v118[12];
              if (!APSAudioTransportTimeIsValid())
              {
                APSLogErrorAt();
                v62 = -72151;
                goto LABEL_120;
              }

              v57 = 1;
            }

            *v116 = *v118;
            *&v116[12] = *&v118[12];
            Anchor = APReceiverAudioSessionBufferedHoseSetRate(v11, v57, v116, v117, v115);
            if (!Anchor)
            {
              *v116 = *v117;
              *&v116[12] = *&v117[12];
              APSAudioTransportTimeUtilsEncodeToRequestResponseDictionary();
              CFDictionarySetInt64();
              CFDictionarySetInt64();
              CFDictionarySetInt64();
            }

            CFDictionarySetInt64();
            if (!Anchor)
            {
              goto LABEL_204;
            }

            goto LABEL_115;
          }
        }

        goto LABEL_213;
      }

      if (a3 != 1970299755)
      {
        if (a3 != 1970303090)
        {
          goto LABEL_119;
        }

        if (!a5)
        {
          goto LABEL_213;
        }

        v29 = CFGetTypeID(a5);
        if (v29 != CFDictionaryGetTypeID())
        {
          goto LABEL_213;
        }

        v108 = a1;
        v18 = a2;
        CFDataGetTypeID();
        TypedValue = CFDictionaryGetTypedValue();
        Value = CFDictionaryGetValue(a5, @"protocolVersionList");
        if (!Value)
        {
          goto LABEL_250;
        }

        v32 = -72152;
        if (v11 && *(v11 + 128))
        {
          if (TypedValue)
          {
            v33 = Value;
            v34 = a4;
            if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            *v118 = 0;
            v72 = CFDictionaryCreateMutable(v12, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            if (v72)
            {
              v73 = v72;
              CFDictionarySetValue(v72, *MEMORY[0x277CD61A8], *MEMORY[0x277CBED28]);
              CFDictionarySetValue(v73, *MEMORY[0x277CD61B8], *MEMORY[0x277CBED10]);
              CFDictionarySetValue(v73, *MEMORY[0x277CD61A0], TypedValue);
              CFDictionarySetValue(v73, *MEMORY[0x277CD61B0], v33);
              v74 = FigCPEProtectorRemoteCreateForScheme();
              if (v74)
              {
                APSLogErrorAt();
                v75 = 0;
              }

              else
              {
                v75 = *v118;
                *v118 = 0;
              }

              a2 = v18;
              CFRelease(v73);
              if (!v74)
              {
                a4 = v34;
                v76 = *(v11 + 240);
                *(v11 + 240) = v75;
                a1 = v108;
                if (v76)
                {
                  CFRelease(v76);
                }

                if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF();
                }

                v74 = 0;
LABEL_167:
                Anchor = v74;
                if (!v74)
                {
                  goto LABEL_204;
                }

                goto LABEL_168;
              }
            }

            else
            {
              APSLogErrorAt();
              v74 = -72150;
            }

            APSLogErrorAt();
            a4 = v34;
            a2 = v18;
            a1 = v108;
            goto LABEL_167;
          }

          v32 = -72151;
        }

        APSLogErrorAt();
        Anchor = v32;
        a1 = v108;
LABEL_168:
        CFDictionarySetInt64();
        if (!Anchor)
        {
          goto LABEL_204;
        }

        goto LABEL_115;
      }

      if (!a5)
      {
        goto LABEL_213;
      }

      v46 = CFGetTypeID(a5);
      if (v46 != CFDictionaryGetTypeID())
      {
        goto LABEL_213;
      }

      v47 = CFDictionaryGetInt64();
      CFDataGetTypeID();
      v48 = CFDictionaryGetTypedValue();
      memset(v118, 0, 24);
      v107 = a2;
      if (v11)
      {
        if (*(v11 + 128))
        {
          if (!v48)
          {
            APSLogErrorAt();
            v79 = 0;
            v77 = 0;
            v81 = 0;
            v92 = -72151;
            goto LABEL_194;
          }

          if (!*(v11 + 256))
          {
            APSLogErrorAt();
            v79 = 0;
            v77 = 0;
            v81 = 0;
            v92 = -72153;
            goto LABEL_194;
          }

          if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          v105 = v47;
          v77 = CFNumberCreateInt64();
          if (!v77)
          {
            APSLogErrorAt();
            v79 = 0;
            v81 = 0;
            v92 = -72150;
            goto LABEL_194;
          }

          FigSimpleMutexLock();
          v78 = CFDictionaryGetValue(*(v11 + 248), v77);
          v104 = v48;
          if (v78)
          {
            v79 = CFRetain(v78);
            FigSimpleMutexUnlock();
            if (v79)
            {
              v80 = CFDictionaryCreateMutable(v12, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              v81 = v80;
              if (v80)
              {
                CFDictionarySetValue(v80, *MEMORY[0x277CC1A80], *MEMORY[0x277CBED28]);
                goto LABEL_181;
              }

              APSLogErrorAt();
              v92 = -6728;
LABEL_194:
              if (*&v118[16])
              {
                dispatch_release(*&v118[16]);
              }

              if (v81)
              {
                CFRelease(v81);
              }

              if (v77)
              {
                CFRelease(v77);
              }

              if (v79)
              {
                CFRelease(v79);
              }

              Anchor = v92;
              a2 = v107;
              if (!v92)
              {
                goto LABEL_204;
              }

              CFDictionarySetInt64();
              if (!Anchor)
              {
                goto LABEL_204;
              }

              goto LABEL_115;
            }
          }

          else
          {
            FigSimpleMutexUnlock();
          }

          key = v77;
          v82 = a4;
          *v117 = 0;
          if (*(v11 + 240))
          {
            v83 = CFDictionaryCreateMutable(v12, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            if (v83)
            {
              v84 = v83;
              CFDictionarySetValue(v83, *MEMORY[0x277CD6190], *MEMORY[0x277CD6170]);
              CFDictionarySetValue(v84, *MEMORY[0x277CD6178], @"lGxB4ky");
              CFDictionarySetValue(v84, *MEMORY[0x277CD6198], *MEMORY[0x277CBED10]);
              CFDictionarySetValue(v84, *MEMORY[0x277CD6188], *MEMORY[0x277CD6168]);
              Copy = CFDictionaryCreateCopy(v12, v84);
              if (Copy)
              {
                v86 = Copy;
                FigCFDictionarySetValue();
                v87 = *(v11 + 240);
                v88 = *(*(CMBaseObjectGetVTable() + 16) + 104);
                if (v88)
                {
                  v89 = v88(v87, v12, 1, v84, v117);
                  if (v89)
                  {
                    v92 = v89;
                  }

                  else
                  {
                    v90 = *v117;
                    v91 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                    if (v91)
                    {
                      v92 = v91(v90, *MEMORY[0x277CC0978], @"P5h3ZgzLxs");
                      if (!v92)
                      {
                        v79 = *v117;
                        *v117 = 0;
                        goto LABEL_173;
                      }
                    }

                    else
                    {
                      v92 = -12782;
                    }
                  }
                }

                else
                {
                  v92 = -12782;
                }

                APSLogErrorAt();
                v79 = 0;
LABEL_173:
                CFRelease(v84);
                CFRelease(v86);
                if (*v117)
                {
                  CFRelease(*v117);
                }

                if (!v92)
                {
                  a4 = v82;
                  if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF();
                  }

                  v77 = key;
                  CFDictionarySetValue(*(v11 + 248), key, v79);
                  v81 = 0;
LABEL_181:
                  v93 = *(v11 + 256);
                  v94 = *(CMBaseObjectGetVTable() + 16);
                  if (*v94 >= 8uLL && (v95 = v94[28]) != 0)
                  {
                    key = v77;
                    v82 = a4;
                    v96 = v95(v79, v93, v104, v81);
                    if (!v96)
                    {
                      v97 = dispatch_semaphore_create(0);
                      *&v118[16] = v97;
                      if (!v97)
                      {
                        APSLogErrorAt();
                        v92 = -6728;
                        goto LABEL_207;
                      }

                      v98 = v97;
                      v99 = *(v11 + 128);
                      APSEndpointStreamAudioHoseProtocolGetProtocolID();
                      ProtocolVTable = CMBaseObjectGetProtocolVTable();
                      if (ProtocolVTable && (v101 = *(ProtocolVTable + 16)) != 0)
                      {
                        v102 = *(v101 + 96);
                        if (v102)
                        {
                          v103 = v102(v99, v105, v79, audioSessionBufferedHose_updatePKDCryptorEncryptionKeyCompletionHandler, v118);
                          if (!v103)
                          {
                            dispatch_semaphore_wait(*&v118[16], 0xFFFFFFFFFFFFFFFFLL);
                            if (!*v118)
                            {
                              a4 = v82;
                              if (*&v118[8] == v105)
                              {
                                v92 = 0;
                              }

                              else
                              {
                                APSLogErrorAt();
                                v92 = -72153;
                              }

                              goto LABEL_208;
                            }

                            APSLogErrorAt();
                            v92 = *v118;
                            if (gLogCategory_APReceiverAudioSessionBufferedHose <= 90 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
                            {
                              LogPrintF();
                            }

LABEL_207:
                            a4 = v82;
LABEL_208:
                            v77 = key;
                            goto LABEL_194;
                          }

                          v92 = v103;
                        }

                        else
                        {
                          v92 = -12782;
                          *v118 = -12782;
                          *&v118[8] = v105;
                          dispatch_semaphore_signal(v98);
                        }
                      }

                      else
                      {
                        v92 = -12788;
                      }

                      APSLogErrorAt();
                      goto LABEL_207;
                    }

                    v92 = v96;
                    v77 = key;
                  }

                  else
                  {
                    v92 = -12782;
                  }

                  APSLogErrorAt();
                  goto LABEL_194;
                }

LABEL_244:
                APSLogErrorAt();
                v81 = 0;
                goto LABEL_207;
              }

              APSLogErrorAt();
              CFRelease(v84);
            }

            else
            {
              APSLogErrorAt();
            }

            v92 = -72150;
          }

          else
          {
            v92 = -72152;
            APSLogErrorAt();
          }

          v79 = 0;
          goto LABEL_244;
        }

        v92 = -72152;
      }

      else
      {
        v92 = -72152;
      }

      APSLogErrorAt();
      v79 = 0;
      v77 = 0;
      v81 = 0;
      goto LABEL_194;
    }

    if (a3 <= 1634760293)
    {
      if (a3 == 1634562925)
      {
        CFStringGetTypeID();
        v37 = CFDictionaryGetTypedValue();
        Anchor = APReceiverAudioSessionPlatformSetProperty(*v11, v38, @"RASP::AudioMode", v39, v37);
        if (Anchor)
        {
          goto LABEL_115;
        }

        goto LABEL_204;
      }

      if (a3 != 1634624360)
      {
        goto LABEL_119;
      }

      *v118 = *MEMORY[0x277CEA038];
      *&v118[12] = *(MEMORY[0x277CEA038] + 12);
      memset(v116, 0, 24);
      if (a5)
      {
        v35 = CFGetTypeID(a5);
        if (v35 == CFDictionaryGetTypeID())
        {
          v36 = CFDictionaryGetInt64Ranged();
          Anchor = APReceiverAudioSessionBufferedHoseGetAnchor(v11, v36, v118, v116);
          if (!Anchor)
          {
            *v117 = *v118;
            *&v117[12] = *&v118[12];
            Anchor = APSAudioTransportTimeUtilsEncodeToRequestResponseDictionary();
            if (Anchor)
            {
              goto LABEL_115;
            }

            CFDictionarySetInt64();
            CFDictionarySetInt64();
            CFDictionarySetInt64();
          }

          CFDictionarySetInt64();
          if (Anchor)
          {
LABEL_115:
            APSLogErrorAt();
            goto LABEL_204;
          }

          goto LABEL_204;
        }
      }

LABEL_213:
      APSLogErrorAt();
      v62 = -6756;
      goto LABEL_120;
    }

    if (a3 == 1634760294)
    {
      *v118 = *MEMORY[0x277CC08F0];
      *&v118[16] = *(MEMORY[0x277CC08F0] + 16);
      if (a5)
      {
        v49 = CFGetTypeID(a5);
        if (v49 == CFDictionaryGetTypeID())
        {
          v50 = CFDictionaryGetInt64();
          CFDictionaryGetDouble();
          CMTimeMakeWithSeconds(v118, v51, 1000);
          *v117 = *v118;
          *&v117[16] = *&v118[16];
          Anchor = APReceiverAudioSessionBufferedHoseApplyVolumeFade(v11, v50, v117);
          if (Anchor)
          {
            goto LABEL_115;
          }

          goto LABEL_204;
        }
      }

      goto LABEL_213;
    }

    if (a3 != 1718839394)
    {
      if (a3 != 1835100003)
      {
        goto LABEL_119;
      }

      if (!a5)
      {
        goto LABEL_213;
      }

      v24 = CFGetTypeID(a5);
      if (v24 != CFDictionaryGetTypeID())
      {
        goto LABEL_213;
      }

      v25 = CFDictionaryGetInt64();
      CFDataGetTypeID();
      v26 = CFDictionaryGetTypedValue();
      memset(v118, 0, 24);
      if (v11)
      {
        if (*(v11 + 128))
        {
          if (v26)
          {
            v27 = a1;
            v28 = a4;
            if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            v63 = a2;
            v64 = dispatch_semaphore_create(0);
            *&v118[16] = v64;
            if (!v64)
            {
              APSLogErrorAt();
              v71 = -6728;
              goto LABEL_132;
            }

            v65 = v64;
            v66 = *(v11 + 128);
            APSEndpointStreamAudioHoseProtocolGetProtocolID();
            v67 = CMBaseObjectGetProtocolVTable();
            if (v67 && (v68 = *(v67 + 16)) != 0)
            {
              v69 = *(v68 + 104);
              if (v69)
              {
                v70 = v69(v66, v25, v26, audioSessionBufferedHose_setMagicCookieCompletionHandler, v118);
                if (!v70)
                {
                  dispatch_semaphore_wait(*&v118[16], 0xFFFFFFFFFFFFFFFFLL);
                  if (!*v118)
                  {
                    a4 = v28;
                    a2 = v63;
                    if (*&v118[8] == v25)
                    {
                      v71 = 0;
                    }

                    else
                    {
                      APSLogErrorAt();
                      v71 = -72153;
                    }

                    goto LABEL_133;
                  }

                  APSLogErrorAt();
                  v71 = *v118;
                  if (gLogCategory_APReceiverAudioSessionBufferedHose <= 90 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF();
                  }

LABEL_132:
                  a4 = v28;
                  a2 = v63;
LABEL_133:
                  a1 = v27;
                  goto LABEL_134;
                }

                v71 = v70;
              }

              else
              {
                v71 = -12782;
                *v118 = -12782;
                *&v118[8] = v25;
                dispatch_semaphore_signal(v65);
              }
            }

            else
            {
              v71 = -12788;
            }

            APSLogErrorAt();
            goto LABEL_132;
          }

          APSLogErrorAt();
          v71 = -72151;
LABEL_134:
          if (*&v118[16])
          {
            dispatch_release(*&v118[16]);
          }

          Anchor = v71;
          if (!v71)
          {
            goto LABEL_204;
          }

          CFDictionarySetInt64();
          if (!Anchor)
          {
            goto LABEL_204;
          }

          goto LABEL_115;
        }

        v71 = -72152;
      }

      else
      {
        v71 = -72152;
      }

      APSLogErrorAt();
      goto LABEL_134;
    }

    *v118 = *MEMORY[0x277CEA038];
    v40 = *v118;
    *&v118[12] = *(MEMORY[0x277CEA038] + 12);
    *v117 = v40;
    *&v117[12] = *&v118[12];
    if (!a5)
    {
      goto LABEL_213;
    }

    v41 = CFGetTypeID(a5);
    if (v41 != CFDictionaryGetTypeID())
    {
      goto LABEL_213;
    }

    if (CFDictionaryContainsKey(a5, @"flushFromSeq"))
    {
      v42 = CFDictionaryGetInt64Ranged();
      v43 = a2;
      Anchor = APSAudioTransportTimeUtilsDecodeFromRequestResponseDictionary();
      if (Anchor)
      {
        goto LABEL_237;
      }

      *v116 = *v118;
      *&v116[12] = *&v118[12];
      IsValid = APSAudioTransportTimeIsValid();
    }

    else
    {
      v43 = a2;
      v42 = 0;
      IsValid = 0;
    }

    Anchor = APSAudioTransportTimeUtilsDecodeFromRequestResponseDictionary();
    if (!Anchor)
    {
      *v116 = *v117;
      *&v116[12] = *&v117[12];
      if (APSAudioTransportTimeIsValid())
      {
        v58 = CFDictionaryGetInt64Ranged();
        *v116 = *v118;
        *&v116[12] = *&v118[12];
        *v115 = *v117;
        *&v115[12] = *&v117[12];
        Anchor = APReceiverAudioSessionBufferedHoseFlushAudio(v11, IsValid, v116, v42, v115, v58, 0);
        a2 = v43;
        if (Anchor)
        {
          goto LABEL_115;
        }

        goto LABEL_204;
      }

      APSLogErrorAt();
      Anchor = -72151;
LABEL_238:
      a2 = v43;
      goto LABEL_204;
    }

LABEL_237:
    APSLogErrorAt();
    goto LABEL_238;
  }

  APSLogErrorAt();

  APMediaDataControlServerSendResponse(a1, a2, a4, 0, -6728);
}

uint64_t APReceiverAudioSessionBufferedHoseFlushAudio(uint64_t a1, int a2, _OWORD *a3, int a4, _OWORD *a5, int a6, _OWORD *a7)
{
  LODWORD(v8) = a6;
  LODWORD(v10) = a4;
  v38 = 0;
  v14 = dispatch_semaphore_create(0);
  dsema = v14;
  if (!v14)
  {
    APSLogErrorAt();
    return 4294960568;
  }

  v15 = *(a1 + 40);
  if (v15 == 1095778644)
  {
    v8 = (v8 << 8);
  }

  else
  {
    v8 = v8;
  }

  if (v15 == 1095778644)
  {
    v10 = (v10 << 8);
  }

  else
  {
    v10 = v10;
  }

  if (!a2)
  {
    v23 = *(a1 + 280);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __APReceiverAudioSessionBufferedHoseFlushAudio_block_invoke;
    block[3] = &__block_descriptor_tmp_5321;
    block[4] = a1;
    dispatch_sync(v23, block);
    v24 = *(a1 + 128);
    v40[0] = *a5;
    *(v40 + 12) = *(a5 + 12);
    APSEndpointStreamAudioHoseProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (!ProtocolVTable || (v26 = *(ProtocolVTable + 16)) == 0)
    {
      v22 = 4294954508;
      goto LABEL_30;
    }

    v27 = *(v26 + 24);
    if (!v27)
    {
      v22 = 4294954514;
      LODWORD(v38) = -12782;
      dispatch_semaphore_signal(dsema);
      goto LABEL_30;
    }

    v41[0] = v40[0];
    *(v41 + 12) = *(v40 + 12);
    v28 = v27(v24, v8, v41, audioSessionBufferedHose_flushCompletionHandler, &v38);
    if (v28)
    {
      v22 = v28;
      goto LABEL_30;
    }

    goto LABEL_19;
  }

  v16 = v14;
  v17 = *(a1 + 128);
  v37[0] = *a3;
  *(v37 + 12) = *(a3 + 12);
  v36[0] = *a5;
  *(v36 + 12) = *(a5 + 12);
  APSEndpointStreamAudioHoseProtocolGetProtocolID();
  v18 = CMBaseObjectGetProtocolVTable();
  if (!v18 || (v19 = *(v18 + 16)) == 0)
  {
    v22 = 4294954508;
    goto LABEL_30;
  }

  v20 = *(v19 + 32);
  if (!v20)
  {
    v22 = 4294954514;
    LODWORD(v38) = -12782;
    dispatch_semaphore_signal(v16);
    goto LABEL_30;
  }

  v41[0] = v37[0];
  *(v41 + 12) = *(v37 + 12);
  v40[0] = v36[0];
  *(v40 + 12) = *(v36 + 12);
  v21 = v20(v17, v10, v41, v8, v40, audioSessionBufferedHose_flushWithinSampleRangeCompletionHandler, &v38);
  if (!v21)
  {
LABEL_19:
    dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
    if (a7)
    {
      v29 = MEMORY[0x277CEA038];
      *a7 = *MEMORY[0x277CEA038];
      *(a7 + 12) = *(v29 + 12);
    }

    if (!a2 && !v38)
    {
      *(a1 + 204) = 0;
    }

    v30 = *(a1 + 128);
    APSEndpointStreamAudioHoseProtocolGetProtocolID();
    v31 = CMBaseObjectGetProtocolVTable();
    if (v31)
    {
      v32 = *(v31 + 16);
      if (v32)
      {
        v33 = *(v32 + 40);
        if (v33)
        {
          v33(v30);
        }
      }
    }

    v22 = 0;
    goto LABEL_31;
  }

  v22 = v21;
LABEL_30:
  APSLogErrorAt();
LABEL_31:
  if (dsema)
  {
    dispatch_release(dsema);
  }

  return v22;
}

uint64_t APReceiverAudioSessionBufferedHoseGetAnchor(uint64_t a1, int a2, _OWORD *a3, uint64_t a4)
{
  Value = malloc_type_calloc(1uLL, 0x40uLL, 0x1020040D3BB1902uLL);
  if (!a1)
  {
    APSLogErrorAt();
    v21 = 4294895144;
    goto LABEL_39;
  }

  if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (a2 != 1)
  {
    APSLogErrorAt();
    if (gLogCategory_APReceiverAudioSessionBufferedHose <= 90 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v21 = 4294960591;
LABEL_39:
    if (!Value)
    {
      goto LABEL_50;
    }

    goto LABEL_40;
  }

  v9 = dispatch_semaphore_create(0);
  *(Value + 7) = v9;
  if (!v9)
  {
    APSLogErrorAt();
    v21 = 4294960568;
LABEL_40:
    audioSessionBufferedHose_finalizeContextWrapper(Value);
    goto LABEL_20;
  }

  v10 = APSWrapperCreate();
  if (v10)
  {
    v21 = v10;
    APSLogErrorAt();
    goto LABEL_40;
  }

  v11 = *(a1 + 128);
  APSEndpointStreamAudioHoseProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v15 = *(ProtocolVTable + 16), v13 = ProtocolVTable + 16, (v14 = v15) == 0))
  {
    v21 = 4294954508;
LABEL_19:
    APSLogErrorAt();
LABEL_20:
    v20 = 0;
    Value = 0;
    goto LABEL_21;
  }

  v16 = *(v14 + 88);
  if (!v16)
  {
    v21 = 4294954514;
    audioSessionBufferedHose_getAnchorCompletionHandler(v13, MEMORY[0x277CEA038], MEMORY[0x277CEA280], -12782, 0);
    goto LABEL_19;
  }

  v17 = v16(v11, 1, audioSessionBufferedHose_getAnchorCompletionHandler, 0);
  if (v17)
  {
    v21 = v17;
    goto LABEL_19;
  }

  Value = APSWrapperGetValue();
  v18 = *(Value + 7);
  v19 = dispatch_time(0, 5000000000);
  if (!dispatch_semaphore_wait(v18, v19))
  {
    if (!*Value)
    {
      v20 = APSAudioTransportTimeCopyDebugDesc();
      if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v21 = 0;
      goto LABEL_21;
    }

    APSLogErrorAt();
    v21 = *Value;
    if (gLogCategory_APReceiverAudioSessionBufferedHose <= 90 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

LABEL_50:
    v20 = 0;
    goto LABEL_21;
  }

  APSLogErrorAt();
  if (gLogCategory_APReceiverAudioSessionBufferedHose <= 90 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v20 = 0;
  v21 = 4294960574;
LABEL_21:
  if (a3)
  {
    v22 = *(Value + 1);
    *(a3 + 12) = *(Value + 1);
    *a3 = v22;
  }

  if (a4)
  {
    v23 = *(Value + 2);
    *(a4 + 16) = *(Value + 6);
    *a4 = v23;
  }

  if (v20)
  {
    CFRelease(v20);
  }

  return v21;
}

uint64_t APReceiverAudioSessionBufferedHoseSetRate(uint64_t a1, int a2, _OWORD *a3, _OWORD *a4, uint64_t a5)
{
  *v29 = 0;
  v26 = *MEMORY[0x277CEA038];
  *&v29[4] = *MEMORY[0x277CEA038];
  v25 = *(MEMORY[0x277CEA038] + 12);
  *&v29[16] = v25;
  v30 = 0u;
  *dsema = 0u;
  v32[0] = *a3;
  *(v32 + 12) = *(a3 + 12);
  v10 = APSAudioTransportTimeCopyDebugDesc();
  if (a1)
  {
    if (*(a1 + 8))
    {
      v11 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v11)
      {
        v13 = v11;
        if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        if (a2 != 1)
        {
          APSLogErrorAt();
          if (gLogCategory_APReceiverAudioSessionBufferedHose <= 90 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          v22 = 0;
          v23 = 4294960591;
          goto LABEL_30;
        }

        if (*(v13 + 752))
        {
          if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          v22 = 0;
          v23 = 4294960587;
          goto LABEL_30;
        }

        if (*(a1 + 48))
        {
          v14 = *(v13 + 16);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 0x40000000;
          block[2] = __APReceiverAudioSessionBufferedHoseSetRate_block_invoke;
          block[3] = &__block_descriptor_tmp_143_5296;
          block[4] = v13;
          block[5] = a1;
          dispatch_sync(v14, block);
        }

        else
        {
          AirPlayReceiverSessionControl(v13, v12, @"handleMediaAudioResumedForSession", *(a1 + 32), 0, 0);
        }

        v15 = dispatch_semaphore_create(0);
        dsema[1] = v15;
        if (!v15)
        {
          APSLogErrorAt();
          v22 = 0;
          v23 = 4294960568;
          goto LABEL_30;
        }

        v16 = v15;
        v17 = *(a1 + 128);
        *v27 = *a3;
        *&v27[12] = *(a3 + 12);
        APSEndpointStreamAudioHoseProtocolGetProtocolID();
        ProtocolVTable = CMBaseObjectGetProtocolVTable();
        if (ProtocolVTable && (v19 = *(ProtocolVTable + 16)) != 0)
        {
          v20 = *(v19 + 80);
          if (v20)
          {
            v32[0] = *v27;
            *(v32 + 12) = *&v27[12];
            v21 = v20(v17, 1, v32, audioSessionBufferedHose_setRateCompletionHandler, v29);
            if (!v21)
            {
              dispatch_semaphore_wait(dsema[1], 0xFFFFFFFFFFFFFFFFLL);
              if (!*v29)
              {
                *(a1 + 204) = 1;
                v32[0] = *&v29[4];
                *(v32 + 12) = *&v29[16];
                v22 = APSAudioTransportTimeCopyDebugDesc();
                if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF();
                }

                v23 = 0;
                goto LABEL_30;
              }

              APSLogErrorAt();
              v23 = *v29;
              if (gLogCategory_APReceiverAudioSessionBufferedHose <= 90 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }

              goto LABEL_27;
            }

            v23 = v21;
          }

          else
          {
            v23 = 4294954514;
            *v29 = -12782;
            *&v29[4] = v26;
            *&v29[16] = v25;
            v30 = *MEMORY[0x277CEA280];
            dsema[0] = *(MEMORY[0x277CEA280] + 16);
            dispatch_semaphore_signal(v16);
          }
        }

        else
        {
          v23 = 4294954508;
        }

        APSLogErrorAt();
LABEL_27:
        v22 = 0;
LABEL_30:
        CFRelease(v13);
        goto LABEL_31;
      }

      v23 = 4294895143;
    }

    else
    {
      v23 = 4294895143;
    }

    APSLogErrorAt();
    v22 = 0;
  }

  else
  {
    APSLogErrorAt();
    v22 = 0;
    v23 = 4294895144;
  }

LABEL_31:
  if (v10)
  {
    CFRelease(v10);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (a4)
  {
    *a4 = *&v29[4];
    *(a4 + 12) = *&v29[16];
  }

  if (a5)
  {
    *a5 = v30;
    *(a5 + 16) = dsema[0];
  }

  if (dsema[1])
  {
    dispatch_release(dsema[1]);
  }

  return v23;
}

uint64_t APReceiverAudioSessionBufferedHoseSetRateAndAnchorTime(uint64_t a1, uint64_t a2, _OWORD *a3, _OWORD *a4, __int128 *a5, _OWORD *a6, uint64_t a7)
{
  *v48 = *a3;
  *&v48[12] = *(a3 + 12);
  v13 = APSAudioTransportTimeCopyDebugDesc();
  *v48 = *a4;
  *&v48[12] = *(a4 + 12);
  v14 = APSAudioTransportTimeCopyDebugDesc();
  *v48 = 0;
  v15 = *(MEMORY[0x277CEA038] + 12);
  v16 = *MEMORY[0x277CEA038];
  v17 = *MEMORY[0x277CEA280];
  *&v48[16] = v15;
  v49 = v17;
  *&v48[4] = v16;
  v18 = *(MEMORY[0x277CEA280] + 16);
  v50 = v18;
  dsema = 0;
  if (a1)
  {
    if (*(a1 + 8))
    {
      v35 = v18;
      v36 = v17;
      v37 = v16;
      v38 = v15;
      v19 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v19)
      {
        v21 = v19;
        if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
        {
          APSGetFBOPropertyInt64();
          LogPrintF();
        }

        if (a2 >= 2)
        {
          APSLogErrorAt();
          if (gLogCategory_APReceiverAudioSessionBufferedHose > 90)
          {
            v32 = 0;
            v33 = 4294960591;
          }

          else
          {
            if (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize())
            {
              LogPrintF();
            }

            v32 = 0;
            v33 = 4294960591;
          }

          goto LABEL_34;
        }

        if (a2 == 1)
        {
          if (*(v21 + 752))
          {
            if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            v32 = 0;
            v33 = 4294960587;
            goto LABEL_34;
          }

          v39 = v13;
          v40 = a6;
          if (!*(a1 + 48))
          {
            AirPlayReceiverSessionControl(v21, v20, @"handleMediaAudioResumedForSession", *(a1 + 32), 0, 0);
LABEL_16:
            v24 = dispatch_semaphore_create(0);
            dsema = v24;
            if (!v24)
            {
              APSLogErrorAt();
              v32 = 0;
              v33 = 4294960568;
              v13 = v39;
              a6 = v40;
              goto LABEL_34;
            }

            v25 = v24;
            v26 = a7;
            v27 = *(a1 + 128);
            *v45 = *a3;
            *&v45[12] = *(a3 + 12);
            v43 = *a5;
            v44 = *(a5 + 2);
            *v42 = *a4;
            *&v42[12] = *(a4 + 12);
            APSEndpointStreamAudioHoseProtocolGetProtocolID();
            ProtocolVTable = CMBaseObjectGetProtocolVTable();
            if (ProtocolVTable && (v29 = *(ProtocolVTable + 16)) != 0)
            {
              v30 = *(v29 + 48);
              if (v30)
              {
                v55[0] = *v45;
                *(v55 + 12) = *&v45[12];
                v53 = v43;
                v54 = v44;
                v52[0] = *v42;
                *(v52 + 12) = *&v42[12];
                v31 = v30(v27, a2, v55, &v53, v52, audioSessionBufferedHose_setRateAndAnchorCompletionHandler, v48);
                if (!v31)
                {
                  dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
                  a6 = v40;
                  if (*v48)
                  {
                    APSLogErrorAt();
                    v33 = *v48;
                    if (gLogCategory_APReceiverAudioSessionBufferedHose <= 90 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
                    {
                      LogPrintF();
                    }

                    v32 = 0;
                    a7 = v26;
                    v13 = v39;
                    goto LABEL_34;
                  }

                  a7 = v26;
                  *(a1 + 204) = a2;
                  v55[0] = *&v48[4];
                  *(v55 + 12) = *&v48[16];
                  v32 = APSAudioTransportTimeCopyDebugDesc();
                  if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50)
                  {
                    v13 = v39;
                    if (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize())
                    {
                      LogPrintF();
                    }

                    v33 = 0;
                    goto LABEL_34;
                  }

                  v33 = 0;
                  goto LABEL_27;
                }

                v33 = v31;
              }

              else
              {
                v33 = 4294954514;
                *v48 = -12782;
                *&v48[4] = v37;
                *&v48[16] = v38;
                v49 = v36;
                v50 = v35;
                dispatch_semaphore_signal(v25);
              }
            }

            else
            {
              v33 = 4294954508;
            }

            a7 = v26;
            a6 = v40;
            APSLogErrorAt();
            v32 = 0;
LABEL_27:
            v13 = v39;
LABEL_34:
            CFRelease(v21);
            goto LABEL_35;
          }

          v22 = *(v21 + 16);
          v47[0] = MEMORY[0x277D85DD0];
          v47[1] = 0x40000000;
          v47[2] = __APReceiverAudioSessionBufferedHoseSetRateAndAnchorTime_block_invoke;
          v47[3] = &__block_descriptor_tmp_150;
          v47[4] = v21;
          v47[5] = a1;
          v23 = v47;
        }

        else
        {
          v39 = v13;
          v40 = a6;
          v22 = *(a1 + 280);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 0x40000000;
          block[2] = __APReceiverAudioSessionBufferedHoseSetRateAndAnchorTime_block_invoke_2;
          block[3] = &__block_descriptor_tmp_151;
          block[4] = a1;
          v23 = block;
        }

        dispatch_sync(v22, v23);
        goto LABEL_16;
      }

      v33 = 4294895143;
    }

    else
    {
      v33 = 4294895143;
    }

    APSLogErrorAt();
    v32 = 0;
  }

  else
  {
    APSLogErrorAt();
    v32 = 0;
    v33 = 4294895144;
  }

LABEL_35:
  if (v13)
  {
    CFRelease(v13);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (a6)
  {
    *a6 = *&v48[4];
    *(a6 + 12) = *&v48[16];
  }

  if (a7)
  {
    *a7 = v49;
    *(a7 + 16) = v50;
  }

  if (dsema)
  {
    dispatch_release(dsema);
  }

  return v33;
}

uint64_t APReceiverAudioSessionBufferedHoseApplyVolumeFade(uint64_t a1, uint64_t a2, CMTime *a3)
{
  if (!a1 || !*(a1 + 128))
  {
    APSLogErrorAt();
    return 4294895144;
  }

  if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
  {
    APSGetVolumeFadeTypeName();
    time = *a3;
    CMTimeGetSeconds(&time);
    LogPrintF();
  }

  if (a2 == 2)
  {
    if (!*(a1 + 204))
    {
      v6 = 4294895145;
      APSLogErrorAt();
      if (gLogCategory_APReceiverAudioSessionBufferedHose <= 90 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
      {
        goto LABEL_23;
      }

      return v6;
    }

    goto LABEL_14;
  }

  if (a2 != 1)
  {
    v6 = 4294895145;
    if (gLogCategory_APReceiverAudioSessionBufferedHose <= 90 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
    {
      goto LABEL_23;
    }

    return v6;
  }

  if (!*(a1 + 204))
  {
LABEL_14:
    v7 = *(a1 + 128);
    *&v12.value = *&a3->value;
    v12.epoch = a3->epoch;
    APSEndpointStreamAudioHoseProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (ProtocolVTable && (v9 = *(ProtocolVTable + 16)) != 0)
    {
      v10 = *(v9 + 72);
      if (v10)
      {
        time = v12;
        v6 = v10(v7, a2, &time);
        if (!v6)
        {
          return v6;
        }
      }

      else
      {
        v6 = 4294954514;
      }
    }

    else
    {
      v6 = 4294954508;
    }

    APSLogErrorAt();
    return v6;
  }

  v6 = 4294895145;
  APSLogErrorAt();
  if (gLogCategory_APReceiverAudioSessionBufferedHose <= 90 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
  {
LABEL_23:
    LogPrintF();
  }

  return v6;
}

uint64_t audioSessionBufferedHose_setMagicCookieCompletionHandler(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  *a4 = a3;
  *(a4 + 8) = a2;
  dispatch_semaphore_signal(*(a4 + 16));
  return 0;
}

uint64_t audioSessionBufferedHose_updatePKDCryptorEncryptionKeyCompletionHandler(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  *a4 = a3;
  *(a4 + 8) = a2;
  dispatch_semaphore_signal(*(a4 + 16));
  return 0;
}

uint64_t audioSessionBufferedHose_setRateAndAnchorCompletionHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, __int128 *a6, int a7, uint64_t a8)
{
  *a8 = a7;
  v8 = *a5;
  *(a8 + 16) = *(a5 + 12);
  *(a8 + 4) = v8;
  v9 = *a6;
  *(a8 + 48) = *(a6 + 2);
  *(a8 + 32) = v9;
  dispatch_semaphore_signal(*(a8 + 56));
  return 0;
}

uint64_t audioSessionBufferedHose_cancelUnderrun(uint64_t result)
{
  if (*(result + 304))
  {
    v1 = result;
    if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50)
    {
      if (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = LogPrintF();
      }
    }

    *(v1 + 304) = 0;
  }

  return result;
}

uint64_t audioSessionBufferedHose_setRateCompletionHandler(uint64_t a1, __int128 *a2, __int128 *a3, int a4, uint64_t a5)
{
  *a5 = a4;
  v5 = *a2;
  *(a5 + 16) = *(a2 + 12);
  *(a5 + 4) = v5;
  v6 = *a3;
  *(a5 + 48) = *(a3 + 2);
  *(a5 + 32) = v6;
  dispatch_semaphore_signal(*(a5 + 56));
  return 0;
}

uint64_t audioSessionBufferedHose_getAnchorCompletionHandler(uint64_t a1, _OWORD *a2, __int128 *a3, int a4, const void *a5)
{
  Value = APSWrapperGetValue();
  *Value = a4;
  v10 = *(a2 + 12);
  *(Value + 4) = *a2;
  *(Value + 16) = v10;
  v11 = *a3;
  *(Value + 48) = *(a3 + 2);
  *(Value + 32) = v11;
  dispatch_semaphore_signal(*(Value + 56));
  if (a5)
  {
    CFRelease(a5);
  }

  return 0;
}

void audioSessionBufferedHose_finalizeContextWrapper(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    dispatch_release(v2);
  }

  free(a1);
}

uint64_t audioSessionBufferedHose_flushCompletionHandler(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *a5 = a4;
  dispatch_semaphore_signal(*(a5 + 8));
  return 0;
}

uint64_t audioSessionBufferedHose_flushWithinSampleRangeCompletionHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  *a7 = a6;
  dispatch_semaphore_signal(*(a7 + 8));
  return 0;
}

void APReceiverAudioSessionBufferedHoseFinalize(uint64_t a1)
{
  if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (*(a1 + 201))
  {
    if (gLogCategory_APReceiverAudioSessionBufferedHose <= 90 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    CFRelease(0);
  }

  if (*(a1 + 96))
  {
    SendSelfConnectedLoopbackMessage();
    FigThreadJoin();
    *(a1 + 96) = 0;
  }

  v2 = *(a1 + 64);
  if ((v2 & 0x80000000) == 0)
  {
    if (close(v2) && *__error())
    {
      __error();
    }

    *(a1 + 64) = -1;
  }

  if (*(a1 + 72))
  {
    NetSocket_Delete();
    *(a1 + 72) = 0;
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 48) = 0;
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 56) = 0;
  }

  v5 = *(a1 + 208);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 208) = 0;
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 8) = 0;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 32) = 0;
  }

  *(a1 + 108) = 0;
  if (*(a1 + 16))
  {
    *(a1 + 16) = 0;
    if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  v8 = *(a1 + 264);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 264) = 0;
  }

  v9 = *(a1 + 184);
  if (v9)
  {
    dispatch_source_cancel(*(a1 + 184));
    dispatch_release(v9);
    *(a1 + 184) = 0;
  }

  v10 = *(a1 + 176);
  if (v10)
  {
    dispatch_release(v10);
    *(a1 + 176) = 0;
  }

  v11 = *(a1 + 152);
  if (v11)
  {
    CFRelease(v11);
  }

  if (*(a1 + 128))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    v12 = *(a1 + 128);
    APSEndpointStreamAudioHoseProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (ProtocolVTable)
    {
      v14 = *(ProtocolVTable + 16);
      if (v14)
      {
        v15 = *(v14 + 56);
        if (v15)
        {
          v15(v12, 0, 0);
        }
      }
    }

    v16 = *(a1 + 128);
    if (v16)
    {
      v17 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v17)
      {
        v17(v16);
      }

      v18 = *(a1 + 128);
      if (v18)
      {
        CFRelease(v18);
        *(a1 + 128) = 0;
      }
    }
  }

  v19 = *(a1 + 288);
  if (v19)
  {
    dispatch_source_cancel(*(a1 + 288));
    dispatch_release(v19);
    *(a1 + 288) = 0;
  }

  v20 = *(a1 + 280);
  if (v20)
  {
    dispatch_release(v20);
    *(a1 + 280) = 0;
  }

  FigSimpleMutexDestroy();
  FigSimpleMutexDestroy();
  FigSimpleMutexDestroy();
  v21 = *(a1 + 144);
  if (v21)
  {
    CFRelease(v21);
    *(a1 + 144) = 0;
  }

  v22 = *(a1 + 168);
  if (v22)
  {
    CFRelease(v22);
    *(a1 + 168) = 0;
  }

  v23 = *(a1 + 192);
  if (v23)
  {
    CFRelease(v23);
  }

  CFDictionaryRemoveAllValues(*(a1 + 248));
  v24 = *(a1 + 248);
  if (v24)
  {
    CFRelease(v24);
    *(a1 + 248) = 0;
  }

  v25 = *(a1 + 240);
  if (v25)
  {
    CFRelease(v25);
    *(a1 + 240) = 0;
  }

  FigSimpleMutexDestroy();
  if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v26 = *(a1 + 24);
  if (v26)
  {
    CFRelease(v26);
  }

  free(a1);
}

uint64_t APReceiverAudioSessionBufferedHoseInvalidate(uint64_t a1)
{
  result = *(a1 + 128);
  if (result)
  {
    return MEMORY[0x28213C140]();
  }

  return result;
}

uint64_t APReceiverAudioSessionBufferedHoseConvertProgressRTPTimeToSecond(uint64_t a1, int a2, int a3, int a4, double *a5, double *a6)
{
  if (a1)
  {
    v10 = (a3 - a2);
    APSAudioFormatDescriptionGetSampleRate();
    v12 = v10 / v11;
    APSAudioFormatDescriptionGetSampleRate();
    v14 = (a4 - a2) / v13;
    if (gLogCategory_APReceiverAudioSessionBufferedHose <= 40 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (a5)
    {
      *a5 = v12;
    }

    result = 0;
    if (a6)
    {
      *a6 = v14;
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294895144;
  }

  return result;
}

uint64_t APReceiverAudioSessionBufferedHoseStartPacketProcesser(uint64_t a1)
{
  if (!a1)
  {
    APSLogErrorAt();
    return 4294895144;
  }

  if (*(a1 + 201))
  {
    v2 = 4294895143;
    goto LABEL_17;
  }

  *(a1 + 216) = mach_absolute_time();
  if (!*(a1 + 56))
  {
    FigSimpleMutexLock();
    if (*(a1 + 96))
    {
      FigSimpleMutexUnlock();
      goto LABEL_7;
    }

    v2 = FigThreadCreate();
    FigSimpleMutexUnlock();
    if (!v2)
    {
      goto LABEL_7;
    }

LABEL_17:
    APSLogErrorAt();
    return v2;
  }

LABEL_7:
  v3 = *(a1 + 48);
  if (v3)
  {
    v7 = *(a1 + 48);
    v8 = 0;
    dispatch_sync_f(*(v3 + 112), &v7, controlServer_startInternal);
    v2 = v8;
    if (v8)
    {
      goto LABEL_17;
    }
  }

  if (*(a1 + 56))
  {
    CMBaseObject = APTransportConnectionGetCMBaseObject();
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v5)
    {
      v5(CMBaseObject, *MEMORY[0x277CE4F08], *MEMORY[0x277CBED28]);
    }
  }

  else
  {
    audioSessionBufferedHose_resumeNetworkReads(a1);
  }

  v2 = 0;
  *(a1 + 201) = 1;
  return v2;
}

uint64_t audioSessionBufferedHose_networkThread(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 64);
  memset(&v40, 0, sizeof(v40));
  pthread_setname_np("AirPlayAudioReceiver");
  if (!*(a1 + 56))
  {
    if (SocketAccept() || SocketSetP2P())
    {
      goto LABEL_107;
    }

    if (!*(a1 + 117))
    {
      SocketSetQoS();
    }

    v2 = -1;
    v4 = *(a1 + 80);
    if ((v4 & 0x80000000) == 0)
    {
      if (close(v4) && *__error())
      {
        __error();
      }

      *(a1 + 80) = -1;
    }

    if (NetSocket_CreateWithNative())
    {
LABEL_107:
      APSLogErrorAt();
      return 0;
    }
  }

  if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (v2 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v2;
  }

  v6 = 1 << v2;
  v38 = v2 >> 5;
  v39 = 1 << v3;
  v7 = v3 >> 5;
  structureAllocator = *MEMORY[0x277CBECE8];
  v36 = v5;
  while (1)
  {
    while (1)
    {
      memset(&v40, 0, sizeof(v40));
      if (*(a1 + 124))
      {
        v8 = __darwin_check_fd_set_overflow(v2, &v40, 0);
        v9 = v5;
        if (v8)
        {
          v40.fds_bits[v38] |= v6;
          v9 = v5;
        }
      }

      else
      {
        v9 = -1;
      }

      if (v3 <= v9)
      {
        v10 = v9;
      }

      else
      {
        v10 = v3;
      }

      if (__darwin_check_fd_set_overflow(v3, &v40, 0))
      {
        v40.fds_bits[v7] |= v39;
      }

      v11 = select(v10 + 1, &v40, 0, 0, 0);
      if (v11 > 0)
      {
        break;
      }

      if (v11 && *__error())
      {
        v30 = *__error();
        if (!v30)
        {
          break;
        }

        if (v30 == 4)
        {
          continue;
        }
      }

      usleep(0x186A0u);
    }

    if (__darwin_check_fd_set_overflow(v2, &v40, 0) && (v40.fds_bits[v38] & v6) != 0)
    {
      break;
    }

LABEL_79:
    if (__darwin_check_fd_set_overflow(v3, &v40, 0) && (v40.fds_bits[v7] & v39) != 0)
    {
      LOBYTE(blockBufferOut) = 0;
      v44 = 0;
      v33 = SocketRecvFrom();
      if (v33 != 35)
      {
        if (v33)
        {
          APSLogErrorAt();
        }

        else if (blockBufferOut == 113)
        {
          goto LABEL_102;
        }
      }
    }

    else
    {
      APSNetworkClockLogCurrentNetworkTime();
    }
  }

  v43 = 0;
  v42 = 0;
  v44 = 0;
  DefaultAirPlayMallocZoneCFAllocator = APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator();
  blockBufferOut = 0;
  blockAllocator = DefaultAirPlayMallocZoneCFAllocator;
  if (*(a1 + 56))
  {
    APSLogErrorAt();
LABEL_70:
    v20 = 0;
    v32 = -72153;
    goto LABEL_73;
  }

  v13 = DefaultAirPlayMallocZoneCFAllocator;
  v14 = *(a1 + 40);
  if (v14 == 1381257248)
  {
    v15 = (*(*(a1 + 72) + 24))(*(a1 + 72), 2);
    if (!v15)
    {
      v31 = bswap32(v42) >> 16;
      if (v31 <= 1)
      {
        goto LABEL_98;
      }

      v18 = v31 - 2;
      v17 = 1;
      if (!v18)
      {
        goto LABEL_62;
      }

LABEL_38:
      v19 = v18;
      v20 = MEMORY[0x23EF197A0](v13, v18, 3277520903, 0);
      if (!v20)
      {
        APSLogErrorAt();
        v32 = -6728;
        goto LABEL_63;
      }

      v21 = (*(*(a1 + 72) + 24))(*(a1 + 72), v19);
      if (v21)
      {
        v32 = v21;
      }

      else
      {
        if (v44 != v19)
        {
          APSLogErrorAt();
          v32 = -72153;
          goto LABEL_63;
        }

        v22 = CMBlockBufferCreateWithMemoryBlock(structureAllocator, v20, v19, blockAllocator, 0, v17, v19 - v17, 0, &blockBufferOut);
        if (!v22)
        {
          FigSimpleMutexLock();
          Mutable = *(a1 + 144);
          if (!Mutable)
          {
            Mutable = CFArrayCreateMutable(structureAllocator, 128, MEMORY[0x277CBF128]);
            *(a1 + 144) = Mutable;
          }

          CFArrayAppendValue(Mutable, blockBufferOut);
          Count = CFArrayGetCount(*(a1 + 144));
          FigSimpleMutexUnlock();
          v25 = *(a1 + 128);
          APSEndpointStreamAudioHoseProtocolGetProtocolID();
          ProtocolVTable = CMBaseObjectGetProtocolVTable();
          if (ProtocolVTable)
          {
            v27 = *(ProtocolVTable + 16);
            v5 = v36;
            if (v27)
            {
              v28 = *(v27 + 40);
              if (v28)
              {
                v29 = v28(v25);
                if (!v29)
                {
                  if (Count >= 128)
                  {
                    if (*(a1 + 56))
                    {
                      goto LABEL_100;
                    }

                    if (*(a1 + 124))
                    {
                      if (gLogCategory_APReceiverAudioSessionBufferedHose <= 20 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
                      {
                        LogPrintF();
                      }

                      *(a1 + 124) = 0;
                      if (SendSelfConnectedLoopbackMessage())
                      {
LABEL_100:
                        APSLogErrorAt();
                      }
                    }
                  }

                  v32 = 0;
                  goto LABEL_89;
                }

                v32 = v29;
              }

              else
              {
                v32 = -12782;
              }
            }

            else
            {
              v32 = -12788;
            }
          }

          else
          {
            v32 = -12788;
            v5 = v36;
          }

          APSLogErrorAt();
          v20 = 0;
          goto LABEL_73;
        }

        v32 = v22;
      }

      APSLogErrorAt();
      goto LABEL_63;
    }

LABEL_91:
    v32 = v15;
LABEL_89:
    v20 = 0;
    goto LABEL_73;
  }

  if (v14 != 1095778640)
  {
    if (gLogCategory_APReceiverAudioSessionBufferedHose <= 90 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    goto LABEL_70;
  }

  v15 = (*(*(a1 + 72) + 24))(*(a1 + 72), 4);
  if (v15)
  {
    goto LABEL_91;
  }

  v16 = bswap32(v43);
  if (v16 <= 3)
  {
LABEL_98:
    APSLogErrorAt();
    v20 = 0;
    v32 = -6733;
    goto LABEL_73;
  }

  v17 = 0;
  v18 = v16 - 4;
  if (v18)
  {
    goto LABEL_38;
  }

LABEL_62:
  v32 = 0;
  v20 = 0;
LABEL_63:
  v5 = v36;
LABEL_73:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (v20)
  {
    CFAllocatorDeallocate(blockAllocator, v20);
  }

  v6 = 1 << v2;
  if (v32 != -6753 && v32 != -6723)
  {
    goto LABEL_79;
  }

LABEL_102:
  if (gLogCategory_APReceiverAudioSessionBufferedHose <= 30 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return 0;
}

uint64_t APReceiverAudioSessionBufferedHoseStopPacketProcesser(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (*(a1 + 201))
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      v8 = *(a1 + 48);
      v9 = 0;
      dispatch_sync_f(*(v2 + 112), &v8, controlServer_stopInternal);
      v3 = v9;
    }

    else
    {
      v3 = 0;
    }

    if (*(a1 + 56))
    {
      CMBaseObject = APTransportConnectionGetCMBaseObject();
      if (CMBaseObject)
      {
        v5 = CMBaseObject;
        v6 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v6)
        {
          v3 = v6(v5);
        }

        else
        {
          v3 = 4294954514;
        }
      }

      else
      {
        v3 = 4294954516;
      }
    }

    if ((*(a1 + 64) & 0x80000000) == 0)
    {
      v3 = SendSelfConnectedLoopbackMessage();
    }

    if (*(a1 + 72))
    {
      v3 = NetSocket_Cancel();
    }

    if (*(a1 + 96))
    {
      FigSimpleMutexLock();
      v3 = FigThreadJoin();
      *(a1 + 96) = 0;
      FigSimpleMutexUnlock();
    }

    *(a1 + 224) = mach_absolute_time();
    *(a1 + 201) = 0;
  }

  else
  {
    APSLogErrorAt();
    return 4294895143;
  }

  return v3;
}

uint64_t APReceiverAudioSessionBufferedHoseCopyMetrics(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      CFDictionarySetInt64();
      return 0;
    }

    else
    {
      APSLogErrorAt();
      return 4294895145;
    }
  }

  else
  {
    v2 = 4294895144;
    APSLogErrorAt();
  }

  return v2;
}

uint64_t APReceiverAudioSessionBufferedHoseLogEnded(uint64_t result, uint64_t a2)
{
  v9 = 0;
  cf = 0;
  if (result)
  {
    if (a2)
    {
      v2 = result;
      APSNetworkClockReportRTCMetrics();
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      FigCFDictionarySetInt32();
      UpTicksToSeconds();
      FigCFDictionarySetInt64();
      FigCFDictionarySetInt64();
      FigCFDictionarySetInt64();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      if (*(v2 + 152))
      {
        v4 = *MEMORY[0x277CBECE8];
        CMBaseObject = APSAudioProtocolDriverReceiverGetCMBaseObject();
        v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v6 && !v6(CMBaseObject, *MEMORY[0x277CEA000], v4, &cf))
        {
          FigCFDictionarySetValue();
        }

        v7 = APSAudioProtocolDriverReceiverGetCMBaseObject();
        v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v8 && !v8(v7, *MEMORY[0x277CE9FF8], v4, &v9))
        {
          FigCFDictionarySetValue();
        }
      }

      CFDictionarySetValue(Mutable, @"sessionType", @"AudioBuffered");
      APSRTCReportingAgentSendMediaEvent();
      APSRTCReportingAgentSendEvent();
      if (cf)
      {
        CFRelease(cf);
      }

      if (v9)
      {
        CFRelease(v9);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      return 0;
    }

    else
    {
      APSLogErrorAt();
      return 4294895145;
    }
  }

  return result;
}

uint64_t APReceiverAudioSessionBufferedHoseCopyProperty(uint64_t a1, CFTypeRef cf1, int *a3)
{
  v18 = 0;
  if (!a1)
  {
    APSLogErrorAt();
    v8 = -72152;
    goto LABEL_24;
  }

  if (!cf1)
  {
    APSLogErrorAt();
    v8 = -72151;
    goto LABEL_24;
  }

  if (gLogCategory_APReceiverAudioSessionBufferedHose <= 30 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!CFEqual(cf1, @"VolumeLinear"))
  {
    if (CFEqual(cf1, @"AudioFormat"))
    {
      v9 = *(a1 + 192);
LABEL_15:
      Int64 = CFRetain(v9);
LABEL_23:
      v8 = 0;
      v18 = Int64;
      goto LABEL_24;
    }

    if (CFEqual(cf1, @"MediaDataControlPort"))
    {
      Int64 = CFNumberCreateInt64();
      goto LABEL_23;
    }

    if (CFEqual(cf1, @"MaximumLatency") || CFEqual(cf1, @"PlatformAudioLatency"))
    {
      valuePtr = 0;
    }

    else
    {
      if (CFEqual(cf1, @"AudioPort"))
      {
        v11 = *MEMORY[0x277CBECE8];
        p_valuePtr = (a1 + 108);
        v13 = kCFNumberIntType;
        goto LABEL_22;
      }

      if (!CFEqual(cf1, @"SampleRate"))
      {
        if (CFEqual(cf1, @"audioBufferSize"))
        {
          v8 = APSAudioProtocolDriverHoseCopyProperty(*(a1 + 128), *MEMORY[0x277CE9F58], *MEMORY[0x277CBECE8], &v18);
          goto LABEL_24;
        }

        if (CFEqual(cf1, @"IsPlayingBufferedAudio"))
        {
          v16 = MEMORY[0x277CBED28];
          if (!*(a1 + 204))
          {
            v16 = MEMORY[0x277CBED10];
          }
        }

        else
        {
          if (!CFEqual(cf1, @"IsUsingScreen"))
          {
            if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            v8 = -72154;
            goto LABEL_24;
          }

          v16 = MEMORY[0x277CBED10];
        }

        v9 = *v16;
        goto LABEL_15;
      }

      APSAudioFormatDescriptionGetSampleRate();
      valuePtr = v15;
    }

    v11 = *MEMORY[0x277CBECE8];
    p_valuePtr = &valuePtr;
    v13 = kCFNumberSInt32Type;
LABEL_22:
    Int64 = CFNumberCreate(v11, v13, p_valuePtr);
    goto LABEL_23;
  }

  v6 = *(a1 + 128);
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v7)
  {
    v8 = v7(v6, *MEMORY[0x277CEA1B8], *MEMORY[0x277CBECE8], &v18);
    if (!v8)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v8 = -12782;
  }

  APSLogErrorAt();
LABEL_24:
  if (a3)
  {
    *a3 = v8;
  }

  return v18;
}

uint64_t APSAudioProtocolDriverHoseCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

uint64_t APReceiverAudioSessionBufferedHoseSetProperty(uint64_t a1, CFTypeRef cf1, uint64_t a3)
{
  if (!a1)
  {
    APSLogErrorAt();
    return 4294895144;
  }

  if (!cf1 || !a3)
  {
    APSLogErrorAt();
    return 4294895145;
  }

  if (gLogCategory_APReceiverAudioSessionBufferedHose <= 40 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (CFEqual(cf1, @"VolumeLinear"))
  {
    if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v7 = *(a1 + 128);
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v8)
    {
      v6 = 4294954514;
LABEL_22:
      APSLogErrorAt();
      return v6;
    }

    v6 = v8(v7, @"VolumeLinear", a3);
    if (v6)
    {
      goto LABEL_22;
    }
  }

  else if (CFEqual(cf1, @"RTCMetadata"))
  {
    APSRTCReportingAgentSendMediaEvent();
    return 0;
  }

  else
  {
    v6 = 4294895142;
    if (gLogCategory_APReceiverAudioSessionBufferedHose <= 50 && (gLogCategory_APReceiverAudioSessionBufferedHose != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  return v6;
}

uint64_t _UpdateAVAudioSessionAudioMode_5424(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  result = [*(a1 + 32) setAudioMode:a2 isLongForm:*(a1 + 69) == 0 error:&v3];
  if (result)
  {
    if (gLogCategory_APReceiverAudioSessionPlatform <= 50)
    {
      if (gLogCategory_APReceiverAudioSessionPlatform != -1)
      {
        return LogPrintF();
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return LogPrintF();
      }
    }
  }

  else if (gLogCategory_APReceiverAudioSessionPlatform <= 60)
  {
    if (gLogCategory_APReceiverAudioSessionPlatform != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

uint64_t _MainAudioEnsureSetup(uint64_t a1, uint64_t a2)
{
  memset(&inDescription, 0, sizeof(inDescription));
  inInputCallback.inputProc = 0;
  inInputCallback.inputProcRefCon = 0;
  v109 = 0;
  *ioDataSize = 0;
  memset(outData, 0, sizeof(outData));
  v107 = 0;
  v3 = &unk_27E37E000;
  if (!*(a1 + 24))
  {
    APSLogErrorAt();
    v8 = 4294960578;
    goto LABEL_416;
  }

  v4 = (a1 + 192);
  if (*(a1 + 192) || *(a1 + 128) || *(*(a1 + 16) + 753))
  {
    return 0;
  }

  if (gLogCategory_APReceiverAudioSessionPlatform <= 50 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
  {
    v6 = *(a1 + 40);
    if (APSAudioFormatDescriptionGetAudioFormatIndex() == 6)
    {
      v7 = "PCM/24000/16/1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 10)
    {
      v7 = "PCM/44100/16/1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 11)
    {
      v7 = "PCM/44100/16/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 15)
    {
      v7 = "PCM/48000/16/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 18)
    {
      v7 = "ALAC/44100/16/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 22)
    {
      v7 = "AAC-LC/44100/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 24)
    {
      v7 = "AAC-ELD/44100/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 2)
    {
      v7 = "PCM/8000/16/1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 3)
    {
      v7 = "PCM/8000/16/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 4)
    {
      v7 = "PCM/16000/16/1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 5)
    {
      v7 = "PCM/16000/16/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 7)
    {
      v7 = "PCM/24000/16/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 8)
    {
      v7 = "PCM/32000/16/1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 9)
    {
      v7 = "PCM/32000/16/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 12)
    {
      v7 = "PCM/44100/24/1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 13)
    {
      v7 = "PCM/44100/24/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 14)
    {
      v7 = "PCM/48000/16/1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 16)
    {
      v7 = "PCM/48000/24/1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 17)
    {
      v7 = "PCM/48000/24/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 45)
    {
      v7 = "PCM/48000/32f/1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 46)
    {
      v7 = "PCM/48000/32f/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 44)
    {
      v7 = "PCM/48000/16/5.1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 38)
    {
      v7 = "PCM/48000/16/5.1.2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 78)
    {
      v7 = "PCM/48000/16/7.1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 80)
    {
      v7 = "PCM/48000/16/5.1.4";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 82)
    {
      v7 = "PCM/48000/16/7.1.2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 84)
    {
      v7 = "PCM/48000/16/7.1.4";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 93)
    {
      v7 = "PCM/48000/16/9.1.6";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 47)
    {
      v7 = "PCM/48000/32f/5.1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 48)
    {
      v7 = "PCM/48000/32f/5.1.2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 79)
    {
      v7 = "PCM/48000/32f/7.1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 81)
    {
      v7 = "PCM/48000/32f/5.1.4";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 83)
    {
      v7 = "PCM/48000/32f/7.1.2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 69)
    {
      v7 = "PCM/48000/32f/7.1.4";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 94)
    {
      v7 = "PCM/48000/32f/9.1.6";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 85)
    {
      v7 = "ALAC/44100/20/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 19)
    {
      v7 = "ALAC/44100/24/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 20)
    {
      v7 = "ALAC/48000/16/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 86)
    {
      v7 = "ALAC/48000/20/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 21)
    {
      v7 = "ALAC/48000/24/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 40)
    {
      v7 = "AAC_LC/48000/5.1.2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 39)
    {
      v7 = "AAC_LC/48000/5.1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 90)
    {
      v7 = "AAC_LC/48000/7.1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 23)
    {
      v7 = "AAC-LC/48000/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 42)
    {
      v7 = "AAC_ELD/48000/5.1.2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 41)
    {
      v7 = "AAC_ELD/48000/5.1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 25)
    {
      v7 = "AAC-ELD/48000/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 26)
    {
      v7 = "AAC-ELD/16000/1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 27)
    {
      v7 = "AAC-ELD/24000/1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 28)
    {
      v7 = "OPUS/16000/1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 29)
    {
      v7 = "OPUS/24000/1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 30)
    {
      v7 = "OPUS/48000/1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 31)
    {
      v7 = "AAC-ELD/44100/1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 32)
    {
      v7 = "AAC-ELD/48000/1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 43)
    {
      v7 = "AAC-ELD/32000/1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 49)
    {
      v7 = "DDPLUS/48000/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 50)
    {
      v7 = "DDPLUS/48000/5.1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 51)
    {
      v7 = "DDPLUS/48000/5.1.2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 52)
    {
      v7 = "DDPLUS/48000/7.1.4";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 53)
    {
      v7 = "DDPLUS/48000/9.1.6";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 54)
    {
      v7 = "QAAC/48000/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 55)
    {
      v7 = "QAAC/48000/5.1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 56)
    {
      v7 = "QAAC/48000/5.1.2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 57)
    {
      v7 = "QAACHE/48000/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 58)
    {
      v7 = "QAACHE/48000/5.1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 60)
    {
      v7 = "QAACHE/48000/5.1.2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 89)
    {
      v7 = "PAAC/44100/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 61)
    {
      v7 = "QLAC/48000/24/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 62)
    {
      v7 = "QC3/48000/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 63)
    {
      v7 = "QC3/48000/5.1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 33)
    {
      v7 = "QC3/48000/5.1.2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 34)
    {
      v7 = "QC3/48000/7.1.4";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 35)
    {
      v7 = "QC3/48000/9.1.6";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 87)
    {
      v7 = "QAC3/48000/5.1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 88)
    {
      v7 = "QEC3/48000/7.1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 91)
    {
      v7 = "EAC3/48000/5.1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 64)
    {
      v7 = "APAC/48000/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 65)
    {
      v7 = "APAC/48000/5.1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 66)
    {
      v7 = "APAC/48000/5.1.2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 67)
    {
      v7 = "APAC/48000/7.1";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 76)
    {
      v7 = "APAC/48000/5.1.4";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 77)
    {
      v7 = "APAC/48000/7.1.2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 68)
    {
      v7 = "APAC/48000/7.1.4";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 92)
    {
      v7 = "APAC/48000/9.1.6";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 70)
    {
      v7 = "QAAC/44100/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 71)
    {
      v7 = "QAACHE/44100/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 72)
    {
      v7 = "QAACHEV2/44100/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 73)
    {
      v7 = "QLAC/44100/24/2";
    }

    else if (APSAudioFormatDescriptionGetAudioFormatIndex() == 74)
    {
      v7 = "MP3/44100/2";
    }

    else
    {
      AudioFormatIndex = APSAudioFormatDescriptionGetAudioFormatIndex();
      v7 = "";
      if (AudioFormatIndex == 75)
      {
        v7 = "MP3/48000/2";
      }
    }

    v10 = "yes";
    if (*(a1 + 64))
    {
      v11 = "yes";
    }

    else
    {
      v11 = "no";
    }

    if (*(a1 + 65))
    {
      *&v12 = COERCE_DOUBLE("yes");
    }

    else
    {
      *&v12 = COERCE_DOUBLE("no");
    }

    if (*(a1 + 66))
    {
      *&v13 = COERCE_DOUBLE("yes");
    }

    else
    {
      *&v13 = COERCE_DOUBLE("no");
    }

    if (!*(a1 + 68))
    {
      v10 = "no";
    }

    v105 = *&v13;
    v106 = v10;
    v103 = v11;
    v104 = *&v12;
    v99 = v6;
    v101 = v7;
    LogPrintF();
  }

  if (*(a1 + 48) != 103)
  {
    if (*(a1 + 108) < 3u)
    {
      if (gLogCategory_APReceiverAudioSessionPlatform > 50 || gLogCategory_APReceiverAudioSessionPlatform == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_215;
      }
    }

    else if (gLogCategory_APReceiverAudioSessionPlatform > 50 || gLogCategory_APReceiverAudioSessionPlatform == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_215;
    }

    v99 = *(a1 + 40);
    LogPrintF();
LABEL_215:
    _UpdateAVAudioSessionPrefersMultiChannelAudio(a1);
  }

  APSEnsureCanInitiatePlayback();
  *(a1 + 72) = *(a1 + 48);
  if (a2)
  {
    if (CFDictionaryGetInt64())
    {
      v8 = 0;
      *(a1 + 70) = 1;
      return v8;
    }

    *(a1 + 71) = CFDictionaryGetInt64() != 0;
  }

  if (*(*(a1 + 16) + 592) && *(a1 + 69) && !APSGetFBOPropertyInt64())
  {
    if (gLogCategory_APReceiverAudioSessionPlatform <= 50 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v72 = *(*(a1 + 16) + 592);
    APSAudioFormatDescriptionGetAudioFormatIndex();
    v73 = APAudioFormatIndexToPCMASBD();
    if (v73)
    {
      v8 = v73;
    }

    else
    {
      v74 = *(a1 + 120);
      if (v74)
      {
        CFRelease(v74);
        *(a1 + 120) = 0;
      }

      v75 = CMAudioFormatDescriptionCreate(*MEMORY[0x277CBECE8], (a1 + 80), 0, 0, 0, 0, 0, (a1 + 120));
      if (!v75)
      {
        *(a1 + 128) = v72;
        *(a1 + 152) = 0;
        *(a1 + 168) = (*(a1 + 80) * (APSScreenLatencyMs() + 10) / 1000.0);
        if (*(a1 + 71) && IsAppleTV())
        {
          [objc_msgSend(*(a1 + 32) "session")];
          *(a1 + 168) += (v76 * *(a1 + 80));
        }

        v77 = FigDispatchQueueCreateWithPriority();
        *(a1 + 136) = v77;
        v78 = dispatch_source_create(MEMORY[0x277D85D38], 0, 1uLL, v77);
        *(a1 + 144) = v78;
        inData = MEMORY[0x277D85DD0];
        v114 = 3221225472;
        v115 = ___SBufConsumerEnsureSetup_block_invoke;
        v116 = &__block_descriptor_40_e5_v8__0l;
        v117 = a1;
        dispatch_source_set_event_handler(v78, &inData);
        dispatch_source_set_timer(*(a1 + 144), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
        dispatch_resume(*(a1 + 144));
        if (gLogCategory_APReceiverAudioSessionPlatform <= 50 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        return 0;
      }

      v8 = v75;
    }
  }

  else
  {
    if (gLogCategory_APReceiverAudioSessionPlatform <= 50 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v14 = NewAUGraph((a1 + 192));
    if (v14)
    {
      v8 = v14;
    }

    else
    {
      v15 = AUGraphOpen(*v4);
      if (v15)
      {
        v8 = v15;
      }

      else
      {
        if (*(a1 + 66))
        {
          v16 = 1987078511;
        }

        else
        {
          v16 = 1919512419;
        }

        inDescription.componentType = 1635086197;
        inDescription.componentSubType = v16;
        *&inDescription.componentManufacturer = 1634758764;
        inDescription.componentFlagsMask = 0;
        v17 = AUGraphAddNode(*(a1 + 192), &inDescription, (a1 + 216));
        if (v17)
        {
          v8 = v17;
        }

        else
        {
          v18 = AUGraphNodeInfo(*(a1 + 192), *(a1 + 216), 0, (a1 + 224));
          if (v18)
          {
            v8 = v18;
          }

          else
          {
            LODWORD(inData) = [objc_msgSend(*(a1 + 32) "session")];
            v19 = AudioUnitSetProperty(*(a1 + 224), 0x7E7u, 2u, 0, &inData, 4u);
            if (v19)
            {
              v8 = v19;
            }

            else
            {
              v20 = AudioUnitInitialize(*(a1 + 224));
              if (v20)
              {
                v8 = v20;
              }

              else
              {
                ioDataSize[0] = 40;
                Property = AudioUnitGetProperty(*(a1 + 224), 8u, 2u, 0, outData, ioDataSize);
                if (Property)
                {
                  v8 = Property;
                }

                else
                {
                  if (gLogCategory_APReceiverAudioSessionPlatform <= 50 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
                  {
                    v99 = *(a1 + 40);
                    v101 = outData;
                    LogPrintF();
                  }

                  v22 = *(a1 + 224);
                  v23 = *outData;
                  *&inDescription.componentType = xmmword_23EAA1860;
                  inDescription.componentFlagsMask = 0;
                  v24 = AUGraphAddNode(*(a1 + 192), &inDescription, (a1 + 200));
                  if (v24)
                  {
                    v8 = v24;
                  }

                  else
                  {
                    v25 = AUGraphNodeInfo(*(a1 + 192), *(a1 + 200), 0, (a1 + 208));
                    if (v25)
                    {
                      v8 = v25;
                    }

                    else
                    {
                      ioDataSize[1] = 1;
                      v26 = AudioUnitSetProperty(*(a1 + 208), 0xBu, 1u, 0, &ioDataSize[1], 4u);
                      if (v26)
                      {
                        v8 = v26;
                      }

                      else
                      {
                        *(outData + 12) = xmmword_23EAA1870;
                        LODWORD(v109) = 32;
                        if (gLogCategory_APReceiverAudioSessionPlatform <= 50 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
                        {
                          v99 = *(a1 + 40);
                          v101 = outData;
                          LogPrintF();
                        }

                        v27 = AudioUnitSetProperty(*(a1 + 224), 8u, 1u, 0, outData, 0x28u);
                        if (v27)
                        {
                          v8 = v27;
                        }

                        else
                        {
                          v28 = AudioUnitSetProperty(*(a1 + 208), 8u, 2u, 0, outData, 0x28u);
                          if (v28)
                          {
                            v8 = v28;
                          }

                          else
                          {
                            v29 = 1.0;
                            v30 = AudioUnitSetParameter(*(a1 + 208), 0, 1u, 0, 1.0, 0);
                            if (v30)
                            {
                              v8 = v30;
                            }

                            else
                            {
                              if (!APSIsAPMSpeaker())
                              {
                                v29 = *(a1 + 236);
                              }

                              if (gLogCategory_APReceiverAudioSessionPlatform <= 40 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
                              {
                                v104 = *(a1 + 236);
                                v105 = v29;
                                v101 = *(a1 + 208);
                                v103 = *(a1 + 68);
                                v99 = *(a1 + 40);
                                LogPrintF();
                              }

                              if (*(a1 + 68) && (v31 = AudioUnitSetParameter(*(a1 + 208), 0, 2u, 0, v29, 0), v31))
                              {
                                v8 = v31;
                              }

                              else
                              {
                                v32 = _ConfigureAudioUnitMaxFrames(a1, *(a1 + 208), v22, *outData, v23);
                                if (v32)
                                {
                                  v8 = v32;
                                }

                                else
                                {
                                  v33 = *(a1 + 208);
                                  v34 = *outData;
                                  v35 = AUGraphConnectNodeInput(*v4, *(a1 + 200), 0, *(a1 + 216), 0);
                                  if (v35)
                                  {
                                    v8 = v35;
                                  }

                                  else
                                  {
                                    if (!*(a1 + 65))
                                    {
                                      goto LABEL_268;
                                    }

                                    *&inDescription.componentType = xmmword_23EAA1880;
                                    inDescription.componentFlagsMask = 0;
                                    v36 = AUGraphAddNode(*(a1 + 192), &inDescription, (a1 + 240));
                                    if (v36)
                                    {
                                      v8 = v36;
                                    }

                                    else
                                    {
                                      v37 = AUGraphNodeInfo(*(a1 + 192), *(a1 + 240), 0, (a1 + 248));
                                      if (v37)
                                      {
                                        v8 = v37;
                                      }

                                      else
                                      {
                                        v38 = *(a1 + 108);
                                        *&outData[0] = 0x40E7700000000000;
                                        *(outData + 8) = xmmword_23EAA1890;
                                        DWORD2(outData[1]) = 4;
                                        HIDWORD(outData[1]) = v38;
                                        v109 = 32;
                                        v39 = AudioUnitSetProperty(*(a1 + 248), 8u, 2u, 0, outData, 0x28u);
                                        if (v39)
                                        {
                                          v8 = v39;
                                        }

                                        else
                                        {
                                          ioDataSize[1] = 127;
                                          v40 = AudioUnitSetProperty(*(a1 + 248), 0x1Au, 0, 0, &ioDataSize[1], 4u);
                                          if (v40)
                                          {
                                            v8 = v40;
                                          }

                                          else
                                          {
                                            v41 = _ConfigureAudioUnitMaxFrames(a1, *(a1 + 248), v33, *outData, v34);
                                            if (v41)
                                            {
                                              v8 = v41;
                                            }

                                            else
                                            {
                                              v33 = *(a1 + 248);
                                              v34 = *outData;
                                              v42 = AUGraphConnectNodeInput(*v4, *(a1 + 240), 0, *(a1 + 200), 0);
                                              if (!v42)
                                              {
LABEL_268:
                                                *&inDescription.componentType = xmmword_23EAA18A0;
                                                inDescription.componentFlagsMask = 0;
                                                v43 = AUGraphAddNode(*(a1 + 192), &inDescription, (a1 + 172));
                                                if (v43)
                                                {
                                                  v8 = v43;
                                                }

                                                else
                                                {
                                                  v44 = AUGraphNodeInfo(*(a1 + 192), *(a1 + 172), 0, (a1 + 176));
                                                  if (v44)
                                                  {
                                                    v8 = v44;
                                                  }

                                                  else
                                                  {
                                                    v45 = AudioUnitSetProperty(*(a1 + 176), 8u, 1u, 0, (a1 + 80), 0x28u);
                                                    if (v45)
                                                    {
                                                      v8 = v45;
                                                    }

                                                    else
                                                    {
                                                      *&outData[0] = 0x40E7700000000000;
                                                      *(outData + 8) = xmmword_23EAA1890;
                                                      v46 = *(a1 + 108);
                                                      DWORD2(outData[1]) = 4;
                                                      HIDWORD(outData[1]) = v46;
                                                      v109 = 32;
                                                      if (*(a1 + 65))
                                                      {
                                                        *&outData[0] = *(a1 + 80);
                                                      }

                                                      v47 = AudioUnitSetProperty(*(a1 + 176), 8u, 2u, 0, outData, 0x28u);
                                                      if (v47)
                                                      {
                                                        v8 = v47;
                                                      }

                                                      else
                                                      {
                                                        inInputCallback.inputProc = _AudioOutputCallBack;
                                                        inInputCallback.inputProcRefCon = a1;
                                                        v48 = AUGraphSetNodeInputCallback(*(a1 + 192), *(a1 + 172), 0, &inInputCallback);
                                                        if (v48)
                                                        {
                                                          v8 = v48;
                                                        }

                                                        else
                                                        {
                                                          v49 = _ConfigureAudioUnitMaxFrames(a1, *(a1 + 176), v33, *outData, v34);
                                                          if (v49)
                                                          {
                                                            v8 = v49;
                                                          }

                                                          else
                                                          {
                                                            v107 = 1;
                                                            v50 = AudioUnitSetProperty(*(a1 + 176), 0x762u, 2u, 0, &v107, 4u);
                                                            if (v50)
                                                            {
                                                              v8 = v50;
                                                            }

                                                            else
                                                            {
                                                              v51 = *(a1 + 240);
                                                              if (!v51)
                                                              {
                                                                v51 = *(a1 + 200);
                                                              }

                                                              v52 = AUGraphConnectNodeInput(*(a1 + 192), *(a1 + 172), 0, v51, 0);
                                                              if (v52)
                                                              {
                                                                v8 = v52;
                                                              }

                                                              else
                                                              {
                                                                v53 = AUGraphInitialize(*v4);
                                                                if (!v53)
                                                                {
                                                                  *outNumberOfNodes = 0;
                                                                  outNode = 0;
                                                                  inData = 0;
                                                                  v114 = 0;
                                                                  LODWORD(v115) = 0;
                                                                  outAudioUnit = 0;
                                                                  outDataSize = 0;
                                                                  v120 = 0.0;
                                                                  v121 = 0.0;
                                                                  valuePtr = 0;
                                                                  if (AUGraphGetNodeCount(*v4, outNumberOfNodes))
                                                                  {
                                                                    v54 = 0;
                                                                    outNumberOfNodes[0] = 0;
                                                                  }

                                                                  else if (outNumberOfNodes[0])
                                                                  {
                                                                    v54 = 0;
                                                                    v55 = 0;
                                                                    do
                                                                    {
                                                                      if (!AUGraphGetIndNode(*v4, v55, &outNode) && !AUGraphNodeInfo(*v4, outNode, &inData, &outAudioUnit))
                                                                      {
                                                                        outDataSize = 8;
                                                                        if (AudioUnitGetProperty(outAudioUnit, 2u, 0, 0, &v121, &outDataSize))
                                                                        {
                                                                          v121 = 44100.0;
                                                                        }

                                                                        outDataSize = 8;
                                                                        if (!AudioUnitGetProperty(outAudioUnit, 0xCu, 0, 0, &v120, &outDataSize) && HIDWORD(inData) != 1668247158)
                                                                        {
                                                                          v54 += (v120 * v121);
                                                                        }

                                                                        if (inData == 1635086197)
                                                                        {
                                                                          HIDWORD(valuePtr) = 0;
                                                                          outDataSize = 4;
                                                                          if (!AudioUnitGetProperty(outAudioUnit, 0x6C746E63u, 2u, 0, &valuePtr + 4, &outDataSize))
                                                                          {
                                                                            LODWORD(v56) = HIDWORD(valuePtr);
                                                                            v54 += (v121 * v56 / *(a1 + 80));
                                                                            outNumberOfNodes[1] = v54;
                                                                          }

                                                                          HIDWORD(valuePtr) = 0;
                                                                          outDataSize = 4;
                                                                          if (!AudioUnitGetProperty(outAudioUnit, 0x73616674u, 2u, 0, &valuePtr + 4, &outDataSize))
                                                                          {
                                                                            LODWORD(v57) = HIDWORD(valuePtr);
                                                                            v54 += (v121 * v57 / *(a1 + 80));
                                                                          }

                                                                          outDataSize = 0;
                                                                          v58 = 0;
                                                                          if (!AudioUnitGetPropertyInfo(outAudioUnit, 0x73746D23u, 2u, 0, &outDataSize, 0) && outDataSize >= 4)
                                                                          {
                                                                            v59 = malloc_type_malloc(outDataSize, 0x100004052888210uLL);
                                                                            if (v59)
                                                                            {
                                                                              v60 = v59;
                                                                              v58 = 0;
                                                                              if (!AudioUnitGetProperty(outAudioUnit, 0x73746D23u, 2u, 0, v59, &outDataSize) && outDataSize >= 4)
                                                                              {
                                                                                v58 = 0;
                                                                                v61 = outDataSize >> 2;
                                                                                v62 = v60;
                                                                                do
                                                                                {
                                                                                  inAddress.mElement = 0;
                                                                                  *&inAddress.mSelector = *"cntlbolg";
                                                                                  HIDWORD(valuePtr) = 0;
                                                                                  outDataSize = 4;
                                                                                  v63 = *v62++;
                                                                                  if (!AudioObjectGetPropertyData(v63, &inAddress, 0, 0, &outDataSize, &valuePtr + 4))
                                                                                  {
                                                                                    LODWORD(v64) = HIDWORD(valuePtr);
                                                                                    v65 = (v121 * v64 / *(a1 + 80));
                                                                                    HIDWORD(valuePtr) = v65;
                                                                                    if (v58 <= v65)
                                                                                    {
                                                                                      v58 = v65;
                                                                                    }
                                                                                  }

                                                                                  --v61;
                                                                                }

                                                                                while (v61);
                                                                              }

                                                                              free(v60);
                                                                              v3 = &unk_27E37E000;
                                                                            }

                                                                            else
                                                                            {
                                                                              v58 = 0;
                                                                            }
                                                                          }

                                                                          v54 += v58;
                                                                          outNumberOfNodes[1] = v54;
                                                                        }
                                                                      }

                                                                      ++v55;
                                                                    }

                                                                    while (v55 < outNumberOfNodes[0]);
                                                                  }

                                                                  else
                                                                  {
                                                                    v54 = 0;
                                                                  }

                                                                  if (*(a1 + 71))
                                                                  {
                                                                    if (APSIsAPMSpeaker())
                                                                    {
                                                                      if (*(*(*(a1 + 16) + 40) + 48))
                                                                      {
                                                                        v66 = APReceiverRequestProcessorCopyReceiverSession();
                                                                        if (v66)
                                                                        {
                                                                          v68 = v66;
                                                                          v69 = v3[306];
                                                                          if (v69 <= 50 && (v69 != -1 || _LogCategory_Initialize()))
                                                                          {
                                                                            v99 = *(a1 + 40);
                                                                            v101 = v68[180];
                                                                            LogPrintF();
                                                                          }

                                                                          LODWORD(v67) = v68[180];
                                                                          v54 -= (v121 * v67 / 1000.0);
                                                                          outNumberOfNodes[1] = v54;
                                                                          CFRelease(v68);
                                                                        }
                                                                      }
                                                                    }

                                                                    else if (IsAppleTV())
                                                                    {
                                                                      v70 = APSHDMIVideoLatencyMs();
                                                                      v71 = v3[306];
                                                                      if (v71 <= 50 && (v71 != -1 || _LogCategory_Initialize()))
                                                                      {
                                                                        v99 = *(a1 + 40);
                                                                        v101 = v70;
                                                                        LogPrintF();
                                                                      }

                                                                      v54 -= (v121 * v70 / 1000.0);
                                                                    }
                                                                  }

                                                                  v79 = [*(a1 + 32) session];
                                                                  v80 = v3[306];
                                                                  if (v80 <= 50)
                                                                  {
                                                                    if (v80 != -1 || _LogCategory_Initialize())
                                                                    {
                                                                      v81 = *(a1 + 40);
                                                                      [v79 inputLatency];
                                                                      v102 = v82;
                                                                      v100 = v81;
                                                                      LogPrintF();
                                                                    }

                                                                    v83 = v3[306];
                                                                    if (v83 <= 50)
                                                                    {
                                                                      if (v83 != -1 || _LogCategory_Initialize())
                                                                      {
                                                                        v84 = *(a1 + 40);
                                                                        [v79 outputLatency];
                                                                        v102 = v85;
                                                                        v100 = v84;
                                                                        LogPrintF();
                                                                      }

                                                                      v86 = v3[306];
                                                                      if (v86 <= 50 && (v86 != -1 || _LogCategory_Initialize()))
                                                                      {
                                                                        v87 = *(a1 + 40);
                                                                        [v79 sampleRate];
                                                                        v102 = v88;
                                                                        v100 = v87;
                                                                        LogPrintF();
                                                                      }
                                                                    }
                                                                  }

                                                                  [v79 outputLatency];
                                                                  v90 = v54 + (v89 * *(a1 + 80));
                                                                  outNumberOfNodes[1] = v90;
                                                                  LODWORD(valuePtr) = [v79 IOBufferFrameSize];
                                                                  v91 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
                                                                  if (v91)
                                                                  {
                                                                    v92 = v91;
                                                                    v93 = v3[306];
                                                                    if (v93 <= 50 && (v93 != -1 || _LogCategory_Initialize()))
                                                                    {
                                                                      LogPrintF();
                                                                    }

                                                                    APReceiverAudioSessionSetProperty(*(a1 + 24), @"PlatformIOBufferSize", v92);
                                                                    if (!APSIsAPMSpeaker() && *(a1 + 69) && v90 >= 1)
                                                                    {
                                                                      v94 = v3[306];
                                                                      if (v94 <= 50 && (v94 != -1 || _LogCategory_Initialize()))
                                                                      {
                                                                        LogPrintF();
                                                                      }

                                                                      outNumberOfNodes[1] = 0;
                                                                    }

                                                                    v95 = CFNumberCreate(0, kCFNumberSInt32Type, &outNumberOfNodes[1]);
                                                                    if (v95)
                                                                    {
                                                                      v96 = v95;
                                                                      if (APReceiverAudioSessionSetProperty(*(a1 + 24), @"PlatformAudioLatency", v95))
                                                                      {
                                                                        APSLogErrorAt();
                                                                      }

                                                                      else
                                                                      {
                                                                        v97 = v3[306];
                                                                        if (v97 <= 50 && (v97 != -1 || _LogCategory_Initialize()))
                                                                        {
                                                                          LogPrintF();
                                                                        }
                                                                      }

                                                                      CFRelease(v96);
                                                                    }

                                                                    else
                                                                    {
                                                                      APSLogErrorAt();
                                                                    }

                                                                    CFRelease(v92);
                                                                  }

                                                                  else
                                                                  {
                                                                    APSLogErrorAt();
                                                                  }

                                                                  return 0;
                                                                }

                                                                v8 = v53;
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }

                                                goto LABEL_415;
                                              }

                                              v8 = v42;
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

LABEL_415:
  APSLogErrorAt();
LABEL_416:
  if (gLogCategory_APReceiverAudioSessionPlatform <= 50 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  _MainAudioEnsureTornDown(a1);
  return v8;
}

void APReceiverAudioSessionPlatformFinalize(void *a1)
{
  if (gLogCategory_APReceiverAudioSessionPlatform <= 50 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  _MainAudioEnsureTornDown(a1);
  v2 = a1[7];
  if (v2)
  {
    CFRelease(v2);
  }

  CFRelease(a1);
}

void _MainAudioEnsureTornDown(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 128))
    {
      if (*(a1 + 144))
      {
        v3 = *(a1 + 136);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = ___SBufConsumerStop_block_invoke;
        block[3] = &__block_descriptor_40_e5_v8__0l;
        block[4] = a1;
        dispatch_sync(v3, block);
        if (gLogCategory_APReceiverAudioSessionPlatform <= 50 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v4 = *(a1 + 144);
        if (v4)
        {
          dispatch_source_cancel(*(a1 + 144));
          dispatch_release(v4);
          *(a1 + 144) = 0;
        }
      }

      v5 = *(a1 + 136);
      if (v5)
      {
        dispatch_release(v5);
        *(a1 + 136) = 0;
      }

      v6 = *(a1 + 120);
      if (v6)
      {
        CFRelease(v6);
        *(a1 + 120) = 0;
      }

      *(a1 + 128) = 0;
      if (gLogCategory_APReceiverAudioSessionPlatform <= 50 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    v7 = *(a1 + 192);
    if (v7)
    {
      LOBYTE(block[0]) = 0;
      AUGraphIsRunning(v7, block);
      if (LOBYTE(block[0]))
      {
        AUGraphStop(*(a1 + 192));
      }

      LOBYTE(block[0]) = 0;
      AUGraphIsInitialized(*(a1 + 192), block);
      if (LOBYTE(block[0]))
      {
        AUGraphUninitialize(*(a1 + 192));
      }

      LOBYTE(block[0]) = 0;
      AUGraphIsOpen(*(a1 + 192), block);
      if (LOBYTE(block[0]))
      {
        AUGraphClose(*(a1 + 192));
      }

      DisposeAUGraph(*(a1 + 192));
      *(a1 + 192) = 0;
    }

    *(a1 + 172) = 0;
    *(a1 + 176) = 0;
    *(a1 + 200) = 0;
    *(a1 + 208) = 0;
    *(a1 + 240) = 0;
    *(a1 + 248) = 0;
    *(a1 + 216) = 0;
    *(a1 + 224) = 0;
    *(a1 + 232) = 0;
    v8 = *(a1 + 184);
    if (v8)
    {
      dispatch_source_cancel(*(a1 + 184));
      dispatch_release(v8);
      *(a1 + 184) = 0;
    }

    *(a1 + 72) = 0;
    if (v7 && gLogCategory_APReceiverAudioSessionPlatform <= 50 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  else
  {

    APSLogErrorAt();
  }
}

uint64_t _UpdateAVAudioSessionPrefersMultiChannelAudio(uint64_t a1)
{
  v2 = 0;
  result = [*(a1 + 32) setPrefersMultichannelAudio:FigCFEqual() error:&v2];
  if (result)
  {
    if (gLogCategory_APReceiverAudioSessionPlatform <= 50)
    {
      if (gLogCategory_APReceiverAudioSessionPlatform != -1)
      {
        return LogPrintF();
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return LogPrintF();
      }
    }
  }

  else if (gLogCategory_APReceiverAudioSessionPlatform <= 60)
  {
    if (gLogCategory_APReceiverAudioSessionPlatform != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

uint64_t _ConfigureAudioUnitMaxFrames(int a1, OpaqueAudioComponentInstance *a2, AudioUnit inUnit, double a4, double a5)
{
  outData = 0;
  if (a4 <= 0.0 && a5 <= 0.0)
  {
    APSLogErrorAt();
    return 4294960591;
  }

  else
  {
    ioDataSize = 4;
    Property = AudioUnitGetProperty(inUnit, 0xEu, 0, 0, &outData, &ioDataSize);
    if (Property)
    {
      v11 = Property;
      APSLogErrorAt();
    }

    else
    {
      v9 = outData;
      if (a4 != a5)
      {
        v9 = (vcvtpd_u64_f64(outData * a4 / a5) & 0xFFFFFFE0) + 32;
      }

      inData = v9;
      if (gLogCategory_APReceiverAudioSessionPlatform <= 30 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v10 = AudioUnitSetProperty(a2, 0xEu, 0, 0, &inData, 4u);
      v11 = 0;
      if (v10)
      {
        v13 = v10;
        APSLogErrorAt();
        return v13;
      }
    }
  }

  return v11;
}

uint64_t _AudioOutputCallBack(uint64_t a1)
{
  if (!*(a1 + 232))
  {
    return 4294960587;
  }

  Audio = APReceiverAudioSessionReadAudio(*(a1 + 24));
  if (Audio)
  {
    APSLogErrorAt();
  }

  return Audio;
}

uint64_t __APReceiverSBufConsumerPushAudioSBuf_block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v4)
  {
    result = v4(v2, v3);
  }

  else
  {
    result = 4294954514;
  }

  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t _APReceiverAudioSessionPlatformGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPReceiverAudioSessionPlatformTypeID = result;
  return result;
}

void _APReceiverAudioSessionPlatformFinalize(uint64_t a1)
{
  if (a1)
  {
    if (gLogCategory_APReceiverAudioSessionPlatform <= 50 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    *(a1 + 48) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    v3 = *(a1 + 40);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 40) = 0;
    }
  }

  else
  {

    APSLogErrorAt();
  }
}

uint64_t APReceiverAudioSessionPlatformControl(void *a1, const void *a2)
{
  v12 = 0;
  if (!a1)
  {
    goto LABEL_47;
  }

  v4 = CFGetTypeID(a1);
  if (gAPReceiverAudioSessionInitOnce != -1)
  {
    dispatch_once_f(&gAPReceiverAudioSessionInitOnce, 0, _APReceiverAudioSessionGetTypeID);
  }

  if (v4 != gAPReceiverAudioSessionTypeID || !a2)
  {
LABEL_47:
    APSLogErrorAt();
    return -6705;
  }

  v5 = a1[27];
  if (!v5)
  {
    APSLogErrorAt();
    return -6718;
  }

  if (CFEqual(a2, @"RASP::FlushAudio"))
  {
    return v12;
  }

  if (CFEqual(a2, @"RASP::StartAudioIO"))
  {
    _StartAudioIO(v5, 0);
    return 0;
  }

  if (CFEqual(a2, @"RASP::StopAudioIO"))
  {
    _StopAudioIO(v5, 0);
    return 0;
  }

  if (CFEqual(a2, @"RASP::DuckAudio"))
  {
    if (!*(v5 + 208))
    {
      return v12;
    }

    CFDictionaryGetDouble();
    CFDictionaryGetDouble();
    v8 = v7;
    if (v8 > -144.0 && v8 < 0.0)
    {
      __exp10f(v8 / 20.0);
    }

    if (gLogCategory_APReceiverAudioSessionPlatform <= 50 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v9 = *(v5 + 184);
    if (v9)
    {
      dispatch_source_cancel(*(v5 + 184));
      dispatch_release(v9);
      *(v5 + 184) = 0;
    }

LABEL_42:
    CoreAudioRampParameterStart();
    return v12;
  }

  if (CFEqual(a2, @"RASP::UnduckAudio"))
  {
    if (!*(v5 + 208))
    {
      return v12;
    }

    CFDictionaryGetDouble();
    if (gLogCategory_APReceiverAudioSessionPlatform <= 50 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v10 = *(v5 + 184);
    if (v10)
    {
      dispatch_source_cancel(*(v5 + 184));
      dispatch_release(v10);
      *(v5 + 184) = 0;
    }

    goto LABEL_42;
  }

  if (CFEqual(a2, @"RASP::StartSession"))
  {
    v12 = _EnsureAudioOutputStarted(v5);
    if (v12)
    {
      APSLogErrorAt();
    }

    return v12;
  }

  if (CFEqual(a2, @"RASP::HandleAudioInterruptionBegan"))
  {
    if (gLogCategory_APReceiverAudioSessionPlatform <= 50 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    _StopAudioIO(v5, 1);
    return v12;
  }

  if (!CFEqual(a2, @"RASP::HandleAudioInterruptionEnded"))
  {
    return -6714;
  }

  if (gLogCategory_APReceiverAudioSessionPlatform <= 50 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  _StartAudioIO(v5, 1);
  return v12;
}

void _StartAudioIO(CFTypeRef *a1, char a2)
{
  CFRetain(a1);
  CFRetain(a1[2]);
  CFRetain(a1[3]);
  v4 = *(a1[2] + 2);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = ___StartAudioIO_block_invoke;
  v5[3] = &__block_descriptor_41_e5_v8__0l;
  v5[4] = a1;
  v6 = a2;
  dispatch_async(v4, v5);
}

void _StopAudioIO(CFTypeRef *a1, char a2)
{
  CFRetain(a1);
  CFRetain(a1[2]);
  CFRetain(a1[3]);
  v4 = *(a1[2] + 2);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = ___StopAudioIO_block_invoke;
  v5[3] = &__block_descriptor_41_e5_v8__0l;
  v5[4] = a1;
  v6 = a2;
  dispatch_async(v4, v5);
}

void __APReceiverAudioSessionPlatformControl_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 184);
  if (v2)
  {
    dispatch_source_cancel(*(v1 + 184));
    dispatch_release(v2);
    *(*(a1 + 32) + 184) = 0;
  }
}

void __APReceiverAudioSessionPlatformControl_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 184);
  if (v2)
  {
    dispatch_source_cancel(*(v1 + 184));
    dispatch_release(v2);
    *(*(a1 + 32) + 184) = 0;
  }
}

uint64_t _EnsureAudioOutputStarted(uint64_t a1)
{
  if (*(*(a1 + 16) + 753))
  {
    return 0;
  }

  if (*(a1 + 70))
  {
    if (!*(a1 + 232))
    {
LABEL_4:
      result = 0;
      *(a1 + 232) = 1;
      return result;
    }

    return 0;
  }

  if (!*(a1 + 128))
  {
    if (!*(a1 + 192))
    {
      APSLogErrorAt();
      return 4294960587;
    }

    if (!*(a1 + 232) && *(a1 + 48) != 103)
    {
      _StartAudioIO(a1, 0);
    }

    return 0;
  }

  if (*(a1 + 232))
  {
    return 0;
  }

  if (!*(a1 + 152))
  {
    v3 = mach_absolute_time();
    v4 = *(a1 + 80) * (v3 / UpTicksPerSecond());
    *(a1 + 152) = v4;
    *(a1 + 160) = v4;
    v5 = *(a1 + 144);
    v6 = dispatch_time(0, 10000000);
    dispatch_source_set_timer(v5, v6, 0x989680uLL, 0x7A120uLL);
    if (gLogCategory_APReceiverAudioSessionPlatform >= 51)
    {
      goto LABEL_4;
    }

    if (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }

  v7 = gLogCategory_APReceiverAudioSessionPlatform;
  *(a1 + 232) = 1;
  if (v7 > 50)
  {
    return 0;
  }

  if (v7 != -1 || (result = _LogCategory_Initialize(), result))
  {
    LogPrintF();
    return 0;
  }

  return result;
}

uint64_t APReceiverAudioSessionPlatformSetProperty(void *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5)
{
  v21 = 0;
  if (!a1)
  {
    goto LABEL_75;
  }

  v8 = CFGetTypeID(a1);
  if (gAPReceiverAudioSessionInitOnce != -1)
  {
    dispatch_once_f(&gAPReceiverAudioSessionInitOnce, 0, _APReceiverAudioSessionGetTypeID);
  }

  if (v8 != gAPReceiverAudioSessionTypeID || !a3)
  {
LABEL_75:
    APSLogErrorAt();
    return -6705;
  }

  v9 = a1[27];
  if (!v9)
  {
    APSLogErrorAt();
    return -6718;
  }

  if (CFEqual(a3, @"RASP::AudioMode"))
  {
    _UpdateAVAudioSessionAudioMode_5424(v9, a5);
    return v21;
  }

  if (CFEqual(a3, @"RASP::PrefersMultiChannel"))
  {
    _UpdateAVAudioSessionPrefersMultiChannelAudio(v9);
    return v21;
  }

  if (!CFEqual(a3, @"RASP::PreferredAudioFormat"))
  {
    if (CFEqual(a3, @"RASP::Skew"))
    {
      if (!*(v9 + 248))
      {
        return v21;
      }

      v11 = CFGetInt64();
      v21 = AudioUnitSetParameter(*(v9 + 248), 0, 0, 0, (v11 + *(v9 + 80)) / *(v9 + 80), 0);
      v12 = gLogCategory_APReceiverAudioSessionPlatform;
      if (gLogCategory_APReceiverAudioSessionPlatform > 20)
      {
        v13 = 0;
      }

      else
      {
        if (gLogCategory_APReceiverAudioSessionPlatform != -1)
        {
LABEL_36:
          if (v12 != -1 || _LogCategory_Initialize())
          {
            goto LABEL_56;
          }

          return v21;
        }

        v13 = _LogCategory_Initialize() != 0;
        v12 = gLogCategory_APReceiverAudioSessionPlatform;
      }

      if ((v11 - 6) < 0xFFFFFFF5)
      {
        v13 = 1;
      }

      if (!v13 || v12 > 40)
      {
        return v21;
      }

      goto LABEL_36;
    }

    if (CFEqual(a3, @"RASP::VolumeLinear"))
    {
      CFGetDouble();
      v15 = v14;
      if (gLogCategory_APReceiverAudioSessionPlatform <= 50 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      if (!*(v9 + 70))
      {
        v19 = *(v9 + 208);
        if (!v19 || !*(v9 + 68))
        {
          return v21;
        }

        v21 = AudioUnitSetParameter(v19, 0, 2u, 0, v15, 0);
        if (!v21)
        {
          *(v9 + 236) = v15;
          return v21;
        }

        goto LABEL_79;
      }

      goto LABEL_80;
    }

    if (CFEqual(a3, @"RASP::MuteStream"))
    {
      v16 = CFGetInt64();
      v17 = 0.0;
      if (!v16)
      {
        v17 = *(v9 + 236);
      }

      if (gLogCategory_APReceiverAudioSessionPlatform <= 50 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      if (!*(v9 + 70))
      {
        v20 = *(v9 + 208);
        if (!v20)
        {
          return v21;
        }

        if (!*(v9 + 68))
        {
          return v21;
        }

        v21 = AudioUnitSetParameter(v20, 0, 2u, 0, v17, 0);
        if (!v21)
        {
          return v21;
        }

LABEL_79:
        APSLogErrorAt();
        return v21;
      }

LABEL_80:
      APSLogErrorAt();
      return APSSignalErrorAt();
    }

    return -6714;
  }

  v22 = 0;
  if (!IsAppleTV())
  {
    return v21;
  }

  if (FigCFDictionaryGetInt64IfPresent())
  {
    if ([*(v9 + 32) setPreferredOutputNumberOfChannels:0 error:&v22])
    {
      if (gLogCategory_APReceiverAudioSessionPlatform <= 50 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
      {
LABEL_26:
        LogPrintF();
      }
    }

    else if (gLogCategory_APReceiverAudioSessionPlatform <= 60 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
    {
      goto LABEL_26;
    }
  }

  if (!FigCFDictionaryGetInt64IfPresent())
  {
    return v21;
  }

  if ([*(v9 + 32) setPreferredHardwareFormat:0 error:&v22])
  {
    if (gLogCategory_APReceiverAudioSessionPlatform <= 50 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
    {
LABEL_56:
      LogPrintF();
    }
  }

  else if (gLogCategory_APReceiverAudioSessionPlatform <= 60 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
  {
    goto LABEL_56;
  }

  return v21;
}

uint64_t __APAdvertiserRapportManagerGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  gAPAdvertiserRapportManagerTypeID = result;
  return result;
}

void _APAdvertiserRapportManagerFinalize(void *a1)
{
  if (gLogCategory_APAdvertiserRapportManager <= 50 && (gLogCategory_APAdvertiserRapportManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v2 = a1[6];
  if (v2)
  {
    CFRelease(v2);
    a1[6] = 0;
  }

  v3 = a1[5];
  if (v3)
  {
    dispatch_release(v3);
    a1[5] = 0;
  }

  v4 = a1[4];
  if (v4)
  {
    dispatch_release(v4);
    a1[4] = 0;
  }
}

void __APAdvertiserRapportManagerCreate_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(v2 + 81) = APSSettingsGetInt64() != 0;
  APAdvertiserRapportManager_update(v2);
  *(*(*(a1 + 32) + 8) + 24) = 0;
}

void APAdvertiserRapportManager_update(uint64_t a1)
{
  if (gLogCategory_APAdvertiserRapportManager <= 20 && (gLogCategory_APAdvertiserRapportManager != -1 || _LogCategory_Initialize()))
  {
    if (*(a1 + 81))
    {
      v2 = "yes";
    }

    else
    {
      v2 = "no";
    }

    v8 = v2;
    v9 = *(a1 + 56);
    LogPrintF();
  }

  if (!*(a1 + 81))
  {
LABEL_11:
    if (gLogCategory_APAdvertiserRapportManager <= 40 && (gLogCategory_APAdvertiserRapportManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    [*(a1 + 64) deregisterRequestID:{@"com.apple.airplay.discovery.getinfo", v8, v9}];
    [*(a1 + 64) invalidate];

    *(a1 + 64) = 0;
    [*(a1 + 72) invalidate];

    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    return;
  }

  if (*(a1 + 56) != 1)
  {
    if (*(a1 + 56))
    {
      return;
    }

    goto LABEL_11;
  }

  if (!*(a1 + 80))
  {
    if (gLogCategory_APAdvertiserRapportManager <= 40 && (gLogCategory_APAdvertiserRapportManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v3 = objc_alloc_init(MEMORY[0x277D441F8]);
    *(a1 + 72) = v3;
    [v3 setControlFlags:{objc_msgSend(v3, "controlFlags") | 0x1000}];
    [*(a1 + 72) setControlFlags:{objc_msgSend(*(a1 + 72), "controlFlags") | 2}];
    [*(a1 + 72) setServiceType:@"com.apple.airplay.discovery.service"];
    [*(a1 + 72) activate];
    v4 = objc_alloc_init(MEMORY[0x277D44160]);
    *(a1 + 64) = v4;
    if (v4)
    {
      v5 = *(a1 + 16);
      [v4 setControlFlags:{objc_msgSend(v4, "controlFlags") | 0x1000}];
      v6 = *(a1 + 64);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __APAdvertiserRapportManager_startAdvertising_block_invoke;
      v11[3] = &__block_descriptor_40_e88_v32__0__NSDictionary_8__NSDictionary_16___v____NSDictionary___NSDictionary___NSError__24l;
      v11[4] = v5;
      [v6 registerRequestID:@"com.apple.airplay.discovery.getinfo" options:0 handler:v11];
      v7 = *(a1 + 64);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __APAdvertiserRapportManager_startAdvertising_block_invoke_3;
      v10[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
      v10[4] = v5;
      [v7 activateWithCompletion:v10];
    }

    else
    {
      APSLogErrorAt();
    }
  }
}

void sub_23EA4C5F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t _APAdvertiserRapportManager_lookupAndRetainActiveManagerWithKey(uint64_t a1)
{
  if (_APAdvertiserRapportManager_getActiveManagers_once != -1)
  {
    dispatch_once(&_APAdvertiserRapportManager_getActiveManagers_once, &__block_literal_global_10);
  }

  v2 = _APAdvertiserRapportManager_getActiveManagers_table;

  return MEMORY[0x282112740](v2, a1);
}

void __APAdvertiserRapportManagerInvalidate_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(v1 + 24) = 1;
  APAdvertiserRapportManager_stop(v1);
  if (*(v1 + 16))
  {
    if (_APAdvertiserRapportManager_getActiveManagers_once != -1)
    {
      dispatch_once(&_APAdvertiserRapportManager_getActiveManagers_once, &__block_literal_global_10);
    }

    FigCFWeakReferenceTableRemoveValue();
    *(v1 + 16) = 0;
  }
}

void APAdvertiserRapportManager_stop(uint64_t a1)
{
  if (gLogCategory_APAdvertiserRapportManager <= 40 && (gLogCategory_APAdvertiserRapportManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (*(a1 + 56))
  {
    *(a1 + 56) = 0;

    APAdvertiserRapportManager_update(a1);
  }
}

void __APAdvertiserRapportManagerSetProperty_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  if (CFEqual(*(a1 + 48), @"deviceID"))
  {
    if (v3 && (v4 = CFGetTypeID(v3), v4 == CFStringGetTypeID()))
    {
      v5 = *(v2 + 48);
      *(v2 + 48) = v3;
      CFRetain(v3);
      if (v5)
      {
        CFRelease(v5);
      }

      v6 = 0;
    }

    else
    {
      APSLogErrorAt();
      v6 = -6705;
    }
  }

  else
  {
    v6 = -72411;
  }

  *(*(*(a1 + 32) + 8) + 24) = v6;
}

uint64_t APAdvertiserRapportManagerSetMode(uint64_t a1, __int16 a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v2 = *(a1 + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __APAdvertiserRapportManagerSetMode_block_invoke;
  block[3] = &unk_278C607A8;
  block[4] = &v7;
  block[5] = a1;
  v6 = a2;
  dispatch_sync(v2, block);
  v3 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v3;
}

void __APAdvertiserRapportManagerSetMode_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(v2 + 56);
  if (v4 == v3)
  {
    goto LABEL_18;
  }

  if (gLogCategory_APAdvertiserRapportManager > 40)
  {
    goto LABEL_6;
  }

  if (gLogCategory_APAdvertiserRapportManager != -1)
  {
    goto LABEL_4;
  }

  if (_LogCategory_Initialize())
  {
    v4 = *(v2 + 56);
LABEL_4:
    APAdvertiserRapportManager_stringForMode(v4);
    APAdvertiserRapportManager_stringForMode(v3);
    LogPrintF();
  }

LABEL_6:
  if (v3 == 1)
  {
    if (gLogCategory_APAdvertiserRapportManager <= 40 && (gLogCategory_APAdvertiserRapportManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (*(v2 + 56) == 1)
    {
      APSLogErrorAt();
    }

    else
    {
      *(v2 + 56) = 1;
      APAdvertiserRapportManager_update(v2);
    }

    goto LABEL_18;
  }

  if (!v3)
  {
    APAdvertiserRapportManager_stop(v2);
LABEL_18:
    v5 = 0;
    goto LABEL_21;
  }

  if (gLogCategory_APAdvertiserRapportManager <= 90 && (gLogCategory_APAdvertiserRapportManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5 = -72413;
LABEL_21:
  *(*(*(a1 + 32) + 8) + 24) = v5;
}