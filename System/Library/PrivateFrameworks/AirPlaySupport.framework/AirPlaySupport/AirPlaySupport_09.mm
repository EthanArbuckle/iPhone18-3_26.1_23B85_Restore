uint64_t APSAudioFormatDescriptionGetFormatID(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 24);
  }

  APSLogErrorAt(a1);
  return 0;
}

uint64_t APSAudioFormatDescriptionGetFramesPerPacket(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 36);
  }

  APSLogErrorAt(a1);
  return 0;
}

uint64_t APSAudioFormatDescriptionGetChannelCount(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 44);
  }

  APSLogErrorAt(a1);
  return 0;
}

uint64_t APSAudioFormatDescriptionGetBitsPerChannel(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 48);
  }

  APSLogErrorAt(a1);
  return 0;
}

uint64_t APSAudioFormatDescriptionCopyFigEndpointStreamAudioFormatDescription(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 && a3)
  {
    v3 = *(a2 + 56);
    v4 = FigEndpointStreamAudioFormatDescriptionCreate();
    v5 = v4;
    if (v4)
    {
      APSLogErrorAt(v4);
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  return v5;
}

uint64_t APSAPACApplyIndependentDecodableDependancy(opaqueCMSampleBuffer *a1)
{
  cf = 0;
  if (!a1)
  {
    APSLogErrorAt(0);
    return 0;
  }

  FormatDescription = CMSampleBufferGetFormatDescription(a1);
  if (!FormatDescription)
  {
    return 0;
  }

  v3 = APSAudioFormatDescriptionCreateWithCMFormatDescription(*MEMORY[0x277CBECE8], FormatDescription, &cf);
  if (v3)
  {
    v10 = v3;
    APSLogErrorAt(v3);
    SInt16 = 0;
    goto LABEL_19;
  }

  v4 = cf;
  if (cf)
  {
    v5 = *(cf + 6);
    if (v5 != 1634754915 && v5 != 1902211171 && v5 != 1667330147)
    {
      SInt16 = 0;
      v10 = 0;
LABEL_20:
      CFRelease(v4);
LABEL_21:
      if (SInt16)
      {
        CFRelease(SInt16);
      }

      return v10;
    }

    SInt16 = FigCFNumberCreateSInt16();
    if (SInt16)
    {
      v8 = *MEMORY[0x277CBED10];
      CMSetAttachment(a1, *MEMORY[0x277CC0620], SInt16, 1u);
      CMSetAttachment(a1, *MEMORY[0x277CC06A0], v8, 1u);
      if (gLogCategory_APSAPACSupport <= 10 && (gLogCategory_APSAPACSupport != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v10 = 0;
    }

    else
    {
      APSLogErrorAt(0);
      v10 = 4294954510;
    }

LABEL_19:
    v4 = cf;
    if (!cf)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  result = APSLogErrorAt(0);
  __break(1u);
  return result;
}

uint64_t APSAudioFormatDescriptionListGetTypeID()
{
  if (APSAudioFormatDescriptionListGetTypeID_sInitOnce != -1)
  {
    dispatch_once_f(&APSAudioFormatDescriptionListGetTypeID_sInitOnce, &APSAudioFormatDescriptionListGetTypeID_sTypeID, audioFormatList_getTypeID);
  }

  return APSAudioFormatDescriptionListGetTypeID_sTypeID;
}

uint64_t audioFormatList_getTypeID(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

__CFString *audioFormatList_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  v3 = Mutable;
  if (Mutable)
  {
    CFStringAppendFormat(Mutable, 0, @"<APSAudioFormatDescriptionList %p> %@", a1, *(a1 + 16));
  }

  else
  {
    APSLogErrorAt(0);
  }

  return v3;
}

BOOL audioFormatList_Equal(const void *a1, const void *a2)
{
  v15 = 0;
  theArray = 0;
  if (!a1)
  {
    goto LABEL_20;
  }

  v4 = CFGetTypeID(a1);
  if (APSAudioFormatDescriptionListGetTypeID_sInitOnce != -1)
  {
    dispatch_once_f(&APSAudioFormatDescriptionListGetTypeID_sInitOnce, &APSAudioFormatDescriptionListGetTypeID_sTypeID, audioFormatList_getTypeID);
  }

  if (v4 != APSAudioFormatDescriptionListGetTypeID_sTypeID)
  {
LABEL_20:
    v6 = 0;
LABEL_22:
    APSLogErrorAt(v6);
    goto LABEL_23;
  }

  if (!a2)
  {
    goto LABEL_21;
  }

  v5 = CFGetTypeID(a2);
  if (APSAudioFormatDescriptionListGetTypeID_sInitOnce != -1)
  {
    dispatch_once_f(&APSAudioFormatDescriptionListGetTypeID_sInitOnce, &APSAudioFormatDescriptionListGetTypeID_sTypeID, audioFormatList_getTypeID);
  }

  if (v5 != APSAudioFormatDescriptionListGetTypeID_sTypeID)
  {
LABEL_21:
    v6 = 0;
    goto LABEL_22;
  }

  v6 = APSAudioFormatDescriptionListCopyAudioFormatDescriptionsArray(a1, &theArray);
  if (v6)
  {
    goto LABEL_22;
  }

  v6 = APSAudioFormatDescriptionListCopyAudioFormatDescriptionsArray(a2, &v15);
  if (v6)
  {
    goto LABEL_22;
  }

  Count = CFArrayGetCount(theArray);
  if (Count == CFArrayGetCount(v15))
  {
    v8 = *MEMORY[0x277CBECE8];
    MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x277CBECE8], 0, theArray);
    if (MutableCopy)
    {
      v10 = MutableCopy;
      v11 = CFArrayCreateMutableCopy(v8, 0, v15);
      if (v11)
      {
        v12 = v11;
        v17.length = CFArrayGetCount(v10);
        v17.location = 0;
        CFArraySortValues(v10, v17, audioFormatList_objComparatorX, 0);
        v18.length = CFArrayGetCount(v12);
        v18.location = 0;
        CFArraySortValues(v12, v18, audioFormatList_objComparatorX, 0);
        v13 = CFEqual(v10, v12) != 0;
        CFRelease(v10);
        CFRelease(v12);
        goto LABEL_15;
      }

      CFRelease(v10);
    }
  }

LABEL_23:
  v13 = 0;
LABEL_15:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  return v13;
}

uint64_t APSAudioFormatDescriptionListCopyAudioFormatDescriptionsArray(uint64_t a1, void *a2)
{
  if (a1 && a2)
  {
    v3 = *(a1 + 16);
    v4 = FigCFSetCopyValuesAsCFArray();
    v5 = v4;
    if (v4)
    {
      APSLogErrorAt(v4);
    }

    else
    {
      *a2 = 0;
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  return v5;
}

uint64_t audioFormatList_objComparatorX(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 64);
    if (a2)
    {
LABEL_3:
      v3 = *(a2 + 64);
      goto LABEL_4;
    }
  }

  else
  {
    v2 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
LABEL_4:
  v4 = v2 > v3;
  if (v2 >= v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (v4)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

void audioFormatList_Finalize(void *a1)
{
  if (gLogCategory_APSAudioFormatDescriptionList <= 30 && (gLogCategory_APSAudioFormatDescriptionList != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
    a1[3] = 0;
  }

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
    a1[4] = 0;
  }

  v5 = a1[6];
  if (v5)
  {
    CFRelease(v5);
    a1[6] = 0;
  }

  v6 = a1[5];
  if (v6)
  {
    CFRelease(v6);
    a1[5] = 0;
  }
}

uint64_t APSAudioFormatDescriptionListCreate(const __CFAllocator *a1, void *a2)
{
  if (a2)
  {
    if (APSAudioFormatDescriptionListGetTypeID_sInitOnce != -1)
    {
      dispatch_once_f(&APSAudioFormatDescriptionListGetTypeID_sInitOnce, &APSAudioFormatDescriptionListGetTypeID_sTypeID, audioFormatList_getTypeID);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v5 = Instance;
      Instance[2] = 0u;
      Instance[3] = 0u;
      Instance[1] = 0u;
      Mutable = CFSetCreateMutable(a1, 0, MEMORY[0x277CBF158]);
      *(v5 + 2) = Mutable;
      if (Mutable && (v7 = CFSetCreateMutable(a1, 0, MEMORY[0x277CBF158]), (*(v5 + 6) = v7) != 0) && (v8 = CFSetCreateMutable(a1, 0, MEMORY[0x277CBF158]), (*(v5 + 5) = v8) != 0))
      {
        result = 0;
        *(v5 + 14) = 0;
        *(v5 + 30) = 0;
        *(v5 + 3) = 0;
        *(v5 + 4) = 0;
        *a2 = v5;
      }

      else
      {
        APSLogErrorAt(0);
        CFRelease(v5);
        return 4294954510;
      }
    }

    else
    {
      APSLogErrorAt(0);

      return FigSignalErrorAtGM();
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  return result;
}

void APSAudioFormatDescriptionListCopyDebugString(uint64_t a1, void *a2)
{
  cf = 0;
  theArray = 0;
  if (!a1 || !a2)
  {
    APSLogErrorAt(0);
    goto LABEL_12;
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  v5 = Mutable;
  if (Mutable)
  {
    Mutable = APSAudioFormatDescriptionListCopyAudioFormatDescriptionsArray(a1, &theArray);
    if (!Mutable)
    {
      Count = CFArrayGetCount(theArray);
      if (Count >= 1)
      {
        v7 = Count;
        v8 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v8);
          APSAudioFormatDescriptionCopyDebugString(ValueAtIndex, &cf);
          Mutable = CFStringAppendF();
          if (Mutable)
          {
            goto LABEL_20;
          }

          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }
        }

        while (v7 != ++v8);
      }

      *a2 = v5;
LABEL_12:
      v5 = 0;
      goto LABEL_13;
    }
  }

LABEL_20:
  APSLogErrorAt(Mutable);
LABEL_13:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

uint64_t APSAudioFormatDescriptionListCreateWithAudioFormatDescriptionArray(const __CFAllocator *a1, const __CFArray *a2, CFTypeRef *a3)
{
  cf = 0;
  if (a3)
  {
    v5 = APSAudioFormatDescriptionListCreate(a1, &cf);
    if (v5)
    {
      v12 = v5;
LABEL_17:
      APSLogErrorAt(v5);
    }

    else
    {
      v6 = 0;
      while (1)
      {
        if (a2)
        {
          Count = CFArrayGetCount(a2);
        }

        else
        {
          Count = 0;
        }

        if (v6 >= Count)
        {
          v12 = 0;
          *a3 = cf;
          return v12;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(a2, v6);
        if (!ValueAtIndex)
        {
          break;
        }

        v9 = ValueAtIndex;
        v10 = CFGetTypeID(ValueAtIndex);
        if (APSAudioFormatDescriptionGetTypeID_sInitOnce != -1)
        {
          dispatch_once_f(&APSAudioFormatDescriptionGetTypeID_sInitOnce, &APSAudioFormatDescriptionGetTypeID_sTypeID, audioFormat_getTypeID);
        }

        if (v10 != APSAudioFormatDescriptionGetTypeID_sTypeID)
        {
          break;
        }

        v5 = APSAudioFormatDescriptionListAddFormat(cf, v9);
        ++v6;
        if (v5)
        {
          v12 = v5;
          goto LABEL_17;
        }
      }

      APSLogErrorAt(0);
      v12 = 4294954516;
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  return v12;
}

uint64_t APSAudioFormatDescriptionListAddFormat(uint64_t a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  v4 = *(a2 + 44);
  if (*(a1 + 56) > v4)
  {
    v4 = *(a1 + 56);
  }

  *(a1 + 56) = v4;
  v5 = *(a2 + 16);
  if (v5 == 44100.0)
  {
    *(a1 + 61) = 1;
  }

  else if (v5 == 48000.0)
  {
    *(a1 + 60) = 1;
  }

  v6 = *(a2 + 56);
  v7 = *MEMORY[0x277CBECE8];
  UInt32 = FigCFNumberCreateUInt32();
  if (!UInt32)
  {
    APSLogErrorAt(0);
    return 4294954510;
  }

  v9 = UInt32;
  CFSetAddValue(*(a1 + 48), UInt32);
  v10 = *(a2 + 24);
  v11 = FigCFNumberCreateUInt32();
  if (!v11)
  {
    APSLogErrorAt(0);
    v18 = 4294954510;
    goto LABEL_22;
  }

  v12 = v11;
  CFSetAddValue(*(a1 + 40), v11);
  v13 = *(a1 + 32);
  if (!v13)
  {
    *(a1 + 32) = CFRetain(a2);
    goto LABEL_21;
  }

  v14 = *(a2 + 44);
  v15 = *(v13 + 44);
  if (v14 <= v15)
  {
    if (v14 != v15)
    {
      goto LABEL_21;
    }

    if (v14 > 2)
    {
      v16 = *(v13 + 56);
      FullRangeChannelCountFromChannelLayoutTag = APSAudioFormatGetFullRangeChannelCountFromChannelLayoutTag(*(a2 + 56));
      if (FullRangeChannelCountFromChannelLayoutTag <= APSAudioFormatGetFullRangeChannelCountFromChannelLayoutTag(v16))
      {
        goto LABEL_21;
      }

      v13 = *(a1 + 32);
      *(a1 + 32) = a2;
      CFRetain(a2);
      if (!v13)
      {
        goto LABEL_21;
      }

      goto LABEL_14;
    }

    if (*(a2 + 16) <= *(v13 + 16))
    {
      goto LABEL_21;
    }
  }

  *(a1 + 32) = a2;
  CFRetain(a2);
LABEL_14:
  CFRelease(v13);
LABEL_21:
  CFSetAddValue(*(a1 + 16), a2);
  CFRelease(v12);
  v18 = 0;
LABEL_22:
  CFRelease(v9);
  return v18;
}

uint64_t APSAudioFormatDescriptionListContainsFormat(uint64_t a1, const void *a2)
{
  if (a1 && a2)
  {
    v2 = *(a1 + 16);

    return CFSetContainsValue(v2, a2);
  }

  else
  {
    APSLogErrorAt(0);
    return 0;
  }
}

uint64_t APSAudioFormatDescriptionListAddListToSource(uint64_t a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  v4 = *MEMORY[0x277CBECE8];
  MutableCopy = CFSetCreateMutableCopy(*MEMORY[0x277CBECE8], 0, *(a1 + 16));
  if (!MutableCopy)
  {
    APSLogErrorAt(0);
    return 4294954510;
  }

  v6 = MutableCopy;
  v7 = *(a2 + 16);
  if (v7)
  {
    CFSetApplyFunction(v7, apsCFUtils_setAddSetApplier, v6);
  }

  v8 = *(a1 + 16);
  *(a1 + 16) = v6;
  CFRetain(v6);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = CFSetCreateMutableCopy(v4, 0, *(a1 + 40));
  if (!v9)
  {
    APSLogErrorAt(0);
    CFRelease(v6);
    return 4294954510;
  }

  v10 = v9;
  v11 = *(a2 + 40);
  if (v11)
  {
    CFSetApplyFunction(v11, apsCFUtils_setAddSetApplier, v10);
  }

  v12 = *(a1 + 40);
  *(a1 + 40) = v10;
  CFRetain(v10);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(a1 + 56);
  if (v13 <= *(a2 + 56))
  {
    v13 = *(a2 + 56);
  }

  *(a1 + 56) = v13;
  if (*(a1 + 61) || *(a2 + 61))
  {
    *(a1 + 61) = 1;
  }

  if (*(a1 + 60) || *(a2 + 60))
  {
    *(a1 + 60) = 1;
  }

  CFRelease(v6);
  CFRelease(v10);
  return 0;
}

uint64_t APSAudioFormatDescriptionListSupports44kHz(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 61);
  }

  APSLogErrorAt(a1);
  return 0;
}

uint64_t APSAudioFormatDescriptionListSupports48kHz(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 60);
  }

  APSLogErrorAt(a1);
  return 0;
}

uint64_t APSAudioFormatDescriptionListCreateCopy(const __CFAllocator *a1, uint64_t a2, void *a3)
{
  cf = 0;
  if (a3 && a2)
  {
    v5 = APSAudioFormatDescriptionListCreate(a1, &cf);
    if (v5)
    {
      v21 = v5;
      APSLogErrorAt(v5);
      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      v6 = cf;
      v7 = *(cf + 2);
      v8 = *(a2 + 16);
      if (v7)
      {
        v9 = v8 == 0;
      }

      else
      {
        v9 = 1;
      }

      if (!v9)
      {
        CFSetApplyFunction(v8, apsCFUtils_setAddSetApplier, v7);
        v6 = cf;
      }

      v10 = v6[5];
      v11 = *(a2 + 40);
      if (v10)
      {
        v12 = v11 == 0;
      }

      else
      {
        v12 = 1;
      }

      if (!v12)
      {
        CFSetApplyFunction(v11, apsCFUtils_setAddSetApplier, v10);
        v6 = cf;
      }

      v13 = v6[6];
      v14 = *(a2 + 48);
      if (v13)
      {
        v15 = v14 == 0;
      }

      else
      {
        v15 = 1;
      }

      if (!v15)
      {
        CFSetApplyFunction(v14, apsCFUtils_setAddSetApplier, v13);
      }

      v16 = *(a2 + 24);
      if (v16)
      {
        v17 = *(cf + 3);
        Value = CFSetGetValue(*(cf + 2), v16);
        *(cf + 3) = Value;
        if (Value)
        {
          CFRetain(Value);
        }

        if (v17)
        {
          CFRelease(v17);
        }
      }

      v19 = *(cf + 4);
      v20 = CFSetGetValue(*(cf + 2), *(a2 + 32));
      *(cf + 4) = v20;
      if (v20)
      {
        CFRetain(v20);
      }

      if (v19)
      {
        CFRelease(v19);
      }

      v21 = 0;
      v22 = cf;
      *(cf + 14) = *(a2 + 56);
      v22[30] = *(a2 + 60);
      *a3 = v22;
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  return v21;
}

uint64_t APSAudioFormatDescriptionListCreateIntersectionList(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v14 = 0;
  cf = 0;
  if (!a1)
  {
    APSLogErrorAt(0);
    return -12780;
  }

  if (!a2 || !a3)
  {
    APSLogErrorAt(0);
    v8 = -12780;
LABEL_11:
    v14 = v8;
    goto LABEL_13;
  }

  APSAudioFormatDescriptionListCreate(*MEMORY[0x277CBECE8], &cf);
  if (!cf)
  {
    APSLogErrorAt(0);
    v8 = -12786;
    goto LABEL_11;
  }

  v6 = *(a1 + 16);
  v9[0] = 0;
  v10 = *(a2 + 16);
  v11 = cf;
  v12 = &v14;
  CFSetApplyFunction(v6, audioFormatList_createFilteredListApplier, v9);
  if (!v14)
  {
    *a3 = cf;
    return v14;
  }

  APSLogErrorAt(v14);
LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  return v14;
}

uint64_t audioFormatList_createFilteredListApplier(uint64_t value, unsigned __int8 *a2)
{
  v3 = **(a2 + 3);
  if (!v3)
  {
    v4 = value;
    value = CFSetContainsValue(*(a2 + 1), value);
    if (value == *a2)
    {
      v3 = 0;
    }

    else
    {
      value = APSAudioFormatDescriptionListAddFormat(*(a2 + 2), v4);
      v3 = value;
      if (value)
      {
        value = APSLogErrorAt(value);
      }
    }
  }

  **(a2 + 3) = v3;
  return value;
}

uint64_t APSAudioFormatDescriptionListCreateRelativeComplementList(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v13 = 0;
  cf = 0;
  if (a1 && a2 && a3)
  {
    APSAudioFormatDescriptionListCreate(*MEMORY[0x277CBECE8], &cf);
    v6 = *(a1 + 16);
    v8[0] = 1;
    v9 = *(a2 + 16);
    v10 = cf;
    v11 = &v13;
    CFSetApplyFunction(v6, audioFormatList_createFilteredListApplier, v8);
    if (v13)
    {
      APSLogErrorAt(v13);
      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      *a3 = cf;
    }
  }

  else
  {
    APSLogErrorAt(0);
    return -12780;
  }

  return v13;
}

uint64_t APSAudioFormatDescriptionListCopyChannelLayoutTags(uint64_t a1, void *a2)
{
  if (a1 && a2)
  {
    v3 = *(a1 + 48);
    if (v3)
    {
      v4 = CFRetain(v3);
    }

    else
    {
      v4 = 0;
    }

    result = 0;
    *a2 = v4;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  return result;
}

uint64_t APSAudioFormatDescriptionListCopyChannelLayoutTagsDataArray(uint64_t a1, CFMutableArrayRef *a2)
{
  v11 = 0;
  if (a1 && a2)
  {
    v4 = *MEMORY[0x277CBECE8];
    Count = CFSetGetCount(*(a1 + 48));
    Mutable = CFArrayCreateMutable(v4, Count, MEMORY[0x277CBF128]);
    if (Mutable)
    {
      v7 = Mutable;
      v8 = *(a1 + 48);
      context[0] = v7;
      context[1] = &v11;
      CFSetApplyFunction(v8, audioFormatList_copyChannelLayoutTagsDataArrayApplier, context);
      result = v11;
      if (v11)
      {
        APSLogErrorAt(v11);
        CFRelease(v7);
        return v11;
      }

      else
      {
        *a2 = v7;
      }
    }

    else
    {
      APSLogErrorAt(0);
      return 4294954510;
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  return result;
}

void audioFormatList_copyChannelLayoutTagsDataArrayApplier(uint64_t a1, uint64_t *a2)
{
  v3 = *a2[1];
  if (!v3)
  {
    FigCFNumberGetUInt32();
    v4 = *a2;
    appended = CFArrayAppendBytes();
    v3 = appended;
    if (appended)
    {
      APSLogErrorAt(appended);
    }
  }

  *a2[1] = v3;
}

uint64_t APSAudioFormatDescriptionListGetDefaultFormat(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 24);
  }

  APSLogErrorAt(a1);
  return 0;
}

uint64_t APSAudioFormatDescriptionListSetDefaultFormat(uint64_t a1, CFTypeRef cf)
{
  if (a1 && cf)
  {
    v2 = *(a1 + 24);
    *(a1 + 24) = cf;
    CFRetain(cf);
    if (v2)
    {
      CFRelease(v2);
    }

    return 0;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294954516;
  }
}

uint64_t APSAudioFormatDescriptionListCopyRichestFormat(uint64_t a1, void *a2)
{
  if (a1 && a2)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = CFRetain(v3);
    }

    else
    {
      v4 = 0;
    }

    result = 0;
    *a2 = v4;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  return result;
}

uint64_t APSAudioFormatDescriptionListGetLegacyFormatMask(uint64_t a1)
{
  theArray = 0;
  v1 = APSAudioFormatDescriptionListCopyAudioFormatDescriptionsArray(a1, &theArray);
  if (v1)
  {
    APSLogErrorAt(v1);
    goto LABEL_12;
  }

  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
LABEL_12:
    v5 = 0;
    goto LABEL_13;
  }

  v3 = Count;
  v4 = 0;
  v5 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v4);
    if (ValueAtIndex)
    {
      v7 = ValueAtIndex[8];
      if (v7 >= 0x40)
      {
        v8 = 0;
      }

      else
      {
        v8 = 1 << v7;
      }
    }

    else
    {
      APSLogErrorAt(0);
      v8 = 0;
    }

    v5 |= v8;
    ++v4;
  }

  while (v3 != v4);
LABEL_13:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v5;
}

CFIndex APSAudioFormatDescriptionListGetFormatCount(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 16);

    return CFSetGetCount(v2);
  }

  else
  {
    APSLogErrorAt(a1);
    return 0;
  }
}

uint64_t APSAudioFormatDescriptionListGetMaxChannelCount(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 56);
  }

  APSLogErrorAt(a1);
  return 0;
}

uint64_t APSAudioFormatDescriptionListSupportsFormatID(uint64_t a1)
{
  if (a1 && (v2 = *MEMORY[0x277CBECE8], (UInt32 = FigCFNumberCreateUInt32()) != 0))
  {
    v4 = UInt32;
    v5 = CFSetContainsValue(*(a1 + 40), UInt32);
    CFRelease(v4);
    return v5;
  }

  else
  {
    APSLogErrorAt(0);
    return 0;
  }
}

uint64_t APSAudioFormatDescriptionListFindCompatibleTransportFromPCMAndSetDefault(uint64_t a1, uint64_t a2, char **a3)
{
  Count = CFSetGetCount(*(a1 + 16));
  v6 = malloc_type_calloc(Count, 8uLL, 0x2004093837F09uLL);
  CFSetGetValues(*(a1 + 16), v6);
  for (i = 0; i < CFSetGetCount(*(a1 + 16)); ++i)
  {
    v8 = v6[i];
    if (v8)
    {
      v9 = v8 + 16;
    }

    else
    {
      APSLogErrorAt(0);
      v9 = 0;
    }

    if (gLogCategory_APSAudioFormatDescriptionList <= 30 && (gLogCategory_APSAudioFormatDescriptionList != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (*v9 == *a2)
    {
      v10 = *(v9 + 8);
      if ((!v10 || v10 == *(a2 + 32)) && *(v9 + 7) == *(a2 + 28))
      {
        APSAudioFormatDescriptionListSetDefaultFormat(a1, v8);
        *a3 = v8;
        break;
      }
    }
  }

  free(v6);
  if (i >= CFSetGetCount(*(a1 + 16)))
  {
    return 4294960562;
  }

  else
  {
    return 0;
  }
}

uint64_t APSTXTRecordUtilsCopyCFStringFromTXTRecord(const __CFString *a1, CFDataRef theData, CFStringRef *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a1 && theData)
  {
    valueLen = 0;
    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(theData);
    buffer[0] = 0;
    CFStringGetCString(a1, buffer, 256, 0x8000100u);
    ValuePtr = TXTRecordGetValuePtr(Length, BytePtr, buffer, &valueLen);
    if (ValuePtr)
    {
      v9 = ValuePtr;
      valueLen = strnlen(ValuePtr, valueLen);
      v10 = CFStringCreateWithBytes(0, v9, valueLen, 0x8000100u, 0);
      if (v10)
      {
        v11 = v10;
        result = 0;
        *a3 = v11;
      }

      else
      {
        APSLogErrorAt(0);
        result = 4294960554;
      }
    }

    else
    {
      result = 4294960569;
    }
  }

  else
  {
    APSLogErrorAt(0);
    result = 4294960591;
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t APSTransportMessageGetRetransmitRequest(OpaqueCMBlockBuffer *a1, _WORD *a2)
{
  if (CMBlockBufferGetDataLength(a1) <= 3)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  else
  {
    v4 = CMBlockBufferCopyDataBytes(a1, 0, 4uLL, a2);
    v5 = v4;
    if (v4)
    {
      APSLogErrorAt(v4);
    }

    else
    {
      *a2 = bswap32(*a2) >> 16;
      a2[1] = bswap32(a2[1]) >> 16;
    }
  }

  return v5;
}

uint64_t APSTransportMessageSetRetransmitResponseFutile(OpaqueCMBlockBuffer *a1, unsigned int a2)
{
  sourceBytes = 0;
  if (CMBlockBufferGetDataLength(a1) <= 3)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  else
  {
    LOWORD(sourceBytes) = __rev16(a2);
    v4 = CMBlockBufferReplaceDataBytes(&sourceBytes, a1, 0, 4uLL);
    v5 = v4;
    if (v4)
    {
      APSLogErrorAt(v4);
    }
  }

  return v5;
}

uint64_t APSTransportMessageSetTimeAnnounce(OpaqueCMBlockBuffer *a1, int8x16_t *a2)
{
  if (CMBlockBufferGetDataLength(a1) <= 0xF)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  else
  {
    v7 = vrev32q_s8(*a2);
    v4 = CMBlockBufferReplaceDataBytes(&v7, a1, 0, 0x10uLL);
    v5 = v4;
    if (v4)
    {
      APSLogErrorAt(v4);
    }
  }

  return v5;
}

uint64_t APSTransportMessageSetPTPTimeAnnounce(OpaqueCMBlockBuffer *a1, uint64_t a2)
{
  if (CMBlockBufferGetDataLength(a1) <= 0x17)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  else
  {
    sourceBytes = bswap32(*a2);
    v8 = bswap64(*(a2 + 4));
    v9 = bswap32(*(a2 + 12));
    v10 = bswap64(*(a2 + 16));
    v4 = CMBlockBufferReplaceDataBytes(&sourceBytes, a1, 0, 0x18uLL);
    v5 = v4;
    if (v4)
    {
      APSLogErrorAt(v4);
    }
  }

  return v5;
}

uint64_t APSTransportMessageCreateReferencingBBufWithAudioDataLength(const __CFAllocator *a1, OpaqueCMBlockBuffer *a2, uint64_t a3, CMBlockBufferRef *blockBufferOut)
{
  v4 = CMBlockBufferCreateWithBufferReference(a1, a2, 0, a3 + 10, 0, blockBufferOut);
  v5 = v4;
  if (v4)
  {
    APSLogErrorAt(v4);
  }

  return v5;
}

uint64_t APSTransportMessageCreateReferencingBBufAudioDataOnly(const __CFAllocator *a1, CMBlockBufferRef theBuffer, CMBlockBufferRef *a3)
{
  DataLength = CMBlockBufferGetDataLength(theBuffer);
  v7 = CMBlockBufferCreateWithBufferReference(a1, theBuffer, 0xAuLL, DataLength - 10, 0, a3);
  v8 = v7;
  if (v7)
  {
    APSLogErrorAt(v7);
  }

  return v8;
}

uint64_t APSTransportMessageGetAudioDataSequenceNumber(OpaqueCMBlockBuffer *a1, _WORD *destination)
{
  v3 = CMBlockBufferCopyDataBytes(a1, 0, 2uLL, destination);
  v4 = v3;
  if (v3)
  {
    APSLogErrorAt(v3);
  }

  else
  {
    *destination = bswap32(*destination) >> 16;
  }

  return v4;
}

uint64_t APSTransportMessageSetAudioDataSequenceNumber(CMBlockBufferRef destinationBuffer, unsigned int a2)
{
  sourceBytes = __rev16(a2);
  v2 = CMBlockBufferReplaceDataBytes(&sourceBytes, destinationBuffer, 0, 2uLL);
  v3 = v2;
  if (v2)
  {
    APSLogErrorAt(v2);
  }

  return v3;
}

uint64_t APSTransportMessageGetAudioDataTimestamp(OpaqueCMBlockBuffer *a1, _DWORD *destination)
{
  v3 = CMBlockBufferCopyDataBytes(a1, 2uLL, 4uLL, destination);
  v4 = v3;
  if (v3)
  {
    APSLogErrorAt(v3);
  }

  else
  {
    *destination = bswap32(*destination);
  }

  return v4;
}

uint64_t APSTransportMessageSetAudioDataHeader(OpaqueCMBlockBuffer *a1, unsigned __int16 *a2)
{
  if (CMBlockBufferGetDataLength(a1) <= 9)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  else
  {
    sourceBytes = bswap32(*a2) >> 16;
    v8 = vrev32_s8(*(a2 + 1));
    v4 = CMBlockBufferReplaceDataBytes(&sourceBytes, a1, 0, 0xAuLL);
    v5 = v4;
    if (v4)
    {
      APSLogErrorAt(v4);
    }
  }

  return v5;
}

uint64_t APSTransportMessageBufferedCreateReferencingBBufWithAudioDataLength(const __CFAllocator *a1, OpaqueCMBlockBuffer *a2, uint64_t a3, CMBlockBufferRef *blockBufferOut)
{
  v4 = CMBlockBufferCreateWithBufferReference(a1, a2, 0, a3 + 11, 0, blockBufferOut);
  v5 = v4;
  if (v4)
  {
    APSLogErrorAt(v4);
  }

  return v5;
}

uint64_t APSTransportMessageBufferedCreateReferencingBBufAudioDataOnly(const __CFAllocator *a1, CMBlockBufferRef theBuffer, CMBlockBufferRef *a3)
{
  DataLength = CMBlockBufferGetDataLength(theBuffer);
  v7 = CMBlockBufferCreateWithBufferReference(a1, theBuffer, 0xAuLL, DataLength - 11, 0, a3);
  v8 = v7;
  if (v7)
  {
    APSLogErrorAt(v7);
  }

  return v8;
}

uint64_t APSTransportMessageGetBufferedAudioDataPointer(OpaqueCMBlockBuffer *a1, char **dataPointerOut, size_t *a3)
{
  DataPointer = CMBlockBufferGetDataPointer(a1, 0xBuLL, a3, 0, dataPointerOut);
  v4 = DataPointer;
  if (DataPointer)
  {
    APSLogErrorAt(DataPointer);
  }

  return v4;
}

uint64_t APSTransportMessageGetBufferedAudioDataExtendedSequenceNumber(OpaqueCMBlockBuffer *a1, unsigned int *a2)
{
  *a2 = 0;
  v3 = CMBlockBufferCopyDataBytes(a1, 0, 3uLL, a2 + 1);
  v4 = v3;
  if (v3)
  {
    APSLogErrorAt(v3);
  }

  else
  {
    *a2 = bswap32(*a2);
  }

  return v4;
}

uint64_t APSTransportMessageSetBufferedAudioDataExtendedSequenceNumber(CMBlockBufferRef destinationBuffer, unsigned int a2)
{
  v5 = bswap32(a2);
  v2 = CMBlockBufferReplaceDataBytes(&v5 + 1, destinationBuffer, 0, 3uLL);
  v3 = v2;
  if (v2)
  {
    APSLogErrorAt(v2);
  }

  return v3;
}

uint64_t APSTransportMessageGetBufferedAudioDataTimestamp(OpaqueCMBlockBuffer *a1, _DWORD *destination)
{
  v3 = CMBlockBufferCopyDataBytes(a1, 3uLL, 4uLL, destination);
  v4 = v3;
  if (v3)
  {
    APSLogErrorAt(v3);
  }

  else
  {
    *destination = bswap32(*destination);
  }

  return v4;
}

uint64_t APSTransportMessageGetBufferedAudioDataFormatIndex(OpaqueCMBlockBuffer *a1, void *destination)
{
  v2 = CMBlockBufferCopyDataBytes(a1, 7uLL, 1uLL, destination);
  v3 = v2;
  if (v2)
  {
    APSLogErrorAt(v2);
  }

  return v3;
}

uint64_t APSTransportMessageGetBufferedAudioDataFlags(OpaqueCMBlockBuffer *a1, void *destination)
{
  v2 = CMBlockBufferCopyDataBytes(a1, 8uLL, 1uLL, destination);
  v3 = v2;
  if (v2)
  {
    APSLogErrorAt(v2);
  }

  return v3;
}

uint64_t APSTransportMessageGetBufferedAudioDataHeader(OpaqueCMBlockBuffer *a1, uint64_t a2)
{
  if (a2)
  {
    *(v6 + 7) = 0;
    v6[0] = 0;
    v3 = CMBlockBufferCopyDataBytes(a1, 0, 0xBuLL, v6);
    v4 = v3;
    if (v3)
    {
      APSLogErrorAt(v3);
    }

    else
    {
      *a2 = BYTE2(v6[0]);
      *(a2 + 1) = BYTE1(v6[0]);
      *(a2 + 2) = v6[0];
      *(a2 + 3) = bswap32(*(v6 + 3));
      *(a2 + 7) = *(v6 + 7);
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return v4;
}

uint64_t APSTransportMessageSetBufferedAudioDataHeader(OpaqueCMBlockBuffer *a1, uint64_t a2)
{
  if (CMBlockBufferGetDataLength(a1) <= 0xA)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  else
  {
    sourceBytes[0] = *(a2 + 2);
    sourceBytes[1] = *(a2 + 1);
    sourceBytes[2] = *a2;
    v8 = bswap32(*(a2 + 3));
    v9 = *(a2 + 7);
    v4 = CMBlockBufferReplaceDataBytes(sourceBytes, a1, 0, 0xBuLL);
    v5 = v4;
    if (v4)
    {
      APSLogErrorAt(v4);
    }
  }

  return v5;
}

uint64_t APSTransportMessageGetBufferedAudioAADPointer(OpaqueCMBlockBuffer *a1, char **dataPointerOut, void *a3)
{
  DataPointer = CMBlockBufferGetDataPointer(a1, 3uLL, 0, 0, dataPointerOut);
  v5 = DataPointer;
  if (DataPointer)
  {
    APSLogErrorAt(DataPointer);
  }

  else
  {
    *a3 = 8;
  }

  return v5;
}

uint64_t APSTransportMessageSetScreenDataHeader(OpaqueCMBlockBuffer *a1, const void *a2)
{
  if (CMBlockBufferGetDataLength(a1) <= 0x7A)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  else
  {
    v4 = CMBlockBufferReplaceDataBytes(a2, a1, 0, 0x7BuLL);
    v5 = v4;
    if (v4)
    {
      APSLogErrorAt(v4);
    }
  }

  return v5;
}

uint64_t APSTransportMessageSetScreenDataPayload(OpaqueCMBlockBuffer *a1, const __CFData *a2)
{
  if (a2 && CMBlockBufferGetDataLength(a1) > 0x7A)
  {
    BytePtr = CFDataGetBytePtr(a2);
    Length = CFDataGetLength(a2);
    v6 = CMBlockBufferReplaceDataBytes(BytePtr, a1, 0x7BuLL, Length);
    v7 = v6;
    if (v6)
    {
      APSLogErrorAt(v6);
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return v7;
}

uint64_t APSAPAPExtensionConvertLoudnessInfoDictMediaKindToBBuf(const __CFDictionary *a1, void *a2)
{
  cf = 0;
  if (!a2)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  if (!CFDictionaryGetValue(a1, *MEMORY[0x277CEFE10]))
  {
    goto LABEL_30;
  }

  v3 = *MEMORY[0x277CEFE38];
  if (!FigCFEqual())
  {
    v5 = *MEMORY[0x277CEFE48];
    if (FigCFEqual())
    {
      v4 = 2;
      goto LABEL_31;
    }

    v6 = *MEMORY[0x277CEFE60];
    if (FigCFEqual())
    {
      v4 = 3;
      goto LABEL_31;
    }

    v7 = *MEMORY[0x277CEFE20];
    if (FigCFEqual())
    {
      v4 = 4;
      goto LABEL_31;
    }

    v8 = *MEMORY[0x277CEFE58];
    if (FigCFEqual())
    {
      v4 = 5;
      goto LABEL_31;
    }

    v9 = *MEMORY[0x277CEFE30];
    if (FigCFEqual())
    {
      v4 = 6;
      goto LABEL_31;
    }

    v10 = *MEMORY[0x277CEFE50];
    if (FigCFEqual())
    {
      v4 = 7;
      goto LABEL_31;
    }

    v11 = *MEMORY[0x277CEFE40];
    if (FigCFEqual())
    {
      v4 = 8;
      goto LABEL_31;
    }

    v13 = *MEMORY[0x277CEFE28];
    if (FigCFEqual())
    {
      v4 = 9;
      goto LABEL_31;
    }

    if (FigCFEqual())
    {
      v4 = 10;
      goto LABEL_31;
    }

    if (FigCFEqual())
    {
      v4 = 11;
      goto LABEL_31;
    }

    if (gLogCategory_APSAPAPExtensionLoudnessInfoUtils <= 50 && (gLogCategory_APSAPAPExtensionLoudnessInfoUtils != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

LABEL_30:
    v4 = 0;
    goto LABEL_31;
  }

  v4 = 1;
LABEL_31:
  BigUIntWithUInt64 = APSCMBlockBufferCreateBigUIntWithUInt64(*MEMORY[0x277CBECE8], v4, &cf);
  v12 = BigUIntWithUInt64;
  if (BigUIntWithUInt64)
  {
    APSLogErrorAt(BigUIntWithUInt64);
  }

  else
  {
    v15 = cf;
    if (cf)
    {
      v15 = CFRetain(cf);
    }

    *a2 = v15;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

uint64_t APSAPAPExtensionConvertLoudnessInfoDictLoudnessParametersToBBuf(const __CFDictionary *a1, void *a2)
{
  blockBufferOut = 0;
  if (a2)
  {
    v4 = malloc_type_calloc(1uLL, 0xCuLL, 0x10000403E1C8BA9uLL);
    if (v4)
    {
      if (CFDictionaryGetValue(a1, *MEMORY[0x277CEFE08]))
      {
        v5 = *MEMORY[0x277CEFDA0];
        Float32IfPresent = FigCFDictionaryGetFloat32IfPresent();
        if (Float32IfPresent && (*v4 = bswap32(0), v7 = *MEMORY[0x277CEFDA8], Float32IfPresent = FigCFDictionaryGetFloat32IfPresent(), Float32IfPresent) && (v4[1] = bswap32(0), v8 = *MEMORY[0x277CEFDB0], Float32IfPresent = FigCFDictionaryGetFloat32IfPresent(), Float32IfPresent))
        {
          v4[2] = bswap32(0);
          v9 = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x277CBECE8], v4, 0xCuLL, *MEMORY[0x277CBECF0], 0, 0, 0xCuLL, 0, &blockBufferOut);
          if (blockBufferOut)
          {
            v10 = CFRetain(blockBufferOut);
            v11 = blockBufferOut;
            *a2 = v10;
            if (v11)
            {
              CFRelease(v11);
            }

            v4 = 0;
          }

          else
          {
            v4 = 0;
            *a2 = 0;
          }
        }

        else
        {
          APSLogErrorAt(Float32IfPresent);
          v9 = FigSignalErrorAtGM();
        }
      }

      else
      {
        v9 = 4294960569;
      }
    }

    else
    {
      APSLogErrorAt(0);
      v9 = 4294960568;
    }
  }

  else
  {
    APSLogErrorAt(0);
    v4 = 0;
    v9 = 4294960591;
  }

  free(v4);
  return v9;
}

uint64_t APSAPAPExtensionConvertMediaKindBBufAndMergeIntoLoudnessInfoDict(OpaqueCMBlockBuffer *a1, uint64_t a2, CFTypeRef *a3)
{
  v13 = 0;
  if (!a3)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  BigUIntAsUInt64 = APSCMBlockBufferGetBigUIntAsUInt64(a1, &v13);
  if (BigUIntAsUInt64)
  {
    v11 = BigUIntAsUInt64;
    APSLogErrorAt(BigUIntAsUInt64);
    return v11;
  }

  if (v13 > 5u)
  {
    if (v13 > 8u)
    {
      if (v13 == 9)
      {
        v6 = MEMORY[0x277CEFE28];
        goto LABEL_27;
      }

      if (v13 == 10 || v13 == 11)
      {
        goto LABEL_28;
      }
    }

    else
    {
      switch(v13)
      {
        case 6u:
          v6 = MEMORY[0x277CEFE30];
          goto LABEL_27;
        case 7u:
          v6 = MEMORY[0x277CEFE50];
          goto LABEL_27;
        case 8u:
          v6 = MEMORY[0x277CEFE40];
          goto LABEL_27;
      }
    }

LABEL_35:
    if (gLogCategory_APSAPAPExtensionLoudnessInfoUtils <= 50 && (gLogCategory_APSAPAPExtensionLoudnessInfoUtils != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    goto LABEL_28;
  }

  if (v13 > 2u)
  {
    switch(v13)
    {
      case 3u:
        v6 = MEMORY[0x277CEFE60];
        goto LABEL_27;
      case 4u:
        v6 = MEMORY[0x277CEFE20];
        goto LABEL_27;
      case 5u:
        v6 = MEMORY[0x277CEFE58];
        goto LABEL_27;
    }

    goto LABEL_35;
  }

  if (!v13)
  {
    goto LABEL_28;
  }

  if (v13 == 1)
  {
    v6 = MEMORY[0x277CEFE38];
  }

  else
  {
    v6 = MEMORY[0x277CEFE48];
  }

LABEL_27:
  v7 = *v6;
LABEL_28:
  if (a2)
  {
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    if (!MutableCopy)
    {
      goto LABEL_42;
    }
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!MutableCopy)
    {
LABEL_42:
      APSLogErrorAt(0);
      return 4294960568;
    }
  }

  v9 = MutableCopy;
  v10 = *MEMORY[0x277CEFE10];
  FigCFDictionarySetValue();
  *a3 = CFRetain(v9);
  CFRelease(v9);
  return 0;
}

uint64_t APSAPAPExtensionConvertLoudnessParametersBBufAndMergeIntoLoudnessInfoDict(OpaqueCMBlockBuffer *a1, uint64_t a2, CFTypeRef *a3)
{
  dataPointerOut = 0;
  if (!a3 || (CMBlockBufferGetDataPointer(a1, 0, 0, 0, &dataPointerOut), CMBlockBufferGetDataLength(a1) != 12))
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  v6 = *MEMORY[0x277CBECE8];
  if (a2)
  {
    v7 = *MEMORY[0x277CBECE8];
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    if (MutableCopy)
    {
      v9 = MutableCopy;
      v10 = *MEMORY[0x277CEFE08];
      if (FigCFDictionaryGetValue())
      {
        Mutable = FigCFDictionaryCreateMutableCopy();
        if (!Mutable)
        {
          goto LABEL_16;
        }

        goto LABEL_12;
      }

      Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
LABEL_12:
        v14 = Mutable;
        goto LABEL_13;
      }

LABEL_16:
      APSLogErrorAt(0);
      CFRelease(v9);
      return 4294960568;
    }
  }

  else
  {
    v12 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v12)
    {
      v9 = v12;
      v13 = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (v13)
      {
        v14 = v13;
        v15 = *MEMORY[0x277CEFE08];
LABEL_13:
        v16 = bswap32(*dataPointerOut);
        v17 = *MEMORY[0x277CEFDA0];
        FigCFDictionarySetFloat32();
        v18 = bswap32(*(dataPointerOut + 1));
        v19 = *MEMORY[0x277CEFDA8];
        FigCFDictionarySetFloat32();
        v20 = bswap32(*(dataPointerOut + 2));
        v21 = *MEMORY[0x277CEFDB0];
        FigCFDictionarySetFloat32();
        FigCFDictionarySetValue();
        *a3 = CFRetain(v9);
        CFRelease(v9);
        CFRelease(v14);
        return 0;
      }

      goto LABEL_16;
    }
  }

  APSLogErrorAt(0);
  return 4294960568;
}

uint64_t APSAPAPExtensionConvertLoudnessInfoDictSoundCheckInfoToBBuf(uint64_t a1, void *a2)
{
  *count = 0u;
  v24 = 0u;
  blockBufferOut = 0;
  if (!a2)
  {
    APSLogErrorAt(0);
    v19 = 4294960591;
    goto LABEL_27;
  }

  v3 = *MEMORY[0x277CEFE18];
  Value = FigCFDictionaryGetValue();
  if (!Value)
  {
    v19 = 4294960569;
    goto LABEL_27;
  }

  v5 = Value;
  v6 = *MEMORY[0x277CEFE68];
  if (!CFDictionaryContainsKey(Value, *MEMORY[0x277CEFE68]) || (v7 = *MEMORY[0x277CEFE70], !CFDictionaryContainsKey(v5, *MEMORY[0x277CEFE70])) || (v8 = *MEMORY[0x277CEFE78], !CFDictionaryContainsKey(v5, *MEMORY[0x277CEFE78])) || (v9 = *MEMORY[0x277CEFE80], !CFDictionaryContainsKey(v5, *MEMORY[0x277CEFE80])) || (v10 = *MEMORY[0x277CEFE88], !CFDictionaryContainsKey(v5, *MEMORY[0x277CEFE88])))
  {
    v19 = 4294960579;
    goto LABEL_27;
  }

  v11 = CFDictionaryGetValue(v5, v6);
  v12 = APSCFStringCountUInt32s(v11, &count[1]);
  if (v12)
  {
    v19 = v12;
    goto LABEL_48;
  }

  count[0] = malloc_type_calloc(count[1], 0x14uLL, 0x1000040A86A77D5uLL);
  if (!count[0])
  {
    APSLogErrorAt(0);
    v19 = 4294960568;
    goto LABEL_27;
  }

  v24 = 0uLL;
  v13 = CFDictionaryGetValue(v5, v6);
  v12 = APSCFStringParseUInt32s(v13, apsapapExtensionSoundCheckInfo_parseUInt32, count);
  if (v12)
  {
    v19 = v12;
    goto LABEL_48;
  }

  if (*(&v24 + 1) != count[1])
  {
    goto LABEL_46;
  }

  v24 = xmmword_22234D460;
  v14 = CFDictionaryGetValue(v5, v7);
  v12 = APSCFStringParseUInt32s(v14, apsapapExtensionSoundCheckInfo_parseUInt32, count);
  if (v12)
  {
    v19 = v12;
    goto LABEL_48;
  }

  if (*(&v24 + 1) != count[1])
  {
    goto LABEL_46;
  }

  v24 = xmmword_22234D470;
  v15 = CFDictionaryGetValue(v5, v8);
  v12 = APSCFStringParseUInt32s(v15, apsapapExtensionSoundCheckInfo_parseUInt32, count);
  if (v12)
  {
    v19 = v12;
    goto LABEL_48;
  }

  if (*(&v24 + 1) != count[1])
  {
    goto LABEL_46;
  }

  v24 = xmmword_22234D480;
  v16 = CFDictionaryGetValue(v5, v9);
  v12 = APSCFStringParseUInt32s(v16, apsapapExtensionSoundCheckInfo_parseUInt32, count);
  if (v12)
  {
    v19 = v12;
    goto LABEL_48;
  }

  if (*(&v24 + 1) != count[1])
  {
    goto LABEL_46;
  }

  v24 = xmmword_22234D490;
  v17 = CFDictionaryGetValue(v5, v10);
  v12 = APSCFStringParseUInt32s(v17, apsapapExtensionSoundCheckInfo_parseUInt32, count);
  if (v12)
  {
    v19 = v12;
    goto LABEL_48;
  }

  if (*(&v24 + 1) != count[1])
  {
LABEL_46:
    APSLogErrorAt(0);
    v19 = 4294960546;
    goto LABEL_27;
  }

  v18 = *MEMORY[0x277CBECE8];
  if (*(&v24 + 1))
  {
    v12 = CMBlockBufferCreateWithMemoryBlock(v18, count[0], 20 * *(&v24 + 1), *MEMORY[0x277CBECF0], 0, 0, 20 * *(&v24 + 1), 0, &blockBufferOut);
    if (v12)
    {
      v19 = v12;
LABEL_48:
      APSLogErrorAt(v12);
      goto LABEL_27;
    }
  }

  else
  {
    v12 = CMBlockBufferCreateEmpty(v18, 0, 0, &blockBufferOut);
    if (v12)
    {
      v19 = v12;
      goto LABEL_48;
    }
  }

  count[0] = 0;
  v20 = blockBufferOut;
  if (blockBufferOut)
  {
    v20 = CFRetain(blockBufferOut);
  }

  v19 = 0;
  *a2 = v20;
LABEL_27:
  if (count[0])
  {
    free(count[0]);
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v19;
}

uint64_t apsapapExtensionSoundCheckInfo_parseUInt32(unsigned int a1, void *a2)
{
  v2 = a2[3];
  if (v2 >= a2[1])
  {
    APSLogErrorAt(0);
    return 4294960545;
  }

  else
  {
    result = 0;
    *(*a2 + 20 * v2 + a2[2]) = bswap32(a1);
    ++a2[3];
  }

  return result;
}

uint64_t APSAPAPExtensionConvertSoundCheckInfoBBufAndMergeIntoLoudnessInfoDict(OpaqueCMBlockBuffer *a1, CFIndex a2, CFTypeRef *a3)
{
  keys[5] = *MEMORY[0x277D85DE8];
  totalLengthOut = 0;
  dataPointerOut = 0;
  lengthAtOffsetOut = 0;
  if (!a3)
  {
    goto LABEL_67;
  }

  if (CMBlockBufferIsEmpty(a1))
  {
    v6 = 0;
    goto LABEL_7;
  }

  DataPointer = CMBlockBufferGetDataPointer(a1, 0, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut);
  if (DataPointer)
  {
    v24 = DataPointer;
    APSLogErrorAt(DataPointer);
    goto LABEL_42;
  }

  if (totalLengthOut != lengthAtOffsetOut)
  {
LABEL_67:
    APSLogErrorAt(0);
    v24 = 4294960591;
    goto LABEL_42;
  }

  v6 = totalLengthOut / 0x14;
  if (totalLengthOut % 0x14)
  {
    APSLogErrorAt(0);
    v24 = 4294960553;
    goto LABEL_42;
  }

LABEL_7:
  v8 = *MEMORY[0x277CBECE8];
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  if (!Mutable)
  {
    APSLogErrorAt(0);
LABEL_52:
    v24 = 4294960568;
    goto LABEL_42;
  }

  v10 = Mutable;
  v11 = CFStringCreateMutable(v8, 0);
  if (!v11)
  {
    APSLogErrorAt(0);
    CFRelease(v10);
    goto LABEL_52;
  }

  v12 = v11;
  v13 = CFStringCreateMutable(v8, 0);
  if (!v13)
  {
    APSLogErrorAt(0);
    v14 = 0;
LABEL_55:
    v15 = 0;
LABEL_57:
    v21 = 0;
LABEL_59:
    MutableCopy = 0;
LABEL_60:
    v24 = 4294960568;
    goto LABEL_32;
  }

  v14 = CFStringCreateMutable(v8, 0);
  if (!v14)
  {
    APSLogErrorAt(0);
    goto LABEL_55;
  }

  v15 = CFStringCreateMutable(v8, 0);
  if (!v15)
  {
    APSLogErrorAt(0);
    goto LABEL_57;
  }

  v37 = a3;
  capacity = a2;
  if (!v6)
  {
    goto LABEL_26;
  }

  v27 = bswap32(*dataPointerOut);
  v16 = CFStringAppendF();
  if (v16)
  {
    v24 = v16;
LABEL_48:
    APSLogErrorAt(v16);
    v21 = 0;
    MutableCopy = 0;
    goto LABEL_32;
  }

  v28 = bswap32(*(dataPointerOut + 1));
  v16 = CFStringAppendF();
  if (v16)
  {
    v24 = v16;
    goto LABEL_48;
  }

  v29 = bswap32(*(dataPointerOut + 2));
  v16 = CFStringAppendF();
  if (v16)
  {
    v24 = v16;
    goto LABEL_48;
  }

  v30 = bswap32(*(dataPointerOut + 3));
  v16 = CFStringAppendF();
  if (v16)
  {
    v24 = v16;
    goto LABEL_48;
  }

  v31 = bswap32(*(dataPointerOut + 4));
  v16 = CFStringAppendF();
  if (v16)
  {
    v24 = v16;
    goto LABEL_48;
  }

  v17 = v6 - 1;
  if (v6 != 1)
  {
    v18 = 39;
    while (1)
    {
      v32 = bswap32(*&dataPointerOut[v18 - 19]);
      v16 = CFStringAppendF();
      if (v16)
      {
        v24 = v16;
        goto LABEL_48;
      }

      v33 = bswap32(*&dataPointerOut[v18 - 15]);
      v16 = CFStringAppendF();
      if (v16)
      {
        v24 = v16;
        goto LABEL_48;
      }

      v34 = bswap32(*&dataPointerOut[v18 - 11]);
      v16 = CFStringAppendF();
      if (v16)
      {
        v24 = v16;
        goto LABEL_48;
      }

      v35 = bswap32(*&dataPointerOut[v18 - 7]);
      v16 = CFStringAppendF();
      if (v16)
      {
        v24 = v16;
        goto LABEL_48;
      }

      v36 = bswap32(*&dataPointerOut[v18 - 3]);
      v16 = CFStringAppendF();
      if (v16)
      {
        break;
      }

      v18 += 20;
      if (!--v17)
      {
        goto LABEL_26;
      }
    }

    v24 = v16;
    goto LABEL_48;
  }

LABEL_26:
  v19 = *MEMORY[0x277CEFE70];
  keys[0] = *MEMORY[0x277CEFE68];
  keys[1] = v19;
  v20 = *MEMORY[0x277CEFE80];
  keys[2] = *MEMORY[0x277CEFE78];
  keys[3] = v20;
  keys[4] = *MEMORY[0x277CEFE88];
  values[0] = v10;
  values[1] = v12;
  values[2] = v13;
  values[3] = v14;
  values[4] = v15;
  v21 = CFDictionaryCreate(v8, keys, values, 5, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v21)
  {
    APSLogErrorAt(0);
    goto LABEL_59;
  }

  if (capacity)
  {
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    if (!MutableCopy)
    {
      goto LABEL_69;
    }
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!MutableCopy)
    {
LABEL_69:
      APSLogErrorAt(0);
      goto LABEL_60;
    }
  }

  v23 = *MEMORY[0x277CEFE18];
  FigCFDictionarySetValue();
  v24 = 0;
  *v37 = CFRetain(MutableCopy);
LABEL_32:
  CFRelease(v10);
  CFRelease(v12);
  if (v13)
  {
    CFRelease(v13);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

LABEL_42:
  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

uint64_t APSAudioTransportTimeMakeWithRTPTime@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *a2 = 1;
  *(a2 + 4) = result;
  return result;
}

__n128 APSAudioTransportTimeMakeWithMediaTime@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  if ((a1->n128_u32[3] & 0x1D) == 1 && !a1[1].n128_u64[0])
  {
    *a2 = 2;
    result = *a1;
    *(a2 + 4) = *a1;
    *(a2 + 20) = a1[1].n128_u64[0];
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 24) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

BOOL APSAudioTransportTimeIsValid(uint64_t a1)
{
  if (*a1 != 2)
  {
    return *a1 == 1;
  }

  if ((*(a1 + 16) & 0x1D) == 1)
  {
    return *(a1 + 20) == 0;
  }

  return 0;
}

CFTypeRef APSAudioTransportTimeCopyDebugDesc(uint64_t a1)
{
  v1 = (a1 + 4);
  if (*a1 == 1)
  {
    v5 = *v1;
    return CFStringCreateF();
  }

  if (*a1 == 2 && (*(a1 + 16) & 0x1D) == 1 && *(a1 + 20) == 0)
  {
    *&time.value = *v1;
    time.epoch = *(a1 + 20);
    CMTimeGetSeconds(&time);
    v6 = *(a1 + 4);
    v7 = *(a1 + 12);
    return CFStringCreateF();
  }

  return CFRetain(@"Invalid");
}

double APSAudioTransportTimeAdd@<D0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  v4 = a1 + 1;
  v5 = *a1;
  if (*a1 == 1 || v5 == 2 && ((a1[4] & 0x1D) == 1 ? (v6 = *(a1 + 5) == 0) : (v6 = 0), v6))
  {
    if (*a2 == 2)
    {
      if ((*(a2 + 16) & 0x1D) == 1 && v5 == 2 && *(a2 + 20) == 0)
      {
        *v14 = 2;
        *&lhs.value = *v4;
        lhs.epoch = *(a1 + 5);
        v12 = *(a2 + 4);
        CMTimeAdd(&v14[4], &lhs, &v12);
        *a3 = *v14;
        result = *&v14[12];
        *(a3 + 12) = *&v14[12];
      }
    }

    else if (*a2 == 1 && v5 == 1)
    {
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      v8 = *(a2 + 4) + *v4;
      *a3 = 1;
      *(a3 + 4) = v8;
    }
  }

  return result;
}

double APSAudioTransportTimeSub@<D0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  v4 = a1 + 1;
  v5 = *a1;
  if (*a1 == 1 || v5 == 2 && ((a1[4] & 0x1D) == 1 ? (v6 = *(a1 + 5) == 0) : (v6 = 0), v6))
  {
    if (*a2 == 2)
    {
      if ((*(a2 + 16) & 0x1D) == 1 && v5 == 2 && *(a2 + 20) == 0)
      {
        *v14 = 2;
        *&lhs.value = *v4;
        lhs.epoch = *(a1 + 5);
        v12 = *(a2 + 4);
        CMTimeSubtract(&v14[4], &lhs, &v12);
        *a3 = *v14;
        result = *&v14[12];
        *(a3 + 12) = *&v14[12];
      }
    }

    else if (*a2 == 1 && v5 == 1)
    {
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      v8 = *v4 - *(a2 + 4);
      *a3 = 1;
      *(a3 + 4) = v8;
    }
  }

  return result;
}

uint64_t APSAudioTransportTimeCompare(int *a1, int *a2)
{
  v4 = (a1 + 1);
  v5 = *a1;
  if (*a1 == 2)
  {
    v6 = (a1[4] & 0x1D) == 1 && *(a1 + 5) == 0;
  }

  else
  {
    v6 = v5 == 1;
  }

  v8 = a2 + 1;
  v9 = *a2;
  if (*a2 == 1)
  {
    v11 = 1;
  }

  else
  {
    if (v9 != 2)
    {
      v11 = 0;
      return (v11 - v6);
    }

    v11 = (a2[4] & 0x1D) == 1 && *(a2 + 5) == 0;
  }

  if (!v6 || !v11)
  {
    return (v11 - v6);
  }

  result = (v5 - v9);
  if (v5 == v9)
  {
    if (v5 == 1)
    {
      return (LODWORD(v4->value) - *v8);
    }

    else
    {
      v15 = v2;
      v16 = v3;
      time1 = *v4;
      *&v13.value = *v8;
      v13.epoch = *(a2 + 5);
      return CMTimeCompare(&time1, &v13);
    }
  }

  return result;
}

__n128 APSAudioTransportTimeMax@<Q0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  *v9 = *a1;
  *&v9[3] = *(a1 + 12);
  *v8 = *a2;
  *&v8[3] = *(a2 + 12);
  if (APSAudioTransportTimeCompare(v9, v8) >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  *a3 = *v6;
  result = *(v6 + 12);
  *(a3 + 12) = result;
  return result;
}

__n128 APSAudioTransportTimeMin@<Q0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  *v9 = *a1;
  *&v9[3] = *(a1 + 12);
  *v8 = *a2;
  *&v8[3] = *(a2 + 12);
  if (APSAudioTransportTimeCompare(v9, v8) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  *a3 = *v6;
  result = *(v6 + 12);
  *(a3 + 12) = result;
  return result;
}

uint64_t APSAudioTransportTimeUtilsDecodeFromRequestResponseDictionary(CFDictionaryRef theDict, void *key, void *a3, const void *a4, uint64_t a5)
{
  v17 = 0;
  if ((a3 == 0) != (a4 == 0))
  {
LABEL_14:
    APSLogErrorAt(0);
    value = 0;
    v13 = 0;
    flags = 0;
    v14 = 0;
    v17 = -6705;
    if (!a5)
    {
      return v17;
    }

    goto LABEL_19;
  }

  if (!theDict)
  {
    goto LABEL_17;
  }

  if (a3 && (CFDictionaryContainsKey(theDict, a3) || CFDictionaryContainsKey(theDict, a4)))
  {
    Int64 = CFDictionaryGetInt64();
    v10 = CFDictionaryGetInt64();
    CMTimeMake(&v16, Int64, v10);
    flags = v16.flags;
    if ((v16.flags & 0x1D) == 1 && !v16.epoch)
    {
      value = v16.value;
      v13 = *(&v16.value + 4);
      v14 = 2;
      if (!a5)
      {
        return v17;
      }

      goto LABEL_19;
    }

    goto LABEL_14;
  }

  if (key)
  {
    value = CFDictionaryContainsKey(theDict, key);
    if (value)
    {
      value = CFDictionaryGetInt64Ranged();
      flags = v17;
      v13 = 0;
      v14 = 1;
      if (!a5)
      {
        return v17;
      }

      goto LABEL_19;
    }
  }

  else
  {
LABEL_17:
    value = 0;
  }

  v13 = 0;
  flags = 0;
  v14 = 0;
  if (a5)
  {
LABEL_19:
    *a5 = v14;
    *(a5 + 4) = value;
    *(a5 + 8) = v13;
    *(a5 + 16) = flags;
    *(a5 + 20) = 0;
  }

  return v17;
}

uint64_t APSAudioTransportTimeUtilsEncodeToRequestResponseDictionary(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a3 == 0) == (a4 == 0))
  {
    if (!a1)
    {
      return 0;
    }

    if (*a5 == 1)
    {
      if (a2)
      {
        v9 = *(a5 + 4);
        goto LABEL_14;
      }
    }

    else
    {
      if (*a5 != 2)
      {
        return 0;
      }

      if ((*(a5 + 16) & 0x1D) != 1 || *(a5 + 20) != 0)
      {
        return 0;
      }

      if (a3)
      {
        v7 = *(a5 + 4);
        CFDictionarySetInt64();
        v8 = *(a5 + 12);
LABEL_14:
        CFDictionarySetInt64();
        return 0;
      }
    }

    APSLogErrorAt(0);
    return 4294960582;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }
}

uint64_t APSAudioHoseMetricCollectorGetTypeID()
{
  if (gAPSAudioHoseMetricCollectorInitOnce != -1)
  {
    dispatch_once_f(&gAPSAudioHoseMetricCollectorInitOnce, 0, _APSAudioHoseMetricCollectorGetTypeID);
  }

  return gAPSAudioHoseMetricCollectorTypeID;
}

uint64_t _APSAudioHoseMetricCollectorGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSAudioHoseMetricCollectorTypeID = result;
  return result;
}

uint64_t _APSAudioHoseMetricCollectorFinalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[4];
  result = FigSimpleMutexDestroy();
  if (gLogCategory_APSAudioHoseMetricCollector <= 50)
  {
    if (gLogCategory_APSAudioHoseMetricCollector != -1)
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

uint64_t APSAudioHoseMetricCollectorCreate(const void *a1, uint64_t a2, void *a3)
{
  if (!a3 || !a1)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  if (gAPSAudioHoseMetricCollectorInitOnce != -1)
  {
    dispatch_once_f(&gAPSAudioHoseMetricCollectorInitOnce, 0, _APSAudioHoseMetricCollectorGetTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    APSLogErrorAt(0);
    return 4294960568;
  }

  v7 = Instance;
  *(Instance + 64) = 0;
  *(Instance + 32) = 0u;
  *(Instance + 48) = 0u;
  *(Instance + 16) = 0u;
  *(Instance + 16) = CFRetain(a1);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, &metricCollector_hoseDescriptorDictionaryCallbacks);
  v7[3] = Mutable;
  if (!Mutable || (v9 = FigSimpleMutexCreate(), (v7[4] = v9) == 0))
  {
    APSLogErrorAt(0);
    CFRelease(v7);
    return 4294960568;
  }

  v7[5] = a2;
  if (gLogCategory_APSAudioHoseMetricCollector <= 50 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  result = 0;
  *a3 = v7;
  return result;
}

void metricCollector_hoseDescriptorDictionaryRelease(int a1, CFTypeRef *a2)
{
  if (a2)
  {
    if (*a2)
    {
      CFRelease(*a2);
    }

    v4 = a2[1];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = a2[2];
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = a2[19];
    if (v6)
    {
      CFRelease(v6);
    }

    free(a2);
  }

  else
  {

    APSLogErrorAt(0);
  }
}

void *metricCollector_hoseDescriptorDictionaryRetain(uint64_t a1, CFTypeRef *a2)
{
  if (a2)
  {
    v3 = malloc_type_calloc(1uLL, 0x250uLL, 0x106004031377342uLL);
    memcpy(v3, a2, 0x250uLL);
    v4 = *a2;
    if (*a2)
    {
      v4 = CFRetain(v4);
    }

    *v3 = v4;
    v5 = a2[19];
    if (v5)
    {
      v5 = CFRetain(v5);
    }

    v3[19] = v5;
    v6 = a2[1];
    if (v6)
    {
      v6 = CFRetain(v6);
    }

    v3[1] = v6;
    v7 = a2[2];
    if (v7)
    {
      v7 = CFRetain(v7);
    }

    v3[2] = v7;
  }

  else
  {
    APSLogErrorAt(0);
    return 0;
  }

  return v3;
}

uint64_t APSAudioHoseMetricCollectorRegisterHose(uint64_t a1, const void *a2, int a3, int a4)
{
  bzero(value, 0x250uLL);
  v16 = 0;
  cf = 0;
  if (a2)
  {
    if (!a1 || CFDictionaryContainsKey(*(a1 + 24), a2))
    {
      APSLogErrorAt(0);
      v14 = 4294960591;
    }

    else
    {
      v8 = *(a1 + 32);
      FigSimpleMutexLock();
      if (gLogCategory_APSAudioHoseMetricCollector <= 50 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v9 = *MEMORY[0x277CBECE8];
      v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v10)
      {
        v10(a2, @"Model", v9, &cf);
      }

      v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v11)
      {
        v11(a2, @"OSBuildVersion", v9, &v16);
        v11 = v16;
      }

      value[0] = a2;
      value[1] = cf;
      value[2] = v11;
      v19 = a3;
      v12 = 120.0;
      if (a3)
      {
        v12 = 15.0;
      }

      v21 = v12;
      v20 = a4;
      metricCollector_resetMetricsAndDataForHoseInternal(a1, value);
      CFDictionaryAddValue(*(a1 + 24), a2, value);
      v13 = *(a1 + 32);
      FigSimpleMutexUnlock();
      if (cf)
      {
        CFRelease(cf);
      }

      v14 = 0;
    }

    if (v16)
    {
      CFRelease(v16);
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return v14;
}

uint64_t metricCollector_resetMetricsAndDataForHoseInternal(void *a1, uint64_t a2)
{
  v4 = a1[4];
  FigSimpleMutexCheckIsLockedOnThisThread();
  v5 = *(a2 + 152);
  if (v5)
  {
    CFRelease(v5);
  }

  *(a2 + 224) = 0;
  v6 = MEMORY[0x277CC0898];
  v7 = *MEMORY[0x277CC0898];
  *(a2 + 200) = *MEMORY[0x277CC0898];
  v8 = *(v6 + 16);
  *(a2 + 216) = v8;
  v9 = MEMORY[0x277CC08F0];
  v10 = *MEMORY[0x277CC08F0];
  *(a2 + 228) = *MEMORY[0x277CC08F0];
  v11 = *(v9 + 16);
  *(a2 + 244) = v11;
  *(a2 + 252) = v7;
  *(a2 + 268) = v8;
  *(a2 + 276) = v10;
  *(a2 + 292) = v11;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0x7FF0000000000000;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0;
  *(a2 + 184) = 0u;
  *(a2 + 168) = 0u;
  *(a2 + 320) = 0u;
  *(a2 + 336) = 0u;
  *(a2 + 304) = 0u;
  *(a2 + 360) = 0u;
  *(a2 + 376) = 0u;
  a1[6] = 0xBFF0000000000000;
  *(a2 + 392) = 0u;
  *(a2 + 408) = 0u;
  *(a2 + 424) = -1;
  *(a2 + 432) = 0u;
  *(a2 + 448) = xmmword_22234D060;
  *(a2 + 480) = 0;
  *(a2 + 488) = 0xBFF0000000000000;
  *(a2 + 464) = 0xBFF0000000000000;
  *(a2 + 472) = -1;
  *(a2 + 512) = 0;
  *(a2 + 496) = xmmword_22234D4A0;
  *(a2 + 560) = 0;
  *(a2 + 520) = 0;
  *(a2 + 536) = 0u;
  *(a2 + 528) = -1;
  *(a2 + 552) = -1;
  *(a2 + 352) = 0;
  *(a2 + 568) = 0u;
  *(a2 + 584) = -1;
  *(a2 + 112) = 0;
  a1[7] = 0;
  a1[8] = 0;
  *(a2 + 136) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  *(a2 + 56) = 0;
  *(a2 + 72) = 0;
  result = mach_absolute_time();
  *(a2 + 80) = result;
  return result;
}

uint64_t APSAudioHoseMetricCollectorDeregisterHose(uint64_t a1, const void *a2)
{
  if (a1 && (v3 = a1, a1 = CFDictionaryContainsKey(*(a1 + 24), a2), a1))
  {
    v4 = *(v3 + 32);
    FigSimpleMutexLock();
    if (gLogCategory_APSAudioHoseMetricCollector <= 50 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    CFDictionaryRemoveValue(*(v3 + 24), a2);
    v5 = *(v3 + 32);
    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {
    APSLogErrorAt(a1);
    return 4294960591;
  }
}

uint64_t APSAudioHoseMetricCollectorUpdateMediaTimeStatsForHose(uint64_t a1, const void *a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v52 = *MEMORY[0x277D85DE8];
  if (!a1 || !a2)
  {
    APSLogErrorAt(0);
    v37 = 4294960591;
    goto LABEL_53;
  }

  if ((*(a4 + 12) & 1) == 0 || (*(a5 + 12) & 1) == 0)
  {
    APSLogErrorAt(0);
    v37 = 0;
    goto LABEL_53;
  }

  v10 = *(a1 + 32);
  FigSimpleMutexLock();
  if (gLogCategory_APSAudioHoseMetricCollector <= 30 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
  {
    time = *a3;
    CMTimeGetSeconds(&time);
    LogPrintF();
  }

  Value = CFDictionaryGetValue(*(a1 + 24), a2);
  if (Value)
  {
    v12 = Value;
    if (*(a3 + 12))
    {
      v13 = *a3;
      Value[6] = *(a3 + 2);
      *(Value + 2) = v13;
    }

    v49 = *a4;
    v14 = *(a4 + 12);
    v50 = *(a4 + 8);
    v15 = *(a4 + 16);
    v47 = *a5;
    v16 = *(a5 + 12);
    v48 = *(a5 + 8);
    v17 = *(a5 + 16);
    v43 = *MEMORY[0x277CC08F0];
    *&time.value = *MEMORY[0x277CC08F0];
    v18 = *(MEMORY[0x277CC08F0] + 16);
    time.epoch = v18;
    v19 = *(a1 + 32);
    FigSimpleMutexCheckIsLockedOnThisThread();
    if (*(v12 + 18) != 1 || (v14 & 1) == 0 || (v16 & 1) == 0)
    {
      goto LABEL_36;
    }

    if (v12[19])
    {
LABEL_27:
      v25 = mach_absolute_time();
      v26 = v12[7];
      if (UpTicksToMilliseconds() >= 0x3E8)
      {
        v12[7] = v25;
        lhs = *(v12 + 4);
        rhs.value = v49;
        rhs.timescale = v50;
        rhs.flags = v14;
        rhs.epoch = v15;
        CMTimeSubtract(&time, &lhs, &rhs);
        lhs = time;
        *&rhs.value = v43;
        rhs.epoch = v18;
        if ((CMTimeCompare(&lhs, &rhs) & 0x80000000) == 0)
        {
          rhs.value = v47;
          rhs.timescale = v48;
          rhs.flags = v16;
          rhs.epoch = v17;
          v44.value = v49;
          v44.timescale = v50;
          v44.flags = v14;
          v44.epoch = v15;
          CMTimeSubtract(&lhs, &rhs, &v44);
          Seconds = CMTimeGetSeconds(&lhs);
          lhs = time;
          v28 = CMTimeGetSeconds(&lhs);
          v29 = *(v12 + 8);
          if (v29 >= Seconds)
          {
            v29 = Seconds;
          }

          v30 = v28 / v29 * 100.0;
          if (gLogCategory_APSAudioHoseMetricCollector <= 50 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
          {
            v31 = *v12;
            lhs = time;
            CMTimeGetSeconds(&lhs);
            lhs.value = v49;
            lhs.timescale = v50;
            lhs.flags = v14;
            lhs.epoch = v15;
            CMTimeGetSeconds(&lhs);
            *(v12 + 8);
            LogPrintF();
          }

          APSStatsHistogramAddValue(v12[19], v30);
        }
      }

LABEL_36:
      rhs.value = *a4;
      v32 = *(a4 + 12);
      rhs.timescale = *(a4 + 8);
      if (v32)
      {
        v33 = *(a4 + 16);
        v34 = *(a1 + 32);
        FigSimpleMutexCheckIsLockedOnThisThread();
        if (gLogCategory_APSAudioHoseMetricCollector <= 30 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
        {
          v35 = *v12;
          time = *(v12 + 4);
          CMTimeGetSeconds(&time);
          time = *(v12 + 25);
          CMTimeGetSeconds(&time);
          time.value = rhs.value;
          time.timescale = rhs.timescale;
          time.flags = v32;
          time.epoch = v33;
          CMTimeGetSeconds(&time);
          LogPrintF();
        }

        time = *(v12 + 4);
        lhs.value = rhs.value;
        lhs.timescale = rhs.timescale;
        lhs.flags = v32;
        lhs.epoch = v33;
        if (CMTimeCompare(&time, &lhs) < 0 && (*(v12 + 212) & 1) == 0 && *(v12 + 18) == 1)
        {
          v12[25] = rhs.value;
          *(v12 + 52) = rhs.timescale;
          *(v12 + 53) = v32;
          v12[27] = v33;
          ++*(v12 + 56);
          if (gLogCategory_APSAudioHoseMetricCollector <= 50 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
          {
            v36 = *v12;
            time = *(v12 + 25);
            CMTimeGetSeconds(&time);
            LogPrintF();
          }
        }

        else
        {
          time = *(v12 + 4);
          lhs.value = rhs.value;
          lhs.timescale = rhs.timescale;
          lhs.flags = v32;
          lhs.epoch = v33;
          if (CMTimeCompare(&time, &lhs) >= 1 && (*(v12 + 44) & 1) != 0 && (*(v12 + 212) & 1) != 0)
          {
            time.value = rhs.value;
            time.timescale = rhs.timescale;
            time.flags = v32;
            time.epoch = v33;
            metricCollector_cancelUnderrunForHoseInternal(a1, v12, &time);
          }
        }
      }

      v37 = 0;
      goto LABEL_52;
    }

    if (gLogCategory_APSAudioHoseMetricCollector <= 30 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
    {
      v41 = *v12;
      LogPrintF();
    }

    v20 = *(a1 + 32);
    FigSimpleMutexCheckIsLockedOnThisThread();
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v22 = Mutable;
      CFDictionarySetValue(Mutable, @"Name", @"Histogram_ReceiverBufferLevel");
      CFDictionarySetValue(v22, @"UnitName", @"ms");
      FigCFDictionarySetDouble();
      FigCFDictionarySetDouble();
      FigCFDictionarySetInt32();
      v23 = APSStatsHistogramCreate(v22);
      if (v23)
      {
        v24 = v23;
        v12[19] = CFRetain(v23);
        if (gLogCategory_APSAudioHoseMetricCollector <= 50 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
        {
          v42 = *v12;
          LogPrintF();
        }

        CFRelease(v22);
        CFRelease(v24);
        goto LABEL_27;
      }

      APSLogErrorAt(0);
      CFRelease(v22);
    }

    else
    {
      APSLogErrorAt(0);
    }

    v37 = 4294960568;
    APSLogErrorAt(4294960568);
    APSLogErrorAt(4294960568);
  }

  else
  {
    APSLogErrorAt(0);
    v37 = 4294960569;
  }

LABEL_52:
  v38 = *(a1 + 32);
  FigSimpleMutexUnlock();
LABEL_53:
  v39 = *MEMORY[0x277D85DE8];
  return v37;
}

void metricCollector_cancelUnderrunForHoseInternal(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v18 = **&MEMORY[0x277CC08F0];
  if (*(a3 + 12))
  {
    v6 = *(a1 + 32);
    FigSimpleMutexCheckIsLockedOnThisThread();
    if (*(a2 + 212))
    {
      lhs = *a3;
      rhs = *(a2 + 25);
      CMTimeSubtract(&v18, &lhs, &rhs);
      if (gLogCategory_APSAudioHoseMetricCollector <= 50 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
      {
        v7 = *a2;
        lhs = *a3;
        CMTimeGetSeconds(&lhs);
        lhs = v18;
        CMTimeGetSeconds(&lhs);
        v16 = *(a2 + 56);
        LogPrintF();
      }

      v17 = v18;
      v8 = *(a1 + 32);
      FigSimpleMutexCheckIsLockedOnThisThread();
      rhs = *(a2 + 228);
      time2 = v17;
      CMTimeAdd(&lhs, &rhs, &time2);
      *(a2 + 228) = lhs;
      rhs = *(a2 + 252);
      time2 = v17;
      CMTimeMinimum(&lhs, &rhs, &time2);
      *(a2 + 252) = lhs;
      rhs = *(a2 + 276);
      time2 = v17;
      CMTimeMaximum(&lhs, &rhs, &time2);
      *(a2 + 276) = lhs;
      v9 = *(a2 + 39);
      v10 = (*(a2 + 56) - 1);
      lhs = v17;
      Seconds = CMTimeGetSeconds(&lhs);
      LODWORD(v12) = *(a2 + 56);
      *(a2 + 39) = (Seconds + v9 * v10) / v12;
      lhs = v17;
      v13 = CMTimeGetSeconds(&lhs);
      LODWORD(v14) = *(a2 + 56);
      *(a2 + 38) = *(a2 + 38) + (v13 - *(a2 + 38)) / v14;
      v15 = MEMORY[0x277CC0898];
      *(a2 + 25) = *MEMORY[0x277CC0898];
      a2[27] = *(v15 + 16);
    }
  }
}

uint64_t APSAudioHoseMetricCollectorSetPlaybackStateForHose(uint64_t a1, const void *a2, int a3, __int128 *a4)
{
  if (a1 && a2 && (*(a4 + 12) & 1) != 0)
  {
    v8 = *(a1 + 32);
    FigSimpleMutexLock();
    if (gLogCategory_APSAudioHoseMetricCollector <= 30 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    Value = CFDictionaryGetValue(*(a1 + 24), a2);
    if (Value)
    {
      v10 = Value;
      if (!a3 && *(Value + 18) == 1)
      {
        v14 = *a4;
        v15 = *(a4 + 2);
        metricCollector_cancelUnderrunForHoseInternal(a1, Value, &v14);
      }

      v11 = 0;
      *(v10 + 18) = a3;
    }

    else
    {
      APSLogErrorAt(0);
      v11 = 4294960569;
    }

    v12 = *(a1 + 32);
    FigSimpleMutexUnlock();
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return v11;
}

uint64_t APSAudioHoseMetricCollectorUpdateSendRateForHose(uint64_t a1, const void *a2, double a3)
{
  if (a1 && a2)
  {
    v6 = *(a1 + 32);
    FigSimpleMutexLock();
    if (gLogCategory_APSAudioHoseMetricCollector <= 30 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    Value = CFDictionaryGetValue(*(a1 + 24), a2);
    if (Value)
    {
      if (*(Value + 7) == 2)
      {
        APSLogErrorAt(0);
        v10 = 4294960591;
      }

      else
      {
        v8 = *(Value + 24);
        *(Value + 24) = v8 + 1;
        v9 = (v8 + 1);
        Value[22] = (a3 + Value[22] * v8) / v9;
        if (Value[20] > a3)
        {
          Value[20] = a3;
        }

        if (Value[21] < a3)
        {
          Value[21] = a3;
        }

        v10 = 0;
        Value[23] = Value[23] + (a3 - Value[23]) / v9;
      }
    }

    else
    {
      APSLogErrorAt(0);
      v10 = 4294960569;
    }

    v11 = *(a1 + 32);
    FigSimpleMutexUnlock();
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return v10;
}

uint64_t APSAudioHoseMetricCollectorUpdateSendWindowDataForHose(uint64_t a1, const void *a2, unsigned int a3, unsigned int a4)
{
  if (a1 && a2)
  {
    v8 = *(a1 + 32);
    FigSimpleMutexLock();
    if (gLogCategory_APSAudioHoseMetricCollector <= 30 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    Value = CFDictionaryGetValue(*(a1 + 24), a2);
    if (Value)
    {
      v10 = 0;
      v11 = *(Value + 14) + 1;
      *(Value + 14) = v11;
      v12 = v11;
      Value[45] = Value[45] + (a3 - Value[45]) / v11;
      v13 = *(Value + 46);
      if (v13 <= a3)
      {
        v13 = a3;
      }

      *(Value + 46) = v13;
      Value[47] = Value[47] + (a4 - Value[47]) / v12;
      v14 = *(Value + 48);
      if (v14 <= a4)
      {
        v14 = a4;
      }

      *(Value + 48) = v14;
    }

    else
    {
      APSLogErrorAt(0);
      v10 = 4294960569;
    }

    v15 = *(a1 + 32);
    FigSimpleMutexUnlock();
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return v10;
}

uint64_t APSAudioHoseMetricCollectorUpdateSlotsAvailableCountForHose(uint64_t a1, const void *a2, unsigned int a3)
{
  if (!a1 || !a2)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  v6 = *(a1 + 32);
  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(*(a1 + 24), a2);
  if (!Value)
  {
    APSLogErrorAt(0);
    v13 = 4294960569;
    goto LABEL_16;
  }

  v8 = Value;
  if (gLogCategory_APSAudioHoseMetricCollector <= 30 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v9 = *(v8 + 15) + 1;
  *(v8 + 15) = v9;
  v8[49] = v8[49] + (a3 - v8[49]) / v9;
  v10 = *(v8 + 18);
  if (a3)
  {
    if (v10)
    {
      mach_absolute_time();
      v11 = *(v8 + 18);
      v12 = UpTicksToMilliseconds();
      v13 = 0;
      v14 = *(v8 + 52);
      if (v14 <= v12)
      {
        v14 = v12;
      }

      v8[18] = 0.0;
      v8[51] = v8[51] + (v12 - v8[51]) / *(v8 + 50);
      *(v8 + 52) = v14;
      goto LABEL_16;
    }
  }

  else if (!v10)
  {
    v13 = 0;
    *(v8 + 18) = mach_absolute_time();
    ++*(v8 + 50);
    goto LABEL_16;
  }

  v13 = 0;
LABEL_16:
  v15 = *(a1 + 32);
  FigSimpleMutexUnlock();
  return v13;
}

uint64_t APSAudioHoseMetricCollectorUpdatePacketSize(uint64_t a1, unint64_t a2, CMTime *a3)
{
  if (a1)
  {
    v6 = *(a1 + 32);
    FigSimpleMutexLock();
    if (gLogCategory_APSAudioHoseMetricCollector <= 30 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    time = *a3;
    v7 = CMTimeGetSeconds(&time) + *(a1 + 56);
    *(a1 + 56) = v7;
    if (v7 > 5.0)
    {
      v8 = *(a1 + 64) + 1;
      *(a1 + 56) = 0;
      *(a1 + 64) = v8;
      v9 = *(a1 + 48);
      v10 = a2;
      if (v9 != -1.0)
      {
        v10 = v9 + (v10 - v9) / v8;
      }

      *(a1 + 48) = v10;
    }

    v11 = *(a1 + 32);
    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }
}

uint64_t APSAudioHoseMetricCollectorUpdateRateControllerDataForHose(uint64_t a1, const void *a2, unint64_t a3, unint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7)
{
  if (!a1 || !a2)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  v14 = *(a1 + 32);
  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(*(a1 + 24), a2);
  if (Value)
  {
    v16 = Value;
    if (gLogCategory_APSAudioHoseMetricCollector <= 30 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v17 = *(v16 + 16) + 1;
    *(v16 + 16) = v17;
    v18 = v17;
    *(v16 + 55) = *(v16 + 55) + (a3 - *(v16 + 55)) / v17;
    v20 = *(v16 + 53);
    v19 = *(v16 + 54);
    if (v19 <= a3)
    {
      v19 = a3;
    }

    if (v20 >= a3)
    {
      v20 = a3;
    }

    *(v16 + 53) = v20;
    *(v16 + 54) = v19;
    v21 = *(v16 + 58);
    if (a6 && v21 == -1.0)
    {
      *(v16 + 58) = a6;
      v22 = a6;
      *(v16 + 57) = a6;
    }

    else
    {
      if (v21 <= -1.0)
      {
LABEL_21:
        v25 = *(v16 + 61);
        if (a7 && v25 == -1.0)
        {
          *(v16 + 61) = a7;
          v26 = a7;
          *(v16 + 60) = a7;
        }

        else
        {
          if (v25 <= -1.0)
          {
            goto LABEL_30;
          }

          *(v16 + 61) = v25 + (a7 - v25) / v18;
          v26 = a7;
          v28 = *(v16 + 59);
          v27 = *(v16 + 60);
          if (v27 <= a7)
          {
            v27 = a7;
          }

          *(v16 + 60) = v27;
          if (v28 < a7)
          {
            v26 = v28;
          }
        }

        *(v16 + 59) = v26;
LABEL_30:
        v29 = a5 - a3;
        *(v16 + 64) = *(v16 + 64) + (v29 - *(v16 + 64)) / v18;
        v30 = *(v16 + 62);
        v31 = *(v16 + 63);
        if (v30 <= v29)
        {
          v30 = v29;
        }

        if (v31 >= v29)
        {
          v31 = v29;
        }

        *(v16 + 62) = v30;
        *(v16 + 63) = v31;
        if (gLogCategory_APSAudioHoseMetricCollector > 30)
        {
          goto LABEL_38;
        }

        if (gLogCategory_APSAudioHoseMetricCollector == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_38;
          }

          v40 = *(v16 + 64);
          v41 = *(v16 + 62);
          v42 = *(v16 + 63);
        }

        LogPrintF();
LABEL_38:
        v32 = 0;
        v33 = *(v16 + 65);
        if (v33 <= a4)
        {
          v33 = a4;
        }

        *(v16 + 65) = v33;
        v34 = *(v16 + 66);
        if (v34 >= a4)
        {
          v34 = a4;
        }

        *(v16 + 66) = v34;
        v35 = *(v16 + 16);
        *(v16 + 67) = *(v16 + 67) + (a4 - *(v16 + 67)) / v35;
        v36 = a3 - a4;
        *(v16 + 70) = *(v16 + 70) + ((a3 - a4) - *(v16 + 70)) / v35;
        v37 = *(v16 + 68);
        if (v37 <= a3 - a4)
        {
          v37 = a3 - a4;
        }

        *(v16 + 68) = v37;
        if (*(v16 + 69) < v36)
        {
          v36 = *(v16 + 69);
        }

        *(v16 + 69) = v36;
        goto LABEL_47;
      }

      *(v16 + 58) = v21 + (a6 - v21) / v18;
      v22 = a6;
      v24 = *(v16 + 56);
      v23 = *(v16 + 57);
      if (v23 <= a6)
      {
        v23 = a6;
      }

      *(v16 + 57) = v23;
      if (v24 < a6)
      {
        v22 = v24;
      }
    }

    *(v16 + 56) = v22;
    goto LABEL_21;
  }

  APSLogErrorAt(0);
  v32 = 4294960569;
LABEL_47:
  v38 = *(a1 + 32);
  FigSimpleMutexUnlock();
  return v32;
}

uint64_t APSAudioHoseMetricCollectorUpdateAPATTransmissionDataForHose(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 && a2)
  {
    v12 = *(a1 + 32);
    FigSimpleMutexLock();
    Value = CFDictionaryGetValue(*(a1 + 24), a2);
    if (Value)
    {
      v14 = Value;
      if (gLogCategory_APSAudioHoseMetricCollector <= 30 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v15 = *(v14 + 11) + a3;
      *(v14 + 11) = v15;
      v16 = *(v14 + 40) + a4;
      *(v14 + 40) = v16;
      v14[41] = v16 / v15;
      mach_absolute_time();
      v17 = *(v14 + 10);
      v18 = UpTicksToSeconds();
      v19 = 0;
      v20 = *(v14 + 12) + a5;
      v21 = *(v14 + 13) + a6;
      *(v14 + 12) = v20;
      *(v14 + 13) = v21;
      v14[42] = (v21 + v20) / v18;
      v14[43] = v20 / v18;
    }

    else
    {
      APSLogErrorAt(0);
      v19 = 4294960569;
    }

    v22 = *(a1 + 32);
    FigSimpleMutexUnlock();
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return v19;
}

uint64_t APSAudioHoseMetricCollectorUpdateRoundTripTimeDataForHose(uint64_t a1, const void *a2, unint64_t a3)
{
  if (a1 && a2)
  {
    v6 = *(a1 + 32);
    FigSimpleMutexLock();
    Value = CFDictionaryGetValue(*(a1 + 24), a2);
    if (Value)
    {
      v8 = Value;
      if (gLogCategory_APSAudioHoseMetricCollector <= 30 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v9 = 0;
      v10 = *(v8 + 17) + 1;
      *(v8 + 17) = v10;
      v11 = v10;
      v12 = *(v8 + 72);
      if (v12 <= a3)
      {
        v12 = a3;
      }

      *(v8 + 72) = v12;
      v13 = *(v8 + 73);
      if (v13 >= a3)
      {
        v13 = a3;
      }

      v8[71] = v8[71] + (a3 - v8[71]) / v11;
      *(v8 + 73) = v13;
    }

    else
    {
      APSLogErrorAt(0);
      v9 = 4294960569;
    }

    v14 = *(a1 + 32);
    FigSimpleMutexUnlock();
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return v9;
}

uint64_t APSAudioHoseMetricCollectorIncrementRTCPSignatureFailureCountForHose(uint64_t a1, const void *a2)
{
  if (a1 && a2)
  {
    v4 = *(a1 + 32);
    FigSimpleMutexLock();
    Value = CFDictionaryGetValue(*(a1 + 24), a2);
    if (Value)
    {
      v6 = Value;
      if (gLogCategory_APSAudioHoseMetricCollector <= 30 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v7 = 0;
      ++v6[44];
    }

    else
    {
      APSLogErrorAt(0);
      v7 = 4294960569;
    }

    v8 = *(a1 + 32);
    FigSimpleMutexUnlock();
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return v7;
}

uint64_t APSAudioHoseMetricCollectorReportMetrics(uint64_t a1, __int128 *a2)
{
  if (a1 && (*(a2 + 12) & 1) != 0)
  {
    v4 = *(a1 + 32);
    FigSimpleMutexLock();
    if (gLogCategory_APSAudioHoseMetricCollector <= 50 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v5 = *(a1 + 24);
    v8 = *a2;
    v9 = *(a2 + 2);
    CFDictionaryApplyBlock();
    v6 = *(a1 + 32);
    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }
}

uint64_t __APSAudioHoseMetricCollectorReportMetrics_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 152))
  {
    v4 = result;
    v5 = *(result + 32);
    time = *(v4 + 40);
    metricCollector_cancelUnderrunForHoseInternal(v5, a3, &time);
    v6 = *(v4 + 32);
    v7 = mach_absolute_time();
    v8 = *(v6 + 32);
    FigSimpleMutexCheckIsLockedOnThisThread();
    v9 = v7 - *(a3 + 80);
    if (UpTicksToSeconds() <= *(v6 + 40))
    {
      return metricCollector_resetMetricsAndDataForHoseInternal(*(v4 + 32), a3);
    }

    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      APSLogErrorAt(0);
      return metricCollector_resetMetricsAndDataForHoseInternal(*(v4 + 32), a3);
    }

    v11 = Mutable;
    v12 = *(a3 + 28);
    v13 = @"RTP";
    if (v12 == 2)
    {
      v13 = @"APAT";
    }

    if (v12 == 1)
    {
      v14 = @"APAP";
    }

    else
    {
      v14 = v13;
    }

    v15 = *(a3 + 152);
    if (!v15 || (v16 = APSStatsHistogramCopyValuesAsRTCString(v15)) == 0)
    {
      APSLogErrorAt(0);
      v87 = v11;
LABEL_140:
      CFRelease(v87);
LABEL_141:
      CFRelease(v14);
      return metricCollector_resetMetricsAndDataForHoseInternal(*(v4 + 32), a3);
    }

    v17 = v16;
    UpTicksToMilliseconds();
    UInt64 = FigCFNumberCreateUInt64();
    cf = v17;
    v139 = v14;
    if (!UInt64)
    {
      goto LABEL_148;
    }

    v19 = *(v6 + 24);
    FigCFDictionaryGetCount();
    FigCFDictionarySetUInt32();
    FigCFDictionarySetValue();
    v20 = *(a3 + 8);
    FigCFDictionarySetValue();
    v21 = *(a3 + 16);
    FigCFDictionarySetValue();
    v22 = MEMORY[0x277CBED28];
    if (!*(a3 + 24))
    {
      v22 = MEMORY[0x277CBED10];
    }

    v23 = *v22;
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    if (gLogCategory_APSAudioHoseMetricCollector <= 50 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
    {
      *v143 = *a3;
      v24 = *(a3 + 16);
      v25 = *(v6 + 24);
      FigCFDictionaryGetCount();
      LogPrintF();
    }

    time = *(a3 + 228);
    CMTimeGetSeconds(&time);
    Float64 = FigCFNumberCreateFloat64();
    if (!Float64)
    {
LABEL_148:
      APSLogErrorAt(0);
      v86 = 0;
      v144 = 0;
      v29 = 0;
      v31 = 0;
      v33 = 0;
      v36 = 0;
      v140 = 0;
      v141 = 0;
      v35 = 0;
      goto LABEL_121;
    }

    if (*(a3 + 264))
    {
      v26 = a3 + 252;
      v27 = *(a3 + 252);
    }

    else
    {
      v26 = MEMORY[0x277CC08F0];
      v27 = *MEMORY[0x277CC08F0];
    }

    *&time.value = v27;
    time.epoch = *(v26 + 16);
    CMTimeGetSeconds(&time);
    v28 = FigCFNumberCreateFloat64();
    if (v28)
    {
      v144 = v28;
      time = *(a3 + 276);
      CMTimeGetSeconds(&time);
      v29 = FigCFNumberCreateFloat64();
      if (v29)
      {
        v30 = *(a3 + 304);
        v31 = FigCFNumberCreateFloat64();
        if (v31)
        {
          v32 = *(a3 + 312);
          v33 = FigCFNumberCreateFloat64();
          if (v33)
          {
            time = *(a3 + 228);
            CMTimeGetSeconds(&time);
            UpTicksToSeconds();
            v34 = *(a3 + 224);
            FigCFDictionarySetUInt32();
            FigCFDictionarySetValue();
            FigCFDictionarySetValue();
            FigCFDictionarySetValue();
            FigCFDictionarySetValue();
            FigCFDictionarySetValue();
            if (gLogCategory_APSAudioHoseMetricCollector <= 50 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
            {
              v101 = *(a3 + 224);
              v89 = *a3;
              LogPrintF();
            }

            if (*(a3 + 28) == 2)
            {
              v140 = 0;
              v141 = 0;
              v35 = 0;
              v36 = 0;
              goto LABEL_41;
            }

            v37 = *(a3 + 160);
            v36 = FigCFNumberCreateFloat64();
            if (v36)
            {
              v38 = *(a3 + 168);
              v39 = FigCFNumberCreateFloat64();
              if (v39)
              {
                v141 = v39;
                v40 = *(a3 + 184);
                v41 = FigCFNumberCreateFloat64();
                if (v41)
                {
                  v140 = v41;
                  v42 = *(a3 + 176);
                  v35 = FigCFNumberCreateFloat64();
                  if (!v35)
                  {
                    APSLogErrorAt(0);
                    goto LABEL_120;
                  }

                  FigCFDictionarySetValue();
                  FigCFDictionarySetValue();
                  FigCFDictionarySetValue();
                  FigCFDictionarySetValue();
                  if (gLogCategory_APSAudioHoseMetricCollector <= 50 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
                  {
                    v90 = *a3;
                    LogPrintF();
                  }

                  if (*(a3 + 28) != 2)
                  {
                    goto LABEL_42;
                  }

LABEL_41:
                  if (*(a3 + 24))
                  {
                    goto LABEL_42;
                  }

                  v137 = v36;
                  v43 = *(a3 + 320);
                  v44 = FigCFDictionarySetUInt64();
                  if (v44)
                  {
                    v88 = v44;
                  }

                  else
                  {
                    v45 = *(a3 + 328);
                    v44 = FigCFDictionarySetDouble();
                    if (v44)
                    {
                      v88 = v44;
                    }

                    else
                    {
                      v46 = *(a3 + 336);
                      v44 = FigCFDictionarySetUInt64();
                      if (v44)
                      {
                        v88 = v44;
                      }

                      else
                      {
                        v47 = *(a3 + 344);
                        v44 = FigCFDictionarySetUInt64();
                        if (v44)
                        {
                          v88 = v44;
                        }

                        else
                        {
                          v48 = *(a3 + 352);
                          v44 = FigCFDictionarySetUInt64();
                          if (v44)
                          {
                            v88 = v44;
                          }

                          else
                          {
                            if (*(v6 + 48) == -1.0)
                            {
                              goto LABEL_59;
                            }

                            v44 = FigCFDictionarySetUInt64();
                            if (!v44)
                            {
                              if (gLogCategory_APSAudioHoseMetricCollector <= 50 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
                              {
                                v133 = *(a3 + 352);
                                v135 = *(v6 + 48);
                                v120 = *(a3 + 336);
                                v129 = *(a3 + 344);
                                v111 = *(a3 + 328);
                                v92 = *a3;
                                v102 = *(a3 + 320);
                                LogPrintF();
                              }

LABEL_59:
                              v49 = *(v6 + 32);
                              FigSimpleMutexCheckIsLockedOnThisThread();
                              v50 = *(a3 + 376);
                              v44 = FigCFDictionarySetUInt64();
                              if (v44)
                              {
                                v88 = v44;
                              }

                              else
                              {
                                v51 = *(a3 + 384);
                                v44 = FigCFDictionarySetUInt64();
                                if (v44)
                                {
                                  v88 = v44;
                                }

                                else
                                {
                                  v52 = *(a3 + 360);
                                  v44 = FigCFDictionarySetUInt64();
                                  if (v44)
                                  {
                                    v88 = v44;
                                  }

                                  else
                                  {
                                    v53 = *(a3 + 368);
                                    v44 = FigCFDictionarySetUInt64();
                                    if (v44)
                                    {
                                      v88 = v44;
                                    }

                                    else
                                    {
                                      if (gLogCategory_APSAudioHoseMetricCollector <= 50 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
                                      {
                                        v121 = *(a3 + 360);
                                        v130 = *(a3 + 368);
                                        v103 = *(a3 + 376);
                                        v112 = *(a3 + 384);
                                        v93 = *a3;
                                        LogPrintF();
                                      }

                                      v54 = *(v6 + 32);
                                      FigSimpleMutexCheckIsLockedOnThisThread();
                                      v55 = *(a3 + 392);
                                      v44 = FigCFDictionarySetUInt64();
                                      if (v44)
                                      {
                                        v88 = v44;
                                      }

                                      else
                                      {
                                        v56 = *(a3 + 400);
                                        v44 = FigCFDictionarySetUInt64();
                                        if (v44)
                                        {
                                          v88 = v44;
                                        }

                                        else
                                        {
                                          v57 = *(a3 + 408);
                                          v44 = FigCFDictionarySetUInt64();
                                          if (v44)
                                          {
                                            v88 = v44;
                                          }

                                          else
                                          {
                                            v58 = *(a3 + 416);
                                            v44 = FigCFDictionarySetUInt64();
                                            if (v44)
                                            {
                                              v88 = v44;
                                            }

                                            else
                                            {
                                              if (gLogCategory_APSAudioHoseMetricCollector <= 50 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
                                              {
                                                v122 = *(a3 + 408);
                                                v131 = *(a3 + 416);
                                                v104 = *(a3 + 392);
                                                v113 = *(a3 + 400);
                                                v94 = *a3;
                                                LogPrintF();
                                              }

                                              v59 = *(v6 + 32);
                                              FigSimpleMutexCheckIsLockedOnThisThread();
                                              v60 = *(a3 + 440);
                                              v44 = FigCFDictionarySetUInt64();
                                              if (v44)
                                              {
                                                v88 = v44;
                                              }

                                              else
                                              {
                                                v61 = *(a3 + 432);
                                                v44 = FigCFDictionarySetInt64();
                                                if (v44)
                                                {
                                                  v88 = v44;
                                                }

                                                else
                                                {
                                                  v62 = *(a3 + 424);
                                                  v44 = FigCFDictionarySetInt64();
                                                  if (v44)
                                                  {
                                                    v88 = v44;
                                                  }

                                                  else
                                                  {
                                                    if (gLogCategory_APSAudioHoseMetricCollector <= 50 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
                                                    {
                                                      v114 = *(a3 + 432);
                                                      v123 = *(a3 + 424);
                                                      v95 = *a3;
                                                      v105 = *(a3 + 440);
                                                      LogPrintF();
                                                    }

                                                    v63 = *(v6 + 32);
                                                    FigSimpleMutexCheckIsLockedOnThisThread();
                                                    v64 = *(a3 + 464);
                                                    v44 = FigCFDictionarySetUInt64();
                                                    if (v44)
                                                    {
                                                      v88 = v44;
                                                    }

                                                    else
                                                    {
                                                      v65 = *(a3 + 456);
                                                      v44 = FigCFDictionarySetInt64();
                                                      if (v44)
                                                      {
                                                        v88 = v44;
                                                      }

                                                      else
                                                      {
                                                        v66 = *(a3 + 448);
                                                        v44 = FigCFDictionarySetInt64();
                                                        if (v44)
                                                        {
                                                          v88 = v44;
                                                        }

                                                        else
                                                        {
                                                          if (gLogCategory_APSAudioHoseMetricCollector <= 50 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
                                                          {
                                                            v115 = *(a3 + 456);
                                                            v124 = *(a3 + 448);
                                                            v96 = *a3;
                                                            v106 = *(a3 + 464);
                                                            LogPrintF();
                                                          }

                                                          v67 = *(v6 + 32);
                                                          FigSimpleMutexCheckIsLockedOnThisThread();
                                                          v68 = *(a3 + 488);
                                                          v44 = FigCFDictionarySetUInt64();
                                                          if (v44)
                                                          {
                                                            v88 = v44;
                                                          }

                                                          else
                                                          {
                                                            v69 = *(a3 + 480);
                                                            v44 = FigCFDictionarySetInt64();
                                                            if (v44)
                                                            {
                                                              v88 = v44;
                                                            }

                                                            else
                                                            {
                                                              v70 = *(a3 + 472);
                                                              v44 = FigCFDictionarySetInt64();
                                                              if (v44)
                                                              {
                                                                v88 = v44;
                                                              }

                                                              else
                                                              {
                                                                if (gLogCategory_APSAudioHoseMetricCollector <= 50 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
                                                                {
                                                                  v116 = *(a3 + 480);
                                                                  v125 = *(a3 + 472);
                                                                  v97 = *a3;
                                                                  v107 = *(a3 + 488);
                                                                  LogPrintF();
                                                                }

                                                                v71 = *(v6 + 32);
                                                                FigSimpleMutexCheckIsLockedOnThisThread();
                                                                v72 = *(a3 + 512);
                                                                v44 = FigCFDictionarySetUInt64();
                                                                if (v44)
                                                                {
                                                                  v88 = v44;
                                                                }

                                                                else
                                                                {
                                                                  v73 = *(a3 + 496);
                                                                  v44 = FigCFDictionarySetInt64();
                                                                  if (v44)
                                                                  {
                                                                    v88 = v44;
                                                                  }

                                                                  else
                                                                  {
                                                                    v74 = *(a3 + 504);
                                                                    v44 = FigCFDictionarySetInt64();
                                                                    if (v44)
                                                                    {
                                                                      v88 = v44;
                                                                    }

                                                                    else
                                                                    {
                                                                      if (gLogCategory_APSAudioHoseMetricCollector <= 50 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
                                                                      {
                                                                        v117 = *(a3 + 496);
                                                                        v126 = *(a3 + 504);
                                                                        v98 = *a3;
                                                                        v108 = *(a3 + 512);
                                                                        LogPrintF();
                                                                      }

                                                                      v75 = *(v6 + 32);
                                                                      FigSimpleMutexCheckIsLockedOnThisThread();
                                                                      v76 = *(a3 + 536);
                                                                      v44 = FigCFDictionarySetUInt64();
                                                                      if (v44)
                                                                      {
                                                                        v88 = v44;
                                                                      }

                                                                      else
                                                                      {
                                                                        v77 = *(a3 + 520);
                                                                        v44 = FigCFDictionarySetInt64();
                                                                        if (v44)
                                                                        {
                                                                          v88 = v44;
                                                                        }

                                                                        else
                                                                        {
                                                                          v78 = *(a3 + 528);
                                                                          v44 = FigCFDictionarySetInt64();
                                                                          if (v44)
                                                                          {
                                                                            v88 = v44;
                                                                          }

                                                                          else
                                                                          {
                                                                            v79 = *(a3 + 560);
                                                                            v44 = FigCFDictionarySetUInt64();
                                                                            if (v44)
                                                                            {
                                                                              v88 = v44;
                                                                            }

                                                                            else
                                                                            {
                                                                              v80 = *(a3 + 544);
                                                                              v44 = FigCFDictionarySetInt64();
                                                                              if (v44)
                                                                              {
                                                                                v88 = v44;
                                                                              }

                                                                              else
                                                                              {
                                                                                v81 = *(a3 + 552);
                                                                                v44 = FigCFDictionarySetInt64();
                                                                                if (v44)
                                                                                {
                                                                                  v88 = v44;
                                                                                }

                                                                                else
                                                                                {
                                                                                  if (gLogCategory_APSAudioHoseMetricCollector <= 50 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
                                                                                  {
                                                                                    v134 = *(a3 + 544);
                                                                                    v136 = *(a3 + 552);
                                                                                    v127 = *(a3 + 528);
                                                                                    v132 = *(a3 + 560);
                                                                                    v109 = *(a3 + 536);
                                                                                    v118 = *(a3 + 520);
                                                                                    v99 = *a3;
                                                                                    LogPrintF();
                                                                                  }

                                                                                  v82 = *(v6 + 32);
                                                                                  FigSimpleMutexCheckIsLockedOnThisThread();
                                                                                  v83 = *(a3 + 568);
                                                                                  v44 = FigCFDictionarySetUInt64();
                                                                                  if (v44)
                                                                                  {
                                                                                    v88 = v44;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v84 = *(a3 + 576);
                                                                                    v44 = FigCFDictionarySetInt64();
                                                                                    if (v44)
                                                                                    {
                                                                                      v88 = v44;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v85 = *(a3 + 584);
                                                                                      v44 = FigCFDictionarySetInt64();
                                                                                      if (!v44)
                                                                                      {
                                                                                        if (gLogCategory_APSAudioHoseMetricCollector > 50)
                                                                                        {
LABEL_119:
                                                                                          APSRTCReportingAgentSendEventWithCompletionHandler(*(v6 + 16), 10, v11, 0);
LABEL_120:
                                                                                          v86 = Float64;
                                                                                          goto LABEL_121;
                                                                                        }

                                                                                        if (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize())
                                                                                        {
                                                                                          v119 = *(a3 + 576);
                                                                                          v128 = *(a3 + 584);
                                                                                          v100 = *a3;
                                                                                          v110 = *(a3 + 568);
                                                                                          LogPrintF();
                                                                                        }

LABEL_42:
                                                                                        if (gLogCategory_APSAudioHoseMetricCollector <= 30 && (gLogCategory_APSAudioHoseMetricCollector != -1 || _LogCategory_Initialize()))
                                                                                        {
                                                                                          v91 = *a3;
                                                                                          LogPrintF();
                                                                                        }

                                                                                        goto LABEL_119;
                                                                                      }

                                                                                      v88 = v44;
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

                              goto LABEL_197;
                            }

                            v88 = v44;
                          }
                        }
                      }
                    }
                  }

LABEL_197:
                  APSLogErrorAt(v44);
                  v86 = Float64;
                  APSLogErrorAt(v88);
                  v36 = v137;
LABEL_121:
                  CFRelease(v11);
                  CFRelease(cf);
                  if (UInt64)
                  {
                    CFRelease(UInt64);
                  }

                  if (v86)
                  {
                    CFRelease(v86);
                  }

                  if (v144)
                  {
                    CFRelease(v144);
                  }

                  if (v29)
                  {
                    CFRelease(v29);
                  }

                  if (v31)
                  {
                    CFRelease(v31);
                  }

                  v14 = v139;
                  if (v33)
                  {
                    CFRelease(v33);
                  }

                  if (v36)
                  {
                    CFRelease(v36);
                  }

                  if (v141)
                  {
                    CFRelease(v141);
                  }

                  if (v35)
                  {
                    CFRelease(v35);
                  }

                  v87 = v140;
                  if (!v140)
                  {
                    goto LABEL_141;
                  }

                  goto LABEL_140;
                }

                APSLogErrorAt(0);
LABEL_158:
                v35 = 0;
                v140 = 0;
                goto LABEL_120;
              }
            }

            APSLogErrorAt(0);
LABEL_157:
            v141 = 0;
            goto LABEL_158;
          }

          APSLogErrorAt(0);
LABEL_156:
          v36 = 0;
          goto LABEL_157;
        }

        APSLogErrorAt(0);
LABEL_154:
        v33 = 0;
        goto LABEL_156;
      }

      APSLogErrorAt(0);
    }

    else
    {
      APSLogErrorAt(0);
      v144 = 0;
      v29 = 0;
    }

    v31 = 0;
    goto LABEL_154;
  }

  return result;
}

__CFString *APSNANServiceTypeGetTXTString(int a1)
{
  v1 = @"ll";
  if (a1 != 2)
  {
    v1 = 0;
  }

  if (a1 == 1)
  {
    return @"ap";
  }

  else
  {
    return v1;
  }
}

uint64_t APSNANServiceTypeMakeWithTXTString(uint64_t result)
{
  v3 = *MEMORY[0x277D85DE8];
  memset(v2, 0, sizeof(v2));
  if (result)
  {
    result = CFStringGetCString(result, v2, 256, 0x600u);
    if (result)
    {
      strlen(v2);
      result = APSNANServiceTypeMakeWithString(v2);
    }
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t APSNANServiceTypeMakeWithString(uint64_t result)
{
  if (result)
  {
    if (strncmpx())
    {
      return 2 * (strncmpx() == 0);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

BOOL APSNANServiceTypeIsKindOfType(int a1, int a2)
{
  v2 = a2 == 1;
  if (a1 != 1)
  {
    v2 = 0;
  }

  if (a1 == 2)
  {
    return (a2 - 1) < 2;
  }

  else
  {
    return v2;
  }
}

uint64_t APSCaulkMemoryResourceAllocatorCreate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a3)
  {
    operator new();
  }

  APSLogErrorAt(0);
  return 4294960591;
}

void sub_222349198(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  APSLogErrorAt(0);
  JUMPOUT(0x222349190);
}

uint64_t cmrAllocator_release(uint64_t result)
{
  if (atomic_fetch_add(result, 0xFFFFFFFFFFFFFFFFLL) == 1)
  {
    if (*(result + 16))
    {
      v2 = *(result + 8);
      if (v2)
      {
        (*(*v2 + 8))(v2);
      }
    }

    JUMPOUT(0x223DB5660);
  }

  return result;
}

void cmrAllocator_deallocate(char *a1, void **a2)
{
  v2 = *(a1 - 2);
  if ((*(a1 - 1) & v2) != 0)
  {
    v3 = FatalErrorF();
    v5 = v4;
    v6 = __cxa_begin_catch(v3);
    if (v5 == 2)
    {
      (*(*v6 + 16))(v6);
      v7 = 4294960534;
    }

    else
    {
      v7 = 4294960596;
    }

    APSSignalErrorAt(v7);

    __cxa_end_catch();
  }

  else
  {
    (*(*a2[1] + 24))(a2[1], a1 - 16, v2 + 16, 8);
  }
}

void *cmrAllocator_allocate(uint64_t a1, unint64_t a2, void **a3)
{
  v4 = (*(*a3[1] + 16))(a3[1], a1 + 16, 8);
  *v4 = a1;
  v4[1] = ~a1;
  return v4 + 2;
}

void sub_22234939C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::bad_alloc a10)
{
  if (a2 == 3)
  {
    __cxa_get_exception_ptr(a1);
    a10.__vftable = (MEMORY[0x277D82918] + 16);
    __cxa_begin_catch(a1);
    APSSignalErrorAt(4294960568);
    std::bad_alloc::~bad_alloc(&a10);
  }

  else
  {
    v12 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      (*(*v12 + 16))(v12);
      v13 = 4294960534;
    }

    else
    {
      v13 = 4294960596;
    }

    APSSignalErrorAt(v13);
  }

  __cxa_end_catch();
  JUMPOUT(0x22234938CLL);
}

uint64_t APSPriorityDispatchQueuePoolGetTypeID()
{
  if (gAPSPriorityDispatchQueuePoolInitOnce != -1)
  {
    dispatch_once_f(&gAPSPriorityDispatchQueuePoolInitOnce, 0, _APSPriorityDispatchQueuePoolGetTypeID);
  }

  return gAPSPriorityDispatchQueuePoolTypeID;
}

uint64_t _APSPriorityDispatchQueuePoolGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSPriorityDispatchQueuePoolTypeID = result;
  return result;
}

void _APSPriorityDispatchQueuePoolFinalize(uint64_t a1)
{
  free(*(a1 + 16));
  v2 = *(a1 + 32);
  FigSimpleMutexDestroy();
  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t APSPriorityDispatchQueuePoolCreate(uint64_t a1, int a2, CFTypeRef *a3)
{
  if (!a3)
  {
    return 4294960591;
  }

  if (gAPSPriorityDispatchQueuePoolInitOnce != -1)
  {
    dispatch_once_f(&gAPSPriorityDispatchQueuePoolInitOnce, 0, _APSPriorityDispatchQueuePoolGetTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return 4294960568;
  }

  v7 = Instance;
  *(Instance + 16) = 0u;
  *(Instance + 32) = 0u;
  if (!a1 || (v8 = CFStringCopyUTF8CString(), !v8))
  {
    *(v7 + 24) = a2;
    v9 = FigSimpleMutexCreate();
    *(v7 + 32) = v9;
    if (!v9)
    {
      goto LABEL_12;
    }

    v10 = *MEMORY[0x277CBECE8];
    valueCallBacks.version = 0;
    valueCallBacks.retain = queuePool_dictionaryDispatchQueueRetain;
    valueCallBacks.copyDescription = 0;
    valueCallBacks.equal = 0;
    valueCallBacks.release = queuePool_dictionaryDispatchQueueRelease;
    v11 = CFDictionaryCreateMutable(v10, 0, 0, &valueCallBacks);
    *(v7 + 40) = v11;
    if (v11)
    {
      v8 = 0;
      *a3 = CFRetain(v7);
    }

    else
    {
LABEL_12:
      v8 = 4294960568;
    }
  }

  CFRelease(v7);
  return v8;
}

NSObject *APSPriorityDispatchQueuePoolGetQueue(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = *(a1 + 32);
  FigSimpleMutexLock();
  if (a2 == 5)
  {
    a2 = *(a1 + 24);
  }

  Value = CFDictionaryGetValue(*(a1 + 40), a2);
  if (!Value)
  {
    if (a2 == 5)
    {
      v8 = dispatch_queue_create(*(a1 + 16), 0);
    }

    else
    {
      v8 = FigDispatchQueueCreateWithPriority();
    }

    Value = v8;
    if (v8)
    {
      CFDictionarySetValue(*(a1 + 40), a2, v8);
      dispatch_release(Value);
    }
  }

  v6 = *(a1 + 32);
  FigSimpleMutexUnlock();
  return Value;
}

uint64_t APSPriorityDispatchQueuePoolSyncFlush(uint64_t a1)
{
  if (!a1)
  {
    return 4294960591;
  }

  v2 = *(a1 + 32);
  FigSimpleMutexLock();
  Copy = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], *(a1 + 40));
  v4 = *(a1 + 32);
  FigSimpleMutexUnlock();
  if (!Copy)
  {
    return 4294960568;
  }

  CFDictionaryApplyFunction(Copy, queuePool_dictionarySyncFlushApplier, 0);
  CFRelease(Copy);
  return 0;
}

uint64_t APSCryptorChaCha20Poly1305Create(int a1, CFDataRef theData, char a3, void *a4)
{
  if (!theData)
  {
    v9 = 4294895585;
LABEL_14:
    APSLogErrorAt(0);
    return v9;
  }

  if (CFDataGetLength(theData) <= 31)
  {
    v9 = 4294895585;
    goto LABEL_14;
  }

  if (APSCryptorGetClassID_sRegisterOnce != -1)
  {
    dispatch_once_f(&APSCryptorGetClassID_sRegisterOnce, &APSCryptorGetClassID_sClassID, cryptor_registerBaseClass);
  }

  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    v9 = v7;
    APSLogErrorAt(v7);
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 264) = CFRetain(theData);
    *DerivedStorage = a3;
    if (gLogCategory_APSCryptorChaCha20Poly1305 <= 30 && (gLogCategory_APSCryptorChaCha20Poly1305 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v9 = 0;
    *a4 = 0;
  }

  return v9;
}

__CFString *chachaCryptor_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APSCryptorChaCha20Poly1305 %p>", a1);
  return Mutable;
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x28210FD68](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x2821100F0](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
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