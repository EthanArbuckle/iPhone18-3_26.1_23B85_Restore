BOOL url_set_position(uint64_t a1, CFIndex a2)
{
  Length = CFDataGetLength(*(a1 + 8));
  if (Length >= a2)
  {
    *(a1 + 16) = a2;
  }

  return Length >= a2;
}

unint64_t url_put_bytes(uint64_t a1, const UInt8 *a2, unint64_t a3)
{
  Length = CFDataGetLength(*(a1 + 8));
  v7.location = *(a1 + 16);
  v8 = Length - v7.location;
  if (Length <= v7.location)
  {
    v10 = *(a1 + 8);
    v12 = a2;
    v11 = a3;
    goto LABEL_8;
  }

  if (v8 >= a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = Length - v7.location;
  }

  v7.length = v9;
  CFDataReplaceBytes(*(a1 + 8), v7, a2, v9);
  if (v8 < a3)
  {
    v10 = *(a1 + 8);
    v11 = a3 - v9;
    v12 = &a2[v9];
LABEL_8:
    CFDataAppendBytes(v10, v12, v11);
  }

  *(a1 + 16) += a3;
  return a3;
}

CGDataConsumerRef CGDataConsumerCreateWithCFData(CGDataConsumerRef data)
{
  if (data)
  {
    v1 = data;
    v2 = malloc_type_malloc(0x10uLL, 0x1020040EDED9539uLL);
    v3 = CFRetain(v1);
    *v2 = v3;
    if (v3)
    {
      v2[1] = 0;
      v4.putBytes = 1;
      v4.releaseConsumer = data_put_bytes;
      v5 = 0;
      v6 = data_set_position;
      v7 = data_release;
      v8 = 0;
      return CGDataConsumerCreate(v2, &v4);
    }

    else
    {
      free(v2);
      return 0;
    }
  }

  return data;
}

void data_release(CFTypeRef *a1)
{
  CFRelease(*a1);

  free(a1);
}

BOOL data_set_position(uint64_t a1, CFIndex a2)
{
  Length = CFDataGetLength(*a1);
  if (Length >= a2)
  {
    *(a1 + 8) = a2;
  }

  return Length >= a2;
}

unint64_t data_put_bytes(uint64_t a1, const UInt8 *a2, unint64_t a3)
{
  Length = CFDataGetLength(*a1);
  v7.location = *(a1 + 8);
  v8 = Length - v7.location;
  if (Length <= v7.location)
  {
    v10 = *a1;
    v12 = a2;
    v11 = a3;
    goto LABEL_8;
  }

  if (v8 >= a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = Length - v7.location;
  }

  v7.length = v9;
  CFDataReplaceBytes(*a1, v7, a2, v9);
  if (v8 < a3)
  {
    v10 = *a1;
    v11 = a3 - v9;
    v12 = &a2[v9];
LABEL_8:
    CFDataAppendBytes(v10, v12, v11);
  }

  *(a1 + 8) += a3;
  return a3;
}

CGDataConsumerRef CGDataConsumerRetain(CGDataConsumerRef consumer)
{
  if (consumer)
  {
    CFRetain(consumer);
  }

  return consumer;
}

void CGDataConsumerRelease(CGDataConsumerRef consumer)
{
  if (consumer)
  {
    CFRelease(consumer);
  }
}

uint64_t CGDataConsumerPutBytes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  if (*(a1 + 56))
  {
    return 0;
  }

  v3 = *(a1 + 72);
  if (!v3)
  {
    return 0;
  }

  v4 = *(a1 + 40);
  v5 = *(a1 + 48) + a3;
  *(a1 + 48) = v5;
  if (v5 > v4)
  {
    *(a1 + 40) = v5;
  }

  return v3(*(a1 + 16));
}

_BYTE *CGDataConsumerVPrintf(_BYTE *result, char *a2, va_list a3)
{
  if (result)
  {
    v3 = result;
    if ((result[56] & 1) != 0 || !*(result + 9))
    {
      return 0;
    }

    if (*(result + 3) || (*(result + 4) = 1024, result = malloc_type_malloc(0x400uLL, 0x2E7CDEABuLL), (*(v3 + 24) = result) != 0))
    {
      while (1)
      {
        v5 = vsnprintf_l(*(v3 + 24), *(v3 + 32), 0, a2, a3);
        if ((v5 & 0x80000000) != 0)
        {
          break;
        }

        v6 = v5 + 1;
        if (*(v3 + 32) >= v6)
        {
          v7 = *(v3 + 40);
          v8 = *(v3 + 48) + v5;
          *(v3 + 48) = v8;
          if (v8 > v7)
          {
            *(v3 + 40) = v8;
          }

          return (*(v3 + 72))(*(v3 + 16), *(v3 + 24), v5);
        }

        *(v3 + 32) = v6;
        *(v3 + 24) = malloc_type_realloc(*(v3 + 24), v6, 0xACA66F76uLL);
      }

      return 0;
    }
  }

  return result;
}

uint64_t CGDataConsumerGetByteCount(uint64_t result)
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

uint64_t CGDataConsumerSetPosition(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if (*(result + 56))
    {
      return 0;
    }

    v3 = *(result + 88);
    if (!v3)
    {
      return 0;
    }

    else
    {
      result = v3(*(result + 16));
      if (result)
      {
        *(v2 + 48) = a2;
        return 1;
      }
    }
  }

  return result;
}

uint64_t CGDataConsumerGetPosition(uint64_t result)
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

uint64_t CGDataConsumerFlush(uint64_t result)
{
  if (result && (*(result + 56) & 1) == 0)
  {
    v1 = *(result + 80);
    if (v1)
    {
      return v1(*(result + 16));
    }
  }

  return result;
}

uint64_t CGDataConsumerGetURL(uint64_t result)
{
  if (result)
  {
    if (*(result + 72) == url_put_bytes && (v1 = *(result + 16)) != 0)
    {
      return *v1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t propertyListHash(uint64_t a1)
{
  v1 = *(a1 + 44);
  v2 = *(a1 + 104);
  v3 = *v2;
  if (*v2)
  {
    v4 = v2 + 1;
    do
    {
      v1 = 257 * v1 + v3;
      v5 = *v4++;
      v3 = v5;
    }

    while (v5);
  }

  return v1;
}

uint64_t propertyListEqual(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v4 = *(a1 + 44);
  if (v4 != *(a2 + 44))
  {
    return 0;
  }

  v5 = strcmp(*(a1 + 104), *(a2 + 104));
  if (v4 != 1 || v5 != 0)
  {
    return 0;
  }

  result = CGStyleEqualToStyle(*(a1 + 48), *(a2 + 48));
  if (result)
  {
    if (*(a1 + 56) == *(a2 + 56))
    {
      return vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 64), *(a2 + 64)), vceqq_f64(*(a1 + 80), *(a2 + 80))))) & (*(a1 + 96) == *(a2 + 96));
    }

    return 0;
  }

  return result;
}

_DWORD *propertyListRetain(uint64_t a1, _DWORD *a2)
{
  result = a2;
  if (a2)
  {
    ++*a2;
  }

  return result;
}

_BYTE *emitPropertyListDefinition(_BYTE *result, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((result[40] & 1) == 0)
  {
    v9 = result;
    v11 = *(result + 1);
    v10 = *(result + 2);
    if (!v10)
    {
      v10 = PDFXRefTableAddObject(*(v11 + 504));
      *(v9 + 2) = v10;
    }

    PDFDocumentBeginObject(v11, v10, a3, a4, a5, a6, a7, a8);
    PDFDocumentPrintf(*(v9 + 1), "<<", v12, v13, v14, v15, v16, v17, v113);
    PDFDocumentPrintf(*(v9 + 1), "/Type /PropertyList", v18, v19, v20, v21, v22, v23, v114);
    if (*(v9 + 11) == 1)
    {
      PDFDocumentPrintf(*(v9 + 1), "/%s", v24, v25, v26, v27, v28, v29, *(v9 + 13));
      v36 = *(v9 + 6);
      v37 = *(v9 + 1);
      if (v36)
      {
        PDFDocumentPrintf(v37, "<<", v30, v31, v32, v33, v34, v35, v116);
        PDFDocumentPrintf(*(v9 + 1), "/Type /Style", v38, v39, v40, v41, v42, v43, v117);
        PDFDocumentPrintf(*(v9 + 1), "/Subtype /Shadow", v44, v45, v46, v47, v48, v49, v118);
        v50 = v36[8];
        v51 = __sincos_stret((v36[6] + -180.0) * 3.14159265 / 180.0);
        PDFDocumentPrintf(*(v9 + 1), "/Offset [ %f %f ]", v52, v53, v54, v55, v56, v57, COERCE__INT64(*(v9 + 9) * (v50 * v51.__sinval) + *(v9 + 7) * (v50 * v51.__cosval)));
        v58 = v36[9];
        if (v58 != 0.0)
        {
          v59.f64[0] = 0.0;
          v59.f64[1] = v36[9];
          v60 = vmlaq_n_f64(vmulq_n_f64(v59, *(v9 + 9)), *&v58, *(v9 + 7));
          v61 = vmlaq_n_f64(vmulq_n_f64(v59, *(v9 + 10)), *&v59.f64[1], *(v9 + 8));
          v62 = vsqrtq_f64(vmlaq_f64(vmulq_f64(v61, v61), v60, v60));
          if (v62.f64[0] <= v62.f64[1])
          {
            v62.f64[0] = v62.f64[1];
          }

          PDFDocumentPrintf(*(v9 + 1), "/Radius %f", v30, v31, v32, v33, v34, v35, *&v62.f64[0]);
        }

        if (*(v9 + 7) != 1.0 || (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*(v9 + 4)), vceqq_f64(*(v9 + 5), xmmword_18439C630))))) & 1) != 0 || *(v9 + 12) != 0.0)
        {
          PDFDocumentPrintf(*(v9 + 1), "/BMatrix %m", v30, v31, v32, v33, v34, v35, (v9 + 56));
        }

        v63 = *(v9 + 6);
        if (v63)
        {
          v64 = *(v63 + 24);
          if (v64)
          {
            PDFDocumentPrintf(*(v9 + 1), "/ColorSpace", v30, v31, v32, v33, v34, v35, v116);
            if ((v64 & 0x8000000000000000) != 0)
            {
              ColorSpace = CGTaggedColorGetColorSpace(v64, v65, v66, v67, v68, v69, v70, v71);
            }

            else
            {
              ColorSpace = *(v64 + 24);
            }

            v74 = PDFDocumentResolveColorSpace(*(v9 + 1), ColorSpace);
            v75 = PDFDocumentAddColorSpace(*(v9 + 1), v74);
            PDFColorSpaceEmitReference(v75, v76, v77, v78, v79, v80, v81, v82);
            PDFDocumentPrintf(*(v9 + 1), "/Color [", v83, v84, v85, v86, v87, v88, v119);
            if ((v64 & 0x8000000000000000) != 0)
            {
              NumberOfComponents = CGTaggedColorGetNumberOfComponents(v64, v89, v90, v91, v92, v93, v94, v95);
            }

            else
            {
              NumberOfComponents = *(v64 + 56);
            }

            Components = CGColorGetComponents(v64);
            if (NumberOfComponents)
            {
              v104 = Components;
              do
              {
                v105 = *v104++;
                PDFDocumentPrintf(*(v9 + 1), "%f", v98, v99, v100, v101, v102, v103, v105);
                --NumberOfComponents;
              }

              while (NumberOfComponents);
            }

            PDFDocumentPrintf(*(v9 + 1), "]", v98, v99, v100, v101, v102, v103, v120);
          }
        }

        v37 = *(v9 + 1);
        v73 = ">>";
      }

      else
      {
        v73 = "/None";
      }

      PDFDocumentPrintf(v37, v73, v30, v31, v32, v33, v34, v35, v116);
    }

    PDFDocumentPrintf(*(v9 + 1), ">>", v24, v25, v26, v27, v28, v29, v115);
    result = PDFDocumentEndObject(*(v9 + 1), v106, v107, v108, v109, v110, v111, v112);
    v9[40] = 1;
  }

  *a2 = 1;
  return result;
}

void *CGIOSurfaceContextCreateWithOptions(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, int a7, uint64_t a8)
{
  if (!a1)
  {
    return 0;
  }

  if (iosurface_context_vtable_once != -1)
  {
    dispatch_once_f(&iosurface_context_vtable_once, 0, load_iosurface_context_vtable);
  }

  v16 = vtable;
  if (!vtable)
  {
    return 0;
  }

  v17 = malloc_type_malloc(0x38uLL, 0x1020040D69D3D70uLL);
  *v17 = a2;
  v17[1] = a3;
  v17[2] = CFRetain(a1);
  v17[3] = a4;
  v17[4] = a5;
  if (a6)
  {
    CFRetain(a6);
  }

  v17[5] = a6;
  *(v17 + 12) = a7;
  v20 = CGContextCreateWithDelegateAndInfo(0, 8, 0, 0, v17, iosurface_context_finalize, v18, v19);
  v21 = (*(v16 + 8))(v17, a8);
  v20[5] = v21;
  if (!v21)
  {
    CFRelease(v20);
    return 0;
  }

  return v20;
}

void iosurface_context_finalize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (*(a1 + 16) == 1129601108)
    {
      v8 = *(a1 + 32);
      if (v8)
      {
        v9 = *(v8 + 16);
        if (v9)
        {
          CFRelease(v9);
        }

        CGColorSpaceRelease(*(v8 + 40));

        free(v8);
      }
    }

    else
    {

      handle_invalid_context("iosurface_context_finalize", a1, a3, a4, a5, a6, a7, a8);
    }
  }
}

void *load_iosurface_context_vtable()
{
  result = dlopen("/System/Library/Frameworks/QuartzCore.framework/QuartzCore", 1);
  if (result)
  {
    result = dlsym(result, "CAIOSurfaceContextVTable");
    vtable = result;
  }

  return result;
}

void CGIOSurfaceContextSetDisplayMask(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1;
  if (a1 && *(a1 + 16) == 1129601108 && *(a1 + 24) == 8)
  {
    if (iosurface_context_vtable_once != -1)
    {
      dispatch_once_f(&iosurface_context_vtable_once, 0, load_iosurface_context_vtable);
      v9 = a1;
    }

    v10 = *(vtable + 16);
    v11 = *(v9 + 40);

    v10(v11);
  }

  else
  {

    handle_invalid_context("CGIOSurfaceContextSetDisplayMask", a1, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t CGIOSurfaceContextGetDisplayMask(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  if (a1 && *(a1 + 16) == 1129601108 && *(a1 + 24) == 8)
  {
    if (iosurface_context_vtable_once != -1)
    {
      dispatch_once_f(&iosurface_context_vtable_once, 0, load_iosurface_context_vtable);
      v8 = a1;
    }

    v9 = *(vtable + 24);
    v10 = *(v8 + 40);

    return v9(v10);
  }

  else
  {
    handle_invalid_context("CGIOSurfaceContextGetDisplayMask", a1, a3, a4, a5, a6, a7, a8);
    return 0;
  }
}

void CGIOSurfaceContextSetGPURegistryID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  if (a1 && *(a1 + 16) == 1129601108 && *(a1 + 24) == 8)
  {
    if (iosurface_context_vtable_once != -1)
    {
      dispatch_once_f(&iosurface_context_vtable_once, 0, load_iosurface_context_vtable);
      v8 = a1;
    }

    if (*vtable >= 3)
    {
      v9 = *(vtable + 56);
      v10 = *(v8 + 40);

      v9(v10);
    }
  }

  else
  {

    handle_invalid_context("CGIOSurfaceContextSetGPURegistryID", a1, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t CGIOSurfaceContextGetGPURegistryID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  if (!a1 || *(a1 + 16) != 1129601108 || *(a1 + 24) != 8)
  {
    handle_invalid_context("CGIOSurfaceContextGetGPURegistryID", a1, a3, a4, a5, a6, a7, a8);
    return 0;
  }

  if (iosurface_context_vtable_once != -1)
  {
    dispatch_once_f(&iosurface_context_vtable_once, 0, load_iosurface_context_vtable);
    v8 = a1;
  }

  if (*vtable < 3)
  {
    return 0;
  }

  v9 = *(vtable + 64);
  v10 = *(v8 + 40);

  return v9(v10);
}

void CGIOSurfaceContextInvalidateSurface(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  if (a1 && *(a1 + 16) == 1129601108 && *(a1 + 24) == 8)
  {
    if (iosurface_context_vtable_once != -1)
    {
      dispatch_once_f(&iosurface_context_vtable_once, 0, load_iosurface_context_vtable);
      v8 = a1;
    }

    if (*vtable >= 4)
    {
      v9 = *(vtable + 72);
      v10 = *(v8 + 40);

      v9(v10);
    }
  }

  else
  {

    handle_invalid_context("CGIOSurfaceContextInvalidateSurface", a1, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t CGIOSurfaceContextGetWidth(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108 && *(a1 + 24) == 8)
  {
    return **(a1 + 32);
  }

  handle_invalid_context("CGIOSurfaceContextGetWidth", a1, a3, a4, a5, a6, a7, a8);
  return 0;
}

uint64_t CGIOSurfaceContextGetHeight(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108 && *(a1 + 24) == 8)
  {
    return *(*(a1 + 32) + 8);
  }

  handle_invalid_context("CGIOSurfaceContextGetHeight", a1, a3, a4, a5, a6, a7, a8);
  return 0;
}

uint64_t CGIOSurfaceContextGetSurface(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108 && *(a1 + 24) == 8)
  {
    return *(*(a1 + 32) + 16);
  }

  handle_invalid_context("CGIOSurfaceContextGetSurface", a1, a3, a4, a5, a6, a7, a8);
  return 0;
}

uint64_t CGIOSurfaceContextGetBitsPerComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108 && *(a1 + 24) == 8)
  {
    return *(*(a1 + 32) + 24);
  }

  handle_invalid_context("CGIOSurfaceContextGetBitsPerComponent", a1, a3, a4, a5, a6, a7, a8);
  return 0;
}

uint64_t CGIOSurfaceContextGetBitsPerPixel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108 && *(a1 + 24) == 8)
  {
    return *(*(a1 + 32) + 32);
  }

  handle_invalid_context("CGIOSurfaceContextGetBitsPerPixel", a1, a3, a4, a5, a6, a7, a8);
  return 0;
}

uint64_t CGIOSurfaceContextGetColorSpace(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108 && *(a1 + 24) == 8)
  {
    return *(*(a1 + 32) + 40);
  }

  handle_invalid_context("CGIOSurfaceContextGetColorSpace", a1, a3, a4, a5, a6, a7, a8);
  return 0;
}

uint64_t CGIOSurfaceContextGetBitmapInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108 && *(a1 + 24) == 8)
  {
    return *(*(a1 + 32) + 48);
  }

  handle_invalid_context("CGIOSurfaceContextGetBitmapInfo", a1, a3, a4, a5, a6, a7, a8);
  return 0;
}

uint64_t CGIOSurfaceContextCreateImage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  if (a1 && *(a1 + 16) == 1129601108 && *(a1 + 24) == 8)
  {
    if (iosurface_context_vtable_once != -1)
    {
      dispatch_once_f(&iosurface_context_vtable_once, 0, load_iosurface_context_vtable);
      v8 = a1;
    }

    v9 = *(vtable + 32);
    v12 = v8 + 32;
    v11 = *(v8 + 32);
    v10 = *(v12 + 8);

    return v9(v10, v11);
  }

  else
  {
    handle_invalid_context("CGIOSurfaceContextCreateImage", a1, a3, a4, a5, a6, a7, a8);
    return 0;
  }
}

uint64_t CGIOSurfaceContextCreateImageReference(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  if (!a1 || *(a1 + 16) != 1129601108 || *(a1 + 24) != 8)
  {
    handle_invalid_context("CGIOSurfaceContextCreateImageReference", a1, a3, a4, a5, a6, a7, a8);
    return 0;
  }

  if (iosurface_context_vtable_once != -1)
  {
    dispatch_once_f(&iosurface_context_vtable_once, 0, load_iosurface_context_vtable);
    v8 = a1;
  }

  if (*vtable < 1)
  {
    return 0;
  }

  v9 = *(vtable + 40);
  v12 = v8 + 32;
  v11 = *(v8 + 32);
  v10 = *(v12 + 8);

  return v9(v10, v11);
}

uint64_t CGIOSurfaceContextGetSizeLimits(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || *(a1 + 16) != 1129601108 || *(a1 + 24) != 8)
  {
    handle_invalid_context("CGIOSurfaceContextGetSizeLimits", a1, a3, a4, a5, a6, a7, a8);
    return 0;
  }

  if (iosurface_context_vtable_once != -1)
  {
    dispatch_once_f(&iosurface_context_vtable_once, 0, load_iosurface_context_vtable);
  }

  if (*vtable < 2)
  {
    return 0;
  }

  v8 = *(vtable + 48);

  return v8();
}

int8x16_t **vec::template_mark_pixelmask_row<(CGCompositeOperation)23,_rgba8_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, char **a4, int a5, int a6, int a7, int a8, int8x16_t a9, double a10, double a11, double a12, uint16x8_t a13, uint64_t a14, unint64_t a15)
{
  v16 = a15;
  v17 = *result;
  v18 = *a3;
  v19 = *a2;
  v20 = *a4;
  if (a15 < 4)
  {
    goto LABEL_40;
  }

  if (a7)
  {
    v21 = 0;
  }

  else
  {
    v21 = -1;
  }

  v22.i64[0] = 0xFF000000FF000000;
  v22.i64[1] = 0xFF000000FF000000;
  a9 = vandq_s8(vdupq_n_s8(v21), v22);
  if (a8)
  {
    v23 = 0;
  }

  else
  {
    v23 = -1;
  }

  v24 = vandq_s8(vdupq_n_s8(v23), v22);
  v25 = 4 * a6;
  v26 = 4 * v25;
  v27 = vdupq_n_s16(0xFE01u);
  a13.i64[0] = -1;
  a13.i64[1] = -1;
  while (1)
  {
    v28 = *v20;
    if (*v20 == -1)
    {
      v35 = &v20[v16];
      v36 = v20;
      do
      {
        v37 = v36++;
      }

      while (v36 <= v35 && (vminvq_u8(vceqq_s8(*v37, a13)) & 0x80) != 0);
      do
      {
        v38 = v37;
        v37 = (v37 + 4);
      }

      while (v37 <= v35 && v38->i32[0] == -1);
      if (v38 < v35)
      {
        while (v38->u8[0] == 255)
        {
          v38 = (v38 + 1);
          if (v38 >= v35)
          {
            v38 = &v20[v16];
            break;
          }
        }
      }

      v39 = v38 - v20;
      v40 = v38 - v20;
      do
      {
        v41 = vorrq_s8(*v17, a9);
        v42 = vorrq_s8(*v19, v24);
        v43 = vqtbl1q_s8(v41, xmmword_18439C790);
        v44 = vqtbl1q_s8(v42, xmmword_18439C790);
        v45 = vminq_u8(v41, v43);
        v46 = vminq_u8(v42, v44);
        v47 = vmvnq_s8(v46);
        v48 = vcgtq_u8((*&v46 & __PAIR128__(0xFFFFFF00FFFFFFLL, 0xFFFFFF00FFFFFFLL)), v47);
        v49 = vabdq_u8(v47, (*&v46 & __PAIR128__(0xFFFFFF00FFFFFFLL, 0xFFFFFF00FFFFFFLL)));
        v50 = vmull_u8(*v45.i8, *v49.i8);
        v51 = vmull_high_u8(v45, v49);
        v52 = vminq_u16(v50, v27);
        v53 = vminq_u16(v51, v27);
        v54 = vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v52, v52, 8uLL), 8uLL), vrsraq_n_u16(v53, v53, 8uLL), 8uLL);
        v55 = vbslq_s8(v48, vqsubq_u8(v46, v54), vqaddq_u8(v46, v54));
        v15 = vceqzq_s8(v43);
        *v19 = vbslq_s8(v15, v42, vbslq_s8(vceqzq_s8(v44), v41, vminq_u8(v55, vqtbl1q_s8(v55, xmmword_18439C790))));
        v20 += v25;
        v40 -= 4;
        v17 = (v17 + v26);
        v19 = (v19 + v26);
      }

      while (v40 > 3);
      v16 = v16 - v39 + v40;
      goto LABEL_37;
    }

    if (v28)
    {
      break;
    }

    v29 = &v20[v16];
    v30 = v20;
    do
    {
      v31 = v30++;
    }

    while (v30 <= v29 && (vminvq_u8(vceqzq_s8(*v31)) & 0x80) != 0);
    do
    {
      v32 = v31;
      v31 = (v31 + 4);
    }

    while (v31 <= v29 && !v32->i32[0]);
    if (v32 < v29)
    {
      while (!v32->i8[0])
      {
        v32 = (v32 + 1);
        if (v32 >= v29)
        {
          v32 = &v20[v16];
          break;
        }
      }
    }

    v33 = v32 - v20;
    v34 = (v32 - v20) * a6;
    v17 = (v17 + 4 * v34);
    v19 = (v19 + 4 * v34);
    v20 += v34;
    v16 -= v33;
LABEL_37:
    if (v16 <= 3)
    {
      goto LABEL_40;
    }
  }

  v56 = 0;
  while (1)
  {
    v15.i32[0] = v28;
    v57 = vqtbl1q_s8(v15, xmmword_18439C7A0);
    v58 = vorrq_s8(*(v17 + v56), a9);
    v59 = vorrq_s8(vbicq_s8(v24, vceqzq_s8(v57)), *(v19 + v56));
    v93.val[1] = vmull_u8(*v58.i8, *v57.i8);
    v60 = vmull_high_u8(v58, v57);
    v61 = vminq_u16(v93.val[1], v27);
    v62 = vminq_u16(v60, v27);
    v93.val[0] = vrsraq_n_u16(v61, v61, 8uLL);
    v63 = vrsraq_n_u16(v62, v62, 8uLL);
    *v93.val[0].i8 = vqrshrn_n_u16(v93.val[0], 8uLL);
    *v93.val[1].i8 = vqrshrn_n_u16(v63, 8uLL);
    v64 = vqtbl2q_s8(v93, xmmword_18439C7B0);
    v93.val[0] = vqrshrn_high_n_u16(*v93.val[0].i8, v63, 8uLL);
    v65 = vqtbl1q_s8(v59, xmmword_18439C790);
    v93.val[1] = vminq_u8(v93.val[0], v64);
    v66 = vminq_u8(v59, v65);
    v67 = vmvnq_s8(v66);
    v68 = vcgtq_u8((*&v66 & __PAIR128__(0xFFFFFF00FFFFFFLL, 0xFFFFFF00FFFFFFLL)), v67);
    v69 = vabdq_u8(v67, (*&v66 & __PAIR128__(0xFFFFFF00FFFFFFLL, 0xFFFFFF00FFFFFFLL)));
    v70 = vmull_u8(*v93.val[1].i8, *v69.i8);
    v93.val[1] = vmull_high_u8(v93.val[1], v69);
    v71 = vminq_u16(v70, v27);
    v93.val[1] = vminq_u16(v93.val[1], v27);
    v72 = vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v71, v71, 8uLL), 8uLL), vrsraq_n_u16(v93.val[1], v93.val[1], 8uLL), 8uLL);
    v93.val[1] = vbslq_s8(v68, vqsubq_u8(v66, v72), vqaddq_u8(v66, v72));
    v73 = vbslq_s8(vceqzq_s8(v65), v93.val[0], vminq_u8(v93.val[1], vqtbl1q_s8(v93.val[1], xmmword_18439C790)));
    v15 = vceqzq_s8(v64);
    *(v19 + v56) = vbslq_s8(v15, v59, v73);
    v20 += v25;
    v16 -= 4;
    if (v16 < 4)
    {
      break;
    }

    v28 = *v20;
    v56 += v26;
    if ((*v20 - 1) >= 0xFFFFFFFE)
    {
      v17 = (v17 + v56);
      v19 = (v19 + v56);
      goto LABEL_37;
    }
  }

  v17 = (v17 + v26 + v56);
  v19 = (v19 + v26 + v56);
LABEL_40:
  v74 = v16 + a14;
  if (v74)
  {
    if (a7)
    {
      v75 = 0;
    }

    else
    {
      v75 = -1;
    }

    *a9.i8 = vand_s8(vdup_n_s8(v75), 0xFF000000FF000000);
    if (a8)
    {
      v76 = 0;
    }

    else
    {
      v76 = -1;
    }

    v77 = vand_s8(vdup_n_s8(v76), 0xFF000000FF000000);
    v78 = vdupq_n_s16(0xFE01u);
    do
    {
      a13.i32[0] = v17->i32[0];
      v79 = vmovl_u8(*a13.i8);
      LOBYTE(v80) = v79.i8[0];
      BYTE1(v80) = v79.i8[2];
      BYTE2(v80) = v79.i8[4];
      HIBYTE(v80) = v79.i8[6];
      v79.i32[0] = v19->i32[0];
      v81 = vmovl_u8(*v79.i8);
      LOBYTE(v82) = v81.i8[0];
      BYTE1(v82) = v81.i8[2];
      BYTE2(v82) = v81.i8[4];
      HIBYTE(v82) = v81.i8[6];
      v81.i8[7] = 0;
      v81.i8[0] = *v20;
      v81.i8[1] = *v20;
      v81.i8[2] = *v20;
      *(v81.i32 + 3) = *v20;
      v83 = vorr_s8(vbic_s8(v77, vceqz_s8(*v81.i8)), v82);
      v84 = vminq_u16(vmull_u8(vorr_s8(v80, *a9.i8), *v81.i8), v78);
      a13 = vrsraq_n_u16(v84, v84, 8uLL);
      v85 = vqrshrn_n_u16(a13, 8uLL);
      *a13.i8 = vqtbl1_s8(vqrshrn_high_n_u16(v85, a13, 8uLL), 0x707070703030303);
      *v86.i8 = v83;
      v86.u64[1] = v83;
      *v86.i8 = vqtbl1_s8(v86, 0x707070703030303);
      v87 = vmin_u8(v83, *v86.i8);
      v88 = vmvn_s8(v87);
      v89 = vminq_u16(vmull_u8(vmin_u8(v85, *a13.i8), vabd_u8(v88, (*&v87 & 0xFFFFFF00FFFFFFLL))), v78);
      *v89.i8 = vqrshrn_n_u16(vrsraq_n_u16(v89, v89, 8uLL), 8uLL);
      *v90.i8 = vbsl_s8(vcgt_u8((*&v87 & 0xFFFFFF00FFFFFFLL), v88), vqsub_u8(v87, *v89.i8), vqadd_u8(v87, *v89.i8));
      v90.i64[1] = v90.i64[0];
      *a13.i8 = vbsl_s8(vceqz_s8(*a13.i8), v83, vbsl_s8(vceqz_s8(*v86.i8), v85, vmin_u8(*v90.i8, vqtbl1_s8(v90, 0x707070703030303))));
      *a13.i8 = vmovn_s16(vzip1q_s8(a13, a9));
      v19->i32[0] = a13.i32[0];
      v91 = &v17->i8[4 * a6];
      v20 += a6;
      if (v91 >= v18)
      {
        v92 = -a5;
      }

      else
      {
        v92 = 0;
      }

      v17 = &v91[4 * v92];
      v19 = (v19 + 4 * a6);
      --v74;
    }

    while (v74);
  }

  *result = v17;
  *a3 = v18;
  *a2 = v19;
  *a4 = v20;
  return result;
}

int8x16_t **vec::template_mark_pixelmask_row<(CGCompositeOperation)22,_rgba8_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, char **a4, int a5, int a6, int a7, int a8, int8x16_t a9, double a10, double a11, double a12, double a13, uint8x8_t a14, uint64_t a15, unint64_t a16)
{
  v18 = a16;
  v19 = *result;
  v20 = *a3;
  v21 = *a2;
  v22 = *a4;
  if (a16 < 4)
  {
    goto LABEL_40;
  }

  if (a7)
  {
    v23 = 0;
  }

  else
  {
    v23 = -1;
  }

  v24.i64[0] = 0xFF000000FF000000;
  v24.i64[1] = 0xFF000000FF000000;
  a9 = vandq_s8(vdupq_n_s8(v23), v24);
  if (a8)
  {
    v25 = 0;
  }

  else
  {
    v25 = -1;
  }

  v26 = vandq_s8(vdupq_n_s8(v25), v24);
  v27 = 4 * a6;
  v28 = 4 * v27;
  v29 = vdupq_n_s16(0xFE01u);
  v30.i64[0] = 0xFFFFFFFFFFFFLL;
  v30.i64[1] = 0xFFFFFFFFFFFFLL;
  a14.i32[1] = 117901063;
  v31.i64[0] = -1;
  v31.i64[1] = -1;
  while (1)
  {
    v32 = *v22;
    if (*v22 == -1)
    {
      v39 = &v22[v18];
      v40 = v22;
      do
      {
        v41 = v40++;
      }

      while (v40 <= v39 && (vminvq_u8(vceqq_s8(*v41, v31)) & 0x80) != 0);
      do
      {
        v42 = v41;
        v41 = (v41 + 4);
      }

      while (v41 <= v39 && v42->i32[0] == -1);
      if (v42 < v39)
      {
        while (v42->u8[0] == 255)
        {
          v42 = (v42 + 1);
          if (v42 >= v39)
          {
            v42 = &v22[v18];
            break;
          }
        }
      }

      v43 = v42 - v22;
      v44 = v42 - v22;
      do
      {
        v45 = vorrq_s8(*v19, a9);
        v46 = vorrq_s8(*v21, v26);
        v47 = vqtbl1q_s8(v45, xmmword_18439C790);
        v48 = vqtbl1q_s8(v46, xmmword_18439C790);
        v49 = vminq_u8(v45, v47);
        v50 = vminq_u8(v46, v48);
        v51 = vmvnq_s8(v47);
        v52 = vmvnq_s8(v48);
        v98.val[1] = vqaddq_u16(vqaddq_u16(vabdq_u16(vmull_u8(*v49.i8, *v48.i8), vandq_s8(vmull_u8(*v50.i8, *v47.i8), v30)), vmull_u8(*v50.i8, *v51.i8)), vmull_u8(*v49.i8, *v52.i8));
        v53 = vqaddq_u16(vqaddq_u16(vabdq_u16(vmull_high_u8(v49, v48), vandq_s8(vmull_high_u8(v50, v47), v30)), vmull_high_u8(v50, v51)), vmull_high_u8(v49, v52));
        v54 = vminq_u16(v98.val[1], v29);
        v55 = vminq_u16(v53, v29);
        v98.val[0] = vrsraq_n_u16(v54, v54, 8uLL);
        v56 = vrsraq_n_u16(v55, v55, 8uLL);
        *v98.val[0].i8 = vqrshrn_n_u16(v98.val[0], 8uLL);
        *v98.val[1].i8 = vqrshrn_n_u16(v56, 8uLL);
        v17 = vminq_u8(vqrshrn_high_n_u16(*v98.val[0].i8, v56, 8uLL), vqtbl2q_s8(v98, xmmword_18439C7B0));
        v16 = vceqzq_s8(v47);
        *v21 = vbslq_s8(v16, v46, vbslq_s8(vceqzq_s8(v48), v45, v17));
        v22 += v27;
        v44 -= 4;
        v19 = (v19 + v28);
        v21 = (v21 + v28);
      }

      while (v44 > 3);
      v18 = v18 - v43 + v44;
      goto LABEL_37;
    }

    if (v32)
    {
      break;
    }

    v33 = &v22[v18];
    v34 = v22;
    do
    {
      v35 = v34++;
    }

    while (v34 <= v33 && (vminvq_u8(vceqzq_s8(*v35)) & 0x80) != 0);
    do
    {
      v36 = v35;
      v35 = (v35 + 4);
    }

    while (v35 <= v33 && !v36->i32[0]);
    if (v36 < v33)
    {
      while (!v36->i8[0])
      {
        v36 = (v36 + 1);
        if (v36 >= v33)
        {
          v36 = &v22[v18];
          break;
        }
      }
    }

    v37 = v36 - v22;
    v38 = (v36 - v22) * a6;
    v19 = (v19 + 4 * v38);
    v21 = (v21 + 4 * v38);
    v22 += v38;
    v18 -= v37;
LABEL_37:
    if (v18 <= 3)
    {
      goto LABEL_40;
    }
  }

  v57 = 0;
  while (1)
  {
    v16.i32[0] = v32;
    v58 = vqtbl1q_s8(v16, xmmword_18439C7A0);
    v59 = vorrq_s8(*(v19 + v57), a9);
    v60 = vorrq_s8(vbicq_s8(v26, vceqzq_s8(v58)), *(v21 + v57));
    v61 = vminq_u16(vmull_u8(*v59.i8, *v58.i8), v29);
    v62 = vminq_u16(vmull_high_u8(v59, v58), v29);
    v63 = vrsraq_n_u16(v62, v62, 8uLL);
    *v59.i8 = vqrshrn_n_u16(vrsraq_n_u16(v61, v61, 8uLL), 8uLL);
    *v17.i8 = vqrshrn_n_u16(v63, 8uLL);
    v64 = vqtbl2q_s8(*(&v17 - 1), xmmword_18439C7B0);
    v65 = vqrshrn_high_n_u16(*v59.i8, v63, 8uLL);
    v66 = vqtbl1q_s8(v60, xmmword_18439C790);
    v67 = vminq_u8(v65, v64);
    v68 = vminq_u8(v60, v66);
    v69 = vmvnq_s8(v64);
    v70 = vmvnq_s8(v66);
    v99.val[1] = vqaddq_u16(vqaddq_u16(vabdq_u16(vmull_u8(*v67.i8, *v66.i8), vandq_s8(vmull_u8(*v68.i8, *v64.i8), v30)), vmull_u8(*v68.i8, *v69.i8)), vmull_u8(*v67.i8, *v70.i8));
    v71 = vqaddq_u16(vqaddq_u16(vabdq_u16(vmull_high_u8(v67, v66), vandq_s8(vmull_high_u8(v68, v64), v30)), vmull_high_u8(v68, v69)), vmull_high_u8(v67, v70));
    v72 = vminq_u16(v99.val[1], v29);
    v73 = vminq_u16(v71, v29);
    v99.val[0] = vrsraq_n_u16(v72, v72, 8uLL);
    v74 = vrsraq_n_u16(v73, v73, 8uLL);
    *v99.val[0].i8 = vqrshrn_n_u16(v99.val[0], 8uLL);
    *v99.val[1].i8 = vqrshrn_n_u16(v74, 8uLL);
    v17 = vminq_u8(vqrshrn_high_n_u16(*v99.val[0].i8, v74, 8uLL), vqtbl2q_s8(v99, xmmword_18439C7B0));
    v16 = vbslq_s8(vceqzq_s8(v66), v65, v17);
    *(v21 + v57) = vbslq_s8(vceqzq_s8(v64), v60, v16);
    v22 += v27;
    v18 -= 4;
    if (v18 < 4)
    {
      break;
    }

    v32 = *v22;
    v57 += v28;
    if ((*v22 - 1) >= 0xFFFFFFFE)
    {
      v19 = (v19 + v57);
      v21 = (v21 + v57);
      goto LABEL_37;
    }
  }

  v19 = (v19 + v28 + v57);
  v21 = (v21 + v28 + v57);
LABEL_40:
  v75 = v18 + a15;
  if (v75)
  {
    if (a7)
    {
      v76 = 0;
    }

    else
    {
      v76 = -1;
    }

    v77 = vdup_n_s8(v76);
    if (a8)
    {
      v78 = 0;
    }

    else
    {
      v78 = -1;
    }

    *a9.i8 = vand_s8(v77, 0xFF000000FF000000);
    v79 = vand_s8(vdup_n_s8(v78), 0xFF000000FF000000);
    v80 = vdupq_n_s16(0xFE01u);
    v81.i64[0] = 0xFFFFFFFFFFFFLL;
    v81.i64[1] = 0xFFFFFFFFFFFFLL;
    do
    {
      a14.i32[0] = v19->i32[0];
      v82 = vmovl_u8(a14);
      LOBYTE(v83) = v82.i8[0];
      BYTE1(v83) = v82.i8[2];
      BYTE2(v83) = v82.i8[4];
      HIBYTE(v83) = v82.i8[6];
      v82.i32[0] = v21->i32[0];
      v84 = vmovl_u8(*v82.i8);
      LOBYTE(v85) = v84.i8[0];
      BYTE1(v85) = v84.i8[2];
      BYTE2(v85) = v84.i8[4];
      HIBYTE(v85) = v84.i8[6];
      v84.i8[7] = 0;
      v84.i8[0] = *v22;
      v84.i8[1] = *v22;
      v84.i8[2] = *v22;
      *(v84.i32 + 3) = *v22;
      v86 = vorr_s8(vbic_s8(v79, vceqz_s8(*v84.i8)), v85);
      v87 = vminq_u16(vmull_u8(vorr_s8(v83, *a9.i8), *v84.i8), v80);
      v88 = vrsraq_n_u16(v87, v87, 8uLL);
      v89 = vqrshrn_n_u16(v88, 8uLL);
      *v88.i8 = vqtbl1_s8(vqrshrn_high_n_u16(v89, v88, 8uLL), 0x707070703030303);
      *v90.i8 = v86;
      v90.u64[1] = v86;
      *v90.i8 = vqtbl1_s8(v90, 0x707070703030303);
      v91 = vmin_u8(v89, *v88.i8);
      v92 = vmin_u8(v86, *v90.i8);
      v93 = vminq_u16(vqaddq_u16(vqaddq_u16(vabdq_u16(vmull_u8(v91, *v90.i8), vandq_s8(vmull_u8(v92, *v88.i8), v81)), vmull_u8(v92, vmvn_s8(*v88.i8))), vmull_u8(v91, vmvn_s8(*v90.i8))), v80);
      v94 = vrsraq_n_u16(v93, v93, 8uLL);
      v95 = vqrshrn_n_u16(v94, 8uLL);
      *v88.i8 = vbsl_s8(vceqz_s8(*v88.i8), v86, vbsl_s8(vceqz_s8(*v90.i8), v89, vmin_u8(v95, vqtbl1_s8(vqrshrn_high_n_u16(v95, v94, 8uLL), 0x707070703030303))));
      a14 = vmovn_s16(vzip1q_s8(v88, a9));
      v21->i32[0] = a14.i32[0];
      v96 = &v19->i8[4 * a6];
      v22 += a6;
      if (v96 >= v20)
      {
        v97 = -a5;
      }

      else
      {
        v97 = 0;
      }

      v19 = &v96[4 * v97];
      v21 = (v21 + 4 * a6);
      --v75;
    }

    while (v75);
  }

  *result = v19;
  *a3 = v20;
  *a2 = v21;
  *a4 = v22;
  return result;
}

int8x16_t **vec::template_mark_pixelmask_row<(CGCompositeOperation)21,_rgba8_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, char **a4, int a5, int a6, int a7, int a8, int8x16_t a9, double a10, double a11, double a12, double a13, uint8x8_t a14, uint64_t a15, unint64_t a16)
{
  v19 = a16;
  v20 = *result;
  v21 = *a3;
  v22 = *a2;
  v23 = *a4;
  if (a16 < 4)
  {
    goto LABEL_40;
  }

  if (a7)
  {
    v24 = 0;
  }

  else
  {
    v24 = -1;
  }

  v25.i64[0] = 0xFF000000FF000000;
  v25.i64[1] = 0xFF000000FF000000;
  a9 = vandq_s8(vdupq_n_s8(v24), v25);
  if (a8)
  {
    v26 = 0;
  }

  else
  {
    v26 = -1;
  }

  v27 = vandq_s8(vdupq_n_s8(v26), v25);
  v28 = 4 * a6;
  v29 = 4 * v28;
  v30 = vdupq_n_s16(0xFE01u);
  a14.i32[1] = 117901063;
  v31.i64[0] = -1;
  v31.i64[1] = -1;
  while (1)
  {
    v32 = *v23;
    if (*v23 == -1)
    {
      v39 = &v23[v19];
      v40 = v23;
      do
      {
        v41 = v40++;
      }

      while (v40 <= v39 && (vminvq_u8(vceqq_s8(*v41, v31)) & 0x80) != 0);
      do
      {
        v42 = v41;
        v41 = (v41 + 4);
      }

      while (v41 <= v39 && v42->i32[0] == -1);
      if (v42 < v39)
      {
        while (v42->u8[0] == 255)
        {
          v42 = (v42 + 1);
          if (v42 >= v39)
          {
            v42 = &v23[v19];
            break;
          }
        }
      }

      v43 = v42 - v23;
      v44 = v42 - v23;
      do
      {
        v45 = vorrq_s8(*v20, a9);
        v46 = vorrq_s8(*v22, v27);
        v47 = vqtbl1q_s8(v45, xmmword_18439C790);
        v48 = vqtbl1q_s8(v46, xmmword_18439C790);
        v49 = vminq_u8(v45, v47);
        v50 = vminq_u8(v46, v48);
        v51 = vcgeq_u8(vrhaddq_u8(v47, 0), v49);
        v52 = vzip1q_s8(v51, v51);
        v53 = vmull_u8(*v49.i8, *v50.i8);
        v54 = vmull_high_u8(v49, v50);
        v55 = vqsubq_u8(v48, v50);
        v56 = vqsubq_u8(v47, v49);
        v57 = vmull_u8(*v55.i8, *v56.i8);
        v58 = vmull_high_u8(v55, v56);
        v59 = vbslq_s8(vzip2q_s8(v51, v51), vqaddq_u16(v54, v54), vqsubq_u16(vmull_high_u8(v48, v47), vqaddq_u16(v58, v58)));
        v60 = vbslq_s8(v52, vqaddq_u16(v53, v53), vqsubq_u16(vmull_u8(*v48.i8, *v47.i8), vqaddq_u16(v57, v57)));
        v61 = vmvnq_s8(v47);
        v62 = vmull_u8(*v50.i8, *v61.i8);
        v63 = vqaddq_u16(v59, vmull_high_u8(v50, v61));
        v64 = vmvnq_s8(v48);
        v65 = vmull_u8(*v49.i8, *v64.i8);
        v66 = vmull_high_u8(v49, v64);
        v126.val[1] = vqaddq_u16(vqaddq_u16(v60, v62), v65);
        v67 = vqaddq_u16(v63, v66);
        v68 = vminq_u16(v126.val[1], v30);
        v69 = vminq_u16(v67, v30);
        v126.val[0] = vrsraq_n_u16(v68, v68, 8uLL);
        v70 = vrsraq_n_u16(v69, v69, 8uLL);
        *v126.val[0].i8 = vqrshrn_n_u16(v126.val[0], 8uLL);
        *v126.val[1].i8 = vqrshrn_n_u16(v70, 8uLL);
        v18 = vminq_u8(vqrshrn_high_n_u16(*v126.val[0].i8, v70, 8uLL), vqtbl2q_s8(v126, xmmword_18439C7B0));
        v17 = vceqzq_s8(v48);
        v16 = vbslq_s8(v17, v45, v18);
        *v22 = vbslq_s8(vceqzq_s8(v47), v46, v16);
        v23 += v28;
        v44 -= 4;
        v20 = (v20 + v29);
        v22 = (v22 + v29);
      }

      while (v44 > 3);
      v19 = v19 - v43 + v44;
      goto LABEL_37;
    }

    if (v32)
    {
      break;
    }

    v33 = &v23[v19];
    v34 = v23;
    do
    {
      v35 = v34++;
    }

    while (v34 <= v33 && (vminvq_u8(vceqzq_s8(*v35)) & 0x80) != 0);
    do
    {
      v36 = v35;
      v35 = (v35 + 4);
    }

    while (v35 <= v33 && !v36->i32[0]);
    if (v36 < v33)
    {
      while (!v36->i8[0])
      {
        v36 = (v36 + 1);
        if (v36 >= v33)
        {
          v36 = &v23[v19];
          break;
        }
      }
    }

    v37 = v36 - v23;
    v38 = (v36 - v23) * a6;
    v20 = (v20 + 4 * v38);
    v22 = (v22 + 4 * v38);
    v23 += v38;
    v19 -= v37;
LABEL_37:
    if (v19 <= 3)
    {
      goto LABEL_40;
    }
  }

  v71 = 0;
  while (1)
  {
    v16.i32[0] = v32;
    v72 = vqtbl1q_s8(v16, xmmword_18439C7A0);
    v73 = vorrq_s8(*(v20 + v71), a9);
    v74 = vorrq_s8(vbicq_s8(v27, vceqzq_s8(v72)), *(v22 + v71));
    v75 = vminq_u16(vmull_u8(*v73.i8, *v72.i8), v30);
    v76 = vminq_u16(vmull_high_u8(v73, v72), v30);
    v77 = vrsraq_n_u16(v76, v76, 8uLL);
    *v73.i8 = vqrshrn_n_u16(vrsraq_n_u16(v75, v75, 8uLL), 8uLL);
    *v18.i8 = vqrshrn_n_u16(v77, 8uLL);
    v78 = vqtbl2q_s8(*(&v18 - 1), xmmword_18439C7B0);
    v17 = vqrshrn_high_n_u16(*v73.i8, v77, 8uLL);
    v79 = vqtbl1q_s8(v74, xmmword_18439C790);
    v80 = vminq_u8(v17, v78);
    v81 = vminq_u8(v74, v79);
    v82 = vcgeq_u8(vrhaddq_u8(v78, 0), v80);
    v83 = vzip1q_s8(v82, v82);
    v84 = vmull_u8(*v80.i8, *v81.i8);
    v85 = vmull_high_u8(v80, v81);
    v86 = vqsubq_u8(v79, v81);
    v87 = vqsubq_u8(v78, v80);
    v88 = vmull_u8(*v86.i8, *v87.i8);
    v89 = vmull_high_u8(v86, v87);
    v90 = vbslq_s8(vzip2q_s8(v82, v82), vqaddq_u16(v85, v85), vqsubq_u16(vmull_high_u8(v79, v78), vqaddq_u16(v89, v89)));
    v91 = vbslq_s8(v83, vqaddq_u16(v84, v84), vqsubq_u16(vmull_u8(*v79.i8, *v78.i8), vqaddq_u16(v88, v88)));
    v92 = vmvnq_s8(v78);
    v93 = vmull_u8(*v81.i8, *v92.i8);
    v94 = vqaddq_u16(v90, vmull_high_u8(v81, v92));
    v95 = vmvnq_s8(v79);
    v96 = vmull_u8(*v80.i8, *v95.i8);
    v97 = vmull_high_u8(v80, v95);
    v127.val[1] = vqaddq_u16(vqaddq_u16(v91, v93), v96);
    v98 = vqaddq_u16(v94, v97);
    v99 = vminq_u16(v127.val[1], v30);
    v100 = vminq_u16(v98, v30);
    v127.val[0] = vrsraq_n_u16(v99, v99, 8uLL);
    v101 = vrsraq_n_u16(v100, v100, 8uLL);
    *v127.val[0].i8 = vqrshrn_n_u16(v127.val[0], 8uLL);
    *v127.val[1].i8 = vqrshrn_n_u16(v101, 8uLL);
    v18 = vminq_u8(vqrshrn_high_n_u16(*v127.val[0].i8, v101, 8uLL), vqtbl2q_s8(v127, xmmword_18439C7B0));
    v16 = vbslq_s8(vceqzq_s8(v79), v17, v18);
    *(v22 + v71) = vbslq_s8(vceqzq_s8(v78), v74, v16);
    v23 += v28;
    v19 -= 4;
    if (v19 < 4)
    {
      break;
    }

    v32 = *v23;
    v71 += v29;
    if ((*v23 - 1) >= 0xFFFFFFFE)
    {
      v20 = (v20 + v71);
      v22 = (v22 + v71);
      goto LABEL_37;
    }
  }

  v20 = (v20 + v29 + v71);
  v22 = (v22 + v29 + v71);
LABEL_40:
  v102 = v19 + a15;
  if (v102)
  {
    if (a7)
    {
      v103 = 0;
    }

    else
    {
      v103 = -1;
    }

    v104 = vdup_n_s8(v103);
    if (a8)
    {
      v105 = 0;
    }

    else
    {
      v105 = -1;
    }

    *a9.i8 = vand_s8(v104, 0xFF000000FF000000);
    v106 = vand_s8(vdup_n_s8(v105), 0xFF000000FF000000);
    v107 = vdupq_n_s16(0xFE01u);
    do
    {
      a14.i32[0] = v20->i32[0];
      v108 = vmovl_u8(a14);
      LOBYTE(v109) = v108.i8[0];
      BYTE1(v109) = v108.i8[2];
      BYTE2(v109) = v108.i8[4];
      HIBYTE(v109) = v108.i8[6];
      v108.i32[0] = v22->i32[0];
      v110 = vmovl_u8(*v108.i8);
      LOBYTE(v111) = v110.i8[0];
      BYTE1(v111) = v110.i8[2];
      BYTE2(v111) = v110.i8[4];
      HIBYTE(v111) = v110.i8[6];
      v110.i8[7] = 0;
      v110.i8[0] = *v23;
      v110.i8[1] = *v23;
      v110.i8[2] = *v23;
      *(v110.i32 + 3) = *v23;
      v112 = vorr_s8(vbic_s8(v106, vceqz_s8(*v110.i8)), v111);
      v113 = vminq_u16(vmull_u8(vorr_s8(v109, *a9.i8), *v110.i8), v107);
      v114 = vrsraq_n_u16(v113, v113, 8uLL);
      v115 = vqrshrn_n_u16(v114, 8uLL);
      *v114.i8 = vqtbl1_s8(vqrshrn_high_n_u16(v115, v114, 8uLL), 0x707070703030303);
      *v116.i8 = v112;
      v116.u64[1] = v112;
      *v116.i8 = vqtbl1_s8(v116, 0x707070703030303);
      v117 = vmin_u8(v115, *v114.i8);
      v118 = vmin_u8(v112, *v116.i8);
      *v17.i8 = vcge_u8(vrhadd_u8(*v114.i8, 0), v117);
      v119 = vmull_u8(v117, v118);
      v120 = vmull_u8(vqsub_u8(*v116.i8, v118), vqsub_u8(*v114.i8, v117));
      v121 = vminq_u16(vqaddq_u16(vqaddq_u16(vbslq_s8(vzip1q_s8(v17, v17), vqaddq_u16(v119, v119), vqsubq_u16(vmull_u8(*v116.i8, *v114.i8), vqaddq_u16(v120, v120))), vmull_u8(v118, vmvn_s8(*v114.i8))), vmull_u8(v117, vmvn_s8(*v116.i8))), v107);
      v122 = vrsraq_n_u16(v121, v121, 8uLL);
      v123 = vqrshrn_n_u16(v122, 8uLL);
      v17 = vqrshrn_high_n_u16(v123, v122, 8uLL);
      *v114.i8 = vbsl_s8(vceqz_s8(*v114.i8), v112, vbsl_s8(vceqz_s8(*v116.i8), v115, vmin_u8(v123, vqtbl1_s8(v17, 0x707070703030303))));
      a14 = vmovn_s16(vzip1q_s8(v114, a9));
      v22->i32[0] = a14.i32[0];
      v124 = &v20->i8[4 * a6];
      v23 += a6;
      if (v124 >= v21)
      {
        v125 = -a5;
      }

      else
      {
        v125 = 0;
      }

      v20 = &v124[4 * v125];
      v22 = (v22 + 4 * a6);
      --v102;
    }

    while (v102);
  }

  *result = v20;
  *a3 = v21;
  *a2 = v22;
  *a4 = v23;
  return result;
}

int8x16_t **vec::template_mark_pixelmask_row<(CGCompositeOperation)20,_rgba8_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, char **a4, int a5, int a6, int a7, int a8, int8x16_t a9, double a10, double a11, double a12, uint8x8_t a13, uint64_t a14, unint64_t a15)
{
  v18 = a15;
  v19 = *result;
  v20 = *a3;
  v21 = *a2;
  v22 = *a4;
  if (a15 < 4)
  {
    goto LABEL_40;
  }

  if (a7)
  {
    v23 = 0;
  }

  else
  {
    v23 = -1;
  }

  v24.i64[0] = 0xFF000000FF000000;
  v24.i64[1] = 0xFF000000FF000000;
  a9 = vandq_s8(vdupq_n_s8(v23), v24);
  if (a8)
  {
    v25 = 0;
  }

  else
  {
    v25 = -1;
  }

  v26 = vandq_s8(vdupq_n_s8(v25), v24);
  v27 = 4 * a6;
  v28 = 4 * v27;
  v29 = vdupq_n_s16(0xFE01u);
  a13.i32[1] = 117901063;
  v30.i64[0] = -1;
  v30.i64[1] = -1;
  while (1)
  {
    v31 = *v22;
    if (*v22 == -1)
    {
      v38 = &v22[v18];
      v39 = v22;
      do
      {
        v40 = v39++;
      }

      while (v39 <= v38 && (vminvq_u8(vceqq_s8(*v40, v30)) & 0x80) != 0);
      do
      {
        v41 = v40;
        v40 = (v40 + 4);
      }

      while (v40 <= v38 && v41->i32[0] == -1);
      if (v41 < v38)
      {
        while (v41->u8[0] == 255)
        {
          v41 = (v41 + 1);
          if (v41 >= v38)
          {
            v41 = &v22[v18];
            break;
          }
        }
      }

      v42 = v41 - v22;
      v43 = v41 - v22;
      do
      {
        v44 = vorrq_s8(*v19, a9);
        v45 = vorrq_s8(*v21, v26);
        v46 = vqtbl1q_s8(v44, xmmword_18439C790);
        v47 = vqtbl1q_s8(v45, xmmword_18439C790);
        v48 = vminq_u8(v44, v46);
        v49 = vminq_u8(v45, v47);
        v50 = vmull_u8(*v49.i8, *v49.i8);
        v51 = vmull_high_u8(v49, v49);
        v52 = vextq_s8(v47, v47, 8uLL).u64[0];
        *v50.i8 = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vdivq_f32(vcvtq_f32_u32(vmovl_u16(*v50.i8)), vcvtq_f32_u32(vmovl_u16((*&vzip1_s8(*v47.i8, *a9.i8) & 0xFF00FF00FF00FFLL)))))), vcvtnq_s32_f32(vdivq_f32(vcvtq_f32_u32(vmovl_high_u16(v50)), vcvtq_f32_u32(vmovl_u16((*&vzip2_s8(*v47.i8, *a9.i8) & 0xFF00FF00FF00FFLL)))))));
        v53 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vdivq_f32(vcvtq_f32_u32(vmovl_u16(*v51.i8)), vcvtq_f32_u32(vmovl_u16((*&vzip1_s8(v52, *a9.i8) & 0xFF00FF00FF00FFLL)))))), vcvtnq_s32_f32(vdivq_f32(vcvtq_f32_u32(vmovl_high_u16(v51)), vcvtq_f32_u32(vmovl_u16((*&vzip2_s8(v52, *a9.i8) & 0xFF00FF00FF00FFLL))))));
        v54 = vmull_u8(*v50.i8, *v46.i8);
        v55 = vmull_u8(vqmovun_s16(v53), *&vextq_s8(v46, v46, 8uLL));
        v56 = vqsubq_u8(v49, vqmovun_high_s16(*v50.i8, v53));
        v57 = vmull_u8(*v56.i8, *v48.i8);
        v58 = vmull_high_u8(v56, v48);
        v59 = vqaddq_u16(v54, vqaddq_u16(v57, v57));
        v60 = vqaddq_u16(v55, vqaddq_u16(v58, v58));
        v61 = vmvnq_s8(v46);
        v62 = vmull_u8(*v49.i8, *v61.i8);
        v63 = vmull_high_u8(v49, v61);
        v64 = vqaddq_u16(v59, v62);
        v65 = vqaddq_u16(v60, v63);
        v66 = vmvnq_s8(v47);
        v67 = vmull_u8(*v48.i8, *v66.i8);
        v68 = vmull_high_u8(v48, v66);
        v134.val[1] = vqaddq_u16(v64, v67);
        v69 = vqaddq_u16(v65, v68);
        v70 = vminq_u16(v134.val[1], v29);
        v71 = vminq_u16(v69, v29);
        v134.val[0] = vrsraq_n_u16(v70, v70, 8uLL);
        v72 = vrsraq_n_u16(v71, v71, 8uLL);
        *v134.val[0].i8 = vqrshrn_n_u16(v134.val[0], 8uLL);
        *v134.val[1].i8 = vqrshrn_n_u16(v72, 8uLL);
        v73 = vqtbl2q_s8(v134, xmmword_18439C7B0);
        v17 = vqrshrn_high_n_u16(*v134.val[0].i8, v72, 8uLL);
        v16 = vminq_u8(v17, v73);
        v15 = vceqzq_s8(v46);
        *v21 = vbslq_s8(v15, v45, vbslq_s8(vceqzq_s8(v47), v44, v16));
        v22 += v27;
        v43 -= 4;
        v19 = (v19 + v28);
        v21 = (v21 + v28);
      }

      while (v43 > 3);
      v18 = v18 - v42 + v43;
      goto LABEL_37;
    }

    if (v31)
    {
      break;
    }

    v32 = &v22[v18];
    v33 = v22;
    do
    {
      v34 = v33++;
    }

    while (v33 <= v32 && (vminvq_u8(vceqzq_s8(*v34)) & 0x80) != 0);
    do
    {
      v35 = v34;
      v34 = (v34 + 4);
    }

    while (v34 <= v32 && !v35->i32[0]);
    if (v35 < v32)
    {
      while (!v35->i8[0])
      {
        v35 = (v35 + 1);
        if (v35 >= v32)
        {
          v35 = &v22[v18];
          break;
        }
      }
    }

    v36 = v35 - v22;
    v37 = (v35 - v22) * a6;
    v19 = (v19 + 4 * v37);
    v21 = (v21 + 4 * v37);
    v22 += v37;
    v18 -= v36;
LABEL_37:
    if (v18 <= 3)
    {
      goto LABEL_40;
    }
  }

  v74 = 0;
  while (1)
  {
    v15.i32[0] = v31;
    v75 = vqtbl1q_s8(v15, xmmword_18439C7A0);
    v76 = vorrq_s8(*(v19 + v74), a9);
    v77 = vorrq_s8(vbicq_s8(v26, vceqzq_s8(v75)), *(v21 + v74));
    v78 = vminq_u16(vmull_u8(*v76.i8, *v75.i8), v29);
    v79 = vminq_u16(vmull_high_u8(v76, v75), v29);
    v80 = vrsraq_n_u16(v79, v79, 8uLL);
    *v16.i8 = vqrshrn_n_u16(vrsraq_n_u16(v78, v78, 8uLL), 8uLL);
    *v17.i8 = vqrshrn_n_u16(v80, 8uLL);
    v81 = vqtbl2q_s8(*v16.i8, xmmword_18439C7B0);
    v82 = vqrshrn_high_n_u16(*v16.i8, v80, 8uLL);
    v83 = vqtbl1q_s8(v77, xmmword_18439C790);
    v84 = vminq_u8(v82, v81);
    v85 = vminq_u8(v77, v83);
    v86 = vmull_u8(*v85.i8, *v85.i8);
    v87 = vmull_high_u8(v85, v85);
    v88 = vextq_s8(v83, v83, 8uLL).u64[0];
    *v86.i8 = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vdivq_f32(vcvtq_f32_u32(vmovl_u16(*v86.i8)), vcvtq_f32_u32(vmovl_u16((*&vzip1_s8(*v83.i8, *a9.i8) & 0xFF00FF00FF00FFLL)))))), vcvtnq_s32_f32(vdivq_f32(vcvtq_f32_u32(vmovl_high_u16(v86)), vcvtq_f32_u32(vmovl_u16((*&vzip2_s8(*v83.i8, *a9.i8) & 0xFF00FF00FF00FFLL)))))));
    v89 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vdivq_f32(vcvtq_f32_u32(vmovl_u16(*v87.i8)), vcvtq_f32_u32(vmovl_u16((*&vzip1_s8(v88, *a9.i8) & 0xFF00FF00FF00FFLL)))))), vcvtnq_s32_f32(vdivq_f32(vcvtq_f32_u32(vmovl_high_u16(v87)), vcvtq_f32_u32(vmovl_u16((*&vzip2_s8(v88, *a9.i8) & 0xFF00FF00FF00FFLL))))));
    v90 = vmull_u8(*v86.i8, *v81.i8);
    v91 = vmull_u8(vqmovun_s16(v89), *&vextq_s8(v81, v81, 8uLL));
    v92 = vqsubq_u8(v85, vqmovun_high_s16(*v86.i8, v89));
    v93 = vmull_u8(*v92.i8, *v84.i8);
    v94 = vmull_high_u8(v92, v84);
    v95 = vqaddq_u16(v90, vqaddq_u16(v93, v93));
    v96 = vqaddq_u16(v91, vqaddq_u16(v94, v94));
    v97 = vmvnq_s8(v81);
    v98 = vmull_u8(*v85.i8, *v97.i8);
    v99 = vmull_high_u8(v85, v97);
    v100 = vqaddq_u16(v95, v98);
    v101 = vqaddq_u16(v96, v99);
    v102 = vmvnq_s8(v83);
    v103 = vmull_u8(*v84.i8, *v102.i8);
    v104 = vmull_high_u8(v84, v102);
    v135.val[1] = vqaddq_u16(v100, v103);
    v105 = vqaddq_u16(v101, v104);
    v106 = vminq_u16(v135.val[1], v29);
    v107 = vminq_u16(v105, v29);
    v135.val[0] = vrsraq_n_u16(v106, v106, 8uLL);
    v108 = vrsraq_n_u16(v107, v107, 8uLL);
    *v135.val[0].i8 = vqrshrn_n_u16(v135.val[0], 8uLL);
    *v135.val[1].i8 = vqrshrn_n_u16(v108, 8uLL);
    v109 = vqtbl2q_s8(v135, xmmword_18439C7B0);
    v17 = vqrshrn_high_n_u16(*v135.val[0].i8, v108, 8uLL);
    v16 = vminq_u8(v17, v109);
    v15 = vbslq_s8(vceqzq_s8(v83), v82, v16);
    *(v21 + v74) = vbslq_s8(vceqzq_s8(v81), v77, v15);
    v22 += v27;
    v18 -= 4;
    if (v18 < 4)
    {
      break;
    }

    v31 = *v22;
    v74 += v28;
    if ((*v22 - 1) >= 0xFFFFFFFE)
    {
      v19 = (v19 + v74);
      v21 = (v21 + v74);
      goto LABEL_37;
    }
  }

  v19 = (v19 + v28 + v74);
  v21 = (v21 + v28 + v74);
LABEL_40:
  v110 = v18 + a14;
  if (v110)
  {
    if (a7)
    {
      v111 = 0;
    }

    else
    {
      v111 = -1;
    }

    *a9.i8 = vand_s8(vdup_n_s8(v111), 0xFF000000FF000000);
    if (a8)
    {
      v112 = 0;
    }

    else
    {
      v112 = -1;
    }

    v113 = vand_s8(vdup_n_s8(v112), 0xFF000000FF000000);
    v114 = vdupq_n_s16(0xFE01u);
    do
    {
      a13.i32[0] = v19->i32[0];
      v115 = vmovl_u8(a13);
      LOBYTE(v116) = v115.i8[0];
      BYTE1(v116) = v115.i8[2];
      BYTE2(v116) = v115.i8[4];
      HIBYTE(v116) = v115.i8[6];
      v115.i32[0] = v21->i32[0];
      v117 = vmovl_u8(*v115.i8);
      LOBYTE(v118) = v117.i8[0];
      BYTE1(v118) = v117.i8[2];
      BYTE2(v118) = v117.i8[4];
      HIBYTE(v118) = v117.i8[6];
      v119.i8[7] = 0;
      v119.i8[0] = *v22;
      v119.i8[1] = *v22;
      v119.i8[2] = *v22;
      *(v119.i32 + 3) = *v22;
      *v117.i8 = vorr_s8(vbic_s8(v113, vceqz_s8(v119)), v118);
      v120 = vminq_u16(vmull_u8(vorr_s8(v116, *a9.i8), v119), v114);
      v121 = vrsraq_n_u16(v120, v120, 8uLL);
      v122 = vqrshrn_n_u16(v121, 8uLL);
      *v121.i8 = vqtbl1_s8(vqrshrn_high_n_u16(v122, v121, 8uLL), 0x707070703030303);
      v123.i64[0] = v117.i64[0];
      v123.i64[1] = v117.i64[0];
      *v123.i8 = vqtbl1_s8(v123, 0x707070703030303);
      v124 = vmin_u8(v122, *v121.i8);
      v125 = vmin_u8(*v117.i8, *v123.i8);
      v126 = vmull_u8(v125, v125);
      *v126.i8 = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vdivq_f32(vcvtq_f32_u32(vmovl_u16(*v126.i8)), vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(v117.u8[3]) & 0xFF00FF00FF00FFLL)))))), vcvtnq_s32_f32(vdivq_f32(vcvtq_f32_u32(vmovl_high_u16(v126)), vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(v117.u8[7]) & 0xFF00FF00FF00FFLL)))))));
      v127 = vmull_u8(*v126.i8, *v121.i8);
      v128 = vmull_u8(vqsub_u8(v125, *v126.i8), v124);
      v129 = vminq_u16(vqaddq_u16(vqaddq_u16(vqaddq_u16(v127, vqaddq_u16(v128, v128)), vmull_u8(v125, vmvn_s8(*v121.i8))), vmull_u8(v124, vmvn_s8(*v123.i8))), v114);
      v130 = vrsraq_n_u16(v129, v129, 8uLL);
      v131 = vqrshrn_n_u16(v130, 8uLL);
      *v117.i8 = vbsl_s8(vceqz_s8(*v121.i8), *v117.i8, vbsl_s8(vceqz_s8(*v123.i8), v122, vmin_u8(v131, vqtbl1_s8(vqrshrn_high_n_u16(v131, v130, 8uLL), 0x707070703030303))));
      a13 = vmovn_s16(vzip1q_s8(v117, a9));
      v21->i32[0] = a13.i32[0];
      v132 = &v19->i8[4 * a6];
      v22 += a6;
      if (v132 >= v20)
      {
        v133 = -a5;
      }

      else
      {
        v133 = 0;
      }

      v19 = &v132[4 * v133];
      v21 = (v21 + 4 * a6);
      --v110;
    }

    while (v110);
  }

  *result = v19;
  *a3 = v20;
  *a2 = v21;
  *a4 = v22;
  return result;
}

int8x16_t **vec::template_mark_pixelmask_row<(CGCompositeOperation)19,_rgba8_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, char **a4, int a5, int a6, int a7, int a8, int8x16_t a9, double a10, double a11, double a12, double a13, int8x16_t a14, double a15, int8x16_t a16, uint64_t a17, unint64_t a18)
{
  v19 = a18;
  v20 = *result;
  v21 = *a3;
  v22 = *a2;
  v23 = *a4;
  if (a18 < 4)
  {
    goto LABEL_41;
  }

  if (a7)
  {
    v24 = 0;
  }

  else
  {
    v24 = -1;
  }

  v25.i64[0] = 0xFF000000FF000000;
  v25.i64[1] = 0xFF000000FF000000;
  a9 = vandq_s8(vdupq_n_s8(v24), v25);
  if (a8)
  {
    v26 = 0;
  }

  else
  {
    v26 = -1;
  }

  v27 = vandq_s8(vdupq_n_s8(v26), v25);
  v28 = 4 * a6;
  v29 = 4 * v28;
  v30 = vdupq_n_s32(0x3B808081u);
  a14.i64[0] = -1;
  a14.i64[1] = -1;
  while (1)
  {
    v31 = *v23;
    if (*v23 == -1)
    {
      v38 = &v23[v19];
      v39 = v23;
      do
      {
        v40 = v39++;
      }

      while (v39 <= v38 && (vminvq_u8(vceqq_s8(*v40, a14)) & 0x80) != 0);
      do
      {
        v41 = v40;
        v40 = (v40 + 4);
      }

      while (v40 <= v38 && v41->i32[0] == -1);
      if (v41 < v38)
      {
        while (v41->u8[0] == 255)
        {
          v41 = (v41 + 1);
          if (v41 >= v38)
          {
            v41 = &v23[v19];
            break;
          }
        }
      }

      v42 = v41 - v23;
      v43 = v41 - v23;
      do
      {
        v44 = vorrq_s8(*v20, a9);
        v45 = vorrq_s8(*v22, v27);
        v46 = vqtbl1q_s8(v44, xmmword_18439C790);
        v47 = vqtbl1q_s8(v45, xmmword_18439C790);
        v48 = vminq_u8(v44, v46);
        v49 = vminq_u8(v45, v47);
        v50 = vqsubq_u8(v47, v49);
        v51 = *&vzip1_s8(*v50.i8, *a9.i8) & 0xFF00FF00FF00FFLL;
        v52 = *&vzip2_s8(*v50.i8, *a9.i8) & 0xFF00FF00FF00FFLL;
        v53 = vextq_s8(v50, v50, 8uLL).u64[0];
        v54 = *&vzip1_s8(v53, *a9.i8) & 0xFF00FF00FF00FFLL;
        v55 = vmull_u8(*v46.i8, *v46.i8);
        v56 = vmull_high_u8(v46, v46);
        v57 = vextq_s8(v48, v48, 8uLL).u64[0];
        v58 = *&vzip2_s8(*v48.i8, *a9.i8) & 0xFF00FF00FF00FFLL;
        v59 = *&vzip1_s8(*v48.i8, *a9.i8) & 0xFF00FF00FF00FFLL;
        v60 = vmull_u8(*v46.i8, *v47.i8);
        v61 = vmull_high_u8(v46, v47);
        v62 = vmvnq_s8(v46);
        v63 = vmull_u8(*v49.i8, *v62.i8);
        v64 = vmull_high_u8(v49, v62);
        v65 = vmvnq_s8(v47);
        v66 = vmull_u8(*v48.i8, *v65.i8);
        v67 = vmull_high_u8(v48, v65);
        v148.val[1] = vdivq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vzip2_s8(v53, *a9.i8) & 0xFF00FF00FF00FFLL))), vcvtq_f32_u32(vmovl_high_u16(v56))), vcvtq_f32_u32(vmovl_u16((*&vzip2_s8(v57, *a9.i8) & 0xFF00FF00FF00FFLL))));
        v68 = vceqzq_s8(v50);
        v69 = vmovl_s8(*v68.i8);
        v70 = vmovl_high_s8(v68);
        v148.val[0] = vbicq_s8(vdivq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(v54)), vcvtq_f32_u32(vmovl_u16(*v56.i8))), vcvtq_f32_u32(vmovl_u16((*&vzip1_s8(v57, *a9.i8) & 0xFF00FF00FF00FFLL)))), vmovl_s16(*v70.i8));
        v71 = vsubq_f32(vaddq_f32(vaddq_f32(vcvtq_f32_u32(vmovl_high_u16(v63)), vcvtq_f32_u32(vmovl_high_u16(v66))), vcvtq_f32_u32(vmovl_high_u16(v60))), vbicq_s8(vdivq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(v52)), vcvtq_f32_u32(vmovl_high_u16(v55))), vcvtq_f32_u32(vmovl_u16(v58))), vmovl_high_s16(v69)));
        v72 = vmulq_f32(vsubq_f32(vaddq_f32(vaddq_f32(vcvtq_f32_u32(vmovl_u16(*v64.i8)), vcvtq_f32_u32(vmovl_u16(*v67.i8))), vcvtq_f32_u32(vmovl_u16(*v61.i8))), v148.val[0]), v30);
        *v148.val[0].i8 = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vmulq_f32(vsubq_f32(vaddq_f32(vaddq_f32(vcvtq_f32_u32(vmovl_u16(*v63.i8)), vcvtq_f32_u32(vmovl_u16(*v66.i8))), vcvtq_f32_u32(vmovl_u16(*v60.i8))), vbicq_s8(vdivq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(v51)), vcvtq_f32_u32(vmovl_u16(*v55.i8))), vcvtq_f32_u32(vmovl_u16(v59))), vmovl_s16(*v69.i8))), v30))), vcvtnq_s32_f32(vmulq_f32(v71, v30))));
        v73 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(v72)), vcvtnq_s32_f32(vmulq_f32(vsubq_f32(vaddq_f32(vaddq_f32(vcvtq_f32_u32(vmovl_high_u16(v64)), vcvtq_f32_u32(vmovl_high_u16(v67))), vcvtq_f32_u32(vmovl_high_u16(v61))), vbicq_s8(v148.val[1], vmovl_high_s16(v70))), v30)));
        *v148.val[1].i8 = vqmovun_s16(v73);
        v18 = vceqzq_s8(v47);
        v74 = vbslq_s8(v18, v44, vminq_u8(vqmovun_high_s16(*v148.val[0].i8, v73), vqtbl2q_s8(v148, xmmword_18439C7B0)));
        a16 = vceqzq_s8(v46);
        *v22 = vbslq_s8(a16, v45, v74);
        v23 += v28;
        v43 -= 4;
        v20 = (v20 + v29);
        v22 = (v22 + v29);
      }

      while (v43 > 3);
      v19 = v19 - v42 + v43;
LABEL_37:
      a14.i64[0] = -1;
      a14.i64[1] = -1;
      goto LABEL_38;
    }

    if (v31)
    {
      break;
    }

    v32 = &v23[v19];
    v33 = v23;
    do
    {
      v34 = v33++;
    }

    while (v33 <= v32 && (vminvq_u8(vceqzq_s8(*v34)) & 0x80) != 0);
    do
    {
      v35 = v34;
      v34 = (v34 + 4);
    }

    while (v34 <= v32 && !v35->i32[0]);
    if (v35 < v32)
    {
      while (!v35->i8[0])
      {
        v35 = (v35 + 1);
        if (v35 >= v32)
        {
          v35 = &v23[v19];
          break;
        }
      }
    }

    v36 = v35 - v23;
    v37 = (v35 - v23) * a6;
    v20 = (v20 + 4 * v37);
    v22 = (v22 + 4 * v37);
    v23 += v37;
    v19 -= v36;
LABEL_38:
    if (v19 <= 3)
    {
      goto LABEL_41;
    }
  }

  v75 = 0;
  while (1)
  {
    a16.i32[0] = v31;
    v76 = vqtbl1q_s8(a16, xmmword_18439C7A0);
    v77 = vorrq_s8(*(v20 + v75), a9);
    v78 = vorrq_s8(vbicq_s8(v27, vceqzq_s8(v76)), *(v22 + v75));
    v79 = vmull_u8(*v77.i8, *v76.i8);
    v80 = vmull_high_u8(v77, v76);
    v81 = vdupq_n_s16(0xFE01u);
    v82 = vminq_u16(v79, v81);
    v83 = vminq_u16(v80, v81);
    v84 = vrsraq_n_u16(v82, v82, 8uLL);
    v85 = vrsraq_n_u16(v83, v83, 8uLL);
    *v84.i8 = vqrshrn_n_u16(v84, 8uLL);
    *v18.i8 = vqrshrn_n_u16(v85, 8uLL);
    v86 = vqtbl2q_s8(*(&v18 - 1), xmmword_18439C7B0);
    v87 = vqrshrn_high_n_u16(*v84.i8, v85, 8uLL);
    v88 = vqtbl1q_s8(v78, xmmword_18439C790);
    v89 = vminq_u8(v87, v86);
    v90 = vminq_u8(v78, v88);
    v91 = vqsubq_u8(v88, v90);
    v85.i64[0] = vextq_s8(v91, v91, 8uLL).u64[0];
    v92 = *&vzip1_s8(*v85.i8, *a9.i8) & 0xFF00FF00FF00FFLL;
    v93 = vcvtq_f32_u32(vmovl_u16((*&vzip2_s8(*v85.i8, *a9.i8) & 0xFF00FF00FF00FFLL)));
    v94 = vmull_u8(*v86.i8, *v86.i8);
    v95 = vmull_high_u8(v86, v86);
    v96 = vcvtq_f32_u32(vmovl_u16(*v94.i8));
    v97 = vcvtq_f32_u32(vmovl_high_u16(v94));
    v94.i64[0] = vextq_s8(v89, v89, 8uLL).u64[0];
    v98 = *&vzip2_s8(*v94.i8, *a9.i8) & 0xFF00FF00FF00FFLL;
    v99 = vcvtq_f32_u32(vmovl_u16((*&vzip1_s8(*v94.i8, *a9.i8) & 0xFF00FF00FF00FFLL)));
    v94.i64[0] = *&vzip2_s8(*v89.i8, *a9.i8) & 0xFF00FF00FF00FFLL;
    v100 = *&vzip1_s8(*v89.i8, *a9.i8) & 0xFF00FF00FF00FFLL;
    v101 = vmull_u8(*v86.i8, *v88.i8);
    v102 = vmull_high_u8(v86, v88);
    v103 = vmvnq_s8(v86);
    v104 = vmull_u8(*v90.i8, *v103.i8);
    v105 = vmull_high_u8(v90, v103);
    v106 = vmvnq_s8(v88);
    v107 = vmull_u8(*v89.i8, *v106.i8);
    v108 = vmull_high_u8(v89, v106);
    v109 = vdivq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vzip1_s8(*v91.i8, *a9.i8) & 0xFF00FF00FF00FFLL))), v96), vcvtq_f32_u32(vmovl_u16(v100)));
    v110 = vdivq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vzip2_s8(*v91.i8, *a9.i8) & 0xFF00FF00FF00FFLL))), v97), vcvtq_f32_u32(vmovl_u16(*v94.i8)));
    v111 = vdivq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(v92)), vcvtq_f32_u32(vmovl_u16(*v95.i8))), v99);
    v149.val[0] = vdivq_f32(vmulq_f32(v93, vcvtq_f32_u32(vmovl_high_u16(v95))), vcvtq_f32_u32(vmovl_u16(v98)));
    v112 = vceqzq_s8(v91);
    v113 = vmovl_s8(*v112.i8);
    v114 = vmovl_s16(*v113.i8);
    v149.val[1] = vmovl_high_s16(v113);
    v115 = vmovl_high_s8(v112);
    v116 = vmovl_s16(*v115.i8);
    v117 = vmulq_f32(vsubq_f32(vaddq_f32(vaddq_f32(vcvtq_f32_u32(vmovl_high_u16(v105)), vcvtq_f32_u32(vmovl_high_u16(v108))), vcvtq_f32_u32(vmovl_high_u16(v102))), vbicq_s8(v149.val[0], vmovl_high_s16(v115))), v30);
    *v149.val[0].i8 = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vmulq_f32(vsubq_f32(vaddq_f32(vaddq_f32(vcvtq_f32_u32(vmovl_u16(*v104.i8)), vcvtq_f32_u32(vmovl_u16(*v107.i8))), vcvtq_f32_u32(vmovl_u16(*v101.i8))), vbicq_s8(v109, v114)), v30))), vcvtnq_s32_f32(vmulq_f32(vsubq_f32(vaddq_f32(vaddq_f32(vcvtq_f32_u32(vmovl_high_u16(v104)), vcvtq_f32_u32(vmovl_high_u16(v107))), vcvtq_f32_u32(vmovl_high_u16(v101))), vbicq_s8(v110, v149.val[1])), v30))));
    v118 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vmulq_f32(vsubq_f32(vaddq_f32(vaddq_f32(vcvtq_f32_u32(vmovl_u16(*v105.i8)), vcvtq_f32_u32(vmovl_u16(*v108.i8))), vcvtq_f32_u32(vmovl_u16(*v102.i8))), vbicq_s8(v111, v116)), v30))), vcvtnq_s32_f32(v117));
    *v149.val[1].i8 = vqmovun_s16(v118);
    v18 = vceqzq_s8(v88);
    a16 = vceqzq_s8(v86);
    a14 = vbslq_s8(a16, v78, vbslq_s8(v18, v87, vminq_u8(vqmovun_high_s16(*v149.val[0].i8, v118), vqtbl2q_s8(v149, xmmword_18439C7B0))));
    *(v22 + v75) = a14;
    v23 += v28;
    v19 -= 4;
    if (v19 < 4)
    {
      break;
    }

    v31 = *v23;
    v75 += v29;
    if ((*v23 - 1) >= 0xFFFFFFFE)
    {
      v20 = (v20 + v75);
      v22 = (v22 + v75);
      goto LABEL_37;
    }
  }

  v20 = (v20 + v29 + v75);
  v22 = (v22 + v29 + v75);
LABEL_41:
  v119 = v19 + a17;
  if (v119)
  {
    if (a7)
    {
      v120 = 0;
    }

    else
    {
      v120 = -1;
    }

    *a9.i8 = vand_s8(vdup_n_s8(v120), 0xFF000000FF000000);
    if (a8)
    {
      v121 = 0;
    }

    else
    {
      v121 = -1;
    }

    v122 = vand_s8(vdup_n_s8(v121), 0xFF000000FF000000);
    v123 = vdupq_n_s16(0xFE01u);
    v124 = vdupq_n_s32(0x3B808081u);
    do
    {
      a14.i32[0] = v20->i32[0];
      v125 = vmovl_u8(*a14.i8);
      LOBYTE(v126) = v125.i8[0];
      BYTE1(v126) = v125.i8[2];
      BYTE2(v126) = v125.i8[4];
      HIBYTE(v126) = v125.i8[6];
      v125.i32[0] = v22->i32[0];
      a14 = vmovl_u8(*v125.i8);
      LOBYTE(v127) = a14.i8[0];
      BYTE1(v127) = a14.i8[2];
      BYTE2(v127) = a14.i8[4];
      HIBYTE(v127) = a14.i8[6];
      v128.i8[7] = 0;
      v128.i8[0] = *v23;
      v128.i8[1] = *v23;
      v128.i8[2] = *v23;
      *(v128.i32 + 3) = *v23;
      *a14.i8 = vorr_s8(vbic_s8(v122, vceqz_s8(v128)), v127);
      v129 = vminq_u16(vmull_u8(vorr_s8(v126, *a9.i8), v128), v123);
      v130 = vrsraq_n_u16(v129, v129, 8uLL);
      v131 = vqrshrn_n_u16(v130, 8uLL);
      v132.i64[0] = a14.i64[0];
      v132.i64[1] = a14.i64[0];
      *v130.i8 = vqtbl1_s8(vqrshrn_high_n_u16(v131, v130, 8uLL), 0x707070703030303);
      v133 = vqtbl1_s8(v132, 0x707070703030303);
      *v132.i8 = vmin_u8(v131, *v130.i8);
      v134 = vmin_u8(*a14.i8, v133);
      v135 = vqsub_u8(v133, v134);
      v136 = *&vzip1_s8(v135, *a9.i8) & 0xFF00FF00FF00FFLL;
      v137 = *&vzip2_s8(v135, *a9.i8) & 0xFF00FF00FF00FFLL;
      v138 = vmull_u8(*v130.i8, *v130.i8);
      v139 = *&vzip2_s8(*v132.i8, *a9.i8) & 0xFF00FF00FF00FFLL;
      v140 = *&vzip1_s8(*v132.i8, *a9.i8) & 0xFF00FF00FF00FFLL;
      v141 = vmull_u8(*v130.i8, v133);
      v142 = vmull_u8(v134, vmvn_s8(*v130.i8));
      v143 = vmull_u8(*v132.i8, vmvn_s8(v133));
      v144 = vmovl_s8(vceqz_s8(v135));
      v145 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vmulq_f32(vsubq_f32(vaddq_f32(vaddq_f32(vcvtq_f32_u32(vmovl_u16(*v142.i8)), vcvtq_f32_u32(vmovl_u16(*v143.i8))), vcvtq_f32_u32(vmovl_u16(*v141.i8))), vbicq_s8(vdivq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(v136)), vcvtq_f32_u32(vmovl_u16(*v138.i8))), vcvtq_f32_u32(vmovl_u16(v140))), vmovl_s16(*v144.i8))), v124))), vcvtnq_s32_f32(vmulq_f32(vsubq_f32(vaddq_f32(vaddq_f32(vcvtq_f32_u32(vmovl_high_u16(v142)), vcvtq_f32_u32(vmovl_high_u16(v143))), vcvtq_f32_u32(vmovl_high_u16(v141))), vbicq_s8(vdivq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(v137)), vcvtq_f32_u32(vmovl_high_u16(v138))), vcvtq_f32_u32(vmovl_u16(v139))), vmovl_high_s16(v144))), v124)));
      *v142.i8 = vqmovun_s16(v145);
      *a14.i8 = vbsl_s8(vceqz_s8(*v130.i8), *a14.i8, vbsl_s8(vceqz_s8(v133), v131, vmin_u8(*v142.i8, vqtbl1_s8(vqmovun_high_s16(*v142.i8, v145), 0x707070703030303))));
      *a14.i8 = vmovn_s16(vzip1q_s8(a14, a9));
      v22->i32[0] = a14.i32[0];
      v146 = &v20->i8[4 * a6];
      v23 += a6;
      if (v146 >= v21)
      {
        v147 = -a5;
      }

      else
      {
        v147 = 0;
      }

      v20 = &v146[4 * v147];
      v22 = (v22 + 4 * a6);
      --v119;
    }

    while (v119);
  }

  *result = v20;
  *a3 = v21;
  *a2 = v22;
  *a4 = v23;
  return result;
}

int8x16_t **vec::template_mark_pixelmask_row<(CGCompositeOperation)18,_rgba8_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, char **a4, int a5, int a6, int a7, int a8, int8x16_t a9, double a10, double a11, double a12, uint8x8_t a13, uint64_t a14, unint64_t a15)
{
  v18 = a15;
  v19 = *result;
  v20 = *a3;
  v21 = *a2;
  v22 = *a4;
  if (a15 < 4)
  {
    goto LABEL_40;
  }

  if (a7)
  {
    v23 = 0;
  }

  else
  {
    v23 = -1;
  }

  v24.i64[0] = 0xFF000000FF000000;
  v24.i64[1] = 0xFF000000FF000000;
  a9 = vandq_s8(vdupq_n_s8(v23), v24);
  if (a8)
  {
    v25 = 0;
  }

  else
  {
    v25 = -1;
  }

  v26 = vandq_s8(vdupq_n_s8(v25), v24);
  v27 = 4 * a6;
  v28 = 4 * v27;
  v29 = vdupq_n_s16(0xFE01u);
  a13.i32[1] = 117901063;
  v30.i64[0] = -1;
  v30.i64[1] = -1;
  while (1)
  {
    v31 = *v22;
    if (*v22 == -1)
    {
      v38 = &v22[v18];
      v39 = v22;
      do
      {
        v40 = v39++;
      }

      while (v39 <= v38 && (vminvq_u8(vceqq_s8(*v40, v30)) & 0x80) != 0);
      do
      {
        v41 = v40;
        v40 = (v40 + 4);
      }

      while (v40 <= v38 && v41->i32[0] == -1);
      if (v41 < v38)
      {
        while (v41->u8[0] == 255)
        {
          v41 = (v41 + 1);
          if (v41 >= v38)
          {
            v41 = &v22[v18];
            break;
          }
        }
      }

      v42 = v41 - v22;
      v43 = v41 - v22;
      do
      {
        v44 = vorrq_s8(*v19, a9);
        v45 = vorrq_s8(*v21, v26);
        v46 = vqtbl1q_s8(v44, xmmword_18439C790);
        v47 = vqtbl1q_s8(v45, xmmword_18439C790);
        v48 = vminq_u8(v44, v46);
        v49 = vminq_u8(v45, v47);
        v50 = vmvnq_s8(v47);
        v119.val[1] = vmull_u8(*v48.i8, *v50.i8);
        v51 = vmull_high_u8(v48, v50);
        v52 = vbicq_s8(vtstq_s8(v49, v49), vcgtq_u8(v46, (*&v48 & __PAIR128__(0xFFFFFF00FFFFFFLL, 0xFFFFFF00FFFFFFLL))));
        v53 = vorrq_s8(vqsubq_u8(v46, (*&v48 & __PAIR128__(0xFFFFFF00FFFFFFLL, 0xFFFFFF00FFFFFFLL))), vceqzq_s8(v49));
        v54 = *&vzip1_s8(*v53.i8, *a9.i8) & 0xFF00FF00FF00FFLL;
        v55 = *&vzip2_s8(*v53.i8, *a9.i8) & 0xFF00FF00FF00FFLL;
        v53.i64[0] = vextq_s8(v53, v53, 8uLL).u64[0];
        v56 = vmull_u8(*v46.i8, *v46.i8);
        v57 = vmull_high_u8(v46, v46);
        v58 = vextq_s8(v49, v49, 8uLL).u64[0];
        v59 = vqmovun_high_s32(vqmovun_s32(vcvtnq_s32_f32(vdivq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vzip1_s8(*v49.i8, *a9.i8) & 0xFF00FF00FF00FFLL))), vcvtq_f32_u32(vmovl_u16(*v56.i8))), vcvtq_f32_u32(vmovl_u16(v54))))), vcvtnq_s32_f32(vdivq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vzip2_s8(*v49.i8, *a9.i8) & 0xFF00FF00FF00FFLL))), vcvtq_f32_u32(vmovl_high_u16(v56))), vcvtq_f32_u32(vmovl_u16(v55)))));
        v60 = vqmovun_high_s32(vqmovun_s32(vcvtnq_s32_f32(vdivq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vzip1_s8(v58, *a9.i8) & 0xFF00FF00FF00FFLL))), vcvtq_f32_u32(vmovl_u16(*v57.i8))), vcvtq_f32_u32(vmovl_u16((*&vzip1_s8(*v53.i8, *a9.i8) & 0xFF00FF00FF00FFLL)))))), vcvtnq_s32_f32(vdivq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vzip2_s8(v58, *a9.i8) & 0xFF00FF00FF00FFLL))), vcvtq_f32_u32(vmovl_high_u16(v57))), vcvtq_f32_u32(vmovl_u16((*&vzip2_s8(*v53.i8, *a9.i8) & 0xFF00FF00FF00FFLL))))));
        v61 = vmvnq_s8(v46);
        v62 = vminq_u16(vqaddq_u16(vqaddq_u16(vorrq_s8(v59, vmovl_s8(*v52.i8)), vmull_u8(*v49.i8, *v61.i8)), v119.val[1]), v29);
        v63 = vminq_u16(vqaddq_u16(vqaddq_u16(vorrq_s8(v60, vmovl_high_s8(v52)), vmull_high_u8(v49, v61)), v51), v29);
        v119.val[0] = vrsraq_n_u16(v62, v62, 8uLL);
        v64 = vrsraq_n_u16(v63, v63, 8uLL);
        *v119.val[0].i8 = vqrshrn_n_u16(v119.val[0], 8uLL);
        *v119.val[1].i8 = vqrshrn_n_u16(v64, 8uLL);
        v65 = vqtbl2q_s8(v119, xmmword_18439C7B0);
        v17 = vqrshrn_high_n_u16(*v119.val[0].i8, v64, 8uLL);
        v16 = vminq_u8(v17, v65);
        v15 = vceqzq_s8(v46);
        *v21 = vbslq_s8(v15, v45, vbslq_s8(vceqzq_s8(v47), v44, v16));
        v22 += v27;
        v43 -= 4;
        v19 = (v19 + v28);
        v21 = (v21 + v28);
      }

      while (v43 > 3);
      v18 = v18 - v42 + v43;
      goto LABEL_37;
    }

    if (v31)
    {
      break;
    }

    v32 = &v22[v18];
    v33 = v22;
    do
    {
      v34 = v33++;
    }

    while (v33 <= v32 && (vminvq_u8(vceqzq_s8(*v34)) & 0x80) != 0);
    do
    {
      v35 = v34;
      v34 = (v34 + 4);
    }

    while (v34 <= v32 && !v35->i32[0]);
    if (v35 < v32)
    {
      while (!v35->i8[0])
      {
        v35 = (v35 + 1);
        if (v35 >= v32)
        {
          v35 = &v22[v18];
          break;
        }
      }
    }

    v36 = v35 - v22;
    v37 = (v35 - v22) * a6;
    v19 = (v19 + 4 * v37);
    v21 = (v21 + 4 * v37);
    v22 += v37;
    v18 -= v36;
LABEL_37:
    if (v18 <= 3)
    {
      goto LABEL_40;
    }
  }

  v66 = 0;
  while (1)
  {
    v15.i32[0] = v31;
    v67 = vqtbl1q_s8(v15, xmmword_18439C7A0);
    v68 = vorrq_s8(*(v19 + v66), a9);
    v69 = vorrq_s8(vbicq_s8(v26, vceqzq_s8(v67)), *(v21 + v66));
    v70 = vminq_u16(vmull_u8(*v68.i8, *v67.i8), v29);
    v71 = vminq_u16(vmull_high_u8(v68, v67), v29);
    v72 = vrsraq_n_u16(v71, v71, 8uLL);
    *v16.i8 = vqrshrn_n_u16(vrsraq_n_u16(v70, v70, 8uLL), 8uLL);
    *v17.i8 = vqrshrn_n_u16(v72, 8uLL);
    v73 = vqtbl2q_s8(*v16.i8, xmmword_18439C7B0);
    v74 = vqrshrn_high_n_u16(*v16.i8, v72, 8uLL);
    v75 = vqtbl1q_s8(v69, xmmword_18439C790);
    v76 = vminq_u8(v74, v73);
    v77 = vminq_u8(v69, v75);
    v78 = vmvnq_s8(v75);
    v120.val[1] = vmull_u8(*v76.i8, *v78.i8);
    v79 = vmull_high_u8(v76, v78);
    v80 = vbicq_s8(vtstq_s8(v77, v77), vcgtq_u8(v73, (*&v76 & __PAIR128__(0xFFFFFF00FFFFFFLL, 0xFFFFFF00FFFFFFLL))));
    v81 = vorrq_s8(vqsubq_u8(v73, (*&v76 & __PAIR128__(0xFFFFFF00FFFFFFLL, 0xFFFFFF00FFFFFFLL))), vceqzq_s8(v77));
    v82 = *&vzip1_s8(*v81.i8, *a9.i8) & 0xFF00FF00FF00FFLL;
    v83 = *&vzip2_s8(*v81.i8, *a9.i8) & 0xFF00FF00FF00FFLL;
    v81.i64[0] = vextq_s8(v81, v81, 8uLL).u64[0];
    v84 = vmull_u8(*v73.i8, *v73.i8);
    v85 = vmull_high_u8(v73, v73);
    v86 = vextq_s8(v77, v77, 8uLL).u64[0];
    v87 = vqmovun_high_s32(vqmovun_s32(vcvtnq_s32_f32(vdivq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vzip1_s8(*v77.i8, *a9.i8) & 0xFF00FF00FF00FFLL))), vcvtq_f32_u32(vmovl_u16(*v84.i8))), vcvtq_f32_u32(vmovl_u16(v82))))), vcvtnq_s32_f32(vdivq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vzip2_s8(*v77.i8, *a9.i8) & 0xFF00FF00FF00FFLL))), vcvtq_f32_u32(vmovl_high_u16(v84))), vcvtq_f32_u32(vmovl_u16(v83)))));
    v88 = vqmovun_high_s32(vqmovun_s32(vcvtnq_s32_f32(vdivq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vzip1_s8(v86, *a9.i8) & 0xFF00FF00FF00FFLL))), vcvtq_f32_u32(vmovl_u16(*v85.i8))), vcvtq_f32_u32(vmovl_u16((*&vzip1_s8(*v81.i8, *a9.i8) & 0xFF00FF00FF00FFLL)))))), vcvtnq_s32_f32(vdivq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vzip2_s8(v86, *a9.i8) & 0xFF00FF00FF00FFLL))), vcvtq_f32_u32(vmovl_high_u16(v85))), vcvtq_f32_u32(vmovl_u16((*&vzip2_s8(*v81.i8, *a9.i8) & 0xFF00FF00FF00FFLL))))));
    v89 = vmvnq_s8(v73);
    v90 = vminq_u16(vqaddq_u16(vqaddq_u16(vorrq_s8(v87, vmovl_s8(*v80.i8)), vmull_u8(*v77.i8, *v89.i8)), v120.val[1]), v29);
    v91 = vminq_u16(vqaddq_u16(vqaddq_u16(vorrq_s8(v88, vmovl_high_s8(v80)), vmull_high_u8(v77, v89)), v79), v29);
    v120.val[0] = vrsraq_n_u16(v90, v90, 8uLL);
    v92 = vrsraq_n_u16(v91, v91, 8uLL);
    *v120.val[0].i8 = vqrshrn_n_u16(v120.val[0], 8uLL);
    *v120.val[1].i8 = vqrshrn_n_u16(v92, 8uLL);
    v93 = vqtbl2q_s8(v120, xmmword_18439C7B0);
    v17 = vqrshrn_high_n_u16(*v120.val[0].i8, v92, 8uLL);
    v16 = vminq_u8(v17, v93);
    v15 = vbslq_s8(vceqzq_s8(v75), v74, v16);
    *(v21 + v66) = vbslq_s8(vceqzq_s8(v73), v69, v15);
    v22 += v27;
    v18 -= 4;
    if (v18 < 4)
    {
      break;
    }

    v31 = *v22;
    v66 += v28;
    if ((*v22 - 1) >= 0xFFFFFFFE)
    {
      v19 = (v19 + v66);
      v21 = (v21 + v66);
      goto LABEL_37;
    }
  }

  v19 = (v19 + v28 + v66);
  v21 = (v21 + v28 + v66);
LABEL_40:
  v94 = v18 + a14;
  if (v94)
  {
    if (a7)
    {
      v95 = 0;
    }

    else
    {
      v95 = -1;
    }

    *a9.i8 = vand_s8(vdup_n_s8(v95), 0xFF000000FF000000);
    if (a8)
    {
      v96 = 0;
    }

    else
    {
      v96 = -1;
    }

    v97 = vand_s8(vdup_n_s8(v96), 0xFF000000FF000000);
    v98 = vdupq_n_s16(0xFE01u);
    do
    {
      a13.i32[0] = v19->i32[0];
      v99 = vmovl_u8(a13);
      LOBYTE(v100) = v99.i8[0];
      BYTE1(v100) = v99.i8[2];
      BYTE2(v100) = v99.i8[4];
      HIBYTE(v100) = v99.i8[6];
      v99.i32[0] = v21->i32[0];
      v101 = vmovl_u8(*v99.i8);
      LOBYTE(v102) = v101.i8[0];
      BYTE1(v102) = v101.i8[2];
      BYTE2(v102) = v101.i8[4];
      HIBYTE(v102) = v101.i8[6];
      v103.i8[7] = 0;
      v103.i8[0] = *v22;
      v103.i8[1] = *v22;
      v103.i8[2] = *v22;
      *(v103.i32 + 3) = *v22;
      *v101.i8 = vorr_s8(vbic_s8(v97, vceqz_s8(v103)), v102);
      v104 = vminq_u16(vmull_u8(vorr_s8(v100, *a9.i8), v103), v98);
      v105 = vrsraq_n_u16(v104, v104, 8uLL);
      v106 = vqrshrn_n_u16(v105, 8uLL);
      *v105.i8 = vqtbl1_s8(vqrshrn_high_n_u16(v106, v105, 8uLL), 0x707070703030303);
      v107.i64[0] = v101.i64[0];
      v107.i64[1] = v101.i64[0];
      *v107.i8 = vqtbl1_s8(v107, 0x707070703030303);
      v108 = vmin_u8(v106, *v105.i8);
      v109 = vmin_u8(*v101.i8, *v107.i8);
      v110 = vmull_u8(v108, vmvn_s8(*v107.i8));
      *&v108 &= 0xFFFFFF00FFFFFFuLL;
      v111 = vmovl_s8(vbic_s8(vtst_s8(v109, v109), vcgt_u8(*v105.i8, v108)));
      v112 = vorr_s8(vqsub_u8(*v105.i8, v108), vceqz_s8(v109));
      v113 = vmull_u8(*v105.i8, *v105.i8);
      v114 = vminq_u16(vqaddq_u16(vqaddq_u16(vorrq_s8(vqmovun_high_s32(vqmovun_s32(vcvtnq_s32_f32(vdivq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vzip1_s8(v109, *a9.i8) & 0xFF00FF00FF00FFLL))), vcvtq_f32_u32(vmovl_u16(*v113.i8))), vcvtq_f32_u32(vmovl_u16((*&vzip1_s8(v112, *a9.i8) & 0xFF00FF00FF00FFLL)))))), vcvtnq_s32_f32(vdivq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vzip2_s8(v109, *a9.i8) & 0xFF00FF00FF00FFLL))), vcvtq_f32_u32(vmovl_high_u16(v113))), vcvtq_f32_u32(vmovl_u16((*&vzip2_s8(v112, *a9.i8) & 0xFF00FF00FF00FFLL)))))), v111), vmull_u8(v109, vmvn_s8(*v105.i8))), v110), v98);
      v115 = vrsraq_n_u16(v114, v114, 8uLL);
      v116 = vqrshrn_n_u16(v115, 8uLL);
      *v101.i8 = vbsl_s8(vceqz_s8(*v105.i8), *v101.i8, vbsl_s8(vceqz_s8(*v107.i8), v106, vmin_u8(v116, vqtbl1_s8(vqrshrn_high_n_u16(v116, v115, 8uLL), 0x707070703030303))));
      a13 = vmovn_s16(vzip1q_s8(v101, a9));
      v21->i32[0] = a13.i32[0];
      v117 = &v19->i8[4 * a6];
      v22 += a6;
      if (v117 >= v20)
      {
        v118 = -a5;
      }

      else
      {
        v118 = 0;
      }

      v19 = &v117[4 * v118];
      v21 = (v21 + 4 * a6);
      --v94;
    }

    while (v94);
  }

  *result = v19;
  *a3 = v20;
  *a2 = v21;
  *a4 = v22;
  return result;
}

int8x16_t **vec::template_mark_pixelmask_row<(CGCompositeOperation)17,_rgba8_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, char **a4, int a5, int a6, int a7, int a8, int8x16_t a9, double a10, double a11, double a12, int8x16_t a13, uint64_t a14, unint64_t a15)
{
  v16 = a15;
  v17 = *result;
  v18 = *a3;
  v19 = *a2;
  v20 = *a4;
  if (a15 < 4)
  {
    goto LABEL_40;
  }

  if (a7)
  {
    v21 = 0;
  }

  else
  {
    v21 = -1;
  }

  v22.i64[0] = 0xFF000000FF000000;
  v22.i64[1] = 0xFF000000FF000000;
  a9 = vandq_s8(vdupq_n_s8(v21), v22);
  if (a8)
  {
    v23 = 0;
  }

  else
  {
    v23 = -1;
  }

  v24 = vandq_s8(vdupq_n_s8(v23), v22);
  v25 = 4 * a6;
  v26 = 4 * v25;
  v27 = vdupq_n_s16(0xFE01u);
  a13.i64[0] = -1;
  a13.i64[1] = -1;
  while (1)
  {
    v28 = *v20;
    if (*v20 == -1)
    {
      v35 = &v20[v16];
      v36 = v20;
      do
      {
        v37 = v36++;
      }

      while (v36 <= v35 && (vminvq_u8(vceqq_s8(*v37, a13)) & 0x80) != 0);
      do
      {
        v38 = v37;
        v37 = (v37 + 4);
      }

      while (v37 <= v35 && v38->i32[0] == -1);
      if (v38 < v35)
      {
        while (v38->u8[0] == 255)
        {
          v38 = (v38 + 1);
          if (v38 >= v35)
          {
            v38 = &v20[v16];
            break;
          }
        }
      }

      v39 = v38 - v20;
      v40 = v38 - v20;
      do
      {
        v41 = vorrq_s8(*v17, a9);
        v42 = vorrq_s8(*v19, v24);
        v43 = vqtbl1q_s8(v41, xmmword_18439C790);
        v44 = vqtbl1q_s8(v42, xmmword_18439C790);
        v45 = vminq_u8(v41, v43);
        v46 = vminq_u8(v42, v44);
        v47 = vmull_u8(*v45.i8, *v44.i8);
        v48 = vmvnq_s8(v44);
        v49 = vmull_u8(*v45.i8, *v48.i8);
        v50 = vmvnq_s8(v43);
        v51 = vqaddq_u16(vqaddq_u16(vmaxq_u16(vmull_high_u8(v45, v44), vmull_high_u8(v46, v43)), vmull_high_u8(v45, v48)), vmull_high_u8(v46, v50));
        v52 = vminq_u16(vqaddq_u16(vqaddq_u16(vmaxq_u16(v47, vmull_u8(*v46.i8, *v43.i8)), v49), vmull_u8(*v46.i8, *v50.i8)), v27);
        v53 = vminq_u16(v51, v27);
        v15 = vceqzq_s8(v43);
        *v19 = vbslq_s8(v15, v42, vbslq_s8(vceqzq_s8(v44), v41, vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v52, v52, 8uLL), 8uLL), vrsraq_n_u16(v53, v53, 8uLL), 8uLL)));
        v20 += v25;
        v40 -= 4;
        v17 = (v17 + v26);
        v19 = (v19 + v26);
      }

      while (v40 > 3);
      v16 = v16 - v39 + v40;
      goto LABEL_37;
    }

    if (v28)
    {
      break;
    }

    v29 = &v20[v16];
    v30 = v20;
    do
    {
      v31 = v30++;
    }

    while (v30 <= v29 && (vminvq_u8(vceqzq_s8(*v31)) & 0x80) != 0);
    do
    {
      v32 = v31;
      v31 = (v31 + 4);
    }

    while (v31 <= v29 && !v32->i32[0]);
    if (v32 < v29)
    {
      while (!v32->i8[0])
      {
        v32 = (v32 + 1);
        if (v32 >= v29)
        {
          v32 = &v20[v16];
          break;
        }
      }
    }

    v33 = v32 - v20;
    v34 = (v32 - v20) * a6;
    v17 = (v17 + 4 * v34);
    v19 = (v19 + 4 * v34);
    v20 += v34;
    v16 -= v33;
LABEL_37:
    if (v16 <= 3)
    {
      goto LABEL_40;
    }
  }

  v54 = 0;
  while (1)
  {
    v15.i32[0] = v28;
    v55 = vqtbl1q_s8(v15, xmmword_18439C7A0);
    v56 = vorrq_s8(*(v17 + v54), a9);
    v57 = vorrq_s8(vbicq_s8(v24, vceqzq_s8(v55)), *(v19 + v54));
    v90.val[1] = vmull_u8(*v56.i8, *v55.i8);
    v58 = vmull_high_u8(v56, v55);
    v59 = vminq_u16(v90.val[1], v27);
    v60 = vminq_u16(v58, v27);
    v90.val[0] = vrsraq_n_u16(v59, v59, 8uLL);
    v61 = vrsraq_n_u16(v60, v60, 8uLL);
    *v90.val[0].i8 = vqrshrn_n_u16(v90.val[0], 8uLL);
    *v90.val[1].i8 = vqrshrn_n_u16(v61, 8uLL);
    v62 = vqtbl2q_s8(v90, xmmword_18439C7B0);
    v90.val[0] = vqrshrn_high_n_u16(*v90.val[0].i8, v61, 8uLL);
    v63 = vqtbl1q_s8(v57, xmmword_18439C790);
    v90.val[1] = vminq_u8(v90.val[0], v62);
    v64 = vminq_u8(v57, v63);
    v65 = vmull_u8(*v90.val[1].i8, *v63.i8);
    v66 = vmvnq_s8(v63);
    v67 = vmull_u8(*v90.val[1].i8, *v66.i8);
    v68 = vmvnq_s8(v62);
    v90.val[1] = vqaddq_u16(vqaddq_u16(vmaxq_u16(vmull_high_u8(v90.val[1], v63), vmull_high_u8(v64, v62)), vmull_high_u8(v90.val[1], v66)), vmull_high_u8(v64, v68));
    v69 = vminq_u16(vqaddq_u16(vqaddq_u16(vmaxq_u16(v65, vmull_u8(*v64.i8, *v62.i8)), v67), vmull_u8(*v64.i8, *v68.i8)), v27);
    v90.val[1] = vminq_u16(v90.val[1], v27);
    v70 = vbslq_s8(vceqzq_s8(v63), v90.val[0], vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v69, v69, 8uLL), 8uLL), vrsraq_n_u16(v90.val[1], v90.val[1], 8uLL), 8uLL));
    v15 = vceqzq_s8(v62);
    *(v19 + v54) = vbslq_s8(v15, v57, v70);
    v20 += v25;
    v16 -= 4;
    if (v16 < 4)
    {
      break;
    }

    v28 = *v20;
    v54 += v26;
    if ((*v20 - 1) >= 0xFFFFFFFE)
    {
      v17 = (v17 + v54);
      v19 = (v19 + v54);
      goto LABEL_37;
    }
  }

  v17 = (v17 + v26 + v54);
  v19 = (v19 + v26 + v54);
LABEL_40:
  v71 = v16 + a14;
  if (v71)
  {
    if (a7)
    {
      v72 = 0;
    }

    else
    {
      v72 = -1;
    }

    *a9.i8 = vand_s8(vdup_n_s8(v72), 0xFF000000FF000000);
    if (a8)
    {
      v73 = 0;
    }

    else
    {
      v73 = -1;
    }

    v74 = vand_s8(vdup_n_s8(v73), 0xFF000000FF000000);
    v75 = vdupq_n_s16(0xFE01u);
    do
    {
      a13.i32[0] = v17->i32[0];
      v76 = vmovl_u8(*a13.i8);
      LOBYTE(v77) = v76.i8[0];
      BYTE1(v77) = v76.i8[2];
      BYTE2(v77) = v76.i8[4];
      HIBYTE(v77) = v76.i8[6];
      v76.i32[0] = v19->i32[0];
      v78 = vmovl_u8(*v76.i8);
      LOBYTE(v79) = v78.i8[0];
      BYTE1(v79) = v78.i8[2];
      BYTE2(v79) = v78.i8[4];
      HIBYTE(v79) = v78.i8[6];
      v78.i8[7] = 0;
      v78.i8[0] = *v20;
      v78.i8[1] = *v20;
      v78.i8[2] = *v20;
      *(v78.i32 + 3) = *v20;
      v80 = vorr_s8(vbic_s8(v74, vceqz_s8(*v78.i8)), v79);
      v81 = vminq_u16(vmull_u8(vorr_s8(v77, *a9.i8), *v78.i8), v75);
      v82 = vrsraq_n_u16(v81, v81, 8uLL);
      v83 = vqrshrn_n_u16(v82, 8uLL);
      v84 = vqrshrn_high_n_u16(v83, v82, 8uLL);
      *v82.i8 = v80;
      a13.u64[1] = v80;
      *v84.i8 = vqtbl1_s8(v84, 0x707070703030303);
      *a13.i8 = vqtbl1_s8(a13, 0x707070703030303);
      v85 = vmin_u8(v83, *v84.i8);
      v86 = vmin_u8(v80, *a13.i8);
      v87 = vminq_u16(vqaddq_u16(vqaddq_u16(vmaxq_u16(vmull_u8(v85, *a13.i8), vmull_u8(v86, *v84.i8)), vmull_u8(v85, vmvn_s8(*a13.i8))), vmull_u8(v86, vmvn_s8(*v84.i8))), v75);
      *a13.i8 = vbsl_s8(vceqz_s8(*v84.i8), v80, vbsl_s8(vceqz_s8(*a13.i8), v83, vqrshrn_n_u16(vrsraq_n_u16(v87, v87, 8uLL), 8uLL)));
      *a13.i8 = vmovn_s16(vzip1q_s8(a13, a9));
      v19->i32[0] = a13.i32[0];
      v88 = &v17->i8[4 * a6];
      v20 += a6;
      if (v88 >= v18)
      {
        v89 = -a5;
      }

      else
      {
        v89 = 0;
      }

      v17 = &v88[4 * v89];
      v19 = (v19 + 4 * a6);
      --v71;
    }

    while (v71);
  }

  *result = v17;
  *a3 = v18;
  *a2 = v19;
  *a4 = v20;
  return result;
}

int8x16_t **vec::template_mark_pixelmask_row<(CGCompositeOperation)16,_rgba8_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, char **a4, int a5, int a6, int a7, int a8, int8x16_t a9, double a10, double a11, double a12, int8x16_t a13, uint64_t a14, unint64_t a15)
{
  v16 = a15;
  v17 = *result;
  v18 = *a3;
  v19 = *a2;
  v20 = *a4;
  if (a15 < 4)
  {
    goto LABEL_40;
  }

  if (a7)
  {
    v21 = 0;
  }

  else
  {
    v21 = -1;
  }

  v22.i64[0] = 0xFF000000FF000000;
  v22.i64[1] = 0xFF000000FF000000;
  a9 = vandq_s8(vdupq_n_s8(v21), v22);
  if (a8)
  {
    v23 = 0;
  }

  else
  {
    v23 = -1;
  }

  v24 = vandq_s8(vdupq_n_s8(v23), v22);
  v25 = 4 * a6;
  v26 = 4 * v25;
  v27 = vdupq_n_s16(0xFE01u);
  a13.i64[0] = -1;
  a13.i64[1] = -1;
  while (1)
  {
    v28 = *v20;
    if (*v20 == -1)
    {
      v35 = &v20[v16];
      v36 = v20;
      do
      {
        v37 = v36++;
      }

      while (v36 <= v35 && (vminvq_u8(vceqq_s8(*v37, a13)) & 0x80) != 0);
      do
      {
        v38 = v37;
        v37 = (v37 + 4);
      }

      while (v37 <= v35 && v38->i32[0] == -1);
      if (v38 < v35)
      {
        while (v38->u8[0] == 255)
        {
          v38 = (v38 + 1);
          if (v38 >= v35)
          {
            v38 = &v20[v16];
            break;
          }
        }
      }

      v39 = v38 - v20;
      v40 = v38 - v20;
      do
      {
        v41 = vorrq_s8(*v17, a9);
        v42 = vorrq_s8(*v19, v24);
        v43 = vqtbl1q_s8(v41, xmmword_18439C790);
        v44 = vqtbl1q_s8(v42, xmmword_18439C790);
        v45 = vminq_u8(v41, v43);
        v46 = vminq_u8(v42, v44);
        v47 = vmull_u8(*v45.i8, *v44.i8);
        v48 = vmvnq_s8(v44);
        v49 = vmull_u8(*v45.i8, *v48.i8);
        v50 = vmvnq_s8(v43);
        v51 = vqaddq_u16(vqaddq_u16(vminq_u16(vmull_high_u8(v46, v43), vmull_high_u8(v45, v44)), vmull_high_u8(v45, v48)), vmull_high_u8(v46, v50));
        v52 = vminq_u16(vqaddq_u16(vqaddq_u16(vminq_u16(vmull_u8(*v46.i8, *v43.i8), v47), v49), vmull_u8(*v46.i8, *v50.i8)), v27);
        v53 = vminq_u16(v51, v27);
        v15 = vceqzq_s8(v43);
        *v19 = vbslq_s8(v15, v42, vbslq_s8(vceqzq_s8(v44), v41, vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v52, v52, 8uLL), 8uLL), vrsraq_n_u16(v53, v53, 8uLL), 8uLL)));
        v20 += v25;
        v40 -= 4;
        v17 = (v17 + v26);
        v19 = (v19 + v26);
      }

      while (v40 > 3);
      v16 = v16 - v39 + v40;
      goto LABEL_37;
    }

    if (v28)
    {
      break;
    }

    v29 = &v20[v16];
    v30 = v20;
    do
    {
      v31 = v30++;
    }

    while (v30 <= v29 && (vminvq_u8(vceqzq_s8(*v31)) & 0x80) != 0);
    do
    {
      v32 = v31;
      v31 = (v31 + 4);
    }

    while (v31 <= v29 && !v32->i32[0]);
    if (v32 < v29)
    {
      while (!v32->i8[0])
      {
        v32 = (v32 + 1);
        if (v32 >= v29)
        {
          v32 = &v20[v16];
          break;
        }
      }
    }

    v33 = v32 - v20;
    v34 = (v32 - v20) * a6;
    v17 = (v17 + 4 * v34);
    v19 = (v19 + 4 * v34);
    v20 += v34;
    v16 -= v33;
LABEL_37:
    if (v16 <= 3)
    {
      goto LABEL_40;
    }
  }

  v54 = 0;
  while (1)
  {
    v15.i32[0] = v28;
    v55 = vqtbl1q_s8(v15, xmmword_18439C7A0);
    v56 = vorrq_s8(*(v17 + v54), a9);
    v57 = vorrq_s8(vbicq_s8(v24, vceqzq_s8(v55)), *(v19 + v54));
    v90.val[1] = vmull_u8(*v56.i8, *v55.i8);
    v58 = vmull_high_u8(v56, v55);
    v59 = vminq_u16(v90.val[1], v27);
    v60 = vminq_u16(v58, v27);
    v90.val[0] = vrsraq_n_u16(v59, v59, 8uLL);
    v61 = vrsraq_n_u16(v60, v60, 8uLL);
    *v90.val[0].i8 = vqrshrn_n_u16(v90.val[0], 8uLL);
    *v90.val[1].i8 = vqrshrn_n_u16(v61, 8uLL);
    v62 = vqtbl2q_s8(v90, xmmword_18439C7B0);
    v90.val[0] = vqrshrn_high_n_u16(*v90.val[0].i8, v61, 8uLL);
    v63 = vqtbl1q_s8(v57, xmmword_18439C790);
    v90.val[1] = vminq_u8(v90.val[0], v62);
    v64 = vminq_u8(v57, v63);
    v65 = vmull_u8(*v90.val[1].i8, *v63.i8);
    v66 = vmvnq_s8(v63);
    v67 = vmull_u8(*v90.val[1].i8, *v66.i8);
    v68 = vmvnq_s8(v62);
    v90.val[1] = vqaddq_u16(vqaddq_u16(vminq_u16(vmull_high_u8(v64, v62), vmull_high_u8(v90.val[1], v63)), vmull_high_u8(v90.val[1], v66)), vmull_high_u8(v64, v68));
    v69 = vminq_u16(vqaddq_u16(vqaddq_u16(vminq_u16(vmull_u8(*v64.i8, *v62.i8), v65), v67), vmull_u8(*v64.i8, *v68.i8)), v27);
    v90.val[1] = vminq_u16(v90.val[1], v27);
    v70 = vbslq_s8(vceqzq_s8(v63), v90.val[0], vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v69, v69, 8uLL), 8uLL), vrsraq_n_u16(v90.val[1], v90.val[1], 8uLL), 8uLL));
    v15 = vceqzq_s8(v62);
    *(v19 + v54) = vbslq_s8(v15, v57, v70);
    v20 += v25;
    v16 -= 4;
    if (v16 < 4)
    {
      break;
    }

    v28 = *v20;
    v54 += v26;
    if ((*v20 - 1) >= 0xFFFFFFFE)
    {
      v17 = (v17 + v54);
      v19 = (v19 + v54);
      goto LABEL_37;
    }
  }

  v17 = (v17 + v26 + v54);
  v19 = (v19 + v26 + v54);
LABEL_40:
  v71 = v16 + a14;
  if (v71)
  {
    if (a7)
    {
      v72 = 0;
    }

    else
    {
      v72 = -1;
    }

    *a9.i8 = vand_s8(vdup_n_s8(v72), 0xFF000000FF000000);
    if (a8)
    {
      v73 = 0;
    }

    else
    {
      v73 = -1;
    }

    v74 = vand_s8(vdup_n_s8(v73), 0xFF000000FF000000);
    v75 = vdupq_n_s16(0xFE01u);
    do
    {
      a13.i32[0] = v17->i32[0];
      v76 = vmovl_u8(*a13.i8);
      LOBYTE(v77) = v76.i8[0];
      BYTE1(v77) = v76.i8[2];
      BYTE2(v77) = v76.i8[4];
      HIBYTE(v77) = v76.i8[6];
      v76.i32[0] = v19->i32[0];
      v78 = vmovl_u8(*v76.i8);
      LOBYTE(v79) = v78.i8[0];
      BYTE1(v79) = v78.i8[2];
      BYTE2(v79) = v78.i8[4];
      HIBYTE(v79) = v78.i8[6];
      v78.i8[7] = 0;
      v78.i8[0] = *v20;
      v78.i8[1] = *v20;
      v78.i8[2] = *v20;
      *(v78.i32 + 3) = *v20;
      v80 = vorr_s8(vbic_s8(v74, vceqz_s8(*v78.i8)), v79);
      v81 = vminq_u16(vmull_u8(vorr_s8(v77, *a9.i8), *v78.i8), v75);
      v82 = vrsraq_n_u16(v81, v81, 8uLL);
      v83 = vqrshrn_n_u16(v82, 8uLL);
      v84 = vqrshrn_high_n_u16(v83, v82, 8uLL);
      *v82.i8 = v80;
      a13.u64[1] = v80;
      *v84.i8 = vqtbl1_s8(v84, 0x707070703030303);
      *a13.i8 = vqtbl1_s8(a13, 0x707070703030303);
      v85 = vmin_u8(v83, *v84.i8);
      v86 = vmin_u8(v80, *a13.i8);
      v87 = vminq_u16(vqaddq_u16(vqaddq_u16(vminq_u16(vmull_u8(v85, *a13.i8), vmull_u8(v86, *v84.i8)), vmull_u8(v85, vmvn_s8(*a13.i8))), vmull_u8(v86, vmvn_s8(*v84.i8))), v75);
      *a13.i8 = vbsl_s8(vceqz_s8(*v84.i8), v80, vbsl_s8(vceqz_s8(*a13.i8), v83, vqrshrn_n_u16(vrsraq_n_u16(v87, v87, 8uLL), 8uLL)));
      *a13.i8 = vmovn_s16(vzip1q_s8(a13, a9));
      v19->i32[0] = a13.i32[0];
      v88 = &v17->i8[4 * a6];
      v20 += a6;
      if (v88 >= v18)
      {
        v89 = -a5;
      }

      else
      {
        v89 = 0;
      }

      v17 = &v88[4 * v89];
      v19 = (v19 + 4 * a6);
      --v71;
    }

    while (v71);
  }

  *result = v17;
  *a3 = v18;
  *a2 = v19;
  *a4 = v20;
  return result;
}

int8x16_t **vec::template_mark_pixelmask_row<(CGCompositeOperation)15,_rgba8_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, char **a4, int a5, int a6, int a7, int a8, int8x16_t a9, double a10, double a11, double a12, double a13, uint16x8_t a14, uint64_t a15, unint64_t a16)
{
  v18 = a16;
  v19 = *result;
  v20 = *a3;
  v21 = *a2;
  v22 = *a4;
  if (a16 < 4)
  {
    goto LABEL_40;
  }

  if (a7)
  {
    v23 = 0;
  }

  else
  {
    v23 = -1;
  }

  v24.i64[0] = 0xFF000000FF000000;
  v24.i64[1] = 0xFF000000FF000000;
  a9 = vandq_s8(vdupq_n_s8(v23), v24);
  if (a8)
  {
    v25 = 0;
  }

  else
  {
    v25 = -1;
  }

  v26 = vandq_s8(vdupq_n_s8(v25), v24);
  v27 = 4 * a6;
  v28 = 4 * v27;
  v29 = vdupq_n_s16(0xFE01u);
  a14.i64[0] = -1;
  a14.i64[1] = -1;
  while (1)
  {
    v30 = *v22;
    if (*v22 == -1)
    {
      v37 = &v22[v18];
      v38 = v22;
      do
      {
        v39 = v38++;
      }

      while (v38 <= v37 && (vminvq_u8(vceqq_s8(*v39, a14)) & 0x80) != 0);
      do
      {
        v40 = v39;
        v39 = (v39 + 4);
      }

      while (v39 <= v37 && v40->i32[0] == -1);
      if (v40 < v37)
      {
        while (v40->u8[0] == 255)
        {
          v40 = (v40 + 1);
          if (v40 >= v37)
          {
            v40 = &v22[v18];
            break;
          }
        }
      }

      v41 = v40 - v22;
      v42 = v40 - v22;
      do
      {
        v43 = vorrq_s8(*v19, a9);
        v44 = vorrq_s8(*v21, v26);
        v45 = vqtbl1q_s8(v43, xmmword_18439C790);
        v46 = vqtbl1q_s8(v44, xmmword_18439C790);
        v47 = vminq_u8(v43, v45);
        v48 = vminq_u8(v44, v46);
        v49 = vsubq_s8(v45, v47);
        v50 = vsubq_s8(v46, v48);
        v51 = vcgtq_u8(vrhaddq_u8(v46, 0), v48);
        v52 = vqaddq_u16(vmull_u8(*v49.i8, *v48.i8), vmull_u8(*v50.i8, *v47.i8));
        v53 = vqaddq_u16(vmull_high_u8(v49, v48), vmull_high_u8(v50, v47));
        v54 = vminq_u16(vbslq_s8(vmovl_s8(*v51.i8), v52, vqsubq_u16(vmull_u8(*v45.i8, *v46.i8), v52)), v29);
        v55 = vminq_u16(vbslq_s8(vmovl_high_s8(v51), v53, vqsubq_u16(vmull_high_u8(v45, v46), v53)), v29);
        v17 = vsubq_s8(vaddq_s8(v48, v47), vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v54, v54, 8uLL), 8uLL), vrsraq_n_u16(v55, v55, 8uLL), 8uLL));
        v16 = vceqzq_s8(v45);
        *v21 = vbslq_s8(v16, v44, vbslq_s8(vceqzq_s8(v46), v43, v17));
        v22 += v27;
        v42 -= 4;
        v19 = (v19 + v28);
        v21 = (v21 + v28);
      }

      while (v42 > 3);
      v18 = v18 - v41 + v42;
      goto LABEL_37;
    }

    if (v30)
    {
      break;
    }

    v31 = &v22[v18];
    v32 = v22;
    do
    {
      v33 = v32++;
    }

    while (v32 <= v31 && (vminvq_u8(vceqzq_s8(*v33)) & 0x80) != 0);
    do
    {
      v34 = v33;
      v33 = (v33 + 4);
    }

    while (v33 <= v31 && !v34->i32[0]);
    if (v34 < v31)
    {
      while (!v34->i8[0])
      {
        v34 = (v34 + 1);
        if (v34 >= v31)
        {
          v34 = &v22[v18];
          break;
        }
      }
    }

    v35 = v34 - v22;
    v36 = (v34 - v22) * a6;
    v19 = (v19 + 4 * v36);
    v21 = (v21 + 4 * v36);
    v22 += v36;
    v18 -= v35;
LABEL_37:
    if (v18 <= 3)
    {
      goto LABEL_40;
    }
  }

  v56 = 0;
  while (1)
  {
    v16.i32[0] = v30;
    v57 = vqtbl1q_s8(v16, xmmword_18439C7A0);
    v58 = vorrq_s8(*(v19 + v56), a9);
    v59 = vorrq_s8(vbicq_s8(v26, vceqzq_s8(v57)), *(v21 + v56));
    v60 = vminq_u16(vmull_u8(*v58.i8, *v57.i8), v29);
    v61 = vminq_u16(vmull_high_u8(v58, v57), v29);
    v62 = vrsraq_n_u16(v61, v61, 8uLL);
    *v58.i8 = vqrshrn_n_u16(vrsraq_n_u16(v60, v60, 8uLL), 8uLL);
    *v17.i8 = vqrshrn_n_u16(v62, 8uLL);
    v63 = vqtbl2q_s8(*(&v17 - 1), xmmword_18439C7B0);
    v64 = vqrshrn_high_n_u16(*v58.i8, v62, 8uLL);
    v65 = vqtbl1q_s8(v59, xmmword_18439C790);
    v66 = vminq_u8(v64, v63);
    v67 = vminq_u8(v59, v65);
    v68 = vsubq_s8(v63, v66);
    v69 = vsubq_s8(v65, v67);
    v70 = vcgtq_u8(vrhaddq_u8(v65, 0), v67);
    v71 = vqaddq_u16(vmull_u8(*v68.i8, *v67.i8), vmull_u8(*v69.i8, *v66.i8));
    v72 = vqaddq_u16(vmull_high_u8(v68, v67), vmull_high_u8(v69, v66));
    v73 = vminq_u16(vbslq_s8(vmovl_s8(*v70.i8), v71, vqsubq_u16(vmull_u8(*v63.i8, *v65.i8), v71)), v29);
    v74 = vminq_u16(vbslq_s8(vmovl_high_s8(v70), v72, vqsubq_u16(vmull_high_u8(v63, v65), v72)), v29);
    v17 = vsubq_s8(vaddq_s8(v67, v66), vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v73, v73, 8uLL), 8uLL), vrsraq_n_u16(v74, v74, 8uLL), 8uLL));
    v16 = vbslq_s8(vceqzq_s8(v65), v64, v17);
    *(v21 + v56) = vbslq_s8(vceqzq_s8(v63), v59, v16);
    v22 += v27;
    v18 -= 4;
    if (v18 < 4)
    {
      break;
    }

    v30 = *v22;
    v56 += v28;
    if ((*v22 - 1) >= 0xFFFFFFFE)
    {
      v19 = (v19 + v56);
      v21 = (v21 + v56);
      goto LABEL_37;
    }
  }

  v19 = (v19 + v28 + v56);
  v21 = (v21 + v28 + v56);
LABEL_40:
  v75 = v18 + a15;
  if (v75)
  {
    if (a7)
    {
      v76 = 0;
    }

    else
    {
      v76 = -1;
    }

    v77 = vdup_n_s8(v76);
    if (a8)
    {
      v78 = 0;
    }

    else
    {
      v78 = -1;
    }

    *a9.i8 = vand_s8(v77, 0xFF000000FF000000);
    v79 = vand_s8(vdup_n_s8(v78), 0xFF000000FF000000);
    v80 = vdupq_n_s16(0xFE01u);
    do
    {
      a14.i32[0] = v19->i32[0];
      v81 = vmovl_u8(*a14.i8);
      LOBYTE(v82) = v81.i8[0];
      BYTE1(v82) = v81.i8[2];
      BYTE2(v82) = v81.i8[4];
      HIBYTE(v82) = v81.i8[6];
      v81.i32[0] = v21->i32[0];
      v83 = vmovl_u8(*v81.i8);
      LOBYTE(v84) = v83.i8[0];
      BYTE1(v84) = v83.i8[2];
      BYTE2(v84) = v83.i8[4];
      HIBYTE(v84) = v83.i8[6];
      v83.i8[7] = 0;
      v83.i8[0] = *v22;
      v83.i8[1] = *v22;
      v83.i8[2] = *v22;
      *(v83.i32 + 3) = *v22;
      v85 = vorr_s8(vbic_s8(v79, vceqz_s8(*v83.i8)), v84);
      v86 = vminq_u16(vmull_u8(vorr_s8(v82, *a9.i8), *v83.i8), v80);
      a14 = vrsraq_n_u16(v86, v86, 8uLL);
      v87 = vqrshrn_n_u16(a14, 8uLL);
      *a14.i8 = vqtbl1_s8(vqrshrn_high_n_u16(v87, a14, 8uLL), 0x707070703030303);
      *v88.i8 = v85;
      v88.u64[1] = v85;
      *v88.i8 = vqtbl1_s8(v88, 0x707070703030303);
      v89 = vmin_u8(v87, *a14.i8);
      v90 = vmin_u8(v85, *v88.i8);
      v91 = vqaddq_u16(vmull_u8(vsub_s8(*a14.i8, v89), v90), vmull_u8(vsub_s8(*v88.i8, v90), v89));
      v92 = vminq_u16(vbslq_s8(vmovl_s8(vcgt_u8(vrhadd_u8(*v88.i8, 0), v90)), v91, vqsubq_u16(vmull_u8(*a14.i8, *v88.i8), v91)), v80);
      *a14.i8 = vbsl_s8(vceqz_s8(*a14.i8), v85, vbsl_s8(vceqz_s8(*v88.i8), v87, vsub_s8(vadd_s8(v90, v89), vqrshrn_n_u16(vrsraq_n_u16(v92, v92, 8uLL), 8uLL))));
      *a14.i8 = vmovn_s16(vzip1q_s8(a14, a9));
      v21->i32[0] = a14.i32[0];
      v93 = &v19->i8[4 * a6];
      v22 += a6;
      if (v93 >= v20)
      {
        v94 = -a5;
      }

      else
      {
        v94 = 0;
      }

      v19 = &v93[4 * v94];
      v21 = (v21 + 4 * a6);
      --v75;
    }

    while (v75);
  }

  *result = v19;
  *a3 = v20;
  *a2 = v21;
  *a4 = v22;
  return result;
}

int8x16_t **vec::template_mark_pixelmask_row<(CGCompositeOperation)14,_rgba8_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, char **a4, int a5, int a6, int a7, int a8, int8x16_t a9, double a10, double a11, double a12, uint16x8_t a13, uint64_t a14, unint64_t a15)
{
  v16 = a15;
  v17 = *result;
  v18 = *a3;
  v19 = *a2;
  v20 = *a4;
  if (a15 < 4)
  {
    goto LABEL_40;
  }

  if (a7)
  {
    v21 = 0;
  }

  else
  {
    v21 = -1;
  }

  v22.i64[0] = 0xFF000000FF000000;
  v22.i64[1] = 0xFF000000FF000000;
  a9 = vandq_s8(vdupq_n_s8(v21), v22);
  if (a8)
  {
    v23 = 0;
  }

  else
  {
    v23 = -1;
  }

  v24 = vandq_s8(vdupq_n_s8(v23), v22);
  v25 = 4 * a6;
  v26 = 4 * v25;
  v27 = vdupq_n_s16(0xFE01u);
  a13.i64[0] = -1;
  a13.i64[1] = -1;
  while (1)
  {
    v28 = *v20;
    if (*v20 == -1)
    {
      v35 = &v20[v16];
      v36 = v20;
      do
      {
        v37 = v36++;
      }

      while (v36 <= v35 && (vminvq_u8(vceqq_s8(*v37, a13)) & 0x80) != 0);
      do
      {
        v38 = v37;
        v37 = (v37 + 4);
      }

      while (v37 <= v35 && v38->i32[0] == -1);
      if (v38 < v35)
      {
        while (v38->u8[0] == 255)
        {
          v38 = (v38 + 1);
          if (v38 >= v35)
          {
            v38 = &v20[v16];
            break;
          }
        }
      }

      v39 = v38 - v20;
      v40 = v38 - v20;
      do
      {
        v41 = vorrq_s8(*v17, a9);
        v42 = vorrq_s8(*v19, v24);
        v43 = vbicq_s8(v42, vceqzq_s8(vqtbl1q_s8(v42, xmmword_18439C790)));
        v44 = vminq_u16(vmull_u8(*v41.i8, *v43.i8), v27);
        v45 = vminq_u16(vmull_high_u8(v41, v43), v27);
        v15 = vceqzq_s8(vqtbl1q_s8(v41, xmmword_18439C790));
        *v19 = vbslq_s8(v15, v42, vqaddq_u8(vqsubq_u8(v41, vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v44, v44, 8uLL), 8uLL), vrsraq_n_u16(v45, v45, 8uLL), 8uLL)), v43));
        v20 += v25;
        v40 -= 4;
        v17 = (v17 + v26);
        v19 = (v19 + v26);
      }

      while (v40 > 3);
      v16 = v16 - v39 + v40;
      goto LABEL_37;
    }

    if (v28)
    {
      break;
    }

    v29 = &v20[v16];
    v30 = v20;
    do
    {
      v31 = v30++;
    }

    while (v30 <= v29 && (vminvq_u8(vceqzq_s8(*v31)) & 0x80) != 0);
    do
    {
      v32 = v31;
      v31 = (v31 + 4);
    }

    while (v31 <= v29 && !v32->i32[0]);
    if (v32 < v29)
    {
      while (!v32->i8[0])
      {
        v32 = (v32 + 1);
        if (v32 >= v29)
        {
          v32 = &v20[v16];
          break;
        }
      }
    }

    v33 = v32 - v20;
    v34 = (v32 - v20) * a6;
    v17 = (v17 + 4 * v34);
    v19 = (v19 + 4 * v34);
    v20 += v34;
    v16 -= v33;
LABEL_37:
    if (v16 <= 3)
    {
      goto LABEL_40;
    }
  }

  v46 = 0;
  while (1)
  {
    v15.i32[0] = v28;
    v47 = vqtbl1q_s8(v15, xmmword_18439C7A0);
    v48 = vorrq_s8(*(v17 + v46), a9);
    v49 = vorrq_s8(vbicq_s8(v24, vceqzq_s8(v47)), *(v19 + v46));
    v75.val[1] = vmull_u8(*v48.i8, *v47.i8);
    v50 = vmull_high_u8(v48, v47);
    v51 = vminq_u16(v75.val[1], v27);
    v52 = vminq_u16(v50, v27);
    v75.val[0] = vrsraq_n_u16(v51, v51, 8uLL);
    v53 = vrsraq_n_u16(v52, v52, 8uLL);
    *v75.val[0].i8 = vqrshrn_n_u16(v75.val[0], 8uLL);
    *v75.val[1].i8 = vqrshrn_n_u16(v53, 8uLL);
    v54 = vqtbl2q_s8(v75, xmmword_18439C7B0);
    v55 = vbicq_s8(v49, vceqzq_s8(vqtbl1q_s8(v49, xmmword_18439C790)));
    v56 = vmull_u8(*v75.val[0].i8, *v55.i8);
    v75.val[0] = vqrshrn_high_n_u16(*v75.val[0].i8, v53, 8uLL);
    v57 = vminq_u16(v56, v27);
    v75.val[1] = vminq_u16(vmull_u8(*v75.val[1].i8, *&vextq_s8(v55, v55, 8uLL)), v27);
    v58 = vqaddq_u8(vqsubq_u8(v75.val[0], vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v57, v57, 8uLL), 8uLL), vrsraq_n_u16(v75.val[1], v75.val[1], 8uLL), 8uLL)), v55);
    v15 = vceqzq_s8(v54);
    *(v19 + v46) = vbslq_s8(v15, v49, v58);
    v20 += v25;
    v16 -= 4;
    if (v16 < 4)
    {
      break;
    }

    v28 = *v20;
    v46 += v26;
    if ((*v20 - 1) >= 0xFFFFFFFE)
    {
      v17 = (v17 + v46);
      v19 = (v19 + v46);
      goto LABEL_37;
    }
  }

  v17 = (v17 + v26 + v46);
  v19 = (v19 + v26 + v46);
LABEL_40:
  v59 = v16 + a14;
  if (v59)
  {
    if (a7)
    {
      v60 = 0;
    }

    else
    {
      v60 = -1;
    }

    *a9.i8 = vand_s8(vdup_n_s8(v60), 0xFF000000FF000000);
    if (a8)
    {
      v61 = 0;
    }

    else
    {
      v61 = -1;
    }

    v62 = vand_s8(vdup_n_s8(v61), 0xFF000000FF000000);
    v63 = vdupq_n_s16(0xFE01u);
    do
    {
      a13.i32[0] = v17->i32[0];
      v64 = vmovl_u8(*a13.i8);
      LOBYTE(v65) = v64.i8[0];
      BYTE1(v65) = v64.i8[2];
      BYTE2(v65) = v64.i8[4];
      HIBYTE(v65) = v64.i8[6];
      v64.i32[0] = v19->i32[0];
      v66 = vmovl_u8(*v64.i8);
      LOBYTE(v67) = v66.i8[0];
      BYTE1(v67) = v66.i8[2];
      BYTE2(v67) = v66.i8[4];
      HIBYTE(v67) = v66.i8[6];
      v66.i8[7] = 0;
      v66.i8[0] = *v20;
      v66.i8[1] = *v20;
      v66.i8[2] = *v20;
      *(v66.i32 + 3) = *v20;
      v68 = vorr_s8(vbic_s8(v62, vceqz_s8(*v66.i8)), v67);
      v69 = vminq_u16(vmull_u8(vorr_s8(v65, *a9.i8), *v66.i8), v63);
      a13 = vrsraq_n_u16(v69, v69, 8uLL);
      v70 = vqrshrn_n_u16(a13, 8uLL);
      *v71.i8 = v68;
      v71.u64[1] = v68;
      *v71.i8 = vbic_s8(v68, vceqz_s8(vqtbl1_s8(v71, 0x707070703030303)));
      v72 = vminq_u16(vmull_u8(v70, *v71.i8), v63);
      *a13.i8 = vbsl_s8(vceqz_s8(vqtbl1_s8(vqrshrn_high_n_u16(v70, a13, 8uLL), 0x707070703030303)), v68, vqadd_u8(vqsub_u8(v70, vqrshrn_n_u16(vrsraq_n_u16(v72, v72, 8uLL), 8uLL)), *v71.i8));
      *a13.i8 = vmovn_s16(vzip1q_s8(a13, a9));
      v19->i32[0] = a13.i32[0];
      v73 = &v17->i8[4 * a6];
      v20 += a6;
      if (v73 >= v18)
      {
        v74 = -a5;
      }

      else
      {
        v74 = 0;
      }

      v17 = &v73[4 * v74];
      v19 = (v19 + 4 * a6);
      --v59;
    }

    while (v59);
  }

  *result = v17;
  *a3 = v18;
  *a2 = v19;
  *a4 = v20;
  return result;
}

int8x16_t **vec::template_mark_pixelmask_row<(CGCompositeOperation)13,_rgba8_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, char **a4, int a5, int a6, int a7, int a8, int8x16_t a9, double a10, double a11, double a12, uint16x8_t a13, uint64_t a14, unint64_t a15)
{
  v17 = a15;
  v18 = *result;
  v19 = *a3;
  v20 = *a2;
  v21 = *a4;
  if (a15 < 4)
  {
    goto LABEL_40;
  }

  if (a7)
  {
    v22 = 0;
  }

  else
  {
    v22 = -1;
  }

  v23.i64[0] = 0xFF000000FF000000;
  v23.i64[1] = 0xFF000000FF000000;
  a9 = vandq_s8(vdupq_n_s8(v22), v23);
  if (a8)
  {
    v24 = 0;
  }

  else
  {
    v24 = -1;
  }

  v25 = vandq_s8(vdupq_n_s8(v24), v23);
  v26 = 4 * a6;
  v27 = 4 * v26;
  v28 = vdupq_n_s16(0xFE01u);
  a13.i64[0] = -1;
  a13.i64[1] = -1;
  while (1)
  {
    v29 = *v21;
    if (*v21 == -1)
    {
      v36 = &v21[v17];
      v37 = v21;
      do
      {
        v38 = v37++;
      }

      while (v37 <= v36 && (vminvq_u8(vceqq_s8(*v38, a13)) & 0x80) != 0);
      do
      {
        v39 = v38;
        v38 = (v38 + 4);
      }

      while (v38 <= v36 && v39->i32[0] == -1);
      if (v39 < v36)
      {
        while (v39->u8[0] == 255)
        {
          v39 = (v39 + 1);
          if (v39 >= v36)
          {
            v39 = &v21[v17];
            break;
          }
        }
      }

      v40 = v39 - v21;
      v41 = v39 - v21;
      do
      {
        v42 = vorrq_s8(*v18, a9);
        v43 = vorrq_s8(*v20, v25);
        v44 = vqtbl1q_s8(v42, xmmword_18439C790);
        v45 = vqtbl1q_s8(v43, xmmword_18439C790);
        v16 = vceqzq_s8(v45);
        v46 = vbicq_s8(v43, v16);
        v47 = vminq_u16(vmull_u8(*v42.i8, *v46.i8), v28);
        v48 = vminq_u16(vmull_high_u8(v42, v46), v28);
        v49 = vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v47, v47, 8uLL), 8uLL), vrsraq_n_u16(v48, v48, 8uLL), 8uLL);
        v50 = vmvnq_s8(v45);
        v51 = vmvnq_s8(v44);
        v52 = vmull_u8(*v42.i8, *v50.i8);
        v53 = vqaddq_u16(vmull_high_u8(v42, v50), vmull_high_u8(v46, v51));
        v54 = vminq_u16(vqaddq_u16(v52, vmull_u8(*v46.i8, *v51.i8)), v28);
        v55 = vminq_u16(v53, v28);
        v15 = vceqzq_s8(v44);
        *v20 = vbslq_s8(v15, v43, vbslq_s8(v16, v42, vqaddq_u8(v49, vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v54, v54, 8uLL), 8uLL), vrsraq_n_u16(v55, v55, 8uLL), 8uLL))));
        v21 += v26;
        v41 -= 4;
        v18 = (v18 + v27);
        v20 = (v20 + v27);
      }

      while (v41 > 3);
      v17 = v17 - v40 + v41;
      goto LABEL_37;
    }

    if (v29)
    {
      break;
    }

    v30 = &v21[v17];
    v31 = v21;
    do
    {
      v32 = v31++;
    }

    while (v31 <= v30 && (vminvq_u8(vceqzq_s8(*v32)) & 0x80) != 0);
    do
    {
      v33 = v32;
      v32 = (v32 + 4);
    }

    while (v32 <= v30 && !v33->i32[0]);
    if (v33 < v30)
    {
      while (!v33->i8[0])
      {
        v33 = (v33 + 1);
        if (v33 >= v30)
        {
          v33 = &v21[v17];
          break;
        }
      }
    }

    v34 = v33 - v21;
    v35 = (v33 - v21) * a6;
    v18 = (v18 + 4 * v35);
    v20 = (v20 + 4 * v35);
    v21 += v35;
    v17 -= v34;
LABEL_37:
    if (v17 <= 3)
    {
      goto LABEL_40;
    }
  }

  v56 = 0;
  while (1)
  {
    v15.i32[0] = v29;
    v57 = vqtbl1q_s8(v15, xmmword_18439C7A0);
    v58 = vorrq_s8(*(v18 + v56), a9);
    v59 = vorrq_s8(vbicq_s8(v25, vceqzq_s8(v57)), *(v20 + v56));
    v60 = vminq_u16(vmull_u8(*v58.i8, *v57.i8), v28);
    v61 = vminq_u16(vmull_high_u8(v58, v57), v28);
    v62 = vrsraq_n_u16(v61, v61, 8uLL);
    *v58.i8 = vqrshrn_n_u16(vrsraq_n_u16(v60, v60, 8uLL), 8uLL);
    *v16.i8 = vqrshrn_n_u16(v62, 8uLL);
    v63 = vqtbl2q_s8(*(&v16 - 1), xmmword_18439C7B0);
    v64 = vqtbl1q_s8(v59, xmmword_18439C790);
    v65 = vceqzq_s8(v64);
    v66 = vbicq_s8(v59, v65);
    v67 = vmull_u8(*v58.i8, *v66.i8);
    v68 = vmvnq_s8(v64);
    v69 = vmull_u8(*v58.i8, *v68.i8);
    v70 = vmull_u8(*v16.i8, *&vextq_s8(v68, v68, 8uLL));
    v71 = vqrshrn_high_n_u16(*v58.i8, v62, 8uLL);
    v72 = vminq_u16(v67, v28);
    v73 = vminq_u16(vmull_u8(*v16.i8, *&vextq_s8(v66, v66, 8uLL)), v28);
    v74 = vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v72, v72, 8uLL), 8uLL), vrsraq_n_u16(v73, v73, 8uLL), 8uLL);
    v75 = vmvnq_s8(v63);
    v76 = vmull_u8(*v66.i8, *v75.i8);
    v77 = vqaddq_u16(v70, vmull_high_u8(v66, v75));
    v78 = vminq_u16(vqaddq_u16(v69, v76), v28);
    v79 = vminq_u16(v77, v28);
    v16 = vrsraq_n_u16(v79, v79, 8uLL);
    v15 = vbslq_s8(v65, v71, vqaddq_u8(v74, vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v78, v78, 8uLL), 8uLL), v16, 8uLL)));
    *(v20 + v56) = vbslq_s8(vceqzq_s8(v63), v59, v15);
    v21 += v26;
    v17 -= 4;
    if (v17 < 4)
    {
      break;
    }

    v29 = *v21;
    v56 += v27;
    if ((*v21 - 1) >= 0xFFFFFFFE)
    {
      v18 = (v18 + v56);
      v20 = (v20 + v56);
      goto LABEL_37;
    }
  }

  v18 = (v18 + v27 + v56);
  v20 = (v20 + v27 + v56);
LABEL_40:
  v80 = v17 + a14;
  if (v80)
  {
    if (a7)
    {
      v81 = 0;
    }

    else
    {
      v81 = -1;
    }

    *a9.i8 = vand_s8(vdup_n_s8(v81), 0xFF000000FF000000);
    if (a8)
    {
      v82 = 0;
    }

    else
    {
      v82 = -1;
    }

    v83 = vand_s8(vdup_n_s8(v82), 0xFF000000FF000000);
    v84 = vdupq_n_s16(0xFE01u);
    do
    {
      a13.i32[0] = v18->i32[0];
      v85 = vmovl_u8(*a13.i8);
      LOBYTE(v86) = v85.i8[0];
      BYTE1(v86) = v85.i8[2];
      BYTE2(v86) = v85.i8[4];
      HIBYTE(v86) = v85.i8[6];
      v85.i32[0] = v20->i32[0];
      v87 = vmovl_u8(*v85.i8);
      LOBYTE(v88) = v87.i8[0];
      BYTE1(v88) = v87.i8[2];
      BYTE2(v88) = v87.i8[4];
      HIBYTE(v88) = v87.i8[6];
      v87.i8[7] = 0;
      v87.i8[0] = *v21;
      v87.i8[1] = *v21;
      v87.i8[2] = *v21;
      *(v87.i32 + 3) = *v21;
      v89 = vorr_s8(vbic_s8(v83, vceqz_s8(*v87.i8)), v88);
      v90 = vminq_u16(vmull_u8(vorr_s8(v86, *a9.i8), *v87.i8), v84);
      v91 = vrsraq_n_u16(v90, v90, 8uLL);
      v92 = vqrshrn_n_u16(v91, 8uLL);
      v93 = vqrshrn_high_n_u16(v92, v91, 8uLL);
      *v91.i8 = v89;
      v91.u64[1] = v89;
      *v93.i8 = vqtbl1_s8(v93, 0x707070703030303);
      *v91.i8 = vqtbl1_s8(v91, 0x707070703030303);
      v94 = vceqz_s8(*v91.i8);
      v95 = vbic_s8(v89, v94);
      v96 = vminq_u16(vmull_u8(v92, v95), v84);
      v97 = vminq_u16(vqaddq_u16(vmull_u8(v92, vmvn_s8(*v91.i8)), vmull_u8(v95, vmvn_s8(*v93.i8))), v84);
      a13 = vrsraq_n_u16(v97, v97, 8uLL);
      *a13.i8 = vbsl_s8(vceqz_s8(*v93.i8), v89, vbsl_s8(v94, v92, vqadd_u8(vqrshrn_n_u16(vrsraq_n_u16(v96, v96, 8uLL), 8uLL), vqrshrn_n_u16(a13, 8uLL))));
      *a13.i8 = vmovn_s16(vzip1q_s8(a13, a9));
      v20->i32[0] = a13.i32[0];
      v98 = &v18->i8[4 * a6];
      v21 += a6;
      if (v98 >= v19)
      {
        v99 = -a5;
      }

      else
      {
        v99 = 0;
      }

      v18 = &v98[4 * v99];
      v20 = (v20 + 4 * a6);
      --v80;
    }

    while (v80);
  }

  *result = v18;
  *a3 = v19;
  *a2 = v20;
  *a4 = v21;
  return result;
}

int8x16_t **vec::template_mark_pixelmask_row<(CGCompositeOperation)12,_rgba8_t>(int8x16_t **result, uint8x16_t **a2, unint64_t *a3, char **a4, int a5, int a6, int a7, int8x16_t a8, double a9, uint8x8_t a10, double a11, double a12, double a13, uint8x16_t a14, uint64_t a15, uint64_t a16, unint64_t a17)
{
  v17 = a17;
  v18 = *result;
  v19 = *a3;
  v20 = *a2;
  v21 = *a4;
  if (a17 < 4)
  {
    goto LABEL_37;
  }

  if (a7)
  {
    v22 = 0;
  }

  else
  {
    v22 = -1;
  }

  v23.i64[0] = 0xFF000000FF000000;
  v23.i64[1] = 0xFF000000FF000000;
  a8 = vandq_s8(vdupq_n_s8(v22), v23);
  v24 = 4 * a6;
  v25 = 4 * v24;
  v26.i64[0] = -1;
  v26.i64[1] = -1;
  a10.i32[1] = 16843009;
  v27 = vdupq_n_s16(0xFE01u);
  while (1)
  {
    v28 = *v21;
    if (*v21 == -1)
    {
      v35 = &v21[v17];
      v36 = v21;
      do
      {
        v37 = v36++;
      }

      while (v36 <= v35 && (vminvq_u8(vceqq_s8(*v37, v26)) & 0x80) != 0);
      do
      {
        v38 = v37;
        v37 = (v37 + 4);
      }

      while (v37 <= v35 && v38->i32[0] == -1);
      if (v38 < v35)
      {
        while (v38->u8[0] == 255)
        {
          v38 = (v38 + 1);
          if (v38 >= v35)
          {
            v38 = &v21[v17];
            break;
          }
        }
      }

      v39 = v38 - v21;
      v40 = v38 - v21;
      do
      {
        *v20 = vqaddq_u8(*v20, vorrq_s8(*v18, a8));
        v21 += v24;
        v40 -= 4;
        v18 = (v18 + v25);
        v20 = (v20 + v25);
      }

      while (v40 > 3);
      v17 = v17 - v39 + v40;
      goto LABEL_34;
    }

    if (v28)
    {
      break;
    }

    v29 = &v21[v17];
    v30 = v21;
    do
    {
      v31 = v30++;
    }

    while (v30 <= v29 && (vminvq_u8(vceqzq_s8(*v31)) & 0x80) != 0);
    do
    {
      v32 = v31;
      v31 = (v31 + 4);
    }

    while (v31 <= v29 && !v32->i32[0]);
    if (v32 < v29)
    {
      while (!v32->i8[0])
      {
        v32 = (v32 + 1);
        if (v32 >= v29)
        {
          v32 = &v21[v17];
          break;
        }
      }
    }

    v33 = v32 - v21;
    v34 = (v32 - v21) * a6;
    v18 = (v18 + 4 * v34);
    v20 = (v20 + 4 * v34);
    v21 += v34;
    v17 -= v33;
LABEL_34:
    if (v17 <= 3)
    {
      goto LABEL_37;
    }
  }

  v41 = 0;
  while (1)
  {
    a14.i32[0] = v28;
    v42 = vqtbl1q_s8(a14, xmmword_18439C7A0);
    v43 = vorrq_s8(*(v18 + v41), a8);
    v44 = vmull_u8(*v43.i8, *v42.i8);
    v45 = vmull_high_u8(v43, v42);
    v46 = vminq_u16(v44, v27);
    v47 = vminq_u16(v45, v27);
    a14 = vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v46, v46, 8uLL), 8uLL), vrsraq_n_u16(v47, v47, 8uLL), 8uLL);
    *(v20 + v41) = vqaddq_u8(*(v20 + v41), a14);
    v21 += v24;
    v17 -= 4;
    if (v17 < 4)
    {
      break;
    }

    v28 = *v21;
    v41 += v25;
    if ((*v21 - 1) >= 0xFFFFFFFE)
    {
      v18 = (v18 + v41);
      v20 = (v20 + v41);
      goto LABEL_34;
    }
  }

  v18 = (v18 + v25 + v41);
  v20 = (v20 + v25 + v41);
LABEL_37:
  v48 = v17 + a16;
  if (v48)
  {
    if (a7)
    {
      v49 = 0;
    }

    else
    {
      v49 = -1;
    }

    *a8.i8 = vand_s8(vdup_n_s8(v49), 0xFF000000FF000000);
    v50 = vdupq_n_s16(0xFE01u);
    do
    {
      a10.i32[0] = v18->i32[0];
      v51 = vmovl_u8(a10);
      LOBYTE(v52) = v51.i8[0];
      BYTE1(v52) = v51.i8[2];
      BYTE2(v52) = v51.i8[4];
      HIBYTE(v52) = v51.i8[6];
      v51.i32[0] = v20->i32[0];
      v53 = vmovl_u8(*v51.i8);
      LOBYTE(v54) = v53.i8[0];
      BYTE1(v54) = v53.i8[2];
      BYTE2(v54) = v53.i8[4];
      HIBYTE(v54) = v53.i8[6];
      v53.i8[7] = 0;
      v53.i8[0] = *v21;
      v53.i8[1] = *v21;
      v53.i8[2] = *v21;
      *(v53.i32 + 3) = *v21;
      v55 = vminq_u16(vmull_u8(vorr_s8(v52, *a8.i8), *v53.i8), v50);
      v56 = vrsraq_n_u16(v55, v55, 8uLL);
      *v56.i8 = vqadd_u8(v54, vqrshrn_n_u16(v56, 8uLL));
      a10 = vmovn_s16(vzip1q_s8(v56, a8));
      v20->i32[0] = a10.i32[0];
      v57 = &v18->i8[4 * a6];
      v21 += a6;
      if (v57 >= v19)
      {
        v58 = -a5;
      }

      else
      {
        v58 = 0;
      }

      v18 = &v57[4 * v58];
      v20 = (v20 + 4 * a6);
      --v48;
    }

    while (v48);
  }

  *result = v18;
  *a3 = v19;
  *a2 = v20;
  *a4 = v21;
  return result;
}

int8x16_t **vec::template_mark_pixelmask_row<(CGCompositeOperation)11,_rgba8_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, char **a4, int a5, int a6, int a7, int a8, int8x16_t a9, double a10, double a11, double a12, uint8x8_t a13, uint64_t a14, unint64_t a15)
{
  v17 = a15;
  v18 = *result;
  v19 = *a3;
  v20 = *a2;
  v21 = *a4;
  if (a15 < 4)
  {
    goto LABEL_40;
  }

  if (a7)
  {
    v22 = 0;
  }

  else
  {
    v22 = -1;
  }

  v23.i64[0] = 0xFF000000FF000000;
  v23.i64[1] = 0xFF000000FF000000;
  a9 = vandq_s8(vdupq_n_s8(v22), v23);
  if (a8)
  {
    v24 = 0;
  }

  else
  {
    v24 = -1;
  }

  v25 = vandq_s8(vdupq_n_s8(v24), v23);
  v26 = 4 * a6;
  v27 = 4 * v26;
  v28.i64[0] = -1;
  v28.i64[1] = -1;
  a13.i32[1] = 16843009;
  v29 = vdupq_n_s16(0xFE01u);
  while (1)
  {
    v30 = *v21;
    if (*v21 == -1)
    {
      v37 = &v21[v17];
      v38 = v21;
      do
      {
        v39 = v38++;
      }

      while (v38 <= v37 && (vminvq_u8(vceqq_s8(*v39, v28)) & 0x80) != 0);
      do
      {
        v40 = v39;
        v39 = (v39 + 4);
      }

      while (v39 <= v37 && v40->i32[0] == -1);
      if (v40 < v37)
      {
        while (v40->u8[0] == 255)
        {
          v40 = (v40 + 1);
          if (v40 >= v37)
          {
            v40 = &v21[v17];
            break;
          }
        }
      }

      v41 = v40 - v21;
      v42 = v40 - v21;
      do
      {
        v43 = vorrq_s8(*v18, a9);
        v44 = vorrq_s8(*v20, v25);
        v15 = vqtbl1q_s8(v43, xmmword_18439C790);
        v45 = vqtbl1q_s8(v44, xmmword_18439C790);
        *v20 = vqsubq_u8(vqaddq_u8(v45, v15), vqaddq_u8(vqsubq_u8(v15, v43), vqsubq_u8(v45, v44)));
        v21 += v26;
        v42 -= 4;
        v18 = (v18 + v27);
        v20 = (v20 + v27);
      }

      while (v42 > 3);
      v17 = v17 - v41 + v42;
      goto LABEL_37;
    }

    if (v30)
    {
      break;
    }

    v31 = &v21[v17];
    v32 = v21;
    do
    {
      v33 = v32++;
    }

    while (v32 <= v31 && (vminvq_u8(vceqzq_s8(*v33)) & 0x80) != 0);
    do
    {
      v34 = v33;
      v33 = (v33 + 4);
    }

    while (v33 <= v31 && !v34->i32[0]);
    if (v34 < v31)
    {
      while (!v34->i8[0])
      {
        v34 = (v34 + 1);
        if (v34 >= v31)
        {
          v34 = &v21[v17];
          break;
        }
      }
    }

    v35 = v34 - v21;
    v36 = (v34 - v21) * a6;
    v18 = (v18 + 4 * v36);
    v20 = (v20 + 4 * v36);
    v21 += v36;
    v17 -= v35;
LABEL_37:
    if (v17 <= 3)
    {
      goto LABEL_40;
    }
  }

  v46 = 0;
  while (1)
  {
    v47 = *(v20 + v46);
    v15.i32[0] = v30;
    v48 = vqtbl1q_s8(v15, xmmword_18439C7A0);
    v49 = vorrq_s8(*(v18 + v46), a9);
    v50 = vceqzq_s8(v48);
    v51 = vorrq_s8(vbicq_s8(v25, v50), v47);
    v52 = vmull_u8(*v49.i8, *v48.i8);
    v53 = vmull_high_u8(v49, v48);
    v54 = vminq_u16(v52, v29);
    v55 = vminq_u16(v53, v29);
    v56 = vrsraq_n_u16(v55, v55, 8uLL);
    *v52.i8 = vqrshrn_n_u16(vrsraq_n_u16(v54, v54, 8uLL), 8uLL);
    *v16.i8 = vqrshrn_n_u16(v56, 8uLL);
    v57 = vqtbl2q_s8(*(&v16 - 1), xmmword_18439C7B0);
    v58 = vqrshrn_high_n_u16(*v52.i8, v56, 8uLL);
    v59 = vqtbl1q_s8(v51, xmmword_18439C790);
    v16 = vqaddq_u8(v59, v57);
    v15 = vqsubq_u8(v57, v58);
    *(v20 + v46) = vbslq_s8(v50, v47, vqsubq_u8(v16, vqaddq_u8(v15, vqsubq_u8(v59, v51))));
    v21 += v26;
    v17 -= 4;
    if (v17 < 4)
    {
      break;
    }

    v30 = *v21;
    v46 += v27;
    if ((*v21 - 1) >= 0xFFFFFFFE)
    {
      v18 = (v18 + v46);
      v20 = (v20 + v46);
      goto LABEL_37;
    }
  }

  v18 = (v18 + v27 + v46);
  v20 = (v20 + v27 + v46);
LABEL_40:
  v60 = v17 + a14;
  if (v60)
  {
    if (a7)
    {
      v61 = 0;
    }

    else
    {
      v61 = -1;
    }

    *a9.i8 = vand_s8(vdup_n_s8(v61), 0xFF000000FF000000);
    if (a8)
    {
      v62 = 0;
    }

    else
    {
      v62 = -1;
    }

    v63 = vand_s8(vdup_n_s8(v62), 0xFF000000FF000000);
    v64 = vdupq_n_s16(0xFE01u);
    do
    {
      a13.i32[0] = v18->i32[0];
      v65 = vmovl_u8(a13);
      LOBYTE(v66) = v65.i8[0];
      BYTE1(v66) = v65.i8[2];
      BYTE2(v66) = v65.i8[4];
      HIBYTE(v66) = v65.i8[6];
      v65.i32[0] = v20->i32[0];
      v67 = vmovl_u8(*v65.i8);
      LOBYTE(v68) = v67.i8[0];
      BYTE1(v68) = v67.i8[2];
      BYTE2(v68) = v67.i8[4];
      HIBYTE(v68) = v67.i8[6];
      v67.i8[7] = 0;
      v67.i8[0] = *v21;
      v67.i8[1] = *v21;
      v67.i8[2] = *v21;
      *(v67.i32 + 3) = *v21;
      v69 = vceqz_s8(*v67.i8);
      v70 = vorr_s8(vbic_s8(v63, v69), v68);
      v71 = vminq_u16(vmull_u8(vorr_s8(v66, *a9.i8), *v67.i8), v64);
      v72 = vrsraq_n_u16(v71, v71, 8uLL);
      v73 = vqrshrn_n_u16(v72, 8uLL);
      v74 = vqrshrn_high_n_u16(v73, v72, 8uLL);
      *v72.i8 = v70;
      v72.u64[1] = v70;
      *v74.i8 = vqtbl1_s8(v74, 0x707070703030303);
      *v72.i8 = vqtbl1_s8(v72, 0x707070703030303);
      *v72.i8 = vbsl_s8(v69, v68, vqsub_u8(vqadd_u8(*v72.i8, *v74.i8), vqadd_u8(vqsub_u8(*v74.i8, v73), vqsub_u8(*v72.i8, v70))));
      a13 = vmovn_s16(vzip1q_s8(v72, a9));
      v20->i32[0] = a13.i32[0];
      v75 = &v18->i8[4 * a6];
      v21 += a6;
      if (v75 >= v19)
      {
        v76 = -a5;
      }

      else
      {
        v76 = 0;
      }

      v18 = &v75[4 * v76];
      v20 = (v20 + 4 * a6);
      --v60;
    }

    while (v60);
  }

  *result = v18;
  *a3 = v19;
  *a2 = v20;
  *a4 = v21;
  return result;
}

int8x16_t **vec::template_mark_pixelmask_row<(CGCompositeOperation)10,_rgba8_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, char **a4, int a5, int a6, double a7, double a8, uint16x8_t a9, double a10, double a11, double a12, double a13, uint16x8_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18)
{
  v19 = a18;
  v20 = *result;
  v21 = *a3;
  v22 = *a2;
  v23 = *a4;
  if (a18 < 4)
  {
    goto LABEL_34;
  }

  v24 = 4 * a6;
  v25 = 4 * v24;
  v26 = vdupq_n_s16(0xFE01u);
  a9.i64[0] = -1;
  a9.i64[1] = -1;
  while (1)
  {
    v27 = *v23;
    if (*v23 == -1)
    {
      v34 = &v23[v19];
      v35 = v23;
      do
      {
        v36 = v35++;
      }

      while (v35 <= v34 && (vminvq_u8(vceqq_s8(*v36, a9)) & 0x80) != 0);
      do
      {
        v37 = v36;
        v36 = (v36 + 4);
      }

      while (v36 <= v34 && v37->i32[0] == -1);
      if (v37 < v34)
      {
        while (v37->u8[0] == 255)
        {
          v37 = (v37 + 1);
          if (v37 >= v34)
          {
            v37 = &v23[v19];
            break;
          }
        }
      }

      v38 = v37 - v23;
      v39 = v37 - v23;
      do
      {
        v40 = vqtbl1q_s8(vmvnq_s8(*v22), xmmword_18439C790);
        v41 = vqtbl1q_s8(vmvnq_s8(*v20), xmmword_18439C790);
        v18 = vmull_u8(*v20->i8, *v40.i8);
        v42 = vmull_high_u8(*v20, v40);
        a14 = vqaddq_u16(v18, vmull_u8(*v22->i8, *v41.i8));
        v43 = vminq_u16(a14, v26);
        v44 = vminq_u16(vqaddq_u16(v42, vmull_high_u8(*v22, v41)), v26);
        *v22 = vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v43, v43, 8uLL), 8uLL), vrsraq_n_u16(v44, v44, 8uLL), 8uLL);
        v23 += v24;
        v39 -= 4;
        v20 = (v20 + v25);
        v22 = (v22 + v25);
      }

      while (v39 > 3);
      v19 = v19 - v38 + v39;
      goto LABEL_31;
    }

    if (v27)
    {
      break;
    }

    v28 = &v23[v19];
    v29 = v23;
    do
    {
      v30 = v29++;
    }

    while (v29 <= v28 && (vminvq_u8(vceqzq_s8(*v30)) & 0x80) != 0);
    do
    {
      v31 = v30;
      v30 = (v30 + 4);
    }

    while (v30 <= v28 && !v31->i32[0]);
    if (v31 < v28)
    {
      while (!v31->i8[0])
      {
        v31 = (v31 + 1);
        if (v31 >= v28)
        {
          v31 = &v23[v19];
          break;
        }
      }
    }

    v32 = v31 - v23;
    v33 = (v31 - v23) * a6;
    v20 = (v20 + 4 * v33);
    v22 = (v22 + 4 * v33);
    v23 += v33;
    v19 -= v32;
LABEL_31:
    if (v19 <= 3)
    {
      goto LABEL_34;
    }
  }

  v45 = 0;
  while (1)
  {
    v46 = *(v20 + v45);
    v47 = *(v22 + v45);
    a14.i32[0] = v27;
    v48 = vqtbl1q_s8(a14, xmmword_18439C7A0);
    v49 = vmull_u8(*v46.i8, *v48.i8);
    v50 = vmull_high_u8(v46, v48);
    v51 = vminq_u16(v49, v26);
    v52 = vminq_u16(v50, v26);
    *v49.i8 = vqrshrn_n_u16(vrsraq_n_u16(v51, v51, 8uLL), 8uLL);
    *v18.i8 = vqrshrn_n_u16(vrsraq_n_u16(v52, v52, 8uLL), 8uLL);
    v53 = vqtbl1q_s8(vmvnq_s8(v47), xmmword_18439C790);
    v54 = vmvnq_s8(vqtbl2q_s8(*(&v18 - 1), xmmword_18439C7B0));
    v55 = vmull_u8(*v49.i8, *v53.i8);
    a14 = vmull_u8(*v18.i8, *&vextq_s8(v53, v53, 8uLL));
    v56 = vmull_u8(*v47.i8, *v54.i8);
    v57 = vmull_high_u8(v47, v54);
    v58 = vminq_u16(vqaddq_u16(v55, v56), v26);
    v59 = vminq_u16(vqaddq_u16(a14, v57), v26);
    *(v22 + v45) = vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v58, v58, 8uLL), 8uLL), vrsraq_n_u16(v59, v59, 8uLL), 8uLL);
    v23 += v24;
    v19 -= 4;
    if (v19 < 4)
    {
      break;
    }

    v27 = *v23;
    v45 += v25;
    if ((*v23 - 1) >= 0xFFFFFFFE)
    {
      v20 = (v20 + v45);
      v22 = (v22 + v45);
      goto LABEL_31;
    }
  }

  v20 = (v20 + v25 + v45);
  v22 = (v22 + v25 + v45);
LABEL_34:
  v60 = v19 + a17;
  if (v60)
  {
    v61 = vdupq_n_s16(0xFE01u);
    do
    {
      a9.i32[0] = v20->i32[0];
      v62 = vmovl_u8(*a9.i8);
      LOBYTE(v63) = v62.i8[0];
      BYTE1(v63) = v62.i8[2];
      BYTE2(v63) = v62.i8[4];
      HIBYTE(v63) = v62.i8[6];
      v62.i32[0] = v22->i32[0];
      v64 = vmovl_u8(*v62.i8);
      LOBYTE(v65) = v64.i8[0];
      BYTE1(v65) = v64.i8[2];
      BYTE2(v65) = v64.i8[4];
      HIBYTE(v65) = v64.i8[6];
      v64.i8[7] = 0;
      v64.i8[0] = *v23;
      v64.i8[1] = *v23;
      v64.i8[2] = *v23;
      *(v64.i32 + 3) = *v23;
      v66 = vminq_u16(vmull_u8(v63, *v64.i8), v61);
      *v66.i8 = vqrshrn_n_u16(vrsraq_n_u16(v66, v66, 8uLL), 8uLL);
      *v67.i8 = vmvn_s8(v65);
      v67.i64[1] = v67.i64[0];
      *v68.i8 = vmvn_s8(*v66.i8);
      v68.i64[1] = v68.i64[0];
      v69 = vminq_u16(vqaddq_u16(vmull_u8(*v66.i8, vqtbl1_s8(v67, 0x707070703030303)), vmull_u8(v65, vqtbl1_s8(v68, 0x707070703030303))), v61);
      a9 = vrsraq_n_u16(v69, v69, 8uLL);
      *a9.i8 = vqrshrn_n_u16(a9, 8uLL);
      *a9.i8 = vmovn_s16(vzip1q_s8(a9, v61));
      v22->i32[0] = a9.i32[0];
      v70 = &v20->i8[4 * a6];
      v23 += a6;
      if (v70 >= v21)
      {
        v71 = -a5;
      }

      else
      {
        v71 = 0;
      }

      v20 = &v70[4 * v71];
      v22 = (v22 + 4 * a6);
      --v60;
    }

    while (v60);
  }

  *result = v20;
  *a3 = v21;
  *a2 = v22;
  *a4 = v23;
  return result;
}

int8x16_t **vec::template_mark_pixelmask_row<(CGCompositeOperation)9,_rgba8_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, char **a4, int a5, int a6, double a7, double a8, uint16x8_t a9, double a10, double a11, double a12, double a13, uint16x8_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18)
{
  v19 = a18;
  v20 = *result;
  v21 = *a3;
  v22 = *a2;
  v23 = *a4;
  if (a18 < 4)
  {
    goto LABEL_34;
  }

  v24 = 4 * a6;
  v25 = 4 * v24;
  v26 = vdupq_n_s16(0xFE01u);
  a9.i64[0] = -1;
  a9.i64[1] = -1;
  while (1)
  {
    v27 = *v23;
    if (*v23 == -1)
    {
      v34 = &v23[v19];
      v35 = v23;
      do
      {
        v36 = v35++;
      }

      while (v35 <= v34 && (vminvq_u8(vceqq_s8(*v36, a9)) & 0x80) != 0);
      do
      {
        v37 = v36;
        v36 = (v36 + 4);
      }

      while (v36 <= v34 && v37->i32[0] == -1);
      if (v37 < v34)
      {
        while (v37->u8[0] == 255)
        {
          v37 = (v37 + 1);
          if (v37 >= v34)
          {
            v37 = &v23[v19];
            break;
          }
        }
      }

      v38 = v37 - v23;
      v39 = v37 - v23;
      do
      {
        v40 = vqtbl1q_s8(*v20, xmmword_18439C790);
        v41 = vqtbl1q_s8(vmvnq_s8(*v22), xmmword_18439C790);
        v18 = vmull_u8(*v20->i8, *v41.i8);
        v42 = vmull_high_u8(*v22, v40);
        a14 = vqaddq_u16(v18, vmull_u8(*v22->i8, *v40.i8));
        v43 = vqaddq_u16(vmull_high_u8(*v20, v41), v42);
        v44 = vminq_u16(a14, v26);
        v45 = vminq_u16(v43, v26);
        *v22 = vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v44, v44, 8uLL), 8uLL), vrsraq_n_u16(v45, v45, 8uLL), 8uLL);
        v23 += v24;
        v39 -= 4;
        v20 = (v20 + v25);
        v22 = (v22 + v25);
      }

      while (v39 > 3);
      v19 = v19 - v38 + v39;
      goto LABEL_31;
    }

    if (v27)
    {
      break;
    }

    v28 = &v23[v19];
    v29 = v23;
    do
    {
      v30 = v29++;
    }

    while (v29 <= v28 && (vminvq_u8(vceqzq_s8(*v30)) & 0x80) != 0);
    do
    {
      v31 = v30;
      v30 = (v30 + 4);
    }

    while (v30 <= v28 && !v31->i32[0]);
    if (v31 < v28)
    {
      while (!v31->i8[0])
      {
        v31 = (v31 + 1);
        if (v31 >= v28)
        {
          v31 = &v23[v19];
          break;
        }
      }
    }

    v32 = v31 - v23;
    v33 = (v31 - v23) * a6;
    v20 = (v20 + 4 * v33);
    v22 = (v22 + 4 * v33);
    v23 += v33;
    v19 -= v32;
LABEL_31:
    if (v19 <= 3)
    {
      goto LABEL_34;
    }
  }

  v46 = 0;
  while (1)
  {
    v47 = *(v20 + v46);
    v48 = *(v22 + v46);
    a14.i32[0] = v27;
    v49 = vqtbl1q_s8(a14, xmmword_18439C7A0);
    v50 = vminq_u16(vmull_u8(*v47.i8, *v49.i8), v26);
    v51 = vminq_u16(vmull_high_u8(v47, v49), v26);
    v52 = vrsraq_n_u16(v50, v50, 8uLL);
    *v52.i8 = vqrshrn_n_u16(v52, 8uLL);
    *v18.i8 = vqrshrn_n_u16(vrsraq_n_u16(v51, v51, 8uLL), 8uLL);
    v53 = vqtbl2q_s8(*(&v18 - 1), xmmword_18439C7B0);
    v54 = vqtbl1q_s8(vmvnq_s8(v48), xmmword_18439C790);
    v55 = vmull_u8(*v52.i8, *v54.i8);
    v56 = vmull_u8(*v18.i8, *&vextq_s8(v54, v54, 8uLL));
    v57 = vmvnq_s8(v49);
    v18 = vqaddq_u16(v55, vmull_u8(*v48.i8, *v57.i8));
    a14 = vqaddq_u16(v56, vmull_high_u8(v48, v57));
    v58 = vmull_u8(*v48.i8, *v53.i8);
    v59 = vmull_high_u8(v48, v53);
    v60 = vminq_u16(vqaddq_u16(v18, v58), v26);
    v61 = vminq_u16(vqaddq_u16(a14, v59), v26);
    *(v22 + v46) = vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v60, v60, 8uLL), 8uLL), vrsraq_n_u16(v61, v61, 8uLL), 8uLL);
    v23 += v24;
    v19 -= 4;
    if (v19 < 4)
    {
      break;
    }

    v27 = *v23;
    v46 += v25;
    if ((*v23 - 1) >= 0xFFFFFFFE)
    {
      v20 = (v20 + v46);
      v22 = (v22 + v46);
      goto LABEL_31;
    }
  }

  v20 = (v20 + v25 + v46);
  v22 = (v22 + v25 + v46);
LABEL_34:
  v62 = v19 + a17;
  if (v62)
  {
    v63 = vdupq_n_s16(0xFE01u);
    do
    {
      a9.i32[0] = v20->i32[0];
      v64 = vmovl_u8(*a9.i8);
      LOBYTE(v65) = v64.i8[0];
      BYTE1(v65) = v64.i8[2];
      BYTE2(v65) = v64.i8[4];
      HIBYTE(v65) = v64.i8[6];
      v64.i32[0] = v22->i32[0];
      v66 = vmovl_u8(*v64.i8);
      LOBYTE(v67) = v66.i8[0];
      BYTE1(v67) = v66.i8[2];
      BYTE2(v67) = v66.i8[4];
      HIBYTE(v67) = v66.i8[6];
      v66.i8[7] = 0;
      v66.i8[0] = *v23;
      v66.i8[1] = *v23;
      v66.i8[2] = *v23;
      *(v66.i32 + 3) = *v23;
      v68 = vminq_u16(vmull_u8(v65, *v66.i8), v63);
      v69 = vrsraq_n_u16(v68, v68, 8uLL);
      *v70.i8 = vmvn_s8(v67);
      v70.i64[1] = v70.i64[0];
      v71 = vqrshrn_n_u16(v69, 8uLL);
      v72 = vminq_u16(vqaddq_u16(vqaddq_u16(vmull_u8(v71, vqtbl1_s8(v70, 0x707070703030303)), vmull_u8(v67, vmvn_s8(*v66.i8))), vmull_u8(v67, vqtbl1_s8(vqrshrn_high_n_u16(v71, v69, 8uLL), 0x707070703030303))), v63);
      a9 = vrsraq_n_u16(v72, v72, 8uLL);
      *a9.i8 = vqrshrn_n_u16(a9, 8uLL);
      *a9.i8 = vmovn_s16(vzip1q_s8(a9, v63));
      v22->i32[0] = a9.i32[0];
      v73 = &v20->i8[4 * a6];
      v23 += a6;
      if (v73 >= v21)
      {
        v74 = -a5;
      }

      else
      {
        v74 = 0;
      }

      v20 = &v73[4 * v74];
      v22 = (v22 + 4 * a6);
      --v62;
    }

    while (v62);
  }

  *result = v20;
  *a3 = v21;
  *a2 = v22;
  *a4 = v23;
  return result;
}

int8x16_t **vec::template_mark_pixelmask_row<(CGCompositeOperation)8,_rgba8_t>(int8x16_t **result, uint8x8_t **a2, unint64_t *a3, char **a4, int a5, int a6, int8x16_t a7, double a8, uint16x8_t a9, double a10, __n128 a11, double a12, uint8x16_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17)
{
  v17 = a17;
  v18 = *result;
  v19 = *a3;
  v20 = *a2;
  v21 = *a4;
  if (a17 < 4)
  {
    goto LABEL_34;
  }

  v22 = 4 * a6;
  v23 = 4 * v22;
  a7.i64[1] = 0xF0F0F0F0B0B0B0BLL;
  v24 = vdupq_n_s16(0xFE01u);
  a9.i64[0] = -1;
  a9.i64[1] = -1;
  while (1)
  {
    v25 = *v21;
    if (*v21 == -1)
    {
      v32 = &v21[v17];
      v33 = v21;
      do
      {
        v34 = v33++;
      }

      while (v33 <= v32 && (vminvq_u8(vceqq_s8(*v34, a9)) & 0x80) != 0);
      do
      {
        v35 = v34;
        v34 = (v34 + 4);
      }

      while (v34 <= v32 && v35->i32[0] == -1);
      if (v35 < v32)
      {
        while (v35->u8[0] == 255)
        {
          v35 = (v35 + 1);
          if (v35 >= v32)
          {
            v35 = &v21[v17];
            break;
          }
        }
      }

      v36 = v35 - v21;
      v37 = v35 - v21;
      do
      {
        v38 = vqtbl1q_s8(*v18, xmmword_18439C790);
        v39 = vminq_u16(vmull_u8(*v20, *v38.i8), v24);
        v40 = vminq_u16(vmull_high_u8(*v20->i8, v38), v24);
        a13 = vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v39, v39, 8uLL), 8uLL), vrsraq_n_u16(v40, v40, 8uLL), 8uLL);
        a11 = vqsubq_u8(*v20->i8, a13);
        *v20->i8 = a11;
        v21 += v22;
        v37 -= 4;
        v18 = (v18 + v23);
        v20 = (v20 + v23);
      }

      while (v37 > 3);
      v17 = v17 - v36 + v37;
      goto LABEL_31;
    }

    if (v25)
    {
      break;
    }

    v26 = &v21[v17];
    v27 = v21;
    do
    {
      v28 = v27++;
      if (v27 > v26)
      {
        break;
      }

      a11 = vceqzq_s8(*v28);
    }

    while ((vminvq_u8(a11) & 0x80) != 0);
    do
    {
      v29 = v28;
      v28 = (v28 + 4);
    }

    while (v28 <= v26 && !v29->i32[0]);
    if (v29 < v26)
    {
      while (!v29->i8[0])
      {
        v29 = (v29 + 1);
        if (v29 >= v26)
        {
          v29 = &v21[v17];
          break;
        }
      }
    }

    v30 = v29 - v21;
    v31 = (v29 - v21) * a6;
    v18 = (v18 + 4 * v31);
    v20 = (v20 + 4 * v31);
    v21 += v31;
    v17 -= v30;
LABEL_31:
    if (v17 <= 3)
    {
      goto LABEL_34;
    }
  }

  v41 = 0;
  while (1)
  {
    v42 = *&v20->i8[v41];
    a13.i32[0] = v25;
    v43 = vqtbl1q_s8(a13, xmmword_18439C7A0);
    v44 = vqtbl1q_s8(*(v18 + v41), xmmword_18439C790);
    v45 = vmull_u8(*v44.i8, *v43.i8);
    v46 = vmull_high_u8(v44, v43);
    v47 = vminq_u16(v45, v24);
    v48 = vminq_u16(v46, v24);
    v49 = vminq_u16(vmull_u8(*v42.i8, vqrshrn_n_u16(vrsraq_n_u16(v47, v47, 8uLL), 8uLL)), v24);
    v50 = vminq_u16(vmull_u8(*&vextq_s8(v42, v42, 8uLL), vqrshrn_n_u16(vrsraq_n_u16(v48, v48, 8uLL), 8uLL)), v24);
    a13 = vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v49, v49, 8uLL), 8uLL), vrsraq_n_u16(v50, v50, 8uLL), 8uLL);
    a11 = vqsubq_u8(v42, a13);
    *&v20->i8[v41] = a11;
    v21 += v22;
    v17 -= 4;
    if (v17 < 4)
    {
      break;
    }

    v25 = *v21;
    v41 += v23;
    if ((*v21 - 1) >= 0xFFFFFFFE)
    {
      v18 = (v18 + v41);
      v20 = (v20 + v41);
      goto LABEL_31;
    }
  }

  v18 = (v18 + v23 + v41);
  v20 = (v20 + v23 + v41);
LABEL_34:
  v51 = v17 + a16;
  if (v51)
  {
    a7.i64[0] = -4244438269;
    v52 = vdupq_n_s16(0xFE01u);
    do
    {
      a9.i32[0] = v20->i32[0];
      v53 = vmovl_u8(*a9.i8);
      LOBYTE(v54) = v53.i8[0];
      BYTE1(v54) = v53.i8[2];
      BYTE2(v54) = v53.i8[4];
      HIBYTE(v54) = v53.i8[6];
      v53.i8[7] = 0;
      v53.i8[0] = *v21;
      v53.i8[1] = *v21;
      v53.i8[2] = *v21;
      *(v53.i32 + 3) = *v21;
      a11.n128_u32[0] = v18->i32[0];
      a11.n128_u64[1] = a11.n128_u64[0];
      a11.n128_u64[0] = vqtbl1_s8(a11, -4244438269);
      v55 = vminq_u16(vmull_u8(a11.n128_u64[0], *v53.i8), v52);
      v56 = vminq_u16(vmull_u8(v54, vqrshrn_n_u16(vrsraq_n_u16(v55, v55, 8uLL), 8uLL)), v52);
      a9 = vrsraq_n_u16(v56, v56, 8uLL);
      *a9.i8 = vqsub_u8(v54, vqrshrn_n_u16(a9, 8uLL));
      *a9.i8 = vmovn_s16(vzip1q_s8(a9, a7));
      v20->i32[0] = a9.i32[0];
      v57 = &v18->i8[4 * a6];
      v21 += a6;
      if (v57 >= v19)
      {
        v58 = -a5;
      }

      else
      {
        v58 = 0;
      }

      v18 = &v57[4 * v58];
      v20 = (v20 + 4 * a6);
      --v51;
    }

    while (v51);
  }

  *result = v18;
  *a3 = v19;
  *a2 = v20;
  *a4 = v21;
  return result;
}

int8x16_t **vec::template_mark_pixelmask_row<(CGCompositeOperation)7,_rgba8_t>(int8x16_t **result, uint8x8_t **a2, unint64_t *a3, char **a4, int a5, int a6, int8x16_t a7, double a8, uint16x8_t a9, double a10, __n128 a11, double a12, uint16x8_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17)
{
  v17 = a17;
  v18 = *result;
  v19 = *a3;
  v20 = *a2;
  v21 = *a4;
  if (a17 < 4)
  {
    goto LABEL_34;
  }

  v22 = 4 * a6;
  v23 = 4 * v22;
  a7.i64[1] = 0xF0F0F0F0B0B0B0BLL;
  v24 = vdupq_n_s16(0xFE01u);
  a9.i64[0] = -1;
  a9.i64[1] = -1;
  while (1)
  {
    v25 = *v21;
    if (*v21 == -1)
    {
      v32 = &v21[v17];
      v33 = v21;
      do
      {
        v34 = v33++;
      }

      while (v33 <= v32 && (vminvq_u8(vceqq_s8(*v34, a9)) & 0x80) != 0);
      do
      {
        v35 = v34;
        v34 = (v34 + 4);
      }

      while (v34 <= v32 && v35->i32[0] == -1);
      if (v35 < v32)
      {
        while (v35->u8[0] == 255)
        {
          v35 = (v35 + 1);
          if (v35 >= v32)
          {
            v35 = &v21[v17];
            break;
          }
        }
      }

      v36 = v35 - v21;
      v37 = v35 - v21;
      do
      {
        v38 = vqtbl1q_s8(*v18, xmmword_18439C790);
        a13 = vmull_u8(*v20, *v38.i8);
        v39 = vminq_u16(a13, v24);
        v40 = vminq_u16(vmull_high_u8(*v20->i8, v38), v24);
        a11 = vrsraq_n_u16(v40, v40, 8uLL);
        *v20->i8 = vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v39, v39, 8uLL), 8uLL), a11, 8uLL);
        v21 += v22;
        v37 -= 4;
        v18 = (v18 + v23);
        v20 = (v20 + v23);
      }

      while (v37 > 3);
      v17 = v17 - v36 + v37;
      goto LABEL_31;
    }

    if (v25)
    {
      break;
    }

    v26 = &v21[v17];
    v27 = v21;
    do
    {
      v28 = v27++;
      if (v27 > v26)
      {
        break;
      }

      a11 = vceqzq_s8(*v28);
    }

    while ((vminvq_u8(a11) & 0x80) != 0);
    do
    {
      v29 = v28;
      v28 = (v28 + 4);
    }

    while (v28 <= v26 && !v29->i32[0]);
    if (v29 < v26)
    {
      while (!v29->i8[0])
      {
        v29 = (v29 + 1);
        if (v29 >= v26)
        {
          v29 = &v21[v17];
          break;
        }
      }
    }

    v30 = v29 - v21;
    v31 = (v29 - v21) * a6;
    v18 = (v18 + 4 * v31);
    v20 = (v20 + 4 * v31);
    v21 += v31;
    v17 -= v30;
LABEL_31:
    if (v17 <= 3)
    {
      goto LABEL_34;
    }
  }

  v41 = 0;
  while (1)
  {
    v42 = *&v20->i8[v41];
    a13.i32[0] = v25;
    v43 = vqtbl1q_s8(a13, xmmword_18439C7A0);
    v44 = vqtbl1q_s8(*(v18 + v41), xmmword_18439C790);
    v45 = vminq_u16(vmull_u8(*v43.i8, *v44.i8), v24);
    v46 = vminq_u16(vmull_high_u8(v43, v44), v24);
    v47 = vqsubq_u8(v43, vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v45, v45, 8uLL), 8uLL), vrsraq_n_u16(v46, v46, 8uLL), 8uLL));
    v48 = vminq_u16(vmull_u8(*v42.i8, *v47.i8), v24);
    v49 = vminq_u16(vmull_high_u8(v42, v47), v24);
    a13 = vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v48, v48, 8uLL), 8uLL), vrsraq_n_u16(v49, v49, 8uLL), 8uLL);
    a11 = vqsubq_u8(v42, a13);
    *&v20->i8[v41] = a11;
    v21 += v22;
    v17 -= 4;
    if (v17 < 4)
    {
      break;
    }

    v25 = *v21;
    v41 += v23;
    if ((*v21 - 1) >= 0xFFFFFFFE)
    {
      v18 = (v18 + v41);
      v20 = (v20 + v41);
      goto LABEL_31;
    }
  }

  v18 = (v18 + v23 + v41);
  v20 = (v20 + v23 + v41);
LABEL_34:
  v50 = v17 + a16;
  if (v50)
  {
    a7.i64[0] = -4244438269;
    v51 = vdupq_n_s16(0xFE01u);
    do
    {
      a9.i32[0] = v20->i32[0];
      v52 = vmovl_u8(*a9.i8);
      LOBYTE(v53) = v52.i8[0];
      BYTE1(v53) = v52.i8[2];
      BYTE2(v53) = v52.i8[4];
      HIBYTE(v53) = v52.i8[6];
      v52.i8[7] = 0;
      v52.i8[0] = *v21;
      v52.i8[1] = *v21;
      v52.i8[2] = *v21;
      *(v52.i32 + 3) = *v21;
      a11.n128_u32[0] = v18->i32[0];
      a11.n128_u64[1] = a11.n128_u64[0];
      a11 = vminq_u16(vmull_u8(*v52.i8, vqtbl1_s8(a11, -4244438269)), v51);
      a11.n128_u64[0] = vqrshrn_n_u16(vrsraq_n_u16(a11, a11, 8uLL), 8uLL);
      v54 = vminq_u16(vmull_u8(v53, vqsub_u8(*v52.i8, a11.n128_u64[0])), v51);
      a9 = vrsraq_n_u16(v54, v54, 8uLL);
      *a9.i8 = vqsub_u8(v53, vqrshrn_n_u16(a9, 8uLL));
      *a9.i8 = vmovn_s16(vzip1q_s8(a9, a7));
      v20->i32[0] = a9.i32[0];
      v55 = &v18->i8[4 * a6];
      v21 += a6;
      if (v55 >= v19)
      {
        v56 = -a5;
      }

      else
      {
        v56 = 0;
      }

      v18 = &v55[4 * v56];
      v20 = (v20 + 4 * a6);
      --v50;
    }

    while (v50);
  }

  *result = v18;
  *a3 = v19;
  *a2 = v20;
  *a4 = v21;
  return result;
}

int8x16_t **vec::template_mark_pixelmask_row<(CGCompositeOperation)6,_rgba8_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, char **a4, int a5, int a6, int a7, int8x16_t a8, double a9, double a10, uint16x8_t a11, double a12, double a13, double a14, int8x16_t a15, uint64_t a16, uint64_t a17, unint64_t a18)
{
  v18 = a18;
  v19 = *result;
  v20 = *a3;
  v21 = *a2;
  v22 = *a4;
  if (a18 < 4)
  {
    goto LABEL_37;
  }

  if (a7)
  {
    v23 = 0;
  }

  else
  {
    v23 = -1;
  }

  v24.i64[0] = 0xFF000000FF000000;
  v24.i64[1] = 0xFF000000FF000000;
  a8 = vandq_s8(vdupq_n_s8(v23), v24);
  v25 = 4 * a6;
  v26 = 4 * v25;
  v27 = vdupq_n_s16(0xFE01u);
  a11.i64[0] = -1;
  a11.i64[1] = -1;
  while (1)
  {
    v28 = *v22;
    if (*v22 == -1)
    {
      v35 = &v22[v18];
      v36 = v22;
      do
      {
        v37 = v36++;
      }

      while (v36 <= v35 && (vminvq_u8(vceqq_s8(*v37, a11)) & 0x80) != 0);
      do
      {
        v38 = v37;
        v37 = (v37 + 4);
      }

      while (v37 <= v35 && v38->i32[0] == -1);
      if (v38 < v35)
      {
        while (v38->u8[0] == 255)
        {
          v38 = (v38 + 1);
          if (v38 >= v35)
          {
            v38 = &v22[v18];
            break;
          }
        }
      }

      v39 = v38 - v22;
      v40 = v38 - v22;
      do
      {
        v41 = vorrq_s8(*v19, a8);
        v42 = vqtbl1q_s8(*v21, xmmword_18439C790);
        v43 = vbicq_s8(*v21, vceqzq_s8(v42));
        v44 = vmvnq_s8(v42);
        v45 = vmull_u8(*v41.i8, *v44.i8);
        v46 = vmull_high_u8(v41, v44);
        v47 = vminq_u16(v45, v27);
        v48 = vminq_u16(v46, v27);
        a15 = vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v47, v47, 8uLL), 8uLL), vrsraq_n_u16(v48, v48, 8uLL), 8uLL);
        *v21 = vqaddq_u8(v43, a15);
        v22 += v25;
        v40 -= 4;
        v19 = (v19 + v26);
        v21 = (v21 + v26);
      }

      while (v40 > 3);
      v18 = v18 - v39 + v40;
      goto LABEL_34;
    }

    if (v28)
    {
      break;
    }

    v29 = &v22[v18];
    v30 = v22;
    do
    {
      v31 = v30++;
    }

    while (v30 <= v29 && (vminvq_u8(vceqzq_s8(*v31)) & 0x80) != 0);
    do
    {
      v32 = v31;
      v31 = (v31 + 4);
    }

    while (v31 <= v29 && !v32->i32[0]);
    if (v32 < v29)
    {
      while (!v32->i8[0])
      {
        v32 = (v32 + 1);
        if (v32 >= v29)
        {
          v32 = &v22[v18];
          break;
        }
      }
    }

    v33 = v32 - v22;
    v34 = (v32 - v22) * a6;
    v19 = (v19 + 4 * v34);
    v21 = (v21 + 4 * v34);
    v22 += v34;
    v18 -= v33;
LABEL_34:
    if (v18 <= 3)
    {
      goto LABEL_37;
    }
  }

  v49 = 0;
  while (1)
  {
    v50 = *(v21 + v49);
    a15.i32[0] = v28;
    v51 = vqtbl1q_s8(a15, xmmword_18439C7A0);
    v52 = vorrq_s8(*(v19 + v49), a8);
    v53 = vminq_u16(vmull_u8(*v52.i8, *v51.i8), v27);
    v54 = vminq_u16(vmull_high_u8(v52, v51), v27);
    v55 = vqtbl1q_s8(v50, xmmword_18439C790);
    v56 = vbicq_s8(v50, vceqzq_s8(v55));
    v57 = vmvnq_s8(v55);
    v58 = vminq_u16(vmull_u8(vqrshrn_n_u16(vrsraq_n_u16(v53, v53, 8uLL), 8uLL), *v57.i8), v27);
    v59 = vminq_u16(vmull_u8(vqrshrn_n_u16(vrsraq_n_u16(v54, v54, 8uLL), 8uLL), *&vextq_s8(v57, v57, 8uLL)), v27);
    a15 = vceqzq_s8(v51);
    *(v21 + v49) = vbslq_s8(a15, v50, vqaddq_u8(v56, vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v58, v58, 8uLL), 8uLL), vrsraq_n_u16(v59, v59, 8uLL), 8uLL)));
    v22 += v25;
    v18 -= 4;
    if (v18 < 4)
    {
      break;
    }

    v28 = *v22;
    v49 += v26;
    if ((*v22 - 1) >= 0xFFFFFFFE)
    {
      v19 = (v19 + v49);
      v21 = (v21 + v49);
      goto LABEL_34;
    }
  }

  v19 = (v19 + v26 + v49);
  v21 = (v21 + v26 + v49);
LABEL_37:
  v60 = v18 + a17;
  if (v60)
  {
    if (a7)
    {
      v61 = 0;
    }

    else
    {
      v61 = -1;
    }

    *a8.i8 = vand_s8(vdup_n_s8(v61), 0xFF000000FF000000);
    v62 = vdupq_n_s16(0xFE01u);
    do
    {
      a11.i32[0] = v19->i32[0];
      v63 = vmovl_u8(*a11.i8);
      LOBYTE(v64) = v63.i8[0];
      BYTE1(v64) = v63.i8[2];
      BYTE2(v64) = v63.i8[4];
      HIBYTE(v64) = v63.i8[6];
      v63.i32[0] = v21->i32[0];
      v63.i64[0] = vmovl_u8(*v63.i8).u64[0];
      LOBYTE(v65) = v63.i8[0];
      BYTE1(v65) = v63.i8[2];
      BYTE2(v65) = v63.i8[4];
      HIBYTE(v65) = v63.i8[6];
      v66.i8[7] = 0;
      v66.i8[0] = *v22;
      v66.i8[1] = *v22;
      v66.i8[2] = *v22;
      *(v66.i32 + 3) = *v22;
      v67 = vminq_u16(vmull_u8(vorr_s8(v64, *a8.i8), v66), v62);
      *v63.i8 = vqtbl1_s8(vdupq_lane_s8(*v63.i8, 6), -4244438269);
      v68 = vbic_s8(v65, vceqz_s8(*v63.i8));
      v69 = vminq_u16(vmull_u8(vqrshrn_n_u16(vrsraq_n_u16(v67, v67, 8uLL), 8uLL), vmvn_s8(*v63.i8)), v62);
      a11 = vrsraq_n_u16(v69, v69, 8uLL);
      *a11.i8 = vbsl_s8(vceqz_s8(v66), v65, vqadd_u8(v68, vqrshrn_n_u16(a11, 8uLL)));
      *a11.i8 = vmovn_s16(vzip1q_s8(a11, a8));
      v21->i32[0] = a11.i32[0];
      v70 = &v19->i8[4 * a6];
      v22 += a6;
      if (v70 >= v20)
      {
        v71 = -a5;
      }

      else
      {
        v71 = 0;
      }

      v19 = &v70[4 * v71];
      v21 = (v21 + 4 * a6);
      --v60;
    }

    while (v60);
  }

  *result = v19;
  *a3 = v20;
  *a2 = v21;
  *a4 = v22;
  return result;
}

int8x16_t **vec::template_mark_pixelmask_row<(CGCompositeOperation)5,_rgba8_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, char **a4, int a5, int a6, double a7, double a8, double a9, uint8x8_t a10, double a11, double a12, double a13, uint16x8_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18)
{
  v19 = a18;
  v20 = *result;
  v21 = *a3;
  v22 = *a2;
  v23 = *a4;
  if (a18 < 4)
  {
    goto LABEL_34;
  }

  v24 = 4 * a6;
  v25 = 4 * v24;
  v26 = vdupq_n_s16(0xFE01u);
  v27.i64[0] = -1;
  v27.i64[1] = -1;
  a10.i32[1] = 16843009;
  while (1)
  {
    v28 = *v23;
    if (*v23 == -1)
    {
      v35 = &v23[v19];
      v36 = v23;
      do
      {
        v37 = v36++;
      }

      while (v36 <= v35 && (vminvq_u8(vceqq_s8(*v37, v27)) & 0x80) != 0);
      do
      {
        v38 = v37;
        v37 = (v37 + 4);
      }

      while (v37 <= v35 && v38->i32[0] == -1);
      if (v38 < v35)
      {
        while (v38->u8[0] == 255)
        {
          v38 = (v38 + 1);
          if (v38 >= v35)
          {
            v38 = &v23[v19];
            break;
          }
        }
      }

      v39 = v38 - v23;
      v40 = v38 - v23;
      do
      {
        v41 = vqtbl1q_s8(*v20, xmmword_18439C790);
        v42 = vqtbl1q_s8(*v22, xmmword_18439C790);
        v43 = vminq_u16(vmull_u8(*v22->i8, *v41.i8), v26);
        v44 = vminq_u16(vmull_high_u8(*v22, v41), v26);
        v18 = vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v43, v43, 8uLL), 8uLL), vrsraq_n_u16(v44, v44, 8uLL), 8uLL);
        v45 = vminq_u16(vmull_u8(*v42.i8, *v20->i8), v26);
        v46 = vminq_u16(vmull_high_u8(v42, *v20), v26);
        a14 = vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v45, v45, 8uLL), 8uLL), vrsraq_n_u16(v46, v46, 8uLL), 8uLL);
        *v22 = vqaddq_u8(vqsubq_u8(*v22, v18), a14);
        v23 += v24;
        v40 -= 4;
        v20 = (v20 + v25);
        v22 = (v22 + v25);
      }

      while (v40 > 3);
      v19 = v19 - v39 + v40;
      goto LABEL_31;
    }

    if (v28)
    {
      break;
    }

    v29 = &v23[v19];
    v30 = v23;
    do
    {
      v31 = v30++;
    }

    while (v30 <= v29 && (vminvq_u8(vceqzq_s8(*v31)) & 0x80) != 0);
    do
    {
      v32 = v31;
      v31 = (v31 + 4);
    }

    while (v31 <= v29 && !v32->i32[0]);
    if (v32 < v29)
    {
      while (!v32->i8[0])
      {
        v32 = (v32 + 1);
        if (v32 >= v29)
        {
          v32 = &v23[v19];
          break;
        }
      }
    }

    v33 = v32 - v23;
    v34 = (v32 - v23) * a6;
    v20 = (v20 + 4 * v34);
    v22 = (v22 + 4 * v34);
    v23 += v34;
    v19 -= v33;
LABEL_31:
    if (v19 <= 3)
    {
      goto LABEL_34;
    }
  }

  v47 = 0;
  while (1)
  {
    v48 = *(v20 + v47);
    v49 = *(v22 + v47);
    a14.i32[0] = v28;
    v50 = vqtbl1q_s8(a14, xmmword_18439C7A0);
    v51 = vmull_u8(*v48.i8, *v50.i8);
    v52 = vmull_high_u8(v48, v50);
    v53 = vminq_u16(v51, v26);
    v54 = vminq_u16(v52, v26);
    *v51.i8 = vqrshrn_n_u16(vrsraq_n_u16(v53, v53, 8uLL), 8uLL);
    *v18.i8 = vqrshrn_n_u16(vrsraq_n_u16(v54, v54, 8uLL), 8uLL);
    v55 = vqtbl2q_s8(*(&v18 - 1), xmmword_18439C7B0);
    v56 = vqtbl1q_s8(v49, xmmword_18439C790);
    v57 = vminq_u16(vmull_u8(*v49.i8, *v55.i8), v26);
    v58 = vminq_u16(vmull_high_u8(v49, v55), v26);
    v59 = vqsubq_u8(v49, vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v57, v57, 8uLL), 8uLL), vrsraq_n_u16(v58, v58, 8uLL), 8uLL));
    v60 = vminq_u16(vmull_u8(*v56.i8, *v51.i8), v26);
    v61 = vminq_u16(vmull_u8(*&vextq_s8(v56, v56, 8uLL), *v18.i8), v26);
    a14 = vrsraq_n_u16(v61, v61, 8uLL);
    *(v22 + v47) = vqaddq_u8(v59, vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v60, v60, 8uLL), 8uLL), a14, 8uLL));
    v23 += v24;
    v19 -= 4;
    if (v19 < 4)
    {
      break;
    }

    v28 = *v23;
    v47 += v25;
    if ((*v23 - 1) >= 0xFFFFFFFE)
    {
      v20 = (v20 + v47);
      v22 = (v22 + v47);
      goto LABEL_31;
    }
  }

  v20 = (v20 + v25 + v47);
  v22 = (v22 + v25 + v47);
LABEL_34:
  v62 = v19 + a17;
  if (v62)
  {
    v63 = vdupq_n_s16(0xFE01u);
    do
    {
      a10.i32[0] = v20->i32[0];
      v64 = vmovl_u8(a10);
      LOBYTE(v65) = v64.i8[0];
      BYTE1(v65) = v64.i8[2];
      BYTE2(v65) = v64.i8[4];
      HIBYTE(v65) = v64.i8[6];
      v64.i32[0] = v22->i32[0];
      v64.i64[0] = vmovl_u8(*v64.i8).u64[0];
      LOBYTE(v66) = v64.i8[0];
      BYTE1(v66) = v64.i8[2];
      BYTE2(v66) = v64.i8[4];
      HIBYTE(v66) = v64.i8[6];
      v67.i8[7] = 0;
      v67.i8[0] = *v23;
      v67.i8[1] = *v23;
      v67.i8[2] = *v23;
      *(v67.i32 + 3) = *v23;
      v68 = vminq_u16(vmull_u8(v65, v67), v63);
      v69 = vrsraq_n_u16(v68, v68, 8uLL);
      v70 = vqrshrn_n_u16(v69, 8uLL);
      v71 = vminq_u16(vmull_u8(v66, vqtbl1_s8(vqrshrn_high_n_u16(v70, v69, 8uLL), 0x707070703030303)), v63);
      v72 = vminq_u16(vmull_u8(vqtbl1_s8(vdupq_lane_s8(*v64.i8, 6), -4244438269), v70), v63);
      v73 = vrsraq_n_u16(v72, v72, 8uLL);
      *v73.i8 = vqadd_u8(vqsub_u8(v66, vqrshrn_n_u16(vrsraq_n_u16(v71, v71, 8uLL), 8uLL)), vqrshrn_n_u16(v73, 8uLL));
      a10 = vmovn_s16(vzip1q_s8(v73, v63));
      v22->i32[0] = a10.i32[0];
      v74 = &v20->i8[4 * a6];
      v23 += a6;
      if (v74 >= v21)
      {
        v75 = -a5;
      }

      else
      {
        v75 = 0;
      }

      v20 = &v74[4 * v75];
      v22 = (v22 + 4 * a6);
      --v62;
    }

    while (v62);
  }

  *result = v20;
  *a3 = v21;
  *a2 = v22;
  *a4 = v23;
  return result;
}

int8x16_t **vec::template_mark_pixelmask_row<(CGCompositeOperation)4,_rgba8_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, char **a4, int a5, int a6, int a7, int8x16_t a8, double a9, double a10, uint16x8_t a11, double a12, double a13, double a14, uint16x8_t a15, uint64_t a16, uint64_t a17, unint64_t a18)
{
  v18 = a18;
  v19 = *result;
  v20 = *a3;
  v21 = *a2;
  v22 = *a4;
  if (a18 < 4)
  {
    goto LABEL_37;
  }

  if (a7)
  {
    v23 = 0;
  }

  else
  {
    v23 = -1;
  }

  v24.i64[0] = 0xFF000000FF000000;
  v24.i64[1] = 0xFF000000FF000000;
  a8 = vandq_s8(vdupq_n_s8(v23), v24);
  v25 = 4 * a6;
  v26 = 4 * v25;
  v27 = vdupq_n_s16(0xFE01u);
  a11.i64[0] = -1;
  a11.i64[1] = -1;
  while (1)
  {
    v28 = *v22;
    if (*v22 == -1)
    {
      v35 = &v22[v18];
      v36 = v22;
      do
      {
        v37 = v36++;
      }

      while (v36 <= v35 && (vminvq_u8(vceqq_s8(*v37, a11)) & 0x80) != 0);
      do
      {
        v38 = v37;
        v37 = (v37 + 4);
      }

      while (v37 <= v35 && v38->i32[0] == -1);
      if (v38 < v35)
      {
        while (v38->u8[0] == 255)
        {
          v38 = (v38 + 1);
          if (v38 >= v35)
          {
            v38 = &v22[v18];
            break;
          }
        }
      }

      v39 = v38 - v22;
      v40 = v38 - v22;
      do
      {
        v41 = vorrq_s8(*v19, a8);
        v42 = vqtbl1q_s8(*v21, xmmword_18439C790);
        v43 = vminq_u16(vmull_u8(*v41.i8, *v42.i8), v27);
        v44 = vminq_u16(vmull_high_u8(v41, v42), v27);
        a15 = vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v43, v43, 8uLL), 8uLL), vrsraq_n_u16(v44, v44, 8uLL), 8uLL);
        *v21 = vqsubq_u8(v41, a15);
        v22 += v25;
        v40 -= 4;
        v19 = (v19 + v26);
        v21 = (v21 + v26);
      }

      while (v40 > 3);
      v18 = v18 - v39 + v40;
      goto LABEL_34;
    }

    if (v28)
    {
      break;
    }

    v29 = &v22[v18];
    v30 = v22;
    do
    {
      v31 = v30++;
    }

    while (v30 <= v29 && (vminvq_u8(vceqzq_s8(*v31)) & 0x80) != 0);
    do
    {
      v32 = v31;
      v31 = (v31 + 4);
    }

    while (v31 <= v29 && !v32->i32[0]);
    if (v32 < v29)
    {
      while (!v32->i8[0])
      {
        v32 = (v32 + 1);
        if (v32 >= v29)
        {
          v32 = &v22[v18];
          break;
        }
      }
    }

    v33 = v32 - v22;
    v34 = (v32 - v22) * a6;
    v19 = (v19 + 4 * v34);
    v21 = (v21 + 4 * v34);
    v22 += v34;
    v18 -= v33;
LABEL_34:
    if (v18 <= 3)
    {
      goto LABEL_37;
    }
  }

  v45 = 0;
  while (1)
  {
    v46 = *(v21 + v45);
    a15.i32[0] = v28;
    v47 = vqtbl1q_s8(a15, xmmword_18439C7A0);
    v48 = vorrq_s8(*(v19 + v45), a8);
    v49 = vminq_u16(vmull_u8(*v48.i8, *v47.i8), v27);
    v50 = vminq_u16(vmull_high_u8(v48, v47), v27);
    v51 = vmvnq_s8(v47);
    v52 = vqtbl1q_s8(vmvnq_s8(v46), xmmword_18439C790);
    v53 = vmull_u8(*v46.i8, *v51.i8);
    v54 = vmull_high_u8(v46, v51);
    a15 = vqaddq_u16(v53, vmull_u8(vqrshrn_n_u16(vrsraq_n_u16(v49, v49, 8uLL), 8uLL), *v52.i8));
    v55 = vqaddq_u16(v54, vmull_u8(vqrshrn_n_u16(vrsraq_n_u16(v50, v50, 8uLL), 8uLL), *&vextq_s8(v52, v52, 8uLL)));
    v56 = vminq_u16(a15, v27);
    v57 = vminq_u16(v55, v27);
    *(v21 + v45) = vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v56, v56, 8uLL), 8uLL), vrsraq_n_u16(v57, v57, 8uLL), 8uLL);
    v22 += v25;
    v18 -= 4;
    if (v18 < 4)
    {
      break;
    }

    v28 = *v22;
    v45 += v26;
    if ((*v22 - 1) >= 0xFFFFFFFE)
    {
      v19 = (v19 + v45);
      v21 = (v21 + v45);
      goto LABEL_34;
    }
  }

  v19 = (v19 + v26 + v45);
  v21 = (v21 + v26 + v45);
LABEL_37:
  v58 = v18 + a17;
  if (v58)
  {
    if (a7)
    {
      v59 = 0;
    }

    else
    {
      v59 = -1;
    }

    *a8.i8 = vand_s8(vdup_n_s8(v59), 0xFF000000FF000000);
    v60 = vdupq_n_s16(0xFE01u);
    do
    {
      a11.i32[0] = v19->i32[0];
      v61 = vmovl_u8(*a11.i8);
      LOBYTE(v62) = v61.i8[0];
      BYTE1(v62) = v61.i8[2];
      BYTE2(v62) = v61.i8[4];
      HIBYTE(v62) = v61.i8[6];
      v61.i32[0] = v21->i32[0];
      v63 = vmovl_u8(*v61.i8);
      LOBYTE(v64) = v63.i8[0];
      BYTE1(v64) = v63.i8[2];
      BYTE2(v64) = v63.i8[4];
      HIBYTE(v64) = v63.i8[6];
      v63.i8[7] = 0;
      v63.i8[0] = *v22;
      v63.i8[1] = *v22;
      v63.i8[2] = *v22;
      *(v63.i32 + 3) = *v22;
      v65 = vminq_u16(vmull_u8(vorr_s8(v62, *a8.i8), *v63.i8), v60);
      *v66.i8 = vmvn_s8(v64);
      v66.i64[1] = v66.i64[0];
      v67 = vminq_u16(vqaddq_u16(vmull_u8(v64, vmvn_s8(*v63.i8)), vmull_u8(vqrshrn_n_u16(vrsraq_n_u16(v65, v65, 8uLL), 8uLL), vqtbl1_s8(v66, 0x707070703030303))), v60);
      a11 = vrsraq_n_u16(v67, v67, 8uLL);
      *a11.i8 = vqrshrn_n_u16(a11, 8uLL);
      *a11.i8 = vmovn_s16(vzip1q_s8(a11, a8));
      v21->i32[0] = a11.i32[0];
      v68 = &v19->i8[4 * a6];
      v22 += a6;
      if (v68 >= v20)
      {
        v69 = -a5;
      }

      else
      {
        v69 = 0;
      }

      v19 = &v68[4 * v69];
      v21 = (v21 + 4 * a6);
      --v58;
    }

    while (v58);
  }

  *result = v19;
  *a3 = v20;
  *a2 = v21;
  *a4 = v22;
  return result;
}

int8x16_t **vec::template_mark_pixelmask_row<(CGCompositeOperation)3,_rgba8_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, char **a4, int a5, int a6, int a7, int8x16_t a8, double a9, double a10, uint16x8_t a11, double a12, double a13, double a14, uint16x8_t a15, uint64_t a16, uint64_t a17, unint64_t a18)
{
  v18 = a18;
  v19 = *result;
  v20 = *a3;
  v21 = *a2;
  v22 = *a4;
  if (a18 < 4)
  {
    goto LABEL_37;
  }

  if (a7)
  {
    v23 = 0;
  }

  else
  {
    v23 = -1;
  }

  v24.i64[0] = 0xFF000000FF000000;
  v24.i64[1] = 0xFF000000FF000000;
  a8 = vandq_s8(vdupq_n_s8(v23), v24);
  v25 = 4 * a6;
  v26 = 4 * v25;
  v27 = vdupq_n_s16(0xFE01u);
  a11.i64[0] = -1;
  a11.i64[1] = -1;
  while (1)
  {
    v28 = *v22;
    if (*v22 == -1)
    {
      v35 = &v22[v18];
      v36 = v22;
      do
      {
        v37 = v36++;
      }

      while (v36 <= v35 && (vminvq_u8(vceqq_s8(*v37, a11)) & 0x80) != 0);
      do
      {
        v38 = v37;
        v37 = (v37 + 4);
      }

      while (v37 <= v35 && v38->i32[0] == -1);
      if (v38 < v35)
      {
        while (v38->u8[0] == 255)
        {
          v38 = (v38 + 1);
          if (v38 >= v35)
          {
            v38 = &v22[v18];
            break;
          }
        }
      }

      v39 = v38 - v22;
      v40 = v38 - v22;
      do
      {
        v41 = vorrq_s8(*v19, a8);
        v42 = vqtbl1q_s8(*v21, xmmword_18439C790);
        a15 = vmull_u8(*v41.i8, *v42.i8);
        v43 = vmull_high_u8(v41, v42);
        v44 = vminq_u16(a15, v27);
        v45 = vminq_u16(v43, v27);
        *v21 = vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v44, v44, 8uLL), 8uLL), vrsraq_n_u16(v45, v45, 8uLL), 8uLL);
        v22 += v25;
        v40 -= 4;
        v19 = (v19 + v26);
        v21 = (v21 + v26);
      }

      while (v40 > 3);
      v18 = v18 - v39 + v40;
      goto LABEL_34;
    }

    if (v28)
    {
      break;
    }

    v29 = &v22[v18];
    v30 = v22;
    do
    {
      v31 = v30++;
    }

    while (v30 <= v29 && (vminvq_u8(vceqzq_s8(*v31)) & 0x80) != 0);
    do
    {
      v32 = v31;
      v31 = (v31 + 4);
    }

    while (v31 <= v29 && !v32->i32[0]);
    if (v32 < v29)
    {
      while (!v32->i8[0])
      {
        v32 = (v32 + 1);
        if (v32 >= v29)
        {
          v32 = &v22[v18];
          break;
        }
      }
    }

    v33 = v32 - v22;
    v34 = (v32 - v22) * a6;
    v19 = (v19 + 4 * v34);
    v21 = (v21 + 4 * v34);
    v22 += v34;
    v18 -= v33;
LABEL_34:
    if (v18 <= 3)
    {
      goto LABEL_37;
    }
  }

  v46 = 0;
  while (1)
  {
    v47 = *(v21 + v46);
    a15.i32[0] = v28;
    v48 = vqtbl1q_s8(a15, xmmword_18439C7A0);
    v49 = vorrq_s8(*(v19 + v46), a8);
    v50 = vqtbl1q_s8(v47, xmmword_18439C790);
    v51 = vminq_u16(vmull_u8(*v49.i8, *v48.i8), v27);
    v52 = vminq_u16(vmull_high_u8(v49, v48), v27);
    v53 = vmvnq_s8(v48);
    v54 = vmull_u8(*v47.i8, *v53.i8);
    v55 = vmull_high_u8(v47, v53);
    a15 = vqaddq_u16(v54, vmull_u8(vqrshrn_n_u16(vrsraq_n_u16(v51, v51, 8uLL), 8uLL), *v50.i8));
    v56 = vqaddq_u16(v55, vmull_u8(vqrshrn_n_u16(vrsraq_n_u16(v52, v52, 8uLL), 8uLL), *&vextq_s8(v50, v50, 8uLL)));
    v57 = vminq_u16(a15, v27);
    v58 = vminq_u16(v56, v27);
    *(v21 + v46) = vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v57, v57, 8uLL), 8uLL), vrsraq_n_u16(v58, v58, 8uLL), 8uLL);
    v22 += v25;
    v18 -= 4;
    if (v18 < 4)
    {
      break;
    }

    v28 = *v22;
    v46 += v26;
    if ((*v22 - 1) >= 0xFFFFFFFE)
    {
      v19 = (v19 + v46);
      v21 = (v21 + v46);
      goto LABEL_34;
    }
  }

  v19 = (v19 + v26 + v46);
  v21 = (v21 + v26 + v46);
LABEL_37:
  v59 = v18 + a17;
  if (v59)
  {
    if (a7)
    {
      v60 = 0;
    }

    else
    {
      v60 = -1;
    }

    *a8.i8 = vand_s8(vdup_n_s8(v60), 0xFF000000FF000000);
    v61 = vdupq_n_s16(0xFE01u);
    do
    {
      a11.i32[0] = v19->i32[0];
      v62 = vmovl_u8(*a11.i8);
      LOBYTE(v63) = v62.i8[0];
      BYTE1(v63) = v62.i8[2];
      BYTE2(v63) = v62.i8[4];
      HIBYTE(v63) = v62.i8[6];
      v62.i32[0] = v21->i32[0];
      v62.i64[0] = vmovl_u8(*v62.i8).u64[0];
      LOBYTE(v64) = v62.i8[0];
      BYTE1(v64) = v62.i8[2];
      BYTE2(v64) = v62.i8[4];
      HIBYTE(v64) = v62.i8[6];
      v65.i8[7] = 0;
      v65.i8[0] = *v22;
      v65.i8[1] = *v22;
      v65.i8[2] = *v22;
      *(v65.i32 + 3) = *v22;
      v66 = vminq_u16(vmull_u8(vorr_s8(v63, *a8.i8), v65), v61);
      v67 = vminq_u16(vqaddq_u16(vmull_u8(v64, vmvn_s8(v65)), vmull_u8(vqrshrn_n_u16(vrsraq_n_u16(v66, v66, 8uLL), 8uLL), vqtbl1_s8(vdupq_lane_s8(*v62.i8, 6), -4244438269))), v61);
      a11 = vrsraq_n_u16(v67, v67, 8uLL);
      *a11.i8 = vqrshrn_n_u16(a11, 8uLL);
      *a11.i8 = vmovn_s16(vzip1q_s8(a11, a8));
      v21->i32[0] = a11.i32[0];
      v68 = &v19->i8[4 * a6];
      v22 += a6;
      if (v68 >= v20)
      {
        v69 = -a5;
      }

      else
      {
        v69 = 0;
      }

      v19 = &v68[4 * v69];
      v21 = (v21 + 4 * a6);
      --v59;
    }

    while (v59);
  }

  *result = v19;
  *a3 = v20;
  *a2 = v21;
  *a4 = v22;
  return result;
}

char **vec::template_mark_pixelmask_row<(CGCompositeOperation)1,_rgba8_t>(char **result, _OWORD **a2, unint64_t *a3, char **a4, int a5, int a6, double a7, uint8x8_t a8, double a9, double a10, double a11, int8x16_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16)
{
  v16 = a16;
  v17 = *result;
  v18 = *a3;
  v19 = *a2;
  v20 = *a4;
  if (a16 < 4)
  {
    goto LABEL_34;
  }

  v21 = 4 * a6;
  v22 = 4 * v21;
  v23.i64[0] = -1;
  v23.i64[1] = -1;
  a8.i32[1] = 16843009;
  v24 = vdupq_n_s16(0xFE01u);
  while (1)
  {
    v25 = *v20;
    if (*v20 == -1)
    {
      v32 = &v20[v16];
      v33 = v20;
      do
      {
        v34 = v33++;
      }

      while (v33 <= v32 && (vminvq_u8(vceqq_s8(*v34, v23)) & 0x80) != 0);
      do
      {
        v35 = v34;
        v34 = (v34 + 4);
      }

      while (v34 <= v32 && v35->i32[0] == -1);
      if (v35 < v32)
      {
        while (v35->u8[0] == 255)
        {
          v35 = (v35 + 1);
          if (v35 >= v32)
          {
            v35 = &v20[v16];
            break;
          }
        }
      }

      v36 = v35 - v20;
      v37 = v35 - v20;
      do
      {
        *v19 = *v17;
        v20 += v21;
        v37 -= 4;
        v17 += v22;
        v19 = (v19 + v22);
      }

      while (v37 > 3);
      v16 = v16 - v36 + v37;
      goto LABEL_31;
    }

    if (v25)
    {
      break;
    }

    v26 = &v20[v16];
    v27 = v20;
    do
    {
      v28 = v27++;
    }

    while (v27 <= v26 && (vminvq_u8(vceqzq_s8(*v28)) & 0x80) != 0);
    do
    {
      v29 = v28;
      v28 = (v28 + 4);
    }

    while (v28 <= v26 && !v29->i32[0]);
    if (v29 < v26)
    {
      while (!v29->i8[0])
      {
        v29 = (v29 + 1);
        if (v29 >= v26)
        {
          v29 = &v20[v16];
          break;
        }
      }
    }

    v30 = v29 - v20;
    v31 = (v29 - v20) * a6;
    v17 += 4 * v31;
    v19 = (v19 + 4 * v31);
    v20 += v31;
    v16 -= v30;
LABEL_31:
    if (v16 <= 3)
    {
      goto LABEL_34;
    }
  }

  v38 = 0;
  while (1)
  {
    v39 = *&v17[v38];
    v40 = *(v19 + v38);
    a12.i32[0] = v25;
    a12 = vqtbl1q_s8(a12, xmmword_18439C7A0);
    v41 = vmvnq_s8(a12);
    v42 = vmlal_u8(vmull_u8(*v40.i8, *v41.i8), *v39.i8, *a12.i8);
    v43 = vmlal_high_u8(vmull_high_u8(v40, v41), v39, a12);
    v44 = vminq_u16(v42, v24);
    v45 = vminq_u16(v43, v24);
    *(v19 + v38) = vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v44, v44, 8uLL), 8uLL), vrsraq_n_u16(v45, v45, 8uLL), 8uLL);
    v20 += v21;
    v16 -= 4;
    if (v16 < 4)
    {
      break;
    }

    v25 = *v20;
    v38 += v22;
    if ((*v20 - 1) >= 0xFFFFFFFE)
    {
      v17 += v38;
      v19 = (v19 + v38);
      goto LABEL_31;
    }
  }

  v17 += v22 + v38;
  v19 = (v19 + v22 + v38);
LABEL_34:
  v46 = v16 + a15;
  if (v46)
  {
    v47 = vdupq_n_s16(0xFE01u);
    do
    {
      a8.i32[0] = *v17;
      v48 = vmovl_u8(a8);
      LOBYTE(v49) = v48.i8[0];
      BYTE1(v49) = v48.i8[2];
      BYTE2(v49) = v48.i8[4];
      HIBYTE(v49) = v48.i8[6];
      v48.i32[0] = *v19;
      v50 = vmovl_u8(*v48.i8);
      LOBYTE(v51) = v50.i8[0];
      BYTE1(v51) = v50.i8[2];
      BYTE2(v51) = v50.i8[4];
      HIBYTE(v51) = v50.i8[6];
      v50.i8[7] = 0;
      v50.i8[0] = *v20;
      v50.i8[1] = *v20;
      v50.i8[2] = *v20;
      *(v50.i32 + 3) = *v20;
      v52 = vminq_u16(vmlal_u8(vmull_u8(v51, vmvn_s8(*v50.i8)), v49, *v50.i8), v47);
      v53 = vrsraq_n_u16(v52, v52, 8uLL);
      *v53.i8 = vqrshrn_n_u16(v53, 8uLL);
      a8 = vmovn_s16(vzip1q_s8(v53, v47));
      *v19 = a8.i32[0];
      v54 = &v17[4 * a6];
      v20 += a6;
      if (v54 >= v18)
      {
        v55 = -a5;
      }

      else
      {
        v55 = 0;
      }

      v17 = &v54[4 * v55];
      v19 = (v19 + 4 * a6);
      --v46;
    }

    while (v46);
  }

  *result = v17;
  *a3 = v18;
  *a2 = v19;
  *a4 = v20;
  return result;
}

uint64_t *vec::template_mark_pixelmask_row<(CGCompositeOperation)0,_rgba8_t>(uint64_t *result, uint8x8_t **a2, unint64_t *a3, char **a4, int a5, int a6, double a7, uint16x8_t a8, double a9, double a10, double a11, uint16x8_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16)
{
  v16 = a16;
  v17 = *result;
  v18 = *a3;
  v19 = *a2;
  v20 = *a4;
  if (a16 < 4)
  {
    goto LABEL_33;
  }

  v21 = 4 * a6;
  v22 = 4 * v21;
  a8.i64[0] = -1;
  a8.i64[1] = -1;
  v23 = vdupq_n_s16(0xFE01u);
  while (1)
  {
    v24 = *v20;
    if (*v20 == -1)
    {
      v34 = &v20[v16];
      v35 = v20;
      do
      {
        v36 = v35++;
      }

      while (v35 <= v34 && (vminvq_u8(vceqq_s8(*v36, a8)) & 0x80) != 0);
      do
      {
        v37 = v36;
        v36 = (v36 + 4);
      }

      while (v36 <= v34 && v37->i32[0] == -1);
      if (v37 < v34)
      {
        while (v37->u8[0] == 255)
        {
          v37 = (v37 + 1);
          if (v37 >= v34)
          {
            v37 = &v20[v16];
            break;
          }
        }
      }

      v38 = v37 - v20;
      v39 = v37 - v20;
      do
      {
        *v19->i8 = 0uLL;
        v20 += v21;
        v39 -= 4;
        v17 += v22;
        v19 = (v19 + v22);
      }

      while (v39 > 3);
      v16 = v16 - v38 + v39;
      goto LABEL_30;
    }

    if (v24)
    {
      break;
    }

    v25 = &v20[v16];
    v26 = v20;
    do
    {
      v27 = v26++;
    }

    while (v26 <= v25 && (vminvq_u8(vceqzq_s8(*v27)) & 0x80) != 0);
    do
    {
      v28 = v27;
      v27 = (v27 + 4);
    }

    while (v27 <= v25 && !v28->i32[0]);
    if (v28 < v25)
    {
      while (!v28->i8[0])
      {
        v28 = (v28 + 1);
        if (v28 >= v25)
        {
          v28 = &v20[v16];
          break;
        }
      }
    }

    v29 = v28 - v20;
    v30 = (v28 - v20) * a6;
    v17 += 4 * v30;
    v19 = (v19 + 4 * v30);
    v20 += v30;
    v16 -= v29;
LABEL_30:
    if (v16 <= 3)
    {
      goto LABEL_33;
    }
  }

  while (1)
  {
    a12.i32[0] = v24;
    v31 = vqtbl1q_s8(a12, xmmword_18439C7A0);
    v32 = vminq_u16(vmull_u8(*v19, *v31.i8), v23);
    v33 = vminq_u16(vmull_high_u8(*v19->i8, v31), v23);
    a12 = vrsraq_n_u16(v33, v33, 8uLL);
    *v19->i8 = vqsubq_u8(*v19->i8, vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v32, v32, 8uLL), 8uLL), a12, 8uLL));
    v20 += v21;
    v16 -= 4;
    if (v16 < 4)
    {
      break;
    }

    v24 = *v20;
    v17 += v22;
    v19 = (v19 + v22);
    if ((*v20 - 1) >= 0xFFFFFFFE)
    {
      goto LABEL_30;
    }
  }

  v17 += v22;
  v19 = (v19 + v22);
LABEL_33:
  v40 = v16 + a15;
  if (v40)
  {
    v41 = vdupq_n_s16(0xFE01u);
    do
    {
      a8.i32[0] = v19->i32[0];
      v42 = vmovl_u8(*a8.i8);
      LOBYTE(v43) = v42.i8[0];
      BYTE1(v43) = v42.i8[2];
      BYTE2(v43) = v42.i8[4];
      HIBYTE(v43) = v42.i8[6];
      v42.i8[7] = 0;
      v42.i8[0] = *v20;
      v42.i8[1] = *v20;
      v42.i8[2] = *v20;
      *(v42.i32 + 3) = *v20;
      v44 = vminq_u16(vmull_u8(v43, *v42.i8), v41);
      a8 = vrsraq_n_u16(v44, v44, 8uLL);
      *a8.i8 = vqsub_u8(v43, vqrshrn_n_u16(a8, 8uLL));
      *a8.i8 = vmovn_s16(vzip1q_s8(a8, v41));
      v19->i32[0] = a8.i32[0];
      v45 = v17 + 4 * a6;
      v20 += a6;
      if (v45 >= v18)
      {
        v46 = -a5;
      }

      else
      {
        v46 = 0;
      }

      v17 = v45 + 4 * v46;
      v19 = (v19 + 4 * a6);
      --v40;
    }

    while (v40);
  }

  *result = v17;
  *a3 = v18;
  *a2 = v19;
  *a4 = v20;
  return result;
}

int8x16_t **vec::template_mark_pixelshape_row<(CGCompositeOperation)23,_rgba8_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, int a4, int a5, int a6, int a7, uint64_t a8, int8x16_t a9, double a10, double a11, double a12, int8x16_t a13, unint64_t a14)
{
  v14 = a14;
  v15 = *result;
  v16 = *a3;
  v17 = *a2;
  if (a14 >= 4)
  {
    if (a6)
    {
      v18 = 0;
    }

    else
    {
      v18 = -1;
    }

    v19.i64[0] = 0xFF000000FF000000;
    v19.i64[1] = 0xFF000000FF000000;
    a9 = vandq_s8(vdupq_n_s8(v18), v19);
    if (a7)
    {
      v20 = 0;
    }

    else
    {
      v20 = -1;
    }

    v21 = vandq_s8(vdupq_n_s8(v20), v19);
    v22 = 16 * a5;
    v23 = vdupq_n_s16(0xFE01u);
    do
    {
      v24 = vorrq_s8(*v15, a9);
      v25 = vorrq_s8(*v17, v21);
      v26 = vqtbl1q_s8(v24, xmmword_18439C790);
      v27 = vqtbl1q_s8(v25, xmmword_18439C790);
      v28 = vminq_u8(v24, v26);
      v29 = vminq_u8(v25, v27);
      v30 = vmvnq_s8(v29);
      v31 = vcgtq_u8((*&v29 & __PAIR128__(0xFFFFFF00FFFFFFLL, 0xFFFFFF00FFFFFFLL)), v30);
      v32 = vabdq_u8(v30, (*&v29 & __PAIR128__(0xFFFFFF00FFFFFFLL, 0xFFFFFF00FFFFFFLL)));
      v33 = vmull_u8(*v28.i8, *v32.i8);
      v34 = vmull_high_u8(v28, v32);
      v35 = vminq_u16(v33, v23);
      v36 = vminq_u16(v34, v23);
      v37 = vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v35, v35, 8uLL), 8uLL), vrsraq_n_u16(v36, v36, 8uLL), 8uLL);
      v38 = vbslq_s8(v31, vqsubq_u8(v29, v37), vqaddq_u8(v29, v37));
      a13 = vbslq_s8(vceqzq_s8(v26), v25, vbslq_s8(vceqzq_s8(v27), v24, vminq_u8(v38, vqtbl1q_s8(v38, xmmword_18439C790))));
      *v17 = a13;
      v14 -= 4;
      v17 = (v17 + v22);
      v15 = (v15 + v22);
    }

    while (v14 > 3);
  }

  v39 = v14 + a8;
  if (v39)
  {
    if (a6)
    {
      v40 = 0;
    }

    else
    {
      v40 = -1;
    }

    *a9.i8 = vand_s8(vdup_n_s8(v40), 0xFF000000FF000000);
    if (a7)
    {
      v41 = 0;
    }

    else
    {
      v41 = -1;
    }

    v42 = vand_s8(vdup_n_s8(v41), 0xFF000000FF000000);
    v43 = vdupq_n_s16(0xFE01u);
    do
    {
      a13.i32[0] = v15->i32[0];
      v44 = vmovl_u8(*a13.i8);
      LOBYTE(v45) = v44.i8[0];
      BYTE1(v45) = v44.i8[2];
      BYTE2(v45) = v44.i8[4];
      HIBYTE(v45) = v44.i8[6];
      v44.i32[0] = v17->i32[0];
      a13 = vmovl_u8(*v44.i8);
      LOBYTE(v46) = a13.i8[0];
      BYTE1(v46) = a13.i8[2];
      BYTE2(v46) = a13.i8[4];
      HIBYTE(v46) = a13.i8[6];
      *a13.i8 = vorr_s8(v45, *a9.i8);
      v47 = vorr_s8(v46, v42);
      v48.i64[0] = a13.i64[0];
      v48.i64[1] = a13.i64[0];
      *v48.i8 = vqtbl1_s8(v48, 0x707070703030303);
      *v49.i8 = v47;
      v49.u64[1] = v47;
      *v49.i8 = vqtbl1_s8(v49, 0x707070703030303);
      v50 = vmin_u8(v47, *v49.i8);
      v51 = vmvn_s8(v50);
      v52 = vminq_u16(vmull_u8(vmin_u8(*a13.i8, *v48.i8), vabd_u8(v51, (*&v50 & 0xFFFFFF00FFFFFFLL))), v43);
      *v52.i8 = vqrshrn_n_u16(vrsraq_n_u16(v52, v52, 8uLL), 8uLL);
      *v53.i8 = vbsl_s8(vcgt_u8((*&v50 & 0xFFFFFF00FFFFFFLL), v51), vqsub_u8(v50, *v52.i8), vqadd_u8(v50, *v52.i8));
      v53.i64[1] = v53.i64[0];
      *a13.i8 = vbsl_s8(vceqz_s8(*v48.i8), v47, vbsl_s8(vceqz_s8(*v49.i8), *a13.i8, vmin_u8(*v53.i8, vqtbl1_s8(v53, 0x707070703030303))));
      *a13.i8 = vmovn_s16(vzip1q_s8(a13, a9));
      v17->i32[0] = a13.i32[0];
      v54 = &v15->i8[4 * a5];
      if (v54 >= v16)
      {
        v55 = -a4;
      }

      else
      {
        v55 = 0;
      }

      v15 = &v54[4 * v55];
      v17 = (v17 + 4 * a5);
      --v39;
    }

    while (v39);
  }

  *result = v15;
  *a3 = v16;
  *a2 = v17;
  return result;
}

int8x16_t **vec::template_mark_pixelshape_row<(CGCompositeOperation)22,_rgba8_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, int a4, int a5, int a6, int a7, uint64_t a8, int8x16_t a9, double a10, double a11, double a12, double a13, uint8x8_t a14, unint64_t a15)
{
  v15 = a15;
  v16 = *result;
  v17 = *a3;
  v18 = *a2;
  if (a15 >= 4)
  {
    if (a6)
    {
      v19 = 0;
    }

    else
    {
      v19 = -1;
    }

    v20 = vdupq_n_s8(v19);
    v21.i64[0] = 0xFF000000FF000000;
    v21.i64[1] = 0xFF000000FF000000;
    if (a7)
    {
      v22 = 0;
    }

    else
    {
      v22 = -1;
    }

    a9 = vandq_s8(v20, v21);
    v23 = vandq_s8(vdupq_n_s8(v22), v21);
    v24 = 16 * a5;
    v25.i64[0] = 0xFFFFFFFFFFFFLL;
    v25.i64[1] = 0xFFFFFFFFFFFFLL;
    v26 = vdupq_n_s16(0xFE01u);
    a14.i32[1] = 117901063;
    do
    {
      v27 = vorrq_s8(*v16, a9);
      v28 = vorrq_s8(*v18, v23);
      v29 = vqtbl1q_s8(v27, xmmword_18439C790);
      v30 = vqtbl1q_s8(v28, xmmword_18439C790);
      v31 = vminq_u8(v27, v29);
      v32 = vminq_u8(v28, v30);
      v33 = vmvnq_s8(v29);
      v34 = vmvnq_s8(v30);
      v59.val[1] = vqaddq_u16(vqaddq_u16(vabdq_u16(vmull_u8(*v31.i8, *v30.i8), vandq_s8(vmull_u8(*v32.i8, *v29.i8), v25)), vmull_u8(*v32.i8, *v33.i8)), vmull_u8(*v31.i8, *v34.i8));
      v35 = vqaddq_u16(vqaddq_u16(vabdq_u16(vmull_high_u8(v31, v30), vandq_s8(vmull_high_u8(v32, v29), v25)), vmull_high_u8(v32, v33)), vmull_high_u8(v31, v34));
      v36 = vminq_u16(v59.val[1], v26);
      v37 = vminq_u16(v35, v26);
      v59.val[0] = vrsraq_n_u16(v36, v36, 8uLL);
      v38 = vrsraq_n_u16(v37, v37, 8uLL);
      *v59.val[0].i8 = vqrshrn_n_u16(v59.val[0], 8uLL);
      *v59.val[1].i8 = vqrshrn_n_u16(v38, 8uLL);
      *v18 = vbslq_s8(vceqzq_s8(v29), v28, vbslq_s8(vceqzq_s8(v30), v27, vminq_u8(vqrshrn_high_n_u16(*v59.val[0].i8, v38, 8uLL), vqtbl2q_s8(v59, xmmword_18439C7B0))));
      v15 -= 4;
      v18 = (v18 + v24);
      v16 = (v16 + v24);
    }

    while (v15 > 3);
  }

  v39 = v15 + a8;
  if (v39)
  {
    if (a6)
    {
      v40 = 0;
    }

    else
    {
      v40 = -1;
    }

    *a9.i8 = vand_s8(vdup_n_s8(v40), 0xFF000000FF000000);
    if (a7)
    {
      v41 = 0;
    }

    else
    {
      v41 = -1;
    }

    v42 = vand_s8(vdup_n_s8(v41), 0xFF000000FF000000);
    v43.i64[0] = 0xFFFFFFFFFFFFLL;
    v43.i64[1] = 0xFFFFFFFFFFFFLL;
    v44 = vdupq_n_s16(0xFE01u);
    do
    {
      a14.i32[0] = v16->i32[0];
      v45 = vmovl_u8(a14);
      LOBYTE(v46) = v45.i8[0];
      BYTE1(v46) = v45.i8[2];
      BYTE2(v46) = v45.i8[4];
      HIBYTE(v46) = v45.i8[6];
      v45.i32[0] = v18->i32[0];
      v47 = vmovl_u8(*v45.i8);
      LOBYTE(v48) = v47.i8[0];
      BYTE1(v48) = v47.i8[2];
      BYTE2(v48) = v47.i8[4];
      HIBYTE(v48) = v47.i8[6];
      *v47.i8 = vorr_s8(v46, *a9.i8);
      v49 = vorr_s8(v48, v42);
      v50.i64[0] = v47.i64[0];
      v50.i64[1] = v47.i64[0];
      *v50.i8 = vqtbl1_s8(v50, 0x707070703030303);
      *v51.i8 = v49;
      v51.u64[1] = v49;
      *v51.i8 = vqtbl1_s8(v51, 0x707070703030303);
      v52 = vmin_u8(*v47.i8, *v50.i8);
      v53 = vmin_u8(v49, *v51.i8);
      v54 = vminq_u16(vqaddq_u16(vqaddq_u16(vabdq_u16(vmull_u8(v52, *v51.i8), vandq_s8(vmull_u8(v53, *v50.i8), v43)), vmull_u8(v53, vmvn_s8(*v50.i8))), vmull_u8(v52, vmvn_s8(*v51.i8))), v44);
      v55 = vrsraq_n_u16(v54, v54, 8uLL);
      v56 = vqrshrn_n_u16(v55, 8uLL);
      *v47.i8 = vbsl_s8(vceqz_s8(*v50.i8), v49, vbsl_s8(vceqz_s8(*v51.i8), *v47.i8, vmin_u8(v56, vqtbl1_s8(vqrshrn_high_n_u16(v56, v55, 8uLL), 0x707070703030303))));
      a14 = vmovn_s16(vzip1q_s8(v47, a9));
      v18->i32[0] = a14.i32[0];
      v57 = &v16->i8[4 * a5];
      if (v57 >= v17)
      {
        v58 = -a4;
      }

      else
      {
        v58 = 0;
      }

      v16 = &v57[4 * v58];
      v18 = (v18 + 4 * a5);
      --v39;
    }

    while (v39);
  }

  *result = v16;
  *a3 = v17;
  *a2 = v18;
  return result;
}

int8x16_t **vec::template_mark_pixelshape_row<(CGCompositeOperation)21,_rgba8_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, int a4, int a5, int a6, int a7, uint64_t a8, int8x16_t a9, double a10, double a11, double a12, double a13, uint8x8_t a14, unint64_t a15)
{
  v16 = a15;
  v17 = *result;
  v18 = *a3;
  v19 = *a2;
  if (a15 >= 4)
  {
    if (a6)
    {
      v20 = 0;
    }

    else
    {
      v20 = -1;
    }

    v21 = vdupq_n_s8(v20);
    v22.i64[0] = 0xFF000000FF000000;
    v22.i64[1] = 0xFF000000FF000000;
    if (a7)
    {
      v23 = 0;
    }

    else
    {
      v23 = -1;
    }

    a9 = vandq_s8(v21, v22);
    v24 = vandq_s8(vdupq_n_s8(v23), v22);
    v25 = 16 * a5;
    v26 = vdupq_n_s16(0xFE01u);
    a14.i32[1] = 117901063;
    do
    {
      v27 = vorrq_s8(*v17, a9);
      v28 = vorrq_s8(*v19, v24);
      v29 = vqtbl1q_s8(v27, xmmword_18439C790);
      v30 = vqtbl1q_s8(v28, xmmword_18439C790);
      v31 = vminq_u8(v27, v29);
      v32 = vminq_u8(v28, v30);
      v33 = vcgeq_u8(vrhaddq_u8(v29, 0), v31);
      v34 = vzip1q_s8(v33, v33);
      v35 = vmull_u8(*v31.i8, *v32.i8);
      v36 = vmull_high_u8(v31, v32);
      v37 = vqsubq_u8(v30, v32);
      v38 = vqsubq_u8(v29, v31);
      v39 = vmull_u8(*v37.i8, *v38.i8);
      v40 = vmull_high_u8(v37, v38);
      v41 = vbslq_s8(vzip2q_s8(v33, v33), vqaddq_u16(v36, v36), vqsubq_u16(vmull_high_u8(v30, v29), vqaddq_u16(v40, v40)));
      v42 = vbslq_s8(v34, vqaddq_u16(v35, v35), vqsubq_u16(vmull_u8(*v30.i8, *v29.i8), vqaddq_u16(v39, v39)));
      v43 = vmvnq_s8(v29);
      v44 = vmull_u8(*v32.i8, *v43.i8);
      v45 = vqaddq_u16(v41, vmull_high_u8(v32, v43));
      v46 = vmvnq_s8(v30);
      v47 = vmull_u8(*v31.i8, *v46.i8);
      v48 = vmull_high_u8(v31, v46);
      v75.val[1] = vqaddq_u16(vqaddq_u16(v42, v44), v47);
      v49 = vqaddq_u16(v45, v48);
      v50 = vminq_u16(v75.val[1], v26);
      v51 = vminq_u16(v49, v26);
      v75.val[0] = vrsraq_n_u16(v50, v50, 8uLL);
      v52 = vrsraq_n_u16(v51, v51, 8uLL);
      *v75.val[0].i8 = vqrshrn_n_u16(v75.val[0], 8uLL);
      *v75.val[1].i8 = vqrshrn_n_u16(v52, 8uLL);
      v53 = vqtbl2q_s8(v75, xmmword_18439C7B0);
      v15 = vqrshrn_high_n_u16(*v75.val[0].i8, v52, 8uLL);
      *v19 = vbslq_s8(vceqzq_s8(v29), v28, vbslq_s8(vceqzq_s8(v30), v27, vminq_u8(v15, v53)));
      v16 -= 4;
      v19 = (v19 + v25);
      v17 = (v17 + v25);
    }

    while (v16 > 3);
  }

  v54 = v16 + a8;
  if (v54)
  {
    if (a6)
    {
      v55 = 0;
    }

    else
    {
      v55 = -1;
    }

    *a9.i8 = vand_s8(vdup_n_s8(v55), 0xFF000000FF000000);
    if (a7)
    {
      v56 = 0;
    }

    else
    {
      v56 = -1;
    }

    v57 = vand_s8(vdup_n_s8(v56), 0xFF000000FF000000);
    v58 = vdupq_n_s16(0xFE01u);
    do
    {
      a14.i32[0] = v17->i32[0];
      v59 = vmovl_u8(a14);
      LOBYTE(v60) = v59.i8[0];
      BYTE1(v60) = v59.i8[2];
      BYTE2(v60) = v59.i8[4];
      HIBYTE(v60) = v59.i8[6];
      v59.i32[0] = v19->i32[0];
      v61 = vmovl_u8(*v59.i8);
      LOBYTE(v62) = v61.i8[0];
      BYTE1(v62) = v61.i8[2];
      BYTE2(v62) = v61.i8[4];
      HIBYTE(v62) = v61.i8[6];
      *v61.i8 = vorr_s8(v60, *a9.i8);
      v63 = vorr_s8(v62, v57);
      v64.i64[0] = v61.i64[0];
      v64.i64[1] = v61.i64[0];
      *v65.i8 = v63;
      v65.u64[1] = v63;
      *v64.i8 = vqtbl1_s8(v64, 0x707070703030303);
      *v65.i8 = vqtbl1_s8(v65, 0x707070703030303);
      v66 = vmin_u8(*v61.i8, *v64.i8);
      v67 = vmin_u8(v63, *v65.i8);
      *v15.i8 = vcge_u8(vrhadd_u8(*v64.i8, 0), v66);
      v68 = vmull_u8(v66, v67);
      v69 = vmull_u8(vqsub_u8(*v65.i8, v67), vqsub_u8(*v64.i8, v66));
      v70 = vminq_u16(vqaddq_u16(vqaddq_u16(vbslq_s8(vzip1q_s8(v15, v15), vqaddq_u16(v68, v68), vqsubq_u16(vmull_u8(*v65.i8, *v64.i8), vqaddq_u16(v69, v69))), vmull_u8(v67, vmvn_s8(*v64.i8))), vmull_u8(v66, vmvn_s8(*v65.i8))), v58);
      v71 = vrsraq_n_u16(v70, v70, 8uLL);
      v72 = vqrshrn_n_u16(v71, 8uLL);
      v15 = vqrshrn_high_n_u16(v72, v71, 8uLL);
      *v61.i8 = vbsl_s8(vceqz_s8(*v64.i8), v63, vbsl_s8(vceqz_s8(*v65.i8), *v61.i8, vmin_u8(v72, vqtbl1_s8(v15, 0x707070703030303))));
      a14 = vmovn_s16(vzip1q_s8(v61, a9));
      v19->i32[0] = a14.i32[0];
      v73 = &v17->i8[4 * a5];
      if (v73 >= v18)
      {
        v74 = -a4;
      }

      else
      {
        v74 = 0;
      }

      v17 = &v73[4 * v74];
      v19 = (v19 + 4 * a5);
      --v54;
    }

    while (v54);
  }

  *result = v17;
  *a3 = v18;
  *a2 = v19;
  return result;
}

int8x16_t **vec::template_mark_pixelshape_row<(CGCompositeOperation)20,_rgba8_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, int a4, int a5, int a6, int a7, uint64_t a8, int8x16_t a9, double a10, double a11, double a12, uint8x8_t a13, unint64_t a14)
{
  v14 = a14;
  v15 = *result;
  v16 = *a3;
  v17 = *a2;
  if (a14 >= 4)
  {
    if (a6)
    {
      v18 = 0;
    }

    else
    {
      v18 = -1;
    }

    v19.i64[0] = 0xFF000000FF000000;
    v19.i64[1] = 0xFF000000FF000000;
    a9 = vandq_s8(vdupq_n_s8(v18), v19);
    if (a7)
    {
      v20 = 0;
    }

    else
    {
      v20 = -1;
    }

    v21 = vandq_s8(vdupq_n_s8(v20), v19);
    v22 = 16 * a5;
    v23 = vdupq_n_s16(0xFE01u);
    a13.i32[1] = 117901063;
    do
    {
      v24 = vorrq_s8(*v15, a9);
      v25 = vorrq_s8(*v17, v21);
      v26 = vqtbl1q_s8(v24, xmmword_18439C790);
      v27 = vqtbl1q_s8(v25, xmmword_18439C790);
      v28 = vminq_u8(v24, v26);
      v29 = vminq_u8(v25, v27);
      v30 = vmull_u8(*v29.i8, *v29.i8);
      v31 = vmull_high_u8(v29, v29);
      v32 = vextq_s8(v27, v27, 8uLL).u64[0];
      *v30.i8 = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vdivq_f32(vcvtq_f32_u32(vmovl_u16(*v30.i8)), vcvtq_f32_u32(vmovl_u16((*&vzip1_s8(*v27.i8, *a9.i8) & 0xFF00FF00FF00FFLL)))))), vcvtnq_s32_f32(vdivq_f32(vcvtq_f32_u32(vmovl_high_u16(v30)), vcvtq_f32_u32(vmovl_u16((*&vzip2_s8(*v27.i8, *a9.i8) & 0xFF00FF00FF00FFLL)))))));
      v33 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vdivq_f32(vcvtq_f32_u32(vmovl_u16(*v31.i8)), vcvtq_f32_u32(vmovl_u16((*&vzip1_s8(v32, *a9.i8) & 0xFF00FF00FF00FFLL)))))), vcvtnq_s32_f32(vdivq_f32(vcvtq_f32_u32(vmovl_high_u16(v31)), vcvtq_f32_u32(vmovl_u16((*&vzip2_s8(v32, *a9.i8) & 0xFF00FF00FF00FFLL))))));
      v34 = vmull_u8(*v30.i8, *v26.i8);
      v35 = vmull_u8(vqmovun_s16(v33), *&vextq_s8(v26, v26, 8uLL));
      v36 = vqsubq_u8(v29, vqmovun_high_s16(*v30.i8, v33));
      v37 = vmull_u8(*v36.i8, *v28.i8);
      v38 = vmull_high_u8(v36, v28);
      v39 = vqaddq_u16(v34, vqaddq_u16(v37, v37));
      v40 = vqaddq_u16(v35, vqaddq_u16(v38, v38));
      v41 = vmvnq_s8(v26);
      v42 = vmull_u8(*v29.i8, *v41.i8);
      v43 = vmull_high_u8(v29, v41);
      v44 = vqaddq_u16(v39, v42);
      v45 = vqaddq_u16(v40, v43);
      v46 = vmvnq_s8(v27);
      v47 = vmull_u8(*v28.i8, *v46.i8);
      v48 = vmull_high_u8(v28, v46);
      v75.val[1] = vqaddq_u16(v44, v47);
      v49 = vqaddq_u16(v45, v48);
      v50 = vminq_u16(v75.val[1], v23);
      v51 = vminq_u16(v49, v23);
      v75.val[0] = vrsraq_n_u16(v50, v50, 8uLL);
      v52 = vrsraq_n_u16(v51, v51, 8uLL);
      *v75.val[0].i8 = vqrshrn_n_u16(v75.val[0], 8uLL);
      *v75.val[1].i8 = vqrshrn_n_u16(v52, 8uLL);
      *v17 = vbslq_s8(vceqzq_s8(v26), v25, vbslq_s8(vceqzq_s8(v27), v24, vminq_u8(vqrshrn_high_n_u16(*v75.val[0].i8, v52, 8uLL), vqtbl2q_s8(v75, xmmword_18439C7B0))));
      v14 -= 4;
      v17 = (v17 + v22);
      v15 = (v15 + v22);
    }

    while (v14 > 3);
  }

  v53 = v14 + a8;
  if (v53)
  {
    if (a6)
    {
      v54 = 0;
    }

    else
    {
      v54 = -1;
    }

    *a9.i8 = vand_s8(vdup_n_s8(v54), 0xFF000000FF000000);
    if (a7)
    {
      v55 = 0;
    }

    else
    {
      v55 = -1;
    }

    v56 = vand_s8(vdup_n_s8(v55), 0xFF000000FF000000);
    v57 = vdupq_n_s16(0xFE01u);
    do
    {
      a13.i32[0] = v15->i32[0];
      v58 = vmovl_u8(a13);
      LOBYTE(v59) = v58.i8[0];
      BYTE1(v59) = v58.i8[2];
      BYTE2(v59) = v58.i8[4];
      HIBYTE(v59) = v58.i8[6];
      v58.i32[0] = v17->i32[0];
      v60 = vmovl_u8(*v58.i8);
      LOBYTE(v61) = v60.i8[0];
      BYTE1(v61) = v60.i8[2];
      BYTE2(v61) = v60.i8[4];
      HIBYTE(v61) = v60.i8[6];
      *v60.i8 = vorr_s8(v59, *a9.i8);
      v62 = vorr_s8(v61, v56);
      v63.i64[0] = v60.i64[0];
      v63.i64[1] = v60.i64[0];
      *v63.i8 = vqtbl1_s8(v63, 0x707070703030303);
      *v64.i8 = v62;
      v64.u64[1] = v62;
      *v64.i8 = vqtbl1_s8(v64, 0x707070703030303);
      v65 = vmin_u8(*v60.i8, *v63.i8);
      v66 = vmin_u8(v62, *v64.i8);
      v67 = vmull_u8(v66, v66);
      *v67.i8 = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vdivq_f32(vcvtq_f32_u32(vmovl_u16(*v67.i8)), vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(v62.u8[3]) & 0xFF00FF00FF00FFLL)))))), vcvtnq_s32_f32(vdivq_f32(vcvtq_f32_u32(vmovl_high_u16(v67)), vcvtq_f32_u32(vmovl_u16((*&vdup_n_s16(v62.u8[7]) & 0xFF00FF00FF00FFLL)))))));
      v68 = vmull_u8(*v67.i8, *v63.i8);
      v69 = vmull_u8(vqsub_u8(v66, *v67.i8), v65);
      v70 = vminq_u16(vqaddq_u16(vqaddq_u16(vqaddq_u16(v68, vqaddq_u16(v69, v69)), vmull_u8(v66, vmvn_s8(*v63.i8))), vmull_u8(v65, vmvn_s8(*v64.i8))), v57);
      v71 = vrsraq_n_u16(v70, v70, 8uLL);
      v72 = vqrshrn_n_u16(v71, 8uLL);
      *v60.i8 = vbsl_s8(vceqz_s8(*v63.i8), v62, vbsl_s8(vceqz_s8(*v64.i8), *v60.i8, vmin_u8(v72, vqtbl1_s8(vqrshrn_high_n_u16(v72, v71, 8uLL), 0x707070703030303))));
      a13 = vmovn_s16(vzip1q_s8(v60, a9));
      v17->i32[0] = a13.i32[0];
      v73 = &v15->i8[4 * a5];
      if (v73 >= v16)
      {
        v74 = -a4;
      }

      else
      {
        v74 = 0;
      }

      v15 = &v73[4 * v74];
      v17 = (v17 + 4 * a5);
      --v53;
    }

    while (v53);
  }

  *result = v15;
  *a3 = v16;
  *a2 = v17;
  return result;
}

int8x16_t **vec::template_mark_pixelshape_row<(CGCompositeOperation)19,_rgba8_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, int a4, int a5, int a6, int a7, uint64_t a8, int8x16_t a9, double a10, double a11, double a12, uint8x8_t a13, unint64_t a14)
{
  v14 = a14;
  v15 = *result;
  v16 = *a3;
  v17 = *a2;
  if (a14 >= 4)
  {
    if (a6)
    {
      v18 = 0;
    }

    else
    {
      v18 = -1;
    }

    v19.i64[0] = 0xFF000000FF000000;
    v19.i64[1] = 0xFF000000FF000000;
    a9 = vandq_s8(vdupq_n_s8(v18), v19);
    if (a7)
    {
      v20 = 0;
    }

    else
    {
      v20 = -1;
    }

    v21 = vandq_s8(vdupq_n_s8(v20), v19);
    v22 = 16 * a5;
    v23 = vdupq_n_s32(0x3B808081u);
    a13.i32[1] = 117901063;
    do
    {
      v24 = vorrq_s8(*v15, a9);
      v25 = vorrq_s8(*v17, v21);
      v26 = vqtbl1q_s8(v24, xmmword_18439C790);
      v27 = vqtbl1q_s8(v25, xmmword_18439C790);
      v28 = vminq_u8(v24, v26);
      v29 = vminq_u8(v25, v27);
      v30 = vqsubq_u8(v27, v29);
      v31 = *&vzip1_s8(*v30.i8, *a9.i8) & 0xFF00FF00FF00FFLL;
      v32 = *&vzip2_s8(*v30.i8, *a9.i8) & 0xFF00FF00FF00FFLL;
      v33 = vextq_s8(v30, v30, 8uLL).u64[0];
      v34 = vmull_u8(*v26.i8, *v26.i8);
      v35 = vmull_high_u8(v26, v26);
      v36 = vextq_s8(v28, v28, 8uLL).u64[0];
      v37 = *&vzip2_s8(*v28.i8, *a9.i8) & 0xFF00FF00FF00FFLL;
      v38 = *&vzip1_s8(*v28.i8, *a9.i8) & 0xFF00FF00FF00FFLL;
      v39 = vmull_u8(*v26.i8, *v27.i8);
      v40 = vmull_high_u8(v26, v27);
      v41 = vmvnq_s8(v26);
      v42 = vmull_u8(*v29.i8, *v41.i8);
      v43 = vmull_high_u8(v29, v41);
      v44 = vmvnq_s8(v27);
      v45 = vmull_u8(*v28.i8, *v44.i8);
      v46 = vmull_high_u8(v28, v44);
      v47 = vceqzq_s8(v30);
      v48 = vmovl_s8(*v47.i8);
      v49 = vmovl_high_s8(v47);
      v78.val[1] = vcvtnq_s32_f32(vmulq_f32(vsubq_f32(vaddq_f32(vaddq_f32(vcvtq_f32_u32(vmovl_high_u16(v42)), vcvtq_f32_u32(vmovl_high_u16(v45))), vcvtq_f32_u32(vmovl_high_u16(v39))), vbicq_s8(vdivq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(v32)), vcvtq_f32_u32(vmovl_high_u16(v34))), vcvtq_f32_u32(vmovl_u16(v37))), vmovl_high_s16(v48))), v23));
      v78.val[0] = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vmulq_f32(vsubq_f32(vaddq_f32(vaddq_f32(vcvtq_f32_u32(vmovl_u16(*v42.i8)), vcvtq_f32_u32(vmovl_u16(*v45.i8))), vcvtq_f32_u32(vmovl_u16(*v39.i8))), vbicq_s8(vdivq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(v31)), vcvtq_f32_u32(vmovl_u16(*v34.i8))), vcvtq_f32_u32(vmovl_u16(v38))), vmovl_s16(*v48.i8))), v23))), v78.val[1]);
      *v78.val[0].i8 = vqmovun_s16(v78.val[0]);
      v50 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vmulq_f32(vsubq_f32(vaddq_f32(vaddq_f32(vcvtq_f32_u32(vmovl_u16(*v43.i8)), vcvtq_f32_u32(vmovl_u16(*v46.i8))), vcvtq_f32_u32(vmovl_u16(*v40.i8))), vbicq_s8(vdivq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vzip1_s8(v33, *a9.i8) & 0xFF00FF00FF00FFLL))), vcvtq_f32_u32(vmovl_u16(*v35.i8))), vcvtq_f32_u32(vmovl_u16((*&vzip1_s8(v36, *a9.i8) & 0xFF00FF00FF00FFLL)))), vmovl_s16(*v49.i8))), v23))), vcvtnq_s32_f32(vmulq_f32(vsubq_f32(vaddq_f32(vaddq_f32(vcvtq_f32_u32(vmovl_high_u16(v43)), vcvtq_f32_u32(vmovl_high_u16(v46))), vcvtq_f32_u32(vmovl_high_u16(v40))), vbicq_s8(vdivq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vzip2_s8(v33, *a9.i8) & 0xFF00FF00FF00FFLL))), vcvtq_f32_u32(vmovl_high_u16(v35))), vcvtq_f32_u32(vmovl_u16((*&vzip2_s8(v36, *a9.i8) & 0xFF00FF00FF00FFLL)))), vmovl_high_s16(v49))), v23)));
      *v78.val[1].i8 = vqmovun_s16(v50);
      *v17 = vbslq_s8(vceqzq_s8(v26), v25, vbslq_s8(vceqzq_s8(v27), v24, vminq_u8(vqmovun_high_s16(*v78.val[0].i8, v50), vqtbl2q_s8(v78, xmmword_18439C7B0))));
      v14 -= 4;
      v17 = (v17 + v22);
      v15 = (v15 + v22);
    }

    while (v14 > 3);
  }

  v51 = v14 + a8;
  if (v51)
  {
    if (a6)
    {
      v52 = 0;
    }

    else
    {
      v52 = -1;
    }

    *a9.i8 = vand_s8(vdup_n_s8(v52), 0xFF000000FF000000);
    if (a7)
    {
      v53 = 0;
    }

    else
    {
      v53 = -1;
    }

    v54 = vand_s8(vdup_n_s8(v53), 0xFF000000FF000000);
    v55 = vdupq_n_s32(0x3B808081u);
    do
    {
      a13.i32[0] = v15->i32[0];
      v56 = vmovl_u8(a13);
      LOBYTE(v57) = v56.i8[0];
      BYTE1(v57) = v56.i8[2];
      BYTE2(v57) = v56.i8[4];
      HIBYTE(v57) = v56.i8[6];
      v56.i32[0] = v17->i32[0];
      v58 = vmovl_u8(*v56.i8);
      LOBYTE(v59) = v58.i8[0];
      BYTE1(v59) = v58.i8[2];
      BYTE2(v59) = v58.i8[4];
      HIBYTE(v59) = v58.i8[6];
      v60 = vorr_s8(v57, *a9.i8);
      *v58.i8 = vorr_s8(v59, v54);
      *v61.i8 = v60;
      v61.u64[1] = v60;
      *v61.i8 = vqtbl1_s8(v61, 0x707070703030303);
      v62.i64[0] = v58.i64[0];
      v62.i64[1] = v58.i64[0];
      *v62.i8 = vqtbl1_s8(v62, 0x707070703030303);
      v63 = vmin_u8(v60, *v61.i8);
      v64 = vmin_u8(*v58.i8, *v62.i8);
      v65 = vqsub_u8(*v62.i8, v64);
      v66 = *&vzip1_s8(v65, *a9.i8) & 0xFF00FF00FF00FFLL;
      v67 = *&vzip2_s8(v65, *a9.i8) & 0xFF00FF00FF00FFLL;
      v68 = vmull_u8(*v61.i8, *v61.i8);
      v69 = *&vzip2_s8(v63, *a9.i8) & 0xFF00FF00FF00FFLL;
      v70 = *&vzip1_s8(v63, *a9.i8) & 0xFF00FF00FF00FFLL;
      v71 = vmull_u8(*v61.i8, *v62.i8);
      v72 = vmull_u8(v64, vmvn_s8(*v61.i8));
      v73 = vmull_u8(v63, vmvn_s8(*v62.i8));
      v74 = vmovl_s8(vceqz_s8(v65));
      v75 = vqmovn_high_s32(vqmovn_s32(vcvtnq_s32_f32(vmulq_f32(vsubq_f32(vaddq_f32(vaddq_f32(vcvtq_f32_u32(vmovl_u16(*v72.i8)), vcvtq_f32_u32(vmovl_u16(*v73.i8))), vcvtq_f32_u32(vmovl_u16(*v71.i8))), vbicq_s8(vdivq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(v66)), vcvtq_f32_u32(vmovl_u16(*v68.i8))), vcvtq_f32_u32(vmovl_u16(v70))), vmovl_s16(*v74.i8))), v55))), vcvtnq_s32_f32(vmulq_f32(vsubq_f32(vaddq_f32(vaddq_f32(vcvtq_f32_u32(vmovl_high_u16(v72)), vcvtq_f32_u32(vmovl_high_u16(v73))), vcvtq_f32_u32(vmovl_high_u16(v71))), vbicq_s8(vdivq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(v67)), vcvtq_f32_u32(vmovl_high_u16(v68))), vcvtq_f32_u32(vmovl_u16(v69))), vmovl_high_s16(v74))), v55)));
      *v72.i8 = vqmovun_s16(v75);
      *v58.i8 = vbsl_s8(vceqz_s8(*v61.i8), *v58.i8, vbsl_s8(vceqz_s8(*v62.i8), v60, vmin_u8(*v72.i8, vqtbl1_s8(vqmovun_high_s16(*v72.i8, v75), 0x707070703030303))));
      a13 = vmovn_s16(vzip1q_s8(v58, a9));
      v17->i32[0] = a13.i32[0];
      v76 = &v15->i8[4 * a5];
      if (v76 >= v16)
      {
        v77 = -a4;
      }

      else
      {
        v77 = 0;
      }

      v15 = &v76[4 * v77];
      v17 = (v17 + 4 * a5);
      --v51;
    }

    while (v51);
  }

  *result = v15;
  *a3 = v16;
  *a2 = v17;
  return result;
}

int8x16_t **vec::template_mark_pixelshape_row<(CGCompositeOperation)18,_rgba8_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, int a4, int a5, int a6, int a7, uint64_t a8, int8x16_t a9, double a10, double a11, double a12, uint8x8_t a13, unint64_t a14)
{
  v14 = a14;
  v15 = *result;
  v16 = *a3;
  v17 = *a2;
  if (a14 >= 4)
  {
    if (a6)
    {
      v18 = 0;
    }

    else
    {
      v18 = -1;
    }

    v19.i64[0] = 0xFF000000FF000000;
    v19.i64[1] = 0xFF000000FF000000;
    a9 = vandq_s8(vdupq_n_s8(v18), v19);
    if (a7)
    {
      v20 = 0;
    }

    else
    {
      v20 = -1;
    }

    v21 = vandq_s8(vdupq_n_s8(v20), v19);
    v22 = 16 * a5;
    v23 = vdupq_n_s16(0xFE01u);
    a13.i32[1] = 117901063;
    do
    {
      v24 = vorrq_s8(*v15, a9);
      v25 = vorrq_s8(*v17, v21);
      v26 = vqtbl1q_s8(v24, xmmword_18439C790);
      v27 = vqtbl1q_s8(v25, xmmword_18439C790);
      v28 = vminq_u8(v24, v26);
      v29 = vminq_u8(v25, v27);
      v30 = vmvnq_s8(v27);
      v68.val[1] = vmull_u8(*v28.i8, *v30.i8);
      v31 = vmull_high_u8(v28, v30);
      v32 = vbicq_s8(vtstq_s8(v29, v29), vcgtq_u8(v26, (*&v28 & __PAIR128__(0xFFFFFF00FFFFFFLL, 0xFFFFFF00FFFFFFLL))));
      v33 = vorrq_s8(vqsubq_u8(v26, (*&v28 & __PAIR128__(0xFFFFFF00FFFFFFLL, 0xFFFFFF00FFFFFFLL))), vceqzq_s8(v29));
      v34 = *&vzip1_s8(*v33.i8, *a9.i8) & 0xFF00FF00FF00FFLL;
      v35 = *&vzip2_s8(*v33.i8, *a9.i8) & 0xFF00FF00FF00FFLL;
      v33.i64[0] = vextq_s8(v33, v33, 8uLL).u64[0];
      v36 = vmull_u8(*v26.i8, *v26.i8);
      v37 = vmull_high_u8(v26, v26);
      v38 = vextq_s8(v29, v29, 8uLL).u64[0];
      v39 = vqmovun_high_s32(vqmovun_s32(vcvtnq_s32_f32(vdivq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vzip1_s8(*v29.i8, *a9.i8) & 0xFF00FF00FF00FFLL))), vcvtq_f32_u32(vmovl_u16(*v36.i8))), vcvtq_f32_u32(vmovl_u16(v34))))), vcvtnq_s32_f32(vdivq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vzip2_s8(*v29.i8, *a9.i8) & 0xFF00FF00FF00FFLL))), vcvtq_f32_u32(vmovl_high_u16(v36))), vcvtq_f32_u32(vmovl_u16(v35)))));
      v40 = vqmovun_high_s32(vqmovun_s32(vcvtnq_s32_f32(vdivq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vzip1_s8(v38, *a9.i8) & 0xFF00FF00FF00FFLL))), vcvtq_f32_u32(vmovl_u16(*v37.i8))), vcvtq_f32_u32(vmovl_u16((*&vzip1_s8(*v33.i8, *a9.i8) & 0xFF00FF00FF00FFLL)))))), vcvtnq_s32_f32(vdivq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vzip2_s8(v38, *a9.i8) & 0xFF00FF00FF00FFLL))), vcvtq_f32_u32(vmovl_high_u16(v37))), vcvtq_f32_u32(vmovl_u16((*&vzip2_s8(*v33.i8, *a9.i8) & 0xFF00FF00FF00FFLL))))));
      v41 = vmvnq_s8(v26);
      v42 = vminq_u16(vqaddq_u16(vqaddq_u16(vorrq_s8(v39, vmovl_s8(*v32.i8)), vmull_u8(*v29.i8, *v41.i8)), v68.val[1]), v23);
      v43 = vminq_u16(vqaddq_u16(vqaddq_u16(vorrq_s8(v40, vmovl_high_s8(v32)), vmull_high_u8(v29, v41)), v31), v23);
      v68.val[0] = vrsraq_n_u16(v42, v42, 8uLL);
      v44 = vrsraq_n_u16(v43, v43, 8uLL);
      *v68.val[0].i8 = vqrshrn_n_u16(v68.val[0], 8uLL);
      *v68.val[1].i8 = vqrshrn_n_u16(v44, 8uLL);
      *v17 = vbslq_s8(vceqzq_s8(v26), v25, vbslq_s8(vceqzq_s8(v27), v24, vminq_u8(vqrshrn_high_n_u16(*v68.val[0].i8, v44, 8uLL), vqtbl2q_s8(v68, xmmword_18439C7B0))));
      v14 -= 4;
      v17 = (v17 + v22);
      v15 = (v15 + v22);
    }

    while (v14 > 3);
  }

  v45 = v14 + a8;
  if (v45)
  {
    if (a6)
    {
      v46 = 0;
    }

    else
    {
      v46 = -1;
    }

    *a9.i8 = vand_s8(vdup_n_s8(v46), 0xFF000000FF000000);
    if (a7)
    {
      v47 = 0;
    }

    else
    {
      v47 = -1;
    }

    v48 = vand_s8(vdup_n_s8(v47), 0xFF000000FF000000);
    v49 = vdupq_n_s16(0xFE01u);
    do
    {
      a13.i32[0] = v15->i32[0];
      v50 = vmovl_u8(a13);
      LOBYTE(v51) = v50.i8[0];
      BYTE1(v51) = v50.i8[2];
      BYTE2(v51) = v50.i8[4];
      HIBYTE(v51) = v50.i8[6];
      v50.i32[0] = v17->i32[0];
      v52 = vmovl_u8(*v50.i8);
      LOBYTE(v53) = v52.i8[0];
      BYTE1(v53) = v52.i8[2];
      BYTE2(v53) = v52.i8[4];
      HIBYTE(v53) = v52.i8[6];
      v54 = vorr_s8(v51, *a9.i8);
      *v52.i8 = vorr_s8(v53, v48);
      *v55.i8 = v54;
      v55.u64[1] = v54;
      *v55.i8 = vqtbl1_s8(v55, 0x707070703030303);
      v56.i64[0] = v52.i64[0];
      v56.i64[1] = v52.i64[0];
      *v56.i8 = vqtbl1_s8(v56, 0x707070703030303);
      v57 = vmin_u8(v54, *v55.i8);
      v58 = vmin_u8(*v52.i8, *v56.i8);
      v59 = vmull_u8(v57, vmvn_s8(*v56.i8));
      *&v57 &= 0xFFFFFF00FFFFFFuLL;
      v60 = vmovl_s8(vbic_s8(vtst_s8(v58, v58), vcgt_u8(*v55.i8, v57)));
      v61 = vorr_s8(vqsub_u8(*v55.i8, v57), vceqz_s8(v58));
      v62 = vmull_u8(*v55.i8, *v55.i8);
      v63 = vminq_u16(vqaddq_u16(vqaddq_u16(vorrq_s8(vqmovun_high_s32(vqmovun_s32(vcvtnq_s32_f32(vdivq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vzip1_s8(v58, *a9.i8) & 0xFF00FF00FF00FFLL))), vcvtq_f32_u32(vmovl_u16(*v62.i8))), vcvtq_f32_u32(vmovl_u16((*&vzip1_s8(v61, *a9.i8) & 0xFF00FF00FF00FFLL)))))), vcvtnq_s32_f32(vdivq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16((*&vzip2_s8(v58, *a9.i8) & 0xFF00FF00FF00FFLL))), vcvtq_f32_u32(vmovl_high_u16(v62))), vcvtq_f32_u32(vmovl_u16((*&vzip2_s8(v61, *a9.i8) & 0xFF00FF00FF00FFLL)))))), v60), vmull_u8(v58, vmvn_s8(*v55.i8))), v59), v49);
      v64 = vrsraq_n_u16(v63, v63, 8uLL);
      v65 = vqrshrn_n_u16(v64, 8uLL);
      *v52.i8 = vbsl_s8(vceqz_s8(*v55.i8), *v52.i8, vbsl_s8(vceqz_s8(*v56.i8), v54, vmin_u8(v65, vqtbl1_s8(vqrshrn_high_n_u16(v65, v64, 8uLL), 0x707070703030303))));
      a13 = vmovn_s16(vzip1q_s8(v52, a9));
      v17->i32[0] = a13.i32[0];
      v66 = &v15->i8[4 * a5];
      if (v66 >= v16)
      {
        v67 = -a4;
      }

      else
      {
        v67 = 0;
      }

      v15 = &v66[4 * v67];
      v17 = (v17 + 4 * a5);
      --v45;
    }

    while (v45);
  }

  *result = v15;
  *a3 = v16;
  *a2 = v17;
  return result;
}

int8x16_t **vec::template_mark_pixelshape_row<(CGCompositeOperation)17,_rgba8_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, int a4, int a5, int a6, int a7, uint64_t a8, int8x16_t a9, double a10, double a11, double a12, int8x16_t a13, unint64_t a14)
{
  v14 = a14;
  v15 = *result;
  v16 = *a3;
  v17 = *a2;
  if (a14 >= 4)
  {
    if (a6)
    {
      v18 = 0;
    }

    else
    {
      v18 = -1;
    }

    v19.i64[0] = 0xFF000000FF000000;
    v19.i64[1] = 0xFF000000FF000000;
    a9 = vandq_s8(vdupq_n_s8(v18), v19);
    if (a7)
    {
      v20 = 0;
    }

    else
    {
      v20 = -1;
    }

    v21 = vandq_s8(vdupq_n_s8(v20), v19);
    v22 = 16 * a5;
    v23 = vdupq_n_s16(0xFE01u);
    do
    {
      v24 = vorrq_s8(*v15, a9);
      v25 = vorrq_s8(*v17, v21);
      v26 = vqtbl1q_s8(v24, xmmword_18439C790);
      v27 = vqtbl1q_s8(v25, xmmword_18439C790);
      v28 = vminq_u8(v24, v26);
      v29 = vminq_u8(v25, v27);
      v30 = vmull_u8(*v28.i8, *v27.i8);
      v31 = vmvnq_s8(v27);
      v32 = vmull_u8(*v28.i8, *v31.i8);
      v33 = vmvnq_s8(v26);
      v34 = vqaddq_u16(vqaddq_u16(vmaxq_u16(vmull_high_u8(v28, v27), vmull_high_u8(v29, v26)), vmull_high_u8(v28, v31)), vmull_high_u8(v29, v33));
      v35 = vminq_u16(vqaddq_u16(vqaddq_u16(vmaxq_u16(v30, vmull_u8(*v29.i8, *v26.i8)), v32), vmull_u8(*v29.i8, *v33.i8)), v23);
      v36 = vminq_u16(v34, v23);
      a13 = vbslq_s8(vceqzq_s8(v26), v25, vbslq_s8(vceqzq_s8(v27), v24, vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v35, v35, 8uLL), 8uLL), vrsraq_n_u16(v36, v36, 8uLL), 8uLL)));
      *v17 = a13;
      v14 -= 4;
      v17 = (v17 + v22);
      v15 = (v15 + v22);
    }

    while (v14 > 3);
  }

  v37 = v14 + a8;
  if (v37)
  {
    if (a6)
    {
      v38 = 0;
    }

    else
    {
      v38 = -1;
    }

    *a9.i8 = vand_s8(vdup_n_s8(v38), 0xFF000000FF000000);
    if (a7)
    {
      v39 = 0;
    }

    else
    {
      v39 = -1;
    }

    v40 = vand_s8(vdup_n_s8(v39), 0xFF000000FF000000);
    v41 = vdupq_n_s16(0xFE01u);
    do
    {
      a13.i32[0] = v15->i32[0];
      v42 = vmovl_u8(*a13.i8);
      LOBYTE(v43) = v42.i8[0];
      BYTE1(v43) = v42.i8[2];
      BYTE2(v43) = v42.i8[4];
      HIBYTE(v43) = v42.i8[6];
      v42.i32[0] = v17->i32[0];
      a13 = vmovl_u8(*v42.i8);
      LOBYTE(v44) = a13.i8[0];
      BYTE1(v44) = a13.i8[2];
      BYTE2(v44) = a13.i8[4];
      HIBYTE(v44) = a13.i8[6];
      *a13.i8 = vorr_s8(v43, *a9.i8);
      v45 = vorr_s8(v44, v40);
      v46.i64[0] = a13.i64[0];
      v46.i64[1] = a13.i64[0];
      *v46.i8 = vqtbl1_s8(v46, 0x707070703030303);
      *v47.i8 = v45;
      v47.u64[1] = v45;
      *v47.i8 = vqtbl1_s8(v47, 0x707070703030303);
      v48 = vmin_u8(*a13.i8, *v46.i8);
      v49 = vmin_u8(v45, *v47.i8);
      v50 = vminq_u16(vqaddq_u16(vqaddq_u16(vmaxq_u16(vmull_u8(v48, *v47.i8), vmull_u8(v49, *v46.i8)), vmull_u8(v48, vmvn_s8(*v47.i8))), vmull_u8(v49, vmvn_s8(*v46.i8))), v41);
      *a13.i8 = vbsl_s8(vceqz_s8(*v46.i8), v45, vbsl_s8(vceqz_s8(*v47.i8), *a13.i8, vqrshrn_n_u16(vrsraq_n_u16(v50, v50, 8uLL), 8uLL)));
      *a13.i8 = vmovn_s16(vzip1q_s8(a13, a9));
      v17->i32[0] = a13.i32[0];
      v51 = &v15->i8[4 * a5];
      if (v51 >= v16)
      {
        v52 = -a4;
      }

      else
      {
        v52 = 0;
      }

      v15 = &v51[4 * v52];
      v17 = (v17 + 4 * a5);
      --v37;
    }

    while (v37);
  }

  *result = v15;
  *a3 = v16;
  *a2 = v17;
  return result;
}

int8x16_t **vec::template_mark_pixelshape_row<(CGCompositeOperation)16,_rgba8_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, int a4, int a5, int a6, int a7, uint64_t a8, int8x16_t a9, double a10, double a11, double a12, int8x16_t a13, unint64_t a14)
{
  v14 = a14;
  v15 = *result;
  v16 = *a3;
  v17 = *a2;
  if (a14 >= 4)
  {
    if (a6)
    {
      v18 = 0;
    }

    else
    {
      v18 = -1;
    }

    v19.i64[0] = 0xFF000000FF000000;
    v19.i64[1] = 0xFF000000FF000000;
    a9 = vandq_s8(vdupq_n_s8(v18), v19);
    if (a7)
    {
      v20 = 0;
    }

    else
    {
      v20 = -1;
    }

    v21 = vandq_s8(vdupq_n_s8(v20), v19);
    v22 = 16 * a5;
    v23 = vdupq_n_s16(0xFE01u);
    do
    {
      v24 = vorrq_s8(*v15, a9);
      v25 = vorrq_s8(*v17, v21);
      v26 = vqtbl1q_s8(v24, xmmword_18439C790);
      v27 = vqtbl1q_s8(v25, xmmword_18439C790);
      v28 = vminq_u8(v24, v26);
      v29 = vminq_u8(v25, v27);
      v30 = vmull_u8(*v28.i8, *v27.i8);
      v31 = vmvnq_s8(v27);
      v32 = vmull_u8(*v28.i8, *v31.i8);
      v33 = vmvnq_s8(v26);
      v34 = vqaddq_u16(vqaddq_u16(vminq_u16(vmull_high_u8(v29, v26), vmull_high_u8(v28, v27)), vmull_high_u8(v28, v31)), vmull_high_u8(v29, v33));
      v35 = vminq_u16(vqaddq_u16(vqaddq_u16(vminq_u16(vmull_u8(*v29.i8, *v26.i8), v30), v32), vmull_u8(*v29.i8, *v33.i8)), v23);
      v36 = vminq_u16(v34, v23);
      a13 = vbslq_s8(vceqzq_s8(v26), v25, vbslq_s8(vceqzq_s8(v27), v24, vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v35, v35, 8uLL), 8uLL), vrsraq_n_u16(v36, v36, 8uLL), 8uLL)));
      *v17 = a13;
      v14 -= 4;
      v17 = (v17 + v22);
      v15 = (v15 + v22);
    }

    while (v14 > 3);
  }

  v37 = v14 + a8;
  if (v37)
  {
    if (a6)
    {
      v38 = 0;
    }

    else
    {
      v38 = -1;
    }

    *a9.i8 = vand_s8(vdup_n_s8(v38), 0xFF000000FF000000);
    if (a7)
    {
      v39 = 0;
    }

    else
    {
      v39 = -1;
    }

    v40 = vand_s8(vdup_n_s8(v39), 0xFF000000FF000000);
    v41 = vdupq_n_s16(0xFE01u);
    do
    {
      a13.i32[0] = v15->i32[0];
      v42 = vmovl_u8(*a13.i8);
      LOBYTE(v43) = v42.i8[0];
      BYTE1(v43) = v42.i8[2];
      BYTE2(v43) = v42.i8[4];
      HIBYTE(v43) = v42.i8[6];
      v42.i32[0] = v17->i32[0];
      a13 = vmovl_u8(*v42.i8);
      LOBYTE(v44) = a13.i8[0];
      BYTE1(v44) = a13.i8[2];
      BYTE2(v44) = a13.i8[4];
      HIBYTE(v44) = a13.i8[6];
      *a13.i8 = vorr_s8(v43, *a9.i8);
      v45 = vorr_s8(v44, v40);
      v46.i64[0] = a13.i64[0];
      v46.i64[1] = a13.i64[0];
      *v46.i8 = vqtbl1_s8(v46, 0x707070703030303);
      *v47.i8 = v45;
      v47.u64[1] = v45;
      *v47.i8 = vqtbl1_s8(v47, 0x707070703030303);
      v48 = vmin_u8(*a13.i8, *v46.i8);
      v49 = vmin_u8(v45, *v47.i8);
      v50 = vminq_u16(vqaddq_u16(vqaddq_u16(vminq_u16(vmull_u8(v48, *v47.i8), vmull_u8(v49, *v46.i8)), vmull_u8(v48, vmvn_s8(*v47.i8))), vmull_u8(v49, vmvn_s8(*v46.i8))), v41);
      *a13.i8 = vbsl_s8(vceqz_s8(*v46.i8), v45, vbsl_s8(vceqz_s8(*v47.i8), *a13.i8, vqrshrn_n_u16(vrsraq_n_u16(v50, v50, 8uLL), 8uLL)));
      *a13.i8 = vmovn_s16(vzip1q_s8(a13, a9));
      v17->i32[0] = a13.i32[0];
      v51 = &v15->i8[4 * a5];
      if (v51 >= v16)
      {
        v52 = -a4;
      }

      else
      {
        v52 = 0;
      }

      v15 = &v51[4 * v52];
      v17 = (v17 + 4 * a5);
      --v37;
    }

    while (v37);
  }

  *result = v15;
  *a3 = v16;
  *a2 = v17;
  return result;
}

int8x16_t **vec::template_mark_pixelshape_row<(CGCompositeOperation)15,_rgba8_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, int a4, int a5, int a6, int a7, uint64_t a8, int8x16_t a9, double a10, double a11, double a12, double a13, int8x16_t a14, unint64_t a15)
{
  v15 = a15;
  v16 = *result;
  v17 = *a3;
  v18 = *a2;
  if (a15 >= 4)
  {
    if (a6)
    {
      v19 = 0;
    }

    else
    {
      v19 = -1;
    }

    v20.i64[0] = 0xFF000000FF000000;
    v20.i64[1] = 0xFF000000FF000000;
    a9 = vandq_s8(vdupq_n_s8(v19), v20);
    if (a7)
    {
      v21 = 0;
    }

    else
    {
      v21 = -1;
    }

    v22 = vandq_s8(vdupq_n_s8(v21), v20);
    v23 = 16 * a5;
    v24 = vdupq_n_s16(0xFE01u);
    do
    {
      v25 = vorrq_s8(*v16, a9);
      v26 = vorrq_s8(*v18, v22);
      v27 = vqtbl1q_s8(v25, xmmword_18439C790);
      v28 = vqtbl1q_s8(v26, xmmword_18439C790);
      v29 = vminq_u8(v25, v27);
      v30 = vminq_u8(v26, v28);
      v31 = vsubq_s8(v27, v29);
      v32 = vsubq_s8(v28, v30);
      v33 = vcgtq_u8(vrhaddq_u8(v28, 0), v30);
      v34 = vqaddq_u16(vmull_u8(*v31.i8, *v30.i8), vmull_u8(*v32.i8, *v29.i8));
      v35 = vqaddq_u16(vmull_high_u8(v31, v30), vmull_high_u8(v32, v29));
      v36 = vminq_u16(vbslq_s8(vmovl_s8(*v33.i8), v34, vqsubq_u16(vmull_u8(*v27.i8, *v28.i8), v34)), v24);
      v37 = vminq_u16(vbslq_s8(vmovl_high_s8(v33), v35, vqsubq_u16(vmull_high_u8(v27, v28), v35)), v24);
      a14 = vbslq_s8(vceqzq_s8(v27), v26, vbslq_s8(vceqzq_s8(v28), v25, vsubq_s8(vaddq_s8(v30, v29), vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v36, v36, 8uLL), 8uLL), vrsraq_n_u16(v37, v37, 8uLL), 8uLL))));
      *v18 = a14;
      v15 -= 4;
      v18 = (v18 + v23);
      v16 = (v16 + v23);
    }

    while (v15 > 3);
  }

  v38 = v15 + a8;
  if (v38)
  {
    if (a6)
    {
      v39 = 0;
    }

    else
    {
      v39 = -1;
    }

    *a9.i8 = vand_s8(vdup_n_s8(v39), 0xFF000000FF000000);
    if (a7)
    {
      v40 = 0;
    }

    else
    {
      v40 = -1;
    }

    v41 = vand_s8(vdup_n_s8(v40), 0xFF000000FF000000);
    v42 = vdupq_n_s16(0xFE01u);
    do
    {
      a14.i32[0] = v16->i32[0];
      v43 = vmovl_u8(*a14.i8);
      LOBYTE(v44) = v43.i8[0];
      BYTE1(v44) = v43.i8[2];
      BYTE2(v44) = v43.i8[4];
      HIBYTE(v44) = v43.i8[6];
      v43.i32[0] = v18->i32[0];
      a14 = vmovl_u8(*v43.i8);
      LOBYTE(v45) = a14.i8[0];
      BYTE1(v45) = a14.i8[2];
      BYTE2(v45) = a14.i8[4];
      HIBYTE(v45) = a14.i8[6];
      *a14.i8 = vorr_s8(v44, *a9.i8);
      v46 = vorr_s8(v45, v41);
      v47.i64[0] = a14.i64[0];
      v47.i64[1] = a14.i64[0];
      *v47.i8 = vqtbl1_s8(v47, 0x707070703030303);
      *v48.i8 = v46;
      v48.u64[1] = v46;
      *v48.i8 = vqtbl1_s8(v48, 0x707070703030303);
      v49 = vmin_u8(*a14.i8, *v47.i8);
      v50 = vmin_u8(v46, *v48.i8);
      v51 = vqaddq_u16(vmull_u8(vsub_s8(*v47.i8, v49), v50), vmull_u8(vsub_s8(*v48.i8, v50), v49));
      v52 = vminq_u16(vbslq_s8(vmovl_s8(vcgt_u8(vrhadd_u8(*v48.i8, 0), v50)), v51, vqsubq_u16(vmull_u8(*v47.i8, *v48.i8), v51)), v42);
      *a14.i8 = vbsl_s8(vceqz_s8(*v47.i8), v46, vbsl_s8(vceqz_s8(*v48.i8), *a14.i8, vsub_s8(vadd_s8(v50, v49), vqrshrn_n_u16(vrsraq_n_u16(v52, v52, 8uLL), 8uLL))));
      *a14.i8 = vmovn_s16(vzip1q_s8(a14, a9));
      v18->i32[0] = a14.i32[0];
      v53 = &v16->i8[4 * a5];
      if (v53 >= v17)
      {
        v54 = -a4;
      }

      else
      {
        v54 = 0;
      }

      v16 = &v53[4 * v54];
      v18 = (v18 + 4 * a5);
      --v38;
    }

    while (v38);
  }

  *result = v16;
  *a3 = v17;
  *a2 = v18;
  return result;
}

int8x16_t **vec::template_mark_pixelshape_row<(CGCompositeOperation)14,_rgba8_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, int a4, int a5, int a6, int a7, uint64_t a8, int8x16_t a9, double a10, double a11, double a12, int8x16_t a13, unint64_t a14)
{
  v14 = a14;
  v15 = *result;
  v16 = *a3;
  v17 = *a2;
  if (a14 >= 4)
  {
    if (a6)
    {
      v18 = 0;
    }

    else
    {
      v18 = -1;
    }

    v19.i64[0] = 0xFF000000FF000000;
    v19.i64[1] = 0xFF000000FF000000;
    a9 = vandq_s8(vdupq_n_s8(v18), v19);
    if (a7)
    {
      v20 = 0;
    }

    else
    {
      v20 = -1;
    }

    v21 = vandq_s8(vdupq_n_s8(v20), v19);
    v22 = 16 * a5;
    v23 = vdupq_n_s16(0xFE01u);
    do
    {
      v24 = vorrq_s8(*v15, a9);
      v25 = vorrq_s8(*v17, v21);
      v26 = vbicq_s8(v25, vceqzq_s8(vqtbl1q_s8(v25, xmmword_18439C790)));
      v27 = vminq_u16(vmull_u8(*v24.i8, *v26.i8), v23);
      v28 = vminq_u16(vmull_high_u8(v24, v26), v23);
      a13 = vbslq_s8(vceqzq_s8(vqtbl1q_s8(v24, xmmword_18439C790)), v25, vqaddq_u8(vqsubq_u8(v24, vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v27, v27, 8uLL), 8uLL), vrsraq_n_u16(v28, v28, 8uLL), 8uLL)), v26));
      *v17 = a13;
      v14 -= 4;
      v17 = (v17 + v22);
      v15 = (v15 + v22);
    }

    while (v14 > 3);
  }

  v29 = v14 + a8;
  if (v29)
  {
    if (a6)
    {
      v30 = 0;
    }

    else
    {
      v30 = -1;
    }

    *a9.i8 = vand_s8(vdup_n_s8(v30), 0xFF000000FF000000);
    if (a7)
    {
      v31 = 0;
    }

    else
    {
      v31 = -1;
    }

    v32 = vand_s8(vdup_n_s8(v31), 0xFF000000FF000000);
    v33 = vdupq_n_s16(0xFE01u);
    do
    {
      a13.i32[0] = v15->i32[0];
      v34 = vmovl_u8(*a13.i8);
      LOBYTE(v35) = v34.i8[0];
      BYTE1(v35) = v34.i8[2];
      BYTE2(v35) = v34.i8[4];
      HIBYTE(v35) = v34.i8[6];
      v34.i32[0] = v17->i32[0];
      v36 = vmovl_u8(*v34.i8);
      LOBYTE(v37) = v36.i8[0];
      BYTE1(v37) = v36.i8[2];
      BYTE2(v37) = v36.i8[4];
      HIBYTE(v37) = v36.i8[6];
      *v36.i8 = vorr_s8(v35, *a9.i8);
      v38 = vorr_s8(v37, v32);
      *v39.i8 = v38;
      v39.u64[1] = v38;
      *v39.i8 = vbic_s8(v38, vceqz_s8(vqtbl1_s8(v39, 0x707070703030303)));
      v40 = vminq_u16(vmull_u8(*v36.i8, *v39.i8), v33);
      a13.i64[1] = v36.i64[0];
      *a13.i8 = vbsl_s8(vceqz_s8(vqtbl1_s8(a13, 0x707070703030303)), v38, vqadd_u8(vqsub_u8(*v36.i8, vqrshrn_n_u16(vrsraq_n_u16(v40, v40, 8uLL), 8uLL)), *v39.i8));
      *a13.i8 = vmovn_s16(vzip1q_s8(a13, a9));
      v17->i32[0] = a13.i32[0];
      v41 = &v15->i8[4 * a5];
      if (v41 >= v16)
      {
        v42 = -a4;
      }

      else
      {
        v42 = 0;
      }

      v15 = &v41[4 * v42];
      v17 = (v17 + 4 * a5);
      --v29;
    }

    while (v29);
  }

  *result = v15;
  *a3 = v16;
  *a2 = v17;
  return result;
}

int8x16_t **vec::template_mark_pixelshape_row<(CGCompositeOperation)13,_rgba8_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, int a4, int a5, int a6, int a7, uint64_t a8, int8x16_t a9, double a10, double a11, double a12, int8x16_t a13, unint64_t a14)
{
  v14 = a14;
  v15 = *result;
  v16 = *a3;
  v17 = *a2;
  if (a14 >= 4)
  {
    if (a6)
    {
      v18 = 0;
    }

    else
    {
      v18 = -1;
    }

    v19.i64[0] = 0xFF000000FF000000;
    v19.i64[1] = 0xFF000000FF000000;
    a9 = vandq_s8(vdupq_n_s8(v18), v19);
    if (a7)
    {
      v20 = 0;
    }

    else
    {
      v20 = -1;
    }

    v21 = vandq_s8(vdupq_n_s8(v20), v19);
    v22 = 16 * a5;
    v23 = vdupq_n_s16(0xFE01u);
    do
    {
      v24 = vorrq_s8(*v15, a9);
      v25 = vorrq_s8(*v17, v21);
      v26 = vqtbl1q_s8(v24, xmmword_18439C790);
      v27 = vqtbl1q_s8(v25, xmmword_18439C790);
      v28 = vceqzq_s8(v27);
      v29 = vbicq_s8(v25, v28);
      v30 = vminq_u16(vmull_u8(*v24.i8, *v29.i8), v23);
      v31 = vminq_u16(vmull_high_u8(v24, v29), v23);
      v32 = vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v30, v30, 8uLL), 8uLL), vrsraq_n_u16(v31, v31, 8uLL), 8uLL);
      v33 = vmvnq_s8(v27);
      v34 = vmvnq_s8(v26);
      v35 = vmull_u8(*v24.i8, *v33.i8);
      v36 = vqaddq_u16(vmull_high_u8(v24, v33), vmull_high_u8(v29, v34));
      v37 = vminq_u16(vqaddq_u16(v35, vmull_u8(*v29.i8, *v34.i8)), v23);
      v38 = vminq_u16(v36, v23);
      a13 = vbslq_s8(vceqzq_s8(v26), v25, vbslq_s8(v28, v24, vqaddq_u8(v32, vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v37, v37, 8uLL), 8uLL), vrsraq_n_u16(v38, v38, 8uLL), 8uLL))));
      *v17 = a13;
      v14 -= 4;
      v17 = (v17 + v22);
      v15 = (v15 + v22);
    }

    while (v14 > 3);
  }

  v39 = v14 + a8;
  if (v39)
  {
    if (a6)
    {
      v40 = 0;
    }

    else
    {
      v40 = -1;
    }

    *a9.i8 = vand_s8(vdup_n_s8(v40), 0xFF000000FF000000);
    if (a7)
    {
      v41 = 0;
    }

    else
    {
      v41 = -1;
    }

    v42 = vand_s8(vdup_n_s8(v41), 0xFF000000FF000000);
    v43 = vdupq_n_s16(0xFE01u);
    do
    {
      a13.i32[0] = v15->i32[0];
      v44 = vmovl_u8(*a13.i8);
      LOBYTE(v45) = v44.i8[0];
      BYTE1(v45) = v44.i8[2];
      BYTE2(v45) = v44.i8[4];
      HIBYTE(v45) = v44.i8[6];
      v44.i32[0] = v17->i32[0];
      a13 = vmovl_u8(*v44.i8);
      LOBYTE(v46) = a13.i8[0];
      BYTE1(v46) = a13.i8[2];
      BYTE2(v46) = a13.i8[4];
      HIBYTE(v46) = a13.i8[6];
      *a13.i8 = vorr_s8(v45, *a9.i8);
      v47 = vorr_s8(v46, v42);
      v48.i64[0] = a13.i64[0];
      v48.i64[1] = a13.i64[0];
      *v48.i8 = vqtbl1_s8(v48, 0x707070703030303);
      *v49.i8 = v47;
      v49.u64[1] = v47;
      *v49.i8 = vqtbl1_s8(v49, 0x707070703030303);
      v50 = vceqz_s8(*v49.i8);
      v51 = vbic_s8(v47, v50);
      v52 = vminq_u16(vmull_u8(*a13.i8, v51), v43);
      v53 = vminq_u16(vqaddq_u16(vmull_u8(*a13.i8, vmvn_s8(*v49.i8)), vmull_u8(v51, vmvn_s8(*v48.i8))), v43);
      *a13.i8 = vbsl_s8(vceqz_s8(*v48.i8), v47, vbsl_s8(v50, *a13.i8, vqadd_u8(vqrshrn_n_u16(vrsraq_n_u16(v52, v52, 8uLL), 8uLL), vqrshrn_n_u16(vrsraq_n_u16(v53, v53, 8uLL), 8uLL))));
      *a13.i8 = vmovn_s16(vzip1q_s8(a13, a9));
      v17->i32[0] = a13.i32[0];
      v54 = &v15->i8[4 * a5];
      if (v54 >= v16)
      {
        v55 = -a4;
      }

      else
      {
        v55 = 0;
      }

      v15 = &v54[4 * v55];
      v17 = (v17 + 4 * a5);
      --v39;
    }

    while (v39);
  }

  *result = v15;
  *a3 = v16;
  *a2 = v17;
  return result;
}

int8x16_t **vec::template_mark_pixelshape_row<(CGCompositeOperation)12,_rgba8_t>(int8x16_t **result, uint8x16_t **a2, unint64_t *a3, int a4, int a5, int a6, int8x16_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v10 = a10;
  v11 = *result;
  v12 = *a3;
  v13 = *a2;
  if (a10 >= 4)
  {
    if (a6)
    {
      v14 = 0;
    }

    else
    {
      v14 = -1;
    }

    v15.i64[0] = 0xFF000000FF000000;
    v15.i64[1] = 0xFF000000FF000000;
    a7 = vandq_s8(vdupq_n_s8(v14), v15);
    v16 = 16 * a5;
    do
    {
      *v13 = vqaddq_u8(*v13, vorrq_s8(*v11, a7));
      v10 -= 4;
      v13 = (v13 + v16);
      v11 = (v11 + v16);
    }

    while (v10 > 3);
  }

  v17 = v10 + a9;
  if (v17)
  {
    if (a6)
    {
      v18 = 0;
    }

    else
    {
      v18 = -1;
    }

    v19.i32[1] = -16777216;
    *a7.i8 = vand_s8(vdup_n_s8(v18), 0xFF000000FF000000);
    do
    {
      v19.i32[0] = v11->i32[0];
      v20 = vmovl_u8(v19);
      LOBYTE(v21) = v20.i8[0];
      BYTE1(v21) = v20.i8[2];
      BYTE2(v21) = v20.i8[4];
      HIBYTE(v21) = v20.i8[6];
      v20.i32[0] = v13->i32[0];
      v22 = vmovl_u8(*v20.i8);
      LOBYTE(v23) = v22.i8[0];
      BYTE1(v23) = v22.i8[2];
      BYTE2(v23) = v22.i8[4];
      HIBYTE(v23) = v22.i8[6];
      *v22.i8 = vqadd_u8(v23, vorr_s8(v21, *a7.i8));
      v19 = vmovn_s16(vzip1q_s8(v22, a7));
      v13->i32[0] = v19.i32[0];
      v24 = &v11->i8[4 * a5];
      if (v24 >= v12)
      {
        v25 = -a4;
      }

      else
      {
        v25 = 0;
      }

      v11 = &v24[4 * v25];
      v13 = (v13 + 4 * a5);
      --v17;
    }

    while (v17);
  }

  *result = v11;
  *a3 = v12;
  *a2 = v13;
  return result;
}

int8x16_t **vec::template_mark_pixelshape_row<(CGCompositeOperation)11,_rgba8_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, int a4, int a5, int a6, int a7, uint64_t a8, int8x16_t a9, double a10, double a11, int8x16_t a12, unint64_t a13)
{
  v13 = a13;
  v14 = *result;
  v15 = *a3;
  v16 = *a2;
  if (a13 >= 4)
  {
    if (a6)
    {
      v17 = 0;
    }

    else
    {
      v17 = -1;
    }

    v18 = vdupq_n_s8(v17);
    v19.i64[0] = 0xFF000000FF000000;
    v19.i64[1] = 0xFF000000FF000000;
    if (a7)
    {
      v20 = 0;
    }

    else
    {
      v20 = -1;
    }

    a9 = vandq_s8(v18, v19);
    v21 = vandq_s8(vdupq_n_s8(v20), v19);
    v22 = 16 * a5;
    do
    {
      v23 = vorrq_s8(*v14, a9);
      v24 = vorrq_s8(*v16, v21);
      v25 = vqtbl1q_s8(v23, xmmword_18439C790);
      v26 = vqtbl1q_s8(v24, xmmword_18439C790);
      a12 = vqsubq_u8(vqaddq_u8(v26, v25), vqaddq_u8(vqsubq_u8(v25, v23), vqsubq_u8(v26, v24)));
      *v16 = a12;
      v13 -= 4;
      v16 = (v16 + v22);
      v14 = (v14 + v22);
    }

    while (v13 > 3);
  }

  v27 = v13 + a8;
  if (v27)
  {
    if (a6)
    {
      v28 = 0;
    }

    else
    {
      v28 = -1;
    }

    *a9.i8 = vand_s8(vdup_n_s8(v28), 0xFF000000FF000000);
    if (a7)
    {
      v29 = 0;
    }

    else
    {
      v29 = -1;
    }

    v30 = vand_s8(vdup_n_s8(v29), 0xFF000000FF000000);
    do
    {
      a12.i32[0] = v14->i32[0];
      v31 = vmovl_u8(*a12.i8);
      LOBYTE(v32) = v31.i8[0];
      BYTE1(v32) = v31.i8[2];
      BYTE2(v32) = v31.i8[4];
      HIBYTE(v32) = v31.i8[6];
      v31.i32[0] = v16->i32[0];
      a12 = vmovl_u8(*v31.i8);
      LOBYTE(v33) = a12.i8[0];
      BYTE1(v33) = a12.i8[2];
      BYTE2(v33) = a12.i8[4];
      HIBYTE(v33) = a12.i8[6];
      *a12.i8 = vorr_s8(v32, *a9.i8);
      v34 = vorr_s8(v33, v30);
      v35.i64[0] = a12.i64[0];
      v35.i64[1] = a12.i64[0];
      *v35.i8 = vqtbl1_s8(v35, 0x707070703030303);
      *v36.i8 = v34;
      v36.u64[1] = v34;
      *v36.i8 = vqtbl1_s8(v36, 0x707070703030303);
      *a12.i8 = vqsub_u8(vqadd_u8(*v36.i8, *v35.i8), vqadd_u8(vqsub_u8(*v35.i8, *a12.i8), vqsub_u8(*v36.i8, v34)));
      *a12.i8 = vmovn_s16(vzip1q_s8(a12, a9));
      v16->i32[0] = a12.i32[0];
      v37 = &v14->i8[4 * a5];
      if (v37 >= v15)
      {
        v38 = -a4;
      }

      else
      {
        v38 = 0;
      }

      v14 = &v37[4 * v38];
      v16 = (v16 + 4 * a5);
      --v27;
    }

    while (v27);
  }

  *result = v14;
  *a3 = v15;
  *a2 = v16;
  return result;
}

int8x16_t **vec::template_mark_pixelshape_row<(CGCompositeOperation)10,_rgba8_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, int a4, int a5, int8x16_t a6, double a7, uint16x8_t a8, double a9, uint16x8_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14)
{
  v14 = a14;
  v15 = *result;
  v16 = *a3;
  v17 = *a2;
  if (a14 >= 4)
  {
    v18 = 16 * a5;
    a6.i64[1] = 0xF0F0F0F0B0B0B0BLL;
    v19 = vdupq_n_s16(0xFE01u);
    do
    {
      v20 = vqtbl1q_s8(vmvnq_s8(*v17), xmmword_18439C790);
      v21 = vqtbl1q_s8(vmvnq_s8(*v15), xmmword_18439C790);
      v22 = vmull_high_u8(*v15, v20);
      a10 = vqaddq_u16(vmull_u8(*v15->i8, *v20.i8), vmull_u8(*v17->i8, *v21.i8));
      v23 = vminq_u16(a10, v19);
      v24 = vminq_u16(vqaddq_u16(v22, vmull_high_u8(*v17, v21)), v19);
      a8 = vrsraq_n_u16(v24, v24, 8uLL);
      *v17 = vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v23, v23, 8uLL), 8uLL), a8, 8uLL);
      v14 -= 4;
      v17 = (v17 + v18);
      v15 = (v15 + v18);
    }

    while (v14 > 3);
  }

  v25 = v14 + a13;
  if (v25)
  {
    a6.i64[0] = -4244438269;
    v26 = vdupq_n_s16(0xFE01u);
    do
    {
      a8.i32[0] = v15->i32[0];
      v27 = vmovl_u8(*a8.i8).u64[0];
      LOBYTE(v28) = v27.i8[0];
      BYTE1(v28) = v27.i8[2];
      BYTE2(v28) = v27.i8[4];
      HIBYTE(v28) = v27.i8[6];
      a10.i32[0] = v17->i32[0];
      v29 = vmovl_u8(*a10.i8).u64[0];
      LOBYTE(v30) = v29.i8[0];
      BYTE1(v30) = v29.i8[2];
      BYTE2(v30) = v29.i8[4];
      HIBYTE(v30) = v29.i8[6];
      *a10.i8 = vmvn_s8(vqtbl1_s8(vdupq_lane_s8(v29, 6), -4244438269));
      v31 = vminq_u16(vqaddq_u16(vmull_u8(v28, *a10.i8), vmull_u8(v30, vmvn_s8(vqtbl1_s8(vdupq_lane_s8(v27, 6), -4244438269)))), v26);
      a8 = vrsraq_n_u16(v31, v31, 8uLL);
      *a8.i8 = vqrshrn_n_u16(a8, 8uLL);
      *a8.i8 = vmovn_s16(vzip1q_s8(a8, a6));
      v17->i32[0] = a8.i32[0];
      v32 = &v15->i8[4 * a5];
      if (v32 >= v16)
      {
        v33 = -a4;
      }

      else
      {
        v33 = 0;
      }

      v15 = &v32[4 * v33];
      v17 = (v17 + 4 * a5);
      --v25;
    }

    while (v25);
  }

  *result = v15;
  *a3 = v16;
  *a2 = v17;
  return result;
}

int8x16_t **vec::template_mark_pixelshape_row<(CGCompositeOperation)9,_rgba8_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, int a4, int a5, int8x16_t a6, double a7, int8x16_t a8, double a9, uint16x8_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14)
{
  v14 = a14;
  v15 = *result;
  v16 = *a3;
  v17 = *a2;
  if (a14 >= 4)
  {
    v18 = 16 * a5;
    a6.i64[1] = 0xF0F0F0F0B0B0B0BLL;
    v19 = vdupq_n_s16(0xFE01u);
    do
    {
      v20 = vqtbl1q_s8(*v15, xmmword_18439C790);
      v21 = vqtbl1q_s8(*v17, xmmword_18439C790);
      v22 = vminq_u16(vmull_u8(*v15->i8, *v21.i8), v19);
      v23 = vminq_u16(vmull_high_u8(*v15, v21), v19);
      v24 = vmull_high_u8(v20, *v17);
      v25 = vminq_u16(vmull_u8(*v20.i8, *v17->i8), v19);
      v26 = vminq_u16(v24, v19);
      a10 = vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v25, v25, 8uLL), 8uLL), vrsraq_n_u16(v26, v26, 8uLL), 8uLL);
      a8 = vqaddq_u8(vqsubq_u8(*v15, vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v22, v22, 8uLL), 8uLL), vrsraq_n_u16(v23, v23, 8uLL), 8uLL)), a10);
      *v17 = a8;
      v14 -= 4;
      v17 = (v17 + v18);
      v15 = (v15 + v18);
    }

    while (v14 > 3);
  }

  v27 = v14 + a13;
  if (v27)
  {
    a6.i64[0] = -4244438269;
    v28 = vdupq_n_s16(0xFE01u);
    do
    {
      a8.i32[0] = v15->i32[0];
      v29 = vmovl_u8(*a8.i8).u64[0];
      LOBYTE(v30) = v29.i8[0];
      BYTE1(v30) = v29.i8[2];
      BYTE2(v30) = v29.i8[4];
      HIBYTE(v30) = v29.i8[6];
      a10.i32[0] = v17->i32[0];
      v31 = vmovl_u8(*a10.i8).u64[0];
      LOBYTE(v32) = v31.i8[0];
      BYTE1(v32) = v31.i8[2];
      BYTE2(v32) = v31.i8[4];
      HIBYTE(v32) = v31.i8[6];
      a10 = vminq_u16(vmull_u8(v30, vqtbl1_s8(vdupq_lane_s8(v31, 6), -4244438269)), v28);
      *a10.i8 = vqrshrn_n_u16(vrsraq_n_u16(a10, a10, 8uLL), 8uLL);
      v33 = vminq_u16(vmull_u8(vqtbl1_s8(vdupq_lane_s8(v29, 6), -4244438269), v32), v28);
      a8 = vrsraq_n_u16(v33, v33, 8uLL);
      *a8.i8 = vqadd_u8(vqsub_u8(v30, *a10.i8), vqrshrn_n_u16(a8, 8uLL));
      *a8.i8 = vmovn_s16(vzip1q_s8(a8, a6));
      v17->i32[0] = a8.i32[0];
      v34 = &v15->i8[4 * a5];
      if (v34 >= v16)
      {
        v35 = -a4;
      }

      else
      {
        v35 = 0;
      }

      v15 = &v34[4 * v35];
      v17 = (v17 + 4 * a5);
      --v27;
    }

    while (v27);
  }

  *result = v15;
  *a3 = v16;
  *a2 = v17;
  return result;
}

int8x16_t **vec::template_mark_pixelshape_row<(CGCompositeOperation)8,_rgba8_t>(int8x16_t **result, uint8x8_t **a2, unint64_t *a3, int a4, int a5, int8x16_t a6, double a7, __n128 a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  v12 = a12;
  v13 = *result;
  v14 = *a3;
  v15 = *a2;
  if (a12 >= 4)
  {
    v16 = 16 * a5;
    a6.i64[1] = 0xF0F0F0F0B0B0B0BLL;
    v17 = vdupq_n_s16(0xFE01u);
    do
    {
      v18 = vqtbl1q_s8(*v13, xmmword_18439C790);
      v19 = vminq_u16(vmull_u8(*v15, *v18.i8), v17);
      v20 = vminq_u16(vmull_high_u8(*v15->i8, v18), v17);
      a8 = vqsubq_u8(*v15->i8, vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v19, v19, 8uLL), 8uLL), vrsraq_n_u16(v20, v20, 8uLL), 8uLL));
      *v15->i8 = a8;
      v12 -= 4;
      v15 = (v15 + v16);
      v13 = (v13 + v16);
    }

    while (v12 > 3);
  }

  v21 = v12 + a11;
  if (v21)
  {
    a6.i64[0] = -4244438269;
    v22 = vdupq_n_s16(0xFE01u);
    do
    {
      a8.n128_u32[0] = v15->i32[0];
      v23 = vmovl_u8(a8.n128_u64[0]);
      LOBYTE(v24) = v23.i8[0];
      BYTE1(v24) = v23.i8[2];
      BYTE2(v24) = v23.i8[4];
      HIBYTE(v24) = v23.i8[6];
      v23.i32[0] = v13->i32[0];
      v23.i64[1] = v23.i64[0];
      v25 = vminq_u16(vmull_u8(v24, vqtbl1_s8(v23, -4244438269)), v22);
      a8 = vrsraq_n_u16(v25, v25, 8uLL);
      a8.n128_u64[0] = vqsub_u8(v24, vqrshrn_n_u16(a8, 8uLL));
      a8.n128_u64[0] = vmovn_s16(vzip1q_s8(a8, a6));
      v15->i32[0] = a8.n128_u32[0];
      v26 = &v13->i8[4 * a5];
      if (v26 >= v14)
      {
        v27 = -a4;
      }

      else
      {
        v27 = 0;
      }

      v13 = &v26[4 * v27];
      v15 = (v15 + 4 * a5);
      --v21;
    }

    while (v21);
  }

  *result = v13;
  *a3 = v14;
  *a2 = v15;
  return result;
}

int8x16_t **vec::template_mark_pixelshape_row<(CGCompositeOperation)6,_rgba8_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, int a4, int a5, int a6, int8x16_t a7, double a8, double a9, int8x16_t a10, uint64_t a11, uint64_t a12, unint64_t a13)
{
  v13 = a13;
  v14 = *result;
  v15 = *a3;
  v16 = *a2;
  if (a13 >= 4)
  {
    if (a6)
    {
      v17 = 0;
    }

    else
    {
      v17 = -1;
    }

    v18.i64[0] = 0xFF000000FF000000;
    v18.i64[1] = 0xFF000000FF000000;
    a7 = vandq_s8(vdupq_n_s8(v17), v18);
    v19 = 16 * a5;
    v20 = vdupq_n_s16(0xFE01u);
    do
    {
      v21 = vorrq_s8(*v14, a7);
      v22 = vqtbl1q_s8(*v16, xmmword_18439C790);
      v23 = vbicq_s8(*v16, vceqzq_s8(v22));
      v24 = vmvnq_s8(v22);
      v25 = vmull_u8(*v21.i8, *v24.i8);
      v26 = vmull_high_u8(v21, v24);
      v27 = vminq_u16(v25, v20);
      v28 = vminq_u16(v26, v20);
      a10 = vqaddq_u8(v23, vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v27, v27, 8uLL), 8uLL), vrsraq_n_u16(v28, v28, 8uLL), 8uLL));
      *v16 = a10;
      v13 -= 4;
      v16 = (v16 + v19);
      v14 = (v14 + v19);
    }

    while (v13 > 3);
  }

  v29 = v13 + a12;
  if (v29)
  {
    if (a6)
    {
      v30 = 0;
    }

    else
    {
      v30 = -1;
    }

    *a7.i8 = vand_s8(vdup_n_s8(v30), 0xFF000000FF000000);
    v31 = vdupq_n_s16(0xFE01u);
    do
    {
      a10.i32[0] = v14->i32[0];
      v32 = vmovl_u8(*a10.i8);
      LOBYTE(v33) = v32.i8[0];
      BYTE1(v33) = v32.i8[2];
      BYTE2(v33) = v32.i8[4];
      HIBYTE(v33) = v32.i8[6];
      v32.i32[0] = v16->i32[0];
      v32.i64[0] = vmovl_u8(*v32.i8).u64[0];
      LOBYTE(v34) = v32.i8[0];
      BYTE1(v34) = v32.i8[2];
      BYTE2(v34) = v32.i8[4];
      HIBYTE(v34) = v32.i8[6];
      *v32.i8 = vqtbl1_s8(vdupq_lane_s8(*v32.i8, 6), -4244438269);
      v35 = vbic_s8(v34, vceqz_s8(*v32.i8));
      v36 = vminq_u16(vmull_u8(vorr_s8(v33, *a7.i8), vmvn_s8(*v32.i8)), v31);
      a10 = vrsraq_n_u16(v36, v36, 8uLL);
      *a10.i8 = vqadd_u8(v35, vqrshrn_n_u16(a10, 8uLL));
      *a10.i8 = vmovn_s16(vzip1q_s8(a10, a7));
      v16->i32[0] = a10.i32[0];
      v37 = &v14->i8[4 * a5];
      if (v37 >= v15)
      {
        v38 = -a4;
      }

      else
      {
        v38 = 0;
      }

      v14 = &v37[4 * v38];
      v16 = (v16 + 4 * a5);
      --v29;
    }

    while (v29);
  }

  *result = v14;
  *a3 = v15;
  *a2 = v16;
  return result;
}

int8x16_t **vec::template_mark_pixelshape_row<(CGCompositeOperation)5,_rgba8_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, int a4, int a5, int8x16_t a6, double a7, int8x16_t a8, double a9, uint8x16_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14)
{
  v14 = a14;
  v15 = *result;
  v16 = *a3;
  v17 = *a2;
  if (a14 >= 4)
  {
    v18 = 16 * a5;
    a6.i64[1] = 0xF0F0F0F0B0B0B0BLL;
    v19 = vdupq_n_s16(0xFE01u);
    do
    {
      v20 = vqtbl1q_s8(*v15, xmmword_18439C790);
      v21 = vqtbl1q_s8(*v17, xmmword_18439C790);
      v22 = vminq_u16(vmull_u8(*v17->i8, *v20.i8), v19);
      v23 = vminq_u16(vmull_high_u8(*v17, v20), v19);
      v24 = vqsubq_u8(*v17, vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v22, v22, 8uLL), 8uLL), vrsraq_n_u16(v23, v23, 8uLL), 8uLL));
      v25 = vminq_u16(vmull_u8(*v21.i8, *v15->i8), v19);
      v26 = vminq_u16(vmull_high_u8(v21, *v15), v19);
      a10 = vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v25, v25, 8uLL), 8uLL), vrsraq_n_u16(v26, v26, 8uLL), 8uLL);
      a8 = vqaddq_u8(v24, a10);
      *v17 = a8;
      v14 -= 4;
      v17 = (v17 + v18);
      v15 = (v15 + v18);
    }

    while (v14 > 3);
  }

  v27 = v14 + a13;
  if (v27)
  {
    a6.i64[0] = -4244438269;
    v28 = vdupq_n_s16(0xFE01u);
    do
    {
      a8.i32[0] = v15->i32[0];
      v29 = vmovl_u8(*a8.i8).u64[0];
      LOBYTE(v30) = v29.i8[0];
      BYTE1(v30) = v29.i8[2];
      BYTE2(v30) = v29.i8[4];
      HIBYTE(v30) = v29.i8[6];
      a10.i32[0] = v17->i32[0];
      v31 = vmovl_u8(*a10.i8).u64[0];
      LOBYTE(v32) = v31.i8[0];
      BYTE1(v32) = v31.i8[2];
      BYTE2(v32) = v31.i8[4];
      HIBYTE(v32) = v31.i8[6];
      *a10.i8 = vqtbl1_s8(vdupq_lane_s8(v31, 6), -4244438269);
      v33 = vminq_u16(vmull_u8(v32, vqtbl1_s8(vdupq_lane_s8(v29, 6), -4244438269)), v28);
      a8 = vrsraq_n_u16(v33, v33, 8uLL);
      v34 = vminq_u16(vmull_u8(*a10.i8, v30), v28);
      *a8.i8 = vqadd_u8(vqsub_u8(v32, vqrshrn_n_u16(a8, 8uLL)), vqrshrn_n_u16(vrsraq_n_u16(v34, v34, 8uLL), 8uLL));
      *a8.i8 = vmovn_s16(vzip1q_s8(a8, a6));
      v17->i32[0] = a8.i32[0];
      v35 = &v15->i8[4 * a5];
      if (v35 >= v16)
      {
        v36 = -a4;
      }

      else
      {
        v36 = 0;
      }

      v15 = &v35[4 * v36];
      v17 = (v17 + 4 * a5);
      --v27;
    }

    while (v27);
  }

  *result = v15;
  *a3 = v16;
  *a2 = v17;
  return result;
}

int8x16_t **vec::template_mark_pixelshape_row<(CGCompositeOperation)4,_rgba8_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, int a4, int a5, int a6, int8x16_t a7, double a8, double a9, int8x16_t a10, uint64_t a11, uint64_t a12, unint64_t a13)
{
  v13 = a13;
  v14 = *result;
  v15 = *a3;
  v16 = *a2;
  if (a13 >= 4)
  {
    if (a6)
    {
      v17 = 0;
    }

    else
    {
      v17 = -1;
    }

    v18.i64[0] = 0xFF000000FF000000;
    v18.i64[1] = 0xFF000000FF000000;
    a7 = vandq_s8(vdupq_n_s8(v17), v18);
    v19 = 16 * a5;
    v20 = vdupq_n_s16(0xFE01u);
    do
    {
      v21 = vorrq_s8(*v14, a7);
      v22 = vqtbl1q_s8(*v16, xmmword_18439C790);
      v23 = vminq_u16(vmull_u8(*v21.i8, *v22.i8), v20);
      v24 = vminq_u16(vmull_high_u8(v21, v22), v20);
      a10 = vqsubq_u8(v21, vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v23, v23, 8uLL), 8uLL), vrsraq_n_u16(v24, v24, 8uLL), 8uLL));
      *v16 = a10;
      v13 -= 4;
      v16 = (v16 + v19);
      v14 = (v14 + v19);
    }

    while (v13 > 3);
  }

  v25 = v13 + a12;
  if (v25)
  {
    if (a6)
    {
      v26 = 0;
    }

    else
    {
      v26 = -1;
    }

    *a7.i8 = vand_s8(vdup_n_s8(v26), 0xFF000000FF000000);
    v27 = vdupq_n_s16(0xFE01u);
    do
    {
      a10.i32[0] = v14->i32[0];
      a10 = vmovl_u8(*a10.i8);
      v28.i32[1] = 0;
      LOBYTE(v29) = a10.i8[0];
      BYTE1(v29) = a10.i8[2];
      BYTE2(v29) = a10.i8[4];
      HIBYTE(v29) = a10.i8[6];
      *a10.i8 = vorr_s8(v29, *a7.i8);
      v28.i32[0] = v16->i32[0];
      v28.i64[1] = v16->u32[0];
      v30 = vminq_u16(vmull_u8(*a10.i8, vqtbl1_s8(v28, -4244438269)), v27);
      *a10.i8 = vqsub_u8(*a10.i8, vqrshrn_n_u16(vrsraq_n_u16(v30, v30, 8uLL), 8uLL));
      *a10.i8 = vmovn_s16(vzip1q_s8(a10, a7));
      v16->i32[0] = a10.i32[0];
      v31 = &v14->i8[4 * a5];
      if (v31 >= v15)
      {
        v32 = -a4;
      }

      else
      {
        v32 = 0;
      }

      v14 = &v31[4 * v32];
      v16 = (v16 + 4 * a5);
      --v25;
    }

    while (v25);
  }

  *result = v14;
  *a3 = v15;
  *a2 = v16;
  return result;
}

int8x16_t **vec::template_mark_pixelshape_row<(CGCompositeOperation)3,_rgba8_t>(int8x16_t **result, int8x16_t **a2, unint64_t *a3, int a4, int a5, int a6, int8x16_t a7, double a8, double a9, uint16x8_t a10, uint64_t a11, uint64_t a12, unint64_t a13)
{
  v13 = a13;
  v14 = *result;
  v15 = *a3;
  v16 = *a2;
  if (a13 >= 4)
  {
    if (a6)
    {
      v17 = 0;
    }

    else
    {
      v17 = -1;
    }

    v18.i64[0] = 0xFF000000FF000000;
    v18.i64[1] = 0xFF000000FF000000;
    a7 = vandq_s8(vdupq_n_s8(v17), v18);
    v19 = 16 * a5;
    v20 = vdupq_n_s16(0xFE01u);
    do
    {
      v21 = vorrq_s8(*v14, a7);
      v22 = vqtbl1q_s8(*v16, xmmword_18439C790);
      v23 = vmull_u8(*v21.i8, *v22.i8);
      v24 = vmull_high_u8(v21, v22);
      v25 = vminq_u16(v23, v20);
      v26 = vminq_u16(v24, v20);
      a10 = vrsraq_n_u16(v26, v26, 8uLL);
      *v16 = vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v25, v25, 8uLL), 8uLL), a10, 8uLL);
      v13 -= 4;
      v16 = (v16 + v19);
      v14 = (v14 + v19);
    }

    while (v13 > 3);
  }

  v27 = v13 + a12;
  if (v27)
  {
    if (a6)
    {
      v28 = 0;
    }

    else
    {
      v28 = -1;
    }

    *a7.i8 = vand_s8(vdup_n_s8(v28), 0xFF000000FF000000);
    v29 = vdupq_n_s16(0xFE01u);
    do
    {
      a10.i32[0] = v14->i32[0];
      v30 = vmovl_u8(*a10.i8);
      v31.i32[1] = 0;
      LOBYTE(v32) = v30.i8[0];
      BYTE1(v32) = v30.i8[2];
      BYTE2(v32) = v30.i8[4];
      HIBYTE(v32) = v30.i8[6];
      *v30.i8 = vorr_s8(v32, *a7.i8);
      v31.i32[0] = v16->i32[0];
      v31.i64[1] = v16->u32[0];
      v33 = vminq_u16(vmull_u8(*v30.i8, vqtbl1_s8(v31, -4244438269)), v29);
      a10 = vrsraq_n_u16(v33, v33, 8uLL);
      *a10.i8 = vqrshrn_n_u16(a10, 8uLL);
      *a10.i8 = vmovn_s16(vzip1q_s8(a10, a7));
      v16->i32[0] = a10.i32[0];
      v34 = &v14->i8[4 * a5];
      if (v34 >= v15)
      {
        v35 = -a4;
      }

      else
      {
        v35 = 0;
      }

      v14 = &v34[4 * v35];
      v16 = (v16 + 4 * a5);
      --v27;
    }

    while (v27);
  }

  *result = v14;
  *a3 = v15;
  *a2 = v16;
  return result;
}

int8x16_t **vec::template_mark_pixelshape_row<(CGCompositeOperation)2,_rgba8_t>(int8x16_t **result, uint8x8_t **a2, unint64_t *a3, int a4, int a5, int8x16_t a6, double a7, __n128 a8, double a9, uint16x8_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14)
{
  v14 = a14;
  v15 = *result;
  v16 = *a3;
  v17 = *a2;
  if (a14 >= 4)
  {
    v18 = 16 * a5;
    a6.i64[1] = 0xF0F0F0F0B0B0B0BLL;
    v19 = vdupq_n_s16(0xFE01u);
    do
    {
      v20 = vqtbl1q_s8(*v15, xmmword_18439C790);
      v21 = vbicq_s8(*v15, vceqzq_s8(v20));
      v22 = vminq_u16(vmull_u8(*v17, *v20.i8), v19);
      v23 = vminq_u16(vmull_high_u8(*v17->i8, v20), v19);
      a10 = vrsraq_n_u16(v23, v23, 8uLL);
      a8 = vqaddq_u8(v21, vqsubq_u8(*v17->i8, vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v22, v22, 8uLL), 8uLL), a10, 8uLL)));
      *v17->i8 = a8;
      v14 -= 4;
      v17 = (v17 + v18);
      v15 = (v15 + v18);
    }

    while (v14 > 3);
  }

  v24 = v14 + a13;
  if (v24)
  {
    a6.i64[0] = -4244438269;
    v25 = vdupq_n_s16(0xFE01u);
    do
    {
      a8.n128_u32[0] = v15->i32[0];
      v26 = vmovl_u8(a8.n128_u64[0]).u64[0];
      LOBYTE(v27) = v26.i8[0];
      BYTE1(v27) = v26.i8[2];
      BYTE2(v27) = v26.i8[4];
      HIBYTE(v27) = v26.i8[6];
      a10.i32[0] = v17->i32[0];
      a10 = vmovl_u8(*a10.i8);
      LOBYTE(v28) = a10.i8[0];
      BYTE1(v28) = a10.i8[2];
      BYTE2(v28) = a10.i8[4];
      HIBYTE(v28) = a10.i8[6];
      v29 = vqtbl1_s8(vdupq_lane_s8(v26, 6), -4244438269);
      *a10.i8 = vceqz_s8(v29);
      v30 = vminq_u16(vmull_u8(v28, v29), v25);
      a8 = vrsraq_n_u16(v30, v30, 8uLL);
      a8.n128_u64[0] = vqadd_u8(vbic_s8(v27, *a10.i8), vqsub_u8(v28, vqrshrn_n_u16(a8, 8uLL)));
      a8.n128_u64[0] = vmovn_s16(vzip1q_s8(a8, a6));
      v17->i32[0] = a8.n128_u32[0];
      v31 = &v15->i8[4 * a5];
      if (v31 >= v16)
      {
        v32 = -a4;
      }

      else
      {
        v32 = 0;
      }

      v15 = &v31[4 * v32];
      v17 = (v17 + 4 * a5);
      --v24;
    }

    while (v24);
  }

  *result = v15;
  *a3 = v16;
  *a2 = v17;
  return result;
}

char **vec::template_mark_pixelshape_row<(CGCompositeOperation)1,_rgba8_t>(char **result, _OWORD **a2, unint64_t *a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  v9 = a9;
  v10 = *result;
  v11 = *a3;
  v12 = *a2;
  if (a9 >= 4)
  {
    v13 = 16 * a5;
    do
    {
      *v12 = *v10;
      v9 -= 4;
      v12 = (v12 + v13);
      v10 += v13;
    }

    while (v9 > 3);
  }

  for (i = v9 + a8; i; --i)
  {
    *v12 = *v10;
    v15 = &v10[4 * a5];
    if (v15 >= v11)
    {
      v16 = -a4;
    }

    else
    {
      v16 = 0;
    }

    v10 = &v15[4 * v16];
    v12 = (v12 + 4 * a5);
  }

  *result = v10;
  *a3 = v11;
  *a2 = v12;
  return result;
}

uint64_t *vec::template_mark_pixelshape_row<(CGCompositeOperation)0,_rgba8_t>(uint64_t *result, _OWORD **a2, unint64_t *a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  v9 = a9;
  v10 = *result;
  v11 = *a3;
  v12 = *a2;
  if (a9 >= 4)
  {
    v13 = 16 * a5;
    do
    {
      *v12 = 0uLL;
      v9 -= 4;
      v12 = (v12 + v13);
      v10 += v13;
    }

    while (v9 > 3);
  }

  for (i = v9 + a8; i; --i)
  {
    *v12 = 0;
    v15 = v10 + 4 * a5;
    if (v15 >= v11)
    {
      v16 = -a4;
    }

    else
    {
      v16 = 0;
    }

    v10 = v15 + 4 * v16;
    v12 = (v12 + 4 * a5);
  }

  *result = v10;
  *a3 = v11;
  *a2 = v12;
  return result;
}

void *CGBitmapContextCreateWithAlpha(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, CGColorSpaceRef space, uint64_t a8, double a9, double a10, uint64_t a11)
{
  if (a4 <= 7)
  {
    _CGHandleAssert("CGBitmapContextCreateWithAlpha", 301, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/API/CGBitmapContext.c", "bits_per_component >= 8", "bpc: %zu", a4, space, a8, a4);
  }

  v11 = 8;
  if ((a8 & 0xF0000) != 0x40000)
  {
    v11 = a4;
  }

  result = CGBitmapContextInfoCreate(a1, 0, 0, a2, a3, a4, a5, a6, a9, a10, space, a8, v11, 0, 0);
  if (result)
  {

    return bitmap_context_create(result, a11, "CGBitmapContextCreateWithAlpha", v13, v14, v15, v16, v17);
  }

  return result;
}

void *CGBitmapContextCreateWithPlanarAlpha(uint64_t a1, unint64_t a2, uint64_t a3, int a4, uint64_t a5, CGColorSpaceRef space, int a7)
{
  if ((a4 - 1) > 5)
  {
    v7 = 0;
    if (space)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    return CGBitmapContextCreateWithAlpha(a1, a2, a3, v7, v8 * v7 + 2 * (a4 == 6), a5, space, a7 | (((a4 & 0xFFFFFFFE) == 4) << 8), 72.0, 72.0, 0);
  }

  v7 = qword_18446E430[a4 - 1];
  if (!space)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = *(*(space + 3) + 48);
  return CGBitmapContextCreateWithAlpha(a1, a2, a3, v7, v8 * v7 + 2 * (a4 == 6), a5, space, a7 | (((a4 & 0xFFFFFFFE) == 4) << 8), 72.0, 72.0, 0);
}

CGContextRef CGBitmapContextCreateWithShareableMappedData(size_t a1, size_t a2, CGColorSpaceRef a3, size_t *a4)
{
  IsWideGamutRGB = CGColorSpaceIsWideGamutRGB(a3);
  v9 = CGColorSpaceUsesExtendedRange(a3);
  if (a3)
  {
    v10 = *(*(a3 + 3) + 48);
  }

  else
  {
    v10 = 0;
  }

  Model = CGColorSpaceGetModel(a3);
  v12 = !IsWideGamutRGB;
  if (IsWideGamutRGB)
  {
    v13 = 16;
  }

  else
  {
    v13 = 8;
  }

  v14 = 3;
  if (!v12)
  {
    v14 = 4;
  }

  if (v9)
  {
    v15 = 4352;
  }

  else
  {
    v15 = 0;
  }

  if (Model == kCGColorSpaceModelCMYK)
  {
    v16 = v10;
  }

  else
  {
    v16 = v10 + 1;
  }

  v17 = ((((v16 << v14) * a1) >> 3) + 31) & 0x3FFFFFFFFFFFFFE0;
  if (Model == kCGColorSpaceModelCMYK)
  {
    v18 = v15;
  }

  else
  {
    v18 = v15 + 1;
  }

  v19 = (*MEMORY[0x1E69E9AC8] + v17 * a2 - 1) & -*MEMORY[0x1E69E9AC8];
  *a4 = v19;
  v20 = mmap(0, v19, 3, 4097, 872415232, 0);
  return CGBitmapContextCreateWithData(v20, a1, a2, v13, v17, a3, v18, 0, 0);
}

uint64_t CGBitmapContextDelegateCreateWithDictionary(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CGColorSpaceRef space, int a8, double a9, double a10, uint64_t a11)
{
  result = CGBitmapContextInfoCreate(a1, 0, 0, a2, a3, a4, a5, a6, a9, a10, space, a8, 0, 0, 0);
  if (result)
  {
    v12 = result;
    v13 = bitmap_context_delegate_create(result, a11);
    CGBitmapContextInfoRelease(v12);
    return v13;
  }

  return result;
}

CGBitmapInfo CGBitmapContextGetBitmapInfo(CGContextRef context)
{
  if (context && *(context + 4) == 1129601108 && *(context + 6) == 4)
  {
    return *(*(context + 4) + 40);
  }

  handle_invalid_context("CGBitmapContextGetBitmapInfo", context, v1, v2, v3, v4, v5, v6);
  return 0;
}

size_t CGBitmapContextGetBitsPerComponent(CGContextRef context)
{
  if (context && *(context + 4) == 1129601108 && *(context + 6) == 4)
  {
    return *(*(context + 4) + 80);
  }

  handle_invalid_context("CGBitmapContextGetBitsPerComponent", context, v1, v2, v3, v4, v5, v6);
  return 0;
}

void *__cdecl CGBitmapContextGetData(CGContextRef context)
{
  if (context && *(context + 4) == 1129601108 && *(context + 6) == 4)
  {
    return *(*(context + 4) + 64);
  }

  handle_invalid_context("CGBitmapContextGetData", context, v1, v2, v3, v4, v5, v6);
  return 0;
}

size_t CGBitmapContextGetWidth(CGContextRef context)
{
  if (context && *(context + 4) == 1129601108 && *(context + 6) == 4)
  {
    return *(*(context + 4) + 8);
  }

  handle_invalid_context("CGBitmapContextGetWidth", context, v1, v2, v3, v4, v5, v6);
  return 0;
}

size_t CGBitmapContextGetBitsPerPixel(CGContextRef context)
{
  if (context && *(context + 4) == 1129601108 && *(context + 6) == 4)
  {
    return *(*(context + 4) + 72);
  }

  handle_invalid_context("CGBitmapContextGetBitsPerPixel", context, v1, v2, v3, v4, v5, v6);
  return 0;
}

size_t CGBitmapContextGetBytesPerRow(CGContextRef context)
{
  if (context && *(context + 4) == 1129601108 && *(context + 6) == 4)
  {
    return *(*(context + 4) + 88);
  }

  handle_invalid_context("CGBitmapContextGetBytesPerRow", context, v1, v2, v3, v4, v5, v6);
  return 0;
}

CGColorSpaceRef CGBitmapContextGetColorSpace(CGContextRef context)
{
  if (context && *(context + 4) == 1129601108 && *(context + 6) == 4)
  {
    return *(*(context + 4) + 32);
  }

  handle_invalid_context("CGBitmapContextGetColorSpace", context, v1, v2, v3, v4, v5, v6);
  return 0;
}

CGImageAlphaInfo CGBitmapContextGetAlphaInfo(CGContextRef context)
{
  if (context && *(context + 4) == 1129601108 && *(context + 6) == 4)
  {
    return *(*(context + 4) + 40) & 0x1F;
  }

  handle_invalid_context("CGBitmapContextGetAlphaInfo", context, v1, v2, v3, v4, v5, v6);
  return 0;
}

uint64_t CGBitmapContextGetAlphaData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108 && *(a1 + 24) == 4)
  {
    return *(*(a1 + 32) + 120);
  }

  handle_invalid_context("CGBitmapContextGetAlphaData", a1, a3, a4, a5, a6, a7, a8);
  return 0;
}

uint64_t CGBitmapContextGetAlphaBytesPerRow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108 && *(a1 + 24) == 4)
  {
    return *(*(a1 + 32) + 136);
  }

  handle_invalid_context("CGBitmapContextGetAlphaBytesPerRow", a1, a3, a4, a5, a6, a7, a8);
  return 0;
}

__CFData *CGBitmapContextCopyData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108 && *(a1 + 24) == 4)
  {
    v8 = *(a1 + 32);
    v9 = *(v8 + 16);
    v10 = *(v8 + 88);
    Mutable = CFDataCreateMutable(0, 0);
    v12 = Mutable;
    if (Mutable)
    {
      CFDataAppendBytes(Mutable, *(v8 + 64), v10 * v9);
      v13 = *(v8 + 120);
      if (v13)
      {
        CFDataAppendBytes(v12, v13, *(v8 + 136) * *(v8 + 16));
      }
    }
  }

  else
  {
    handle_invalid_context("CGBitmapContextCopyData", a1, a3, a4, a5, a6, a7, a8);
    return 0;
  }

  return v12;
}

void *CGBitmapContextCreateForFlatteningImage(uint64_t a1, CGColorSpace **a2, const __CFDictionary *a3)
{
  if (!a1)
  {
    return 0;
  }

  v6 = CFGetTypeID(a1);
  if (kCGDefaultHDRImageContentHeadroom_block_invoke_once != -1)
  {
    dispatch_once(&kCGDefaultHDRImageContentHeadroom_block_invoke_once, &__block_literal_global_281);
  }

  if (v6 != CGImageGetTypeID_image_type_id)
  {
    return 0;
  }

  ColorSpace = CGImageGetColorSpace(a1);
  v8 = *(a1 + 36);
  if (CGColorSpaceSupportsOutput(ColorSpace) && CGColorSpaceGetModel(ColorSpace) != kCGColorSpaceModelLab)
  {
    goto LABEL_19;
  }

  while (1)
  {
    Type = CGColorSpaceGetType(ColorSpace);
    if (Type != 7)
    {
      break;
    }

    ColorSpace = CGColorSpaceGetBaseColorSpace(ColorSpace);
  }

  if (Type == 8)
  {
    ColorSpace = CGColorSpaceGetAlternateColorSpace(ColorSpace);
  }

  if (CGColorSpaceSupportsOutput(ColorSpace) && CGColorSpaceGetModel(ColorSpace) != kCGColorSpaceModelLab)
  {
LABEL_19:
    if (ColorSpace)
    {
      v12 = ColorSpace;
      CFRetain(ColorSpace);
      ColorSpace = 0;
      goto LABEL_28;
    }

    goto LABEL_21;
  }

  if (ColorSpace)
  {
    v10 = *(*(ColorSpace + 3) + 48);
    switch(v10)
    {
      case 1:
        v11 = @"kCGColorSpaceGenericGrayGamma2_2";
        break;
      case 4:
        v11 = @"kCGColorSpaceGenericCMYK";
        break;
      case 3:
        v11 = @"kCGColorSpaceSRGB";
        break;
      default:
        goto LABEL_21;
    }

    v12 = CGColorSpaceCreateWithName(v11);
    if (v12)
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

LABEL_21:
  v12 = 0;
LABEL_25:
  if ((v8 & 0x2000000) == 0)
  {
    return 0;
  }

LABEL_28:
  AlphaInfo = CGImageGetAlphaInfo(a1);
  ByteOrderInfo = CGImageGetByteOrderInfo(a1);
  v15 = *(a1 + 36);
  v16 = CGImageGetBitmapInfo(a1) & 0xF00;
  v17 = *(a1 + 40);
  v47 = 0;
  if (CGCFDictionaryGetInteger(a3, @"kCGImageWidth", &v47))
  {
    v17 = v47;
  }

  v18 = *(a1 + 48);
  v48 = 0;
  if (CGCFDictionaryGetInteger(a3, @"kCGImageHeight", &v48))
  {
    v18 = v48;
  }

  UpscaledComponentType = CGImageGetUpscaledComponentType(a1);
  BitsPerComponent = CGPixelComponentGetBitsPerComponent(UpscaledComponentType, v20, v21, v22, v23, v24, v25, v26);
  if (!v12)
  {
    goto LABEL_38;
  }

  v31 = BitsPerComponent;
  v32 = 0;
  v28 = 0;
  v33 = v15 & 0xC000000;
  v34 = *(*(v12 + 3) + 48);
  if (v34 > 2)
  {
    if (v34 != 3)
    {
      if (v34 == 4)
      {
        v28 = 4 * v17 * (BitsPerComponent >> 3);
        if (v33)
        {
          v35 = 4 * BitsPerComponent;
          goto LABEL_50;
        }

        goto LABEL_54;
      }

LABEL_40:
      v36 = ByteOrderInfo;
LABEL_41:
      v37 = CGBitmapContextCreateWithData(0, v17, v18, v31, v28, v12, v36 | v32 | v16, 0, 0);
      goto LABEL_42;
    }

    v28 = 4 * v17 * (BitsPerComponent >> 3);
    if (v33)
    {
      v38 = ByteOrderInfo;
      if ((*(a1 + 39) & 4) == 0)
      {
        goto LABEL_53;
      }

      if (AlphaInfo == kCGImageAlphaFirst)
      {
        v32 = 2;
        goto LABEL_56;
      }

      if (AlphaInfo == kCGImageAlphaLast || (v32 = AlphaInfo) == 0)
      {
LABEL_53:
        v32 = 1;
      }
    }

    else
    {
      v32 = 5;
      v38 = ByteOrderInfo;
    }

LABEL_56:
    HIDWORD(v40) = v38 - 4096;
    LODWORD(v40) = v38 - 4096;
    v39 = v40 >> 12;
    if (v39 - 2 > 1)
    {
      v41 = 0;
    }

    else
    {
      v41 = 0x4000;
    }

    if (v39 >= 2)
    {
      v42 = v41;
    }

    else
    {
      v42 = 0x2000;
    }

    if (BitsPerComponent == 16)
    {
      v43 = 4096;
    }

    else
    {
      v43 = v38;
    }

    if (BitsPerComponent == 32)
    {
      v31 = 32;
      v36 = v42;
    }

    else
    {
      v36 = v43;
    }

    goto LABEL_41;
  }

  if (!v34)
  {
LABEL_38:
    if ((v8 & 0x2000000) == 0)
    {
      _CGHandleAssert("CGBitmapContextCreateForFlatteningImage", 826, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/API/CGBitmapContext.c", "create_alpha_only == true", "", v28, v29, v30, releaseInfo);
    }

    v28 = 0;
    v32 = 7;
    v31 = 8;
    goto LABEL_40;
  }

  if (v34 != 1)
  {
    goto LABEL_40;
  }

  v28 = (BitsPerComponent >> 3) * v17;
  if (!v33)
  {
LABEL_54:
    v32 = 0;
    goto LABEL_40;
  }

  v35 = BitsPerComponent;
LABEL_50:
  v37 = CGBitmapContextCreateWithAlpha(0, v17, v18, BitsPerComponent, v35, v28, v12, v16 | ByteOrderInfo, 72.0, 72.0, a3);
LABEL_42:
  v13 = v37;
  if (a2 && ColorSpace)
  {
    *a2 = ColorSpace;
  }

  CGColorSpaceRelease(v12);
  return v13;
}