double cclayout_offsetRectToFitBoundary(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  MinX = CGRectGetMinX(*&a1);
  v15 = a5;
  v44.origin.x = a5;
  v16 = a6;
  v44.origin.y = a6;
  v17 = a7;
  v44.size.width = a7;
  rect = a8;
  v44.size.height = a8;
  if (MinX >= CGRectGetMinX(v44))
  {
    v47.origin.x = v15;
    v18 = v16;
    v19 = v15;
    v47.origin.y = v18;
    v20 = v17;
    v47.size.width = v17;
    v47.size.height = rect;
    MaxX = CGRectGetMaxX(v47);
    v48.origin.x = a1;
    v48.origin.y = a2;
    v23 = a3;
    v22 = a4;
    v48.size.width = a3;
    v48.size.height = a4;
    v26 = CGRectGetMaxX(v48);
    v24 = 0.0;
    if (MaxX < v26)
    {
      v49.origin.x = a1;
      v49.origin.y = a2;
      v49.size.width = a3;
      v49.size.height = a4;
      v27 = CGRectGetMaxX(v49);
      v50.origin.x = v19;
      v50.origin.y = v18;
      v50.size.width = v20;
      v50.size.height = rect;
      v24 = -(v27 - CGRectGetMaxX(v50));
    }
  }

  else
  {
    v45.origin.x = v15;
    v18 = v16;
    v19 = v15;
    v45.origin.y = v18;
    v20 = v17;
    v45.size.width = v17;
    v45.size.height = rect;
    v21 = CGRectGetMinX(v45);
    v46.origin.x = a1;
    v46.origin.y = a2;
    v23 = a3;
    v22 = a4;
    v46.size.width = a3;
    v46.size.height = a4;
    v24 = v21 - CGRectGetMinX(v46);
  }

  dxa = v24;
  v51.origin.x = a1;
  v51.origin.y = a2;
  v51.size.width = v23;
  v51.size.height = v22;
  MinY = CGRectGetMinY(v51);
  v52.origin.x = v19;
  v52.origin.y = v18;
  v52.size.width = v20;
  v52.size.height = rect;
  if (MinY >= CGRectGetMinY(v52))
  {
    v55.origin.x = v19;
    v55.origin.y = v18;
    v55.size.width = v20;
    v55.size.height = rect;
    MaxY = CGRectGetMaxY(v55);
    v56.origin.x = a1;
    v56.origin.y = a2;
    v56.size.width = v23;
    v56.size.height = v22;
    v32 = CGRectGetMaxY(v56);
    v30 = 0.0;
    if (MaxY < v32)
    {
      v57.origin.x = a1;
      v57.origin.y = a2;
      v57.size.width = v23;
      v57.size.height = v22;
      v33 = CGRectGetMaxY(v57);
      v58.origin.x = v19;
      v58.origin.y = v18;
      v58.size.width = v20;
      v58.size.height = rect;
      v30 = -(v33 - CGRectGetMaxY(v58));
    }
  }

  else
  {
    v53.origin.x = v19;
    v53.origin.y = v18;
    v53.size.width = v20;
    v53.size.height = rect;
    v29 = CGRectGetMinY(v53);
    v54.origin.x = a1;
    v54.origin.y = a2;
    v54.size.width = v23;
    v54.size.height = v22;
    v30 = v29 - CGRectGetMinY(v54);
  }

  v34 = a1;
  v35 = a2;
  v36 = v23;
  v37 = v22;

  *&result = CGRectOffset(*&v34, dxa, v30);
  return result;
}

CGColorRef cclayout_createDeviceRGBColor(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  components[4] = *MEMORY[0x1E69E9840];
  components[0] = a1;
  components[1] = a2;
  components[2] = a3;
  components[3] = a4;
  v4 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  v5 = CGColorCreate(v4, components);
  CGColorSpaceRelease(v4);
  return v5;
}

double cclayout_unionCFDataRects(const void *a1)
{
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v6 = CFGetTypeID(a1);
  if (v6 == CFArrayGetTypeID())
  {
    if (a1)
    {
      Count = CFArrayGetCount(a1);
      if (Count >= 1)
      {
        v8 = Count;
        for (i = 0; i != v8; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
          v18.origin.x = cclayout_unionCFDataRects(ValueAtIndex);
          v18.origin.y = v11;
          v18.size.width = v12;
          v18.size.height = v13;
          v16.origin.x = x;
          v16.origin.y = y;
          v16.size.width = width;
          v16.size.height = height;
          v17 = CGRectUnion(v16, v18);
          x = v17.origin.x;
          y = v17.origin.y;
          width = v17.size.width;
          height = v17.size.height;
        }
      }
    }
  }

  else
  {
    v14 = CFGetTypeID(a1);
    if (v14 == CFDataGetTypeID())
    {
      return *CFDataGetBytePtr(a1);
    }
  }

  return x;
}

void cclayout_offsetCFDataRects(void *a1, double a2, double a3)
{
  v6 = CFGetTypeID(a1);
  if (v6 == CFArrayGetTypeID())
  {
    if (a1)
    {
      Count = CFArrayGetCount(a1);
      if (Count >= 1)
      {
        v8 = Count;
        for (i = 0; i != v8; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
          cclayout_offsetCFDataRects(ValueAtIndex, a2, a3);
        }
      }
    }
  }

  else
  {
    v11 = CFGetTypeID(a1);
    if (v11 == CFDataGetTypeID())
    {
      v14 = *CFDataGetBytePtr(a1);
      v12 = CGRectOffset(v14, a2, a3);
      v13.location = 0;
      v13.length = 32;
      CFDataReplaceBytes(a1, v13, &v12, 32);
    }
  }
}

void cclayout_AddRectWithColorAsPath(const __CFDictionary *a1, const void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  Mutable = CGPathCreateMutable();
  v15.origin.x = a3;
  v15.origin.y = a4;
  v15.size.width = a5;
  v15.size.height = a6;
  CGPathAddRect(Mutable, 0, v15);
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    CGPathAddPath(Value, 0, Mutable);
  }

  else
  {
    CFDictionaryAddValue(a1, a2, Mutable);
  }

  CGPathRelease(Mutable);
}

uint64_t FigTTMLTextCreate(const __CFAllocator *a1, uint64_t a2, __int128 *a3, void *a4)
{
  v8 = FigTTMLGetLibXMLAccess();
  if (v8)
  {
    v9 = v8;
    if (a4)
    {
      FigTTMLNodeGetClassID();
      v10 = CMDerivedObjectCreate();
      if (v10)
      {
        v13 = 0;
      }

      else
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        v12 = FigTTMLInitializeNodeBaseStorage(DerivedStorage, a3);
        if (v12)
        {
          v10 = v12;
          v13 = 0;
        }

        else
        {
          v13 = (*(v9 + 80))(a2);
          v14 = CFStringCreateWithCString(a1, v13, 0x8000100u);
          if (FigTTMLNodeUseDefaultWhitespaceHandling(0))
          {
            v15 = FigTTMLCopyStringWithDefaultWhitespaceHandling(v14);
            if (v14)
            {
              CFRelease(v14);
            }
          }

          else
          {
            v15 = v14;
          }

          *(DerivedStorage + 136) = v15;
          v10 = FigTTMLSkipNode(a2, a3, *(DerivedStorage + 128));
          if (!v10)
          {
            *a4 = 0;
          }
        }
      }
    }

    else
    {
      FigTTMLSetCreate_cold_1(&v17);
      v13 = 0;
      v10 = v17;
    }

    (*(v9 + 112))(v13);
  }

  else
  {
    FigTTMLTextCreate_cold_2(&v17);
    return v17;
  }

  return v10;
}

uint64_t FigTTMLTextCopyContent(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *(DerivedStorage + 136);
    if (v4)
    {
      v5 = CFRetain(v4);
    }

    else
    {
      v5 = 0;
    }

    result = 0;
    *a2 = v5;
  }

  else
  {
    FigTTMLTextCopyContent_cold_1(&v7);
    return v7;
  }

  return result;
}

void figTTMLText_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 136);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 136) = 0;
  }

  FigTTMLReleaseNodeBaseStorage(DerivedStorage);
}

CFTypeRef figTTMLText_CopyDebugDesc()
{
  result = *(CMBaseObjectGetDerivedStorage() + 136);
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

uint64_t figTTMLText_CopyChildNodeArray(const void *a1, CFMutableArrayRef *a2)
{
  if (a2)
  {
    v3 = CFGetAllocator(a1);
    *a2 = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
  }

  else
  {
    figTTMLText_CopyChildNodeArray_cold_1();
  }

  return 0;
}

uint64_t figTTMLText_GetNodeType(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    result = 0;
    *a2 = 14;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    figTTMLBody_CopyChildNodeArray_cold_1(&v5);
    return v5;
  }

  return result;
}

uint64_t FigVideoCompositorCreateCustom(const __CFAllocator *a1, uint64_t a2, void *a3)
{
  FigVideoCompositorGetClassID();
  v5 = CMDerivedObjectCreate();
  if (v5)
  {
    return v5;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 112) = 0;
  *(DerivedStorage + 88) = 1065353216;
  *(DerivedStorage + 160) = 0;
  *(DerivedStorage + 360) = 0x7FFFFFFFLL;
  *(DerivedStorage + 328) = 0x7FFFFFFFLL;
  v7 = FigSimpleMutexCreate();
  *(DerivedStorage + 16) = v7;
  if (!v7)
  {
    FigVideoCompositorCreateCustom_cold_7(&v16);
    return v16;
  }

  v8 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 168) = v8;
  if (!v8)
  {
    FigVideoCompositorCreateCustom_cold_6(&v16);
    return v16;
  }

  v9 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 192) = v9;
  if (!v9)
  {
    FigVideoCompositorCreateCustom_cold_5(&v16);
    return v16;
  }

  v10 = FigSimpleMutexCreate();
  *(DerivedStorage + 216) = v10;
  if (!v10)
  {
    FigVideoCompositorCreateCustom_cold_4(&v16);
    return v16;
  }

  v11 = FigSimpleMutexCreate();
  *(DerivedStorage + 296) = v11;
  if (!v11)
  {
    FigVideoCompositorCreateCustom_cold_3(&v16);
    return v16;
  }

  v12 = FigSemaphoreCreate();
  *(DerivedStorage + 312) = v12;
  if (!v12)
  {
    FigVideoCompositorCreateCustom_cold_2();
    return 0;
  }

  Mutable = CFSetCreateMutable(a1, 0, 0);
  *(DerivedStorage + 304) = Mutable;
  if (!Mutable)
  {
    FigVideoCompositorCreateCustom_cold_1(&v16);
    return v16;
  }

  v14 = 0;
  *a3 = 0;
  return v14;
}

uint64_t customVideoCompositor_Finalize(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFSetApplyFunction(*(DerivedStorage + 304), customVideoCompositor_purgePendingFrame, a1);
  v3 = *(DerivedStorage + 304);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(DerivedStorage + 48);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 48) = 0;
  }

  v5 = *(DerivedStorage + 56);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 56) = 0;
  }

  v6 = *(DerivedStorage + 72);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 72) = 0;
  }

  v7 = *(DerivedStorage + 64);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 64) = 0;
  }

  v8 = *(DerivedStorage + 80);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 80) = 0;
  }

  v9 = *(DerivedStorage + 32);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 32) = 0;
  }

  v10 = *(DerivedStorage + 40);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 40) = 0;
  }

  v11 = *(DerivedStorage + 24);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 24) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v12 = *(DerivedStorage + 8);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 8) = 0;
  }

  v13 = *(DerivedStorage + 96);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 96) = 0;
  }

  v14 = *(DerivedStorage + 104);
  if (v14)
  {
    CFRelease(v14);
    *(DerivedStorage + 104) = 0;
  }

  v15 = *(DerivedStorage + 120);
  if (v15)
  {
    *(DerivedStorage + 120) = 0;
    free(v15);
  }

  v16 = *(DerivedStorage + 128);
  if (v16)
  {
    *(DerivedStorage + 128) = 0;
    free(v16);
  }

  v17 = *(DerivedStorage + 144);
  if (v17)
  {
    *(DerivedStorage + 144) = 0;
    free(v17);
  }

  v18 = *(DerivedStorage + 152);
  if (v18)
  {
    *(DerivedStorage + 152) = 0;
    free(v18);
  }

  if (*(DerivedStorage + 16))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 16) = 0;
  }

  v19 = *(DerivedStorage + 168);
  if (v19)
  {
    dispatch_release(v19);
    *(DerivedStorage + 168) = 0;
  }

  v20 = *(DerivedStorage + 192);
  if (v20)
  {
    dispatch_release(v20);
    *(DerivedStorage + 192) = 0;
  }

  if (*(DerivedStorage + 216))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 216) = 0;
  }

  if (*(DerivedStorage + 296))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 296) = 0;
  }

  result = *(DerivedStorage + 312);
  if (result)
  {
    result = FigSemaphoreDestroy();
    *(DerivedStorage + 312) = 0;
  }

  return result;
}

__CFString *customVideoCompositor_CopyDebugDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  cf = 0;
  v4 = CFGetRetainCount(a1);
  v5 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigVideoCompositor_Custom %p retainCount: %ld allocator: %p ", a1, v4, v5);
  v6 = cvc_copyPerformanceDictionary(a1, &cf);
  v7 = cf;
  if (!v6 && cf)
  {
    CFStringAppendFormat(Mutable, 0, @", performanceDictionary %@", cf);
    v7 = cf;
  }

  if (v7)
  {
    CFRelease(v7);
  }

  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

uint64_t customVideoCompositor_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, const __CFDictionary **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!CFEqual(a2, @"RenderDimensions"))
  {
    if (CFEqual(a2, @"RenderPixelAspectRatio"))
    {
      v8 = *(DerivedStorage + 32);
      goto LABEL_17;
    }

    if (CFEqual(a2, @"RenderEdgeProcessingPixels"))
    {
      v8 = *(DerivedStorage + 40);
      goto LABEL_17;
    }

    if (CFEqual(a2, @"DestinationPixelBufferDesiredAttributes"))
    {
      v8 = *(DerivedStorage + 48);
      goto LABEL_17;
    }

    if (CFEqual(a2, @"DestinationPixelBufferDesiredYCbCrMatrix"))
    {
      v8 = *(DerivedStorage + 56);
      goto LABEL_17;
    }

    if (CFEqual(a2, @"DestinationPixelBufferDesiredColorPrimaries"))
    {
      v8 = *(DerivedStorage + 72);
      goto LABEL_17;
    }

    if (CFEqual(a2, @"DestinationPixelBufferDesiredTransferFunction"))
    {
      v8 = *(DerivedStorage + 64);
      goto LABEL_17;
    }

    if (CFEqual(a2, @"SourcePixelBufferAttributes"))
    {
      v8 = *(DerivedStorage + 80);
      goto LABEL_17;
    }

    if (CFEqual(a2, @"RenderScale"))
    {
      UInt32 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, (DerivedStorage + 88));
      goto LABEL_30;
    }

    if (CFEqual(a2, @"CanApplyRenderScale"))
    {
      v12 = MEMORY[0x1E695E4D0];
    }

    else
    {
      if (!CFEqual(a2, @"HighQualityRendering"))
      {
        if (CFEqual(a2, @"PixelBufferPoolSharingID"))
        {
          UInt32 = *(DerivedStorage + 96);
          if (!UInt32)
          {
            goto LABEL_30;
          }
        }

        else
        {
          if (!CFEqual(a2, @"CompositorInstanceID"))
          {
            if (!CFEqual(a2, @"SourceColorConformanceCapabilityLevel"))
            {
              if (CFEqual(a2, @"PerformanceDictionary"))
              {
                FigSimpleMutexUnlock();
                v9 = cvc_copyPerformanceDictionary(a1, a4);
                FigSimpleMutexLock();
              }

              else if (CFEqual(a2, @"SupportsSpatialSourceBuffers"))
              {
                v9 = 0;
                if (*(DerivedStorage + 118))
                {
                  v13 = MEMORY[0x1E695E4D0];
                }

                else
                {
                  v13 = MEMORY[0x1E695E4C0];
                }

                *a4 = *v13;
              }

              else
              {
                fig_log_get_emitter();
                v9 = FigSignalErrorAtGM();
              }

              goto LABEL_20;
            }

            UInt32 = FigCFNumberCreateUInt32();
LABEL_30:
            v9 = 0;
            *a4 = UInt32;
            goto LABEL_20;
          }

          UInt32 = *(DerivedStorage + 104);
          if (!UInt32)
          {
            goto LABEL_30;
          }
        }

LABEL_29:
        UInt32 = CFRetain(UInt32);
        goto LABEL_30;
      }

      v12 = MEMORY[0x1E695E4D0];
      if (!*(DerivedStorage + 116))
      {
        v12 = MEMORY[0x1E695E4C0];
      }
    }

    UInt32 = *v12;
    if (!*v12)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v8 = *(DerivedStorage + 24);
LABEL_17:
  *a4 = v8;
  if (v8)
  {
    CFRetain(v8);
  }

  v9 = 0;
LABEL_20:
  FigSimpleMutexUnlock();
  return v9;
}

const void *customVideoCompositor_SetProperty(const void *a1, void *a2, const void *a3)
{
  values = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (CFEqual(@"RenderDimensions", a2))
  {
    cf.width = 0.0;
    cf.height = 0.0;
    if (a3)
    {
      TypeID = CFDictionaryGetTypeID();
      if (TypeID == CFGetTypeID(a3) && CGSizeMakeWithDictionaryRepresentation(a3, &cf) && cf.width > 0.0 && cf.height > 0.0)
      {
        v8 = *(DerivedStorage + 24);
        *(DerivedStorage + 24) = a3;
        CFRetain(a3);
        if (v8)
        {
          CFRelease(v8);
        }

        a3 = 0;
        goto LABEL_10;
      }
    }

    fig_log_get_emitter();
    a3 = FigSignalErrorAtGM();
    goto LABEL_12;
  }

  if (CFEqual(@"RenderPixelAspectRatio", a2))
  {
    if (a3)
    {
      v10 = CFDictionaryGetTypeID();
      if (v10 == CFGetTypeID(a3))
      {
        Value = CFDictionaryGetValue(a3, *MEMORY[0x1E6965EF0]);
        v12 = CFDictionaryGetValue(a3, *MEMORY[0x1E6965F00]);
        LODWORD(cf.width) = 0;
        valuePtr = 0;
        if (Value)
        {
          v13 = v12;
          v14 = CFNumberGetTypeID();
          if (v14 == CFGetTypeID(Value))
          {
            CFNumberGetValue(Value, kCFNumberIntType, &cf);
            if (SLODWORD(cf.width) >= 1)
            {
              if (v13)
              {
                v15 = CFNumberGetTypeID();
                if (v15 == CFGetTypeID(v13))
                {
                  CFNumberGetValue(v13, kCFNumberIntType, &valuePtr);
                  if (valuePtr >= 1)
                  {
                    v16 = *(DerivedStorage + 32);
                    *(DerivedStorage + 32) = a3;
LABEL_64:
                    CFRetain(a3);
                    goto LABEL_65;
                  }
                }
              }
            }
          }
        }
      }

      fig_log_get_emitter();
      goto LABEL_46;
    }

    v16 = *(DerivedStorage + 32);
    *(DerivedStorage + 32) = 0;
LABEL_65:
    if (v16)
    {
      CFRelease(v16);
    }

    *(DerivedStorage + 117) = 1;
    goto LABEL_68;
  }

  if (CFEqual(@"RenderEdgeProcessingPixels", a2))
  {
    if (!a3)
    {
      v16 = *(DerivedStorage + 40);
      *(DerivedStorage + 40) = 0;
      goto LABEL_65;
    }

    v17 = CFArrayGetTypeID();
    if (v17 == CFGetTypeID(a3) && CFArrayGetCount(a3) == 4)
    {
      v18 = 0;
      while (1)
      {
        v19 = CFNumberGetTypeID();
        ValueAtIndex = CFArrayGetValueAtIndex(a3, v18);
        if (v19 != CFGetTypeID(ValueAtIndex))
        {
          break;
        }

        if (++v18 == 4)
        {
          v16 = *(DerivedStorage + 40);
          *(DerivedStorage + 40) = a3;
          goto LABEL_64;
        }
      }
    }

LABEL_45:
    fig_log_get_emitter();
LABEL_46:
    a3 = FigSignalErrorAtGM();
LABEL_47:
    FigSimpleMutexUnlock();
    return a3;
  }

  if (CFEqual(@"DestinationPixelBufferDesiredAttributes", a2))
  {
    if (a3)
    {
      v21 = CFDictionaryGetTypeID();
      if (v21 != CFGetTypeID(a3))
      {
        goto LABEL_45;
      }
    }

    cf.width = 0.0;
    a3 = customVideoCompositor_copySuitablePixelBufferAttributes(a3, 1, &cf);
    if (!a3)
    {
      v22 = *(DerivedStorage + 48);
      width = cf.width;
      *(DerivedStorage + 48) = cf.width;
      if (width != 0.0)
      {
        CFRetain(*&width);
      }

      if (v22)
      {
        CFRelease(v22);
      }

      if (width != 0.0)
      {
        CFRelease(*&width);
      }

      goto LABEL_10;
    }

LABEL_12:
    v9 = 0;
    goto LABEL_13;
  }

  if (CFEqual(@"DestinationPixelBufferDesiredYCbCrMatrix", a2))
  {
    if (!a3)
    {
      v16 = *(DerivedStorage + 56);
      *(DerivedStorage + 56) = 0;
      goto LABEL_65;
    }

    v24 = CFStringGetTypeID();
    if (v24 == CFGetTypeID(a3))
    {
      v16 = *(DerivedStorage + 56);
      *(DerivedStorage + 56) = a3;
      goto LABEL_64;
    }

    goto LABEL_45;
  }

  if (CFEqual(@"DestinationPixelBufferDesiredColorPrimaries", a2))
  {
    if (!a3)
    {
      v16 = *(DerivedStorage + 72);
      *(DerivedStorage + 72) = 0;
      goto LABEL_65;
    }

    v25 = CFStringGetTypeID();
    if (v25 == CFGetTypeID(a3))
    {
      v16 = *(DerivedStorage + 72);
      *(DerivedStorage + 72) = a3;
      goto LABEL_64;
    }

    goto LABEL_45;
  }

  if (CFEqual(@"DestinationPixelBufferDesiredTransferFunction", a2))
  {
    if (!a3)
    {
      v16 = *(DerivedStorage + 64);
      *(DerivedStorage + 64) = 0;
      goto LABEL_65;
    }

    v26 = CFStringGetTypeID();
    if (v26 == CFGetTypeID(a3))
    {
      v16 = *(DerivedStorage + 64);
      *(DerivedStorage + 64) = a3;
      goto LABEL_64;
    }

    goto LABEL_45;
  }

  if (CFEqual(@"SourcePixelBufferAttributes", a2))
  {
    if (!a3 || (v31 = CFDictionaryGetTypeID(), v31 == CFGetTypeID(a3)))
    {
      cf.width = 0.0;
      a3 = customVideoCompositor_copySuitablePixelBufferAttributes(a3, 0, &cf);
      v9 = 0;
      if (!a3)
      {
        v32 = *(DerivedStorage + 80);
        v33 = cf.width;
        *(DerivedStorage + 80) = cf.width;
        if (v33 != 0.0)
        {
          CFRetain(*&v33);
        }

        if (v32)
        {
          CFRelease(v32);
        }

        if (v33 != 0.0)
        {
          CFRelease(*&v33);
        }

        v9 = 1;
      }

LABEL_13:
      FigSimpleMutexUnlock();
      if (!v9)
      {
        return a3;
      }

      goto LABEL_69;
    }

    goto LABEL_45;
  }

  if (CFEqual(@"RenderScale", a2))
  {
    LODWORD(cf.width) = 1065353216;
    if (!a3)
    {
      v35 = 1.0;
      goto LABEL_102;
    }

    v34 = CFGetTypeID(a3);
    if (v34 == CFNumberGetTypeID())
    {
      CFNumberGetValue(a3, kCFNumberFloatType, &cf);
      v35 = *&cf.width;
      if (*&cf.width > 0.0)
      {
        goto LABEL_102;
      }

      fig_log_get_emitter();
    }

    else
    {
      fig_log_get_emitter();
    }

    a3 = FigSignalErrorAtGM();
    if (a3)
    {
      goto LABEL_12;
    }

    v35 = *&cf.width;
LABEL_102:
    a3 = 0;
    *(DerivedStorage + 88) = v35;
LABEL_10:
    v9 = 1;
    *(DerivedStorage + 117) = 1;
    goto LABEL_13;
  }

  if (!CFEqual(@"HighQualityRendering", a2))
  {
    if (CFEqual(@"ClientPID", a2))
    {
      if (a3)
      {
        v37 = CFGetTypeID(a3);
        if (v37 == CFNumberGetTypeID())
        {
          v38 = (DerivedStorage + 164);
LABEL_113:
          CFNumberGetValue(a3, kCFNumberSInt32Type, v38);
          goto LABEL_120;
        }

        goto LABEL_122;
      }

      *(DerivedStorage + 164) = 0;
      goto LABEL_120;
    }

    if (CFEqual(@"WorkerThreadPriority", a2))
    {
      if (a3)
      {
        v39 = CFGetTypeID(a3);
        if (v39 == CFNumberGetTypeID())
        {
          v38 = (DerivedStorage + 160);
          goto LABEL_113;
        }

LABEL_122:
        a3 = 0;
        goto LABEL_47;
      }

      *(DerivedStorage + 160) = 0;
LABEL_120:
      if (*(DerivedStorage + 168))
      {
        FigDispatchQueueSetPriorityAndClientPID();
      }

      goto LABEL_122;
    }

    if (CFEqual(@"CompositorInstanceID", a2))
    {
      if (a3)
      {
        v40 = CFGetTypeID(a3);
        if (v40 != CFNumberGetTypeID())
        {
          goto LABEL_122;
        }

        v41 = *(DerivedStorage + 104);
        *(DerivedStorage + 104) = a3;
LABEL_125:
        CFRetain(a3);
        goto LABEL_127;
      }

      v41 = *(DerivedStorage + 104);
      *(DerivedStorage + 104) = 0;
    }

    else
    {
      if (!CFEqual(@"PixelBufferPoolSharingID", a2))
      {
        if (!CFEqual(@"LoopTimeRange", a2))
        {
          if (CFEqual(@"SourceColorConformanceCapabilityLevel", a2))
          {
            if (!a3)
            {
              goto LABEL_47;
            }

            v42 = CFGetTypeID(a3);
            if (v42 == CFNumberGetTypeID())
            {
              CFNumberGetValue(a3, kCFNumberSInt32Type, (DerivedStorage + 112));
            }
          }

          else
          {
            if (!CFEqual(@"SupportsSpatialSourceBuffers", a2))
            {
              goto LABEL_45;
            }

            if (!a3)
            {
              goto LABEL_47;
            }

            v43 = CFGetTypeID(a3);
            if (v43 == CFBooleanGetTypeID())
            {
              v44 = CFBooleanGetValue(a3);
              a3 = 0;
              *(DerivedStorage + 118) = v44;
              goto LABEL_47;
            }
          }
        }

        goto LABEL_122;
      }

      v41 = *(DerivedStorage + 96);
      *(DerivedStorage + 96) = a3;
      if (a3)
      {
        goto LABEL_125;
      }
    }

LABEL_127:
    if (v41)
    {
      CFRelease(v41);
    }

    goto LABEL_122;
  }

  if (a3)
  {
    v36 = CFBooleanGetTypeID();
    if (v36 != CFGetTypeID(a3))
    {
      goto LABEL_45;
    }

    *(DerivedStorage + 116) = CFBooleanGetValue(a3);
  }

  else
  {
    *(DerivedStorage + 116) = 0;
  }

LABEL_68:
  FigSimpleMutexUnlock();
LABEL_69:
  v27 = CFGetAllocator(a1);
  v28 = CFDictionaryCreate(v27, &kFigVideoCompositorParameter_ChangedProperty, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v28)
  {
    v29 = v28;
    CMNotificationCenterGetDefaultLocalCenter();
    a3 = CMNotificationCenterPostNotification();
    CFRelease(v29);
  }

  else
  {
    customVideoCompositor_SetProperty_cold_1(&cf);
    return LODWORD(cf.width);
  }

  return a3;
}

uint64_t customVideoCompositor_purgePendingFrame(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 176);
  if (v3)
  {
    v3(*(DerivedStorage + 184), a1, 4294954790, 0, 0);
  }

  return FigSemaphoreSignal();
}

uint64_t cvc_copyPerformanceDictionary(uint64_t a1, const __CFDictionary **a2)
{
  v37 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!a2)
  {
    return 0;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = 0.0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  keys[0] = @"NumberOfSourceFramesPassedThrough";
  v4 = *MEMORY[0x1E695E480];
  values[0] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, (DerivedStorage + 320));
  keys[1] = @"TotalNumberOfPreProcessedLayers";
  values[1] = CFNumberCreate(v4, kCFNumberIntType, (DerivedStorage + 352));
  if (*(DerivedStorage + 384) < 1)
  {
    v5 = 2;
  }

  else
  {
    v14 = (*(DerivedStorage + 360) / 1000000.0);
    *&v28 = 0x1F0B4DA98;
    *&v18 = CFNumberCreate(v4, kCFNumberDoubleType, &v14);
    v14 = (*(DerivedStorage + 368) / 1000000.0);
    *(&v28 + 1) = 0x1F0B4DAB8;
    *(&v18 + 1) = CFNumberCreate(v4, kCFNumberDoubleType, &v14);
    v14 = (*(DerivedStorage + 376) / (*(DerivedStorage + 384) * 1000000.0));
    *&v29 = 0x1F0B4DAD8;
    *&v19 = CFNumberCreate(v4, kCFNumberDoubleType, &v14);
    v5 = 5;
  }

  if (*(DerivedStorage + 352) >= 1)
  {
    v14 = (*(DerivedStorage + 328) / 1000000.0);
    keys[v5] = @"MinPreprocessingTime";
    values[v5] = CFNumberCreate(v4, kCFNumberDoubleType, &v14);
    v14 = (*(DerivedStorage + 336) / 1000000.0);
    keys[v5 + 1] = @"MaxPreprocessingTime";
    values[v5 + 1] = CFNumberCreate(v4, kCFNumberDoubleType, &v14);
    v14 = (*(DerivedStorage + 344) / (*(DerivedStorage + 352) * 1000000.0));
    keys[v5 + 2] = @"AveragePreprocessingTime";
    values[v5 + 2] = CFNumberCreate(v4, kCFNumberDoubleType, &v14);
    v5 += 3;
  }

  if (*(DerivedStorage + 416) >= 1)
  {
    v14 = (*(DerivedStorage + 392) / 1000000.0);
    keys[v5] = @"MinBufferReadyingTime";
    values[v5] = CFNumberCreate(v4, kCFNumberDoubleType, &v14);
    v14 = (*(DerivedStorage + 400) / 1000000.0);
    keys[v5 + 1] = @"MaxBufferReadyingTime";
    values[v5 + 1] = CFNumberCreate(v4, kCFNumberDoubleType, &v14);
    v14 = (*(DerivedStorage + 408) / (*(DerivedStorage + 416) * 1000000.0));
    keys[v5 + 2] = @"AverageBufferReadyingTime";
    values[v5 + 2] = CFNumberCreate(v4, kCFNumberDoubleType, &v14);
    v5 += 3;
  }

  v7 = v5;
  v8 = CFDictionaryCreate(v4, keys, values, v5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigSimpleMutexLock();
  v9 = *(DerivedStorage + 248);
  if (v9)
  {
    v6 = v9(*(DerivedStorage + 288), &cf);
  }

  else
  {
    v6 = 0;
  }

  FigSimpleMutexUnlock();
  if (!v6)
  {
    v10 = cf;
    if (cf)
    {
      Mutable = CFDictionaryCreateMutable(v4, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        CFDictionaryApplyFunction(v10, cvc_mergeDictionariesApplier, Mutable);
        CFDictionaryApplyFunction(v8, cvc_mergeDictionariesApplier, Mutable);
LABEL_17:
        if (v8)
        {
          CFRelease(v8);
        }

        v6 = 0;
        v8 = Mutable;
        goto LABEL_20;
      }

      if (cvc_copyPerformanceDictionary_cold_1(&v16))
      {
        goto LABEL_17;
      }

      v6 = v16;
    }
  }

LABEL_20:
  *a2 = v8;
  v12 = values;
  do
  {
    if (*v12)
    {
      CFRelease(*v12);
    }

    ++v12;
    --v7;
  }

  while (v7);
  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t customVideoCompositor_copySuitablePixelBufferAttributes(const void *a1, uint64_t a2, CFDictionaryRef *a3)
{
  resolvedDictionaryOut = 0;
  v5 = *MEMORY[0x1E695E480];
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (!MutableCopy)
  {
    customVideoCompositor_copySuitablePixelBufferAttributes_cold_3(&v18);
LABEL_15:
    v12 = 0;
    v15 = v18;
    goto LABEL_9;
  }

  v7 = MutableCopy;
  CFDictionaryRemoveValue(MutableCopy, *MEMORY[0x1E6966208]);
  CFDictionaryRemoveValue(v7, *MEMORY[0x1E69660B8]);
  CFDictionaryRemoveValue(v7, *MEMORY[0x1E6966060]);
  Mutable = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    customVideoCompositor_copySuitablePixelBufferAttributes_cold_2(v7, &v18);
    goto LABEL_15;
  }

  v9 = Mutable;
  FigGetAlignmentForIOSurfaceOutput();
  PixelBufferAttributesWithIOSurfaceSupport = FigCreatePixelBufferAttributesWithIOSurfaceSupport();
  if (PixelBufferAttributesWithIOSurfaceSupport)
  {
    v15 = PixelBufferAttributesWithIOSurfaceSupport;
    v12 = 0;
  }

  else
  {
    v11 = CFArrayCreateMutable(v5, 0, MEMORY[0x1E695E9C0]);
    v12 = v11;
    if (v11)
    {
      CFArrayAppendValue(v11, 0);
      CFArrayAppendValue(v12, v7);
      v13 = CFGetAllocator(a1);
      if (CVPixelBufferCreateResolvedAttributesDictionary(v13, v12, &resolvedDictionaryOut) && (v14 = FigCreatePixelBufferAttributesWithIOSurfaceSupport(), v14))
      {
        v15 = v14;
        if (resolvedDictionaryOut)
        {
          CFRelease(resolvedDictionaryOut);
        }
      }

      else
      {
        v15 = 0;
        *a3 = resolvedDictionaryOut;
        resolvedDictionaryOut = 0;
      }
    }

    else
    {
      customVideoCompositor_copySuitablePixelBufferAttributes_cold_1(&v18);
      v15 = v18;
    }
  }

  CFRelease(v7);
  CFRelease(v9);
LABEL_9:
  if (v12)
  {
    CFRelease(v12);
  }

  return v15;
}

uint64_t customVideoCompositor_SetOutputCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *(DerivedStorage + 168);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __customVideoCompositor_SetOutputCallback_block_invoke;
  block[3] = &unk_1E74999E0;
  block[6] = a2;
  block[7] = a3;
  block[4] = &v11;
  block[5] = DerivedStorage;
  block[8] = a1;
  dispatch_sync(v7, block);
  v8 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return v8;
}

uint64_t customVideoCompositor_SetCustomCallbacks(void *a1, void *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (a2)
  {
    __copy_assignment_8_8_t0w8_pa0_44030_8_pa0_33393_16_pa0_15098_24_pa0_21060_32_pa0_1898_40_pa0_17456_48_pa0_31433_56((DerivedStorage + 224), a2);
  }

  else
  {
    CFSetApplyFunction(*(DerivedStorage + 304), customVideoCompositor_purgePendingFrame, a1);
    CFSetRemoveAllValues(*(DerivedStorage + 304));
    FigSimpleMutexUnlock();
    FigSimpleMutexLock();
    *(DerivedStorage + 224) = 0u;
    *(DerivedStorage + 240) = 0u;
    *(DerivedStorage + 256) = 0u;
    *(DerivedStorage + 272) = 0u;
  }

  *(DerivedStorage + 288) = a3;
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t customVideoCompositor_CompletePreroll(const void *a1, int a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  v7 = *(DerivedStorage + 192);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __customVideoCompositor_CompletePreroll_block_invoke;
  block[3] = &__block_descriptor_tmp_15_10;
  v10 = a2;
  v11 = a3;
  block[4] = DerivedStorage;
  block[5] = a1;
  dispatch_async(v7, block);
  return 0;
}

uint64_t customVideoCompositor_SetCompletePrerollCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 192);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __customVideoCompositor_SetCompletePrerollCallback_block_invoke;
  block[3] = &__block_descriptor_tmp_16_10;
  block[4] = DerivedStorage;
  block[5] = a2;
  block[6] = a3;
  dispatch_sync(v6, block);
  return 0;
}

uint64_t customVideoCompositor_RenderFrameFromWindow(const void *a1, const __CFDictionary *a2, const __CFDictionary *a3, const void *a4, uint64_t a5, const void *a6, uint64_t a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v74 = 0;
  v75 = 0;
  v73 = 0uLL;
  if (!a4 || (v14 = CFGetTypeID(a4), v14 != CFDictionaryGetTypeID()))
  {
    customVideoCompositor_RenderFrameFromWindow_cold_7(v71);
LABEL_92:
    v33 = 0;
    v32 = LODWORD(v71[0]);
    goto LABEL_79;
  }

  Value = CFDictionaryGetValue(a4, @"PassthroughSourceVideoTrackID");
  if (!Value)
  {
    FigSimpleMutexLock();
    Count = CFSetGetCount(*(DerivedStorage + 304));
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    if (Count > 1)
    {
      do
      {
        FigSimpleMutexUnlock();
        FigSemaphoreWaitRelative();
        FigSimpleMutexLock();
      }

      while (CFSetGetCount(*(DerivedStorage + 304)) > 1);
    }

    v22 = FigGetUpTimeNanoseconds();
    v23 = (v22 - UpTimeNanoseconds) / 1000;
    ++*(DerivedStorage + 384);
    v24 = *(DerivedStorage + 368);
    *(DerivedStorage + 376) += v23;
    v25 = *(DerivedStorage + 360);
    if (v25 >= v23)
    {
      v25 = (v22 - UpTimeNanoseconds) / 1000;
    }

    if (v24 > v23)
    {
      v23 = v24;
    }

    *(DerivedStorage + 360) = v25;
    *(DerivedStorage + 368) = v23;
    CFSetSetValue(*(DerivedStorage + 304), a6);
    FigSimpleMutexUnlock();
    v26 = CFDictionaryGetValue(a4, @"RequiredVideoTrackIDArray");
    if (FigCFDictionaryGetCount() < 1)
    {
      Mutable = 0;
    }

    else if (v26)
    {
      v64 = a6;
      v27 = CFArrayGetCount(v26);
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], v27, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v27 < 1)
      {
        a6 = v64;
      }

      else
      {
        cfa = a7;
        for (i = 0; i != v27; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v26, i);
          v31 = FigCFDictionaryGetValue();
          if (v31)
          {
            CFDictionarySetValue(Mutable, ValueAtIndex, v31);
          }
        }

        a6 = v64;
        a7 = cfa;
      }
    }

    else
    {
      Mutable = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], a2);
    }

    v50 = CFDictionaryGetValue(a4, @"RequiredSampleDataTrackIDArray");
    if (FigCFDictionaryGetCount() < 1)
    {
      Copy = 0;
    }

    else if (v50)
    {
      v66 = a6;
      v51 = CFArrayGetCount(v50);
      Copy = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], v51, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v51 < 1)
      {
        a6 = v66;
      }

      else
      {
        cfb = a7;
        for (j = 0; j != v51; ++j)
        {
          v54 = CFArrayGetValueAtIndex(v50, j);
          v55 = FigCFDictionaryGetValue();
          if (v55)
          {
            CFDictionarySetValue(Copy, v54, v55);
          }
        }

        a6 = v66;
        a7 = cfb;
      }
    }

    else
    {
      Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], a3);
    }

    FigSimpleMutexLock();
    v56 = *(DerivedStorage + 272);
    if (v56)
    {
      v58 = *(DerivedStorage + 288);
      *v71 = *a5;
      v72 = *(a5 + 16);
      v59 = v56(v58, Mutable, Copy, a4, v71, a6);
      v32 = 0;
      if (v59)
      {
        v60 = 0;
        v32 = v59;
        if (!Mutable)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      }
    }

    else
    {
      v57 = *(DerivedStorage + 280);
      if (!v57)
      {
        customVideoCompositor_RenderFrameFromWindow_cold_6(v71);
        v60 = 0;
        v32 = LODWORD(v71[0]);
        if (!Mutable)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      }

      v61 = *(DerivedStorage + 288);
      *v71 = *a5;
      v72 = *(a5 + 16);
      v32 = v57(v61, Mutable, Copy, a4, v71, a6, a7);
    }

    FigSimpleMutexUnlock();
    v60 = 1;
    if (!Mutable)
    {
LABEL_74:
      if (Copy)
      {
        CFRelease(Copy);
      }

      if ((v60 & 1) == 0)
      {
        FigSimpleMutexUnlock();
        FigSimpleMutexLock();
        CFSetRemoveValue(*(DerivedStorage + 304), a6);
        FigSimpleMutexUnlock();
        FigSemaphoreSignal();
      }

      goto LABEL_78;
    }

LABEL_73:
    CFRelease(Mutable);
    goto LABEL_74;
  }

  v16 = CFGetTypeID(Value);
  if (v16 != CFNumberGetTypeID())
  {
    customVideoCompositor_RenderFrameFromWindow_cold_1(v71);
    goto LABEL_92;
  }

  if (!FigCFDictionaryGetValueIfPresent())
  {
    v32 = 0;
LABEL_78:
    v33 = 0;
LABEL_79:
    CVPixelBufferPoolFlush(*(DerivedStorage + 8), 0);
    goto LABEL_80;
  }

  *v71 = *a5;
  v72 = *(a5 + 16);
  v17 = FigVCPGetTimedSampleAtTimeFromOrderedArray(v74);
  if (!v17)
  {
    customVideoCompositor_RenderFrameFromWindow_cold_5(v71);
    goto LABEL_92;
  }

  v18 = v17;
  if (FigVCPTimedSampleContainsPixelBuffer(v17))
  {
    PixelBuffer = FigVCPTimedSampleGetPixelBuffer(v18, &v73 + 1);
    if (PixelBuffer)
    {
LABEL_93:
      v32 = PixelBuffer;
      goto LABEL_78;
    }
  }

  else if (FigVCPTimedSampleContainsTaggedBufferGroup(v18))
  {
    PixelBuffer = FigVCPTimedSampleGetTaggedBufferGroup(v18, &v73);
    if (PixelBuffer)
    {
      goto LABEL_93;
    }
  }

  v33 = v73;
  if (v73 == 0)
  {
    customVideoCompositor_RenderFrameFromWindow_cold_4(v71);
    goto LABEL_92;
  }

  if (v73)
  {
    v71[0] = 0;
    v76 = 0;
    v34 = CFGetAllocator(a1);
    v35 = CMTaggedBufferGroupGetCount(v33);
    v36 = CFArrayCreateMutable(v34, 0, MEMORY[0x1E695E9C0]);
    if (v36)
    {
      v37 = v36;
      v38 = CFArrayCreateMutable(v34, 0, MEMORY[0x1E695E9C0]);
      if (v38)
      {
        v39 = v38;
        if (v35 < 1)
        {
LABEL_42:
          v33 = CFRetain(v33);
LABEL_43:
          v32 = 0;
          v71[0] = 0;
        }

        else
        {
          v63 = v34;
          v65 = a6;
          v40 = 0;
          v41 = 0;
          do
          {
            CVPixelBufferAtIndex = CMTaggedBufferGroupGetCVPixelBufferAtIndex(v33, v40);
            v43 = customVideoCompositor_copyPassthroughFrame(a1, CVPixelBufferAtIndex, &v76);
            if (v43)
            {
              v32 = v43;
              if (v76)
              {
                CFRelease(v76);
              }

              v33 = 0;
              a6 = v65;
              goto LABEL_44;
            }

            TagCollectionAtIndex = CMTaggedBufferGroupGetTagCollectionAtIndex(v33, v40);
            v45 = v76;
            CFArrayAppendValue(v37, v76);
            CFArrayAppendValue(v39, TagCollectionAtIndex);
            if (v45 != CVPixelBufferAtIndex)
            {
              v41 = 1;
            }

            if (v45)
            {
              CFRelease(v45);
              v76 = 0;
            }

            ++v40;
          }

          while (v35 != v40);
          a6 = v65;
          if (!v41)
          {
            goto LABEL_42;
          }

          v46 = MEMORY[0x19A8CF050](v63, v39, v37, v71);
          if (!v46)
          {
            v33 = v71[0];
            goto LABEL_43;
          }

          v32 = v46;
          v33 = 0;
        }

LABEL_44:
        CFRelease(v37);
        CFRelease(v39);
        if (v71[0])
        {
          CFRelease(v71[0]);
        }

        if (v32)
        {
          goto LABEL_79;
        }

LABEL_47:
        v47 = 0;
LABEL_49:
        ++*(DerivedStorage + 320);
        v49 = *(DerivedStorage + 168);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        block[2] = __customVideoCompositor_RenderFrameFromWindow_block_invoke;
        block[3] = &__block_descriptor_tmp_17_7;
        block[4] = DerivedStorage;
        block[5] = a6;
        block[6] = v47;
        block[7] = v33;
        dispatch_sync(v49, block);
        v32 = 0;
        goto LABEL_50;
      }

      customVideoCompositor_RenderFrameFromWindow_cold_2(v37, v77);
    }

    else
    {
      customVideoCompositor_RenderFrameFromWindow_cold_3(v77);
    }

    v33 = 0;
    v32 = v77[0];
    if (v77[0])
    {
      goto LABEL_79;
    }

    goto LABEL_47;
  }

  v48 = customVideoCompositor_copyPassthroughFrame(a1, *(&v73 + 1), &v75);
  v47 = v75;
  if (!v48)
  {
    goto LABEL_49;
  }

  v32 = v48;
LABEL_50:
  CVPixelBufferPoolFlush(*(DerivedStorage + 8), 0);
  if (v47)
  {
    CFRelease(v47);
  }

LABEL_80:
  if (v33)
  {
    CFRelease(v33);
  }

  return v32;
}

uint64_t customVideoCompositor_outputCustomFrameCommon(const void *a1, const void *a2, int a3, const void *a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v11 = CFSetContainsValue(*(DerivedStorage + 304), a2);
  FigSimpleMutexUnlock();
  if (v11)
  {
    if (a4)
    {
      CFRetain(a4);
    }

    if (a5)
    {
      CFRetain(a5);
    }

    if (a1)
    {
      CFRetain(a1);
    }

    v12 = *(DerivedStorage + 168);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 0x40000000;
    v14[2] = __customVideoCompositor_outputCustomFrameCommon_block_invoke;
    v14[3] = &__block_descriptor_tmp_14_11;
    v15 = a3;
    v14[4] = a4;
    v14[5] = a1;
    v14[6] = a5;
    v14[7] = DerivedStorage;
    v14[8] = a2;
    dispatch_async(v12, v14);
    return 0;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

void __customVideoCompositor_outputCustomFrameCommon_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 32);
  if (v3)
  {
    customVideoCompositor_handleBufferGPUSynchronization(*(a1 + 40), v3);
  }

  else
  {
    v9 = *(a1 + 48);
    if (v9)
    {
      v10 = *(a1 + 40);
      Count = CMTaggedBufferGroupGetCount(*(a1 + 48));
      if (Count >= 1)
      {
        v12 = Count;
        for (i = 0; i != v12; ++i)
        {
          CVPixelBufferAtIndex = CMTaggedBufferGroupGetCVPixelBufferAtIndex(v9, i);
          customVideoCompositor_handleBufferGPUSynchronization(v10, CVPixelBufferAtIndex);
        }
      }
    }
  }

  FigSimpleMutexLock();
  CFSetRemoveValue(*(*(a1 + 56) + 304), *(a1 + 64));
  FigSimpleMutexUnlock();
  FigSemaphoreSignal();
  v4 = *(a1 + 56);
  v5 = *(v4 + 176);
  if (v5)
  {
    v5(*(v4 + 184), *(a1 + 64), v2, *(a1 + 32), *(a1 + 48));
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 48);
  if (v8)
  {

    CFRelease(v8);
  }
}

CFTypeID customVideoCompositor_handleBufferGPUSynchronization(uint64_t a1, void *a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = result;
    TypeID = CVPixelBufferGetTypeID();
    result = CFGetTypeID(a2);
    if (TypeID == result)
    {
      result = CVPixelBufferGetIOSurface(a2);
      if (result)
      {
        result = IOSurfaceNeedsBindAccel();
        if (result)
        {
          UpTimeNanoseconds = FigGetUpTimeNanoseconds();
          IOSurfaceBindAccel();
          result = FigGetUpTimeNanoseconds();
          v7 = (result - UpTimeNanoseconds) / 1000;
          ++*(v4 + 416);
          v8 = *(v4 + 400);
          *(v4 + 408) += v7;
          v9 = *(v4 + 392);
          if (v9 >= v7)
          {
            v9 = (result - UpTimeNanoseconds) / 1000;
          }

          if (v8 > v7)
          {
            v7 = v8;
          }

          *(v4 + 392) = v9;
          *(v4 + 400) = v7;
        }
      }
    }
  }

  return result;
}

void *__copy_assignment_8_8_t0w8_pa0_44030_8_pa0_33393_16_pa0_15098_24_pa0_21060_32_pa0_1898_40_pa0_17456_48_pa0_31433_56(void *result, void *a2)
{
  *result = *a2;
  result[1] = a2[1];
  result[2] = a2[2];
  result[3] = a2[3];
  result[4] = a2[4];
  result[5] = a2[5];
  result[6] = a2[6];
  result[7] = a2[7];
  return result;
}

uint64_t customVideoCompositor_copyPassthroughFrame(const void *a1, __CVBuffer *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  size.width = 0.0;
  size.height = 0.0;
  v41 = 0;
  v42 = 0;
  v39 = 0;
  v40 = 0;
  pixelBufferOut = 0;
  FigSimpleMutexLock();
  if (!CGSizeMakeWithDictionaryRepresentation(*(DerivedStorage + 24), &size))
  {
    customVideoCompositor_copyPassthroughFrame_cold_1(&v44);
    v25 = v44;
LABEL_64:
    FigSimpleMutexUnlock();
    v14 = 0;
    v13 = 0;
    goto LABEL_46;
  }

  v7 = FigVideoCompositorUtilityCopyRenderPixelBufferDimensionsAndCleanAperture(0, *(DerivedStorage + 40), &v42, &v41, 0, &v40, size.width, size.height, *(DerivedStorage + 88));
  if (v7)
  {
    v25 = v7;
    goto LABEL_64;
  }

  v8 = *(DerivedStorage + 117);
  *(DerivedStorage + 117) = 0;
  v9 = *(DerivedStorage + 32);
  v35 = a3;
  if (v9)
  {
    v10 = CFRetain(v9);
  }

  else
  {
    v10 = 0;
  }

  FigSimpleMutexUnlock();
  Width = CVPixelBufferGetWidth(a2);
  Height = CVPixelBufferGetHeight(a2);
  v13 = CVBufferCopyAttachment(a2, *MEMORY[0x1E6965D70], 0);
  v14 = CVBufferCopyAttachment(a2, *MEMORY[0x1E6965EF8], 0);
  v15 = CVPixelBufferGetWidth(a2);
  cf = v10;
  if (v15 == v42)
  {
    v16 = CVPixelBufferGetHeight(a2);
    if (v16 == v41 && FigVideoCompositorUtilityArePixelAspectRatiosEqual(v14, v10) && FigVideoCompositorUtilityAreCleanAperturesEqual(v13, Width, Height, v40))
    {
      if (a2)
      {
        v17 = CFRetain(a2);
      }

      else
      {
        v17 = 0;
      }

      MutableCopy = 0;
      goto LABEL_42;
    }
  }

  if (*DerivedStorage)
  {
    if (!v8)
    {
      v18 = (DerivedStorage + 8);
      if (*(DerivedStorage + 8))
      {
        MutableCopy = 0;
LABEL_35:
        UpTimeNanoseconds = FigGetUpTimeNanoseconds();
        v28 = CFGetAllocator(a1);
        v29 = CVPixelBufferPoolCreatePixelBuffer(v28, *v18, &pixelBufferOut);
        if (!v29)
        {
          v29 = VTPixelTransferSessionTransferImage(*DerivedStorage, a2, pixelBufferOut);
          if (!v29)
          {
            v30 = FigGetUpTimeNanoseconds();
            v31 = (v30 - UpTimeNanoseconds) / 1000;
            ++*(DerivedStorage + 352);
            v32 = *(DerivedStorage + 336);
            *(DerivedStorage + 344) += v31;
            v33 = *(DerivedStorage + 328);
            if (v33 >= v31)
            {
              v33 = (v30 - UpTimeNanoseconds) / 1000;
            }

            if (v32 > v31)
            {
              v31 = v32;
            }

            *(DerivedStorage + 328) = v33;
            *(DerivedStorage + 336) = v31;
            v17 = pixelBufferOut;
LABEL_42:
            v25 = 0;
            *v35 = v17;
            pixelBufferOut = 0;
            if (!MutableCopy)
            {
              goto LABEL_44;
            }

            goto LABEL_43;
          }
        }

        v25 = v29;
        if (!MutableCopy)
        {
LABEL_44:
          v10 = cf;
          if (!cf)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        }

LABEL_43:
        CFRelease(MutableCopy);
        goto LABEL_44;
      }

      v36 = v14;
      v22 = v13;
LABEL_21:
      v23 = *(DerivedStorage + 48);
      if (v23)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v23);
        if (MutableCopy)
        {
          v24 = FigCFDictionarySetInt32();
          if (v24 || (v24 = FigCFDictionarySetInt32(), v24) || !CFDictionaryGetValue(MutableCopy, *MEMORY[0x1E6966130]) && (v24 = FigCFDictionarySetInt32(), v24))
          {
            v25 = v24;
            CFRelease(MutableCopy);
            MutableCopy = 0;
            goto LABEL_32;
          }
        }

        else if (!customVideoCompositor_copyPassthroughFrame_cold_2(&v44))
        {
          v25 = v44;
          goto LABEL_32;
        }
      }

      else
      {
        MutableCopy = 0;
      }

      v26 = VTCreatePixelBufferPoolAttributesWithName();
      if (!v26)
      {
        CFGetAllocator(a1);
        v26 = VTBuildPixelBufferPools2();
        if (!v26)
        {
          v13 = v22;
          v14 = v36;
          goto LABEL_35;
        }
      }

      v25 = v26;
LABEL_32:
      v13 = v22;
      v14 = v36;
      if (!MutableCopy)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }

    goto LABEL_18;
  }

  v20 = CFGetAllocator(a1);
  v21 = VTPixelTransferSessionCreate(v20, DerivedStorage);
  if (!v21)
  {
    v21 = VTPixelTransferSessionSetProperty();
    if (!v21)
    {
LABEL_18:
      v21 = VTPixelTransferSessionSetProperty();
      if (!v21)
      {
        v21 = VTPixelTransferSessionSetProperty();
        if (!v21)
        {
          v36 = v14;
          v22 = v13;
          customVideoCompositor_copyPassthroughFrame_cold_3(DerivedStorage, &v44);
          v18 = v44;
          goto LABEL_21;
        }
      }
    }
  }

  v25 = v21;
  if (v10)
  {
LABEL_45:
    CFRelease(v10);
  }

LABEL_46:
  if (v40)
  {
    CFRelease(v40);
  }

  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v25;
}

uint64_t remoteVideoCompositor_copyPixelBufferFromXPCObject(void *a1, CFTypeRef *a2)
{
  cf = 0;
  v3 = IOSurfaceLookupFromXPCObject(a1);
  if (!v3)
  {
    remoteVideoCompositor_copyPixelBufferFromXPCObject_cold_3(&v9);
    return v9;
  }

  v4 = v3;
  v5 = CVPixelBufferCreateWithIOSurface(*MEMORY[0x1E695E480], v3, 0, &cf);
  if (v5)
  {
    remoteVideoCompositor_copyPixelBufferFromXPCObject_cold_1(v5, &v9);
  }

  else
  {
    if (cf)
    {
      v6 = 0;
      *a2 = cf;
      cf = 0;
      goto LABEL_5;
    }

    remoteVideoCompositor_copyPixelBufferFromXPCObject_cold_2(&v9);
  }

  v6 = v9;
LABEL_5:
  CFRelease(v4);
  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

const void *FigVCPGetTimedSampleWithMatchingPTSFromAscendingPTSTimedSampleArray(const __CFArray *a1, uint64_t a2, CFIndex a3, CFIndex a4, CFIndex *a5)
{
  memset(&v14, 0, sizeof(v14));
  FigVCPTimedSampleGetPTS(a2, &v14);
  if (a3 >= a4)
  {
LABEL_6:
    ValueAtIndex = 0;
  }

  else
  {
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, a3);
      memset(&v13, 0, sizeof(v13));
      FigVCPTimedSampleGetPTS(ValueAtIndex, &v13);
      time1 = v13;
      v11 = v14;
      if (!CMTimeCompare(&time1, &v11))
      {
        break;
      }

      time1 = v13;
      v11 = v14;
      if (CMTimeCompare(&time1, &v11) >= 1)
      {
        goto LABEL_6;
      }

      if (a4 == ++a3)
      {
        ValueAtIndex = 0;
        a3 = a4;
        break;
      }
    }
  }

  *a5 = a3;
  return ValueAtIndex;
}

uint64_t remoteVideoCompositor_updateTimedSamplesForTracksWithXPCReducedSamples(void *a1, const __CFDictionary *a2)
{
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    remoteVideoCompositor_updateTimedSamplesForTracksWithXPCReducedSamples_cold_5(v32);
    return LODWORD(v32[0]);
  }

  v6 = Mutable;
  cf = CFArrayCreateMutable(v4, 0, MEMORY[0x1E695E9C0]);
  if (!cf)
  {
    remoteVideoCompositor_updateTimedSamplesForTracksWithXPCReducedSamples_cold_4(v6, v32);
    return LODWORD(v32[0]);
  }

  if (!a1)
  {
    goto LABEL_35;
  }

  count = xpc_array_get_count(a1);
  if (count)
  {
    v7 = 0;
    v28 = a1;
    v27 = v6;
    theDict = a2;
    while (1)
    {
      dictionary = xpc_array_get_dictionary(a1, v7);
      xpc_dictionary_get_uint64(dictionary, "TrackID");
      FigCFArrayAppendInt32();
      array = xpc_dictionary_get_array(dictionary, "TimedSamples");
      if (a2)
      {
        v10 = array;
        UInt64 = FigCFNumberCreateUInt64();
        if (UInt64)
        {
          v12 = UInt64;
          Value = CFDictionaryGetValue(a2, UInt64);
          v14 = Value;
          if (Value)
          {
            v15 = CFArrayGetCount(Value);
          }

          else
          {
            v15 = 0;
          }

          v16 = remoteVideoCompositor_copyTimedSampleArrayFromXPCArray(v10);
          v17 = v16;
          if (v16)
          {
            v18 = CFArrayGetCount(v16);
            if (v15)
            {
LABEL_13:
              v19 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
              if (v19)
              {
                v20 = v19;
                if (v18 >= 1)
                {
                  v21 = 0;
                  v22 = 0;
                  do
                  {
                    ValueAtIndex = CFArrayGetValueAtIndex(v17, v21);
                    if (FigVCPTimedSampleContainsNULL(ValueAtIndex))
                    {
                      v32[0] = 0;
                      v24 = FigVCPGetTimedSampleWithMatchingPTSFromAscendingPTSTimedSampleArray(v14, ValueAtIndex, v22, v15, v32);
                      if (v24)
                      {
                        CFArrayAppendValue(v20, v24);
                        v22 = v32[0] + 1;
                      }

                      else
                      {
                        CFArrayAppendValue(v20, ValueAtIndex);
                        v22 = v32[0];
                      }
                    }

                    else
                    {
                      CFArrayAppendValue(v20, ValueAtIndex);
                    }

                    ++v21;
                  }

                  while (v18 != v21);
                }

                a2 = theDict;
                CFDictionarySetValue(theDict, v12, v20);
                CFRelease(v12);
                v25 = 0;
                v6 = v27;
              }

              else
              {
                remoteVideoCompositor_updateTimedSamplesForTracksWithXPCReducedSamples_cold_1(v32);
                v25 = LODWORD(v32[0]);
                v20 = v12;
                a2 = theDict;
              }

LABEL_25:
              CFRelease(v20);
              if (v17)
              {
                CFRelease(v17);
              }

              if (v25)
              {
                goto LABEL_37;
              }

              goto LABEL_28;
            }
          }

          else
          {
            v18 = 0;
            if (v15)
            {
              goto LABEL_13;
            }
          }

          a2 = theDict;
          CFDictionarySetValue(theDict, v12, v17);
          v25 = 0;
          v20 = v12;
          goto LABEL_25;
        }

        remoteVideoCompositor_updateTimedSamplesForTracksWithXPCReducedSamples_cold_2(v32);
      }

      else
      {
        remoteVideoCompositor_updateTimedSamplesForTracksWithXPCReducedSamples_cold_3(v32);
      }

      v25 = LODWORD(v32[0]);
      if (LODWORD(v32[0]))
      {
        goto LABEL_37;
      }

LABEL_28:
      ++v7;
      a1 = v28;
      if (v7 == count)
      {
        CFArrayGetCount(v6);
LABEL_35:
        FigCFDictionaryApplyBlock();
        FigCFArrayApplyBlock();
        break;
      }
    }
  }

  v25 = 0;
LABEL_37:
  CFRelease(v6);
  CFRelease(cf);
  return v25;
}

uint64_t FigVideoCompositorRemoteGetObjectID(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {

      return remoteVideoCompositor_GetObjectID(a1, a2);
    }

    else
    {
      FigVideoCompositorRemoteGetObjectID_cold_1(&v3);
      return v3;
    }
  }

  else
  {
    FigVideoCompositorRemoteGetObjectID_cold_2(&v4);
    return v4;
  }
}

uint64_t remoteVideoCompositor_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    remoteVideoCompositor_GetObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    if (*(DerivedStorage + 9))
    {
      remoteVideoCompositor_GetObjectID_cold_2(&v7);
      return v7;
    }

    else
    {
      result = 0;
      *a2 = *v4;
    }
  }

  return result;
}

void __remoteVideoCompositor_updateTimedSamplesForTracksWithXPCReducedSamples_block_invoke(uint64_t a1, void *value)
{
  v6.length = *(a1 + 40);
  v6.location = 0;
  if (!CFArrayContainsValue(*(a1 + 32), v6, value))
  {
    v4 = *(a1 + 48);

    CFArrayAppendValue(v4, value);
  }
}

uint64_t remoteVideoCompositor_DeadConnectionCallback()
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 9) = 1;
  return result;
}

void __HandleRenderFrameMessage_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v5)
  {
    v5(v2, v3, v4, 0);
  }

  v6 = *(a1 + 32);

  CFRelease(v6);
}

CFMutableDictionaryRef remoteVideoCompositor_deepCopySourceTimedSamplesForTrackIDs(const void *a1)
{
  v1 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    FigCFDictionaryApplyBlock();
  }

  else
  {
    remoteVideoCompositor_deepCopySourceTimedSamplesForTrackIDs_cold_1();
  }

  return Mutable;
}

void __HandleRenderFrameFromWindowMessage_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v5)
  {
    v5(v2, v3, v4, 0);
  }

  v6 = *(a1 + 32);

  CFRelease(v6);
}

void __remoteVideoCompositor_deepCopySourceTimedSamplesForTrackIDs_block_invoke(uint64_t a1, const void *a2, CFArrayRef theArray)
{
  Copy = CFArrayCreateCopy(*(a1 + 32), theArray);
  CFDictionarySetValue(*(a1 + 40), a2, Copy);
  if (Copy)
  {

    CFRelease(Copy);
  }
}

void *remoteVideoCompositor_clonePendingFrame(uint64_t a1, void *a2)
{
  result = MEMORY[0x19A8CC720](a1, 8, 0x100004000313F17, 0);
  *result = *a2;
  return result;
}

__CFString *remoteVideoCompositor_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  if (*(DerivedStorage + 8))
  {
    v6 = " (invalidated)";
  }

  else
  {
    v6 = "";
  }

  v7 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigVideoCompositorRemote %p retainCount: %ld%s allocator: %p, ObjectID: %016llx>", a1, v5, v6, v7, *DerivedStorage);
  return Mutable;
}

uint64_t remoteVideoCompositor_SetCustomCallbacks(uint64_t a1, void *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10[1] = 0;
  FigSimpleMutexLock();
  if (a2)
  {
    __copy_assignment_8_8_t0w8_pa0_44030_8_pa0_33393_16_pa0_15098_24_pa0_21060_32_pa0_1898_40_pa0_17456_48_pa0_31433_56((DerivedStorage + 24), a2);
    *(DerivedStorage + 88) = a3;
    FigSimpleMutexUnlock();
    v7 = 0;
  }

  else
  {
    *(DerivedStorage + 72) = 0u;
    *(DerivedStorage + 56) = 0u;
    *(DerivedStorage + 40) = 0u;
    *(DerivedStorage + 24) = 0u;
    *(DerivedStorage + 88) = a3;
    FigSimpleMutexUnlock();
    v10[0] = 0;
    ObjectID = remoteVideoCompositor_GetObjectID(a1, v10);
    if (ObjectID || (ObjectID = FigXPCCreateBasicMessage(), ObjectID))
    {
      v7 = ObjectID;
    }

    else
    {
      v7 = FigXPCRemoteClientSendSyncMessage();
      if (!v7)
      {
        FigSimpleMutexLock();
        CFDictionaryRemoveAllValues(*(DerivedStorage + 104));
        FigSimpleMutexUnlock();
      }
    }
  }

  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v7;
}

__n128 OUTLINED_FUNCTION_7_112@<Q0>(__n128 *a1@<X8>)
{
  result = *a1;
  v1[4] = *a1;
  v3 = a1[1].n128_u64[0];
  v1[5].n128_u64[0] = v3;
  v1[8] = result;
  v1[9].n128_u64[0] = v3;
  v1[2] = result;
  v1[3].n128_u64[0] = v3;
  *v1 = result;
  v1[1].n128_u64[0] = v3;
  return result;
}

__n128 OUTLINED_FUNCTION_8_93()
{
  result = v0[8];
  v0[4] = result;
  v0[5].n128_u64[0] = v0[9].n128_u64[0];
  return result;
}

uint64_t FigWarehouseRenderPipelineCreate(const __CFAllocator *a1, const void *a2, CMTime *a3, const __CFDictionary *a4, void **a5)
{
  v40 = *MEMORY[0x1E69E9840];
  value = 0;
  refcon = 0;
  memset(&v35, 0, sizeof(v35));
  CMTimeMake(&rhs, 1, 1);
  lhs = *a3;
  CMTimeAdd(&v35, &lhs, &rhs);
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a5)
  {
    FigWarehouseRenderPipelineCreate_cold_10(&rhs);
    goto LABEL_56;
  }

  if (!a2)
  {
    FigWarehouseRenderPipelineCreate_cold_9(&rhs);
    goto LABEL_56;
  }

  if ((a3->flags & 0x1D) != 1)
  {
    FigWarehouseRenderPipelineCreate_cold_1(&rhs);
    goto LABEL_56;
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 8))
  {
    v10 = 3;
  }

  else
  {
    v10 = 0;
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 80))
  {
    v10 |= 4u;
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 88))
  {
    v10 |= 8u;
  }

  *&rhs.timescale = 0;
  rhs.value = v10;
  if (warehouse_RenderPipeline_getVTableWithOptionalMethods_sWarehouseRenderPipelineVTableSetupOnce != -1)
  {
    FigWarehouseRenderPipelineCreate_cold_2();
  }

  dispatch_sync_f(sWarehouseRenderPipelineVTableQueue, &rhs, warehouse_RenderPipeline_getVTableWithOptionalMethodsWork);
  FigRenderPipelineGetClassID();
  v11 = CMDerivedObjectCreate();
  if (v11)
  {
    goto LABEL_47;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 192) = 0;
  if (a4 && CFDictionaryGetValueIfPresent(a4, @"LoggingID", &value))
  {
    CFStringGetCString(value, (DerivedStorage + 192), 16, 0x600u);
  }

  *(DerivedStorage + 8) = FigCFWeakReferenceHolderCreateWithReferencedObject();
  epoch = a3->epoch;
  *(DerivedStorage + 52) = *&a3->value;
  *(DerivedStorage + 68) = epoch;
  *(DerivedStorage + 76) = v35;
  CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  v11 = CMBufferQueueCreate(a1, 0, CallbacksForUnsortedSampleBuffers, (DerivedStorage + 16));
  if (v11)
  {
LABEL_47:
    value_low = v11;
    goto LABEL_40;
  }

  Mutable = CFArrayCreateMutable(a1, 1024, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 112) = Mutable;
  if (!Mutable)
  {
    FigWarehouseRenderPipelineCreate_cold_8(&rhs);
    goto LABEL_56;
  }

  v16 = CFArrayCreateMutable(a1, 1024, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 120) = v16;
  if (!v16)
  {
    FigWarehouseRenderPipelineCreate_cold_7(&rhs);
    goto LABEL_56;
  }

  CFRetain(a2);
  *(DerivedStorage + 144) = a2;
  FigBaseObject = FigRenderPipelineGetFigBaseObject(a2);
  v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v18)
  {
    v11 = v18(FigBaseObject, @"SourceSampleBufferQueue", a1, DerivedStorage + 152);
    if (v11)
    {
      goto LABEL_47;
    }

    v19 = FigRenderPipelineGetFigBaseObject(a2);
    v20 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v20)
    {
      v20(v19, @"WarehouseRetransmissionAvailable", *MEMORY[0x1E695E4D0]);
    }

    v21 = FigSimpleMutexCreate();
    *(DerivedStorage + 104) = v21;
    if (!v21)
    {
      FigWarehouseRenderPipelineCreate_cold_6(&rhs);
      goto LABEL_56;
    }

    AllocatorForMedia = FigGetAllocatorForMedia();
    v23 = CFArrayCreateMutable(AllocatorForMedia, 4, &kFigWarehouseUpcomingTransitionArrayCallbacks);
    *(DerivedStorage + 128) = v23;
    if (!v23)
    {
      FigWarehouseRenderPipelineCreate_cold_5(&rhs);
      goto LABEL_56;
    }

    v11 = FigActivitySchedulerCreateForNewThread(a1, 3, @"com.apple.coremedia.warehouse", (DerivedStorage + 40));
    if (v11)
    {
      goto LABEL_47;
    }

    v24 = *(DerivedStorage + 40);
    v25 = refcon;
    v26 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v26)
    {
      v11 = v26(v24, warehouse_deliverSampleBuffersUpToHighWaterLevel, v25);
      if (!v11)
      {
        *(DerivedStorage + 48) = 1;
        v27 = *(DerivedStorage + 16);
        rhs = **&MEMORY[0x1E6960CC0];
        v11 = CMBufferQueueInstallTrigger(v27, warehouse_dataBecameReady, refcon, 7, &rhs, (DerivedStorage + 160));
        if (!v11)
        {
          v28 = *(DerivedStorage + 152);
          rhs = *a3;
          v11 = CMBufferQueueInstallTrigger(v28, warehouse_downstreamBufferQueueLowWater, refcon, 2, &rhs, (DerivedStorage + 168));
          if (!v11)
          {
            v29 = *(DerivedStorage + 152);
            rhs = v35;
            v11 = CMBufferQueueInstallTrigger(v29, 0, refcon, 2, &rhs, (DerivedStorage + 176));
            if (!v11)
            {
              if (qword_1ED4CBCE8 != -1)
              {
                FigWarehouseRenderPipelineCreate_cold_3();
              }

              v30 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, _MergedGlobals_148);
              *(DerivedStorage + 184) = v30;
              if (v30)
              {
                dispatch_set_context(v30, refcon);
                dispatch_source_set_event_handler_f(*(DerivedStorage + 184), warehouse_wakeUpAndCheckTheTimebase);
                dispatch_resume(*(DerivedStorage + 184));
                CMNotificationCenterGetDefaultLocalCenter();
                v11 = FigNotificationCenterAddWeakListener();
                if (!v11)
                {
                  CMNotificationCenterGetDefaultLocalCenter();
                  v11 = FigNotificationCenterAddWeakListener();
                  if (!v11)
                  {
                    if (dword_1EAF17C98)
                    {
                      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                      fig_log_call_emit_and_clean_up_after_send_and_compose();
                    }

                    value_low = 0;
                    *a5 = refcon;
                    return value_low;
                  }
                }

                goto LABEL_47;
              }

              FigWarehouseRenderPipelineCreate_cold_4(&rhs);
LABEL_56:
              value_low = LODWORD(rhs.value);
              goto LABEL_40;
            }
          }
        }
      }

      goto LABEL_47;
    }
  }

  value_low = 4294954514;
LABEL_40:
  if (refcon)
  {
    CFRelease(refcon);
  }

  if (value_low && dword_1EAF17C98)
  {
    v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return value_low;
}

void warehouse_deliverSampleBuffersUpToHighWaterLevel(uint64_t a1)
{
  v94 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = CMBaseObjectGetDerivedStorage();
  v72 = a1;
  if (CMBufferQueueTestTrigger(*(v3 + 152), *(v3 + 176)))
  {
    key = *MEMORY[0x1E6960518];
    do
    {
      v4 = CMBufferQueueDequeueIfDataReadyAndRetain(*(DerivedStorage + 16));
      if (!v4)
      {
        break;
      }

      v5 = v4;
      NumSamples = CMSampleBufferGetNumSamples(v4);
      if (CMBufferQueueEnqueue(*(DerivedStorage + 152), v5))
      {
        FigSimpleMutexUnlock();
        CFRelease(v5);
        return;
      }

      if (*(DerivedStorage + 136))
      {
        CMGetAttachment(v5, key, 0);
        v7 = FigCFEqual();
        v8 = *(DerivedStorage + 136);
        if (v7)
        {
          if (v8)
          {
            CFRelease(v8);
            *(DerivedStorage + 136) = 0;
          }

          v8 = 0;
          LOBYTE(v7) = NumSamples == 0;
        }

        if (v7)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v8 = 0;
      }

      if (!v8)
      {
        CFArrayAppendValue(*(DerivedStorage + 112), v5);
        Count = CFArrayGetCount(*(DerivedStorage + 112));
        *&v84.value = *MEMORY[0x1E6960C70];
        v10 = *(MEMORY[0x1E6960C70] + 16);
        v84.epoch = v10;
        *&v83.value = *&v84.value;
        v83.epoch = v10;
        v73 = *&v84.value;
        *&time2.value = *&v84.value;
        time2.epoch = v10;
        if (Count >= 1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 112), 0);
          v12 = CFArrayGetValueAtIndex(*(DerivedStorage + 112), Count - 1);
          CMSampleBufferGetOutputPresentationTimeStamp(&v84, ValueAtIndex);
          CMSampleBufferGetOutputPresentationTimeStamp(&lhs, v12);
          CMSampleBufferGetOutputDuration(&rhs, v12);
          CMTimeAdd(&v83, &lhs, &rhs);
          lhs = v83;
          rhs = v84;
          CMTimeSubtract(&time2, &lhs, &rhs);
        }

        v13 = CFArrayGetCount(*(DerivedStorage + 120));
        *&v81.value = v73;
        v81.epoch = v10;
        *&v80.value = v73;
        v80.epoch = v10;
        *&v79.value = v73;
        v79.epoch = v10;
        v14 = v13 - 1;
        if (v13 >= 1)
        {
          v15 = CFArrayGetValueAtIndex(*(DerivedStorage + 120), 0);
          v16 = CFArrayGetValueAtIndex(*(DerivedStorage + 120), v14);
          CMSampleBufferGetOutputPresentationTimeStamp(&v81, v15);
          CMSampleBufferGetOutputPresentationTimeStamp(&lhs, v16);
          CMSampleBufferGetOutputDuration(&rhs, v16);
          CMTimeAdd(&v80, &lhs, &rhs);
          lhs = v80;
          rhs = v81;
          CMTimeSubtract(&v79, &lhs, &rhs);
        }

        if (dword_1EAF17C98)
        {
          LODWORD(v78.value) = 0;
          LOBYTE(type.value) = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        a1 = v72;
        goto LABEL_28;
      }

LABEL_20:
      if (dword_1EAF17C98)
      {
        LODWORD(v84.value) = 0;
        LOBYTE(v83.value) = 0;
        v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        value = v84.value;
        if (os_log_type_enabled(v18, v83.value))
        {
          v20 = value;
        }

        else
        {
          v20 = value & 0xFFFFFFFE;
        }

        if (v20)
        {
          CMSampleBufferGetOutputPresentationTimeStamp(&lhs, v5);
          Seconds = CMTimeGetSeconds(&lhs);
          LODWORD(rhs.value) = 136316418;
          *(&rhs.value + 4) = "warehouse_deliverSampleBuffersUpToHighWaterLevel";
          LOWORD(rhs.flags) = 2082;
          *(&rhs.flags + 2) = DerivedStorage + 192;
          HIWORD(rhs.epoch) = 2048;
          v87 = a1;
          v88 = 2048;
          v89 = v5;
          v90 = 1024;
          v91 = NumSamples;
          v92 = 2048;
          v93 = Seconds;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

LABEL_28:
      CFRelease(v5);
      v22 = CMBaseObjectGetDerivedStorage();
    }

    while (CMBufferQueueTestTrigger(*(v22 + 152), *(v22 + 176)));
  }

  v23 = CMBaseObjectGetDerivedStorage();
  memset(&v84, 0, sizeof(v84));
  CMTimebaseGetTime(&v84, *(v23 + 24));
  memset(&v83, 0, sizeof(v83));
  v24 = *(v23 + 32);
  lhs = v84;
  FigSpeedRampMapTimeFromTargetToSourceUsingMappingArrayData(v24, &lhs, &v83);
  v25 = *(v23 + 112);
  if (!v25)
  {
    v32 = 0;
    goto LABEL_43;
  }

  v26 = CFArrayGetCount(v25);
  if (v26 < 1)
  {
    goto LABEL_41;
  }

  v27 = v26;
  v28 = 0;
  v29 = 0;
  v30 = *MEMORY[0x1E6960550];
  do
  {
    v31 = CFArrayGetValueAtIndex(*(v23 + 112), v28);
    if (CMSampleBufferGetNumSamples(v31) < 1)
    {
      if (CMGetAttachment(v31, v30, 0))
      {
        break;
      }

      ++v28;
      continue;
    }

    memset(&lhs, 0, sizeof(lhs));
    CMSampleBufferGetOutputPresentationTimeStamp(&rhs, v31);
    CMSampleBufferGetOutputDuration(&time2, v31);
    CMTimeAdd(&lhs, &rhs, &time2);
    if ((v83.flags & 1) == 0)
    {
      break;
    }

    rhs = lhs;
    time2 = v83;
    if ((CMTimeCompare(&rhs, &time2) & 0x80000000) == 0)
    {
      break;
    }

    v29 = ++v28;
  }

  while (v28 != v27);
  if (v29 >= 1)
  {
    v98.location = 0;
    v98.length = v29;
    CFArrayAppendArray(*(v23 + 120), *(v23 + 112), v98);
    v95.location = 0;
    v95.length = v29;
    CFArrayReplaceValues(*(v23 + 112), v95, 0, 0);
    v32 = 1;
    goto LABEL_43;
  }

LABEL_41:
  v32 = 0;
LABEL_43:
  v74 = CMBaseObjectGetDerivedStorage();
  v33 = *(v74 + 120);
  v68 = v23;
  if (!v33)
  {
    v49 = 0;
    goto LABEL_78;
  }

  v34 = CFArrayGetCount(v33);
  if (v34 < 1)
  {
    v44 = 1;
LABEL_69:
    v49 = 0;
    if (v34 && v44)
    {
      CFArrayRemoveAllValues(*(v74 + 120));
      v49 = 1;
    }

    goto LABEL_78;
  }

  v66 = v32;
  v35 = 0;
  v67 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v65 = v34;
  v39 = v34;
  v70 = *MEMORY[0x1E69604E8];
  v69 = *MEMORY[0x1E69604F0];
  while (1)
  {
    v40 = v39--;
    v41 = CFArrayGetValueAtIndex(*(v74 + 120), v39);
    v42 = CMSampleBufferGetNumSamples(v41);
    v37 += v42;
    if (v35)
    {
      goto LABEL_49;
    }

    v43 = v42;
    CMGetAttachment(v41, v70, 0);
    LODWORD(v36) = FigCFNumberGetSInt32();
    CMGetAttachment(v41, v69, 0);
    if (v36)
    {
      v36 = v36;
LABEL_49:
      if (v37 >= v36)
      {
        if (v65 >= v40)
        {
          v97.location = 0;
          v97.length = v39;
          CFArrayReplaceValues(*(v74 + 120), v97, 0, 0);
          v49 = 1;
        }

        else
        {
          v49 = 0;
        }

        goto LABEL_77;
      }

      v44 = 0;
      v35 = 1;
      goto LABEL_51;
    }

    SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(v41, 0);
    if (SampleAttachmentsArray)
    {
      break;
    }

    v35 = 0;
    v36 = 0;
    v38 += v43;
LABEL_63:
    v44 = 1;
LABEL_51:
    if (v40 <= 1)
    {
      if (v67)
      {
        v44 = 0;
      }

      v32 = v66;
      v34 = v65;
      goto LABEL_69;
    }
  }

  if (v43 < 1)
  {
    v35 = 0;
    v36 = 0;
    goto LABEL_63;
  }

  v46 = SampleAttachmentsArray;
  v64 = v43 + v38;
  v47 = v43 + 1;
  v48 = v67;
  while (1)
  {
    CFArrayGetValueAtIndex(v46, v47 - 2);
    LOWORD(lhs.value) = 0;
    if (FigCFDictionaryGetInt16IfPresent())
    {
      break;
    }

LABEL_59:
    ++v38;
    if (--v47 <= 1)
    {
      v67 = v48;
      v35 = 0;
      v36 = 0;
      v44 = 1;
      v38 = v64;
      goto LABEL_51;
    }
  }

  if (v38 < SLOWORD(lhs.value))
  {
    v48 = 1;
    goto LABEL_59;
  }

  v49 = v65 >= v40;
  if (v65 >= v40)
  {
    v96.location = 0;
    v96.length = v39;
    CFArrayReplaceValues(*(v74 + 120), v96, 0, 0);
  }

LABEL_77:
  v32 = v66;
LABEL_78:
  v75 = *MEMORY[0x1E6960C70];
  *&time2.value = *MEMORY[0x1E6960C70];
  v50 = *(MEMORY[0x1E6960C70] + 16);
  time2.epoch = v50;
  if (CFArrayGetCount(*(v68 + 112)) >= 1)
  {
    v51 = CFArrayGetValueAtIndex(*(v68 + 112), 0);
    memset(&lhs, 0, sizeof(lhs));
    CMSampleBufferGetOutputPresentationTimeStamp(&rhs, v51);
    CMSampleBufferGetOutputDuration(&v81, v51);
    CMTimeAdd(&lhs, &rhs, &v81);
    v52 = *(v68 + 32);
    rhs = lhs;
    FigSpeedRampMapTimeFromSourceToTargetUsingMappingArrayData(v52, &rhs, &time2);
  }

  v53 = *(v68 + 24);
  v54 = *(v68 + 184);
  lhs = time2;
  CMTimebaseSetTimerDispatchSourceNextFireTime(v53, v54, &lhs, 0);
  if ((v32 | v49) == 1)
  {
    v55 = CFArrayGetCount(*(v68 + 112));
    *&v81.value = v75;
    v81.epoch = v50;
    *&v80.value = v75;
    v80.epoch = v50;
    *&v79.value = v75;
    v79.epoch = v50;
    v56 = v55 - 1;
    if (v55 >= 1)
    {
      v57 = CFArrayGetValueAtIndex(*(v68 + 112), 0);
      v58 = CFArrayGetValueAtIndex(*(v68 + 112), v56);
      CMSampleBufferGetOutputPresentationTimeStamp(&v81, v57);
      CMSampleBufferGetOutputPresentationTimeStamp(&lhs, v58);
      CMSampleBufferGetOutputDuration(&rhs, v58);
      CMTimeAdd(&v80, &lhs, &rhs);
      lhs = v80;
      rhs = v81;
      CMTimeSubtract(&v79, &lhs, &rhs);
    }

    v59 = CFArrayGetCount(*(v68 + 120));
    *&v78.value = v75;
    v78.epoch = v50;
    *&type.value = v75;
    type.epoch = v50;
    *&v76.value = v75;
    v76.epoch = v50;
    v60 = v59 - 1;
    if (v59 >= 1)
    {
      v61 = CFArrayGetValueAtIndex(*(v68 + 120), 0);
      v62 = CFArrayGetValueAtIndex(*(v68 + 120), v60);
      CMSampleBufferGetOutputPresentationTimeStamp(&v78, v61);
      CMSampleBufferGetOutputPresentationTimeStamp(&lhs, v62);
      CMSampleBufferGetOutputDuration(&rhs, v62);
      CMTimeAdd(&type, &lhs, &rhs);
      lhs = type;
      rhs = v78;
      CMTimeSubtract(&v76, &lhs, &rhs);
    }

    if (dword_1EAF17C98)
    {
      v63 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  FigSimpleMutexUnlock();
}

uint64_t warehouse_dataBecameReady()
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    v1 = *(result + 40);
    VTable = CMBaseObjectGetVTable();
    v3 = *(VTable + 16);
    result = VTable + 16;
    v4 = *(v3 + 16);
    if (v4)
    {

      return v4(v1);
    }
  }

  return result;
}

uint64_t warehouse_downstreamBufferQueueLowWater()
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    v1 = *(result + 40);
    VTable = CMBaseObjectGetVTable();
    v3 = *(VTable + 16);
    result = VTable + 16;
    v4 = *(v3 + 16);
    if (v4)
    {

      return v4(v1);
    }
  }

  return result;
}

uint64_t warehouseRenderPipelineTimerQueueSetupOnce(uint64_t *a1)
{
  result = FigDispatchQueueCreateWithPriority();
  *a1 = result;
  return result;
}

uint64_t warehouse_wakeUpAndCheckTheTimebase()
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    v1 = *(result + 40);
    VTable = CMBaseObjectGetVTable();
    v3 = *(VTable + 16);
    result = VTable + 16;
    v4 = *(v3 + 16);
    if (v4)
    {

      return v4(v1);
    }
  }

  return result;
}

void warehouse_reflectNotificationFromDownstreamRenderPipeline(uint64_t a1, uint64_t a2)
{
  v138 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  if (FigCFEqual())
  {
    v91 = *MEMORY[0x1E6960C70];
    v92 = *(MEMORY[0x1E6960C70] + 16);
    FigCFDictionaryGetCMTimeIfPresent();
    if ((BYTE12(v91) & 0x1D) != 1)
    {
      return;
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    cf = 0;
    if (dword_1EAF17C98)
    {
      LODWORD(v101.value) = 0;
      LOBYTE(type.value) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v5 = *(DerivedStorage + 24);
    if (v5)
    {
      memset(&v101, 0, sizeof(v101));
      CMTimebaseGetTime(&v101, v5);
      memset(&type, 0, sizeof(type));
      v6 = *(DerivedStorage + 32);
      *time = v101;
      FigSpeedRampMapTimeFromTargetToSourceUsingMappingArrayData(v6, time, &type);
      *time = v91;
      *&time[16] = v92;
      time2 = type;
      if (CMTimeCompare(time, &time2) < 0)
      {
        LODWORD(rhs.value) = 0;
        LOBYTE(v98.value) = 0;
        v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    FigSimpleMutexLock();
    v8 = *(DerivedStorage + 144);
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 88);
    if (v9)
    {
      *time = v91;
      *&time[16] = v92;
      v9(v8, time);
    }

    v10 = *(DerivedStorage + 112);
    if (v10)
    {
      Count = CFArrayGetCount(v10);
      if (Count >= 1)
      {
        v12 = Count;
        v13 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 112), v13);
          NumSamples = CMSampleBufferGetNumSamples(ValueAtIndex);
          if (NumSamples)
          {
            v16 = NumSamples;
            memset(&v95, 0, sizeof(v95));
            CMSampleBufferGetOutputDuration(&v95, ValueAtIndex);
            memset(&v94, 0, sizeof(v94));
            CMSampleBufferGetOutputPresentationTimeStamp(&v94, ValueAtIndex);
            memset(&v93, 0, sizeof(v93));
            *time = v94;
            time2 = v95;
            CMTimeAdd(&v93, time, &time2);
            *time = v91;
            *&time[16] = v92;
            time2 = v93;
            if (CMTimeCompare(time, &time2) <= 0)
            {
              break;
            }
          }

          if (v12 == ++v13)
          {
            goto LABEL_19;
          }
        }

        v86 = a2;
        v18 = CMSampleBufferGetNumSamples(ValueAtIndex);
        memset(&time2, 0, sizeof(time2));
        CMSampleBufferGetOutputPresentationTimeStamp(&time2, ValueAtIndex);
        memset(&v101, 0, sizeof(v101));
        v19 = CMGetAttachment(ValueAtIndex, *MEMORY[0x1E6960560], 0);
        CMTimeMakeFromDictionary(&v101, v19);
        v20 = MEMORY[0x1E6960CC0];
        if ((v101.flags & 0x1D) != 1)
        {
          v101 = **&MEMORY[0x1E6960CC0];
        }

        memset(&type, 0, sizeof(type));
        *time = time2;
        rhs = v101;
        CMTimeSubtract(&type, time, &rhs);
        memset(&rhs, 0, sizeof(rhs));
        *time = v91;
        *&time[16] = v92;
        v98 = type;
        CMTimeSubtract(&rhs, time, &v98);
        *v105 = 0;
        v103 = 0u;
        v104 = 0u;
        memset(time, 0, sizeof(time));
        if (CMSampleBufferGetSampleTimingInfo(ValueAtIndex, 0, time))
        {
          goto LABEL_101;
        }

        v98 = rhs;
        v97 = *v20;
        if (CMTimeCompare(&v98, &v97) < 0)
        {
          if (FigSignalErrorAtGM())
          {
            goto LABEL_101;
          }

          v21 = 0;
        }

        else if (rhs.value * *&time[8] / (*time * rhs.timescale) >= v18)
        {
          v21 = v18 - 1;
        }

        else
        {
          v21 = rhs.value * *&time[8] / (*time * rhs.timescale);
        }

        CMGetAttachment(ValueAtIndex, *MEMORY[0x1E69604E8], 0);
        SInt32 = FigCFNumberGetSInt32();
        v23 = SInt32;
        v24 = SInt32;
        if (v21 < SInt32)
        {
          Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 10, MEMORY[0x1E695E9C0]);
          AllocatorForMedia = FigGetAllocatorForMedia();
          if (!CMSampleBufferCreateCopy(AllocatorForMedia, ValueAtIndex, &cf))
          {
            v26 = v24 - v21;
            *time = v91;
            *&time[16] = v92;
            warehouse_setTrimAttachmentToTrimUntilTime(cf, time);
            v90 = Mutable;
            v85 = v12;
            if (dword_1EAF17C98)
            {
              LODWORD(v101.value) = 0;
              LOBYTE(type.value) = 0;
              v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              value = v101.value;
              if (os_log_type_enabled(v27, type.value))
              {
                v29 = value;
              }

              else
              {
                v29 = value & 0xFFFFFFFE;
              }

              if (v29)
              {
                *time = v91;
                *&time[16] = v92;
                Seconds = CMTimeGetSeconds(time);
                CMSampleBufferGetOutputPresentationTimeStamp(time, ValueAtIndex);
                v31 = CMTimeGetSeconds(time);
                CMSampleBufferGetOutputDuration(time, ValueAtIndex);
                v32 = CMTimeGetSeconds(time);
                v33 = cf;
                v87 = CMSampleBufferGetNumSamples(cf);
                CMSampleBufferGetOutputPresentationTimeStamp(time, cf);
                v34 = CMTimeGetSeconds(time);
                CMSampleBufferGetOutputDuration(time, cf);
                v35 = CMTimeGetSeconds(time);
                LODWORD(time2.value) = 136318210;
                *(&time2.value + 4) = "warehouse_retransmitSampleBuffersFromTime";
                LOWORD(time2.flags) = 2082;
                *(&time2.flags + 2) = DerivedStorage + 192;
                HIWORD(time2.epoch) = 2048;
                v121 = v86;
                v122 = 2048;
                v123 = Seconds;
                v124 = 2048;
                *v125 = ValueAtIndex;
                *&v125[8] = 1024;
                *&v125[10] = v16;
                v126 = 2048;
                v127 = v31;
                v128 = 2048;
                v129 = v32;
                v130 = 2048;
                *v131 = v33;
                *&v131[8] = 1024;
                *&v131[10] = v87;
                v132 = 2048;
                v133 = v34;
                v134 = 2048;
                v135 = v35;
                v136 = 1024;
                v137 = v26;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            CFArrayAppendValue(Mutable, cf);
            if (cf)
            {
              CFRelease(cf);
              cf = 0;
            }

            if (v13 && v26 >= 1)
            {
              v47 = v13;
              do
              {
                v48 = v47 - 1;
                v49 = CFArrayGetValueAtIndex(*(DerivedStorage + 112), v47 - 1);
                v50 = CMSampleBufferGetNumSamples(v49);
                v51 = v50;
                if (v26 >= v50)
                {
                  v52 = v50;
                }

                else
                {
                  v52 = v26;
                }

                v53 = FigGetAllocatorForMedia();
                if (v51 < 1)
                {
                  if (CMSampleBufferCreateCopy(v53, v49, &cf))
                  {
                    goto LABEL_20;
                  }
                }

                else
                {
                  v141.location = v51 - v52;
                  v141.length = v52;
                  if (CMSampleBufferCopySampleBufferForRange(v53, v49, v141, &cf))
                  {
                    goto LABEL_20;
                  }

                  warehouse_setTrimAttachmentToTrimWholeDuration(cf);
                }

                v26 -= v52;
                if (dword_1EAF17C98)
                {
                  LODWORD(v101.value) = 0;
                  LOBYTE(type.value) = 0;
                  v54 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v55 = v101.value;
                  if (os_log_type_enabled(v54, type.value))
                  {
                    v56 = v55;
                  }

                  else
                  {
                    v56 = v55 & 0xFFFFFFFE;
                  }

                  if (v56)
                  {
                    CMSampleBufferGetOutputPresentationTimeStamp(time, v49);
                    v57 = CMTimeGetSeconds(time);
                    CMSampleBufferGetOutputDuration(time, v49);
                    v58 = CMTimeGetSeconds(time);
                    v59 = cf;
                    v60 = CMSampleBufferGetNumSamples(cf);
                    CMSampleBufferGetOutputPresentationTimeStamp(time, cf);
                    v61 = CMTimeGetSeconds(time);
                    CMSampleBufferGetOutputDuration(time, cf);
                    v62 = CMTimeGetSeconds(time);
                    LODWORD(time2.value) = 136317954;
                    *(&time2.value + 4) = "warehouse_retransmitSampleBuffersFromTime";
                    LOWORD(time2.flags) = 2082;
                    *(&time2.flags + 2) = DerivedStorage + 192;
                    HIWORD(time2.epoch) = 2048;
                    v121 = v86;
                    v122 = 2048;
                    v123 = *&v49;
                    v124 = 1024;
                    *v125 = v51;
                    *&v125[4] = 2048;
                    *&v125[6] = v57;
                    v126 = 2048;
                    v127 = v58;
                    v128 = 2048;
                    v129 = *&v59;
                    v130 = 1024;
                    *v131 = v60;
                    *&v131[4] = 2048;
                    *&v131[6] = v61;
                    v132 = 2048;
                    v133 = v62;
                    v134 = 1024;
                    LODWORD(v135) = v26;
                    _os_log_send_and_compose_impl();
                  }

                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                  v48 = v47 - 1;
                  Mutable = v90;
                }

                CFArrayInsertValueAtIndex(Mutable, 0, cf);
                if (cf)
                {
                  CFRelease(cf);
                  cf = 0;
                }

                if (v47 <= 1)
                {
                  break;
                }

                v47 = v48;
              }

              while (v26 > 0);
            }

            v63 = CFArrayGetCount(*(DerivedStorage + 120));
            if (v26 >= 1 && v63 >= 1)
            {
              v65 = v63;
              while (1)
              {
                v66 = CFArrayGetValueAtIndex(*(DerivedStorage + 120), v65 - 1);
                v67 = CMSampleBufferGetNumSamples(v66);
                v68 = v67;
                v69 = v26 >= v67 ? v67 : v26;
                v70 = FigGetAllocatorForMedia();
                v142.location = v68 - v69;
                v142.length = v69;
                if (CMSampleBufferCopySampleBufferForRange(v70, v66, v142, &cf))
                {
                  goto LABEL_20;
                }

                warehouse_setTrimAttachmentToTrimWholeDuration(cf);
                v26 -= v69;
                if (dword_1EAF17C98)
                {
                  LODWORD(v101.value) = 0;
                  LOBYTE(type.value) = 0;
                  v71 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v72 = v101.value;
                  if (os_log_type_enabled(v71, type.value))
                  {
                    v73 = v72;
                  }

                  else
                  {
                    v73 = v72 & 0xFFFFFFFE;
                  }

                  if (v73)
                  {
                    CMSampleBufferGetOutputPresentationTimeStamp(time, v66);
                    v74 = CMTimeGetSeconds(time);
                    CMSampleBufferGetOutputDuration(time, v66);
                    v75 = CMTimeGetSeconds(time);
                    v76 = cf;
                    v89 = CMSampleBufferGetNumSamples(cf);
                    CMSampleBufferGetOutputPresentationTimeStamp(time, cf);
                    v77 = CMTimeGetSeconds(time);
                    CMSampleBufferGetOutputDuration(time, cf);
                    v78 = CMTimeGetSeconds(time);
                    LODWORD(time2.value) = 136317954;
                    *(&time2.value + 4) = "warehouse_retransmitSampleBuffersFromTime";
                    LOWORD(time2.flags) = 2082;
                    *(&time2.flags + 2) = DerivedStorage + 192;
                    HIWORD(time2.epoch) = 2048;
                    v121 = v86;
                    v122 = 2048;
                    v123 = *&v66;
                    v124 = 1024;
                    *v125 = v68;
                    *&v125[4] = 2048;
                    *&v125[6] = v74;
                    v126 = 2048;
                    v127 = v75;
                    v128 = 2048;
                    v129 = *&v76;
                    v130 = 1024;
                    *v131 = v89;
                    *&v131[4] = 2048;
                    *&v131[6] = v77;
                    v132 = 2048;
                    v133 = v78;
                    v134 = 1024;
                    LODWORD(v135) = v26;
                    _os_log_send_and_compose_impl();
                  }

                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                  Mutable = v90;
                }

                CFArrayInsertValueAtIndex(Mutable, 0, cf);
                if (cf)
                {
                  CFRelease(cf);
                  cf = 0;
                }

                if (v65 >= 2)
                {
                  --v65;
                  if (v26 > 0)
                  {
                    continue;
                  }
                }

                break;
              }
            }

            v79 = CFArrayGetCount(Mutable);
            if (v79 < 1)
            {
              v12 = v85;
            }

            else
            {
              v80 = v79;
              v81 = 0;
              v12 = v85;
              do
              {
                v82 = CFArrayGetValueAtIndex(Mutable, v81);
                CMBufferQueueEnqueue(*(DerivedStorage + 152), v82);
                ++v81;
              }

              while (v80 != v81);
            }

            goto LABEL_102;
          }

LABEL_20:
          FigSimpleMutexUnlock();
          if (cf)
          {
            CFRelease(cf);
          }

          if (Mutable)
          {
            CFRelease(Mutable);
          }

          return;
        }

        v36 = v21 - SInt32;
        v37 = FigGetAllocatorForMedia();
        v140.length = v16 - v36;
        v140.location = v21 - v24;
        if (!CMSampleBufferCopySampleBufferForRange(v37, ValueAtIndex, v140, &cf))
        {
          *time = v91;
          *&time[16] = v92;
          warehouse_setTrimAttachmentToTrimUntilTime(cf, time);
          CMBufferQueueEnqueue(*(DerivedStorage + 152), cf);
          if (dword_1EAF17C98)
          {
            LODWORD(v101.value) = 0;
            LOBYTE(type.value) = 0;
            v38 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v39 = v101.value;
            if (os_log_type_enabled(v38, type.value))
            {
              v40 = v39;
            }

            else
            {
              v40 = v39 & 0xFFFFFFFE;
            }

            if (v40)
            {
              *time = v91;
              *&time[16] = v92;
              v41 = CMTimeGetSeconds(time);
              CMSampleBufferGetOutputPresentationTimeStamp(time, ValueAtIndex);
              v42 = CMTimeGetSeconds(time);
              CMSampleBufferGetOutputDuration(time, ValueAtIndex);
              v43 = CMTimeGetSeconds(time);
              v44 = cf;
              v88 = CMSampleBufferGetNumSamples(cf);
              CMSampleBufferGetOutputPresentationTimeStamp(time, cf);
              v45 = CMTimeGetSeconds(time);
              CMSampleBufferGetOutputDuration(time, cf);
              v46 = CMTimeGetSeconds(time);
              *time = 136318722;
              *&time[4] = "warehouse_retransmitSampleBuffersFromTime";
              *&time[12] = 2082;
              *&time[14] = DerivedStorage + 192;
              *&time[22] = 2048;
              *&time[24] = v86;
              LOWORD(v103) = 2048;
              *(&v103 + 2) = v41;
              WORD5(v103) = 1024;
              HIDWORD(v103) = v23;
              LOWORD(v104) = 2048;
              *(&v104 + 2) = ValueAtIndex;
              WORD5(v104) = 1024;
              HIDWORD(v104) = v16;
              *v105 = 2048;
              *&v105[2] = v42;
              v106 = 2048;
              v107 = v43;
              v108 = 1024;
              v109 = v36;
              v110 = 1024;
              v111 = v16;
              v112 = 2048;
              v113 = v44;
              v114 = 1024;
              v115 = v88;
              v116 = 2048;
              v117 = v45;
              v118 = 2048;
              v119 = v46;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          if (cf)
          {
            CFRelease(cf);
            Mutable = 0;
            cf = 0;
            goto LABEL_102;
          }

LABEL_101:
          Mutable = 0;
LABEL_102:
          v83 = v13 + 1;
          if (v13 + 1 < v12)
          {
            do
            {
              v84 = CFArrayGetValueAtIndex(*(DerivedStorage + 112), v83);
              CMBufferQueueEnqueue(*(DerivedStorage + 152), v84);
              ++v83;
            }

            while (v12 != v83);
          }

          goto LABEL_20;
        }
      }
    }

LABEL_19:
    Mutable = 0;
    goto LABEL_20;
  }

  CMNotificationCenterGetDefaultLocalCenter();

  CMNotificationCenterPostNotification();
}

uint64_t warehouse_reflectNotificationFromUpstreamBufferQueue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigCFEqual())
  {
    FigSimpleMutexLock();
    FigCFArrayRemoveAllValues();
    FigCFArrayRemoveAllValues();
    CFArrayRemoveAllValues(*(DerivedStorage + 128));
    FigSimpleMutexUnlock();
    v7 = *(DerivedStorage + 40);
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v8)
    {
      v8(v7);
    }
  }

  else
  {
    v9 = FigCFEqual();
    if (a5)
    {
      if (v9)
      {
        v10 = CFGetTypeID(a5);
        if (v10 == CFDictionaryGetTypeID())
        {
          Value = FigCFDictionaryGetValue();
          FigSimpleMutexLock();
          v12 = *(DerivedStorage + 136);
          *(DerivedStorage + 136) = Value;
          if (Value)
          {
            CFRetain(Value);
          }

          if (v12)
          {
            CFRelease(v12);
          }

          FigSimpleMutexUnlock();
        }
      }
    }
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

CFMutableDictionaryRef warehouseRenderPipelineSetupOnce()
{
  sWarehouseRenderPipelineVTableQueue = dispatch_queue_create("com.apple.coremedia.warehouserenderpipeline.vtables", 0);
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
  sWarehouseRenderPipelineVTableDictionary = result;
  return result;
}

void warehouse_RenderPipeline_getVTableWithOptionalMethodsWork(int *a1)
{
  v2 = *a1;
  Value = CFDictionaryGetValue(sWarehouseRenderPipelineVTableDictionary, v2);
  if (Value)
  {
    goto LABEL_15;
  }

  Value = malloc_type_malloc(0x18uLL, 0x6004045F868BCuLL);
  v4 = malloc_type_malloc(0x78uLL, 0x10C00406FD3D2E8uLL);
  __copy_assignment_8_8_t0w8_pa0_57874_8_pa0_34440_16_pa0_612_24_pa0_26992_32_pa0_12599_40_pa0_51310_48_pa0_29770_56_pa0_24547_64_pa0_53210_72_pa0_23665_80_pa0_52496_88_pa0_23813_96_pa0_52734_104_pa0_18255_112(v4, kFigWarehouseRenderPipeline_FigRenderPipelineClass);
  if (v2)
  {
    if ((v2 & 2) != 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v4[1] = 0;
    if ((v2 & 2) != 0)
    {
LABEL_4:
      if ((v2 & 4) != 0)
      {
        goto LABEL_5;
      }

LABEL_11:
      v4[10] = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  v4[2] = 0;
  if ((v2 & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v2 & 8) == 0)
  {
LABEL_6:
    v4[11] = 0;
  }

LABEL_7:
  *Value = 0;
  Value[1] = &kFigWarehouseRenderPipeline_BaseClass;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  Value[2] = v5;
  CFDictionarySetValue(sWarehouseRenderPipelineVTableDictionary, v2, Value);
LABEL_15:
  *(a1 + 1) = Value;
}

uint64_t figWarehouseRenderPipelineSetRateAndAnchorTime(float a1, float a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  v9 = *(CMBaseObjectGetDerivedStorage() + 144);
  v14 = *a4;
  v15 = *(a4 + 2);
  v12 = *a5;
  v13 = *(a5 + 2);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v10)
  {
    return 4294954514;
  }

  v18 = v14;
  v19 = v15;
  v16 = v12;
  v17 = v13;
  return v10(v9, &v18, &v16, a1, a2);
}

uint64_t figWarehouseRenderPipelineStartAndUseTimebaseAtTransition(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = 0;
  if (a5)
  {
    if (a6)
    {
      v13 = FigCFWeakReferenceHolderCreateWithReferencedObject();
      if (!v13)
      {
        figWarehouseRenderPipelineStartAndUseTimebaseAtTransition_cold_1(&v24);
        return v24;
      }
    }
  }

  FigSimpleMutexLock();
  value[0] = a4;
  value[1] = a2;
  value[2] = a5;
  value[3] = v13;
  value[4] = 0;
  CFArrayAppendValue(*(DerivedStorage + 128), value);
  FigSimpleMutexUnlock();
  v14 = *(DerivedStorage + 144);
  v21 = *a3;
  v22 = *(a3 + 2);
  v15 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v15)
  {
    v19 = 4294954514;
    if (!v13)
    {
      return v19;
    }

    goto LABEL_11;
  }

  v24 = v21;
  v25 = v22;
  v16 = v15(v14, a2, &v24, a4, warehouse_timebaseTransitionCommitted, a1);
  if (v16)
  {
    v19 = v16;
    if (!v13)
    {
      return v19;
    }

    goto LABEL_11;
  }

  v17 = *(DerivedStorage + 40);
  v18 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v18)
  {
    v18(v17);
  }

  v19 = 0;
  if (v13)
  {
LABEL_11:
    CFRelease(v13);
  }

  return v19;
}

uint64_t figWarehouseRenderPipelineStartOffline(uint64_t a1, __int128 *a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 144);
  v6 = *a2;
  v7 = *(a2 + 2);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v4)
  {
    return 4294954514;
  }

  v8 = v6;
  v9 = v7;
  return v4(v3, &v8);
}

uint64_t figWarehouseRenderPipelineStopOffline()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 144);
  v1 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v1)
  {
    return 4294954514;
  }

  return v1(v0);
}

uint64_t figWarehouseRenderPipelinePretendOutputIsLow(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  warehouse_deliverSampleBuffersUpToHighWaterLevel(a1);
  v3 = *(DerivedStorage + 144);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v3);
}

uint64_t figWarehouseRenderPipelineSynchronizeToTimebase()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 144);
  v1 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v1)
  {
    return 4294954514;
  }

  return v1(v0);
}

uint64_t figWarehouseRenderPipelineRequestDecodeForPreroll(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  warehouse_deliverSampleBuffersUpToHighWaterLevel(a1);
  v5 = *(DerivedStorage + 144);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v5, a2);
}

uint64_t figWarehouseRenderPipelineFinishSettingRate()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 144);
  v1 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v1)
  {
    return 4294954514;
  }

  return v1(v0);
}

uint64_t figWarehouseRenderPipelineCancelAndFlushTransition(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17C98)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  v5 = *(DerivedStorage + 112);
  if (v5 && (Count = CFArrayGetCount(v5), Count >= 1))
  {
    v7 = Count;
    v8 = 0;
    v9 = *MEMORY[0x1E6960550];
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 112), v8);
      if (!CMSampleBufferGetNumSamples(ValueAtIndex))
      {
        CMGetAttachment(ValueAtIndex, v9, 0);
        if (FigCFEqual())
        {
          break;
        }
      }

      if (v7 == ++v8)
      {
        goto LABEL_9;
      }
    }

    v18.length = v7 - v8;
    v18.location = v8;
    CFArrayReplaceValues(*(DerivedStorage + 112), v18, 0, 0);
    CMBufferQueueGetBufferCount(*(DerivedStorage + 16));
    CMBufferQueueReset(*(DerivedStorage + 16));
    if (dword_1EAF17C98)
    {
      v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
LABEL_9:
    FigBufferQueueTwoPassFilter();
  }

  v12 = CFArrayGetCount(*(DerivedStorage + 128));
  if (v12 >= 1)
  {
    v13 = v12;
    v14 = 0;
    while (1)
    {
      CFArrayGetValueAtIndex(*(DerivedStorage + 128), v14);
      if (FigCFEqual())
      {
        break;
      }

      if (v13 == ++v14)
      {
        goto LABEL_18;
      }
    }

    v19.length = v13 - v14;
    v19.location = v14;
    CFArrayReplaceValues(*(DerivedStorage + 128), v19, 0, 0);
  }

LABEL_18:
  FigSimpleMutexUnlock();
  v15 = *(DerivedStorage + 144);
  v16 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (v16)
  {
    return v16(v15, a2);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t figWarehouseRenderPipelineFlushFromTime(uint64_t a1, __int128 *a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 144);
  v6 = *a2;
  v7 = *(a2 + 2);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 88);
  if (!v4)
  {
    return 4294954514;
  }

  v8 = v6;
  v9 = v7;
  return v4(v3, &v8);
}

uint64_t figWarehouseRenderPipelineDoesSupportTransitionToFormatDescription(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 144);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 96);
  if (!v4)
  {
    return 0;
  }

  return v4(v3, a2);
}

uint64_t figWarehouseRenderPipelineSetPropertiesToUpdateAtTransition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  Count = CFArrayGetCount(*(DerivedStorage + 128));
  if (Count < 1)
  {
LABEL_5:
    FigSimpleMutexUnlock();

    return FigSignalErrorAtGM();
  }

  else
  {
    v7 = Count;
    v8 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 128), v8);
      if (FigCFEqual())
      {
        break;
      }

      if (v7 == ++v8)
      {
        goto LABEL_5;
      }
    }

    Value = FigCFDictionaryGetValue();
    if (*MEMORY[0x1E695E738] == Value)
    {
      Value = 0;
    }

    v12 = ValueAtIndex[4];
    ValueAtIndex[4] = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    if (v12)
    {
      CFRelease(v12);
    }

    FigSimpleMutexUnlock();
    v13 = *(DerivedStorage + 144);
    v14 = *(*(CMBaseObjectGetVTable() + 16) + 112);
    if (v14)
    {

      return v14(v13, a2, a3);
    }

    else
    {
      return 4294954514;
    }
  }
}

void warehouse_timebaseTransitionCommitted(const void *a1, uint64_t a2, __int128 *a3, __int128 *a4, float a5)
{
  v29 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  Count = CFArrayGetCount(*(DerivedStorage + 128));
  if (Count < 1)
  {
LABEL_5:

    FigSimpleMutexUnlock();
  }

  else
  {
    v12 = Count;
    v13 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 128), v13);
      if (FigCFEqual())
      {
        break;
      }

      if (v12 == ++v13)
      {
        goto LABEL_5;
      }
    }

    v24 = a4;
    v16 = ValueAtIndex[1];
    v15 = ValueAtIndex[2];
    ValueAtIndex[1] = 0;
    if (ValueAtIndex[3])
    {
      v17 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (!v17)
      {
        if (dword_1EAF17C98)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v17 = 0;
        v15 = 0;
      }
    }

    else
    {
      v17 = 0;
    }

    v19 = ValueAtIndex[4];
    ValueAtIndex[4] = 0;
    CFArrayRemoveValueAtIndex(*(DerivedStorage + 128), v13);
    CFRetain(a1);
    warehouse_setTimebase(a1, v16);
    v20 = *(DerivedStorage + 32);
    *(DerivedStorage + 32) = v19;
    if (v19)
    {
      CFRetain(v19);
    }

    if (v20)
    {
      CFRelease(v20);
    }

    CFArrayGetCount(*(DerivedStorage + 120));
    CFArrayRemoveAllValues(*(DerivedStorage + 120));
    v21 = *MEMORY[0x1E6960550];
    do
    {
      FirstValue = FigCFArrayGetFirstValue();
      if (!FirstValue)
      {
        break;
      }

      CMGetAttachment(FirstValue, v21, 0);
      v23 = FigCFEqual();
      CFArrayRemoveValueAtIndex(*(DerivedStorage + 112), 0);
    }

    while (!v23);
    CFRelease(a1);
    FigSimpleMutexUnlock();
    if (v16)
    {
      CFRelease(v16);
    }

    if (v19)
    {
      CFRelease(v19);
    }

    if (v15)
    {
      v27 = *a3;
      v28 = *(a3 + 2);
      v25 = *v24;
      v26 = *(v24 + 2);
      v15(v17, a2, &v27, &v25, a5);
    }

    if (v17)
    {
      CFRelease(v17);
    }
  }
}

OpaqueCMTimebase *warehouse_setTimebase(uint64_t a1, OpaqueCMTimebase *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = *(DerivedStorage + 24);
  if (result != a2)
  {
    if (dword_1EAF17C98)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      result = *(DerivedStorage + 24);
    }

    if (result)
    {
      CMTimebaseRemoveTimerDispatchSource(result, *(DerivedStorage + 184));
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      v6 = *(DerivedStorage + 24);
    }

    else
    {
      v6 = 0;
    }

    *(DerivedStorage + 24) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    result = *(DerivedStorage + 24);
    if (result)
    {
      CMTimebaseAddTimerDispatchSource(result, *(DerivedStorage + 184));
      CMNotificationCenterGetDefaultLocalCenter();
      return FigNotificationCenterAddWeakListener();
    }
  }

  return result;
}

uint64_t warehouse_timebaseTimeJumped()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 40);
  VTable = CMBaseObjectGetVTable();
  v3 = *(VTable + 16);
  result = VTable + 16;
  v4 = *(v3 + 16);
  if (v4)
  {

    return v4(v0);
  }

  return result;
}

CFTypeRef warehouse_retainAndKeepSampleBuffersBeforeTransitionIDMarkerFilterCallback(void *a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  if (*(a2 + 8))
  {
    if (dword_1EAF17C98 >= 8)
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  CMGetAttachment(a1, *MEMORY[0x1E6960550], 0);
  if (FigCFEqual())
  {
    *(a2 + 8) = 1;
    if (dword_1EAF17C98)
    {
LABEL_6:
      LODWORD(v9.value) = 0;
      LOBYTE(type.value) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

LABEL_7:
    if (CMSampleBufferGetNumSamples(a1) < 1)
    {
      ++*(a2 + 28);
    }

    else
    {
      memset(&time, 0, sizeof(time));
      CMSampleBufferGetOutputPresentationTimeStamp(&time, a1);
      memset(&v10, 0, sizeof(v10));
      CMSampleBufferGetOutputDuration(&v10, a1);
      memset(&v9, 0, sizeof(v9));
      type = time;
      rhs = v10;
      CMTimeAdd(&v9, &type, &rhs);
      v5 = *(a2 + 32);
      if (!v5)
      {
        *(a2 + 36) = time;
      }

      *(a2 + 60) = v9;
      *(a2 + 32) = v5 + 1;
    }

    return 0;
  }

  ++*(a2 + 24);

  return CFRetain(a1);
}

uint64_t figWarehouseRenderPipelineInvalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage;
  v2 = *(DerivedStorage + 40);
  if (v2 && *(DerivedStorage + 48))
  {
    v3 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v3)
    {
      v3(v2, 0, 0);
    }

    *(v1 + 48) = 0;
  }

  if (*(v1 + 104))
  {
    FigSimpleMutexLock();
  }

  if (!*v1)
  {
    *v1 = 1;
    if (*(v1 + 144))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
    }

    if (*(v1 + 16))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
    }

    v4 = *(v1 + 160);
    if (v4)
    {
      CMBufferQueueRemoveTrigger(*(v1 + 16), v4);
      *(v1 + 160) = 0;
    }

    v5 = *(v1 + 168);
    if (v5)
    {
      CMBufferQueueRemoveTrigger(*(v1 + 152), v5);
      *(v1 + 168) = 0;
    }

    v6 = *(v1 + 176);
    if (v6)
    {
      CMBufferQueueRemoveTrigger(*(v1 + 152), v6);
      *(v1 + 176) = 0;
    }

    v7 = *(v1 + 144);
    if (v7)
    {
      FigBaseObject = FigRenderPipelineGetFigBaseObject(v7);
      if (FigBaseObject)
      {
        v9 = FigBaseObject;
        v10 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v10)
        {
          v10(v9);
        }
      }
    }

    v11 = *(v1 + 184);
    if (v11)
    {
      v12 = *(v1 + 24);
      if (v12)
      {
        CMTimebaseRemoveTimerDispatchSource(v12, v11);
        v11 = *(v1 + 184);
      }

      dispatch_source_cancel(v11);
    }

    if (*(v1 + 24))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
    }
  }

  if (*(v1 + 104))
  {
    FigSimpleMutexUnlock();
  }

  return 0;
}

void figWarehouseRenderPipelineFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  figWarehouseRenderPipelineInvalidate();
  v1 = DerivedStorage[5];
  if (v1)
  {
    CFRelease(v1);
    DerivedStorage[5] = 0;
  }

  v2 = DerivedStorage[1];
  if (v2)
  {
    CFRelease(v2);
    DerivedStorage[1] = 0;
  }

  v3 = DerivedStorage[2];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[2] = 0;
  }

  v4 = DerivedStorage[3];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[3] = 0;
  }

  v5 = DerivedStorage[4];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[4] = 0;
  }

  FigSimpleMutexDestroy();
  DerivedStorage[13] = 0;
  v6 = DerivedStorage[14];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[14] = 0;
  }

  v7 = DerivedStorage[15];
  if (v7)
  {
    CFRelease(v7);
    DerivedStorage[15] = 0;
  }

  v8 = DerivedStorage[16];
  if (v8)
  {
    CFRelease(v8);
    DerivedStorage[16] = 0;
  }

  v9 = DerivedStorage[17];
  if (v9)
  {
    CFRelease(v9);
    DerivedStorage[17] = 0;
  }

  v10 = DerivedStorage[18];
  if (v10)
  {
    CFRelease(v10);
    DerivedStorage[18] = 0;
  }

  v11 = DerivedStorage[19];
  if (v11)
  {
    CFRelease(v11);
    DerivedStorage[19] = 0;
  }

  v12 = DerivedStorage[23];
  if (v12)
  {
    dispatch_release(v12);
    DerivedStorage[23] = 0;
  }
}

__CFString *figWarehouseRenderPipelineCopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigWarehouseRenderPipeline %p: ", a1);
  v4 = *(DerivedStorage + 16);
  BufferCount = CMBufferQueueGetBufferCount(v4);
  v6 = *(DerivedStorage + 112);
  if (v6)
  {
    Count = CFArrayGetCount(*(DerivedStorage + 112));
  }

  else
  {
    Count = 0;
  }

  v8 = *(DerivedStorage + 120);
  if (v8)
  {
    v9 = CFArrayGetCount(*(DerivedStorage + 120));
  }

  else
  {
    v9 = 0;
  }

  CFStringAppendFormat(Mutable, 0, @"%s sourceSampleBufferQueue %p (%d sbufs), warehouseSampleBufferArray %p (%d sbufs), catchupSampleBufferArray %p (%d sbufs), downstreamRenderPipeline %@", DerivedStorage + 192, v4, BufferCount, v6, Count, v8, v9, *(DerivedStorage + 144));
  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

uint64_t figWarehouseRenderPipelineCopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFMutableDictionaryRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    figWarehouseRenderPipelineCopyProperty_cold_1(&lhs);
    return LODWORD(lhs.start.value);
  }

  v8 = DerivedStorage;
  if (CFEqual(@"SourceSampleBufferQueue", a2))
  {
    v9 = *(v8 + 2);
    if (!v9)
    {
LABEL_5:
      value_low = 0;
      *a4 = v9;
      return value_low;
    }

LABEL_4:
    v9 = CFRetain(v9);
    goto LABEL_5;
  }

  if (CFEqual(@"SourceSampleBufferConsumer", a2))
  {
    return 4294954446;
  }

  if (CFEqual(@"PrefersConsumptionDrivenReads", a2))
  {
    v9 = *MEMORY[0x1E695E4D0];
    if (!*MEMORY[0x1E695E4D0])
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (CFEqual(@"EndPresentationTimeForQueuedSamples", a2))
  {
    memset(&lhs, 0, 24);
    CMBufferQueueGetEndPresentationTimeStamp(&lhs.start, *(v8 + 2));
    if ((lhs.start.flags & 1) == 0)
    {
      return FigRenderPipelineCopyProperty(*(v8 + 18), a2, a3, a4);
    }

    time = lhs.start;
    v9 = CMTimeCopyAsDictionary(&time, a3);
    goto LABEL_5;
  }

  if (CFEqual(@"WarehouseArraySummaries", a2))
  {
    FigSimpleMutexLock();
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v13 = *(v8 + 14);
      if (v13)
      {
        Count = CFArrayGetCount(v13);
        FigCFDictionarySetInt32();
        v15 = Count < 1;
        v16 = Count - 1;
        if (!v15)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(v8 + 14), 0);
          v18 = CFArrayGetValueAtIndex(*(v8 + 14), v16);
          memset(&time, 0, sizeof(time));
          CMSampleBufferGetOutputPresentationTimeStamp(&time, ValueAtIndex);
          memset(&v28, 0, sizeof(v28));
          CMSampleBufferGetOutputPresentationTimeStamp(&lhs.start, v18);
          CMSampleBufferGetOutputDuration(&rhs, v18);
          CMTimeAdd(&v28, &lhs.start, &rhs);
          rhs = time;
          v25 = v28;
          CMTimeRangeFromTimeToTime(&lhs, &rhs, &v25);
          FigCFDictionarySetCMTimeRange();
        }
      }

      else
      {
        FigCFDictionarySetInt32();
      }

      v19 = *(v8 + 15);
      if (v19)
      {
        v20 = CFArrayGetCount(v19);
        FigCFDictionarySetInt32();
        v15 = v20 < 1;
        v21 = v20 - 1;
        if (!v15)
        {
          v22 = CFArrayGetValueAtIndex(*(v8 + 15), 0);
          v23 = CFArrayGetValueAtIndex(*(v8 + 15), v21);
          memset(&time, 0, sizeof(time));
          CMSampleBufferGetOutputPresentationTimeStamp(&time, v22);
          memset(&v28, 0, sizeof(v28));
          CMSampleBufferGetOutputPresentationTimeStamp(&lhs.start, v23);
          CMSampleBufferGetOutputDuration(&rhs, v23);
          CMTimeAdd(&v28, &lhs.start, &rhs);
          rhs = time;
          v25 = v28;
          CMTimeRangeFromTimeToTime(&lhs, &rhs, &v25);
          FigCFDictionarySetCMTimeRange();
        }
      }

      else
      {
        FigCFDictionarySetInt32();
      }

      value_low = 0;
    }

    else
    {
      figWarehouseRenderPipelineCopyProperty_cold_2(&lhs);
      value_low = LODWORD(lhs.start.value);
    }

    FigSimpleMutexUnlock();
    *a4 = Mutable;
    return value_low;
  }

  if (CFEqual(@"WarehouseTimebase", a2))
  {
    v9 = *(v8 + 3);
    if (!v9)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (CFEqual(@"WarehouseSpeedRampData", a2))
  {
    v9 = *(v8 + 4);
    if (!v9)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (CFEqual(@"LoggingIdentifier", a2))
  {
    v9 = CFStringCreateWithCString(a3, v8 + 192, 0x600u);
    goto LABEL_5;
  }

  v24 = *(v8 + 18);

  return FigRenderPipelineCopyProperty(v24, a2, a3, a4);
}

uint64_t figWarehouseRenderPipelineSetProperty(uint64_t a1, const void *a2, OpaqueCMTimebase *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    figWarehouseRenderPipelineSetProperty_cold_1(&v19);
    return v19;
  }

  v7 = DerivedStorage;
  if (CFEqual(@"Timebase", a2))
  {
    if (!a3 || (v8 = CFGetTypeID(a3), v8 == CMTimebaseGetTypeID()))
    {
      FigSimpleMutexLock();
      warehouse_setTimebase(a1, a3);
      FigSimpleMutexUnlock();
      FigBaseObject = FigRenderPipelineGetFigBaseObject(v7[18]);
      v10 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v10)
      {
        v11 = v10(FigBaseObject, a2, a3);
      }

      else
      {
        v11 = 4294954514;
      }

      v14 = v7[5];
      v15 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v15)
      {
        v15(v14);
      }

      return v11;
    }

    goto LABEL_15;
  }

  if (CFEqual(@"SpeedRampData", a2))
  {
    if (a3)
    {
      v12 = CFGetTypeID(a3);
      if (v12 != CFDataGetTypeID() || !FigSpeedRampDataIsValid(a3))
      {
LABEL_15:

        return FigSignalErrorAtGM();
      }

      v13 = v7[4];
      v7[4] = a3;
      CFRetain(a3);
    }

    else
    {
      v13 = v7[4];
      v7[4] = 0;
    }

    if (v13)
    {
      CFRelease(v13);
    }
  }

  v17 = FigRenderPipelineGetFigBaseObject(v7[18]);
  v18 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v18)
  {
    return 4294954514;
  }

  return v18(v17, a2, a3);
}

uint64_t warehouseUpcomingTransition_retain(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x19A8CC720](a1, 40, 0xE004017C7DA58, 0);
  v4 = *(a2 + 32);
  v5 = *(a2 + 16);
  *v3 = *a2;
  *(v3 + 16) = v5;
  *(v3 + 32) = v4;
  if (*v3)
  {
    CFRetain(*v3);
  }

  v6 = *(v3 + 8);
  if (v6)
  {
    CFRetain(v6);
  }

  v7 = *(v3 + 24);
  if (v7)
  {
    CFRetain(v7);
  }

  v8 = *(v3 + 32);
  if (v8)
  {
    CFRetain(v8);
  }

  return v3;
}

void warehouseUpcomingTransition_release(CFAllocatorRef allocator, CFTypeRef *ptr)
{
  if (*ptr)
  {
    CFRelease(*ptr);
    *ptr = 0;
  }

  v4 = ptr[1];
  if (v4)
  {
    CFRelease(v4);
    ptr[1] = 0;
  }

  v5 = ptr[3];
  if (v5)
  {
    CFRelease(v5);
    ptr[3] = 0;
  }

  v6 = ptr[4];
  if (v6)
  {
    CFRelease(v6);
    ptr[4] = 0;
  }

  CFAllocatorDeallocate(allocator, ptr);
}

uint64_t warehouse_setTrimAttachmentToTrimUntilTime(void *a1, CMTime *a2)
{
  v4 = *MEMORY[0x1E6960560];
  CMRemoveAttachment(a1, *MEMORY[0x1E6960560]);
  memset(&v11, 0, sizeof(v11));
  CMSampleBufferGetOutputPresentationTimeStamp(&v11, a1);
  memset(&v10, 0, sizeof(v10));
  lhs = *a2;
  v8 = v11;
  CMTimeSubtract(&v10, &lhs, &v8);
  AllocatorForMedia = FigGetAllocatorForMedia();
  lhs = v10;
  v6 = CMTimeCopyAsDictionary(&lhs, AllocatorForMedia);
  CMSetAttachment(a1, v4, v6, 1u);
  if (v6)
  {
    CFRelease(v6);
  }

  lhs = *a2;
  return CMSampleBufferSetOutputPresentationTimeStamp(a1, &lhs);
}

void warehouse_setTrimAttachmentToTrimWholeDuration(void *a1)
{
  v2 = *MEMORY[0x1E6960560];
  CMRemoveAttachment(a1, *MEMORY[0x1E6960560]);
  memset(&v6, 0, sizeof(v6));
  CMSampleBufferGetOutputDuration(&v6, a1);
  AllocatorForMedia = FigGetAllocatorForMedia();
  v5 = v6;
  v4 = CMTimeCopyAsDictionary(&v5, AllocatorForMedia);
  CMSetAttachment(a1, v2, v4, 1u);
  if (v4)
  {
    CFRelease(v4);
  }
}

uint64_t FigVirtualDisplaySourceNullCreate(uint64_t a1, void *a2)
{
  FigVirtualDisplaySourceGetClassID();
  v3 = CMDerivedObjectCreate();
  if (v3)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    *(CMBaseObjectGetDerivedStorage() + 8) = 0;
    *a2 = 0;
  }

  return v3;
}

uint64_t srcnull_finalize()
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 8))
  {
    return srcnull_finalize_cold_1();
  }

  return result;
}

uint64_t srcnull_copyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  if (!CFEqual(@"sourceType", a2))
  {
    return 4294954512;
  }

  v5 = CFRetain(@"NullSource");
  result = 0;
  *a4 = v5;
  return result;
}

uint64_t srcnull_start()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigCFDictionaryGetBooleanIfPresent();
  *(DerivedStorage + 8) = 2;
  return 0;
}

void serverVideoCompositor_releaseAssignAndDeepCopySourceTimedSamplesForTrackIDs(const void **a1, CFTypeRef cf)
{
  v3 = CFGetAllocator(cf);
  Mutable = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v5 = Mutable;
    FigCFDictionaryApplyBlock();
    if (a1)
    {
      v6 = *a1;
      *a1 = v5;
      CFRetain(v5);
      if (v6)
      {
        CFRelease(v6);
      }
    }

    CFRelease(v5);
  }

  else
  {
    serverVideoCompositor_releaseAssignAndDeepCopySourceTimedSamplesForTrackIDs_cold_1();
  }
}

uint64_t FigVideoCompositorServerRetainVideoCompositorForID(uint64_t a1, CFTypeRef *a2)
{
  v3 = FigXPCServerRetainNeighborObjectFromID();
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v4 = CFGetTypeID(*a2);
    if (v4 == FigVideoCompositorGetTypeID())
    {
      return 0;
    }

    FigVideoCompositorServerRetainVideoCompositorForID_cold_1(&v7);
    v5 = v7;
  }

  if (a2 && v5 && *a2)
  {
    CFRelease(*a2);
    *a2 = 0;
  }

  return v5;
}

uint64_t FigVideoCompositorServerStart()
{
  if (FigServer_IsMediaparserd())
  {
    fig_log_get_emitter();
    return FigSignalErrorAtGM();
  }

  else
  {
    FigServer_IsMediaplaybackd();
    return FigXPCServerStart();
  }
}

void __serverVideoCompositor_createReducedTimedSamplesForTracks_block_invoke(uint64_t a1, const void *a2, const __CFArray *a3)
{
  value = 0;
  v6 = FigCFDictionaryGetValue();
  v7 = v6;
  if (v6)
  {
    Count = CFArrayGetCount(v6);
    if (a3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    Count = 0;
    if (a3)
    {
LABEL_3:
      v9 = CFArrayGetCount(a3);
      if (Count)
      {
        goto LABEL_4;
      }

LABEL_17:
      CFDictionarySetValue(*(a1 + 48), a2, a3);
      *(*(*(a1 + 32) + 8) + 24) += v9;
      goto LABEL_18;
    }
  }

  v9 = 0;
  if (!Count)
  {
    goto LABEL_17;
  }

LABEL_4:
  Mutable = CFArrayCreateMutable(*(a1 + 56), v9, MEMORY[0x1E695E9C0]);
  v16 = 0;
  if (v9 < 1)
  {
LABEL_13:
    CFDictionarySetValue(*(a1 + 48), a2, Mutable);
    if (!Mutable)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  v11 = 0;
  v12 = 0;
  while (1)
  {
    ValueAtIndex = FigCFArrayGetValueAtIndex();
    if (FigVCPGetTimedSampleWithMatchingPTSFromAscendingPTSTimedSampleArray(v7, ValueAtIndex, v12, Count, &v16))
    {
      if (FigCFEqual())
      {
        break;
      }
    }

    v12 = v16;
    CFArrayAppendValue(Mutable, ValueAtIndex);
    ++*(*(*(a1 + 32) + 8) + 24);
LABEL_12:
    if (v9 == ++v11)
    {
      goto LABEL_13;
    }
  }

  v14 = v16;
  FigVCPTimedSampleGetPTS(ValueAtIndex, v15);
  if (!FigVCPTimedSampleCreateWithNULL(v15, &value))
  {
    v12 = v14 + 1;
    CFArrayAppendValue(Mutable, value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }

    goto LABEL_12;
  }

  __serverVideoCompositor_createReducedTimedSamplesForTracks_block_invoke_cold_1();
  if (Mutable)
  {
LABEL_14:
    CFRelease(Mutable);
  }

LABEL_18:
  if (value)
  {
    CFRelease(value);
  }
}

void __serverVideoCompositor_releaseAssignAndDeepCopySourceTimedSamplesForTrackIDs_block_invoke(uint64_t a1, const void *a2, CFArrayRef theArray)
{
  Copy = CFArrayCreateCopy(*(a1 + 32), theArray);
  CFDictionarySetValue(*(a1 + 40), a2, Copy);
  if (Copy)
  {

    CFRelease(Copy);
  }
}

void DisposeServedVCState(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      v3 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v3)
      {
        v3(v2, 0, 0);
      }

      ReportErrorAndForgetPendingFrames(a1, 0xFFFFCF23);
    }

    v4 = *(a1 + 80);
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(a1 + 88);
    if (v5)
    {
      CFRelease(v5);
    }

    FigSimpleMutexDestroy();
    if (*a1)
    {
      CFRelease(*a1);
      *a1 = 0;
    }

    v6 = *(a1 + 16);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 16) = 0;
    }

    v7 = *(a1 + 72);
    if (v7)
    {
      os_release(v7);
    }

    free(a1);
  }
}

uint64_t VCServerCopyPerformanceDictionary(uint64_t a1, CFDictionaryRef *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    keys = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    *values = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = *MEMORY[0x1E695E480];
    if (*(a1 + 64) <= 0)
    {
      *a2 = CFDictionaryCreate(*MEMORY[0x1E695E480], &keys, values, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    else
    {
      valuePtr = (*(a1 + 40) / 1000000.0);
      *&keys = @"MinProcessingTime";
      values[0] = CFNumberCreate(v4, kCFNumberDoubleType, &valuePtr);
      valuePtr = (*(a1 + 48) / 1000000.0);
      *(&keys + 1) = @"MaxProcessingTime";
      values[1] = CFNumberCreate(v4, kCFNumberDoubleType, &valuePtr);
      valuePtr = (*(a1 + 56) / (*(a1 + 64) * 1000000.0));
      *&v21 = @"AverageProcessingTime";
      *&v11 = CFNumberCreate(v4, kCFNumberDoubleType, &valuePtr);
      v5 = CFDictionaryCreate(v4, &keys, values, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v6 = 0;
      *a2 = v5;
      do
      {
        v7 = values[v6];
        if (v7)
        {
          CFRelease(v7);
        }

        ++v6;
      }

      while (v6 != 3);
    }

    return 0;
  }

  else
  {
    VCServerCopyPerformanceDictionary_cold_1(&keys);
    return keys;
  }
}

uint64_t VCServerRenderFrameFromWindowWithSourceSampleSeed(uint64_t a1, const __CFDictionary *a2, const __CFDictionary *a3, uint64_t a4, __int128 *a5, const void *a6, int a7)
{
  if (shouldUseIncrementalUpdateForRenderFrameForWindow_once != -1)
  {
    VCServerRenderFrameFromWindowWithSourceSampleSeed_cold_1();
  }

  v14 = *(a1 + 24);
  v18 = *a5;
  v19 = *(a5 + 2);
  if (shouldUseIncrementalUpdateForRenderFrameForWindow_useIncrementalUpdate)
  {
    RenderFrameFromWindowMessage = FigVideoCompositionServerCreateRenderFrameFromWindowMessage(v14, a2, a3, a4, &v18, a6);
  }

  else
  {
    RenderFrameFromWindowMessage = FigVideoCompositionServerCreateIncrementalRenderFrameFromWindowMessage(v14, a2, (a1 + 80), a3, (a1 + 88), a4, &v18, a6, a7, (a1 + 96));
  }

  v16 = RenderFrameFromWindowMessage;
  AddNewPendingFrame(a1, a6);
  xpc_connection_send_message(*(a1 + 32), v16);
  FigXPCRelease();
  return 0;
}

uint64_t AddNewPendingFrame(CFMutableSetRef *a1, const void *a2)
{
  FigSimpleMutexLock();
  CFSetAddValue(*a1, a2);

  return FigSimpleMutexUnlock();
}

uint64_t __shouldUseIncrementalUpdateForRenderFrameForWindow_block_invoke()
{
  result = CFPreferencesCopyAppValue(@"RenderFrameForWindow_incremental_sample_update", @"com.apple.coremedia");
  if (result)
  {
    result = FigCFEqual();
    if (!result)
    {
      shouldUseIncrementalUpdateForRenderFrameForWindow_useIncrementalUpdate = 1;
    }
  }

  return result;
}

void ReportErrorAndForgetPendingFrames(const __CFSet **a1, unsigned int a2)
{
  v5[0] = a1;
  v5[1] = a2;
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  FigSimpleMutexLock();
  v4 = *a1;
  *a1 = Mutable;
  FigSimpleMutexUnlock();
  CFSetApplyFunction(v4, PendingFrameApplierFunction, v5);
  CFRelease(v4);
}

uint64_t PendingFrameApplierFunction(uint64_t a1, unsigned int *a2)
{
  v3 = *(*a2 + 16);
  v4 = a2[2];
  VTable = CMBaseObjectGetVTable();
  v7 = *(VTable + 16);
  result = VTable + 16;
  v8 = *(v7 + 40);
  if (v8)
  {

    return v8(v3, a1, v4, 0);
  }

  return result;
}

uint64_t LookupAndRetainVCByObjectIDForConnection()
{
  v0 = FigXPCServerLookupAndRetainAssociatedObject();
  if (v0)
  {
    return v0;
  }

  LookupAndRetainVCByObjectIDForConnection_cold_1(&v3);
  return v3;
}

uint64_t OUTLINED_FUNCTION_9_88()
{

  return FigRemote_CreateSerializedAtomDataForSampleBuffer();
}

xpc_object_t OUTLINED_FUNCTION_10_82()
{

  return xpc_array_create(0, 0);
}

uint64_t OUTLINED_FUNCTION_13_63()
{

  return LookupAndRetainVCByObjectIDForConnection();
}

uint64_t FigUpstreamMonitor_CreateOrRetainSharedMonitor(unsigned __int8 a1)
{
  v4 = 0;
  if (_MergedGlobals_149 != -1)
  {
    FigUpstreamMonitor_CreateOrRetainSharedMonitor_cold_1();
  }

  v3[0] = qword_1ED4CBCF8;
  v3[1] = &v4;
  v3[2] = a1;
  dispatch_sync_f(qword_1ED4CBCF8, v3, createOrRetainSharedMonitor);
  return v4;
}

void createOrRetainSharedMonitor(uint64_t a1)
{
  context = dispatch_get_context(*a1);
  v3 = *(a1 + 8);
  v4 = *context;
  *v3 = *context;
  if (v4)
  {
    goto LABEL_11;
  }

  DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
  v6 = malloc_type_calloc(1uLL, 0x38uLL, 0xA004049E9B67CuLL);
  if (v6)
  {
    if (FigUpstreamMonitor_CreateGuts_functionsOnce != -1)
    {
      createOrRetainSharedMonitor_cold_1();
    }

    v7 = sUpstreamMonitorUsingCoreAUC == 1 ? &FigUpstreamMonitor_CreateGuts_constRealFunctions : &FigUpstreamMonitor_CreateGuts_constStubFunctions;
    v8 = v7[1];
    *(v6 + 8) = *v7;
    *(v6 + 24) = v8;
    *(v6 + 5) = *(v7 + 4);
    if (!CMNotificationCenterRegisterForBarrierSupport())
    {
      *(v6 + 6) = DefaultLocalCenter;
      if (!(*(v6 + 1))(FigUpstreamMonitorProtectionStatusChangedCallback, v6, 0, v6))
      {
        CMNotificationCenterAddListener();
        *context = v6;
        *v3 = v6;
LABEL_11:
        ++context[2];
        return;
      }
    }
  }

  FigUpstreamMonitor_DisposeGuts(v6);
  *context = 0;
  *v3 = 0;
}

void FigUpstreamMonitor_ReleaseSharedMonitor(uint64_t a1)
{
  if (a1)
  {
    if (_MergedGlobals_149 != -1)
    {
      FigUpstreamMonitor_CreateOrRetainSharedMonitor_cold_1();
    }

    v2[0] = qword_1ED4CBCF8;
    v2[1] = a1;
    dispatch_sync_f(qword_1ED4CBCF8, v2, releaseSharedMonitor);
  }
}

void releaseSharedMonitor(uint64_t a1)
{
  context = dispatch_get_context(*a1);
  v3 = context[2] - 1;
  context[2] = v3;
  if (!v3)
  {
    v4 = context;
    FigUpstreamMonitor_DisposeGuts(*(a1 + 8));
    *v4 = 0;
  }
}

void getUpstreamMonitorQueueCreateQueue(NSObject **a1)
{
  v2 = dispatch_queue_create(0, 0);
  *a1 = v2;

  dispatch_set_context(v2, &getUpstreamMonitorQueueCreateQueue_queue_context);
}

uint64_t FigHDCPMonitorGetSecureStatusTypeAndIsDeterminedForDisplays(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, _BYTE *a5, int *a6)
{
  *a3 = 2;
  *a5 = 1;
  *a4 = 0;
  v6 = FigHDCPMonitorGetSecureStatusTypeAndIsDeterminedForDisplays_statusSeed++;
  *a6 = v6;
  return 0;
}

void FigUpstreamMonitorProtectionStatusChangedCallback(uint64_t a1)
{
  v2 = FigUpstreamMonitor_CreateOrRetainSharedMonitor(0);
  if (v2 == a1)
  {
    CMNotificationCenterPostNotification();
  }

  FigUpstreamMonitor_ReleaseSharedMonitor(v2);
}

uint64_t FigUpstreamMonitorExternalProtectionStateChangedCallback(uint64_t a1, uint64_t a2)
{
  v3 = FigUpstreamMonitor_CreateOrRetainSharedMonitor(0);
  if (v3 == a2)
  {
    CMNotificationCenterPostNotification();
  }

  return FigUpstreamMonitor_ReleaseSharedMonitor(v3);
}

void FigUpstreamMonitor_DisposeGuts(CFTypeRef *a1)
{
  if (a1)
  {
    if (a1[6])
    {
      CMNotificationCenterRemoveListener();
      CMNotificationCenterBarrier();
      CMNotificationCenterUnregisterForBarrierSupport();
    }

    if (*a1)
    {
      CFRelease(*a1);
    }

    free(a1);
  }
}

uint64_t FigVTTStringifyFigGeometryDimensionAndAppend(__CFString *a1, uint64_t a2, int a3)
{
  if (a1)
  {
    figTTMLStringifyFigGeometryDimensionAndAppend(a1, a2, a3);
    return 0;
  }

  else
  {
    FigVTTStringifyFigGeometryDimensionAndAppend_cold_1(&v4);
    return v4;
  }
}

uint64_t FigVTTStringifyFigGeometryPointAndAppend(__CFString *a1, uint64_t *a2)
{
  if (a1)
  {
    figTTMLStringifyFigGeometryDimensionAndAppend(a1, *a2, a2[1]);
    CFStringAppend(a1, @",");
    figTTMLStringifyFigGeometryDimensionAndAppend(a1, a2[2], a2[3]);
    return 0;
  }

  else
  {
    FigVTTStringifyFigGeometryPointAndAppend_cold_1(&v5);
    return v5;
  }
}

CFStringRef FigVTTCopyCMTimeAsTimeStamp(CMTime *a1)
{
  if ((a1->flags & 0x1D) == 1)
  {
    time = *a1;
    CMTimeConvertScale(&v6, &time, 1000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    v1 = v6.value - 3600000 * (v6.value / 3600000);
    v2 = v1 / 60000;
    v3 = v1 - 60000 * (v1 / 60000);
    return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%d:%02d:%02d.%03d", v6.value / 3600000, v2, v3 / 1000, v3 + 4294966296 * (v3 / 1000));
  }

  else
  {
    FigVTTCopyCMTimeAsTimeStamp_cold_1(&v6);
    return v6.value;
  }
}

CFStringRef FigVTTCopyRGBAColorAsColorSyntax(float32x4_t a1, float32_t a2, float a3, float a4)
{
  v4 = 0;
  LODWORD(v5) = 0;
  a1.f32[1] = a2;
  a1.i64[1] = __PAIR64__(LODWORD(a4), LODWORD(a3));
  v11 = *MEMORY[0x1E69E9840];
  v10 = vcvtq_s32_f32(vmulq_f32(a1, vdupq_n_s32(0x437F0000u)));
  do
  {
    v6 = v10.i32[v4] & ~(v10.i32[v4] >> 31);
    if (v6 >= 255)
    {
      v6 = 255;
    }

    v5 = (v6 | (v5 << 8));
    v10.i32[v4++] = v6;
  }

  while (v4 != 4);
  MEMORY[0x19A8D3660](&initRGBANamedCSSColorMaps, figVTTInitRGBANamedCSSColorMaps);
  Value = CFDictionaryGetValue(sRGBAToNamedCSSColorMap, v5);
  if (!Value)
  {
    return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"rgba(%d,%d,%d,%0.2f)", v10.u32[0], v10.u32[1], v10.u32[2], v10.i32[3] / *"");
  }

  v8 = Value;
  CFRetain(Value);
  return v8;
}

CFStringRef FigVTTCGColorCopyAsVTTColorSyntax(CGColor *a1)
{
  ColorSpace = CGColorGetColorSpace(a1);
  if (CGColorSpaceGetModel(ColorSpace) != kCGColorSpaceModelRGB)
  {
    FigVTTCGColorCopyAsVTTColorSyntax_cold_1();
    return 0;
  }

  if (CGColorGetNumberOfComponents(a1) != 4)
  {
    FigVTTCGColorCopyAsVTTColorSyntax_cold_2();
    return 0;
  }

  Components = CGColorGetComponents(a1);
  *v4.i64 = *Components;
  v4.f32[0] = *Components;
  v5 = Components[1];
  v6 = Components[2];
  v7 = Components[3];

  return FigVTTCopyRGBAColorAsColorSyntax(v4, v5, v6, v7);
}

uint64_t FigVTTCGColorCopyVTTColorAttributeValueAsCSSColorSyntax(const __CFString *a1, void *a2)
{
  if (a1 && (v4 = CFGetTypeID(a1), v4 == CFStringGetTypeID()))
  {
    if (CFStringFind(a1, @"rgba("), 1uLL.location == -1 && (MEMORY[0x19A8D3660](&initRGBANamedCSSColorMaps, figVTTInitRGBANamedCSSColorMaps), !FigCFDictionaryGetInt32IfPresent()))
    {
      v5 = 0;
    }

    else
    {
      v5 = CFRetain(a1);
    }

    *a2 = v5;
  }

  else
  {
    FigVTTCGColorCopyVTTColorAttributeValueAsCSSColorSyntax_cold_1();
  }

  return 0;
}

uint64_t FigVTTDocumentWriterMapPropertyToAttribute_BackgroundColor(CGColor *a1, __CFDictionary *a2)
{
  if (a1 && (v4 = CFGetTypeID(a1), v4 == CGColorGetTypeID()))
  {
    v5 = FigVTTCGColorCopyAsVTTColorSyntax(a1);
    if (v5)
    {
      v6 = v5;
      CFDictionarySetValue(a2, @"https://www.w3.org/Style/CSS/ background-color", v5);
      CFRelease(v6);
      return 0;
    }

    else
    {
      FigVTTDocumentWriterMapPropertyToAttribute_BackgroundColor_cold_1(&v8);
      return v8;
    }
  }

  else
  {
    FigVTTDocumentWriterMapPropertyToAttribute_BackgroundColor_cold_2(&v9);
    return v9;
  }
}

uint64_t FigVTTDocumentWriterMapPropertyToAttribute_WritingMode(const void *a1, __CFDictionary *a2)
{
  if (!a1 || (v3 = CFGetTypeID(a1), v3 != CFStringGetTypeID()))
  {
    FigVTTDocumentWriterMapPropertyToAttribute_WritingMode_cold_1(&v6);
    return v6;
  }

  if (FigCFEqual() || FigCFEqual())
  {
    v4 = kFigVTT_AttributeValue_css_writingMode_horizontalTopToBottom;
LABEL_6:
    CFDictionarySetValue(a2, @"https://www.w3.org/Style/CSS/ writing-mode", *v4);
    return 0;
  }

  if (FigCFEqual())
  {
    v4 = kFigVTT_AttributeValue_css_writingMode_verticalRightToLeft;
    goto LABEL_6;
  }

  if (FigCFEqual())
  {
    v4 = kFigVTT_AttributeValue_css_writingMode_verticalLeftToRight;
    goto LABEL_6;
  }

  return FigSignalErrorAtGM();
}

uint64_t FigVTTDocumentWriterMapPropertyToAttribute_TextColor(CGColor *a1, __CFDictionary *a2)
{
  if (a1 && (v4 = CFGetTypeID(a1), v4 == CGColorGetTypeID()))
  {
    v5 = FigVTTCGColorCopyAsVTTColorSyntax(a1);
    if (v5)
    {
      v6 = v5;
      CFDictionarySetValue(a2, @"https://www.w3.org/Style/CSS/ color", v5);
      CFRelease(v6);
      return 0;
    }

    else
    {
      FigVTTDocumentWriterMapPropertyToAttribute_TextColor_cold_1(&v8);
      return v8;
    }
  }

  else
  {
    FigVTTDocumentWriterMapPropertyToAttribute_TextColor_cold_2(&v9);
    return v9;
  }
}

uint64_t FigVTTDocumentWriterMapPropertyToAttribute_FontWeight(const void *a1, __CFDictionary *a2)
{
  if (!a1 || (v4 = CFGetTypeID(a1), v4 != CFStringGetTypeID()))
  {
    FigVTTDocumentWriterMapPropertyToAttribute_FontWeight_cold_1(&v7);
    return v7;
  }

  if (CFEqual(a1, *MEMORY[0x1E69614B0]))
  {
    v5 = kFigVTT_AttributeValue_css_fontWeight_normal;
LABEL_7:
    CFDictionarySetValue(a2, @"https://www.w3.org/Style/CSS/ font-weight", *v5);
    return 0;
  }

  if (CFEqual(a1, *MEMORY[0x1E69614A8]))
  {
    v5 = kFigVTT_AttributeValue_css_fontWeight_bold;
    goto LABEL_7;
  }

  return FigSignalErrorAtGM();
}

uint64_t FigVTTDocumentWriterMapPropertyToAttribute_FontStyle(const void *a1, __CFDictionary *a2)
{
  if (!a1 || (v4 = CFGetTypeID(a1), v4 != CFStringGetTypeID()))
  {
    FigVTTDocumentWriterMapPropertyToAttribute_FontStyle_cold_1(&v7);
    return v7;
  }

  if (CFEqual(a1, *MEMORY[0x1E6961490]))
  {
    v5 = kFigVTT_AttributeValue_css_fontStyle_normal;
LABEL_9:
    CFDictionarySetValue(a2, @"https://www.w3.org/Style/CSS/ font-style", *v5);
    return 0;
  }

  if (CFEqual(a1, *MEMORY[0x1E6961488]))
  {
    v5 = kFigVTT_AttributeValue_css_fontStyle_italic;
    goto LABEL_9;
  }

  if (CFEqual(a1, *MEMORY[0x1E6961498]))
  {
    v5 = kFigVTT_AttributeValue_css_fontStyle_oblique;
    goto LABEL_9;
  }

  return FigSignalErrorAtGM();
}

uint64_t FigVTTDocumentWriterMapPropertyToAttribute_Decoration(const __CFNumber *a1, __CFDictionary *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  if (a1 && (v4 = CFGetTypeID(a1), v4 == CFNumberGetTypeID()))
  {
    CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
    v5 = valuePtr;
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    if (Mutable)
    {
      v7 = Mutable;
      v8 = 0;
      v9 = 1;
      v12[0] = 1;
      v13 = @"underline";
      v14 = 2;
      v15 = @"line-through";
      v16 = 4;
      v17 = @"overline";
      do
      {
        if ((v12[v8] & v5) != 0)
        {
          if (!v9)
          {
            CFStringAppend(v7, @" ");
          }

          CFStringAppend(v7, *&v12[v8 + 2]);
          v9 = 0;
        }

        v8 += 4;
      }

      while (v8 != 12);
      if (!CFStringGetLength(v7))
      {
        CFStringAppend(v7, @"none");
      }

      CFDictionarySetValue(a2, @"https://www.w3.org/Style/CSS/ text-decoration", v7);
      CFRelease(v7);
    }

    else
    {
      FigVTTDocumentWriterMapPropertyToAttribute_Decoration_cold_1(v12, a2);
    }

    return 0;
  }

  else
  {
    FigVTTDocumentWriterMapPropertyToAttribute_Decoration_cold_2(v12);
    return v12[0];
  }
}

uint64_t FigVTTDocumentWriterMapPropertyToAttribute_TextAlign(const void *a1, __CFDictionary *a2)
{
  if (!a1 || (v3 = CFGetTypeID(a1), v3 != CFStringGetTypeID()))
  {
    FigVTTDocumentWriterMapPropertyToAttribute_TextAlign_cold_1(&v6);
    return v6;
  }

  if (FigCFEqual())
  {
    v4 = kFigVTT_AttributeValue_css_textAlign_start;
LABEL_13:
    CFDictionarySetValue(a2, @"https://www.w3.org/Style/CSS/ text-align", *v4);
    return 0;
  }

  if (FigCFEqual())
  {
    v4 = kFigVTT_AttributeValue_css_textAlign_end;
    goto LABEL_13;
  }

  if (FigCFEqual())
  {
    v4 = kFigVTT_AttributeValue_css_textAlign_center;
    goto LABEL_13;
  }

  if (FigCFEqual())
  {
    v4 = kFigVTT_AttributeValue_css_textAlign_left;
    goto LABEL_13;
  }

  if (FigCFEqual())
  {
    v4 = kFigVTT_AttributeValue_css_textAlign_right;
    goto LABEL_13;
  }

  return FigSignalErrorAtGM();
}

uint64_t FigVTTDocumentWriterMapPropertyToAttribute_FontFamily(const void *a1, __CFDictionary *a2)
{
  if (a1 && (v3 = CFGetTypeID(a1), v3 == FigCaptionFontFamilyNameListGetTypeID()))
  {
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    if (Mutable)
    {
      Count = FigCaptionFontFamilyNameListGetCount();
      if (!Count)
      {
LABEL_11:
        CFDictionarySetValue(a2, @"https://www.w3.org/Style/CSS/ font-family", Mutable);
        v10 = 0;
        goto LABEL_12;
      }

      v6 = Count;
      v7 = 0;
      while (1)
      {
        v8 = FigCaptionFontFamilyNameListCopyFamilyKindAndNameAtIndex();
        if (v8)
        {
          v10 = v8;
          goto LABEL_12;
        }

        if (v7)
        {
          CFStringAppend(Mutable, @",");
        }

        MEMORY[0x19A8D3660](&figVTTDocumentWriter_getVTTFontFamilyName_once, initMapFromFigCaptionFontFamilyToVTTFontFamily);
        Value = CFDictionaryGetValue(sMapFromFigCaptionFontFamilyToVTTFontFamily, 0);
        if (!Value)
        {
          break;
        }

        CFStringAppend(Mutable, Value);
        if (v6 == ++v7)
        {
          goto LABEL_11;
        }
      }

      FigVTTDocumentWriterMapPropertyToAttribute_FontFamily_cold_1(&v12);
    }

    else
    {
      FigVTTDocumentWriterMapPropertyToAttribute_FontFamily_cold_2(&v12);
    }
  }

  else
  {
    FigVTTDocumentWriterMapPropertyToAttribute_FontFamily_cold_3(&v12);
    Mutable = 0;
  }

  v10 = v12;
LABEL_12:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v10;
}

uint64_t FigVTTDocumentWriterMapPropertyToAttribute_FontSize(const void *a1, __CFDictionary *a2)
{
  if (a1 && (v3 = CFGetTypeID(a1), v3 == CFDictionaryGetTypeID()))
  {
    FigGeometrySizeMakeFromDictionary();
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    v5 = FigGeometryDimensionEqualToDimension();
    figTTMLStringifyFigGeometryDimensionAndAppend(Mutable, 0, 0);
    if (!v5)
    {
      CFStringAppend(Mutable, @" ");
      figTTMLStringifyFigGeometryDimensionAndAppend(Mutable, 0, 0);
    }

    CFDictionarySetValue(a2, @"https://www.w3.org/Style/CSS/ font-size", Mutable);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    return 0;
  }

  else
  {
    FigVTTDocumentWriterMapPropertyToAttribute_FontSize_cold_1(&v7);
    return v7;
  }
}

uint64_t FigVTTDocumentWriterMapAttributeToCSS_BackgroundColor(const __CFString *a1, __CFDictionary *a2)
{
  v7 = 0;
  if (a1 && (v4 = CFGetTypeID(a1), v4 == CFStringGetTypeID()))
  {
    FigVTTCGColorCopyVTTColorAttributeValueAsCSSColorSyntax(a1, &v7);
    v5 = v7;
    if (v7)
    {
      CFDictionarySetValue(a2, @"name", @"background-color");
      CFDictionarySetValue(a2, @"value", v5);
      CFRelease(v5);
    }

    return 0;
  }

  else
  {
    FigVTTDocumentWriterMapAttributeToCSS_BackgroundColor_cold_1(&v8);
    return v8;
  }
}

uint64_t FigVTTDocumentWriterMapAttributeToCSS_WritingMode(const void *a1, __CFDictionary *a2)
{
  if (!a1 || (v4 = CFGetTypeID(a1), v4 != CFStringGetTypeID()))
  {
    FigVTTDocumentWriterMapAttributeToCSS_WritingMode_cold_1(&v8);
    return v8;
  }

  if (CFEqual(a1, @"horizontal-tb"))
  {
    v5 = kFigVTT_PropertyValue_css_writingMode_horizontalTopToBottom;
  }

  else if (CFEqual(a1, @"vertical-lr"))
  {
    v5 = kFigVTT_PropertyValue_css_writingMode_verticalLeftToRight;
  }

  else
  {
    result = CFEqual(a1, @"vertical-rl");
    if (!result)
    {
      return result;
    }

    v5 = kFigVTT_PropertyValue_css_writingMode_verticalRightToLeft;
  }

  v7 = *v5;
  if (*v5)
  {
    CFDictionarySetValue(a2, @"name", @"writing-mode");
    CFDictionarySetValue(a2, @"value", v7);
  }

  return 0;
}

uint64_t FigVTTDocumentWriterMapAttributeToCSS_TextColor(const __CFString *a1, __CFDictionary *a2)
{
  v7 = 0;
  if (a1 && (v4 = CFGetTypeID(a1), v4 == CFStringGetTypeID()))
  {
    FigVTTCGColorCopyVTTColorAttributeValueAsCSSColorSyntax(a1, &v7);
    v5 = v7;
    if (v7)
    {
      CFDictionarySetValue(a2, @"name", @"color");
      CFDictionarySetValue(a2, @"value", v5);
      CFRelease(v5);
    }

    return 0;
  }

  else
  {
    FigVTTDocumentWriterMapAttributeToCSS_TextColor_cold_1(&v8);
    return v8;
  }
}

uint64_t FigVTTDocumentWriterMapAttributeToCSS_FontWeight(const void *a1, __CFDictionary *a2)
{
  if (!a1 || (v4 = CFGetTypeID(a1), v4 != CFStringGetTypeID()))
  {
    FigVTTDocumentWriterMapAttributeToCSS_FontWeight_cold_1(&v8);
    return v8;
  }

  if (CFEqual(a1, @"normal"))
  {
    v5 = kFigVTT_PropertyValue_css_fontWeight_normal;
  }

  else
  {
    result = CFEqual(a1, @"bold");
    if (!result)
    {
      return result;
    }

    v5 = kFigVTT_PropertyValue_css_fontWeight_bold;
  }

  v7 = *v5;
  if (*v5)
  {
    CFDictionarySetValue(a2, @"name", @"font-weight");
    CFDictionarySetValue(a2, @"value", v7);
  }

  return 0;
}

uint64_t FigVTTDocumentWriterMapAttributeToCSS_FontStyle(const void *a1, __CFDictionary *a2)
{
  if (!a1 || (v4 = CFGetTypeID(a1), v4 != CFStringGetTypeID()))
  {
    FigVTTDocumentWriterMapAttributeToCSS_FontStyle_cold_1(&v8);
    return v8;
  }

  if (CFEqual(a1, @"normal"))
  {
    v5 = kFigVTT_PropertyValue_css_fontStyle_normal;
  }

  else if (CFEqual(a1, @"italic"))
  {
    v5 = kFigVTT_PropertyValue_css_fontStyle_italic;
  }

  else
  {
    result = CFEqual(a1, @"oblique");
    if (!result)
    {
      return result;
    }

    v5 = kFigVTT_PropertyValue_css_fontStyle_oblique;
  }

  v7 = *v5;
  if (*v5)
  {
    CFDictionarySetValue(a2, @"name", @"font-style");
    CFDictionarySetValue(a2, @"value", v7);
  }

  return 0;
}

uint64_t FigVTTDocumentWriterMapAttributeToCSS_Decoration(const void *a1, __CFDictionary *a2)
{
  if (!a1 || (v4 = CFGetTypeID(a1), v4 != CFStringGetTypeID()))
  {
    FigVTTDocumentWriterMapAttributeToCSS_Decoration_cold_1(&v8);
    return v8;
  }

  if (CFEqual(a1, @"underline"))
  {
    v5 = kFigVTT_PropertyValue_css_textDecoration_underline;
  }

  else if (CFEqual(a1, @"none"))
  {
    v5 = kFigVTT_PropertyValue_css_textDecoration_none;
  }

  else if (CFEqual(a1, @"overline"))
  {
    v5 = kFigVTT_PropertyValue_css_textDecoration_overline;
  }

  else
  {
    result = CFEqual(a1, @"line-through");
    if (!result)
    {
      return result;
    }

    v5 = kFigVTT_PropertyValue_css_textDecoration_lineThrough;
  }

  v7 = *v5;
  if (*v5)
  {
    CFDictionarySetValue(a2, @"name", @"text-decoration");
    CFDictionarySetValue(a2, @"value", v7);
  }

  return 0;
}

uint64_t FigVTTDocumentWriterMapAttributeToCSS_TextAlign(const void *a1, __CFDictionary *a2)
{
  if (!a1 || (v4 = CFGetTypeID(a1), v4 != CFStringGetTypeID()))
  {
    FigVTTDocumentWriterMapAttributeToCSS_TextAlign_cold_1(&v8);
    return v8;
  }

  if (CFEqual(a1, @"left"))
  {
    v5 = kFigVTT_PropertyValue_css_textAlign_left;
  }

  else if (CFEqual(a1, @"right"))
  {
    v5 = kFigVTT_PropertyValue_css_textAlign_right;
  }

  else if (CFEqual(a1, @"center"))
  {
    v5 = kFigVTT_PropertyValue_css_textAlign_center;
  }

  else if (CFEqual(a1, @"start"))
  {
    v5 = kFigVTT_PropertyValue_css_textAlign_start;
  }

  else
  {
    result = CFEqual(a1, @"end");
    if (!result)
    {
      return result;
    }

    v5 = kFigVTT_PropertyValue_css_textAlign_end;
  }

  v7 = *v5;
  if (*v5)
  {
    CFDictionarySetValue(a2, @"name", @"text-align");
    CFDictionarySetValue(a2, @"value", v7);
  }

  return 0;
}

uint64_t FigVTTDocumentWriterMapAttributeToCSS_FontFamily(const void *a1, __CFDictionary *a2)
{
  if (a1 && (v4 = CFGetTypeID(a1), v4 == CFStringGetTypeID()))
  {
    CFDictionarySetValue(a2, @"name", @"font-family");
    CFDictionarySetValue(a2, @"value", a1);
    return 0;
  }

  else
  {
    FigVTTDocumentWriterMapAttributeToCSS_FontFamily_cold_1(&v6);
    return v6;
  }
}

uint64_t FigVTTDocumentWriterMapAttributeToCSS_FontSize(const void *a1, __CFDictionary *a2)
{
  if (a1 && (v4 = CFGetTypeID(a1), v4 == CFStringGetTypeID()))
  {
    CFDictionarySetValue(a2, @"name", @"font-size");
    CFDictionarySetValue(a2, @"value", a1);
    return 0;
  }

  else
  {
    FigVTTDocumentWriterMapAttributeToCSS_FontSize_cold_1(&v6);
    return v6;
  }
}

uint64_t figVTTInitRGBANamedCSSColorMaps()
{
  v0 = *MEMORY[0x1E695E480];
  v1 = MEMORY[0x1E695E9E8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
  v3 = CFDictionaryCreateMutable(v0, 0, MEMORY[0x1E695E9D8], v1);
  CFDictionarySetValue(Mutable, 0xF0F8FFFFLL, @"aliceblue");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFAEBD7FFLL, @"antiquewhite");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFFFFFF, @"aqua");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x7FFFD4FF, @"aquamarine");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xF0FFFFFFLL, @"azure");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xF5F5DCFFLL, @"beige");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFFE4C4FFLL, @"bisque");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFF, @"black");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFFEBCDFFLL, @"blanchedalmond");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFFFF, @"blue");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x8A2BE2FFLL, @"blueviolet");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xA52A2AFFLL, @"brown");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xDEB887FFLL, @"burlywood");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x5F9EA0FF, @"cadetblue");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x7FFF00FF, @"chartreuse");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xD2691EFFLL, @"chocolate");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFF7F50FFLL, @"coral");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x6495EDFF, @"cornflowerblue");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFFF8DCFFLL, @"cornsilk");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xDC143CFFLL, @"crimson");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFFFFFF, @"cyan");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x8BFF, @"darkblue");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x8B8BFF, @"darkcyan");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xB8860BFFLL, @"darkgoldenrod");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xA9A9A9FFLL, @"darkgray");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xA9A9A9FFLL, @"darkgrey");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x6400FF, @"darkgreen");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xBDB76BFFLL, @"darkkhaki");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x8B008BFFLL, @"darkmagenta");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x556B2FFF, @"darkolivegreen");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFF8C00FFLL, @"darkorange");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x9932CCFFLL, @"darkorchid");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x8B0000FFLL, @"darkred");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xE9967AFFLL, @"darksalmon");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x8FBC8FFFLL, @"darkseagreen");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x483D8BFF, @"darkslateblue");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x2F4F4FFF, @"darkslategray");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x2F4F4FFF, @"darkslategrey");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xCED1FF, @"darkturquoise");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x9400D3FFLL, @"darkviolet");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFF1493FFLL, @"deeppink");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xBFFFFF, @"deepskyblue");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x696969FF, @"dimgray");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x696969FF, @"dimgrey");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x1E90FFFF, @"dodgerblue");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xB22222FFLL, @"firebrick");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFFFAF0FFLL, @"floralwhite");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x228B22FF, @"forestgreen");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFF00FFFFLL, @"fuchsia");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xDCDCDCFFLL, @"gainsboro");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xF8F8FFFFLL, @"ghostwhite");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFFD700FFLL, @"gold");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xDAA520FFLL, @"goldenrod");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x808080FFLL, @"gray");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x808080FFLL, @"grey");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x8000FF, @"green");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xADFF2FFFLL, @"greenyellow");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xF0FFF0FFLL, @"honeydew");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFF69B4FFLL, @"hotpink");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xCD5C5CFFLL, @"indianred");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x4B0082FF, @"indigo");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFFFFF0FFLL, @"ivory");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xF0E68CFFLL, @"khaki");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xE6E6FAFFLL, @"lavender");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFFF0F5FFLL, @"lavenderblush");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x7CFC00FF, @"lawngreen");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFFFACDFFLL, @"lemonchiffon");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xADD8E6FFLL, @"lightblue");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xF08080FFLL, @"lightcoral");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xE0FFFFFFLL, @"lightcyan");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFAFAD2FFLL, @"lightgoldenrodyellow");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xD3D3D3FFLL, @"lightgray");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xD3D3D3FFLL, @"lightgrey");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x90EE90FFLL, @"lightgreen");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFFB6C1FFLL, @"lightpink");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFFA07AFFLL, @"lightsalmon");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x20B2AAFF, @"lightseagreen");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x87CEFAFFLL, @"lightskyblue");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x778899FF, @"lightslategray");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x778899FF, @"lightslategrey");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xB0C4DEFFLL, @"lightsteelblue");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFFFFE0FFLL, @"lightyellow");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFF00FF, @"lime");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x32CD32FF, @"limegreen");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFAF0E6FFLL, @"linen");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFF00FFFFLL, @"magenta");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x800000FFLL, @"maroon");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x66CDAAFF, @"mediumaquamarine");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xCDFF, @"mediumblue");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xBA55D3FFLL, @"mediumorchid");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x9370DBFFLL, @"mediumpurple");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x3CB371FF, @"mediumseagreen");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x7B68EEFF, @"mediumslateblue");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFA9AFF, @"mediumspringgreen");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x48D1CCFF, @"mediumturquoise");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xC71585FFLL, @"mediumvioletred");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x191970FF, @"midnightblue");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xF5FFFAFFLL, @"mintcream");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFFE4E1FFLL, @"mistyrose");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFFE4B5FFLL, @"moccasin");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFFDEADFFLL, @"navajowhite");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x80FF, @"navy");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFDF5E6FFLL, @"oldlace");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x808000FFLL, @"olive");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x6B8E23FF, @"olivedrab");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFFA500FFLL, @"orange");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFF4500FFLL, @"orangered");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xDA70D6FFLL, @"orchid");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xEEE8AAFFLL, @"palegoldenrod");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x98FB98FFLL, @"palegreen");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xAFEEEEFFLL, @"paleturquoise");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xDB7093FFLL, @"palevioletred");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFFEFD5FFLL, @"papayawhip");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFFDAB9FFLL, @"peachpuff");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xCD853FFFLL, @"peru");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFFC0CBFFLL, @"pink");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xDDA0DDFFLL, @"plum");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xB0E0E6FFLL, @"powderblue");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x800080FFLL, @"purple");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x663399FF, @"rebeccapurple");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFF0000FFLL, @"red");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xBC8F8FFFLL, @"rosybrown");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x4169E1FF, @"royalblue");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x8B4513FFLL, @"saddlebrown");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFA8072FFLL, @"salmon");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xF4A460FFLL, @"sandybrown");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x2E8B57FF, @"seagreen");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFFF5EEFFLL, @"seashell");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xA0522DFFLL, @"sienna");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xC0C0C0FFLL, @"silver");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x87CEEBFFLL, @"skyblue");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x6A5ACDFF, @"slateblue");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x708090FF, @"slategray");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x708090FF, @"slategrey");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFFFAFAFFLL, @"snow");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFF7FFF, @"springgreen");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x4682B4FF, @"steelblue");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xD2B48CFFLL, @"tan");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x8080FF, @"teal");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xD8BFD8FFLL, @"thistle");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFF6347FFLL, @"tomato");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0, @"transparent");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x40E0D0FF, @"turquoise");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xEE82EEFFLL, @"violet");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xF5DEB3FFLL, @"wheat");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFFFFFFFFLL, @"white");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xF5F5F5FFLL, @"whitesmoke");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0xFFFF00FFLL, @"yellow");
  FigCFDictionarySetInt32();
  CFDictionarySetValue(Mutable, 0x9ACD32FFLL, @"yellowgreen");
  result = FigCFDictionarySetInt32();
  sRGBAToNamedCSSColorMap = Mutable;
  sNamedCSSColorToRGBAMap = v3;
  return result;
}

void initMapFromFigCaptionFontFamilyToVTTFontFamily()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E6961190], @"default");
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69611D0], @"serif");
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69611C8], @"sans-serif");
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69611A0], @"monospace");
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E6961188], @"cursive");
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E6961198], @"fantasy");
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69611C0], @"serif");
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69611B8], @"sans-serif");
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69611B0], @"monospace");
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69611A8], @"monospace");
  sMapFromFigCaptionFontFamilyToVTTFontFamily = Mutable;
}

CFTypeRef _FigURLStorageSessionNSCopyGlobalSession()
{
  if (sCreateGlobalFigURLStorageSessionNSTypeOnce != -1)
  {
    _FigURLStorageSessionNSCopyGlobalSession_cold_1();
  }

  result = sGlobalFigURLStorageSessionNS;
  if (sGlobalFigURLStorageSessionNS)
  {

    return CFRetain(result);
  }

  return result;
}

uint64_t _FigURLStorageSessionNSCreate(CFDictionaryRef theDict, uint64_t *a2)
{
  if (a2)
  {
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, @"FUSS_AdditionalHTTPCookies");
    }

    else
    {
      Value = 0;
    }

    v5 = objc_autoreleasePoolPush();
    v6 = [MEMORY[0x1E695AC80] ephemeralSessionConfiguration];
    v7 = *MEMORY[0x1E695E4D0];
    if (v7 == [(__CFDictionary *)theDict valueForKey:0x1F0B40418]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v6 set_alwaysPerformDefaultTrustEvaluation:1];
    }

    [v6 setMultipathServiceType:0];
    if (v7 == [(__CFDictionary *)theDict valueForKey:0x1F0B403F8])
    {
      [v6 setMultipathServiceType:100];
    }

    [v6 set_multipathAlternatePort:5228];
    if (_os_feature_enabled_impl())
    {
      [v6 set_usesNWLoader:1];
    }

    [v6 set_alternativeServicesStorage:{objc_msgSend(MEMORY[0x1E695ACE8], "sharedPersistentStore")}];
    [v6 setURLCache:0];
    [v6 setHTTPCookieAcceptPolicy:0];
    v8 = [(__CFDictionary *)theDict valueForKey:0x1F0B40378];
    if (v8)
    {
      v9 = v8;
      [v6 set_sourceApplicationBundleIdentifier:v8];
    }

    else
    {
      v9 = [(__CFDictionary *)theDict valueForKey:0x1F0B40358];
      if (v9)
      {
        [v6 set_sourceApplicationAuditTokenData:v9];
        v9 = FigCFHTTPCopyClientBundleIdentifier(v9);
      }
    }

    v10 = [(__CFDictionary *)theDict valueForKey:0x1F0B40398];
    v11 = [(__CFDictionary *)theDict valueForKey:0x1F0B403B8];
    if (v11)
    {
      [v6 set_atsContext:v11];
    }

    v12 = [(__CFDictionary *)theDict valueForKey:0x1F0B403D8];
    v13 = [(__CFDictionary *)theDict valueForKey:0x1F0B40338];
    if (v13 || v7 == v12)
    {
      v14 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:0];
      v15 = v14;
      if (v7 == v12)
      {
        [v14 setObject:v7 forKey:*MEMORY[0x1E695AD50]];
      }

      if (v13)
      {
        [v15 setObject:v13 forKey:*MEMORY[0x1E695AE80]];
      }

      [v6 set_socketStreamProperties:v15];
    }

    v16 = figURLStorageSessionNSCommonCreate(*MEMORY[0x1E695E480], v6, v9, v10);
    v18 = v16;
    if (v16 && Value)
    {
      figURLStorageSessionSetCookieDescArrayForURL(v16, v17, Value);
      objc_autoreleasePoolPop(v5);
    }

    else
    {
      objc_autoreleasePoolPop(v5);
      if (!v18)
      {
        _FigURLStorageSessionNSCreate_cold_1(&v21);
        v19 = v21;
        goto LABEL_30;
      }
    }

    v19 = 0;
    *a2 = v18;
  }

  else
  {
    _FigURLStorageSessionNSCreate_cold_2(&v22);
    v10 = 0;
    v9 = 0;
    v19 = v22;
  }

LABEL_30:

  return v19;
}

uint64_t figURLStorageSessionSetCookieDescArrayForURL(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = objc_autoreleasePoolPush();
  v6 = [*DerivedStorage HTTPCookieStorage];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __figURLStorageSessionSetCookieDescArrayForURL_block_invoke;
  v8[3] = &unk_1E7499D90;
  v8[4] = v6;
  [a3 enumerateObjectsUsingBlock:v8];
  objc_autoreleasePoolPop(v5);
  return 0;
}

void figURLStorageSessionFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v1 = DerivedStorage;
    v2 = objc_autoreleasePoolPush();

    *v1 = 0;
    v1[1] = 0;

    v1[2] = 0;

    objc_autoreleasePoolPop(v2);
  }
}

uint64_t figURLStorageSessionSetCredentialPlist(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    figURLStorageSessionSetCredentialPlist_cold_4(&v11);
    return v11;
  }

  v4 = DerivedStorage;
  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(a2))
  {
    figURLStorageSessionSetCredentialPlist_cold_1(&v11);
    return v11;
  }

  v6 = objc_autoreleasePoolPush();
  if (!v4)
  {
    figURLStorageSessionSetCredentialPlist_cold_3(&v11);
LABEL_13:
    v8 = v11;
    goto LABEL_6;
  }

  v7 = [*v4 URLCredentialStorage];
  if (!v7)
  {
    figURLStorageSessionSetCredentialPlist_cold_2(&v11);
    goto LABEL_13;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __figURLStorageSessionSetCredentialPlist_block_invoke;
  v10[3] = &unk_1E7499D18;
  v10[4] = v7;
  [a2 enumerateKeysAndObjectsUsingBlock:v10];
  v8 = 0;
LABEL_6:
  objc_autoreleasePoolPop(v6);
  return v8;
}

uint64_t figURLStorageSessionCreateHTTPSession(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = DerivedStorage;
  if (*(DerivedStorage + 8) || *(DerivedStorage + 16))
  {
    v6 = *MEMORY[0x1E695E480];
    if (a3)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(v6, 0, a3);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    v8 = MutableCopy;
    if (MutableCopy)
    {
      v9 = *(v5 + 8);
      if (v9)
      {
        CFDictionarySetValue(MutableCopy, @"FHRSP_ClientBundleIdentifier", v9);
      }

      v10 = *(v5 + 16);
      if (v10)
      {
        CFDictionarySetValue(v8, @"FHRSP_ClientPersonaIdentifier", v10);
      }

      v11 = _FigHTTPRequestSessionCreateForNSURLSession();
      CFRelease(v8);
      return v11;
    }

    else
    {
      figURLStorageSessionCreateHTTPSession_cold_1(&v13);
      return v13;
    }
  }

  else
  {

    return _FigHTTPRequestSessionCreateForNSURLSession();
  }
}

void __figURLStorageSessionCopyCookieDescArrayForURL_block_invoke(uint64_t a1, void *a2, CFIndex a3)
{
  v4 = *(a1 + 32);
  v5 = [a2 properties];

  CFArrayInsertValueAtIndex(v4, a3, v5);
}

void __figURLStorageSessionSetCredentialPlist_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_alloc(MEMORY[0x1E695AC58]);
  FigNSHTTPInitWithSerializedObject(v6, a2);
  if (v6)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __figURLStorageSessionSetCredentialPlist_block_invoke_2;
    v7[3] = &unk_1E7499CF0;
    v7[4] = *(a1 + 32);
    v7[5] = v6;
    [a3 enumerateObjectsUsingBlock:v7];
  }
}

uint64_t __figURLStorageSessionSetCredentialPlist_block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = objc_alloc(MEMORY[0x1E695AC48]);
  result = [a2 length];
  if (result)
  {
    FigNSHTTPInitWithSerializedObject(v6, a2);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    if (a3)
    {

      return [v8 setCredential:v6 forProtectionSpace:v9];
    }

    else
    {

      return [v8 setDefaultCredential:v6 forProtectionSpace:v9];
    }
  }

  return result;
}

uint64_t __figURLStorageSessionCopyCredentialPlistForURL_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(a1 + 32) isEqual:?];
  if ((result & 1) == 0)
  {
    v6 = FigNSHTTPCreateSerializedObjectFromNSSecureCoding(a3);
    v7 = *(a1 + 40);

    return [v7 addObject:v6];
  }

  return result;
}

uint64_t __FigURLStorageSessionNSGetClassID_block_invoke()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t __figURLStorageSessionSetCookieDescArrayForURL_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E695ABF8] cookieWithProperties:a2];
  v4 = *(a1 + 32);

  return [v4 setCookie:v3];
}

uint64_t FigAudioSessionClockCreateFromClockConfigurationAndExistingFigAudioSession(uint64_t a1, uint64_t a2, _BOOL8 a3, CFTypeRef *a4)
{
  if (!FigCFDictionaryGetInt32IfPresent())
  {
    FigAudioSessionClockCreateFromClockConfigurationAndExistingFigAudioSession_cold_3(&v9);
    return v9;
  }

  if (!FigCFDictionaryGetInt32IfPresent())
  {
    FigAudioSessionClockCreateFromClockConfigurationAndExistingFigAudioSession_cold_2(&v9);
    return v9;
  }

  if (!FigAudioSessionClockConfigurationCanUseFigAudioSessionToCreateClock(a2, a3))
  {
    FigAudioSessionClockCreateFromClockConfigurationAndExistingFigAudioSession_cold_1(&v9);
    return v9;
  }

  return FigAudioSessionClockCreateForAVAudioSession(a1, 0, 0, a4);
}

uint64_t FigAudioSessionClockCreateFromClockConfigurationAndExistingAVAudioSession(uint64_t a1, uint64_t a2, void *a3, CFTypeRef *a4)
{
  v8 = objc_autoreleasePoolPush();
  if (!FigCFDictionaryGetInt32IfPresent())
  {
    FigAudioSessionClockCreateFromClockConfigurationAndExistingAVAudioSession_cold_3(&v11);
LABEL_9:
    v9 = v11;
    goto LABEL_5;
  }

  if (!FigCFDictionaryGetInt32IfPresent())
  {
    FigAudioSessionClockCreateFromClockConfigurationAndExistingAVAudioSession_cold_2(&v11);
    goto LABEL_9;
  }

  if (!FigAudioSessionClockConfigurationCanUseAVAudioSessionToCreateClock(a2, a3))
  {
    FigAudioSessionClockCreateFromClockConfigurationAndExistingAVAudioSession_cold_1(&v11);
    goto LABEL_9;
  }

  v9 = FigAudioSessionClockCreateForAVAudioSession(a1, 0, 0, a4);
LABEL_5:
  objc_autoreleasePoolPop(v8);
  return v9;
}

CFStringRef audioSessionClock_CopyDebugDesc(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"AudioSessionClock");
}

void audioSessionClock_Finalize()
{
  DerivedStorage = FigDerivedClockGetDerivedStorage();

  *(DerivedStorage + 16) = 0;
  v1 = *(DerivedStorage + 8);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 8) = 0;
  }
}

double audioSessionClock_GetRate(uint64_t a1)
{
  v3 = 1.0;
  RateAndNanosecondTimeAndHostTime = audioSessionClock_getRateAndNanosecondTimeAndHostTime(a1, &v3, 0, 0);
  result = v3;
  if (RateAndNanosecondTimeAndHostTime)
  {
    return 1.0;
  }

  return result;
}

uint64_t audioSessionClock_GetAnchorTime(uint64_t a1, CMTime *a2, CMTime *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v26 = **&MEMORY[0x1E6960C70];
  v25 = v26;
  hostTime = 0;
  v24 = 0;
  DerivedStorage = FigDerivedClockGetDerivedStorage();
  RateAndNanosecondTimeAndHostTime = audioSessionClock_getRateAndNanosecondTimeAndHostTime(a1, 0, &v24, &hostTime);
  if (RateAndNanosecondTimeAndHostTime)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    if (DerivedStorage[6])
    {
      v8 = v24 - DerivedStorage[5];
      if (audioSessionClock_getMaxDiscontinuityInNanoSeconds_sCheckDefaultsWriteOnce != -1)
      {
        audioSessionClock_GetAnchorTime_cold_1();
      }

      if (audioSessionClock_getMaxDiscontinuityInNanoSeconds_sMaxDiscontinuityInNanoSeconds)
      {
        v9 = -50000000;
      }

      else
      {
        v9 = 0;
      }

      if (audioSessionClock_getMaxDiscontinuityInNanoSeconds_sMaxDiscontinuityInNanoSeconds)
      {
        v10 = 50000000;
      }

      else
      {
        v10 = 0;
      }

      v11 = DerivedStorage[5];
      if (v11 > v24)
      {
        v8 = v11 - v24;
      }

      v12 = v8 - FigHostTimeToNanoseconds();
      if (v12 < v9 || v12 > v10)
      {
        cf = 0;
        FigHostTimeToNanoseconds();
        v14 = DerivedStorage[1];
        if (v14)
        {
          v15 = *(CMBaseObjectGetVTable() + 16);
          if (v15)
          {
            v16 = *(v15 + 48);
            if (v16)
            {
              v16(v14, *MEMORY[0x1E69AFD90], *MEMORY[0x1E695E480], &cf);
            }
          }
        }

        v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        if (cf)
        {
          CFRelease(cf);
        }
      }
    }

    v19 = hostTime;
    v18 = v24;
    DerivedStorage[5] = v24;
    DerivedStorage[6] = v19;
    CMTimeMake(&v26, v18, 1000000000);
    CMClockMakeHostTimeFromSystemUnits(&v25, hostTime);
    if (a2)
    {
      *a2 = v26;
    }

    if (a3)
    {
      *a3 = v25;
    }
  }

  return RateAndNanosecondTimeAndHostTime;
}

uint64_t audioSessionClock_getRateAndNanosecondTimeAndHostTime(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2 != 0;
  DerivedStorage = FigDerivedClockGetDerivedStorage();
  v9 = 4 * v7;
  if (a3)
  {
    v9 = (4 * v7) | 0x20;
  }

  if (a4)
  {
    v10 = v9 | 2;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(DerivedStorage + 16);
  if (v11)
  {
    [v11 currentPresentationTime];
    v12 = v17;
    v13 = v18;
    v14 = v19;
    v15 = v20;
  }

  else
  {
    v14 = 0;
    v13 = 0;
    v12 = 0;
    v15 = 0;
  }

  if ((v10 & ~v12) != 0)
  {
    audioSessionClock_getRateAndNanosecondTimeAndHostTime_cold_1(&v17);
    return v17;
  }

  else
  {
    if (a2)
    {
      *a2 = v15;
    }

    if (a3)
    {
      *a3 = v14;
    }

    result = 0;
    if (a4)
    {
      *a4 = v13;
    }
  }

  return result;
}

void __audioSessionClock_getMaxDiscontinuityInNanoSeconds_block_invoke()
{
  audioSessionClock_getMaxDiscontinuityInNanoSeconds_sMaxDiscontinuityInNanoSeconds = 1;
  if (dword_1EAF17CB8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

uint64_t FigVTTDocumentWriterCreateForVTT(uint64_t a1, const void *a2, void *a3)
{
  if (!a2)
  {
    FigVTTDocumentWriterCreateForVTT_cold_2(&v16);
    return v16;
  }

  if (!a3)
  {
    FigVTTDocumentWriterCreateForVTT_cold_1(&v16);
    return v16;
  }

  FigVTTDocumentWriterGetClassID();
  v5 = CMDerivedObjectCreate();
  if (v5)
  {
    return v5;
  }

  v6 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    return 4294954510;
  }

  v8 = Mutable;
  v9 = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0]);
  if (!v9)
  {
LABEL_13:
    CFRelease(v8);
    return 4294954510;
  }

  v10 = v9;
  v11 = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0]);
  if (!v11)
  {
    CFRelease(v10);
    goto LABEL_13;
  }

  v12 = v11;
  FigVTTDocumentWriterGetCMBaseObject(0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v14 = 0;
  *DerivedStorage = CFRetain(a2);
  DerivedStorage[1] = v8;
  DerivedStorage[2] = v10;
  DerivedStorage[3] = v12;
  *a3 = 0;
  return v14;
}

void figVTTDocumentWriterForVTT_Finalize(uint64_t a1)
{
  FigVTTDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 32);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 32) = 0;
  }

  v3 = *(DerivedStorage + 8);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 8) = 0;
  }

  v4 = *(DerivedStorage + 16);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 16) = 0;
  }

  v5 = *(DerivedStorage + 24);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 24) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

uint64_t figVTTDocumentWriterForVTT_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  FigVTTDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a4)
    {
      v7 = DerivedStorage;
      if (CFEqual(a2, @"languageIdentifier"))
      {
        v8 = *(v7 + 32);
        if (v8)
        {
          v9 = CFRetain(v8);
        }

        else
        {
          v9 = 0;
        }

        result = 0;
        *a4 = v9;
      }

      else
      {

        return FigSignalErrorAtGM();
      }
    }

    else
    {
      figVTTDocumentWriterForVTT_CopyProperty_cold_1(&v11);
      return v11;
    }
  }

  else
  {
    figVTTDocumentWriterForVTT_CopyProperty_cold_2(&v12);
    return v12;
  }

  return result;
}

uint64_t figVTTDocumentWriterForVTT_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  FigVTTDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    figVTTDocumentWriterForVTT_SetProperty_cold_4(&v10);
    return v10;
  }

  if (!a2)
  {
    figVTTDocumentWriterForVTT_SetProperty_cold_3(&v10);
    return v10;
  }

  v6 = DerivedStorage;
  if (CFEqual(a2, @"languageIdentifier"))
  {
    if (a3)
    {
      v7 = CFGetTypeID(a3);
      if (v7 == CFStringGetTypeID())
      {
        v8 = *(v6 + 32);
        *(v6 + 32) = a3;
        CFRetain(a3);
        if (v8)
        {
          CFRelease(v8);
        }

        return 0;
      }

      figVTTDocumentWriterForVTT_SetProperty_cold_1(&v10);
    }

    else
    {
      figVTTDocumentWriterForVTT_SetProperty_cold_2(&v10);
    }

    return v10;
  }

  return FigSignalErrorAtGM();
}

uint64_t figVTTDocumentWriterForVTT_CreateAndAddNode(const void *a1, int a2, int a3, void **a4)
{
  FigVTTDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  if (!a2)
  {
    figVTTDocumentWriterForVTT_CreateAndAddNode_cold_5();
    return 0;
  }

  if (!a3)
  {
    figVTTDocumentWriterForVTT_CreateAndAddNode_cold_4();
    return 0;
  }

  if (!a4)
  {
    figVTTDocumentWriterForVTT_CreateAndAddNode_cold_3();
    return 0;
  }

  switch(a2)
  {
    case 3:
      if ((a3 & 0xFFFFFFFD) != 1)
      {
        figVTTDocumentWriterForVTT_CreateAndAddNode_cold_1(&v20);
        return v20;
      }

      v10 = 24;
      break;
    case 2:
      if (a3 > 7 || ((1 << a3) & 0x98) == 0)
      {
        goto LABEL_32;
      }

      v10 = 16;
      break;
    case 1:
      if (a3 == 2)
      {
        v9 = *(DerivedStorage + 8);
LABEL_21:
        v14 = CFGetAllocator(a1);
        v13 = FigVTTMetadataCreate(v14, &value);
        goto LABEL_29;
      }

      figVTTDocumentWriterForVTT_CreateAndAddNode_cold_2(&v20);
      return v20;
    default:
      v9 = 0;
      goto LABEL_16;
  }

  v9 = *(DerivedStorage + v10);
LABEL_16:
  v11 = 0;
  if (a3 <= 3)
  {
    switch(a3)
    {
      case 1:
        v16 = CFGetAllocator(a1);
        v13 = FigVTTCueCreate(v16, &value);
        goto LABEL_29;
      case 2:
        goto LABEL_21;
      case 3:
        v12 = CFGetAllocator(a1);
        v13 = FigVTTNoteBlockCreate(v12, &value);
LABEL_29:
        v11 = v13;
        break;
    }

LABEL_30:
    CFArrayAppendValue(v9, value);
    *a4 = value;
    return v11;
  }

  if ((a3 - 5) >= 2)
  {
    if (a3 == 4)
    {
      v17 = CFGetAllocator(a1);
      v13 = FigVTTRegionBlockCreate(v17, &value);
      goto LABEL_29;
    }

    if (a3 == 7)
    {
      v15 = CFGetAllocator(a1);
      v13 = FigVTTStyleBlockCreate(v15, &value);
      goto LABEL_29;
    }

    goto LABEL_30;
  }

LABEL_32:

  return FigSignalErrorAtGM();
}

uint64_t figVTTDocumentWriterForVTT_Flush(const void *a1)
{
  FigVTTDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  if (Mutable)
  {
    v5 = Mutable;
    CFStringAppendFormat(Mutable, 0, @"%@\n", @"WEBVTT");
    FigCFArrayApplyFunction();
    CFStringAppendFormat(v5, 0, @"\n");
    FigCFArrayApplyFunction();
    FigCFArrayApplyFunction();
    v6 = FigVTTSerializerAddText(*DerivedStorage, v5);
    if (!v6)
    {
      v6 = FigVTTSerializerFlush(*DerivedStorage);
    }

    v7 = v6;
    CFRelease(v5);
  }

  else
  {
    figVTTDocumentWriterForVTT_Flush_cold_1(&v9);
    return v9;
  }

  return v7;
}

BOOL FigCFHTTPIsHTTPBasedURL(const __CFURL *a1)
{
  v1 = CFURLCopyScheme(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = 1;
  if (CFStringCompare(v1, @"http", 1uLL))
  {
    v3 = 1;
    if (CFStringCompare(v2, @"https", 1uLL))
    {
      v3 = CFStringCompare(v2, @"daap", 1uLL) == kCFCompareEqualTo;
    }
  }

  CFRelease(v2);
  return v3;
}

BOOL FigCFHTTPIsDataURL(const __CFURL *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = CFURLCopyScheme(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = CFStringCompare(v1, @"data", 1uLL) == kCFCompareEqualTo;
  CFRelease(v2);
  return v3;
}

uint64_t FigCFHTTPCopyDeviceStrings(void *a1, void *a2, void *a3)
{
  v6 = *MEMORY[0x1E695E480];
  v7 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], @"/System/Library/CoreServices/SystemVersion.plist", kCFURLPOSIXPathStyle, 0);
  if (!v7)
  {
    return 4294954510;
  }

  v8 = v7;
  CFData = FigFileReadURLAndCreateCFData();
  if (CFData)
  {
    v15 = CFData;
    goto LABEL_18;
  }

  v10 = CFPropertyListCreateWithData(v6, 0, 0, 0, 0);
  if (!v10)
  {
    v15 = 4294954510;
    goto LABEL_18;
  }

  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(v10))
  {
    CFRelease(v10);
    v15 = 4294954516;
LABEL_18:
    CFRelease(v8);
    return v15;
  }

  CFRelease(v8);
  if (a1)
  {
    v12 = MGCopyAnswer();
    *a1 = v12;
    if (!v12)
    {
      *a1 = CFRetain(@"iPhone");
    }
  }

  if (a2)
  {
    Value = CFDictionaryGetValue(v10, @"ProductVersion");
    if (Value)
    {
      Value = CFRetain(Value);
    }

    *a2 = Value;
  }

  if (a3)
  {
    v14 = CFDictionaryGetValue(v10, @"ProductBuildVersion");
    if (v14)
    {
      v14 = CFRetain(v14);
    }

    *a3 = v14;
  }

  CFRelease(v10);
  return 0;
}

CFTypeRef FigCFHTTPCreateURLString(const __CFURL *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = CFURLCopyAbsoluteURL(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = CFURLGetString(v1);
  v4 = CFRetain(v3);
  CFRelease(v2);
  return v4;
}

const sockaddr *FigCFHTTPCreateAddressStringFromSockaddr(const sockaddr *result, socklen_t a2)
{
  v3 = *MEMORY[0x1E69E9840];
  if (result)
  {
    if (getnameinfo(result, a2, cStr, 0x401u, 0, 0, 2))
    {
      return 0;
    }

    else
    {
      return CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0x600u);
    }
  }

  return result;
}

const __CFData *FigCFHTTPCreateAddressString(const __CFData *result)
{
  if (result)
  {
    v1 = result;
    BytePtr = CFDataGetBytePtr(result);
    Length = CFDataGetLength(v1);

    return FigCFHTTPCreateAddressStringFromSockaddr(BytePtr, Length);
  }

  return result;
}

uint64_t FigCFHTTPGetHTTPPort(const __CFURL *a1, int *a2, char *a3)
{
  v6 = CFURLCopyScheme(a1);
  if (v6)
  {
    v7 = v6;
    v8 = 1;
    v9 = CFStringCompare(v6, @"https", 1uLL);
    CFRelease(v7);
    result = CFURLGetPortNumber(a1);
    v11 = result == -1;
    if (v9 == kCFCompareEqualTo)
    {
      v12 = 443;
      if (!a2)
      {
        goto LABEL_11;
      }

      goto LABEL_7;
    }
  }

  else
  {
    result = CFURLGetPortNumber(a1);
    v11 = result == -1;
  }

  v8 = 0;
  v12 = 80;
  if (!a2)
  {
    goto LABEL_11;
  }

LABEL_7:
  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = result;
  }

  *a2 = v13;
LABEL_11:
  if (a3)
  {
    *a3 = v8;
  }

  return result;
}

uint64_t FigCFHTTPCopyClientCertChain(uint64_t *a1)
{
  if (a1)
  {
    *a1 = 0;
    if ((FigCFHTTPCopyClientCertChain_sCheckedPref & 1) == 0)
    {
      v2 = CFPreferencesCopyValue(@"client_auth", @"com.apple.coremedia", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
      if (v2)
      {
        v3 = v2;
        v4 = CFEqual(v2, @"true") || CFEqual(v3, @"TRUE") || CFEqual(v3, @"1") || CFEqual(v3, @"YES") || CFEqual(v3, @"yes") != 0;
        FigCFHTTPCopyClientCertChain_sOkToUse = v4;
        CFRelease(v3);
      }

      FigCFHTTPCopyClientCertChain_sCheckedPref = 1;
    }

    if (FigCFHTTPCopyClientCertChain_sOkToUse)
    {
      v5 = off_1EE59EBD8[0]();
      *a1 = v5;
      if (v5)
      {
        return 0;
      }

      else
      {
        fig_log_get_emitter();

        return FigSignalErrorAtGM();
      }
    }

    else
    {
      return 4294954634;
    }
  }

  else
  {
    FigCFHTTPCopyClientCertChain_cold_1(&v7);
    return v7;
  }
}

CFDateRef FigCFHTTPCreateDateFromHTTPDateString(const __CFString *a1)
{
  v2 = figCFHTTPGetHTTPDateFormater();
  if (!a1)
  {
    return 0;
  }

  v3 = v2;
  if (!v2)
  {
    return 0;
  }

  v4 = *MEMORY[0x1E695E480];

  return CFDateFormatterCreateDateFromString(v4, v3, a1, 0);
}

uint64_t figCFHTTPGetHTTPDateFormater()
{
  if (!figCFHTTPGetHTTPDateFormater_sHTTPDateFormater)
  {
    v0 = *MEMORY[0x1E695E480];
    v1 = CFLocaleCreate(*MEMORY[0x1E695E480], @"en_US_POSIX");
    v2 = CFDateFormatterCreate(v0, v1, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
    if (v2)
    {
      v3 = v2;
      CFDateFormatterSetFormat(v2, @"EEE, d MMM yyyy HH:mm:ss z");
      CFDateFormatterSetProperty(v3, *MEMORY[0x1E695E568], *MEMORY[0x1E695E4D0]);
      if (!FigAtomicCompareAndSwapPtr())
      {
        CFRelease(v3);
      }
    }

    if (v1)
    {
      CFRelease(v1);
    }
  }

  return figCFHTTPGetHTTPDateFormater_sHTTPDateFormater;
}

CFDateRef FigCFHTTPCreateDateFromDelayString(CFStringRef string)
{
  if (!figCFHTTPGetHTTPDelaySecondsFormatter_sHTTPDelaySecondsFormatter)
  {
    v2 = *MEMORY[0x1E695E480];
    v3 = CFLocaleCreate(*MEMORY[0x1E695E480], @"en_US_POSIX");
    v4 = CFNumberFormatterCreate(v2, v3, kCFNumberFormatterNoStyle);
    if (v4)
    {
      v5 = v4;
      if (!FigAtomicCompareAndSwapPtr())
      {
        CFRelease(v5);
      }
    }

    if (v3)
    {
      CFRelease(v3);
    }
  }

  v6 = 0;
  if (string && figCFHTTPGetHTTPDelaySecondsFormatter_sHTTPDelaySecondsFormatter)
  {
    v7 = *MEMORY[0x1E695E480];
    NumberFromString = CFNumberFormatterCreateNumberFromString(*MEMORY[0x1E695E480], figCFHTTPGetHTTPDelaySecondsFormatter_sHTTPDelaySecondsFormatter, string, 0, 1uLL);
    if (NumberFromString)
    {
      v9 = NumberFromString;
      valuePtr = 0;
      if (CFNumberGetValue(NumberFromString, kCFNumberIntType, &valuePtr))
      {
        Current = CFAbsoluteTimeGetCurrent();
        v6 = CFDateCreate(v7, Current + valuePtr);
      }

      else
      {
        v6 = 0;
      }

      CFRelease(v9);
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

CFDateRef FigCFHTTPCreateDateFromHTTPDateStringOrDelayString(const __CFString *a1)
{
  result = FigCFHTTPCreateDateFromHTTPDateString(a1);
  if (!result)
  {

    return FigCFHTTPCreateDateFromDelayString(a1);
  }

  return result;
}

const __CFString *figCFHTTPCopyDateFromHTTPResponse(__CFHTTPMessage *a1, const __CFString *a2)
{
  result = CFHTTPMessageCopyHeaderFieldValue(a1, a2);
  if (result)
  {
    v3 = result;
    v4 = FigCFHTTPCreateDateFromHTTPDateString(result);
    CFRelease(v3);
    return v4;
  }

  return result;
}

CFDateRef FigCFHTTPCopyRetryAfterDateFromHTTPResponse(__CFHTTPMessage *a1)
{
  v1 = CFHTTPMessageCopyHeaderFieldValue(a1, @"Retry-After");
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = FigCFHTTPCreateDateFromHTTPDateString(v1);
  if (!v3)
  {
    v3 = FigCFHTTPCreateDateFromDelayString(v2);
  }

  CFRelease(v2);
  return v3;
}

uint64_t FigCFHTTPCanURLsBePersistent(const __CFURL *a1, const __CFURL *a2, BOOL *a3)
{
  v15 = 0;
  v6 = CFURLCopyHostName(a1);
  v7 = CFURLCopyScheme(a1);
  v8 = CFURLCopyHostName(a2);
  v9 = CFURLCopyScheme(a2);
  v10 = v9;
  if (v6 && v8)
  {
    v11 = CFStringCompare(v6, v8, 1uLL);
    v12 = v7 == 0;
    v13 = v10 == 0;
    if (v7 && v10)
    {
      if (v11 || CFStringCompare(v7, v10, 1uLL))
      {
        *a3 = 0;
      }

      else
      {
        FigCFHTTPGetHTTPPort(a1, &v15 + 1, 0);
        FigCFHTTPGetHTTPPort(a2, &v15, 0);
        *a3 = HIDWORD(v15) == v15;
      }

      goto LABEL_11;
    }

LABEL_13:
    CFRelease(v6);
    v6 = 4294954510;
    if (v12)
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

  v12 = v7 == 0;
  v13 = v9 == 0;
  if (v7 && v9)
  {
    *a3 = 0;
    if (v6)
    {
LABEL_11:
      CFRelease(v6);
      v13 = 0;
      v6 = 0;
      goto LABEL_22;
    }

    v13 = 0;
    goto LABEL_22;
  }

  if (v6)
  {
    goto LABEL_13;
  }

  v6 = 4294954510;
  if (!v7)
  {
LABEL_14:
    if (!v8)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_22:
  CFRelease(v7);
  if (v8)
  {
LABEL_15:
    CFRelease(v8);
  }

LABEL_16:
  if (!v13)
  {
    CFRelease(v10);
  }

  return v6;
}

uint64_t FigCFHTTPIsStatusCodeRedirect(int a1)
{
  if ((a1 - 301) >= 5)
  {
    v1 = 0;
  }

  else
  {
    v1 = 0x100010101uLL >> (8 * (a1 - 45));
  }

  return v1 & 1;
}

const __CFData *FigCFHTTPCopyClientProcessName(const __CFData *result)
{
  if (result)
  {
    CFDataGetBytePtr(result);
    if (FigServer_GetClientPIDFromAuditToken())
    {
      FigServer_CopyProcessName();
    }

    return 0;
  }

  return result;
}

uint64_t FigCFHTTPCopyClientBundleIdentifier(const __CFData *a1)
{
  if (!a1)
  {
    return 0;
  }

  BytePtr = CFDataGetBytePtr(a1);
  v8 = *BytePtr;
  v9 = *(BytePtr + 1);
  ClientPIDFromAuditToken = FigServer_GetClientPIDFromAuditToken();
  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x1E69C75E0] identifierWithPid:{ClientPIDFromAuditToken, v8, v9}];
  v5 = [MEMORY[0x1E69C75D0] handleForIdentifier:v4 error:0];
  if (v5)
  {
    v6 = [objc_msgSend(objc_msgSend(v5 "bundle")];
  }

  else
  {
    v6 = 0;
  }

  objc_autoreleasePoolPop(v3);
  return v6;
}

uint64_t FigCFHTTPCreateCacheHeaders(const void *a1, uint64_t a2, __CFHTTPMessage *a3, const __CFDictionary *a4, const __CFString *a5)
{
  v66 = *MEMORY[0x1E69E9840];
  cf = 0;
  v63 = a2;
  v61 = 0;
  valuePtr = 1;
  if (!a3)
  {
    FigCFHTTPCreateCacheHeaders_cold_7(buffer);
LABEL_100:
    v6 = 0;
LABEL_102:
    v9 = 0;
LABEL_104:
    v10 = 0;
LABEL_105:
    v12 = 0;
LABEL_106:
    location_low = *buffer;
    goto LABEL_45;
  }

  if (!a1)
  {
    FigCFHTTPCreateCacheHeaders_cold_6(buffer);
    goto LABEL_100;
  }

  v6 = a5;
  if (!a5)
  {
    FigCFHTTPCreateCacheHeaders_cold_5(buffer);
    goto LABEL_102;
  }

  v8 = *MEMORY[0x1E695E480];
  v9 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  if (!v9)
  {
    FigCFHTTPCreateCacheHeaders_cold_4(buffer);
    v6 = 0;
    goto LABEL_104;
  }

  v10 = CFNumberCreate(v8, kCFNumberSInt64Type, &v63);
  if (!v10)
  {
    FigCFHTTPCreateCacheHeaders_cold_3(buffer);
    v6 = 0;
    goto LABEL_105;
  }

  Mutable = CFDictionaryCreateMutable(v8, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v12 = Mutable;
  if (!Mutable)
  {
    FigCFHTTPCreateCacheHeaders_cold_2(buffer);
    v6 = 0;
    goto LABEL_106;
  }

  p_isa = &v6->isa;
  CFDictionarySetValue(Mutable, @"Version", v9);
  v13 = *MEMORY[0x1E695E4C0];
  CFDictionarySetValue(v12, @"no-cache", *MEMORY[0x1E695E4C0]);
  CFDictionarySetValue(v12, @"must-validate", v13);
  CFDictionarySetValue(v12, @"URL", a1);
  CFDictionarySetValue(v12, @"Size", v10);
  v14 = CFHTTPMessageCopyHeaderFieldValue(a3, @"Pragma");
  v56 = v10;
  v57 = v9;
  if (v14)
  {
    v15 = v14;
    location = CFStringFind(v14, @"no-cache", 1uLL).location;
    CFRelease(v15);
    if (location != -1)
    {
      CFDictionarySetValue(v12, @"no-cache", *MEMORY[0x1E695E4D0]);
LABEL_14:
      v19 = 0;
      v20 = 0;
      v21 = 0;
      DateFromString = 0;
      v23 = 0;
      goto LABEL_15;
    }
  }

  v17 = CFHTTPMessageCopyHeaderFieldValue(a3, @"Cache-control");
  if (v17)
  {
    v18 = v17;
    if (CFStringFind(v17, @"no-cache", 1uLL).location != -1 || CFStringFind(v18, @"no-store", 1uLL).location != -1)
    {
      CFDictionarySetValue(v12, @"no-cache", *MEMORY[0x1E695E4D0]);
      CFRelease(v18);
      goto LABEL_14;
    }

    if (CFStringFind(v18, @"must-revalidate", 1uLL).location != -1)
    {
      CFDictionarySetValue(v12, @"must-validate", *MEMORY[0x1E695E4D0]);
    }

    v33 = CFStringFind(v18, @"max-age=", 1uLL);
    if (v33.location != -1)
    {
      v34 = CFStringCreateWithSubstring(v8, v18, v33);
      if (v34)
      {
        v35 = v34;
        if (CFStringGetCString(v34, buffer, 128, 0x600u) && sscanf(v65, "%llu", &v61) != 1)
        {
          v61 = 0;
        }

        CFRelease(v35);
      }
    }

    CFRelease(v18);
  }

  v36 = CFHTTPMessageCopyHeaderFieldValue(a3, @"Etag");
  if (v36)
  {
    v37 = v36;
    if (CFStringGetLength(v36) < 2 || (v67.length = CFStringGetLength(@"W/"), v67.location = 0, v38 = CFStringCompareWithOptions(v37, @"W/", v67, 1uLL), v39 = CFStringFind(v37, @"", 0).location, v39 == -1))
    {
      v23 = 0;
    }

    else
    {
      v52 = v39;
      result.location = 0;
      result.length = 0;
      v53 = v39 + 1;
      v68.length = CFStringGetLength(v37) - (v39 + 1);
      v68.location = v53;
      v23 = 0;
      if (CFStringFindWithOptions(v37, @"", v68, 0, &result))
      {
        v69.length = result.location - v52 + 1;
        v69.location = v52;
        v23 = CFStringCreateWithSubstring(v8, v37, v69);
        CFDictionarySetValue(v12, @"ETag", v23);
        if (v38)
        {
          v54 = v13;
        }

        else
        {
          v54 = *MEMORY[0x1E695E4D0];
        }

        CFDictionarySetValue(v12, @"ETag weak", v54);
      }
    }

    CFRelease(v37);
  }

  else
  {
    v23 = 0;
  }

  v40 = figCFHTTPGetHTTPDateFormater();
  if (v40)
  {
    v41 = v40;
    v42 = CFHTTPMessageCopyHeaderFieldValue(a3, @"Date");
    if (v42)
    {
      v43 = v42;
      DateFromString = CFDateFormatterCreateDateFromString(v8, v41, v42, 0);
      CFRelease(v43);
    }

    else
    {
      DateFromString = 0;
    }

    v44 = CFHTTPMessageCopyHeaderFieldValue(a3, @"Expires");
    if (v44)
    {
      v45 = v44;
      v21 = CFDateFormatterCreateDateFromString(v8, v41, v44, 0);
      CFRelease(v45);
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
    DateFromString = 0;
  }

  v46 = CFHTTPMessageCopyHeaderFieldValue(a3, @"Last-Modified");
  if (v46)
  {
    v47 = v46;
    CFDictionarySetValue(v12, @"Last-Modified", v46);
    CFRelease(v47);
  }

  Current = CFAbsoluteTimeGetCurrent();
  v20 = CFDateCreate(v8, Current);
  if (DateFromString && CFDateCompare(DateFromString, v20, 0) == kCFCompareGreaterThan)
  {
    v19 = DateFromString;
    DateFromString = 0;
  }

  else
  {
    v19 = v20;
    v20 = 0;
  }

  v49 = v61;
  if (v61)
  {
    if (v21)
    {
      CFRelease(v21);
      v49 = v61;
    }

    v50 = v49;
    v51 = MEMORY[0x19A8CCD90](v19);
    v21 = CFDateCreate(v8, v51 + v50);
  }

  if (v21)
  {
    CFDictionarySetValue(v12, @"Expires", v21);
  }

  if (!FigCFHTTPCopyFilenameFromContentDisposition(a3, 0, &cf))
  {
    CFDictionarySetValue(v12, @"FileName", cf);
  }

LABEL_15:
  ResponseStatusCode = CFHTTPMessageGetResponseStatusCode(a3);
  if (ResponseStatusCode == 200 || ResponseStatusCode == 304 || ResponseStatusCode == 206)
  {
    v6 = FigCFHTTPCopyMimeTypeFromHTTPResponse(a3);
    if (v6)
    {
      CFDictionarySetValue(v12, @"MIME Type", v6);
    }
  }

  else
  {
    v6 = 0;
  }

  if (a4)
  {
    if (!CFDictionaryContainsKey(v12, @"MIME Type"))
    {
      Value = CFDictionaryGetValue(a4, @"MIME Type");
      if (Value)
      {
        v26 = Value;
        CFDictionarySetValue(v12, @"MIME Type", Value);
        CFHTTPMessageSetHeaderFieldValue(a3, @"Content-Type", v26);
      }
    }

    if (!CFDictionaryContainsKey(v12, @"Last-Modified"))
    {
      v27 = CFDictionaryGetValue(a4, @"Last-Modified");
      if (v27)
      {
        CFDictionarySetValue(v12, @"Last-Modified", v27);
      }
    }

    if (!CFDictionaryContainsKey(v12, @"ETag"))
    {
      v28 = CFDictionaryGetValue(a4, @"ETag");
      if (v28)
      {
        CFDictionarySetValue(v12, @"ETag", v28);
      }
    }

    if (!CFDictionaryContainsKey(v12, @"Expires"))
    {
      v29 = CFDictionaryGetValue(a4, @"Expires");
      if (v29)
      {
        CFDictionarySetValue(v12, @"Expires", v29);
      }
    }
  }

  Copy = CFDictionaryCreateCopy(v8, v12);
  if (!Copy)
  {
    FigCFHTTPCreateCacheHeaders_cold_1(&result);
    location_low = LODWORD(result.location);
    if (!v23)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  location_low = 0;
  *p_isa = Copy;
  if (v23)
  {
LABEL_36:
    CFRelease(v23);
  }

LABEL_37:
  if (v21)
  {
    CFRelease(v21);
  }

  v9 = v57;
  if (v20)
  {
    CFRelease(v20);
  }

  v10 = v56;
  if (DateFromString)
  {
    CFRelease(DateFromString);
  }

  if (v19)
  {
    CFRelease(v19);
  }

LABEL_45:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return location_low;
}

const void *FigCFHTTPMatchCacheHeaders(const __CFDictionary *a1, uint64_t a2, const __CFString *a3, int a4, const __CFDictionary *a5)
{
  if (!a1)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, @"Version");
  if (!Value)
  {
    return 0;
  }

  v29 = 0;
  valuePtr = 0;
  if (!CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr))
  {
    return 0;
  }

  if (valuePtr != 1)
  {
    return 0;
  }

  v11 = CFDictionaryGetValue(a1, @"Size");
  if (!v11)
  {
    return 0;
  }

  v12 = CFNumberGetValue(v11, kCFNumberSInt64Type, &v29);
  if (!a3)
  {
    return 0;
  }

  if (!v12)
  {
    return 0;
  }

  if (v29 != a2)
  {
    return 0;
  }

  v13 = CFDictionaryGetValue(a1, @"URL");
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  if (a4)
  {
    v15 = *MEMORY[0x1E695E480];
    v16 = CFURLCreateWithString(*MEMORY[0x1E695E480], a3, 0);
    if (v16)
    {
      v17 = v16;
      v18 = FigCFURLCreateCacheKey();
      CFRelease(v17);
    }

    else
    {
      v18 = 0;
    }

    v19 = CFURLCreateWithString(v15, v14, 0);
    if (v19)
    {
      v20 = v19;
      v21 = FigCFURLCreateCacheKey();
      CFRelease(v20);
      if (v18 && v21)
      {
        v22 = CFStringCompare(v18, v21, 0) == kCFCompareEqualTo;
LABEL_22:
        CFRelease(v18);
        v23 = v22;
LABEL_23:
        if (v21)
        {
          CFRelease(v21);
        }

        if (!v23)
        {
          return 0;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v21 = 0;
    }

    v22 = 0;
    v23 = 0;
    if (!v18)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (CFStringCompare(a3, v13, 0))
  {
    return 0;
  }

LABEL_26:
  if (!a5)
  {
    return 0;
  }

  if (CFDictionaryContainsKey(a5, @"ETag"))
  {
    v24 = CFDictionaryGetValue(a5, @"ETag");
    result = CFDictionaryGetValue(a1, @"ETag");
    if (!result)
    {
      return result;
    }

    v26 = result;
    result = v24;
    return CFEqual(result, v26);
  }

  result = CFDictionaryContainsKey(a5, @"Last-Modified");
  if (result)
  {
    v27 = CFDictionaryGetValue(a5, @"Last-Modified");
    result = CFDictionaryGetValue(a1, @"Last-Modified");
    if (result)
    {
      v26 = v27;
      return CFEqual(result, v26);
    }
  }

  return result;
}

uint64_t FigCFHTTPVIAHeaderIsCacheHit(const __CFString *a1)
{
  location = CFStringFind(a1, @"[", 0).location;
  v3 = CFStringFind(a1, @"]", 0).location + ~location;
  v4 = v3 > 0x18;
  v5 = (1 << v3) & 0x1000060;
  if (v4 || v5 == 0)
  {
    return 0xFFFFFFFFLL;
  }

  CharacterAtIndex = CFStringGetCharacterAtIndex(a1, location + 4);
  return CharacterAtIndex == 72 || CharacterAtIndex == 82;
}

uint64_t FigCFHTTPCreateCFErrorFromHTTPStatusCode(uint64_t a1, CFErrorRef *a2)
{
  code = 0;
  cf = 0;
  if (!a1)
  {
    a1 = 200;
  }

  FigCFHTTPCopyErrorCodeAndCommentForHTTPStatusCode(a1, &code, &cf);
  v3 = 0;
  v4 = 0;
  if (code)
  {
    v5 = cf == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    goto LABEL_9;
  }

  v6 = *MEMORY[0x1E695E480];
  v4 = CFDictionaryCreate(*MEMORY[0x1E695E480], MEMORY[0x1E695E620], &cf, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v4)
  {
    v3 = CFErrorCreate(v6, @"CoreMediaErrorDomain", code, v4);
    if (v3)
    {
LABEL_9:
      v7 = 0;
      *a2 = v3;
      goto LABEL_10;
    }

    FigCFHTTPCreateCFErrorFromHTTPStatusCode_cold_1(&code_4);
  }

  else
  {
    FigCFHTTPCreateCFErrorFromHTTPStatusCode_cold_2(&code_4);
  }

  v7 = code_4;
LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v7;
}

uint64_t FigCFHTTPCopyErrorCodeAndCommentForHTTPStatusCode(uint64_t a1, _DWORD *a2, void *a3)
{
  if (a1 > 408)
  {
    if (a1 > 499)
    {
      if (a1 > 502)
      {
        if (a1 == 503)
        {
          fig_log_get_emitter();
          v7 = FigSignalErrorAtGM();
          v6 = @"HTTP 503: Service Unavailable";
          goto LABEL_49;
        }

        if (a1 != 504)
        {
          goto LABEL_59;
        }

        fig_log_get_emitter();
        v7 = FigSignalErrorAtGM();
        v6 = @"HTTP 504: Gateway Timeout";
        if (!a2)
        {
          goto LABEL_51;
        }
      }

      else if (a1 == 500)
      {
        fig_log_get_emitter();
        v7 = FigSignalErrorAtGM();
        v6 = @"HTTP 500: Internal Server Error";
        if (!a2)
        {
          goto LABEL_51;
        }
      }

      else
      {
        if (a1 != 502)
        {
          goto LABEL_59;
        }

        fig_log_get_emitter();
        v7 = FigSignalErrorAtGM();
        v6 = @"HTTP 502: Bad Gateway";
        if (!a2)
        {
          goto LABEL_51;
        }
      }
    }

    else if (a1 > 415)
    {
      if (a1 == 416)
      {
        fig_log_get_emitter();
        v7 = FigSignalErrorAtGM();
        v6 = @"HTTP 416: Requested Range Not Satisfiable";
        if (!a2)
        {
          goto LABEL_51;
        }
      }

      else
      {
        if (a1 != 418)
        {
          goto LABEL_59;
        }

        fig_log_get_emitter();
        v7 = FigSignalErrorAtGM();
        v6 = @"HTTP 418: Teapot";
        if (!a2)
        {
          goto LABEL_51;
        }
      }
    }

    else if (a1 == 409)
    {
      fig_log_get_emitter();
      v7 = FigSignalErrorAtGM();
      v6 = @"HTTP 409: Conflict";
      if (!a2)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (a1 != 410)
      {
        goto LABEL_59;
      }

      fig_log_get_emitter();
      v7 = FigSignalErrorAtGM();
      v6 = @"HTTP 410: Gone";
      if (!a2)
      {
        goto LABEL_51;
      }
    }

LABEL_50:
    *a2 = v7;
    goto LABEL_51;
  }

  if (a1 > 400)
  {
    if (a1 > 403)
    {
      if (a1 == 404)
      {
        fig_log_get_emitter();
        v7 = FigSignalErrorAtGM();
        v6 = @"HTTP 404: File Not Found";
        if (!a2)
        {
          goto LABEL_51;
        }
      }

      else
      {
        if (a1 != 407)
        {
          goto LABEL_59;
        }

        fig_log_get_emitter();
        v7 = FigSignalErrorAtGM();
        v6 = @"HTTP 407: Proxy Authentication Required";
        if (!a2)
        {
          goto LABEL_51;
        }
      }
    }

    else if (a1 == 401)
    {
      fig_log_get_emitter();
      v7 = FigSignalErrorAtGM();
      v6 = @"HTTP 401: Unauthorized";
      if (!a2)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (a1 != 403)
      {
        goto LABEL_59;
      }

      fig_log_get_emitter();
      v7 = FigSignalErrorAtGM();
      v6 = @"HTTP 403: Forbidden";
      if (!a2)
      {
        goto LABEL_51;
      }
    }

    goto LABEL_50;
  }

  v6 = 0;
  v7 = 0;
  if (a1 <= 301)
  {
    if (a1 != 200 && a1 != 206)
    {
      goto LABEL_59;
    }

LABEL_49:
    if (!a2)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  if (a1 == 302 || a1 == 304)
  {
    goto LABEL_49;
  }

LABEL_59:
  fig_log_get_emitter();
  v7 = FigSignalErrorAtGM();
  v6 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"HTTP %d: (unhandled)", a1);
  if (a2)
  {
    goto LABEL_50;
  }

LABEL_51:
  if (a3)
  {
    if (v6)
    {
      v8 = CFRetain(v6);
    }

    else
    {
      v8 = 0;
    }

    *a3 = v8;
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return 0;
}

uint64_t FigCFHTTPCreateHTTPRequestOptionsFromAssetCreationOptions(const __CFAllocator *a1, uint64_t a2, __CFDictionary **a3)
{
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v6 = Mutable;
    if (a2)
    {
      FigCFDictionarySetValueFromKeyInDict();
      FigCFDictionarySetValueFromKeyInDict();
      FigCFDictionarySetValueFromKeyInDict();
      FigCFDictionarySetValueFromKeyInDict();
      FigCFDictionarySetValueFromKeyInDict();
      FigCFDictionarySetValueFromKeyInDict();
      FigCFDictionarySetValueFromKeyInDict();
      FigCFDictionarySetValueFromKeyInDict();
      FigCFDictionarySetValueFromKeyInDict();
      FigCFDictionarySetValueFromKeyInDict();
      FigCFDictionarySetValueFromKeyInDict();
      FigCFDictionarySetValueFromKeyInDict();
      FigCFDictionarySetValueFromKeyInDict();
      FigCFDictionarySetValueFromKeyInDict();
      FigCFDictionarySetValueFromKeyInDict();
      if (!FigCFDictionaryGetValue())
      {
        Value = FigCFDictionaryGetValue();
        v8 = FigCFHTTPCopyClientBundleIdentifier(Value);
        if (v8)
        {
          v9 = v8;
          CFDictionarySetValue(v6, @"FHRP_ClientBundleIdentifier", v8);
          CFRelease(v9);
        }
      }
    }

    result = 0;
    *a3 = v6;
  }

  else
  {
    FigCFHTTPCreateHTTPRequestOptionsFromAssetCreationOptions_cold_1(&v11);
    return v11;
  }

  return result;
}

uint64_t FigCFHTTPCreateCommonHTTPHeadersFromAssetCreationOptions(const __CFAllocator *a1, uint64_t a2, unint64_t a3, __CFDictionary **a4)
{
  if (a2)
  {
    DictionaryValue = FigCFDictionaryGetDictionaryValue();
  }

  else
  {
    DictionaryValue = 0;
  }

  if (a3 | DictionaryValue)
  {
    if (DictionaryValue)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(a1, 0, DictionaryValue);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    v9 = MutableCopy;
    if (!MutableCopy)
    {
      FigCFHTTPCreateCommonHTTPHeadersFromAssetCreationOptions_cold_1(&v11);
      return v11;
    }

    if (a3)
    {
      CFDictionaryAddValue(MutableCopy, @"X-Playback-Session-Id", a3);
    }
  }

  else
  {
    v9 = 0;
  }

  result = 0;
  *a4 = v9;
  return result;
}