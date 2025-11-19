void sub_183F31908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15, void **a16, void **a17, void **a18, void **a19, void **a20, void **a21, void **a22, void **a23, void **a24)
{
  std::__hash_table<std::shared_ptr<CG::DisplayListResourceDisplayList>,CG::HashResourceDisplayList,CG::EqualsResourceDisplayList,std::allocator<std::shared_ptr<CG::DisplayListResourceDisplayList>>>::~__hash_table(*(v25 - 120));
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*a15);
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*a16);
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*a17);
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*a18);
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*a19);
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*a20);
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*a21);
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*a22);
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*a23);
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*a24);
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*a9);
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*a10);
  v27 = *(v24 + 128);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v27);
  }

  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef((v24 + 32));
  _Unwind_Resume(a1);
}

CFTypeRef CG::DisplayListResourcePattern::setPattern(CG::DisplayListResourcePattern *this, CFTypeRef cf)
{
  result = *(this + 2);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
    }

    result = CFRetain(cf);
    *(this + 2) = result;
  }

  return result;
}

void sub_183F31B74(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

unsigned int *CG::DisplayListEntryDisplayList::_hash(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 80);
  if (v4 && (v5 = *(v4 + 16)) != 0)
  {
    CG::DisplayList::getHash((v5 + 16));
  }

  else
  {
    v6 = 0;
  }

  __src = v6;
  XXH64_update(a2, &__src, 8uLL);
  XXH64_update(a2, (a1 + 88), 0x30uLL);
  XXH64_update(a2, (a1 + 136), 4uLL);
  XXH64_update(a2, (a1 + 136), 4uLL);

  return CG::DisplayListEntry::_hash(a1, a2);
}

CGPoint CGContextConvertPointToDeviceSpace(CGContextRef c, CGPoint point)
{
  y = point.y;
  x = point.x;
  if (c && *(c + 4) == 1129601108)
  {
    CGContextGetUserSpaceToDeviceSpaceTransform(&v12, c);
    v8 = vaddq_f64(*&v12.tx, vmlaq_n_f64(vmulq_n_f64(*&v12.c, y), *&v12.a, x));
  }

  else
  {
    handle_invalid_context("CGContextConvertPointToDeviceSpace", c, v2, v3, v4, v5, v6, v7);
    v8.f64[0] = x;
    v8.f64[1] = y;
  }

  v9 = v8.f64[1];
  result.x = v8.f64[0];
  result.y = v9;
  return result;
}

CGAffineTransform *__cdecl CGContextGetUserSpaceToDeviceSpaceTransform(CGAffineTransform *__return_ptr retstr, CGContextRef c)
{
  memset(&v21, 0, sizeof(v21));
  if (!c)
  {
    v16 = 0;
LABEL_8:
    handle_invalid_context("CGContextGetUserSpaceToDeviceSpaceTransform", v16, v2, v3, v4, v5, v6, v7);
    *&retstr->a = *&CGAffineTransformIdentity.a;
    *&retstr->c = *&CGAffineTransformIdentity.c;
    v17 = *&CGAffineTransformIdentity.tx;
    goto LABEL_11;
  }

  if (*(c + 4) != 1129601108)
  {
    v16 = c;
    goto LABEL_8;
  }

  result = *(c + 5);
  v11 = *(c + 12);
  if (!result || (ty = result->ty, ty == 0.0))
  {
    v21 = CGAffineTransformIdentity;
    v13 = xmmword_18439C630;
    v14 = xmmword_18439C780;
    v15 = 0uLL;
  }

  else
  {
    result = (*&ty)(&v21);
    v11 = *(c + 12);
    v13 = *&v21.a;
    v14 = *&v21.c;
    v15 = *&v21.tx;
  }

  v18 = v11[7];
  v19 = v11[8];
  v20 = vmlaq_n_f64(vmulq_n_f64(v14, v11[6]), v13, v11[5]);
  *&retstr->a = vmlaq_n_f64(vmulq_n_f64(v14, v11[4]), v13, v11[3]);
  *&retstr->c = v20;
  v17 = vaddq_f64(v15, vmlaq_n_f64(vmulq_n_f64(v14, v19), v13, v18));
LABEL_11:
  *&retstr->tx = v17;
  return result;
}

CGPoint CGContextConvertPointToUserSpace(CGContextRef c, CGPoint point)
{
  y = point.y;
  x = point.x;
  memset(&v21, 0, sizeof(v21));
  if (c && *(c + 4) == 1129601108)
  {
    CGContextGetUserSpaceToDeviceSpaceTransform(&v21, c);
    v20 = v21;
    x = CGPointApplyInverseAffineTransform(&v20.a, v10, v11, v12, v13, v14, v15, v16, x, y);
    y = v17;
  }

  else
  {
    handle_invalid_context("CGContextConvertPointToUserSpace", c, v2, v3, v4, v5, v6, v7);
  }

  v18 = x;
  v19 = y;
  result.y = v19;
  result.x = v18;
  return result;
}

double CGPointApplyInverseAffineTransform(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  v11 = a9;
  v12 = a1[2];
  v13 = a1[3];
  v14 = *a1 * v13 - a1[1] * v12;
  if (v14 != 0.0)
  {
    return (v13 * (a9 - a1[4]) - v12 * (a10 - a1[5])) / v14;
  }

  CGPostError("%s: singular matrix.", a2, a3, a4, a5, a6, a7, a8, "CGPointApplyInverseAffineTransform");
  return v11;
}

void CGContextFillEllipseInRect(CGContextRef c, CGRect rect)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      height = rect.size.height;
      width = rect.size.width;
      y = rect.origin.y;
      x = rect.origin.x;
      if (rect.origin.x != INFINITY && rect.origin.y != INFINITY)
      {
        v19 = *(c + 21);
        if (v19)
        {
          CFRelease(v19);
          *(c + 21) = 0;
        }

        v21.origin.x = x;
        v21.origin.y = y;
        v21.size.width = width;
        v21.size.height = height;
        CGContextAddEllipseInRect(c, v21);

        CGContextDrawPath(c, kCGPathFill);
      }

      return;
    }

    v18 = c;
  }

  else
  {
    v18 = 0;
  }

  handle_invalid_context("CGContextFillEllipseInRect", v18, v2, v3, v4, v5, v6, v7);
}

void CG::DisplayListResourceDisplayList::~DisplayListResourceDisplayList(CG::DisplayListResourceDisplayList *this)
{
  CG::DisplayListResourceDisplayList::~DisplayListResourceDisplayList(this);

  JUMPOUT(0x1865EE610);
}

{
  *this = &unk_1EF23F730;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t std::__shared_ptr_pointer<CG::DisplayListResourceDisplayList *,std::shared_ptr<CG::DisplayListResourceDisplayList>::__shared_ptr_default_delete<CG::DisplayListResourceDisplayList,CG::DisplayListResourceDisplayList>,std::allocator<CG::DisplayListResourceDisplayList>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

CGFloat *CGClipCreateWithRect(CGAffineTransform *transform, char a2, CGFloat a3, CGFloat y, CGFloat width, CGFloat height)
{
  x = a3;
  if (!transform || transform->b == 0.0 && transform->c == 0.0 || transform->a == 0.0 && transform->d == 0.0)
  {
    v12 = malloc_type_malloc(0x38uLL, 0x1062040581A6B82uLL);
    v13 = v12;
    if (v12)
    {
      *v12 = 1;
      *(v12 + 1) = atomic_fetch_add_explicit(CGClipCreate_identifier, 1u, memory_order_relaxed) + 1;
      *(v12 + 4) = 0;
      v12[2] = 0.0;
      *(v12 + 10) = a2;
      if (transform)
      {
        v14 = *&transform->c;
        *&v23.a = *&transform->a;
        *&v23.c = v14;
        *&v23.tx = *&transform->tx;
        v15 = x;
        *&v14 = y;
        v16 = width;
        v17 = height;
        v24 = CGRectApplyAffineTransform(*(&v14 - 8), &v23);
        x = v24.origin.x;
        y = v24.origin.y;
        width = v24.size.width;
        height = v24.size.height;
      }

      v13[3] = x;
      v13[4] = y;
      v13[5] = width;
      v13[6] = height;
    }
  }

  else
  {
    v19 = CGPathCreateWithRect(*&a3, transform);
    if (v19 && ((v20 = v19, (CGPathDisableTypeValidation & 1) != 0) || (v21 = CFGetTypeID(v19), v21 == CGPathGetTypeID())))
    {
      v22 = malloc_type_malloc(0x38uLL, 0x1062040581A6B82uLL);
      v13 = v22;
      if (v22)
      {
        *v22 = 1;
        *(v22 + 1) = atomic_fetch_add_explicit(CGClipCreate_identifier, 1u, memory_order_relaxed) + 1;
        *(v22 + 4) = 2;
        *(v22 + 10) = a2;
        *(v22 + 3) = v20;
        v22[4] = 1.0;
        v22[2] = 0.0;
      }
    }

    else
    {
      return 0;
    }
  }

  return v13;
}

CFDictionaryRef CGPointCreateDictionaryRepresentation(CGPoint point)
{
  y = point.y;
  x = point.x;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  add_number_to_dict(Mutable, @"X", x);
  add_number_to_dict(Mutable, @"Y", y);
  return Mutable;
}

BOOL CGPointMakeWithDictionaryRepresentation(CFDictionaryRef dict, CGPoint *point)
{
  if (!dict || !point)
  {
    return 0;
  }

  get_point_from_dict(dict, &point->x);
  return result;
}

uint64_t dlRecorder_DrawPath(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const CGPath *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && (v9 = *(a1 + 288)) != 0)
  {

    return CG::DisplayListRecorder::DrawPath(v9, a2, a3, a4, a5, 0, 0);
  }

  else
  {
    CGPostError("%s: CGContextDelegateGetInfo() returned NULL", a2, a3, a4, a5, a6, a7, a8, "dlRecorder_DrawPath");
    return 1000;
  }
}

CGFloat ripc_GetTransform@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v3 = *(a1 + 288);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v3 + 48);
  if (v4 && (v7 = 0, v8 = 0, ((*(*v4 + 72))(v4, &v7) & 1) != 0))
  {
    (*(**(v3 + 48) + 88))(*(v3 + 48), v3 + 40);
    result = *(v3 + 40);
    v6 = SHIDWORD(v8);
    *a2 = result;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = -result;
    *(a2 + 32) = 0;
    *(a2 + 40) = v6;
  }

  else
  {
    *a2 = CGAffineTransformIdentity;
    return CGAffineTransformIdentity.tx;
  }

  return result;
}

size_t CGImageGetBitsPerComponent(size_t image)
{
  if (image)
  {
    return *(image + 56);
  }

  return image;
}

uint64_t CGPDFContentStreamCreate(uint64_t a1)
{
  v14 = 0;
  value = 0;
  if (!CGPDFDictionaryGetObject(*(a1 + 16), "Contents", &value) || value == 0)
  {
    goto LABEL_6;
  }

  v4 = *(value + 2);
  if (v4 != 7)
  {
    if (v4 == 9)
    {
      v14 = *(value + 4);
      v3 = pdf_content_stream_create(1);
      CFArrayAppendValue(*(v3 + 24), v14);
      goto LABEL_10;
    }

    return 0;
  }

  v9 = *(value + 4);
  if (!v9)
  {
LABEL_6:
    v3 = pdf_content_stream_create(0);
LABEL_10:
    Property = *(a1 + 72);
    if (Property)
    {
      Property = CGPropertiesGetProperty(Property, @"kCGPDFPageShouldRenderExtraContentStream");
    }

    if (Property != *MEMORY[0x1E695E4C0])
    {
      os_unfair_lock_lock((a1 + 88));
      v6 = *(a1 + 40);
      os_unfair_lock_unlock((a1 + 88));
      v14 = v6;
      if (v6)
      {
        CFArrayAppendValue(*(v3 + 24), v6);
      }
    }

    *(v3 + 16) = a1;
    os_unfair_lock_lock((a1 + 32));
    v7 = *(a1 + 24);
    os_unfair_lock_unlock((a1 + 32));
    if (v7)
    {
      CFRetain(v7);
    }

    *(v3 + 32) = v7;
    set_default_color_spaces(v3);
    return v3;
  }

  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  v12 = (v10 - v11) >> 3;
  v3 = pdf_content_stream_create(v12);
  if (v10 == v11)
  {
    goto LABEL_10;
  }

  v13 = 0;
  while (CGPDFArrayGetStream(v9, v13, &v14))
  {
    CFArrayAppendValue(*(v3 + 24), v14);
    if (v12 == ++v13)
    {
      goto LABEL_10;
    }
  }

  if (v3)
  {
    CFRelease(v3);
    return 0;
  }

  return v3;
}

uint64_t CGPDFStreamCreate(uint64_t a1, CGPDFDictionaryRef dict, void *a3, uint64_t a4)
{
  value = 0;
  if (!CGPDFDictionaryGetInteger(dict, "Length", &value))
  {
    pdf_error("missing or invalid stream length.");
    v14 = 0;
    value = 0;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    v17 = -1;
    goto LABEL_9;
  }

  v14 = value;
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  v15 = a3[11];
  if (a3[18])
  {
    v16 = a3[24];
    v15 += a3[15];
  }

  else
  {
    v16 = a3[16];
  }

  v17 = v16 - v15 + a3[14];
LABEL_9:
  CGPDFSourceSetPosition(a3, v14 + a4, v8, v9, v10, v11, v12, v13);
  CGPDFSourceSkipWhitespace(a3, v18, v19, v20, v21, v22, v23, v24);
  if (!CGPDFSourceMatch(a3, "endstream", v25, v26, v27, v28, v29, v30))
  {
    v41 = 0;
    CGPDFSourceSetPosition(a3, a4, v31, v32, v33, v34, v35, v36);
    if (CGPDFSourceForwardSearch(a3, "endstream", "\n\r", &v41))
    {
      v37 = v41 - a4;
      pdf_error("invalid stream length %lld; should be %lld.", v14, v41 - a4);
      v14 = v37;
    }

    else
    {
    }
  }

  CGPDFSourceSetPosition(a3, v17, v31, v32, v33, v34, v35, v36);
  CGPDFSourcePreflightLargeRead(a3, v17, v14);
  if (CGPDFStreamGetTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFStreamGetTypeID_onceToken, &__block_literal_global_22335);
  }

  cftype = pdf_create_cftype();
  v39 = cftype;
  if (cftype)
  {
    *(cftype + 24) = 0;
    *(cftype + 32) = 0;
    *(cftype + 16) = a1;
    *(cftype + 40) = 0;
    *(cftype + 48) = dict;
    *(cftype + 56) = a4;
    *(cftype + 64) = v14;
    if (a3)
    {
      CFRetain(a3);
    }

    *(v39 + 72) = a3;
    *(v39 + 80) = 0;
  }

  return v39;
}

CGColorSpace *CGPDFResourcesGetColorSpace(uint64_t a1, const char *a2)
{
  Value = 0;
  if (a1 && a2)
  {
    os_unfair_lock_lock((a1 + 80));
    v5 = CFStringCreateWithCStringNoCopy(*MEMORY[0x1E695E480], a2, 0x600u, *MEMORY[0x1E695E498]);
    v6 = *(a1 + 24);
    if (v5)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7 || (Value = CFDictionaryGetValue(v6, v5)) == 0)
    {
      if (!strcmp(a2, "DeviceGray"))
      {
        DeviceGray = CGColorSpaceCreateDeviceGray();
      }

      else if (!strcmp(a2, "DeviceRGB"))
      {
        DeviceGray = CGColorSpaceCreateDeviceRGB();
      }

      else if (!strcmp(a2, "DeviceCMYK"))
      {
        DeviceGray = CGColorSpaceCreateDeviceCMYK();
      }

      else if (!strcmp(a2, "Pattern"))
      {
        DeviceGray = CGColorSpaceCreatePattern(0);
      }

      else
      {
        resource = get_resource(a1, "ColorSpace", a2);
        DeviceGray = CGPDFCreateColorSpace(resource);
      }

      if (DeviceGray)
      {
        Value = table_set_value((a1 + 24), v5, DeviceGray);
        CGColorSpaceRelease(Value);
      }

      else
      {
        Value = 0;
      }
    }

    CFRelease(v5);
    os_unfair_lock_unlock((a1 + 80));
  }

  return Value;
}

CGPDFObjectRef get_resource(uint64_t a1, char *key, const char *a3)
{
  if (!key)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  dict = 0;
  value = 0;
  while (!CGPDFDictionaryGetDictionary(v3[1], key, &dict) || !CGPDFDictionaryGetObject(dict, a3, &value))
  {
    v3 = *v3;
    if (!v3)
    {
      return 0;
    }
  }

  return value;
}

CGColorSpaceRef CGPDFCreateColorSpace(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  if (v2 == 7)
  {
    v6 = *(a1 + 32);
    v4 = CGPDFObjectCopyAssociation(a1, "ColorSpace");
    if (v4)
    {
      return v4;
    }

    if (!v6 || *(v6 + 3) == *(v6 + 2))
    {
      pdf_error("invalid color space: no entries in color space array.");
      return 0;
    }

    value = 0;
    if (!CGPDFArrayGetName(v6, 0, &value))
    {
      pdf_error("invalid color space: first color space array entry must be a name.");
      return 0;
    }

    if (CGPDFCreateColorSpace_pred != -1)
    {
      dispatch_once(&CGPDFCreateColorSpace_pred, &__block_literal_global_16125);
    }

    v8 = pthread_getspecific(cg_colorspaces_key);
    if (v8)
    {
      Mutable = v8;
      Count = CFArrayGetCount(v8);
      if (Count >= 1)
      {
        v11 = Count;
        v12 = 0;
        while (v6 != CFArrayGetValueAtIndex(Mutable, v12))
        {
          if (v11 == ++v12)
          {
            goto LABEL_27;
          }
        }

        pdf_error("invalid color space: color space cannot have a circular reference.");
        return 0;
      }
    }

    else
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 100, 0);
    }

LABEL_27:
    CFArrayAppendValue(Mutable, v6);
    pthread_setspecific(cg_colorspaces_key, Mutable);
    device_space = create_device_space(value);
    if (!device_space)
    {
      v14 = value;
      if (!strcmp(value, "CalGray"))
      {
        CalGray = create_CalGray(v6);
      }

      else if (!strcmp(v14, "CalRGB"))
      {
        CalGray = create_CalRGB(v6);
      }

      else if (!strcmp(v14, "Lab"))
      {
        CalGray = create_Lab(v6);
      }

      else if (!strcmp(v14, "ICCBased"))
      {
        CalGray = create_ICCBased(v6);
      }

      else if (!strcmp(v14, "Separation"))
      {
        CalGray = create_Separation(v6);
      }

      else if (!strcmp(v14, "DeviceN"))
      {
        CalGray = create_DeviceN(v6);
      }

      else if (!strcmp(v14, "Indexed"))
      {
        CalGray = create_Indexed(v6);
      }

      else
      {
        if (strcmp(v14, "Pattern"))
        {
LABEL_49:
          v7 = 0;
          goto LABEL_48;
        }

        CalGray = create_Pattern(v6);
      }

      device_space = CalGray;
      if (!CalGray)
      {
        goto LABEL_49;
      }
    }

    v7 = CGPDFObjectSetAssociation(a1, device_space, "ColorSpace");
LABEL_48:
    v19.length = CFArrayGetCount(Mutable);
    v19.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(Mutable, v19, v6);
    CFArrayRemoveValueAtIndex(Mutable, FirstIndexOfValue);
    pthread_setspecific(cg_colorspaces_key, Mutable);
    return v7;
  }

  if (v2 != 5)
  {
    return 0;
  }

  v3 = *(a1 + 32);
  v4 = create_device_space(v3);
  if (v4)
  {
    return v4;
  }

  if (strcmp(v3, "Pattern"))
  {
    return 0;
  }

  return CGColorSpaceCreatePattern(0);
}

char *CGPDFGStateCreate()
{
  v0 = malloc_type_malloc(0x128uLL, 0x10600405F0534CFuLL);
  __CFSetLastAllocationEventName();
  if (v0)
  {
    *v0 = CGAffineTransformIdentity;
    *(v0 + 24) = 0;
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0u;
    *(v0 + 14) = 0;
    *(v0 + 15) = 0;
    *(v0 + 13) = 0x4059000000000000;
    *(v0 + 32) = 0;
    *(v0 + 17) = 0;
    *(v0 + 18) = 0;
    v0[152] = 1;
    *(v0 + 20) = 0x3FF0000000000000;
    *(v0 + 21) = 0;
    *(v0 + 22) = 0x4024000000000000;
    *(v0 + 23) = 0;
    *(v0 + 48) = 2;
    v0[196] = 0;
    *(v0 + 50) = 0;
    *(v0 + 26) = 0;
    __asm { FMOV            V0.2D, #1.0 }

    *(v0 + 216) = _Q0;
    *(v0 + 116) = 0;
    v0[234] = 0;
    *(v0 + 244) = 0;
    *(v0 + 236) = 0;
    *(v0 + 65) = 0;
    *(v0 + 252) = 0;
    *(v0 + 33) = 0x3FF0000000000000;
    *(v0 + 34) = 0;
    *(v0 + 35) = 0;
    *(v0 + 36) = 0;
  }

  return v0;
}

void *CGPDFGStateCreateCopy(__int128 *a1)
{
  v2 = malloc_type_malloc(0x128uLL, 0x10600405F0534CFuLL);
  __CFSetLastAllocationEventName();
  if (v2)
  {
    CGPDFGStateCopyProperties(v2, a1);
  }

  return v2;
}

CFTypeRef CGPDFGStateCopyProperties(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v5;
  *a1 = v4;
  *(a1 + 48) = *(a2 + 24);
  v6 = *(a2 + 7);
  if (v6)
  {
    CFRetain(*(a2 + 7));
  }

  *(a1 + 56) = v6;
  v7 = *(a2 + 8);
  if (v7)
  {
    CFRetain(*(a2 + 8));
  }

  *(a1 + 64) = v7;
  v8 = *(a2 + 9);
  if (v8)
  {
    v9 = malloc_type_malloc(0x50uLL, 0x10000404247E4FDuLL);
    if (v9)
    {
      *v9 = *v8;
      v10 = v8[1];
      v11 = v8[2];
      v12 = v8[4];
      v9[3] = v8[3];
      v9[4] = v12;
      v9[1] = v10;
      v9[2] = v11;
    }
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 72) = v9;
  v13 = *(a2 + 10);
  if (v13)
  {
    v13 = CFRetain(v13);
  }

  *(a1 + 80) = v13;
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 15);
  *(a1 + 128) = *(a2 + 32);
  v14 = *(a2 + 17);
  if (v14)
  {
    CFRetain(*(a2 + 17));
  }

  *(a1 + 136) = v14;
  *(a1 + 144) = *(a2 + 18);
  *(a1 + 152) = *(a2 + 152);
  v15 = *(a2 + 21);
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 168) = v15;
  *(a1 + 176) = *(a2 + 22);
  v16 = *(a2 + 23);
  if (v16)
  {
    atomic_fetch_add_explicit(v16, 1u, memory_order_relaxed);
  }

  *(a1 + 184) = v16;
  *(a1 + 192) = *(a2 + 48);
  *(a1 + 196) = *(a2 + 196);
  *(a1 + 200) = *(a2 + 50);
  v17 = *(a2 + 26);
  if (v17)
  {
    CFRetain(*(a2 + 26));
  }

  *(a1 + 208) = v17;
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 233) = *(a2 + 233);
  *(a1 + 236) = *(a2 + 59);
  v18 = *(a2 + 30);
  if (v18)
  {
    CFRetain(*(a2 + 30));
  }

  *(a1 + 240) = v18;
  v19 = *(a2 + 31);
  if (v19)
  {
    CFRetain(*(a2 + 31));
  }

  *(a1 + 248) = v19;
  result = *(a2 + 32);
  if (result)
  {
    result = CFRetain(result);
  }

  *(a1 + 256) = result;
  v21 = *(a2 + 34);
  *(a1 + 264) = *(a2 + 33);
  *(a1 + 272) = v21;
  v22 = *(a2 + 35);
  if (v22)
  {
    result = CFRetain(v22);
  }

  *(a1 + 280) = v22;
  *(a1 + 288) = 0;
  return result;
}

void *CGImageGetMatte(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (kCGDefaultHDRImageContentHeadroom_block_invoke_once != -1)
    {
      dispatch_once(&kCGDefaultHDRImageContentHeadroom_block_invoke_once, &__block_literal_global_281);
    }

    if (v2 == CGImageGetTypeID_image_type_id)
    {
      return v1[23];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CGContextGetSoftMask(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(*(*(a1 + 96) + 120) + 40);
  }

  handle_invalid_context("CGContextGetSoftMask", a1, a3, a4, a5, a6, a7, a8);
  return 0;
}

uint64_t CGContextGetStyle(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(*(*(a1 + 96) + 120) + 16);
  }

  handle_invalid_context("CGContextGetStyle", a1, a3, a4, a5, a6, a7, a8);
  return 0;
}

double CGContextGetAlpha(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(*(*(a1 + 96) + 120) + 8);
  }

  handle_invalid_context("CGContextGetAlpha", a1, a3, a4, a5, a6, a7, a8);
  return 0.0;
}

uint64_t CGPDFResourcesIterateCategory(uint64_t result, char *key, uint64_t a3)
{
  if (result)
  {
    if (key)
    {
      for (i = *(result + 16); i; i = *i)
      {
        value = 0;
        result = CGPDFDictionaryGetDictionary(i[1], key, &value);
        if (result)
        {
          result = (*(a3 + 16))(a3, value);
          if (!result)
          {
            break;
          }
        }
      }
    }
  }

  return result;
}

uint64_t CGContextGetCompositeOperation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return (*(*(*(a1 + 96) + 120) + 4) >> 8);
  }

  handle_invalid_context("CGContextGetCompositeOperation", a1, a3, a4, a5, a6, a7, a8);
  return 0;
}

uint64_t CheckExtGStateForSpecialBlends(CGPDFDictionary *a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __CheckExtGStateForSpecialBlends_block_invoke;
  block[3] = &unk_1E6E315C8;
  block[4] = &v4;
  CGPDFDictionaryApplyBlock(a1, block, 0);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void CGPDFDictionaryApplyBlock(CGPDFDictionaryRef dict, CGPDFDictionaryApplierBlock block, void *info)
{
  if (dict && block)
  {
    v6 = (dict + 64);
    do
    {
      v6 = *v6;
      if (!v6)
      {
        break;
      }

      v8 = v6[2];
      v7 = v6[3];
      if (v7)
      {
        if (*(v7 + 2) == 10)
        {
          v7 = pdf_xref_resolve(*(dict + 2), *(v7 + 2), *(v7 + 3));
        }
      }
    }

    while (((*(block + 2))(block, *(v8 + 32), v7, info) & 1) != 0);
  }
}

int CGFontGetXHeight(CGFontRef font)
{
  font_info = get_font_info(font);
  if (font_info)
  {
    LODWORD(font_info) = font_info[7];
  }

  return font_info;
}

atomic_ullong *retain_private_data(atomic_ullong *result)
{
  if (result)
  {
    atomic_fetch_add_explicit(result, 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t __CheckExtGStateForSpecialBlends_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 && *(a3 + 8) == 8 && (v4 = *(a3 + 32), value = 0, CGPDFDictionaryGetObject(v4, "BM", &value)) && CGPDFBlendModeFromCGPDFObject(value) + 1 >= 2)
  {
    v5 = 0;
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  else
  {
    v5 = *(*(*(a1 + 32) + 8) + 24) ^ 1;
  }

  return v5 & 1;
}

CGGradientRef CGGradientCreateWithColorComponents(CGColorSpaceRef space, const CGFloat *components, const CGFloat *locations, size_t count)
{
  HeadroomInfo = CGColorSpaceGetHeadroomInfo(space, 0);

  return create_gradient(space, components, locations, count, 0, HeadroomInfo);
}

uint64_t argb32_shade(uint64_t a1, __n128 a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v5 = v4;
  v6 = v3;
  v47 = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  *v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  memset(v17, 0, sizeof(v17));
  v8 = *(v7 + 56);
  v9 = *v3;
  v10 = !*(v3 + 12) && !*(v4 + 72) && *(v4 + 4) >= 1.0;
  v43 = 0;
  memset(v42, 0, sizeof(v42));
  v11 = *(v8 + 16 * v9 + 8 * v10 + 4 * (*(v3 + 6) == 0));
  if (v11 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(v3 + 1) < 1 || *(v3 + 2) < 1)
  {
    return 0;
  }

  if (_blt_shade_initialize(v3, v4, v17, v42) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*v5 & 0xF000000) == 0x3000000)
  {
    if (*(v5 + 16))
    {
      v14 = argb32_shade_radial_RGB;
    }

    else if (*(v5 + 24))
    {
      v14 = argb32_shade_conic_RGB;
    }

    else if (*(&v19 + 1) < 2)
    {
      v14 = argb32_shade_axial_RGB;
    }

    else
    {
      v14 = argb32_shade_custom_RGB;
    }

    *&v17[0] = v14;
    if (v40)
    {
      *(&v39 + 1) = v46;
      _blt_shade_samples_16(v46, 2, 3, v40, *(&v40 + 1), 1uLL);
    }

    v15 = *(&v19 + 1) * v19;
    if ((*(&v19 + 1) * v19) <= 480)
    {
      v16 = v44;
      v38[1] = v44;
LABEL_27:
      _blt_shade_samples_16(v16, 2, 3, v18, *(&v18 + 1), v15);
      if (*(v5 + 1))
      {
        *&v39 = &_blt_shade_samples_noise;
      }

      goto LABEL_29;
    }

    v16 = malloc_type_malloc(8 * v15 + 32, 0x8C254358uLL);
    if (v16)
    {
      v38[1] = v16;
      v15 = *(&v19 + 1) * v19;
      goto LABEL_27;
    }

    return 0xFFFFFFFFLL;
  }

  if (!*&v17[0])
  {
    return 0xFFFFFFFFLL;
  }

LABEL_29:
  DWORD2(v17[0]) = *v7;
  HIDWORD(v17[0]) = DWORD2(v17[0]);
  argb32_image_mark(v6, v17, v11, v13);
  if (v38[1] && (v38[1] < v44 || &v45 < v38[1]))
  {
    free(v38[1]);
  }

  return 1;
}

void argb32_shade_axial_RGB(uint64_t a1, uint64_t a2, uint64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, int8x8_t a12)
{
  v12 = *(a1 + 280);
  v13 = *(a1 + 296) + ((*(a1 + 288) * (*(*(a1 + 272) + 4) * a3)) + (v12 * (*(*(a1 + 272) + 4) * a2)));
  v14 = a1 + 368;
  v15 = *(a1 + 368);
  v16 = (a3 >> 4) & 0xF0;
  v17 = v15 + v16;
  if (v15)
  {
    v18 = v15 + v16;
  }

  else
  {
    v18 = a1 + 368;
  }

  if (v15)
  {
    v19 = 15;
  }

  else
  {
    v19 = 0;
  }

  v21 = *(a1 + 336);
  v22 = *(a1 + 344);
  v23 = *(a1 + 304);
  v24 = *(a1 + 308);
  v25 = *(a1 + 320);
  v26 = *(a1 + 324);
  v29 = a1 + 144;
  v27 = *(a1 + 144);
  v28 = *(v29 + 8);
  v30 = *(a1 + 376);
  v31 = *(a1 + 360);
  if (v12 != 0.0)
  {
    if (v15)
    {
      v37 = (a2 >> 8) & 0xF;
    }

    else
    {
      LOBYTE(v37) = 0;
    }

    while (1)
    {
      v38 = v25;
      if (v13 >= v23)
      {
        v38 = v26;
        if (v13 <= v24)
        {
          v38 = (v22 * (v13 - v21));
        }
      }

      if ((v38 & 0x80000000) == 0)
      {
        break;
      }

      v39 = v30;
      if (v30)
      {
        goto LABEL_38;
      }

LABEL_39:
      LOBYTE(v37) = (v37 + 1) & v19;
      v13 = v12 + v13;
      v28 += 4;
      *v27 = v39;
      v27 = (v27 + 1);
      if (!--a4)
      {
        return;
      }
    }

    v39 = (v31 + 2 * (4 * v38));
LABEL_38:
    v40 = *(v18 + v37);
    *v28 = (v40 + v39[1]) & 0xFF00 | (((v40 + *v39) >> 8) << 16) & 0xFFFFFF | ((v40 + v39[2]) >> 8) | (((v40 + v39[3]) >> 8) << 24);
    LOBYTE(v39) = -1;
    goto LABEL_39;
  }

  if (v15)
  {
    v32 = v17;
  }

  else
  {
    v32 = v14;
  }

  if (v15)
  {
    LODWORD(v33) = ((a2 >> 8) + 1) & 0xF;
  }

  else
  {
    LODWORD(v33) = 0;
  }

  if (v15)
  {
    LODWORD(v34) = (a2 >> 8) & 0xF;
  }

  else
  {
    LODWORD(v34) = 0;
  }

  if (v15)
  {
    v35 = 15;
  }

  else
  {
    v35 = 0;
  }

  if (v13 >= v23)
  {
    v25 = v26;
    if (v13 <= v24)
    {
      v25 = (v22 * (v13 - v21));
    }
  }

  if ((v25 & 0x80000000) == 0 || v30)
  {
    v41 = (v31 + 2 * (4 * v25));
    if (v25 < 0)
    {
      v41 = v30;
    }

    v42 = *v41;
    v43 = v41[1];
    v44 = v41[2];
    v45 = v41[3];
    if (v15)
    {
      v46 = vdup_n_s32(v42);
      v47 = vdup_n_s32(v43);
      v48 = a4 + 4;
      v49 = vdup_n_s32(v44);
      v50 = vdup_n_s32(v45);
      do
      {
        v51 = (v32 + v34);
        v34 = (v34 + 1) & v35;
        a12.i8[0] = *v51;
        a12.i8[4] = *(v32 + v33);
        v52 = vand_s8(a12, 0xFF000000FFLL);
        v53 = vorr_s8(vorr_s8(vand_s8(vshl_n_s32(vadd_s32(v46, v52), 8uLL), 0xFF000000FF0000), vand_s8(vadd_s32(v47, v52), 0xFF000000FF00)), vorr_s8((*&vshr_n_u32(vadd_s32(v49, v52), 8uLL) & 0xFFFFFEFFFFFFFEFFLL), (*&vshl_n_s32(vadd_s32(v50, v52), 0x10uLL) & 0xFF00FFFFFF00FFFFLL)));
        *v28 = v53;
        v33 = (v33 + 1) & v35;
        v53.i8[0] = *(v32 + v34);
        v53.i8[4] = *(v32 + v33);
        v54 = vand_s8(v53, 0xFF000000FFLL);
        a12 = vorr_s8(vorr_s8(vand_s8(vshl_n_s32(vadd_s32(v46, v54), 8uLL), 0xFF000000FF0000), vand_s8(vadd_s32(v47, v54), 0xFF000000FF00)), vorr_s8((*&vshr_n_u32(vadd_s32(v49, v54), 8uLL) & 0xFFFFFEFFFFFFFEFFLL), (*&vshl_n_s32(vadd_s32(v50, v54), 0x10uLL) & 0xFF00FFFFFF00FFFFLL)));
        *(v28 + 8) = *&a12;
        *v27++ = -1;
        v28 += 16;
        v48 -= 4;
      }

      while (v48 > 4);
    }

    else
    {
      v55 = vdupq_n_s32(v43 & 0xFF00 | (BYTE1(v42) << 16) & 0xFFFFFF | (v44 >> 8) | (BYTE1(v45) << 24));
      v56 = a4 + 4;
      do
      {
        *v28 = v55;
        v28 += 16;
        *v27++ = -1;
        v56 -= 4;
      }

      while (v56 > 4);
    }
  }

  else
  {
    if (a4 >= 4)
    {
      v36 = 4;
    }

    else
    {
      v36 = a4;
    }

    bzero(v27, ((a4 - v36 + 3) & 0xFFFFFFFC) + 4);
  }
}

__CFArray *create_private_data_array_with_parser_fonts(const __CFArray *a1)
{
  Count = CFArrayGetCount(a1);
  Mutable = CFArrayCreateMutable(0, Count, &xt_font_cfarray_callbacks);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      CFArrayGetValueAtIndex(a1, i);
      v5 = FPFontRetain();
      v6 = malloc_type_calloc(1uLL, 0x20uLL, 0x1060040D8C947D5uLL);
      *v6 = 1;
      v6[1] = v5;
      CFArrayAppendValue(Mutable, v6);
      xt_font_release(v6);
    }
  }

  return Mutable;
}

atomic_ullong *xt_font_cfarray_retain(uint64_t a1, atomic_ullong *a2)
{
  result = a2;
  if (a2)
  {
    atomic_fetch_add_explicit(a2, 1uLL, memory_order_relaxed);
  }

  return result;
}

__CFArray *create_fonts_with_private_data_array(const __CFArray *a1, int a2)
{
  Count = CFArrayGetCount(a1);
  if (!Count && !a2)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(0, Count, MEMORY[0x1E695E9C0]);
  v5 = Mutable;
  if (Mutable && Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      Mutable = CGFontCreate(Mutable, v7, v8, v9, v10, v11, v12, v13);
      if (Mutable)
      {
        v15 = Mutable;
        *(Mutable + 112) = CFArrayGetValueAtIndex(a1, i);
        (*(v15[2] + 88))();
        CFArrayAppendValue(v5, v15);
        CFRelease(v15);
      }
    }
  }

  return v5;
}

CFTypeRef CGFontCopyName(uint64_t a1, __CFString *a2)
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  name_id_for_key = get_name_id_for_key(a2);
  if (name_id_for_key == -1)
  {
    return 0;
  }

  v4 = name_id_for_key;
  name_table = get_name_table(a1);
  if (!name_table)
  {
    return 0;
  }

  v6 = name_table;
  System = CFLocaleGetSystem();

  return copy_localized_value(v6, System, v4);
}

os_unfair_lock_s *get_name_table(uint64_t a1)
{
  v2 = (a1 + 80);
  result = atomic_load_explicit((a1 + 80), memory_order_acquire);
  if (!result)
  {
    result = CGFontNameTableCreate(a1);
    v4 = 0;
    atomic_compare_exchange_strong(v2, &v4, result);
    if (v4)
    {
      CGFontNameTableRelease(result);
      return v4;
    }
  }

  return result;
}

uint64_t get_name_id_for_key(__CFString *a1)
{
  if (a1 == @"kCGFontNameKeyCopyright")
  {
    return 0;
  }

  if (a1 == @"kCGFontNameKeyFontFamily")
  {
    return 1;
  }

  if (a1 == @"kCGFontNameKeyFontSubfamily")
  {
    return 2;
  }

  if (a1 == @"kCGFontNameKeyUniqueID")
  {
    return 3;
  }

  if (a1 == @"kCGFontNameKeyFullName")
  {
    return 4;
  }

  if (a1 == @"kCGFontNameKeyVersion")
  {
    return 5;
  }

  if (a1 == @"kCGFontNameKeyPostScriptName")
  {
    return 6;
  }

  if (a1 == @"kCGFontNameKeyTrademark")
  {
    return 7;
  }

  if (a1 == @"kCGFontNameKeyManufacturer")
  {
    return 8;
  }

  if (a1 == @"kCGFontNameKeyDesigner")
  {
    return 9;
  }

  if (a1 == @"kCGFontNameKeyDescription")
  {
    return 10;
  }

  if (a1 == @"kCGFontNameKeyVendorURL")
  {
    return 11;
  }

  if (a1 == @"kCGFontNameKeyDesignerURL")
  {
    return 12;
  }

  if (a1 == @"kCGFontNameKeyLicense")
  {
    return 13;
  }

  if (a1 == @"kCGFontNameKeyLicenseURL")
  {
    return 14;
  }

  if (a1 == @"kCGFontNameKeyPreferredFamily")
  {
    return 16;
  }

  if (a1 == @"kCGFontNameKeyPreferredSubfamily")
  {
    return 17;
  }

  if (a1 == @"kCGFontNameKeySampleText")
  {
    return 19;
  }

  return 0xFFFFFFFFLL;
}

uint64_t CGFontCopyFamilyName(uint64_t result)
{
  if (result)
  {
    return (*(*(result + 16) + 184))(*(result + 112));
  }

  return result;
}

CFStringRef CGFontCopyFullName(CFStringRef font)
{
  if (font)
  {
    return (*(font->data + 22))(font[3].data);
  }

  return font;
}

uint64_t CGFontDBAddFontsAtPath(uint64_t result, uint64_t a2)
{
  if (result && a2)
  {
    v3 = result;
    pthread_mutex_lock((result + 32));
    add_fonts_at_path_locked(v3, a2, 0, v4, v5, v6, v7, v8);

    return pthread_mutex_unlock((v3 + 32));
  }

  return result;
}

void add_fonts_at_path_locked(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && a2)
  {
    if (a3 && (v11 = CGFontCreateWithPathAndName(a2, a3, a3, a4, a5, a6, a7, a8)) != 0)
    {
      v12 = v11;
      CFDictionarySetValue(*(a1 + 8), a3, v11);
    }

    else
    {
      FontsWithPath = CGFontCreateFontsWithPath(a2, a2, a3, a4, a5, a6, a7, a8);
      if (!FontsWithPath)
      {
        return;
      }

      v12 = FontsWithPath;
      Count = CFArrayGetCount(FontsWithPath);
      if (Count)
      {
        v15 = Count;
        for (i = 0; i != v15; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v12, i);
          if (ValueAtIndex)
          {
            v18 = ValueAtIndex;
            v19 = (*(ValueAtIndex[2] + 160))(ValueAtIndex[14]);
            if (v19)
            {
              v20 = v19;
              CFDictionarySetValue(*(a1 + 8), v19, v18);
              CFRelease(v20);
            }

            v21 = (*(v18[2] + 176))(v18[14]);
            if (v21)
            {
              v22 = v21;
              CFDictionarySetValue(*(a1 + 8), v21, v18);
              CFRelease(v22);
            }
          }
        }
      }
    }

    CFRelease(v12);
  }
}

uint64_t argb32_sample_argb32(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 24);
  v5 = *(result + 112);
  v6 = *(result + 48);
  v7 = *(result + 56);
  if (v6)
  {
    v108 = *(result + 112);
    if (v5 > v6)
    {
      v108 = v5 % v6;
    }
  }

  else
  {
    v108 = 0;
  }

  v8 = *(result + 176);
  v9 = *(result + 32);
  v10 = *(result + 120);
  if (v7)
  {
    v11 = v10 % v7;
    if (v10 <= v7)
    {
      v11 = *(result + 120);
    }

    v107 = v11;
  }

  else
  {
    v107 = 0;
  }

  v103 = *(result + 80);
  v104 = *(result + 64);
  v105 = *(result + 88);
  v106 = *(result + 72);
  v12 = *(result + 152) - 4;
  v13 = *(result + 144) - 1;
  if (*(result + 40))
  {
    v14 = 0;
  }

  else
  {
    v14 = -16777216;
  }

  v102 = *(result + 188);
  v15 = v9 + ((*(result + 260) - 1) * v4) + 4 * *(result + 256) - 4;
  v16 = -*(result + 64);
  v17 = -*(result + 72);
  while (1)
  {
LABEL_14:
    if (a3 >= v106)
    {
      if (a3 <= v105)
      {
        v26 = 0;
        v27 = (a3 >> 22) & 0x3C0;
        v28 = 0x3FFFFFFF;
        v29 = a3;
      }

      else
      {
        v22 = *(result + 216);
        v23 = *(result + 224) + v105;
        v24 = v23 - a3 + (v22 >> 1);
        if (v24 < 1)
        {
          goto LABEL_54;
        }

        if (v24 >= v22)
        {
          LODWORD(v25) = 0x3FFFFFFF;
        }

        else
        {
          v25 = (*(result + 232) * v24) >> 32;
        }

        v28 = v102 | v25;
        v29 = v23 - 0x1000000;
        v26 = a3 - (v23 - 0x1000000);
        v27 = 448;
      }
    }

    else
    {
      v18 = *(result + 216);
      v19 = v106 - *(result + 224);
      v20 = a3 - v19 + (v18 >> 1);
      if (v20 < 1)
      {
        goto LABEL_54;
      }

      if (v20 >= v18)
      {
        LODWORD(v21) = 0x3FFFFFFF;
      }

      else
      {
        v21 = (*(result + 232) * v20) >> 32;
      }

      v28 = v102 | v21;
      v29 = v19 + 0x1000000;
      v26 = a3 - (v19 + 0x1000000);
      v27 = 512;
    }

    if (a2 >= v104)
    {
      break;
    }

    v30 = *(result + 192);
    v31 = v104 - *(result + 200);
    v32 = a2 - v31 + (v30 >> 1);
    if (v32 >= 1)
    {
      if (v32 < v30)
      {
        v28 = ((v28 >> 15) * (((*(result + 208) * v32) >> 32) >> 15)) | v102;
      }

      v33 = v31 + 0x1000000;
      v34 = a2 - (v31 + 0x1000000);
      v35 = 32;
      goto LABEL_38;
    }

LABEL_54:
    --a4;
    a2 += v5;
    a3 += v10;
    v12 += 4;
    *++v13 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v103)
  {
    v34 = 0;
    v35 = (a2 >> 26) & 0x3C;
    v33 = a2;
    goto LABEL_38;
  }

  v36 = *(result + 192);
  v37 = *(result + 200) + v103;
  v38 = v37 - a2 + (v36 >> 1);
  if (v38 < 1)
  {
    goto LABEL_54;
  }

  if (v38 < v36)
  {
    v28 = ((v28 >> 15) * (((*(result + 208) * v38) >> 32) >> 15)) | v102;
  }

  v33 = v37 - 0x1000000;
  v34 = a2 - (v37 - 0x1000000);
  v35 = 28;
LABEL_38:
  if (v28 < 0x400000)
  {
    goto LABEL_54;
  }

  if (v6)
  {
    v39 = (v7 & ((v29 % v7) >> 63)) + v29 % v7;
    v40 = (v6 & ((v33 % v6) >> 63)) + v33 % v6;
    if (v39 >= v7)
    {
      v41 = v7;
    }

    else
    {
      v41 = 0;
    }

    v29 = v39 - v41;
    if (v40 >= v6)
    {
      v42 = v6;
    }

    else
    {
      v42 = 0;
    }

    v33 = v40 - v42;
    v26 += v29;
    v34 += v33;
  }

  v43 = v9 + SHIDWORD(v29) * v4;
  v44 = v33 >> 32;
  v45 = v43 + 4 * v44;
  v46 = *(result + 32);
  if (v15 >= v45)
  {
    v47 = (v43 + 4 * v44);
  }

  else
  {
    v47 = v15;
  }

  if (v47 < v46)
  {
    v47 = *(result + 32);
  }

  v48 = *v47;
  if (v8)
  {
    v49 = *(v8 + (v35 | v27));
LABEL_80:
    v61 = v49 & 0xF;
    v62 = v49 >> 8;
    v63 = HIBYTE(v49) & 3;
    switch(v61)
    {
      case 1:
        LODWORD(v92) = SBYTE1(v49);
        if (v6)
        {
          v93 = v62 << 56;
          v94 = v26 + (SBYTE1(v49) << 32);
          v95 = v7 & (v94 >> 63);
          if (v95 + v94 >= v7)
          {
            v96 = v7;
          }

          else
          {
            v96 = 0;
          }

          v92 = (v95 + (v93 >> 24) - v96) >> 32;
        }

        v97 = (v45 + v92 * v4);
        if (v15 < v97)
        {
          v97 = v15;
        }

        if (v97 < v46)
        {
          v97 = v46;
        }

        v98 = interpolate_8888_21865[v63];
        v99 = v63 + 1;
        v85 = v48 - ((v98 & v48) >> v99);
        v86 = (v98 & *v97) >> v99;
LABEL_125:
        v48 = v85 + v86;
        break;
      case 2:
        v87 = SBYTE2(v49);
        if (v6)
        {
          v88 = v34 + (SBYTE2(v49) << 32);
          v89 = v6 & (v88 >> 63);
          if (v89 + v88 >= v6)
          {
            v90 = v6;
          }

          else
          {
            v90 = 0;
          }

          v87 = (v89 + ((HIWORD(v49) << 56) >> 24) - v90) >> 32;
        }

        v91 = (v45 + 4 * v87);
        if (v15 < v91)
        {
          v91 = v15;
        }

        if (v91 < v46)
        {
          v91 = v46;
        }

        v48 = v48 - ((interpolate_8888_21865[(v49 >> 28) & 3] & v48) >> (((v49 >> 28) & 3) + 1)) + ((interpolate_8888_21865[(v49 >> 28) & 3] & *v91) >> (((v49 >> 28) & 3) + 1));
        break;
      case 3:
        v101 = HIBYTE(v49) & 3;
        LODWORD(v64) = SBYTE1(v49);
        v65 = SBYTE2(v49);
        if (v6)
        {
          v100 = v62 << 56;
          v66 = HIWORD(v49) << 56;
          v67 = v26 + (SBYTE1(v49) << 32);
          v68 = v34 + (v66 >> 24);
          v69 = v7 & (v67 >> 63);
          v70 = v6 & (v68 >> 63);
          v71 = v70 + v68;
          if (v69 + v67 >= v7)
          {
            v72 = v7;
          }

          else
          {
            v72 = 0;
          }

          if (v71 >= v6)
          {
            v73 = v6;
          }

          else
          {
            v73 = 0;
          }

          v64 = (v69 + (v100 >> 24) - v72) >> 32;
          v65 = (v70 + (v66 >> 24) - v73) >> 32;
        }

        v74 = (v45 + 4 * v65);
        if (v15 < v74)
        {
          v74 = v15;
        }

        if (v74 < v46)
        {
          v74 = v46;
        }

        v75 = *v74;
        v76 = v45 + v64 * v4;
        if (v15 >= v76)
        {
          v77 = (v45 + v64 * v4);
        }

        else
        {
          v77 = v15;
        }

        if (v77 < v46)
        {
          v77 = v46;
        }

        v78 = *v77;
        v79 = (v76 + 4 * v65);
        if (v15 < v79)
        {
          v79 = v15;
        }

        if (v79 < v46)
        {
          v79 = v46;
        }

        v80 = interpolate_8888_21865[v101];
        v81 = v48 - ((v80 & v48) >> (v101 + 1)) + ((v80 & v78) >> (v101 + 1));
        v82 = v75 - ((v80 & v75) >> (v101 + 1)) + ((v80 & *v79) >> (v101 + 1));
        v83 = (v49 >> 28) & 3;
        v84 = interpolate_8888_21865[v83];
        LOBYTE(v83) = v83 + 1;
        v85 = v81 - ((v81 & v84) >> v83);
        v86 = (v82 & v84) >> v83;
        goto LABEL_125;
    }
  }

  *(v12 + 4) = v48 | v14;
  *(v13 + 1) = v28 >> 22;
  if (a4 != 1)
  {
    v50 = 0;
    a2 += v5;
    v51 = v103 - a2;
    a3 += v10;
    v52 = v105 - a3;
    v53 = -4;
    while (((v52 | v51 | (v17 + a3) | (v16 + a2)) & 0x8000000000000000) == 0)
    {
      if (v6)
      {
        v54 = (v7 & ((v26 + v107) >> 63)) + v26 + v107;
        v55 = (v6 & ((v34 + v108) >> 63)) + v34 + v108;
        if (v54 >= v7)
        {
          v56 = v7;
        }

        else
        {
          v56 = 0;
        }

        v26 = v54 - v56;
        if (v55 >= v6)
        {
          v57 = v6;
        }

        else
        {
          v57 = 0;
        }

        v34 = v55 - v57;
        v58 = HIDWORD(v26);
        v59 = v34;
      }

      else
      {
        v58 = HIDWORD(a3);
        v59 = a2;
      }

      v45 = v9 + v58 * v4 + 4 * (v59 >> 32);
      v46 = *(result + 32);
      if (v15 >= v45)
      {
        v60 = v45;
      }

      else
      {
        v60 = v15;
      }

      if (v60 < v46)
      {
        v60 = *(result + 32);
      }

      v48 = *v60;
      if (v8)
      {
        v49 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
        if ((v49 & 0xF) != 0)
        {
          v13 += v50 + 1;
          v12 -= v53;
          a4 += ~v50;
          v28 = -1;
          goto LABEL_80;
        }
      }

      *(v12 + 4 * v50 + 8) = v48 | v14;
      *(v13 + v50++ + 2) = -1;
      v53 -= 4;
      a2 += v5;
      v51 -= v5;
      a3 += v10;
      v52 -= v10;
      if (a4 - 1 == v50)
      {
        return result;
      }
    }

    v13 += v50 + 1;
    v12 -= v53;
    a4 += ~v50;
    if (a4)
    {
      goto LABEL_14;
    }
  }

  return result;
}

void argb32_mark_pixelshape_template(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    return;
  }

  v51 = vec::template_mark_pixelshape_row<(CGCompositeOperation)0,_rgba8_t>;
  if (a2 <= 0x17)
  {
    v51 = *(&vec::MethodList<_rgba8_t>::shapeMethods + a2);
  }

  v2 = *(a1 + 4);
  v3 = *(a1 + 8);
  v4 = v2;
  v57 = v3;
  v58 = v2;
  v5 = *(a1 + 28);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = *(a1 + 88);
  v8 = *(a1 + 96);
  v55 = v9;
  v10 = *(a1 + 136);
  v11 = *(a1 + 1) << 8;
  v12 = v5 >> 2;
  v50 = v7 != 0;
  v13 = v6 + 4 * (v5 >> 2) * *(a1 + 16) + 4 * *(a1 + 12);
  v56 = v13;
  v14 = *(a1 + 104);
  v15 = *(a1 + 108);
  v16 = *(a1 + 56);
  v17 = *(a1 + 60);
  v18 = *(a1 + 76);
  if (v11 != 256)
  {
    v52 = *(a1 + 64);
    v24 = v18 >> 2;
    v25 = (v18 >> 2) * *(a1 + 68);
    v44 = *(a1 + 68);
    v54 = v9;
    v26 = v9 + 4 * v25;
    v27 = v8 != 0;
    if (v10)
    {
      v23 = 1;
      v20 = v9;
      goto LABEL_21;
    }

    v47 = v13;
    if (v9)
    {
      v45 = 0;
      v46 = v9;
      v28 = v9 + 4 * v24 * (v17 % v44);
      v20 = v28 + 4 * (v16 % v52);
      v29 = v28 + 4 * v52;
      v54 = v29;
      v55 = v20;
      v23 = 1;
      v9 = v20;
      goto LABEL_25;
    }

    v29 = 0;
    v20 = 0;
    v23 = 1;
LABEL_24:
    v26 = 0;
    v45 = 0;
    v46 = v20;
    v9 = 0;
    v24 -= v4;
    goto LABEL_25;
  }

  v19 = v18 >> 2;
  v20 = v9 + 4 * v19 * v17 + 4 * v16;
  v54 = -1;
  v55 = v20;
  v52 = v19;
  if (v19 != v12)
  {
    v23 = 1;
    goto LABEL_19;
  }

  v21 = (v13 - v20) >> 2;
  if (v21 >= 1)
  {
    if (v21 <= v2)
    {
      v13 = v13 + 4 * v2 - 4;
      v56 = v13;
      v20 = v20 + 4 * v2 - 4;
      v55 = v20;
      v23 = 0xFFFFFFFFLL;
      goto LABEL_18;
    }

    v22 = v12 * (v3 - 1);
    if (v13 <= v20 + 4 * v22 + 4 * v2 - 4)
    {
      v13 += 4 * v22;
      v56 = v13;
      v12 = -v12;
      v55 = v20 + 4 * v22;
      v23 = 1;
      v20 = v55;
      goto LABEL_18;
    }
  }

  v23 = 1;
LABEL_18:
  v52 = v12;
LABEL_19:
  v27 = v8 != 0;
  if (!v10)
  {
    v47 = v13;
    v44 = 0;
    v4 = v23 * v2;
    v29 = -1;
    v24 = v52;
    goto LABEL_24;
  }

  v44 = 0;
  v26 = 0;
  v9 = 0;
  v24 = v52;
LABEL_21:
  shape_enum_clip_alloc(a1, a2, v10, v23, v12, 1, v14, v15, v2, v3);
  v31 = v30;
  if (v30)
  {
    while (shape_enum_clip_next(v31, &v53 + 1, &v53, &v58, &v57))
    {
      v46 = v20;
      v47 = v13;
      v45 = v31;
      if (v26)
      {
        v41 = v13 + 4 * v12 * v53 + 4 * SHIDWORD(v53);
        v2 = v58;
        v42 = v20 + 4 * v24 * ((v53 + *(a1 + 60)) % v44);
        v20 = v42 + 4 * ((HIDWORD(v53) + *(a1 + 56)) % v52);
        v29 = v42 + 4 * v52;
        v54 = v29;
        LODWORD(v4) = v58;
        v9 = v20;
      }

      else
      {
        v2 = v58;
        LODWORD(v4) = v58 * v23;
        v41 = v13 + 4 * v12 * v53 + 4 * HIDWORD(v53) * v23;
        v20 += 4 * v53 * v52 + 4 * HIDWORD(v53) * v23;
        v24 = v52 - v58 * v23;
        v29 = v54;
      }

      v56 = v41;
      v55 = v20;
      v4 = v4;
      v3 = v57;
LABEL_25:
      v49 = v12;
      v32 = v12 - v4;
      v33 = v2 & ~(v2 >> 31);
      if ((v29 - v20) >> 2 >= v33)
      {
        v34 = v33;
      }

      else
      {
        v34 = (v29 - v20) >> 2;
      }

      v35 = v33 - v34;
      if (v3 >= 1)
      {
        v36 = 1;
      }

      else
      {
        v36 = v3;
      }

      v48 = v36;
      v37 = v3 + 1;
      do
      {
        v51(&v55, &v56, &v54, v52, v23, v27, v50, v35, v34);
        v56 += 4 * v32;
        if (v26)
        {
          v38 = v9 + 4 * v24;
          if (v38 >= v26)
          {
            v39 = -(v24 * v44);
          }

          else
          {
            v39 = 0;
          }

          v40 = v38 + 4 * v39;
          v54 += 4 * v39 + 4 * v24;
          v9 = v40;
        }

        else
        {
          v40 = v55 + 4 * v24;
        }

        v55 = v40;
        --v37;
      }

      while (v37 > 1);
      v57 = v48 - 1;
      v12 = v49;
      v20 = v46;
      v13 = v47;
      v31 = v45;
      if (!v45)
      {
        return;
      }

      v53 = 0;
    }

    free(v31);
  }
}

int8x16_t **vec::template_mark_pixelshape_row<(CGCompositeOperation)7,_rgba8_t>(int8x16_t **result, uint8x8_t **a2, unint64_t *a3, int a4, int a5, int8x16_t a6, double a7, uint16x8_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12)
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
      a8 = vrsraq_n_u16(v20, v20, 8uLL);
      *v15->i8 = vqrshrn_high_n_u16(vqrshrn_n_u16(vrsraq_n_u16(v19, v19, 8uLL), 8uLL), a8, 8uLL);
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
      a8.i32[0] = v15->i32[0];
      v23 = vmovl_u8(*a8.i8);
      LOBYTE(v24) = v23.i8[0];
      BYTE1(v24) = v23.i8[2];
      BYTE2(v24) = v23.i8[4];
      HIBYTE(v24) = v23.i8[6];
      v23.i32[0] = v13->i32[0];
      v23.i64[1] = v23.i64[0];
      v25 = vminq_u16(vmull_u8(v24, vqtbl1_s8(v23, -4244438269)), v22);
      a8 = vrsraq_n_u16(v25, v25, 8uLL);
      *a8.i8 = vqrshrn_n_u16(a8, 8uLL);
      *a8.i8 = vmovn_s16(vzip1q_s8(a8, a6));
      v15->i32[0] = a8.i32[0];
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

CGColorSpace *get_default_space(uint64_t a1, const char *a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  v5 = a1;
  while (1)
  {
    ColorSpace = CGPDFResourcesGetColorSpace(*(v5 + 32), a2);
    if (ColorSpace)
    {
      break;
    }

    v5 = *(v5 + 40);
    if (!v5)
    {
      return 0;
    }
  }

  v7 = ColorSpace;
  if (*(*(ColorSpace + 3) + 48) != a3)
  {
    return 0;
  }

  Model = CGColorSpaceGetModel(ColorSpace);
  if (Model <= kCGColorSpaceModelPattern && ((1 << Model) & 0x68) != 0)
  {
    return 0;
  }

  return v7;
}

BOOL CGRectIsEmpty(CGRect rect)
{
  if (rect.origin.x == INFINITY || rect.origin.y == INFINITY)
  {
    return 1;
  }

  if (rect.size.height == 0.0)
  {
    return 1;
  }

  return rect.size.width == 0.0;
}

void CGContextSetTextMatrix(CGContextRef c, CGAffineTransform *t)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      v8 = *&t->a;
      v9 = *&t->c;
      *(c + 152) = *&t->tx;
      *(c + 136) = v9;
      *(c + 120) = v8;
      return;
    }

    v10 = c;
  }

  else
  {
    v10 = 0;
  }

  handle_invalid_context("CGContextSetTextMatrix", v10, v2, v3, v4, v5, v6, v7);
}

void CGContextTranslateCTM(CGContextRef c, CGFloat tx, CGFloat ty)
{
  if (c && *(c + 4) == 1129601108)
  {
    *(*(c + 12) + 56) = vmlaq_n_f64(vmlaq_n_f64(*(*(c + 12) + 56), *(*(c + 12) + 24), tx), *(*(c + 12) + 40), ty);
  }

  else
  {
    handle_invalid_context("CGContextTranslateCTM", c, v3, v4, v5, v6, v7, v8);
  }
}

void CGContextScaleCTM(CGContextRef c, CGFloat sx, CGFloat sy)
{
  if (c && *(c + 4) == 1129601108)
  {
    v9 = *(c + 12);
    v10 = vmulq_n_f64(*(v9 + 40), sy);
    *(v9 + 24) = vmulq_n_f64(*(v9 + 24), sx);
    *(v9 + 40) = v10;
  }

  else
  {
    handle_invalid_context("CGContextScaleCTM", c, v3, v4, v5, v6, v7, v8);
  }
}

void CGContextSetTextPosition(CGContextRef c, CGFloat x, CGFloat y)
{
  if (c && *(c + 4) == 1129601108)
  {
    *(c + 19) = x;
    *(c + 20) = y;
  }

  else
  {
    handle_invalid_context("CGContextSetTextPosition", c, v3, v4, v5, v6, v7, v8);
  }
}

Swift::Void __swiftcall CGContextRef.draw(_:in:byTiling:)(CGImageRef _, __C::CGRect in, Swift::Bool byTiling)
{
  if (byTiling)
  {
    CGContextDrawTiledImage(v3, in, _);
  }

  else
  {
    CGContextDrawImage(v3, in, _);
  }
}

CGImageRef CGImageCreateCopy(CGImageRef image)
{
  if (!image)
  {
    return 0;
  }

  v6 = *(image + 9);
  if ((v6 & 0x2000000) != 0)
  {
    v9 = mask_create(*(image + 5), *(image + 6), *(image + 7), *(image + 8), *(image + 9), *(image + 19), *(image + 20), HIBYTE(v6) & 1, 4);
    if (!v9)
    {
      return v9;
    }

    goto LABEL_35;
  }

  v7 = *(image + 26);
  if (v7)
  {
    v8 = CGImageCreateWithImageProvider(v7, *(image + 20), HIBYTE(v6) & 1, (v6 >> 8), v1, v2, v3, v4);
    v9 = v8;
    if (!v8)
    {
      return v9;
    }

    v10 = *(v8 + 144);
    if (v10 != *(image + 18))
    {
      CGColorSpaceRelease(v10);
      v11 = *(image + 18);
      if (v11)
      {
        CFRetain(*(image + 18));
      }

      *(v9 + 144) = v11;
    }
  }

  else
  {
    v9 = CGImageCreate(*(image + 5), *(image + 6), *(image + 7), *(image + 8), *(image + 9), *(image + 18), *(image + 8), *(image + 19), *(image + 20), v6 & 0x1000000, (v6 >> 8));
    if (!v9)
    {
      return v9;
    }
  }

  if (*(image + 21))
  {
    v12 = *(v9 + 144);
    if (v12)
    {
      v13 = *(*(v12 + 24) + 48);
    }

    else
    {
      v13 = 0;
    }

    v14 = malloc_type_malloc(16 * v13, 0x100004000313F17uLL);
    *(v9 + 168) = v14;
    if (!v14)
    {
LABEL_38:
      CFRelease(v9);
      return 0;
    }

    v15 = 2 * v13;
    if (2 * v13)
    {
      v16 = *(image + 21);
      do
      {
        v17 = *v16++;
        *v14++ = v17;
        --v15;
      }

      while (v15);
    }
  }

  *(v9 + 36) = *(v9 + 36) & 0xF7FFFFFF | (((*(image + 9) >> 27) & 1) << 27);
  v18 = *(image + 22);
  if (v18)
  {
    CFRetain(*(image + 22));
  }

  *(v9 + 176) = v18;
  if (!*(image + 23))
  {
    goto LABEL_30;
  }

  v19 = *(v9 + 144);
  if (v19)
  {
    v20 = *(*(v19 + 24) + 48);
  }

  else
  {
    v20 = 0;
  }

  v21 = malloc_type_malloc(8 * v20, 0x100004000313F17uLL);
  *(v9 + 184) = v21;
  if (!v21)
  {
    goto LABEL_38;
  }

  if (v20)
  {
    v22 = *(image + 23);
    do
    {
      v23 = *v22++;
      *v21++ = v23;
      --v20;
    }

    while (v20);
  }

LABEL_30:
  v24 = *(image + 24);
  if (v24)
  {
    CFRetain(*(image + 24));
  }

  *(v9 + 192) = v24;
  v25 = *(image + 25);
  if (v25)
  {
    CFRetain(*(image + 25));
  }

  *(v9 + 200) = v25;
LABEL_35:
  v26 = *(image + 30);
  if (v26)
  {
    CFRetain(*(image + 30));
  }

  *(v9 + 240) = v26;
  *(v9 + 248) = *(image + 248);
  CGPropertiesRelease(*(v9 + 216));
  *(v9 + 216) = CGPropertiesCreateCopy(*(image + 27));
  CGPropertiesRelease(*(v9 + 224));
  *(v9 + 224) = CGPropertiesCreateCopy(*(image + 28));
  return v9;
}

CFTypeRef *CGPropertiesCreateCopy(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CGPropertiesCreate();
  v3 = v2;
  if (v2)
  {
    CFRelease(v2[1]);
    v3[1] = CFDictionaryCreateMutableCopy(0, 0, *(a1 + 8));
  }

  return v3;
}

uint64_t rgba64_image(uint64_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  memset(v49, 0, 512);
  if (*(a2 + 12))
  {
    v7 = 0;
  }

  else
  {
    v7 = *(a3 + 8) >= 1.0;
  }

  v8 = *(*(v6 + 56) + 16 * *a2 + 8 * v7 + 4 * (*(a2 + 6) == 0));
  if (v8 > 28)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a2 + 1) < 1 || *(a2 + 2) < 1)
  {
    return 0;
  }

  if (_blt_image_initialize(a2, a3, &v32, v49) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v18 = 269497256;
  v19 = *a3;
  *(&v32 + 1) = __PAIR64__(*v6, *a3);
  if (v19 == 269497256)
  {
    if (!v43 && (~DWORD1(v33) & 0xC3) == 0)
    {
      v17.n128_u32[0] = *(a3 + 8);
      if (v17.n128_f32[0] >= 1.0 && !*(a3 + 24))
      {
        if ((BYTE4(v33) & 4) != 0)
        {
          v17.n128_u64[0] = *(a3 + 32);
          *(a2 + 8) = v17.n128_u64[0];
        }

        rgba64_mark(a1, v17);
        return 1;
      }
    }

    *&v32 = rgba64_sample_rgba64;
    goto LABEL_44;
  }

  v20 = SAMPLEINDEX(v19, v10, v11, v12, v13, v14, v15, v16);
  if (!v20)
  {
    return 0xFFFFFFFFLL;
  }

  if (v20 > 0xB)
  {
    if (v20 <= 0x13)
    {
      if ((v20 - 14) >= 4)
      {
        if (v20 == 13 || v20 == 12)
        {
          v22 = *(a2 + 12);
          if (!v22)
          {
            v21 = 0;
            goto LABEL_36;
          }
        }

        goto LABEL_35;
      }

      goto LABEL_25;
    }

    goto LABEL_35;
  }

  if (v20 > 6)
  {
    switch(v20)
    {
      case 7:
        v21 = 0;
        LODWORD(v22) = 32;
        break;
      case 9:
        v21 = 0;
        LODWORD(v22) = 40;
        break;
      case 8:
        v21 = 0;
        LODWORD(v22) = 8;
        goto LABEL_36;
      default:
        goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v20 == 2)
  {
    if (!*(a2 + 12))
    {
      v21 = 0;
      LODWORD(v22) = 16;
      goto LABEL_36;
    }

LABEL_35:
    LODWORD(v22) = 255;
    v21 = 1;
    goto LABEL_36;
  }

  if (v20 != 5)
  {
    if (v20 != 6)
    {
      goto LABEL_35;
    }

LABEL_25:
    v21 = 0;
    LODWORD(v22) = 0;
    goto LABEL_36;
  }

  v21 = 0;
  LODWORD(v22) = 24;
LABEL_36:
  *&v32 = *&RGB16_image_sample[2 * v20 + 2];
  if (!v32)
  {
    if ((HIWORD(*a3) & 0x3Fu) <= 8)
    {
      *&v32 = *&RGB8_image_sample[2 * v20 + 2];
      if (v32)
      {
        v18 = 134755224;
        v23 = 4;
LABEL_42:
        LODWORD(v33) = v23;
        goto LABEL_43;
      }
    }

    *&v32 = *&RGBF_image_sample[2 * v20 + 2];
    if (v32)
    {
      v18 = 538981289;
      v23 = 16;
      goto LABEL_42;
    }

    return 0xFFFFFFFFLL;
  }

LABEL_43:
  DWORD2(v32) = v18;
  if ((v21 & 1) != 0 || (v8 - 1) > 1 || (BYTE4(v33) & 7) != 3 || a2[2] != 5 && a2[2])
  {
    goto LABEL_44;
  }

  if (v20 <= 0xB)
  {
    HIDWORD(v25) = v22;
    LODWORD(v25) = v22;
    v24 = v25 >> 3;
    if (v24 > 2)
    {
      if (v24 == 3)
      {
        DWORD2(v32) = *a3;
        v26 = rgba64_image_mark_RGB24;
        goto LABEL_85;
      }

      if (v24 == 4)
      {
        DWORD2(v32) = *a3;
        v26 = rgba64_image_mark_rgb32;
        goto LABEL_85;
      }

      if (v24 != 5)
      {
        goto LABEL_44;
      }

      DWORD2(v32) = *a3;
      v27 = rgba64_image_mark_rgb32;
    }

    else
    {
      if (!v24)
      {
        DWORD2(v32) = *a3;
        v26 = rgba64_image_mark_RGB32;
        goto LABEL_85;
      }

      if (v24 != 1)
      {
        if (v24 == 2)
        {
          DWORD2(v32) = *a3;
          v26 = rgba64_image_mark_W8;
LABEL_85:
          v28 = v26;
          v29 = a2;
          v30 = v8;
          v31 = 0;
          goto LABEL_86;
        }

        goto LABEL_44;
      }

      DWORD2(v32) = *a3;
      v27 = rgba64_image_mark_RGB32;
    }

    v28 = v27;
    v29 = a2;
    v30 = v8;
    v31 = 8;
LABEL_86:
    rgba64_image_mark_image(v29, &v32, v30, v31, v28);
    return 1;
  }

  if (v20 <= 0x13)
  {
    if (v20 <= 14)
    {
      if (v20 == 12)
      {
        DWORD2(v32) = *a3;
        v26 = rgba64_image_mark_W16;
      }

      else
      {
        DWORD2(v32) = *a3;
        if (v20 == 13)
        {
          v26 = rgba64_image_mark_w16;
        }

        else
        {
          v26 = rgba64_image_mark_RGB48;
        }
      }

      goto LABEL_85;
    }

    switch(v20)
    {
      case 15:
        DWORD2(v32) = *a3;
        v26 = rgba64_image_mark_rgb48;
        goto LABEL_85;
      case 16:
        DWORD2(v32) = *a3;
        v26 = rgba64_image_mark_RGBA64;
        goto LABEL_85;
      case 17:
        DWORD2(v32) = *a3;
        v26 = rgba64_image_mark_rgba64;
        goto LABEL_85;
    }
  }

LABEL_44:
  rgba64_image_mark(a2, &v32, v8, v17);
  return 1;
}

uint64_t rgba64_mark(uint64_t a1, __n128 a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v5 = v3;
  v713 = *MEMORY[0x1E69E9840];
  v6 = *v2;
  if (*(v3 + 132))
  {
    if (CGPreferencesCheck<CGImageMarkAllowTemplateMethodInteger>(void)::onceToken != -1)
    {
      dispatch_once(&CGPreferencesCheck<CGImageMarkAllowTemplateMethodInteger>(void)::onceToken, &__block_literal_global_15_13920);
    }

    v7 = CGPreferencesCheck<CGImageMarkAllowTemplateMethodInteger>(void)::result;
  }

  else
  {
    v7 = 0;
  }

  v8 = *v5;
  v9 = *(v5 + 96);
  v700 = *(v5 + 48);
  v10 = *(*(v6 + 7) + 16 * *v5 + 8 * (v9 == 0) + 4 * (v700 == 0));
  if (v10 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = *(v5 + 4);
  v13 = v12 - 1;
  if (v12 < 1)
  {
    return 0;
  }

  v14 = *(v5 + 8);
  if (v14 < 1)
  {
    return 0;
  }

  v15 = *(v5 + 136);
  if ((v8 & 0xFF0000) != 0x50000 && v15)
  {
    v16 = *(v5 + 128);
    if ((v16 | 8) == 8)
    {
      if ((*v5 & 0xFF00) == 0x400)
      {
        rgba64_mark_constmask(v5, v10);
      }

      else if ((v7 & 1) != 0 && ((1 << v10) & 0xFFFFFE) != 0)
      {
        rgba16_template_image_mask_method(*v6, v5, v10);
      }

      else
      {
        rgba64_mark_pixelmask(v5, v10);
      }
    }

    else
    {
      v33 = *(v5 + 112);
      v34 = *(v5 + 116);
      v35 = (v33 + 15) & 0xFFFFFFF0;
      v36 = v35 * v34;
      if (v36 <= 4096)
      {
        v38 = v712;
      }

      else
      {
        v37 = malloc_type_malloc(v36, 0x97CEE3C3uLL);
        if (!v37)
        {
          return 1;
        }

        v38 = v37;
        v15 = *(v5 + 136);
        v16 = *(v5 + 128);
      }

      CGSConvertBitsToMask(v15, *(v5 + 124), v38, v35, v33, v34, v16);
      v42 = *(v5 + 112);
      v708 = *(v5 + 96);
      v709 = v42;
      v43 = *(v5 + 144);
      v710 = *(v5 + 128);
      v711 = v43;
      v44 = *(v5 + 48);
      v704 = *(v5 + 32);
      v705 = v44;
      v45 = *(v5 + 80);
      v706 = *(v5 + 64);
      v707 = v45;
      v46 = *(v5 + 16);
      *v702 = *v5;
      v703 = v46;
      HIDWORD(v709) = (v33 + 15) & 0xFFFFFFF0;
      *(&v710 + 1) = v38;
      if (BYTE1(v702[0]) << 8 == 1024)
      {
        rgba64_mark_constmask(v702, v10);
      }

      else
      {
        rgba64_mark_pixelmask(v702, v10);
      }

      if (v38 != v712)
      {
        v47 = v38;
        goto LABEL_982;
      }
    }

    return 1;
  }

  v641 = v5;
  v642 = *(*(v6 + 7) + 16 * *v5 + 8 * (v9 == 0) + 4 * (v700 == 0));
  if (BYTE1(v8) == 1)
  {
    if ((v7 & 1) != 0 && ((1 << v10) & 0xFFFFFE) != 0)
    {
      rgba16_template_image_mark_method(*v6, v5, v10);
      return 1;
    }

LABEL_24:
    v712[0] = *(v5 + 4);
    v702[0] = v14;
    v23 = *(v5 + 88);
    v24 = *(v5 + 28) >> 3;
    v25 = *(v5 + 40) + 8 * v24 * *(v5 + 16) + 8 * *(v5 + 12);
    v26 = *(v5 + 56);
    v27 = *(v5 + 60);
    v28 = *(v5 + 76) >> 3;
    if ((v8 & 0xFF00) != 0x100)
    {
      v32 = *(v5 + 64);
      v643 = *(v5 + 68);
      v695 = v23 + 8 * v28 * v643;
      v39 = v9 != 0;
      if (v15)
      {
        v696 = *(v5 + 76) >> 3;
        v698 = *(v5 + 88);
        v639 = *(v5 + 60);
        v640 = *(v5 + 56);
        v31 = 1;
        v40 = v698;
        v41 = v698;
LABEL_54:
        v669 = v31;
        v648 = v24;
        shape_enum_clip_alloc(v2, v3, v15, v31, v24, 1, *(v5 + 104), *(v5 + 108), v12, v14);
        v55 = v54;
        if (!v54)
        {
          return 1;
        }

        while (2)
        {
          if (!shape_enum_clip_next(v55, &v701 + 1, &v701, v712, v702))
          {
            v47 = v55;
            goto LABEL_982;
          }

          v647 = v55;
          if (v695)
          {
            v24 = v648;
            v51 = v25;
            v52 = (v25 + 8 * v648 * v701 + 8 * SHIDWORD(v701));
            LODWORD(v12) = v712[0];
            v23 = v40;
            v474 = v40 + 8 * v696 * ((v701 + *(v5 + 60)) % v643);
            v50 = v474 + 8 * ((HIDWORD(v701) + *(v5 + 56)) % v32);
            v41 = v474 + 8 * v32;
            v698 = v50;
            v475 = v712[0];
            v639 = (v701 + *(v5 + 60)) % v643;
            v640 = (HIDWORD(v701) + *(v5 + 56)) % v32;
          }

          else
          {
            LODWORD(v12) = v712[0];
            v475 = v712[0] * v669;
            v24 = v648;
            v51 = v25;
            v52 = (v25 + 8 * v648 * v701 + 8 * HIDWORD(v701) * v669);
            v23 = v40;
            v50 = v40 + 8 * v701 * v32 + 8 * HIDWORD(v701) * v669;
            v696 = v32 - v712[0] * v669;
          }

          v693 = v24 - v475;
          v31 = v669;
LABEL_58:
          v648 = v24;
          v669 = v31;
          switch(v642)
          {
            case 0:
              v40 = v23;
              v56 = &v52[-v12 + 1];
              v57 = v693 + v12;
              if (v31 < 0)
              {
                v57 = v693 - v12;
              }

              else
              {
                v56 = v52;
              }

              v58 = (v56 + 8 * ((v57 * (v702[0] - 1)) & (v57 >> 63)));
              if (v57 < 0)
              {
                v57 = -v57;
              }

              CGBlt_fillBytes(8 * v12, v702[0], 0, v58, 8 * v57);
              goto LABEL_634;
            case 1:
              v265 = *(v5 + 1);
              if (v265 == 2)
              {
                if (v12 < 4 || (8 * v32) > 0x40 || (v4.i32[0] = 8 * v32, v476 = vcnt_s8(v4), v476.i16[0] = vaddlv_u8(v476), v476.i32[0] > 1u))
                {
LABEL_671:
                  v477 = v702[0];
                  if (v700 == 0 || v39)
                  {
                    v25 = v51;
                    do
                    {
                      v478 = v12;
                      do
                      {
                        *v52 = *v50;
                        v479 = v50 + 8 * v31;
                        if (v479 >= v41)
                        {
                          v480 = -v32;
                        }

                        else
                        {
                          v480 = 0;
                        }

                        v50 = v479 + 8 * v480;
                        v52 += v31;
                        --v478;
                      }

                      while (v478);
                      v52 += v693;
                      v481 = v698;
                      v482 = v698 + 8 * v696;
                      if (v482 >= v695)
                      {
                        v483 = -(v696 * v643);
                      }

                      else
                      {
                        v483 = 0;
                      }

                      v484 = v482 + 8 * v483;
                      v485 = v41 + 8 * v483 + 8 * v696;
                      if (v695)
                      {
                        v41 = v485;
                        v481 = v484;
                      }

                      v698 = v481;
                      if (v695)
                      {
                        v50 = v484;
                      }

                      else
                      {
                        v50 += 8 * v696;
                      }

                      --v477;
                    }

                    while (v477);
                  }

                  else
                  {
                    v25 = v51;
                    do
                    {
                      v486 = v12;
                      do
                      {
                        *v52 = (*v50 | 0xFFFF000000000000);
                        v487 = v50 + 8 * v31;
                        if (v487 >= v41)
                        {
                          v488 = -v32;
                        }

                        else
                        {
                          v488 = 0;
                        }

                        v50 = v487 + 8 * v488;
                        v52 += v31;
                        --v486;
                      }

                      while (v486);
                      v52 += v693;
                      v489 = v698;
                      v490 = v698 + 8 * v696;
                      if (v490 >= v695)
                      {
                        v491 = -(v696 * v643);
                      }

                      else
                      {
                        v491 = 0;
                      }

                      v492 = v490 + 8 * v491;
                      v493 = v41 + 8 * v491 + 8 * v696;
                      if (v695)
                      {
                        v41 = v493;
                        v489 = v492;
                      }

                      v698 = v489;
                      if (v695)
                      {
                        v50 = v492;
                      }

                      else
                      {
                        v50 += 8 * v696;
                      }

                      --v477;
                    }

                    while (v477);
                  }

                  goto LABEL_719;
                }

                v40 = v23;
                CGSFillDRAM64(v52, 8 * (v12 + v693), 8 * v12, v702[0], v23, 8 * v696, 8 * v32, v643, 8 * v640, v639);
LABEL_634:
                v25 = v51;
              }

              else
              {
                if (v265 != 1)
                {
                  goto LABEL_671;
                }

                if (v700 != 0 && !v39)
                {
                  v494 = v702[0];
                  v25 = v51;
                  do
                  {
                    v495 = v12;
                    do
                    {
                      *v52 = (*v50 | 0xFFFF000000000000);
                      v496 = v50 + 8 * v31;
                      if (v496 >= v41)
                      {
                        v497 = -v32;
                      }

                      else
                      {
                        v497 = 0;
                      }

                      v50 = v496 + 8 * v497;
                      v52 += v31;
                      --v495;
                    }

                    while (v495);
                    v52 += v693;
                    v498 = v698;
                    v499 = v698 + 8 * v696;
                    if (v499 >= v695)
                    {
                      v500 = -(v696 * v643);
                    }

                    else
                    {
                      v500 = 0;
                    }

                    v501 = v499 + 8 * v500;
                    v502 = v41 + 8 * v500 + 8 * v696;
                    if (v695)
                    {
                      v41 = v502;
                      v498 = v501;
                    }

                    v698 = v498;
                    if (v695)
                    {
                      v50 = v501;
                    }

                    else
                    {
                      v50 += 8 * v696;
                    }

                    --v494;
                  }

                  while (v494);
LABEL_719:
                  v40 = v23;
                  v702[0] = 0;
                  goto LABEL_659;
                }

                v40 = v23;
                if ((v31 & 0x80000000) != 0)
                {
                  v266 = v696 - v12;
                  v503 = 8 * v12 - 8;
                  v50 -= v503;
                  v267 = v693 - v12;
                  v52 = (v52 - v503);
                }

                else
                {
                  v266 = v696 + v12;
                  v267 = v693 + v12;
                }

                v25 = v51;
                v504 = v702[0] - 1;
                v505 = (v50 + 8 * ((v266 * v504) & (v266 >> 63)));
                if (v266 >= 0)
                {
                  v506 = v266;
                }

                else
                {
                  v506 = -v266;
                }

                if (v267 >= 0)
                {
                  LODWORD(v507) = v267;
                }

                else
                {
                  v507 = -v267;
                }

                v696 = v506;
                CGBlt_copyBytes(8 * v12, v702[0], v505, &v52[(v267 * v504) & (v267 >> 63)], 8 * v506, 8 * v507);
              }

LABEL_659:
              v55 = v647;
              if (!v647)
              {
                return 1;
              }

              v701 = 0;
              continue;
            case 2:
              v645 = v23;
              v646 = v51;
              v202 = v31;
              v644 = v32;
              v203 = -v32;
              v204 = v702[0];
              v205 = 8 * v31;
              do
              {
                v655 = v204;
                v206 = v12;
                do
                {
                  v207 = *v50;
                  v208 = HIWORD(*v50);
                  if (v208)
                  {
                    if (v208 == 0xFFFF)
                    {
                      *v52 = v207;
                    }

                    else
                    {
                      rgba64_DplusDM(v52, v207, *v52, v208 ^ 0xFFFF);
                    }
                  }

                  v209 = v50 + 8 * v202;
                  if (v209 >= v41)
                  {
                    v210 = v203;
                  }

                  else
                  {
                    v210 = 0;
                  }

                  v50 = v209 + 8 * v210;
                  v52 = (v52 + v205);
                  --v206;
                }

                while (v206);
                v52 += v693;
                v211 = v698;
                v212 = v698 + 8 * v696;
                v213 = -(v696 * v643);
                if (v212 < v695)
                {
                  v213 = 0;
                }

                v214 = v212 + 8 * v213;
                v215 = v41 + 8 * v213 + 8 * v696;
                if (v695)
                {
                  v41 = v215;
                  v211 = v214;
                }

                v698 = v211;
                if (v695)
                {
                  v50 = v214;
                }

                else
                {
                  v50 += 8 * v696;
                }

                v204 = v655 - 1;
              }

              while (v655 != 1);
              goto LABEL_658;
            case 3:
              v233 = v31;
              v234 = v702[0];
              v235 = 8 * v31;
              do
              {
                v236 = v12;
                do
                {
                  v237 = HIWORD(*v52);
                  if (v237 == 0xFFFF)
                  {
                    v238 = *v50 & 0xFFFF000000000000;
                    if (!v39)
                    {
                      v238 = 0xFFFF000000000000;
                    }

                    *v52 = (v238 & 0xFFFF000000000000 | *v50 & 0xFFFFFFFFFFFFLL);
                  }

                  else if (v237)
                  {
                    v239 = WORD1(*v50);
                    v240 = *v50;
                    if (v39)
                    {
                      v241 = HIWORD(*v50);
                    }

                    else
                    {
                      v241 = 0xFFFF;
                    }

                    v242 = vdup_n_s32(v237 ^ 0xFFFF);
                    v243 = vmla_s32(0x800000008000, vand_s8(v240, 0xFFFF0000FFFFLL), v242);
                    v244 = vmla_s32(0x800000008000, __PAIR64__(v241, v239), v242);
                    *v52 = vsli_n_s32(vsub_s32(v240, vshr_n_u32(vsra_n_u32(v243, v243, 0x10uLL), 0x10uLL)), vsub_s32(__PAIR64__(v241, v239), vshr_n_u32(vsra_n_u32(v244, v244, 0x10uLL), 0x10uLL)), 0x10uLL);
                  }

                  else
                  {
                    *v52 = 0;
                  }

                  v245 = v50 + 8 * v233;
                  if (v245 >= v41)
                  {
                    v246 = -v32;
                  }

                  else
                  {
                    v246 = 0;
                  }

                  v50 = v245 + 8 * v246;
                  v52 = (v52 + v235);
                  --v236;
                }

                while (v236);
                v52 += v693;
                v247 = v698;
                v248 = v698 + 8 * v696;
                if (v248 >= v695)
                {
                  v249 = -(v696 * v643);
                }

                else
                {
                  v249 = 0;
                }

                v250 = v248 + 8 * v249;
                v251 = v41 + 8 * v249 + 8 * v696;
                if (v695)
                {
                  v41 = v251;
                  v247 = v250;
                }

                v698 = v247;
                if (v695)
                {
                  v50 = v250;
                }

                else
                {
                  v50 += 8 * v696;
                }

                --v234;
              }

              while (v234);
              goto LABEL_336;
            case 4:
              v124 = v31;
              v125 = v702[0];
              v126 = 8 * v31;
              do
              {
                v127 = v12;
                do
                {
                  v128 = HIWORD(*v52);
                  if (v128)
                  {
                    if (v128 != 0xFFFF)
                    {
                      v130 = WORD1(*v50);
                      v131 = *v50;
                      if (v39)
                      {
                        v132 = HIWORD(*v50);
                      }

                      else
                      {
                        v132 = 0xFFFF;
                      }

                      v133 = vdup_n_s32(v128);
                      v134 = vmla_s32(0x800000008000, vand_s8(v131, 0xFFFF0000FFFFLL), v133);
                      v135 = vmla_s32(0x800000008000, __PAIR64__(v132, v130), v133);
                      *v52 = vsli_n_s32(vsub_s32(v131, vshr_n_u32(vsra_n_u32(v134, v134, 0x10uLL), 0x10uLL)), vsub_s32(__PAIR64__(v132, v130), vshr_n_u32(vsra_n_u32(v135, v135, 0x10uLL), 0x10uLL)), 0x10uLL);
                    }

                    else
                    {
                      *v52 = 0;
                    }
                  }

                  else
                  {
                    v129 = *v50 & 0xFFFF000000000000;
                    if (!v39)
                    {
                      v129 = 0xFFFF000000000000;
                    }

                    *v52 = (v129 & 0xFFFF000000000000 | *v50 & 0xFFFFFFFFFFFFLL);
                  }

                  v136 = v50 + 8 * v124;
                  if (v136 >= v41)
                  {
                    v137 = -v32;
                  }

                  else
                  {
                    v137 = 0;
                  }

                  v50 = v136 + 8 * v137;
                  v52 = (v52 + v126);
                  --v127;
                }

                while (v127);
                v52 += v693;
                v138 = v698;
                v139 = v698 + 8 * v696;
                if (v139 >= v695)
                {
                  v140 = -(v696 * v643);
                }

                else
                {
                  v140 = 0;
                }

                v141 = v139 + 8 * v140;
                v142 = v41 + 8 * v140 + 8 * v696;
                if (v695)
                {
                  v41 = v142;
                  v138 = v141;
                }

                v698 = v138;
                if (v695)
                {
                  v50 = v141;
                }

                else
                {
                  v50 += 8 * v696;
                }

                --v125;
              }

              while (v125);
LABEL_336:
              v40 = v23;
              v702[0] = 0;
              goto LABEL_634;
            case 5:
              v645 = v23;
              v646 = v51;
              v682 = v12;
              v302 = v31;
              v644 = v32;
              v303 = -v32;
              v304 = v702[0];
              v305 = 8 * v31;
              do
              {
                v306 = v682;
                do
                {
                  rgba64_DMplusDM(v52, *v50, HIWORD(*v52), *v52, HIWORD(*v50) ^ 0xFFFF);
                  v307 = v50 + 8 * v302;
                  if (v307 >= v41)
                  {
                    v308 = v303;
                  }

                  else
                  {
                    v308 = 0;
                  }

                  v50 = v307 + 8 * v308;
                  v52 = (v52 + v305);
                  --v306;
                }

                while (v306);
                v52 += v693;
                v309 = v698;
                v310 = v698 + 8 * v696;
                v311 = -(v696 * v643);
                if (v310 < v695)
                {
                  v311 = 0;
                }

                v312 = v310 + 8 * v311;
                v313 = v41 + 8 * v311 + 8 * v696;
                if (v695)
                {
                  v41 = v313;
                  v309 = v312;
                }

                v698 = v309;
                if (v695)
                {
                  v50 = v312;
                }

                else
                {
                  v50 += 8 * v696;
                }

                --v304;
              }

              while (v304);
              goto LABEL_658;
            case 6:
              v645 = v23;
              v646 = v51;
              v685 = v12;
              v348 = v31;
              v644 = v32;
              v349 = -v32;
              v350 = v702[0];
              v351 = 8 * v31;
              do
              {
                v662 = v350;
                v352 = v685;
                do
                {
                  v353 = HIWORD(*v52);
                  if (v353 != 0xFFFF)
                  {
                    if (~v353 == 0xFFFF)
                    {
                      v354 = *v50 & 0xFFFF000000000000;
                      if (!v39)
                      {
                        v354 = 0xFFFF000000000000;
                      }

                      *v52 = (v354 & 0xFFFF000000000000 | *v50 & 0xFFFFFFFFFFFFLL);
                    }

                    else
                    {
                      v355 = ~v353;
                      v356 = HIWORD(*v50);
                      if (!v39)
                      {
                        LOWORD(v356) = -1;
                      }

                      rgba64_DplusDAM(v52, *v52, *v50, v356, v355);
                    }
                  }

                  v357 = v50 + 8 * v348;
                  if (v357 >= v41)
                  {
                    v358 = v349;
                  }

                  else
                  {
                    v358 = 0;
                  }

                  v50 = v357 + 8 * v358;
                  v52 = (v52 + v351);
                  --v352;
                }

                while (v352);
                v52 += v693;
                v359 = v698;
                v360 = v698 + 8 * v696;
                v361 = -(v696 * v643);
                if (v360 < v695)
                {
                  v361 = 0;
                }

                v362 = v360 + 8 * v361;
                v363 = v41 + 8 * v361 + 8 * v696;
                if (v695)
                {
                  v41 = v363;
                  v359 = v362;
                }

                v698 = v359;
                if (v695)
                {
                  v50 = v362;
                }

                else
                {
                  v50 += 8 * v696;
                }

                v350 = v662 - 1;
              }

              while (v662 != 1);
              goto LABEL_658;
            case 7:
              v645 = v23;
              v646 = v51;
              v252 = v31;
              v644 = v32;
              v253 = -v32;
              v254 = v702[0];
              v255 = 8 * v31;
              do
              {
                v657 = v254;
                v256 = v12;
                do
                {
                  v257 = *(v50 + 6);
                  if (v257 != 0xFFFF)
                  {
                    if (*(v50 + 6))
                    {
                      rgba64_DM(v52, *v52, v257);
                    }

                    else
                    {
                      *v52 = 0;
                    }
                  }

                  v258 = v50 + 8 * v252;
                  if (v258 >= v41)
                  {
                    v259 = v253;
                  }

                  else
                  {
                    v259 = 0;
                  }

                  v50 = v258 + 8 * v259;
                  v52 = (v52 + v255);
                  --v256;
                }

                while (v256);
                v52 += v693;
                v260 = v698;
                v261 = v698 + 8 * v696;
                v262 = -(v696 * v643);
                if (v261 < v695)
                {
                  v262 = 0;
                }

                v263 = v261 + 8 * v262;
                v264 = v41 + 8 * v262 + 8 * v696;
                if (v695)
                {
                  v41 = v264;
                  v260 = v263;
                }

                v698 = v260;
                if (v695)
                {
                  v50 = v263;
                }

                else
                {
                  v50 += 8 * v696;
                }

                v254 = v657 - 1;
              }

              while (v657 != 1);
              goto LABEL_658;
            case 8:
              v645 = v23;
              v646 = v51;
              v393 = v31;
              v644 = v32;
              v394 = -v32;
              v395 = v702[0];
              v396 = 8 * v31;
              do
              {
                v664 = v395;
                v397 = v12;
                do
                {
                  v398 = *(v50 + 6);
                  if (~v398 != 0xFFFF)
                  {
                    if (v398 == -1)
                    {
                      *v52 = 0;
                    }

                    else
                    {
                      rgba64_DM(v52, *v52, ~v398);
                    }
                  }

                  v399 = v50 + 8 * v393;
                  if (v399 >= v41)
                  {
                    v400 = v394;
                  }

                  else
                  {
                    v400 = 0;
                  }

                  v50 = v399 + 8 * v400;
                  v52 = (v52 + v396);
                  --v397;
                }

                while (v397);
                v52 += v693;
                v401 = v698;
                v402 = v698 + 8 * v696;
                v403 = -(v696 * v643);
                if (v402 < v695)
                {
                  v403 = 0;
                }

                v404 = v402 + 8 * v403;
                v405 = v41 + 8 * v403 + 8 * v696;
                if (v695)
                {
                  v41 = v405;
                  v401 = v404;
                }

                v698 = v401;
                if (v695)
                {
                  v50 = v404;
                }

                else
                {
                  v50 += 8 * v696;
                }

                v395 = v664 - 1;
              }

              while (v664 != 1);
              goto LABEL_658;
            case 9:
              v645 = v23;
              v646 = v51;
              v676 = v12;
              v156 = v31;
              v644 = v32;
              v157 = -v32;
              v158 = v702[0];
              v159 = 8 * v31;
              do
              {
                v160 = v676;
                do
                {
                  rgba64_DMplusDM(v52, *v50, HIWORD(*v52) ^ 0xFFFF, *v52, HIWORD(*v50));
                  v161 = v50 + 8 * v156;
                  if (v161 >= v41)
                  {
                    v162 = v157;
                  }

                  else
                  {
                    v162 = 0;
                  }

                  v50 = v161 + 8 * v162;
                  v52 = (v52 + v159);
                  --v160;
                }

                while (v160);
                v52 += v693;
                v163 = v698;
                v164 = v698 + 8 * v696;
                v165 = -(v696 * v643);
                if (v164 < v695)
                {
                  v165 = 0;
                }

                v166 = v164 + 8 * v165;
                v167 = v41 + 8 * v165 + 8 * v696;
                if (v695)
                {
                  v41 = v167;
                  v163 = v166;
                }

                v698 = v163;
                if (v695)
                {
                  v50 = v166;
                }

                else
                {
                  v50 += 8 * v696;
                }

                --v158;
              }

              while (v158);
              goto LABEL_658;
            case 10:
              v645 = v23;
              v646 = v51;
              v687 = v12;
              v381 = v31;
              v644 = v32;
              v382 = -v32;
              v383 = v702[0];
              v384 = 8 * v31;
              do
              {
                v385 = v687;
                do
                {
                  rgba64_DMplusDM(v52, *v50, HIWORD(*v52) ^ 0xFFFF, *v52, HIWORD(*v50) ^ 0xFFFF);
                  v386 = v50 + 8 * v381;
                  if (v386 >= v41)
                  {
                    v387 = v382;
                  }

                  else
                  {
                    v387 = 0;
                  }

                  v50 = v386 + 8 * v387;
                  v52 = (v52 + v384);
                  --v385;
                }

                while (v385);
                v52 += v693;
                v388 = v698;
                v389 = v698 + 8 * v696;
                v390 = -(v696 * v643);
                if (v389 < v695)
                {
                  v390 = 0;
                }

                v391 = v389 + 8 * v390;
                v392 = v41 + 8 * v390 + 8 * v696;
                if (v695)
                {
                  v41 = v392;
                  v388 = v391;
                }

                v698 = v388;
                if (v695)
                {
                  v50 = v391;
                }

                else
                {
                  v50 += 8 * v696;
                }

                --v383;
              }

              while (v383);
              goto LABEL_658;
            case 11:
              v645 = v23;
              v646 = v51;
              v110 = v31;
              v644 = v32;
              v111 = -v32;
              v112 = v702[0];
              v113 = 8 * v31;
              v674 = v12;
              do
              {
                v652 = v112;
                v114 = v12;
                do
                {
                  v115 = HIWORD(*v52);
                  if (!v700)
                  {
                    LOWORD(v115) = -1;
                  }

                  v116 = HIWORD(*v50);
                  if (!v39)
                  {
                    LOWORD(v116) = -1;
                  }

                  rgba64_DAplusdDA(v52, *v52, v115, *v50, v116);
                  v117 = v50 + 8 * v110;
                  if (v117 >= v41)
                  {
                    v118 = v111;
                  }

                  else
                  {
                    v118 = 0;
                  }

                  v50 = v117 + 8 * v118;
                  v52 = (v52 + v113);
                  --v114;
                }

                while (v114);
                v52 += v693;
                v119 = v698;
                v120 = v698 + 8 * v696;
                v121 = -(v696 * v643);
                if (v120 < v695)
                {
                  v121 = 0;
                }

                v122 = v120 + 8 * v121;
                v123 = v41 + 8 * v121 + 8 * v696;
                if (v695)
                {
                  v41 = v123;
                  v119 = v122;
                }

                v698 = v119;
                if (v695)
                {
                  v50 = v122;
                }

                else
                {
                  v50 += 8 * v696;
                }

                v112 = v652 - 1;
                LODWORD(v12) = v674;
              }

              while (v652 != 1);
              goto LABEL_658;
            case 12:
              v645 = v23;
              v646 = v51;
              v675 = v12;
              v143 = v31;
              v644 = v32;
              v144 = -v32;
              v145 = v702[0];
              v146 = 8 * v31;
              do
              {
                v147 = v675;
                do
                {
                  v148 = HIWORD(*v50);
                  if (!v39)
                  {
                    LOWORD(v148) = -1;
                  }

                  rgba64_DpluslDA(v52, *v52, *v50, v148);
                  v149 = v50 + 8 * v143;
                  if (v149 >= v41)
                  {
                    v150 = v144;
                  }

                  else
                  {
                    v150 = 0;
                  }

                  v50 = v149 + 8 * v150;
                  v52 = (v52 + v146);
                  --v147;
                }

                while (v147);
                v52 += v693;
                v151 = v698;
                v152 = v698 + 8 * v696;
                v153 = -(v696 * v643);
                if (v152 < v695)
                {
                  v153 = 0;
                }

                v154 = v152 + 8 * v153;
                v155 = v41 + 8 * v153 + 8 * v696;
                if (v695)
                {
                  v41 = v155;
                  v151 = v154;
                }

                v698 = v151;
                if (v695)
                {
                  v50 = v154;
                }

                else
                {
                  v50 += 8 * v696;
                }

                --v145;
              }

              while (v145);
              goto LABEL_658;
            case 13:
              v645 = v23;
              v646 = v51;
              v684 = v12;
              v331 = v31;
              v644 = v32;
              v332 = -v32;
              v333 = v702[0];
              v334 = 8 * v31;
              while (1)
              {
                v661 = v333;
                v335 = v684;
                do
                {
                  if (!v39)
                  {
                    LODWORD(v336) = 0xFFFF;
LABEL_457:
                    v337 = *v52;
                    if (v700)
                    {
                      v338 = HIWORD(v337);
                      v339 = *v50;
                      if (!HIWORD(v337))
                      {
                        v340 = v339 & 0xFFFFFFFFFFFFLL | (v336 << 48);
LABEL_462:
                        *v52 = v340;
                        goto LABEL_463;
                      }
                    }

                    else
                    {
                      v339 = *v50;
                      LODWORD(v338) = 0xFFFF;
                    }

                    v340 = PDAmultiplyPDA_15236(v337, v338, v339, v336);
                    goto LABEL_462;
                  }

                  v336 = HIWORD(*v50);
                  if (v336)
                  {
                    goto LABEL_457;
                  }

LABEL_463:
                  v341 = v50 + 8 * v331;
                  if (v341 >= v41)
                  {
                    v342 = v332;
                  }

                  else
                  {
                    v342 = 0;
                  }

                  v50 = v341 + 8 * v342;
                  v52 = (v52 + v334);
                  --v335;
                }

                while (v335);
                v52 += v693;
                v343 = v698;
                v344 = v698 + 8 * v696;
                v345 = -(v696 * v643);
                if (v344 < v695)
                {
                  v345 = 0;
                }

                v346 = v344 + 8 * v345;
                v347 = v41 + 8 * v345 + 8 * v696;
                if (v695)
                {
                  v41 = v347;
                  v343 = v346;
                }

                v698 = v343;
                if (v695)
                {
                  v50 = v346;
                }

                else
                {
                  v50 += 8 * v696;
                }

                v333 = v661 - 1;
                if (v661 == 1)
                {
                  goto LABEL_658;
                }
              }

            case 14:
              v645 = v23;
              v646 = v51;
              v673 = v12;
              v93 = v31;
              v644 = v32;
              v94 = -v32;
              v95 = v702[0];
              v96 = 8 * v31;
              while (1)
              {
                v651 = v95;
                v97 = v673;
                do
                {
                  if (!v39)
                  {
                    LODWORD(v98) = 0xFFFF;
LABEL_121:
                    v99 = *v52;
                    if (v700)
                    {
                      v100 = HIWORD(v99);
                      v101 = *v50;
                      if (!HIWORD(v99))
                      {
                        v102 = v101 & 0xFFFFFFFFFFFFLL | (v98 << 48);
LABEL_126:
                        *v52 = v102;
                        goto LABEL_127;
                      }
                    }

                    else
                    {
                      v101 = *v50;
                      LODWORD(v100) = 0xFFFF;
                    }

                    v102 = PDAscreenPDA_15237(v99, v100, v101, v98);
                    goto LABEL_126;
                  }

                  v98 = HIWORD(*v50);
                  if (v98)
                  {
                    goto LABEL_121;
                  }

LABEL_127:
                  v103 = v50 + 8 * v93;
                  if (v103 >= v41)
                  {
                    v104 = v94;
                  }

                  else
                  {
                    v104 = 0;
                  }

                  v50 = v103 + 8 * v104;
                  v52 = (v52 + v96);
                  --v97;
                }

                while (v97);
                v52 += v693;
                v105 = v698;
                v106 = v698 + 8 * v696;
                v107 = -(v696 * v643);
                if (v106 < v695)
                {
                  v107 = 0;
                }

                v108 = v106 + 8 * v107;
                v109 = v41 + 8 * v107 + 8 * v696;
                if (v695)
                {
                  v41 = v109;
                  v105 = v108;
                }

                v698 = v105;
                if (v695)
                {
                  v50 = v108;
                }

                else
                {
                  v50 += 8 * v696;
                }

                v95 = v651 - 1;
                if (v651 == 1)
                {
                  goto LABEL_658;
                }
              }

            case 15:
              v645 = v23;
              v646 = v51;
              v679 = v12;
              v216 = v31;
              v644 = v32;
              v217 = -v32;
              v218 = v702[0];
              v219 = 8 * v31;
              while (1)
              {
                v656 = v218;
                v220 = v679;
                do
                {
                  if (!v39)
                  {
                    LODWORD(v221) = 0xFFFF;
LABEL_292:
                    v222 = *v52;
                    if (v700)
                    {
                      v223 = HIWORD(v222);
                      v224 = *v50;
                      if (!HIWORD(v222))
                      {
                        v225 = v224 & 0xFFFFFFFFFFFFLL | (v221 << 48);
LABEL_297:
                        *v52 = v225;
                        goto LABEL_298;
                      }
                    }

                    else
                    {
                      v224 = *v50;
                      LODWORD(v223) = 0xFFFF;
                    }

                    v225 = PDAoverlayPDA_15238(v222, v223, v224, v221);
                    goto LABEL_297;
                  }

                  v221 = HIWORD(*v50);
                  if (v221)
                  {
                    goto LABEL_292;
                  }

LABEL_298:
                  v226 = v50 + 8 * v216;
                  if (v226 >= v41)
                  {
                    v227 = v217;
                  }

                  else
                  {
                    v227 = 0;
                  }

                  v50 = v226 + 8 * v227;
                  v52 = (v52 + v219);
                  --v220;
                }

                while (v220);
                v52 += v693;
                v228 = v698;
                v229 = v698 + 8 * v696;
                v230 = -(v696 * v643);
                if (v229 < v695)
                {
                  v230 = 0;
                }

                v231 = v229 + 8 * v230;
                v232 = v41 + 8 * v230 + 8 * v696;
                if (v695)
                {
                  v41 = v232;
                  v228 = v231;
                }

                v698 = v228;
                if (v695)
                {
                  v50 = v231;
                }

                else
                {
                  v50 += 8 * v696;
                }

                v218 = v656 - 1;
                if (v656 == 1)
                {
                  goto LABEL_658;
                }
              }

            case 16:
              v645 = v23;
              v646 = v51;
              v672 = v12;
              v76 = v31;
              v644 = v32;
              v77 = -v32;
              v78 = v702[0];
              v79 = 8 * v31;
              while (1)
              {
                v650 = v78;
                v80 = v672;
                do
                {
                  if (!v39)
                  {
                    LODWORD(v81) = 0xFFFF;
LABEL_96:
                    v82 = *v52;
                    if (v700)
                    {
                      v83 = HIWORD(v82);
                      v84 = *v50;
                      if (!HIWORD(v82))
                      {
                        v85 = v84 & 0xFFFFFFFFFFFFLL | (v81 << 48);
LABEL_101:
                        *v52 = v85;
                        goto LABEL_102;
                      }
                    }

                    else
                    {
                      v84 = *v50;
                      LODWORD(v83) = 0xFFFF;
                    }

                    v85 = PDAdarkenPDA_15240(v82, v83, v84, v81);
                    goto LABEL_101;
                  }

                  v81 = HIWORD(*v50);
                  if (v81)
                  {
                    goto LABEL_96;
                  }

LABEL_102:
                  v86 = v50 + 8 * v76;
                  if (v86 >= v41)
                  {
                    v87 = v77;
                  }

                  else
                  {
                    v87 = 0;
                  }

                  v50 = v86 + 8 * v87;
                  v52 = (v52 + v79);
                  --v80;
                }

                while (v80);
                v52 += v693;
                v88 = v698;
                v89 = v698 + 8 * v696;
                v90 = -(v696 * v643);
                if (v89 < v695)
                {
                  v90 = 0;
                }

                v91 = v89 + 8 * v90;
                v92 = v41 + 8 * v90 + 8 * v696;
                if (v695)
                {
                  v41 = v92;
                  v88 = v91;
                }

                v698 = v88;
                if (v695)
                {
                  v50 = v91;
                }

                else
                {
                  v50 += 8 * v696;
                }

                v78 = v650 - 1;
                if (v650 == 1)
                {
                  goto LABEL_658;
                }
              }

            case 17:
              v645 = v23;
              v646 = v51;
              v680 = v12;
              v268 = v31;
              v644 = v32;
              v269 = -v32;
              v270 = v702[0];
              v271 = 8 * v31;
              while (1)
              {
                v658 = v270;
                v272 = v680;
                do
                {
                  if (!v39)
                  {
                    LODWORD(v273) = 0xFFFF;
LABEL_367:
                    v274 = *v52;
                    if (v700)
                    {
                      v275 = HIWORD(v274);
                      v276 = *v50;
                      if (!HIWORD(v274))
                      {
                        v277 = v276 & 0xFFFFFFFFFFFFLL | (v273 << 48);
LABEL_372:
                        *v52 = v277;
                        goto LABEL_373;
                      }
                    }

                    else
                    {
                      v276 = *v50;
                      LODWORD(v275) = 0xFFFF;
                    }

                    v277 = PDAlightenPDA_15239(v274, v275, v276, v273);
                    goto LABEL_372;
                  }

                  v273 = HIWORD(*v50);
                  if (v273)
                  {
                    goto LABEL_367;
                  }

LABEL_373:
                  v278 = v50 + 8 * v268;
                  if (v278 >= v41)
                  {
                    v279 = v269;
                  }

                  else
                  {
                    v279 = 0;
                  }

                  v50 = v278 + 8 * v279;
                  v52 = (v52 + v271);
                  --v272;
                }

                while (v272);
                v52 += v693;
                v280 = v698;
                v281 = v698 + 8 * v696;
                v282 = -(v696 * v643);
                if (v281 < v695)
                {
                  v282 = 0;
                }

                v283 = v281 + 8 * v282;
                v284 = v41 + 8 * v282 + 8 * v696;
                if (v695)
                {
                  v41 = v284;
                  v280 = v283;
                }

                v698 = v280;
                if (v695)
                {
                  v50 = v283;
                }

                else
                {
                  v50 += 8 * v696;
                }

                v270 = v658 - 1;
                if (v658 == 1)
                {
                  goto LABEL_658;
                }
              }

            case 18:
              v645 = v23;
              v646 = v51;
              v686 = v12;
              v364 = v31;
              v644 = v32;
              v365 = -v32;
              v366 = v702[0];
              v367 = 8 * v31;
              while (1)
              {
                v663 = v366;
                v368 = v686;
                do
                {
                  if (!v39)
                  {
                    LODWORD(v369) = 0xFFFF;
LABEL_505:
                    v370 = *v52;
                    if (v700)
                    {
                      v371 = HIWORD(v370);
                      v372 = *v50;
                      if (!HIWORD(v370))
                      {
                        v373 = v372 & 0xFFFFFFFFFFFFLL | (v369 << 48);
LABEL_510:
                        *v52 = v373;
                        goto LABEL_511;
                      }
                    }

                    else
                    {
                      v372 = *v50;
                      LODWORD(v371) = 0xFFFF;
                    }

                    v373 = PDAcolordodgePDA_15241(v370, v371, v372, v369);
                    goto LABEL_510;
                  }

                  v369 = HIWORD(*v50);
                  if (v369)
                  {
                    goto LABEL_505;
                  }

LABEL_511:
                  v374 = v50 + 8 * v364;
                  if (v374 >= v41)
                  {
                    v375 = v365;
                  }

                  else
                  {
                    v375 = 0;
                  }

                  v50 = v374 + 8 * v375;
                  v52 = (v52 + v367);
                  --v368;
                }

                while (v368);
                v52 += v693;
                v376 = v698;
                v377 = v698 + 8 * v696;
                v378 = -(v696 * v643);
                if (v377 < v695)
                {
                  v378 = 0;
                }

                v379 = v377 + 8 * v378;
                v380 = v41 + 8 * v378 + 8 * v696;
                if (v695)
                {
                  v41 = v380;
                  v376 = v379;
                }

                v698 = v376;
                if (v695)
                {
                  v50 = v379;
                }

                else
                {
                  v50 += 8 * v696;
                }

                v366 = v663 - 1;
                if (v663 == 1)
                {
                  goto LABEL_658;
                }
              }

            case 19:
              v645 = v23;
              v646 = v51;
              v689 = v12;
              v423 = v31;
              v644 = v32;
              v424 = -v32;
              v425 = v702[0];
              v426 = 8 * v31;
              while (1)
              {
                v666 = v425;
                v427 = v689;
                do
                {
                  if (!v39)
                  {
                    LODWORD(v428) = 0xFFFF;
LABEL_589:
                    v429 = *v52;
                    if (v700)
                    {
                      v430 = HIWORD(v429);
                      v431 = *v50;
                      if (!HIWORD(v429))
                      {
                        v432 = v431 & 0xFFFFFFFFFFFFLL | (v428 << 48);
LABEL_594:
                        *v52 = v432;
                        goto LABEL_595;
                      }
                    }

                    else
                    {
                      v431 = *v50;
                      LODWORD(v430) = 0xFFFF;
                    }

                    v432 = PDAcolorburnPDA_15242(v429, v430, v431, v428);
                    goto LABEL_594;
                  }

                  v428 = HIWORD(*v50);
                  if (v428)
                  {
                    goto LABEL_589;
                  }

LABEL_595:
                  v433 = v50 + 8 * v423;
                  if (v433 >= v41)
                  {
                    v434 = v424;
                  }

                  else
                  {
                    v434 = 0;
                  }

                  v50 = v433 + 8 * v434;
                  v52 = (v52 + v426);
                  --v427;
                }

                while (v427);
                v52 += v693;
                v435 = v698;
                v436 = v698 + 8 * v696;
                v437 = -(v696 * v643);
                if (v436 < v695)
                {
                  v437 = 0;
                }

                v438 = v436 + 8 * v437;
                v439 = v41 + 8 * v437 + 8 * v696;
                if (v695)
                {
                  v41 = v439;
                  v435 = v438;
                }

                v698 = v435;
                if (v695)
                {
                  v50 = v438;
                }

                else
                {
                  v50 += 8 * v696;
                }

                v425 = v666 - 1;
                if (v666 == 1)
                {
                  goto LABEL_658;
                }
              }

            case 20:
              v645 = v23;
              v646 = v51;
              v681 = v12;
              v285 = v31;
              v644 = v32;
              v286 = -v32;
              v287 = v702[0];
              v288 = 8 * v31;
              while (1)
              {
                v659 = v287;
                v289 = v681;
                do
                {
                  if (!v39)
                  {
                    LODWORD(v290) = 0xFFFF;
LABEL_392:
                    v291 = *v52;
                    if (v700)
                    {
                      v292 = HIWORD(v291);
                      v293 = *v50;
                      if (!HIWORD(v291))
                      {
                        v294 = v293 & 0xFFFFFFFFFFFFLL | (v290 << 48);
LABEL_397:
                        *v52 = v294;
                        goto LABEL_398;
                      }
                    }

                    else
                    {
                      v293 = *v50;
                      LODWORD(v292) = 0xFFFF;
                    }

                    v294 = PDAsoftlightPDA_15244(v291, v292, v293, v290);
                    goto LABEL_397;
                  }

                  v290 = HIWORD(*v50);
                  if (v290)
                  {
                    goto LABEL_392;
                  }

LABEL_398:
                  v295 = v50 + 8 * v285;
                  if (v295 >= v41)
                  {
                    v296 = v286;
                  }

                  else
                  {
                    v296 = 0;
                  }

                  v50 = v295 + 8 * v296;
                  v52 = (v52 + v288);
                  --v289;
                }

                while (v289);
                v52 += v693;
                v297 = v698;
                v298 = v698 + 8 * v696;
                v299 = -(v696 * v643);
                if (v298 < v695)
                {
                  v299 = 0;
                }

                v300 = v298 + 8 * v299;
                v301 = v41 + 8 * v299 + 8 * v696;
                if (v695)
                {
                  v41 = v301;
                  v297 = v300;
                }

                v698 = v297;
                if (v695)
                {
                  v50 = v300;
                }

                else
                {
                  v50 += 8 * v696;
                }

                v287 = v659 - 1;
                if (v659 == 1)
                {
                  goto LABEL_658;
                }
              }

            case 21:
              v645 = v23;
              v646 = v51;
              v683 = v12;
              v314 = v31;
              v644 = v32;
              v315 = -v32;
              v316 = v702[0];
              v317 = 8 * v31;
              while (1)
              {
                v660 = v316;
                v318 = v683;
                do
                {
                  if (!v39)
                  {
                    LODWORD(v319) = 0xFFFF;
LABEL_432:
                    v320 = *v52;
                    if (v700)
                    {
                      v321 = HIWORD(v320);
                      v322 = *v50;
                      if (!HIWORD(v320))
                      {
                        v323 = v322 & 0xFFFFFFFFFFFFLL | (v319 << 48);
LABEL_437:
                        *v52 = v323;
                        goto LABEL_438;
                      }
                    }

                    else
                    {
                      v322 = *v50;
                      LODWORD(v321) = 0xFFFF;
                    }

                    v323 = PDAhardlightPDA_15243(v320, v321, v322, v319);
                    goto LABEL_437;
                  }

                  v319 = HIWORD(*v50);
                  if (v319)
                  {
                    goto LABEL_432;
                  }

LABEL_438:
                  v324 = v50 + 8 * v314;
                  if (v324 >= v41)
                  {
                    v325 = v315;
                  }

                  else
                  {
                    v325 = 0;
                  }

                  v50 = v324 + 8 * v325;
                  v52 = (v52 + v317);
                  --v318;
                }

                while (v318);
                v52 += v693;
                v326 = v698;
                v327 = v698 + 8 * v696;
                v328 = -(v696 * v643);
                if (v327 < v695)
                {
                  v328 = 0;
                }

                v329 = v327 + 8 * v328;
                v330 = v41 + 8 * v328 + 8 * v696;
                if (v695)
                {
                  v41 = v330;
                  v326 = v329;
                }

                v698 = v326;
                if (v695)
                {
                  v50 = v329;
                }

                else
                {
                  v50 += 8 * v696;
                }

                v316 = v660 - 1;
                if (v660 == 1)
                {
                  goto LABEL_658;
                }
              }

            case 22:
              v645 = v23;
              v646 = v51;
              v688 = v12;
              v406 = v31;
              v644 = v32;
              v407 = -v32;
              v408 = v702[0];
              v409 = 8 * v31;
              while (1)
              {
                v665 = v408;
                v410 = v688;
                do
                {
                  if (!v39)
                  {
                    LODWORD(v411) = 0xFFFF;
LABEL_564:
                    v412 = *v52;
                    if (v700)
                    {
                      v413 = HIWORD(v412);
                      v414 = *v50;
                      if (!HIWORD(v412))
                      {
                        v415 = v414 & 0xFFFFFFFFFFFFLL | (v411 << 48);
LABEL_569:
                        *v52 = v415;
                        goto LABEL_570;
                      }
                    }

                    else
                    {
                      v414 = *v50;
                      LODWORD(v413) = 0xFFFF;
                    }

                    v415 = PDAdifferencePDA_15245(v412, v413, v414, v411);
                    goto LABEL_569;
                  }

                  v411 = HIWORD(*v50);
                  if (v411)
                  {
                    goto LABEL_564;
                  }

LABEL_570:
                  v416 = v50 + 8 * v406;
                  if (v416 >= v41)
                  {
                    v417 = v407;
                  }

                  else
                  {
                    v417 = 0;
                  }

                  v50 = v416 + 8 * v417;
                  v52 = (v52 + v409);
                  --v410;
                }

                while (v410);
                v52 += v693;
                v418 = v698;
                v419 = v698 + 8 * v696;
                v420 = -(v696 * v643);
                if (v419 < v695)
                {
                  v420 = 0;
                }

                v421 = v419 + 8 * v420;
                v422 = v41 + 8 * v420 + 8 * v696;
                if (v695)
                {
                  v41 = v422;
                  v418 = v421;
                }

                v698 = v418;
                if (v695)
                {
                  v50 = v421;
                }

                else
                {
                  v50 += 8 * v696;
                }

                v408 = v665 - 1;
                if (v665 == 1)
                {
                  goto LABEL_658;
                }
              }

            case 23:
              v645 = v23;
              v646 = v51;
              v690 = v12;
              v440 = v31;
              v644 = v32;
              v441 = -v32;
              v442 = v702[0];
              v443 = 8 * v31;
              while (1)
              {
                v667 = v442;
                v444 = v690;
                do
                {
                  if (!v39)
                  {
                    LODWORD(v445) = 0xFFFF;
LABEL_614:
                    v446 = *v52;
                    if (v700)
                    {
                      v447 = HIWORD(v446);
                      v448 = *v50;
                      if (!HIWORD(v446))
                      {
                        v449 = v448 & 0xFFFFFFFFFFFFLL | (v445 << 48);
LABEL_619:
                        *v52 = v449;
                        goto LABEL_620;
                      }
                    }

                    else
                    {
                      v448 = *v50;
                      LODWORD(v447) = 0xFFFF;
                    }

                    v449 = PDAexclusionPDA_15246(v446, v447, v448, v445);
                    goto LABEL_619;
                  }

                  v445 = HIWORD(*v50);
                  if (v445)
                  {
                    goto LABEL_614;
                  }

LABEL_620:
                  v450 = v50 + 8 * v440;
                  if (v450 >= v41)
                  {
                    v451 = v441;
                  }

                  else
                  {
                    v451 = 0;
                  }

                  v50 = v450 + 8 * v451;
                  v52 = (v52 + v443);
                  --v444;
                }

                while (v444);
                v52 += v693;
                v452 = v698;
                v453 = v698 + 8 * v696;
                v454 = -(v696 * v643);
                if (v453 < v695)
                {
                  v454 = 0;
                }

                v455 = v453 + 8 * v454;
                v456 = v41 + 8 * v454 + 8 * v696;
                if (v695)
                {
                  v41 = v456;
                  v452 = v455;
                }

                v698 = v452;
                if (v695)
                {
                  v50 = v455;
                }

                else
                {
                  v50 += 8 * v696;
                }

                v442 = v667 - 1;
                if (v667 == 1)
                {
                  goto LABEL_658;
                }
              }

            case 24:
              v645 = v23;
              v646 = v51;
              v678 = v12;
              v185 = v31;
              v644 = v32;
              v186 = -v32;
              v187 = v702[0];
              v188 = 8 * v31;
              while (1)
              {
                v654 = v187;
                v189 = v678;
                do
                {
                  if (!v39)
                  {
                    LODWORD(v190) = 0xFFFF;
LABEL_248:
                    v191 = *v52;
                    if (v700)
                    {
                      v192 = HIWORD(v191);
                      v193 = *v50;
                      if (!HIWORD(v191))
                      {
                        v194 = v193 & 0xFFFFFFFFFFFFLL | (v190 << 48);
LABEL_253:
                        *v52 = v194;
                        goto LABEL_254;
                      }
                    }

                    else
                    {
                      v193 = *v50;
                      LODWORD(v192) = 0xFFFF;
                    }

                    v194 = PDAhuePDA_15247(v191, v192, v193, v190);
                    goto LABEL_253;
                  }

                  v190 = HIWORD(*v50);
                  if (v190)
                  {
                    goto LABEL_248;
                  }

LABEL_254:
                  v195 = v50 + 8 * v185;
                  if (v195 >= v41)
                  {
                    v196 = v186;
                  }

                  else
                  {
                    v196 = 0;
                  }

                  v50 = v195 + 8 * v196;
                  v52 = (v52 + v188);
                  --v189;
                }

                while (v189);
                v52 += v693;
                v197 = v698;
                v198 = v698 + 8 * v696;
                v199 = -(v696 * v643);
                if (v198 < v695)
                {
                  v199 = 0;
                }

                v200 = v198 + 8 * v199;
                v201 = v41 + 8 * v199 + 8 * v696;
                if (v695)
                {
                  v41 = v201;
                  v197 = v200;
                }

                v698 = v197;
                if (v695)
                {
                  v50 = v200;
                }

                else
                {
                  v50 += 8 * v696;
                }

                v187 = v654 - 1;
                if (v654 == 1)
                {
                  goto LABEL_658;
                }
              }

            case 25:
              v645 = v23;
              v646 = v51;
              v677 = v12;
              v168 = v31;
              v644 = v32;
              v169 = -v32;
              v170 = v702[0];
              v171 = 8 * v31;
              while (1)
              {
                v653 = v170;
                v172 = v677;
                do
                {
                  if (!v39)
                  {
                    LODWORD(v173) = 0xFFFF;
LABEL_223:
                    v174 = *v52;
                    if (v700)
                    {
                      v175 = HIWORD(v174);
                      v176 = *v50;
                      if (!HIWORD(v174))
                      {
                        v177 = v176 & 0xFFFFFFFFFFFFLL | (v173 << 48);
LABEL_228:
                        *v52 = v177;
                        goto LABEL_229;
                      }
                    }

                    else
                    {
                      v176 = *v50;
                      LODWORD(v175) = 0xFFFF;
                    }

                    v177 = PDAsaturationPDA_15248(v174, v175, v176, v173);
                    goto LABEL_228;
                  }

                  v173 = HIWORD(*v50);
                  if (v173)
                  {
                    goto LABEL_223;
                  }

LABEL_229:
                  v178 = v50 + 8 * v168;
                  if (v178 >= v41)
                  {
                    v179 = v169;
                  }

                  else
                  {
                    v179 = 0;
                  }

                  v50 = v178 + 8 * v179;
                  v52 = (v52 + v171);
                  --v172;
                }

                while (v172);
                v52 += v693;
                v180 = v698;
                v181 = v698 + 8 * v696;
                v182 = -(v696 * v643);
                if (v181 < v695)
                {
                  v182 = 0;
                }

                v183 = v181 + 8 * v182;
                v184 = v41 + 8 * v182 + 8 * v696;
                if (v695)
                {
                  v41 = v184;
                  v180 = v183;
                }

                v698 = v180;
                if (v695)
                {
                  v50 = v183;
                }

                else
                {
                  v50 += 8 * v696;
                }

                v170 = v653 - 1;
                if (v653 == 1)
                {
                  goto LABEL_658;
                }
              }

            case 26:
              v645 = v23;
              v646 = v51;
              v691 = v12;
              v457 = v31;
              v644 = v32;
              v458 = -v32;
              v459 = v702[0];
              v460 = 8 * v31;
              while (1)
              {
                v668 = v459;
                v461 = v691;
                do
                {
                  if (v39)
                  {
                    v462 = HIWORD(*v50);
                    if (!v462)
                    {
                      goto LABEL_646;
                    }

                    if (!v700)
                    {
LABEL_643:
                      v465 = *v50;
                      v463 = *v52;
                      LODWORD(v464) = 0xFFFF;
LABEL_644:
                      v466 = PDAluminosityPDA_15249(v465, v462, v463, v464);
                      goto LABEL_645;
                    }
                  }

                  else
                  {
                    LODWORD(v462) = 0xFFFF;
                    if (!v700)
                    {
                      goto LABEL_643;
                    }
                  }

                  v463 = *v52;
                  v464 = HIWORD(*v52);
                  v465 = *v50;
                  if (v464)
                  {
                    goto LABEL_644;
                  }

                  v466 = v465 & 0xFFFFFFFFFFFFLL | (v462 << 48);
LABEL_645:
                  *v52 = v466;
LABEL_646:
                  v467 = v50 + 8 * v457;
                  if (v467 >= v41)
                  {
                    v468 = v458;
                  }

                  else
                  {
                    v468 = 0;
                  }

                  v50 = v467 + 8 * v468;
                  v52 = (v52 + v460);
                  --v461;
                }

                while (v461);
                v52 += v693;
                v469 = v698;
                v470 = v698 + 8 * v696;
                v471 = -(v696 * v643);
                if (v470 < v695)
                {
                  v471 = 0;
                }

                v472 = v470 + 8 * v471;
                v473 = v41 + 8 * v471 + 8 * v696;
                if (v695)
                {
                  v41 = v473;
                  v469 = v472;
                }

                v698 = v469;
                if (v695)
                {
                  v50 = v472;
                }

                else
                {
                  v50 += 8 * v696;
                }

                v459 = v668 - 1;
                if (v668 == 1)
                {
                  goto LABEL_658;
                }
              }

            case 27:
              v645 = v23;
              v646 = v51;
              v671 = v12;
              v59 = v31;
              v644 = v32;
              v60 = -v32;
              v61 = v702[0];
              v62 = 8 * v31;
              break;
            default:
              v40 = v23;
              goto LABEL_634;
          }

          break;
        }

LABEL_66:
        v649 = v61;
        v63 = v671;
        while (1)
        {
          if (v39)
          {
            v64 = HIWORD(*v50);
            if (!v64)
            {
              goto LABEL_77;
            }
          }

          else
          {
            LODWORD(v64) = 0xFFFF;
          }

          v65 = *v52;
          if (!v700)
          {
            break;
          }

          v66 = HIWORD(v65);
          v67 = *v50;
          if (HIWORD(v65))
          {
            goto LABEL_75;
          }

          v68 = v67 & 0xFFFFFFFFFFFFLL | (v64 << 48);
LABEL_76:
          *v52 = v68;
LABEL_77:
          v69 = v50 + 8 * v59;
          if (v69 >= v41)
          {
            v70 = v60;
          }

          else
          {
            v70 = 0;
          }

          v50 = v69 + 8 * v70;
          v52 = (v52 + v62);
          if (!--v63)
          {
            v52 += v693;
            v71 = v698;
            v72 = v698 + 8 * v696;
            v73 = -(v696 * v643);
            if (v72 < v695)
            {
              v73 = 0;
            }

            v74 = v72 + 8 * v73;
            v75 = v41 + 8 * v73 + 8 * v696;
            if (v695)
            {
              v41 = v75;
              v71 = v74;
            }

            v698 = v71;
            if (v695)
            {
              v50 = v74;
            }

            else
            {
              v50 += 8 * v696;
            }

            v61 = v649 - 1;
            if (v649 == 1)
            {
LABEL_658:
              v702[0] = 0;
              v5 = v641;
              v40 = v645;
              v25 = v646;
              v32 = v644;
              goto LABEL_659;
            }

            goto LABEL_66;
          }
        }

        v67 = *v50;
        LODWORD(v66) = 0xFFFF;
LABEL_75:
        v68 = PDAluminosityPDA_15249(v65, v66, v67, v64);
        goto LABEL_76;
      }

      v693 = v24 - v12;
      if (v23)
      {
        v647 = 0;
        v48 = v26 % v32;
        v49 = v23 + 8 * v28 * (v27 % v643);
        v50 = v49 + 8 * v48;
        v41 = v49 + 8 * v32;
        v31 = 1;
        v696 = *(v5 + 76) >> 3;
        v698 = v50;
        v51 = *(v5 + 40) + 8 * v24 * *(v5 + 16) + 8 * *(v5 + 12);
        v52 = v51;
        v639 = v27 % v643;
        v640 = v48;
        goto LABEL_58;
      }

      v639 = *(v5 + 60);
      v640 = *(v5 + 56);
      v41 = 0;
      v31 = 1;
      v53 = v12;
LABEL_57:
      v647 = 0;
      v698 = 0;
      v695 = 0;
      v696 = v28 - v53;
      v50 = v23;
      v51 = v25;
      v52 = v25;
      goto LABEL_58;
    }

    v23 += 8 * v28 * v27 + 8 * v26;
    if (v28 == v24)
    {
      v29 = (v25 - v23) >> 3;
      if (v29 >= 1)
      {
        if (v29 <= v12)
        {
          v25 += 8 * v13;
          v32 = *(v5 + 28) >> 3;
          v23 += 8 * v13;
          v31 = 0xFFFFFFFFLL;
          goto LABEL_52;
        }

        v30 = v24 * (v14 - 1);
        if (v25 <= v23 + 8 * v30 + 8 * v12 - 8)
        {
          v25 += 8 * v30;
          v32 = -v24;
          v23 += 8 * v30;
          v31 = 1;
          v24 = -v24;
          goto LABEL_52;
        }
      }

      v31 = 1;
      v32 = *(v5 + 28) >> 3;
    }

    else
    {
      v31 = 1;
      v32 = *(v5 + 76) >> 3;
    }

LABEL_52:
    v639 = *(v5 + 60);
    v640 = *(v5 + 56);
    v39 = v9 != 0;
    if (v15)
    {
      v40 = v23;
      v643 = 0;
      v696 = v32;
      v698 = 0;
      v695 = 0;
      v41 = -1;
      goto LABEL_54;
    }

    v643 = 0;
    v53 = v31 * v12;
    v693 = v24 - v53;
    v41 = -1;
    v28 = v32;
    goto LABEL_57;
  }

  if (BYTE1(v8) != 4)
  {
    goto LABEL_24;
  }

  v712[0] = *(v5 + 4);
  v702[0] = v14;
  v17 = **(v5 + 88);
  v18 = HIWORD(v17);
  v19 = *(v5 + 28) >> 3;
  v20 = (*(v5 + 40) + 8 * v19 * *(v5 + 16) + 8 * *(v5 + 12));
  v694 = v20;
  v670 = *(v5 + 28);
  v692 = v19;
  if (v15)
  {
    shape_enum_clip_alloc(v2, v3, v15, 1, 1, 1, *(v5 + 104), *(v5 + 108), v12, v14);
    v22 = v21;
    if (v21)
    {
      goto LABEL_979;
    }

    return 1;
  }

  v697 = 0;
  while (2)
  {
    v699 = v19 - v12;
    v508 = v12;
    switch(v10)
    {
      case 0:
        v509 = v702[0];
        v510 = 8 * v12;
        goto LABEL_985;
      case 1:
        v578 = *(v5 + 88);
        if (v578)
        {
          CGSFillDRAM64(v20, v670 & 0xFFFFFFF8, 8 * v12, v702[0], v578, 8, 8, 1, 0, 0);
        }

        else
        {
          v510 = 8 * v12;
          v509 = v702[0];
LABEL_985:
          CGBlt_fillBytes(v510, v509, 0, v20, v670 & 0xFFFFFFF8);
        }

        goto LABEL_977;
      case 2:
        v555 = v12 >> 2;
        v556 = v12 & 3;
        v557 = v702[0];
        v558 = v555 + 1;
        do
        {
          v559 = v508;
          if (v508 >= 4)
          {
            v560 = v558;
            do
            {
              rgba64_DplusDM(v20, v17, *v20, ~HIWORD(v17));
              rgba64_DplusDM(v20 + 1, v17, *&v20[1], ~HIWORD(v17));
              rgba64_DplusDM(v20 + 2, v17, *&v20[2], ~HIWORD(v17));
              v562 = v20[3];
              v561 = v20 + 3;
              rgba64_DplusDM(v561, v17, v562, ~HIWORD(v17));
              v20 = v561 + 1;
              --v560;
            }

            while (v560 > 1);
            v559 = v556;
          }

          if (v559 < 1)
          {
            v564 = v20;
          }

          else
          {
            v563 = v559 + 1;
            v564 = v20;
            do
            {
              v565 = *v564++;
              rgba64_DplusDM(v20, v17, v565, ~HIWORD(v17));
              --v563;
              v20 = v564;
            }

            while (v563 > 1);
          }

          v20 = &v564[v699];
          --v557;
        }

        while (v557);
        v702[0] = 0;
        v5 = v641;
        goto LABEL_824;
      case 3:
        v533 = v10;
        v571 = v702[0];
        do
        {
          v572 = v12;
          do
          {
            v573 = v20->u16[3];
            if (v573 == 0xFFFF)
            {
              *v20 = v17;
            }

            else if (v20->i16[3])
            {
              rgba64_DM(v20, v17, v573);
            }

            else
            {
              *v20 = 0;
            }

            ++v20;
            --v572;
          }

          while (v572);
          v20 += v699;
          --v571;
        }

        while (v571);
        goto LABEL_931;
      case 4:
        v533 = v10;
        v534 = v702[0];
        do
        {
          v535 = v12;
          do
          {
            v536 = v20->i16[3];
            if (~v536 == 0xFFFF)
            {
              *v20 = v17;
            }

            else if (v536 == -1)
            {
              *v20 = 0;
            }

            else
            {
              rgba64_DM(v20, v17, ~v536);
            }

            ++v20;
            --v535;
          }

          while (v535);
          v20 += v699;
          --v534;
        }

        while (v534);
        goto LABEL_931;
      case 5:
        v533 = v10;
        v589 = v702[0];
        do
        {
          v590 = v12;
          v591 = v20;
          do
          {
            v592 = *v591++;
            rgba64_DMplusDM(v20, v17, HIWORD(v592), v592, ~HIWORD(v17));
            v20 = v591;
            --v590;
          }

          while (v590);
          v20 = &v591[v699];
          --v589;
        }

        while (v589);
        goto LABEL_931;
      case 6:
        v533 = v10;
        v603 = v702[0];
        do
        {
          v604 = v12;
          do
          {
            v605 = HIWORD(*v20);
            if (v605 != 0xFFFF)
            {
              if (~v605 == 0xFFFF)
              {
                *v20 = v17;
              }

              else
              {
                rgba64_DplusDM(v20, *v20, v17, ~v605);
              }
            }

            ++v20;
            --v604;
          }

          while (v604);
          v20 += v699;
          --v603;
        }

        while (v603);
        goto LABEL_931;
      case 7:
        v533 = v10;
        v574 = v702[0];
        do
        {
          v575 = v12;
          v576 = v20;
          do
          {
            v577 = *v576++;
            rgba64_DM(v20, v577, HIWORD(v17));
            v20 = v576;
            --v575;
          }

          while (v575);
          v20 = &v576[v699];
          --v574;
        }

        while (v574);
        goto LABEL_931;
      case 8:
        v533 = v10;
        v615 = v702[0];
        do
        {
          v616 = v12;
          v617 = v20;
          do
          {
            v618 = *v617++;
            rgba64_DM(v20, v618, ~HIWORD(v17));
            v20 = v617;
            --v616;
          }

          while (v616);
          v20 = &v617[v699];
          --v615;
        }

        while (v615);
        goto LABEL_931;
      case 9:
        v533 = v10;
        v541 = v702[0];
        do
        {
          v542 = v12;
          v543 = v20;
          do
          {
            v544 = *v543++;
            rgba64_DMplusDM(v20, v17, HIWORD(v544) ^ 0xFFFF, v544, HIWORD(v17));
            v20 = v543;
            --v542;
          }

          while (v542);
          v20 = &v543[v699];
          --v541;
        }

        while (v541);
        goto LABEL_931;
      case 10:
        v533 = v10;
        v611 = v702[0];
        do
        {
          v612 = v12;
          v613 = v20;
          do
          {
            v614 = *v613++;
            rgba64_DMplusDM(v20, v17, HIWORD(v614) ^ 0xFFFF, v614, ~HIWORD(v17));
            v20 = v613;
            --v612;
          }

          while (v612);
          v20 = &v613[v699];
          --v611;
        }

        while (v611);
        goto LABEL_931;
      case 11:
        v527 = v702[0];
        do
        {
          v528 = v12;
          v529 = v20;
          do
          {
            v531 = *v529++;
            v530 = v531;
            v532 = HIWORD(v531);
            if (!v700)
            {
              LOWORD(v532) = -1;
            }

            rgba64_DAplusdDA(v20, v530, v532, v17, HIWORD(v17));
            v20 = v529;
            --v528;
          }

          while (v528);
          v20 = &v529[v699];
          --v527;
          LODWORD(v12) = v508;
        }

        while (v527);
        v702[0] = 0;
LABEL_824:
        v10 = v642;
        goto LABEL_932;
      case 12:
        v533 = v10;
        v537 = v702[0];
        do
        {
          v538 = v12;
          v539 = v20;
          do
          {
            v540 = *v539++;
            rgba64_DpluslD(v20, v540, v17);
            v20 = v539;
            --v538;
          }

          while (v538);
          v20 = &v539[v699];
          --v537;
        }

        while (v537);
LABEL_931:
        v702[0] = 0;
        v10 = v533;
LABEL_932:
        v19 = v692;
        goto LABEL_977;
      case 13:
        if (!v18)
        {
          goto LABEL_977;
        }

        v511 = v19;
        v598 = v702[0];
        while (1)
        {
          v599 = v12;
          do
          {
            v600 = *v20;
            if (!v700)
            {
              LODWORD(v601) = 0xFFFF;
LABEL_898:
              v602 = PDAmultiplyPDA_15236(v600, v601, v17, HIWORD(v17));
              goto LABEL_899;
            }

            v601 = HIWORD(v600);
            v602 = v17;
            if (HIWORD(v600))
            {
              goto LABEL_898;
            }

LABEL_899:
            *v20++ = v602;
            --v599;
          }

          while (v599);
          v20 += v699;
          if (!--v598)
          {
            goto LABEL_976;
          }
        }

      case 14:
        if (!v18)
        {
          goto LABEL_977;
        }

        v511 = v19;
        v522 = v702[0];
        while (1)
        {
          v523 = v12;
          do
          {
            v524 = *v20;
            if (!v700)
            {
              LODWORD(v525) = 0xFFFF;
LABEL_759:
              v526 = PDAscreenPDA_15237(v524, v525, v17, HIWORD(v17));
              goto LABEL_760;
            }

            v525 = HIWORD(v524);
            v526 = v17;
            if (HIWORD(v524))
            {
              goto LABEL_759;
            }

LABEL_760:
            *v20++ = v526;
            --v523;
          }

          while (v523);
          v20 += v699;
          if (!--v522)
          {
            goto LABEL_976;
          }
        }

      case 15:
        if (!v18)
        {
          goto LABEL_977;
        }

        v511 = v19;
        v566 = v702[0];
        while (1)
        {
          v567 = v12;
          do
          {
            v568 = *v20;
            if (!v700)
            {
              LODWORD(v569) = 0xFFFF;
LABEL_832:
              v570 = PDAoverlayPDA_15238(v568, v569, v17, HIWORD(v17));
              goto LABEL_833;
            }

            v569 = HIWORD(v568);
            v570 = v17;
            if (HIWORD(v568))
            {
              goto LABEL_832;
            }

LABEL_833:
            *v20++ = v570;
            --v567;
          }

          while (v567);
          v20 += v699;
          if (!--v566)
          {
            goto LABEL_976;
          }
        }

      case 16:
        if (!v18)
        {
          goto LABEL_977;
        }

        v511 = v19;
        v517 = v702[0];
        while (1)
        {
          v518 = v12;
          do
          {
            v519 = *v20;
            if (!v700)
            {
              LODWORD(v520) = 0xFFFF;
LABEL_748:
              v521 = PDAdarkenPDA_15240(v519, v520, v17, HIWORD(v17));
              goto LABEL_749;
            }

            v520 = HIWORD(v519);
            v521 = v17;
            if (HIWORD(v519))
            {
              goto LABEL_748;
            }

LABEL_749:
            *v20++ = v521;
            --v518;
          }

          while (v518);
          v20 += v699;
          if (!--v517)
          {
            goto LABEL_976;
          }
        }

      case 17:
        if (!v18)
        {
          goto LABEL_977;
        }

        v511 = v19;
        v579 = v702[0];
        while (1)
        {
          v580 = v12;
          do
          {
            v581 = *v20;
            if (!v700)
            {
              LODWORD(v582) = 0xFFFF;
LABEL_860:
              v583 = PDAlightenPDA_15239(v581, v582, v17, HIWORD(v17));
              goto LABEL_861;
            }

            v582 = HIWORD(v581);
            v583 = v17;
            if (HIWORD(v581))
            {
              goto LABEL_860;
            }

LABEL_861:
            *v20++ = v583;
            --v580;
          }

          while (v580);
          v20 += v699;
          if (!--v579)
          {
            goto LABEL_976;
          }
        }

      case 18:
        if (!v18)
        {
          goto LABEL_977;
        }

        v511 = v19;
        v606 = v702[0];
        while (1)
        {
          v607 = v12;
          do
          {
            v608 = *v20;
            if (!v700)
            {
              LODWORD(v609) = 0xFFFF;
LABEL_918:
              v610 = PDAcolordodgePDA_15241(v608, v609, v17, HIWORD(v17));
              goto LABEL_919;
            }

            v609 = HIWORD(v608);
            v610 = v17;
            if (HIWORD(v608))
            {
              goto LABEL_918;
            }

LABEL_919:
            *v20++ = v610;
            --v607;
          }

          while (v607);
          v20 += v699;
          if (!--v606)
          {
            goto LABEL_976;
          }
        }

      case 19:
        if (!v18)
        {
          goto LABEL_977;
        }

        v511 = v19;
        v624 = v702[0];
        while (1)
        {
          v625 = v12;
          do
          {
            v626 = *v20;
            if (!v700)
            {
              LODWORD(v627) = 0xFFFF;
LABEL_951:
              v628 = PDAcolorburnPDA_15242(v626, v627, v17, HIWORD(v17));
              goto LABEL_952;
            }

            v627 = HIWORD(v626);
            v628 = v17;
            if (HIWORD(v626))
            {
              goto LABEL_951;
            }

LABEL_952:
            *v20++ = v628;
            --v625;
          }

          while (v625);
          v20 += v699;
          if (!--v624)
          {
            goto LABEL_976;
          }
        }

      case 20:
        if (!v18)
        {
          goto LABEL_977;
        }

        v511 = v19;
        v584 = v702[0];
        while (1)
        {
          v585 = v12;
          do
          {
            v586 = *v20;
            if (!v700)
            {
              LODWORD(v587) = 0xFFFF;
LABEL_871:
              v588 = PDAsoftlightPDA_15244(v586, v587, v17, HIWORD(v17));
              goto LABEL_872;
            }

            v587 = HIWORD(v586);
            v588 = v17;
            if (HIWORD(v586))
            {
              goto LABEL_871;
            }

LABEL_872:
            *v20++ = v588;
            --v585;
          }

          while (v585);
          v20 += v699;
          if (!--v584)
          {
            goto LABEL_976;
          }
        }

      case 21:
        if (!v18)
        {
          goto LABEL_977;
        }

        v511 = v19;
        v593 = v702[0];
        while (1)
        {
          v594 = v12;
          do
          {
            v595 = *v20;
            if (!v700)
            {
              LODWORD(v596) = 0xFFFF;
LABEL_887:
              v597 = PDAhardlightPDA_15243(v595, v596, v17, HIWORD(v17));
              goto LABEL_888;
            }

            v596 = HIWORD(v595);
            v597 = v17;
            if (HIWORD(v595))
            {
              goto LABEL_887;
            }

LABEL_888:
            *v20++ = v597;
            --v594;
          }

          while (v594);
          v20 += v699;
          if (!--v593)
          {
            goto LABEL_976;
          }
        }

      case 22:
        if (!v18)
        {
          goto LABEL_977;
        }

        v511 = v19;
        v619 = v702[0];
        while (1)
        {
          v620 = v12;
          do
          {
            v621 = *v20;
            if (!v700)
            {
              LODWORD(v622) = 0xFFFF;
LABEL_940:
              v623 = PDAdifferencePDA_15245(v621, v622, v17, HIWORD(v17));
              goto LABEL_941;
            }

            v622 = HIWORD(v621);
            v623 = v17;
            if (HIWORD(v621))
            {
              goto LABEL_940;
            }

LABEL_941:
            *v20++ = v623;
            --v620;
          }

          while (v620);
          v20 += v699;
          if (!--v619)
          {
            goto LABEL_976;
          }
        }

      case 23:
        if (!v18)
        {
          goto LABEL_977;
        }

        v511 = v19;
        v629 = v702[0];
        while (1)
        {
          v630 = v12;
          do
          {
            v631 = *v20;
            if (!v700)
            {
              LODWORD(v632) = 0xFFFF;
LABEL_962:
              v633 = PDAexclusionPDA_15246(v631, v632, v17, HIWORD(v17));
              goto LABEL_963;
            }

            v632 = HIWORD(v631);
            v633 = v17;
            if (HIWORD(v631))
            {
              goto LABEL_962;
            }

LABEL_963:
            *v20++ = v633;
            --v630;
          }

          while (v630);
          v20 += v699;
          if (!--v629)
          {
            goto LABEL_976;
          }
        }

      case 24:
        if (!v18)
        {
          goto LABEL_977;
        }

        v511 = v19;
        v550 = v702[0];
        while (1)
        {
          v551 = v12;
          do
          {
            v552 = *v20;
            if (!v700)
            {
              LODWORD(v553) = 0xFFFF;
LABEL_808:
              v554 = PDAhuePDA_15247(v552, v553, v17, HIWORD(v17));
              goto LABEL_809;
            }

            v553 = HIWORD(v552);
            v554 = v17;
            if (HIWORD(v552))
            {
              goto LABEL_808;
            }

LABEL_809:
            *v20++ = v554;
            --v551;
          }

          while (v551);
          v20 += v699;
          if (!--v550)
          {
            goto LABEL_976;
          }
        }

      case 25:
        if (!v18)
        {
          goto LABEL_977;
        }

        v511 = v19;
        v545 = v702[0];
        while (1)
        {
          v546 = v12;
          do
          {
            v547 = *v20;
            if (!v700)
            {
              LODWORD(v548) = 0xFFFF;
LABEL_797:
              v549 = PDAsaturationPDA_15248(v547, v548, v17, HIWORD(v17));
              goto LABEL_798;
            }

            v548 = HIWORD(v547);
            v549 = v17;
            if (HIWORD(v547))
            {
              goto LABEL_797;
            }

LABEL_798:
            *v20++ = v549;
            --v546;
          }

          while (v546);
          v20 += v699;
          if (!--v545)
          {
            goto LABEL_976;
          }
        }

      case 26:
        if (!v18)
        {
          goto LABEL_977;
        }

        v511 = v19;
        v634 = v702[0];
        do
        {
          v635 = v12;
          do
          {
            v636 = *v20;
            if (!v700)
            {
              LODWORD(v637) = 0xFFFF;
LABEL_973:
              v638 = PDAluminosityPDA_15249(v17, HIWORD(v17), v636, v637);
              goto LABEL_974;
            }

            v637 = HIWORD(v636);
            v638 = v17;
            if (HIWORD(v636))
            {
              goto LABEL_973;
            }

LABEL_974:
            *v20++ = v638;
            --v635;
          }

          while (v635);
          v20 += v699;
          --v634;
        }

        while (v634);
LABEL_976:
        v702[0] = 0;
        v19 = v511;
LABEL_977:
        v20 = v694;
        v22 = v697;
        if (!v697)
        {
          return 1;
        }

        v701 = 0;
LABEL_979:
        if (shape_enum_clip_next(v22, &v701 + 1, &v701, v712, v702))
        {
          v697 = v22;
          v20 += v19 * v701 + SHIDWORD(v701);
          LODWORD(v12) = v712[0];
          continue;
        }

        v47 = v22;
LABEL_982:
        free(v47);
        return 1;
      case 27:
        if (!v18)
        {
          goto LABEL_977;
        }

        v511 = v19;
        v512 = v702[0];
        break;
      default:
        goto LABEL_977;
    }

    break;
  }

LABEL_732:
  v513 = v12;
  while (1)
  {
    v514 = *v20;
    if (v700)
    {
      v515 = HIWORD(v514);
      v516 = v17;
      if (!HIWORD(v514))
      {
        goto LABEL_738;
      }
    }

    else
    {
      LODWORD(v515) = 0xFFFF;
    }

    v516 = PDAluminosityPDA_15249(v514, v515, v17, HIWORD(v17));
LABEL_738:
    *v20++ = v516;
    if (!--v513)
    {
      v20 += v699;
      if (!--v512)
      {
        goto LABEL_976;
      }

      goto LABEL_732;
    }
  }
}

void rgba16_template_image_mark_method(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if ((a1 & 0x30) == 0x20)
  {
    if ((a3 & 0x80000000) != 0)
    {
      return;
    }

    v99 = VEC::template_mark_pixelshape_row<(CGCompositeOperation)0,_rgba16_t>;
    if (a3 <= 0x17)
    {
      v99 = *(&VEC::MethodList<_rgba16_t>::shapeMethods + a3);
    }

    v3 = *(a2 + 4);
    v4 = *(a2 + 8);
    v5 = v3;
    v107 = v4;
    v108 = v3;
    v6 = *(a2 + 28);
    v7 = *(a2 + 40);
    v8 = *(a2 + 48);
    v10 = *(a2 + 88);
    v9 = *(a2 + 96);
    v105 = v10;
    v11 = *(a2 + 136);
    v12 = *(a2 + 1) << 8;
    v13 = v6 >> 3;
    v97 = v8 != 0;
    v14 = v7 + 8 * (v6 >> 3) * *(a2 + 16) + 8 * *(a2 + 12);
    v106 = v14;
    v15 = *(a2 + 104);
    v16 = *(a2 + 108);
    v17 = *(a2 + 56);
    v18 = *(a2 + 60);
    v19 = *(a2 + 76);
    if (v12 != 256)
    {
      v101 = *(a2 + 64);
      v47 = v19 >> 3;
      v48 = (v19 >> 3) * *(a2 + 68);
      v85 = *(a2 + 68);
      v104 = v10;
      v49 = v10 + 8 * v48;
      v50 = v9 != 0;
      if (v11)
      {
        v24 = 1;
        v21 = v10;
LABEL_38:
        shape_enum_clip_alloc(a1, a2, v11, v24, v13, 1, v15, v16, v3, v4);
        v60 = v59;
        if (!v59)
        {
          return;
        }

        while (shape_enum_clip_next(v60, &v103 + 1, &v103, &v108, &v107))
        {
          v89 = v21;
          v91 = v14;
          v87 = v60;
          if (v49)
          {
            v71 = v14 + 8 * v13 * v103 + 8 * SHIDWORD(v103);
            v3 = v108;
            v72 = v21 + 8 * v47 * ((v103 + *(a2 + 60)) % v85);
            v21 = v72 + 8 * ((HIDWORD(v103) + *(a2 + 56)) % v101);
            v56 = v72 + 8 * v101;
            v104 = v56;
            LODWORD(v5) = v108;
            v10 = v21;
          }

          else
          {
            v3 = v108;
            LODWORD(v5) = v108 * v24;
            v71 = v14 + 8 * v13 * v103 + 8 * HIDWORD(v103) * v24;
            v21 += 8 * v103 * v101 + 8 * HIDWORD(v103) * v24;
            v47 = v101 - v108 * v24;
            v56 = v104;
          }

          v106 = v71;
          v105 = v21;
          v5 = v5;
          v4 = v107;
LABEL_50:
          v95 = v13;
          v62 = v13 - v5;
          v63 = v3 & ~(v3 >> 31);
          if ((v56 - v21) >> 3 >= v63)
          {
            v64 = v63;
          }

          else
          {
            v64 = (v56 - v21) >> 3;
          }

          v65 = v63 - v64;
          if (v4 >= 1)
          {
            v66 = 1;
          }

          else
          {
            v66 = v4;
          }

          v93 = v66;
          v67 = v4 + 1;
          do
          {
            v99(&v105, &v106, &v104, v101, v24, v50, v97, v65, v64);
            v106 += 8 * v62;
            if (v49)
            {
              v68 = v10 + 8 * v47;
              if (v68 >= v49)
              {
                v69 = -(v47 * v85);
              }

              else
              {
                v69 = 0;
              }

              v70 = v68 + 8 * v69;
              v104 += 8 * v69 + 8 * v47;
              v10 = v70;
            }

            else
            {
              v70 = v105 + 8 * v47;
            }

            v105 = v70;
            --v67;
          }

          while (v67 > 1);
          v107 = v93 - 1;
          v13 = v95;
          v21 = v89;
          v14 = v91;
          v60 = v87;
          if (!v87)
          {
            return;
          }

          v103 = 0;
        }

LABEL_92:
        free(v60);
        return;
      }

      v91 = v14;
      if (v10)
      {
        v87 = 0;
        v89 = v10;
        v55 = v10 + 8 * v47 * (v18 % v85);
        v21 = v55 + 8 * (v17 % v101);
        v56 = v55 + 8 * v101;
        v104 = v56;
        v105 = v21;
        v24 = 1;
        v10 = v21;
        goto LABEL_50;
      }

      v56 = 0;
      v21 = 0;
      v24 = 1;
LABEL_41:
      v49 = 0;
      v87 = 0;
      v89 = v21;
      v10 = 0;
      v47 -= v5;
      goto LABEL_50;
    }

    v20 = v19 >> 3;
    v21 = v10 + 8 * v20 * v18 + 8 * v17;
    v104 = -1;
    v105 = v21;
    v101 = v20;
    if (v20 != v13)
    {
      v24 = 1;
LABEL_36:
      v50 = v9 != 0;
      if (v11)
      {
        v85 = 0;
        v49 = 0;
        v10 = 0;
        v47 = v101;
        goto LABEL_38;
      }

      v91 = v14;
      v85 = 0;
      v5 = v24 * v3;
      v56 = -1;
      v47 = v101;
      goto LABEL_41;
    }

    v22 = (v14 - v21) >> 3;
    if (v22 >= 1)
    {
      if (v22 <= v3)
      {
        v14 = v14 + 8 * v3 - 8;
        v106 = v14;
        v21 = v21 + 8 * v3 - 8;
        v105 = v21;
        v24 = 0xFFFFFFFFLL;
        goto LABEL_35;
      }

      v23 = v13 * (v4 - 1);
      if (v14 <= v21 + 8 * v23 + 8 * v3 - 8)
      {
        v14 += 8 * v23;
        v106 = v14;
        v13 = -v13;
        v105 = v21 + 8 * v23;
        v24 = 1;
        v21 = v105;
        goto LABEL_35;
      }
    }

    v24 = 1;
LABEL_35:
    v101 = v13;
    goto LABEL_36;
  }

  if ((a3 & 0x80000000) != 0)
  {
    return;
  }

  v100 = VEC::template_mark_pixelshape_row<(CGCompositeOperation)0,_RGBA16_t>;
  if (a3 <= 0x17)
  {
    v100 = VEC::MethodList<_RGBA16_t>::shapeMethods[a3];
  }

  v25 = *(a2 + 4);
  v26 = *(a2 + 8);
  v27 = v25;
  v107 = v26;
  v108 = v25;
  v28 = *(a2 + 28);
  v29 = *(a2 + 40);
  v30 = *(a2 + 48);
  v32 = *(a2 + 88);
  v31 = *(a2 + 96);
  v105 = v32;
  v33 = *(a2 + 136);
  v34 = *(a2 + 1) << 8;
  v35 = v28 >> 3;
  v98 = v30 != 0;
  v36 = v29 + 8 * (v28 >> 3) * *(a2 + 16) + 8 * *(a2 + 12);
  v106 = v36;
  v37 = *(a2 + 104);
  v38 = *(a2 + 108);
  v39 = *(a2 + 56);
  v40 = *(a2 + 60);
  v41 = *(a2 + 76);
  if (v34 != 256)
  {
    v102 = *(a2 + 64);
    v51 = v41 >> 3;
    v52 = (v41 >> 3) * *(a2 + 68);
    v86 = *(a2 + 68);
    v104 = v32;
    v53 = v32 + 8 * v52;
    v54 = v31 != 0;
    if (v33)
    {
      v46 = 1;
      v43 = v32;
      goto LABEL_46;
    }

    v92 = v36;
    if (v32)
    {
      v88 = 0;
      v90 = v32;
      v57 = v32 + 8 * v51 * (v40 % v86);
      v43 = v57 + 8 * (v39 % v102);
      v58 = v57 + 8 * v102;
      v104 = v58;
      v105 = v43;
      v46 = 1;
      v32 = v43;
      goto LABEL_71;
    }

    v58 = 0;
    v43 = 0;
    v46 = 1;
LABEL_49:
    v53 = 0;
    v88 = 0;
    v90 = v43;
    v32 = 0;
    v51 -= v27;
    goto LABEL_71;
  }

  v42 = v41 >> 3;
  v43 = v32 + 8 * v42 * v40 + 8 * v39;
  v104 = -1;
  v105 = v43;
  v102 = v42;
  if (v42 != v35)
  {
    v46 = 1;
    goto LABEL_44;
  }

  v44 = (v36 - v43) >> 3;
  if (v44 >= 1)
  {
    if (v44 <= v25)
    {
      v36 = v36 + 8 * v25 - 8;
      v106 = v36;
      v43 = v43 + 8 * v25 - 8;
      v105 = v43;
      v46 = 0xFFFFFFFFLL;
      goto LABEL_43;
    }

    v45 = v35 * (v26 - 1);
    if (v36 <= v43 + 8 * v45 + 8 * v25 - 8)
    {
      v36 += 8 * v45;
      v106 = v36;
      v35 = -v35;
      v105 = v43 + 8 * v45;
      v46 = 1;
      v43 = v105;
      goto LABEL_43;
    }
  }

  v46 = 1;
LABEL_43:
  v102 = v35;
LABEL_44:
  v54 = v31 != 0;
  if (!v33)
  {
    v92 = v36;
    v86 = 0;
    v27 = v46 * v25;
    v58 = -1;
    v51 = v102;
    goto LABEL_49;
  }

  v86 = 0;
  v53 = 0;
  v32 = 0;
  v51 = v102;
LABEL_46:
  shape_enum_clip_alloc(a1, a2, v33, v46, v35, 1, v37, v38, v25, v26);
  v60 = v61;
  if (v61)
  {
    while (shape_enum_clip_next(v60, &v103 + 1, &v103, &v108, &v107))
    {
      v90 = v43;
      v92 = v36;
      v88 = v60;
      if (v53)
      {
        v82 = v36 + 8 * v35 * v103 + 8 * SHIDWORD(v103);
        v25 = v108;
        v83 = v43 + 8 * v51 * ((v103 + *(a2 + 60)) % v86);
        v43 = v83 + 8 * ((HIDWORD(v103) + *(a2 + 56)) % v102);
        v58 = v83 + 8 * v102;
        v104 = v58;
        LODWORD(v27) = v108;
        v32 = v43;
      }

      else
      {
        v25 = v108;
        LODWORD(v27) = v108 * v46;
        v82 = v36 + 8 * v35 * v103 + 8 * HIDWORD(v103) * v46;
        v43 += 8 * v103 * v102 + 8 * HIDWORD(v103) * v46;
        v51 = v102 - v108 * v46;
        v58 = v104;
      }

      v106 = v82;
      v105 = v43;
      v27 = v27;
      v26 = v107;
LABEL_71:
      v96 = v35;
      v73 = v35 - v27;
      v74 = v25 & ~(v25 >> 31);
      if ((v58 - v43) >> 3 >= v74)
      {
        v75 = v74;
      }

      else
      {
        v75 = (v58 - v43) >> 3;
      }

      v76 = v74 - v75;
      if (v26 >= 1)
      {
        v77 = 1;
      }

      else
      {
        v77 = v26;
      }

      v94 = v77;
      v78 = v26 + 1;
      do
      {
        v100(&v105, &v106, &v104, v102, v46, v54, v98, v76, v75);
        v106 += 8 * v73;
        if (v53)
        {
          v79 = v32 + 8 * v51;
          if (v79 >= v53)
          {
            v80 = -(v51 * v86);
          }

          else
          {
            v80 = 0;
          }

          v81 = v79 + 8 * v80;
          v104 += 8 * v80 + 8 * v51;
          v32 = v81;
        }

        else
        {
          v81 = v105 + 8 * v51;
        }

        v105 = v81;
        --v78;
      }

      while (v78 > 1);
      v107 = v94 - 1;
      v35 = v96;
      v43 = v90;
      v36 = v92;
      v60 = v88;
      if (!v88)
      {
        return;
      }

      v103 = 0;
    }

    goto LABEL_92;
  }
}

char **VEC::template_mark_pixelshape_row<(CGCompositeOperation)1,_rgba16_t>(char **result, _OWORD **a2, unint64_t *a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  v9 = a9;
  v10 = *result;
  v11 = *a3;
  v12 = *a2;
  if (a9 >= 2)
  {
    v13 = 16 * a5;
    do
    {
      *v12 = *v10;
      v9 -= 2;
      v12 = (v12 + v13);
      v10 += v13;
    }

    while (v9 > 1);
  }

  for (i = v9 + a8; i; --i)
  {
    *v12 = *v10;
    v15 = &v10[8 * a5];
    if (v15 >= v11)
    {
      v16 = -a4;
    }

    else
    {
      v16 = 0;
    }

    v10 = &v15[8 * v16];
    v12 = (v12 + 8 * a5);
  }

  *result = v10;
  *a3 = v11;
  *a2 = v12;
  return result;
}

uint64_t CGPDFSourceGetc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 120);
  if (v9)
  {
    goto LABEL_4;
  }

  if (CGPDFSourceRefill(a1, a2, a3, a4, a5, a6, a7, a8))
  {
    v9 = *(a1 + 120);
LABEL_4:
    v10 = *(a1 + 128);
    *(a1 + 120) = v9 - 1;
    *(a1 + 128) = v10 + 1;
    return *v10;
  }

  return 0xFFFFFFFFLL;
}

uint64_t pdf_content_stream_create(CFIndex a1)
{
  if (CGPDFContentStreamGetTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFContentStreamGetTypeID_onceToken, &__block_literal_global_18789);
  }

  cftype = pdf_create_cftype();
  if (cftype)
  {
    *(cftype + 24) = CFArrayCreateMutable(*MEMORY[0x1E695E480], a1, 0);
  }

  return cftype;
}

uint64_t __CGPDFContentStreamGetTypeID_block_invoke()
{
  result = pdf_register_cftype(&CGPDFContentStreamGetTypeID_class);
  CGPDFContentStreamGetTypeID_id = result;
  return result;
}

CGColorSpace *set_default_color_spaces(void *a1)
{
  a1[6] = get_default_space(a1, "DefaultGray", 1);
  a1[7] = get_default_space(a1, "DefaultRGB", 3);
  result = get_default_space(a1, "DefaultCMYK", 4);
  a1[8] = result;
  return result;
}

CGPDFDocumentRef CGPDFDocumentCreateWithProvider(CGDataProviderRef provider)
{
  v23 = *MEMORY[0x1E69E9840];
  if (sInLockdownModeForPDF)
  {
    goto LABEL_5;
  }

  if (read_entitlements_once != -1)
  {
    dispatch_once(&read_entitlements_once, &__block_literal_global_11458);
  }

  if (sHasLockdownModeForPDFEntitlement == 1)
  {
LABEL_5:
    pdf_error("Attempt to create CGPDFDocument in Lockdown Mode for PDF");
    return 0;
  }

  if (CGPDFDocumentCreateWithProvider::onceToken == -1)
  {
    if (provider)
    {
LABEL_9:
      v3 = *(provider + 34);
      if (v3 && CGPropertiesGetProperty(v3, @"from_url"))
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    dispatch_once(&CGPDFDocumentCreateWithProvider::onceToken, &__block_literal_global_1334);
    if (provider)
    {
      goto LABEL_9;
    }
  }

  v4 = objc_autoreleasePoolPush();
  send_analytics_event("com.apple.CoreGraphics.CGPDFDocumentCreateWithProvider");
  objc_autoreleasePoolPop(v4);
LABEL_12:
  if (CGPDFDocumentGetTypeID::onceToken != -1)
  {
    dispatch_once(&CGPDFDocumentGetTypeID::onceToken, &__block_literal_global_25);
  }

  cftype = pdf_create_cftype();
  if (!provider || (v6 = *(provider + 4), v6 == -1))
  {
    v7 = CGAccessSessionCreate(provider);
    if (v7)
    {
      v13 = v7;
      v14 = 0;
      do
      {
        v6 = v14;
        Bytes = CGAccessSessionGetBytes(v13, &v22, 2048, v8, v9, v10, v11, v12);
        v14 = Bytes + v6;
      }

      while (Bytes);
      if (CGAccessSessionSkipForward(v13, 1) >= 1)
      {
        CGLog(2, "Sequential data provider %p skips forward beyond available data", v16, v17, v18, v19, v20, v21, provider);
      }

      CGAccessSessionRelease(v13);
    }

    else
    {
      v6 = 0;
    }
  }

  if (CGPDFSourceCreate(provider, 0, v6))
  {
    operator new();
  }

  cftype[2] = 0;
  CFRelease(cftype);
  return 0;
}

void __CGPDFDocumentCreateWithProvider_block_invoke()
{
  _ZZZ31CGPDFDocumentCreateWithProviderEUb_E21memory_pressure_queue = dispatch_queue_create("com.apple.CoreGraphics.CGPDFDocumentMemoryPressureResponse", 0);
  _ZZZ31CGPDFDocumentCreateWithProviderEUb_E22memory_pressure_source = dispatch_source_create(MEMORY[0x1E69E96E8], 0, 6uLL, _ZZZ31CGPDFDocumentCreateWithProviderEUb_E21memory_pressure_queue);
  dispatch_source_set_event_handler(_ZZZ31CGPDFDocumentCreateWithProviderEUb_E22memory_pressure_source, &__block_literal_global_15);
  v0 = _ZZZ31CGPDFDocumentCreateWithProviderEUb_E22memory_pressure_source;

  dispatch_resume(v0);
}

uint64_t send_analytics_event(uint64_t a1)
{
  result = [MEMORY[0x1E696AEC0] stringWithUTF8String:a1];
  if (MEMORY[0x1EEE86510])
  {
    if ((send_analytics_event_sSendAnalytics & 1) == 0)
    {
      return AnalyticsSendEventLazy();
    }
  }

  return result;
}

uint64_t __send_analytics_event_block_invoke_2()
{
  v0 = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
  _block_invoke_appIdentifier = v0;
  if (v0)
  {
    v1 = v0;
    v2 = v0;
    if (([v1 hasPrefix:@"com.apple"] & 1) == 0)
    {
      v3 = time(0);
      srandom(v3);
      if (vcvts_n_f32_s32(rand(), 0x1FuLL) > 0.005)
      {
        send_analytics_event_sSendAnalytics = 1;
      }
    }
  }

  else
  {
    _block_invoke_appIdentifier = [objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
    v4 = _block_invoke_appIdentifier;
  }

  v5 = 0;
  v6 = 0;
  while (1)
  {
    result = _dyld_image_count();
    if (v5 >= result || v6 >= 3)
    {
      return result;
    }

    image_header = _dyld_get_image_header(v5);
    image_name = _dyld_get_image_name(v5);
    v10 = string_ends_with(image_name, "PDFKit");
    v11 = &_block_invoke_pdfKit_uuid;
    if (v10 || (v12 = string_ends_with(image_name, "AppKit"), v11 = &_block_invoke_appKit_uuid, v12) || (v13 = string_ends_with(image_name, "CoreUI"), v11 = &_block_invoke_coreUI_uuid, v13))
    {
      ncmds = image_header->ncmds;
      if (ncmds)
      {
        if (image_header->magic == -805638658 || image_header->magic == -17958193)
        {
          v16 = 32;
        }

        else
        {
          v16 = 28;
        }

        v17 = image_header + v16;
        while (*v17 != 27)
        {
          v17 += *(v17 + 1);
          if (!--ncmds)
          {
            goto LABEL_24;
          }
        }

        *v11 = *(v17 + 8);
      }

LABEL_24:
      ++v6;
    }

    ++v5;
  }
}

uint64_t pdf_register_cftype(uint64_t a1)
{
  v2 = _CFRuntimeRegisterClass();
  if (!v2)
  {
    pdf_error("Failed to register CFRuntimeClass %s.", *(a1 + 8));
  }

  return v2;
}

uint64_t pdf_create_cftype()
{
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    pdf_error("Unable to create CFRuntime object because _CFRuntimeCreateInstance(...) failed, likely due to an unknown object type ID.");
  }

  return Instance;
}

uint64_t __CGPDFSourceGetTypeID_block_invoke()
{
  result = pdf_register_cftype(&CGPDFSourceGetTypeID_class);
  CGPDFSourceGetTypeID_id = result;
  return result;
}

uint64_t CGPDFSourceForwardSearch(void *a1, char *__s, char *a3, uint64_t *a4)
{
  if (!__s)
  {
    return 0;
  }

  v7 = strlen(__s);
  v11 = v7;
  if (a1)
  {
    v12 = a1[11];
    if (a1[18])
    {
      v13 = a1[24];
      v12 += a1[15];
    }

    else
    {
      v13 = a1[16];
    }

    v16 = v13 - v12;
    v14 = a1[2];
    if (v14 == -1)
    {
      _CGHandleAssert("CGPDFSourceGetLength", 179, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/PDF/Reader/CGPDFSource.c", "source->length != (pdf_off_t)-1", "source length would overflow", v8, v9, v10, v50);
    }

    v15 = v16 + a1[14];
  }

  else
  {
    v14 = 0;
    v15 = -1;
  }

  if (v14 < (v15 + v7))
  {
    return 0;
  }

  v51 = a4;
  v18 = 64;
  do
  {
    v19 = v18;
    v18 *= 2;
  }

  while (v19 < v11);
  LOBYTE(__c) = 0;
  v20 = malloc_type_malloc(v18, 0x7F841B4FuLL);
  v27 = v20;
  if (v15 >= v14)
  {
LABEL_41:
    v17 = 0;
    goto LABEL_42;
  }

  v52 = v20;
  while (1)
  {
    if (v19 + v15 > v14)
    {
      v19 = v14 - v15;
    }

    CGPDFSourceSetPosition(a1, v15, v21, v22, v23, v24, v25, v26);
    if (CGPDFSourceRead(a1, v27, v19, v28, v29, v30, v31, v32) != v19)
    {
      pdf_error("failed to read %zu bytes at offset %lld.", v19, v15);
      goto LABEL_41;
    }

    v33 = &v27[v19];
    v34 = v15;
    if (v19 >= 1)
    {
      break;
    }

LABEL_34:
    v15 += v19;
    v27 = v52;
    if (v15 >= v14)
    {
      goto LABEL_41;
    }
  }

  while (1)
  {
    v35 = v11 + v34;
    if (*v27 == *__s && v35 <= v14)
    {
      if (&v27[v11] > v33)
      {
        CGPDFSourceSetPosition(a1, v34, v21, v22, v23, v24, v25, v26);
        if (CGPDFSourceRead(a1, v27, v11, v37, v38, v39, v40, v41) != v11)
        {
          pdf_error("failed to read %zu bytes at offset %lld.", v11, v34);
          goto LABEL_39;
        }
      }

      if (!strncmp(v27, __s, v11))
      {
        break;
      }
    }

LABEL_23:
    ++v27;
    ++v34;
    if (v27 >= v33)
    {
      goto LABEL_34;
    }
  }

  if (!a3 || v35 >= v14)
  {
LABEL_36:
    v27 = v52;
    *v51 = v34;
    v17 = 1;
    goto LABEL_42;
  }

  CGPDFSourceSetPosition(a1, v11 + v34, v21, v22, v23, v24, v25, v26);
  if (CGPDFSourceRead(a1, &__c, 1uLL, v42, v43, v44, v45, v46) == 1)
  {
    v47 = __c;
    v48 = strchr(a3, __c);
    if (!v47 || v48)
    {
      goto LABEL_36;
    }

    goto LABEL_23;
  }

  pdf_error("failed to read %zu bytes at offset %lld.", 1uLL, v11 + v34);
LABEL_39:
  v17 = 0;
  v27 = v52;
LABEL_42:
  free(v27);
  return v17;
}

uint64_t CGPDFSourceRead(uint64_t a1, uint64_t __dst, size_t __n, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = 0;
  if (a1 && __n)
  {
    v11 = __dst;
    v12 = __n;
    while (1)
    {
      v13 = *(a1 + 120);
      if (v12 <= v13)
      {
        break;
      }

      if (v11)
      {
        memmove(v11, *(a1 + 128), v13);
        v13 = *(a1 + 120);
        v11 += v13;
      }

      v12 -= v13;
      v14 = *(a1 + 128) + v13;
      *(a1 + 120) = 0;
      *(a1 + 128) = v14;
      if ((CGPDFSourceRefill(a1, __dst, v13, a4, a5, a6, a7, a8) & 1) == 0)
      {
        return __n - v12;
      }
    }

    if (v11)
    {
      memcpy(v11, *(a1 + 128), v12);
      v13 = *(a1 + 120);
    }

    v15 = *(a1 + 128) + v12;
    *(a1 + 120) = v13 - v12;
    *(a1 + 128) = v15;
    return __n;
  }

  return result;
}

uint64_t CGPDFSourceRefill(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || (*(a1 + 208) & 1) != 0)
  {
    return 0;
  }

  v9 = *(a1 + 144);
  if (v9)
  {
    if (*(a1 + 152) == 1)
    {
      free(v9);
    }

    *(a1 + 144) = 0;
    v10 = *(a1 + 200);
    *(a1 + 120) = v10;
    if (v10)
    {
      v11 = *(a1 + 192);
      v12 = *(a1 + 88);
      if (v11 >= v12 && v11 < v12 + *(a1 + 104))
      {
        *(a1 + 128) = v11;
        return 1;
      }

      *(a1 + 120) = 0;
    }
  }

  *(a1 + 112) += *(a1 + 104);
  v14 = *(a1 + 40);
  if (v14)
  {
    v15 = *(a1 + 32);
    v16 = *(a1 + 16);
    if (v15 + *(a1 + 96) >= v16)
    {
      v17 = v16 - v15;
    }

    else
    {
      v17 = *(a1 + 96);
    }

    BytesAtPosition = CGDataProviderGetBytesAtPosition(v14, *(a1 + 88), *(a1 + 24) + v15, v17);
    *(a1 + 32) += BytesAtPosition;
  }

  else
  {
    v19 = *(a1 + 56);
    if (!v19)
    {
      _CGHandleAssert("CGPDFSourceRefill", 473, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/PDF/Reader/CGPDFSource.c", "source->filter_callbacks.read != NULL", "filter read callback is missing", a6, a7, a8, v22);
    }

    BytesAtPosition = v19(*(a1 + 80), *(a1 + 88), *(a1 + 96));
  }

  *(a1 + 104) = BytesAtPosition;
  v20 = *(a1 + 88);
  *(a1 + 120) = BytesAtPosition;
  *(a1 + 128) = v20;
  v13 = 1;
  if (!BytesAtPosition)
  {
    *(a1 + 208) = 1;
    return 0;
  }

  return v13;
}

size_t CGDataProviderGetBytesAtPosition(uint64_t a1, char *a2, uint64_t a3, int64_t a4)
{
  v4 = 0;
  if (!a1 || a3 < 0)
  {
    return v4;
  }

  v13 = CFGetTypeID(a1);
  if (kCGDataProviderPropertyTrustToken_block_invoke_once != -1)
  {
    dispatch_once(&kCGDataProviderPropertyTrustToken_block_invoke_once, &__block_literal_global_28_6859);
  }

  if (v13 != CGDataProviderGetTypeID_id)
  {
    return 0;
  }

  if (!*(a1 + 96) && !*(a1 + 112) && !*(a1 + 80))
  {
    if ((*(a1 + 20) & 0xFFFFFFFD) != 1 || !*(a1 + 64))
    {
      _CGHandleAssert("CGDataProviderGetBytesAtPosition", 769, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProvider.c", "is_sequential(provider) && is_rewindable(provider)", "provider type (%d) must be both sequential and rewindable", v10, v11, v12, *(a1 + 20));
    }

    CGDataProviderLock(a1);
    v15 = *(a1 + 64);
    if (v15)
    {
      v15(*(a1 + 24));
    }

    *(a1 + 261) = 0;
    CGDataProviderSkipForwardInternal(a1, a3);
    if (a4 < 1 || (*(a1 + 261) & 1) != 0)
    {
      v4 = 0;
    }

    else
    {
      v4 = 0;
      while (1)
      {
        v16 = (*(a1 + 40))(*(a1 + 24), a2, a4);
        if (!v16)
        {
          break;
        }

        if (v16 >= a4)
        {
          v17 = a4;
        }

        else
        {
          v17 = v16;
        }

        v4 += v17;
        a2 += v17;
        a4 -= v17;
        if (!a4)
        {
          goto LABEL_21;
        }
      }

      *(a1 + 261) = 1;
    }

LABEL_21:
    CGDataProviderUnlock(a1);
    return v4;
  }

  return CGDataProviderDirectGetBytesAtPositionInternal(a1, a2, a3, a4, v9, v10, v11, v12);
}

void *xref_read_linearization_dictionary(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v77 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v9 = a1[11];
    if (a1[18])
    {
      v10 = a1[24];
      v9 += a1[15];
    }

    else
    {
      v10 = a1[16];
    }

    v11 = v10 - v9 + a1[14];
  }

  else
  {
    v11 = -1;
  }

  value = 0.0;
  v74 = 0;
  v72 = 0;
  CGPDFSourceSetPosition(a1, 1024, a3, a4, a5, a6, a7, a8);
  v12 = CGPDFSourceReverseSearch(a1, "/Linearized", 0, 0, &v71);
  CGPDFSourceSetPosition(a1, v11, v13, v14, v15, v16, v17, v18);
  if (!v12)
  {
    return 0;
  }

  v19 = malloc_type_malloc(0x20uLL, 0x102004034AC6F07uLL);
  __CFSetLastAllocationEventName();
  if (!v19)
  {
    return 0;
  }

  *v19 = 0;
  v19[1] = a1;
  v19[2] = pdf_lexer_create(0, a1, 0);
  *(v19 + 24) = 0;
  CGPDFSourceSetPosition(v19[1], 0, v20, v21, v22, v23, v24, v25);
  v76 = 0;
  memset(v75, 0, sizeof(v75));
  if (pdf_lexer_scan(v19[2], v75, v26, v27, v28, v29, v30, v31) != 4 || pdf_lexer_scan(v19[2], v75, v32, v33, v34, v35, v36, v37) != 4 || pdf_lexer_scan(v19[2], v75, v38, v39, v40, v41, v42, v43) != 16)
  {
    v56 = DWORD2(v75[0]);
    goto LABEL_18;
  }

  if (!pdf_object_scanner_read_object(v19, v75, v44, v45, v46, v47, v48, v49))
  {
LABEL_20:
    v57 = 0;
    goto LABEL_21;
  }

  v56 = DWORD2(v75[0]);
  if (DWORD2(v75[0]) != 8)
  {
LABEL_18:
    if ((v56 - 5) <= 4)
    {
      pdf_object_release_compound_value(v75);
    }

    goto LABEL_20;
  }

  v57 = v76;
  if (pdf_lexer_scan(v19[2], v75, v50, v51, v52, v53, v54, v55) != 17 && v57)
  {
    CFRelease(v57);
    goto LABEL_20;
  }

LABEL_21:
  pdf_lexer_release(v19[2]);
  free(v19);
  if (v57)
  {
    if (!CGPDFDictionaryGetNumber(v57, "Linearized", &value))
    {
LABEL_45:
      CFRelease(v57);
      return 0;
    }

    if (value != 1.0)
    {
      pdf_log("unsupported linearization version.", value);
      goto LABEL_45;
    }

    if (!CGPDFDictionaryGetInteger(v57, "L", &v74))
    {
      pdf_log("missing or invalid linearization length.", v65);
      goto LABEL_45;
    }

    Length = CGPDFSourceGetLength(a1, v58, v59, v60, v61, v62, v63, v64);
    if (Length == 0x7FFFFFFFFFFFFFFFLL && a1)
    {
      v67 = a1[5];
      if (v67)
      {
        BytesAtPosition = CGDataProviderGetBytesAtPosition(v67, v75, v74 - 1023, 1024);
        Length = 0x7FFFFFFFFFFFFFFFLL;
        if (BytesAtPosition == 1023)
        {
          Length = v74;
          if (a1[2] == 0x7FFFFFFFFFFFFFFFLL)
          {
            a1[2] = v74;
          }
        }
      }

      else
      {
        Length = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    if (v74 != Length)
    {
      pdf_log("linearization length mismatch.");
      goto LABEL_45;
    }

    if (!CGPDFDictionaryGetArray(v57, "H", &v72))
    {
      goto LABEL_42;
    }

    if (!v72 || *(v72 + 3) - *(v72 + 2) != 16)
    {
      pdf_log("invalid hints array (size = %zu)", v69);
      goto LABEL_45;
    }

    if (!CGPDFDictionaryGetInteger(v57, "O", &v74) || !CGPDFDictionaryGetInteger(v57, "E", &v74) || !CGPDFDictionaryGetInteger(v57, "N", &v74) || !CGPDFDictionaryGetInteger(v57, "T", &v74))
    {
LABEL_42:
      pdf_log("missing a required parameter (%s) in Linearization dictionary.", v69);
      goto LABEL_45;
    }
  }

  return v57;
}

uint64_t CGPDFSourceReverseSearch(void *a1, char *__s, char *a3, char *a4, void *a5)
{
  if (!__s)
  {
    return 0;
  }

  v8 = strlen(__s);
  v12 = v8;
  if (a1)
  {
    v13 = a1[11];
    if (a1[18])
    {
      v14 = a1[24];
      v13 += a1[15];
    }

    else
    {
      v14 = a1[16];
    }

    v16 = v14 - v13;
    v64 = a1[2];
    if (v64 == -1)
    {
      _CGHandleAssert("CGPDFSourceGetLength", 179, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/PDF/Reader/CGPDFSource.c", "source->length != (pdf_off_t)-1", "source length would overflow", v9, v10, v11, v56);
    }

    v15 = v16 + a1[14];
  }

  else
  {
    v64 = 0;
    v15 = -1;
  }

  if (v15 < v8)
  {
    return 0;
  }

  v18 = 64;
  do
  {
    v19 = v18;
    v18 *= 2;
  }

  while (v19 < v12);
  __dst = 0;
  v20 = malloc_type_malloc(v18, 0x1927B63CuLL);
  v27 = v20;
  if (v15 < 1)
  {
    goto LABEL_44;
  }

  v58 = a5;
  v59 = &v20[v12 - 1];
  while (1)
  {
    if (v15 < v19)
    {
      v19 = v15;
    }

    CGPDFSourceSetPosition(a1, v15 - v19, v21, v22, v23, v24, v25, v26);
    if (CGPDFSourceRead(a1, v27, v19, v28, v29, v30, v31, v32) != v19)
    {
      pdf_error("failed to read %zu bytes at offset %lld.", v19, v15 - v19);
      goto LABEL_44;
    }

    v60 = v15 - v19;
    v33 = &v27[v19 - 1];
    if (v33 >= v27)
    {
      break;
    }

LABEL_36:
    v15 -= v19;
    if (v60 < 1)
    {
      goto LABEL_44;
    }
  }

  v34 = 0;
  v63 = v12 - 1 + v15;
  while (1)
  {
    if (*(v33 + v34) != *__s)
    {
      goto LABEL_35;
    }

    v35 = v63 + v34;
    if ((v63 + v34) > v64)
    {
      goto LABEL_35;
    }

    if (&v59[v19 + v34] > &v27[v19])
    {
      CGPDFSourceSetPosition(a1, v15 + v34 - 1, v21, v22, v23, v24, v25, v26);
      if (CGPDFSourceRead(a1, v33 + v34, v12, v36, v37, v38, v39, v40) != v12)
      {
        pdf_error("failed to read %zu bytes at offset %lld.", v12, v15 + v34 - 1);
        goto LABEL_44;
      }
    }

    if (strncmp((v33 + v34), __s, v12))
    {
      goto LABEL_35;
    }

    if (a3 && v15 + v34 - 1 >= 1)
    {
      break;
    }

LABEL_30:
    if (!a4 || v35 >= v64)
    {
LABEL_38:
      *v58 = v15 + v34 - 1;
      v17 = 1;
      goto LABEL_45;
    }

    CGPDFSourceSetPosition(a1, v35, v21, v22, v23, v24, v25, v26);
    if (CGPDFSourceRead(a1, &__dst, 1uLL, v48, v49, v50, v51, v52) != 1)
    {
      v57 = v63 + v34;
      goto LABEL_43;
    }

    v53 = __dst;
    v54 = strchr(a4, __dst);
    if (!v53 || v54)
    {
      goto LABEL_38;
    }

LABEL_35:
    --v34;
    if (v33 + v34 < v27)
    {
      goto LABEL_36;
    }
  }

  CGPDFSourceSetPosition(a1, v15 + v34 - 2, v21, v22, v23, v24, v25, v26);
  if (CGPDFSourceRead(a1, &__dst, 1uLL, v41, v42, v43, v44, v45) == 1)
  {
    v46 = __dst;
    v47 = strchr(a3, __dst);
    if (v46 && !v47)
    {
      goto LABEL_35;
    }

    goto LABEL_30;
  }

  v57 = v15 + v34 - 2;
LABEL_43:
  pdf_error("failed to read %zu bytes at offset %lld.", 1uLL, v57);
LABEL_44:
  v17 = 0;
LABEL_45:
  free(v27);
  return v17;
}

uint64_t read_integer(void *a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  CGPDFSourceSkipWhitespace(a1, a2, a3, a4, a5, a6, a7, a8);
  v17 = a1[15];
  if (!v17)
  {
    if (!CGPDFSourceRefill(a1, v10, v11, v12, v13, v14, v15, v16))
    {
      v22 = 0;
      LODWORD(v21) = -1;
      goto LABEL_29;
    }

    v17 = a1[15];
  }

  v18 = v17 - 1;
  v19 = a1[16];
  v20 = v19 + 1;
  a1[15] = v18;
  a1[16] = v19 + 1;
  v21 = *v19;
  if ((v21 - 58) < 0xFFFFFFF6)
  {
LABEL_5:
    v22 = 0;
    goto LABEL_29;
  }

  while (v21 == 48)
  {
    if (!v18)
    {
      if (!CGPDFSourceRefill(a1, v21, v11, v12, v13, v14, v15, v16))
      {
        v24 = 0;
        LODWORD(v21) = -1;
        goto LABEL_23;
      }

      v18 = a1[15];
      v20 = a1[16];
    }

    v23 = v20;
    --v18;
    ++v20;
    a1[15] = v18;
    a1[16] = v20;
    v21 = *v23;
  }

  if ((v21 - 48) > 9)
  {
    v24 = 0;
    goto LABEL_23;
  }

  v24 = 0;
  v25 = 0;
  while (1)
  {
    v25 |= v24 > 0x1999999999999998;
    v24 = 10 * v24 + v21 - 48;
    if (!v18)
    {
      break;
    }

LABEL_16:
    a1[15] = --v18;
    a1[16] = v20 + 1;
    v21 = *v20++;
    if ((v21 - 48) >= 0xA)
    {
      if (v25)
      {
        goto LABEL_5;
      }

      goto LABEL_23;
    }
  }

  if (CGPDFSourceRefill(a1, v21, v11, v12, v13, v14, v15, v16))
  {
    v18 = a1[15];
    v20 = a1[16];
    goto LABEL_16;
  }

  LODWORD(v21) = -1;
  if (v25)
  {
    goto LABEL_5;
  }

LABEL_23:
  if (a2)
  {
    *a2 = v24;
  }

  v22 = 1;
  if ((v21 + 1) <= 0x3F && ((1 << (v21 + 1)) & 0xA001064200006C03) != 0 || (result = 0, (v21 - 91) <= 0x22) && ((1 << (v21 - 91)) & 0x500000005) != 0)
  {
LABEL_29:
    CGPDFSourceUngetc(a1, v21);
    return v22;
  }

  return result;
}

void *CGPDFSourceSkipWhitespace(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1[15];
  while (v9)
  {
LABEL_5:
    --v9;
    v10 = a1[16];
    a1[15] = v9;
    a1[16] = v10 + 1;
    a2 = *v10;
    if (a2 > 0x20 || ((1 << a2) & 0x100003601) == 0)
    {
      goto LABEL_12;
    }
  }

  if (CGPDFSourceRefill(a1, a2, a3, a4, a5, a6, a7, a8))
  {
    v9 = a1[15];
    goto LABEL_5;
  }

  LODWORD(a2) = -1;
LABEL_12:

  return CGPDFSourceUngetc(a1, a2);
}

void *CGPDFSourceUngetc(void *result, int a2)
{
  if (result)
  {
    v2 = a2;
    if (a2 != -1)
    {
      v3 = result;
      result = result[18];
      if (result)
      {
        v4 = v3[17];
        if (v3[15] >= v4)
        {
          if (result == (v3 + 153))
          {
            v11 = malloc_type_malloc(0x80uLL, 0xDB6A5C21uLL);
            result = __CFSetLastAllocationEventName();
            if (!v11)
            {
              return result;
            }

            v12 = 0;
            v3[17] = 128;
            v3[18] = v11;
            *(v3 + 152) = 1;
            v5 = v11 + 96;
            do
            {
              v5[v12] = *(v3 + v12 + 153);
              ++v12;
            }

            while (v12 != 32);
          }

          else
          {
            result = malloc_type_realloc(result, 2 * v4, 0x4D7CA8DDuLL);
            if (!result)
            {
              return result;
            }

            v8 = result;
            v5 = result + v4;
            result = memmove(result + v4, result, v4);
            v3[17] = 2 * v4;
            v3[18] = v8;
          }
        }

        else
        {
          v5 = v3[16];
        }

        v3[16] = v5 - 1;
        *(v5 - 1) = v2;
        ++v3[15];
      }

      else
      {
        *(v3 + 208) = 0;
        v6 = v3[11];
        v7 = v3[16];
        if (v6 && v7 > v6 && *(v7 - 1) == a2)
        {
          ++v3[15];
          v3[16] = v7 - 1;
        }

        else
        {
          *(v3 + 184) = a2;
          v9 = v3 + 23;
          v10 = *(v9 - 8);
          v9[1] = v7;
          v9[2] = v10;
          *(v9 - 6) = 32;
          *(v9 - 5) = v9 - 31;
          *(v9 - 32) = 0;
          *(v9 - 8) = 1;
          *(v9 - 7) = v9;
        }
      }
    }
  }

  return result;
}

BOOL CGPDFSourceMatch(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  do
  {
    v10 = *v8;
    if (!*v8)
    {
      break;
    }

    v11 = *(a1 + 120);
    if (!v11)
    {
      if (!CGPDFSourceRefill(a1, a2, a3, a4, a5, a6, a7, a8))
      {
        return v10 == 0;
      }

      v11 = *(a1 + 120);
    }

    ++v8;
    v12 = *(a1 + 128);
    *(a1 + 120) = v11 - 1;
    *(a1 + 128) = v12 + 1;
  }

  while (*v12 == v10);
  return v10 == 0;
}

void *pdf_object_scanner_create_with_xref(const void **a1, int a2)
{
  v4 = malloc_type_malloc(0x20uLL, 0x102004034AC6F07uLL);
  __CFSetLastAllocationEventName();
  if (v4)
  {
    v5 = *a1;
    *v4 = a1;
    v4[1] = v5;
    if (a2)
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    v4[2] = pdf_lexer_create(a1, v5, v6);
    *(v4 + 24) = a2;
  }

  return v4;
}

void *pdf_lexer_create(uint64_t a1, const void *a2, int a3)
{
  v6 = malloc_type_malloc(0x50uLL, 0x103004017559993uLL);
  __CFSetLastAllocationEventName();
  if (v6)
  {
    *v6 = 1;
    v6[1] = a1;
    if (a2)
    {
      CFRetain(a2);
    }

    v6[2] = a2;
    v6[3] = 0;
    v6[4] = 0;
    v6[5] = 0;
    *(v6 + 14) = a3;
  }

  return v6;
}

void CGPDFSourcePreflightLargeRead(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      v5 = a3;
      if (a3 > 2 * *(a1 + 96))
      {
        v6 = *(v4 + 272);
        if (v6)
        {
          if (CGPropertiesGetProperty(v6, @"kCGDataProviderHasHighLatency"))
          {
            if (v5 >= 0x1000000)
            {
              v5 = 0x1000000;
            }

            v8 = malloc_type_malloc(v5, 0x86D7F83CuLL);
            CGDataProviderGetBytesAtPosition(*(a1 + 40), v8, a2, v5);

            free(v8);
          }
        }
      }
    }
  }
}

uint64_t pdf_object_scanner_read_compound_object(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v11 = 0;
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  v12 = "missing or invalid generation number.";
  while (1)
  {
    while (1)
    {
      v13 = pdf_lexer_scan(a1[2], &v38, a3, a4, a5, a6, a7, a8);
      if (v13 <= 7)
      {
        if (v13 <= 1)
        {
          if (!v13)
          {
            goto LABEL_58;
          }

          if (v13 != 1)
          {
            goto LABEL_63;
          }

          handle_choke(&v38);
          if (v11)
          {
            do
            {
              v22 = *v11;
              if ((*(v11 + 8) - 5) <= 4)
              {
                pdf_object_release_compound_value(v11);
              }

              free(v11);
              v11 = v22;
            }

            while (v22);
          }

LABEL_46:
          if ((DWORD2(v38) - 5) <= 4)
          {
            pdf_object_release_compound_value(&v38);
          }

          return 0;
        }

        if ((v13 - 2) >= 5)
        {
          if (v13 != 7)
          {
            goto LABEL_63;
          }

          if (DWORD2(v38) == 5)
          {
            v24 = v40;
          }

          else
          {
            v24 = 0;
          }

          if (v11)
          {
            do
            {
              v25 = *v11;
              if ((*(v11 + 8) - 5) <= 4)
              {
                pdf_object_release_compound_value(v11);
              }

              free(v11);
              v11 = v25;
            }

            while (v25);
          }

          goto LABEL_46;
        }

        goto LABEL_16;
      }

      if (v13 > 11)
      {
        break;
      }

      if (v13 > 9)
      {
        if (v13 != 11)
        {
          if (v11)
          {
            v28 = 0;
            do
            {
              v29 = v11;
              v11 = *v11;
              *v29 = v28;
              v28 = v29;
            }

            while (v11);
          }

          else
          {
            v29 = 0;
          }

          v34 = CGPDFDictionaryCreateWithObjects(*a1, v29);
          if (v34)
          {
            v35 = 8;
LABEL_88:
            *(a2 + 8) = v35;
            *(a2 + 12) |= 1u;
            *(a2 + 16) = 0;
            *(a2 + 24) = 0;
            *(a2 + 32) = v34;
            return 1;
          }

          else
          {
            if (!v29)
            {
              return 0;
            }

            do
            {
              v37 = *v29;
              if ((*(v29 + 8) - 5) <= 4)
              {
                pdf_object_release_compound_value(v29);
              }

              free(v29);
              result = 0;
              v29 = v37;
            }

            while (v37);
          }

          return result;
        }
      }

      else if (v13 == 8)
      {
        goto LABEL_16;
      }

      if (v8 >= 512)
      {
        pdf_error("exceeded array or dictionary nesting limit.");
        return 0;
      }

      if ((pdf_object_scanner_read_compound_object(a1, &v38, (v8 + 1)) & 1) == 0)
      {
        if (v11)
        {
          do
          {
            v23 = *v11;
            if ((*(v11 + 8) - 5) <= 4)
            {
              pdf_object_release_compound_value(v11);
            }

            free(v11);
            v11 = v23;
          }

          while (v23);
        }

        return 0;
      }

LABEL_16:
      v14 = malloc_type_calloc(1uLL, 0x28uLL, 0x103204077D336DFuLL);
      __CFSetLastAllocationEventName();
      *v14 = 0;
      v16 = v38;
      v15 = v39;
      v14[4] = v40;
      *v14 = v16;
      *(v14 + 1) = v15;
      *v14 = v11;
      v11 = v14;
    }

    if (v13 <= 14)
    {
      break;
    }

    if (v13 != 18)
    {
      if (v13 == 15)
      {
LABEL_58:
        if (v11)
        {
          do
          {
            v30 = *v11;
            if ((*(v11 + 8) - 5) <= 4)
            {
              pdf_object_release_compound_value(v11);
            }

            free(v11);
            v11 = v30;
          }

          while (v30);
        }

        return 0;
      }

LABEL_63:
      pdf_error("encountered unexpected object type: %d.", v13);
      if (v11)
      {
        do
        {
          v31 = *v11;
          if ((*(v11 + 8) - 5) <= 4)
          {
            pdf_object_release_compound_value(v11);
          }

          free(v11);
          v11 = v31;
        }

        while (v31);
      }

      return 0;
    }

    if (!v11)
    {
      goto LABEL_69;
    }

    v17 = *(v11 + 8);
    if (v17 != 12 && v17 != 3)
    {
      goto LABEL_72;
    }

    v18 = *(v11 + 32);
    v19 = *v11;
    free(v11);
    if (!v19)
    {
      v12 = "missing or invalid object number.";
LABEL_69:
      pdf_error(v12);
      return 0;
    }

    v20 = *(v19 + 8);
    if (v20 != 12 && v20 != 3)
    {
      v12 = "missing or invalid object number.";
      v11 = v19;
LABEL_72:
      pdf_error(v12);
      do
      {
        v33 = *v11;
        if ((*(v11 + 8) - 5) <= 4)
        {
          pdf_object_release_compound_value(v11);
        }

        free(v11);
        v11 = v33;
      }

      while (v33);
      return 0;
    }

    v21 = *(v19 + 32);
    *(v19 + 8) = 10;
    *(v19 + 12) &= ~1u;
    *(v19 + 16) = v21;
    *(v19 + 24) = v18;
    *(v19 + 26) = 0;
    *(v19 + 30) = 0;
    v11 = v19;
  }

  if (v13 == 13)
  {
    goto LABEL_16;
  }

  if (v13 != 12)
  {
    goto LABEL_63;
  }

  if (v11)
  {
    v26 = 0;
    do
    {
      v27 = v11;
      v11 = *v11;
      *v27 = v26;
      v26 = v27;
    }

    while (v11);
  }

  else
  {
    v27 = 0;
  }

  v34 = CGPDFArrayCreateWithObjects(*a1, v27);
  if (v34)
  {
    v35 = 7;
    goto LABEL_88;
  }

  if (!v27)
  {
    return 0;
  }

  do
  {
    v36 = *v27;
    if ((*(v27 + 8) - 5) <= 4)
    {
      pdf_object_release_compound_value(v27);
    }

    free(v27);
    result = 0;
    v27 = v36;
  }

  while (v36);
  return result;
}

uint64_t read_hex_string(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = -1;
  while (1)
  {
    while (1)
    {
      if (a2 <= 11)
      {
        if ((a2 - 9) >= 2 && a2)
        {
          goto LABEL_41;
        }

        goto LABEL_30;
      }

      if (a2 > 31)
      {
        break;
      }

      if ((a2 - 12) >= 2)
      {
        goto LABEL_41;
      }

LABEL_30:
      v18 = a1[2];
      v19 = *(v18 + 120);
      if (v19)
      {
        goto LABEL_33;
      }

      v27 = CGPDFSourceRefill(a1[2], a2, a3, a4, a5, a6, a7, a8);
      a2 = 0xFFFFFFFFLL;
      if (v27)
      {
LABEL_32:
        v19 = *(v18 + 120);
        goto LABEL_33;
      }
    }

    if (a2 <= 36)
    {
      if (a2 != 32)
      {
        goto LABEL_41;
      }

      goto LABEL_30;
    }

    if (a2 > 47)
    {
      break;
    }

    if (a2 != 37)
    {
      goto LABEL_41;
    }

    pdf_error("illegal comment encountered in hex string.");
    skip_comment(a1, v10, v11, v12, v13, v14, v15, v16);
    v18 = a1[2];
    v19 = *(v18 + 120);
    if (v19)
    {
LABEL_33:
      v28 = *(v18 + 128);
      *(v18 + 120) = v19 - 1;
      *(v18 + 128) = v28 + 1;
      a2 = *v28;
    }

    else
    {
      v20 = CGPDFSourceRefill(a1[2], v17, a3, a4, a5, a6, a7, a8);
      a2 = 0xFFFFFFFFLL;
      if (v20)
      {
        goto LABEL_32;
      }
    }
  }

  if (a2 > 64)
  {
    if ((a2 - 65) < 6)
    {
      v21 = -55;
    }

    else
    {
      if ((a2 - 97) >= 6)
      {
        goto LABEL_41;
      }

      v21 = -87;
    }

LABEL_24:
    v22 = a2 + v21;
    if (v9 < 0)
    {
      v9 = a2 + v21;
    }

    else
    {
      v23 = a1[3];
      v24 = a1[4];
      v25 = a1[5];
      if (v23 >= v24)
      {
        v26 = 2 * v24 + 128;
        a1[4] = v26;
        v25 = malloc_type_realloc(v25, v26, 0x9E65F011uLL);
        a1[5] = v25;
        if (!v25)
        {
          goto LABEL_42;
        }

        v23 = a1[3];
      }

      a1[3] = v23 + 1;
      *(v25 + v23) = v22 + 16 * v9;
      v9 = -1;
    }

    goto LABEL_30;
  }

  if ((a2 - 48) < 0xA)
  {
    v21 = -48;
    goto LABEL_24;
  }

  if (a2 != 62)
  {
LABEL_41:
    create_string_object(a1, 0);
    return 1;
  }

  if ((v9 & 0x80000000) == 0)
  {
    v29 = a1[3];
    v30 = a1[4];
    v31 = a1[5];
    if (v29 >= v30)
    {
      v32 = 2 * v30 + 128;
      a1[4] = v32;
      v31 = malloc_type_realloc(v31, v32, 0x9E65F011uLL);
      a1[5] = v31;
      if (!v31)
      {
LABEL_42:
        _CGHandleAssert("lex_grow_buffer", 55, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/PDF/Reader/CGPDFLexer.c", "lexer->buffer != NULL", "lexer buffer missing", a6, a7, a8, v34);
      }

      v29 = a1[3];
    }

    a1[3] = v29 + 1;
    *(v31 + v29) = 16 * v9;
  }

  create_string_object(a1, 1);
  return 8;
}

uint64_t CGPDFStringCreate(uint64_t a1, const void *a2, size_t a3, char a4, int a5)
{
  if (CGPDFStringGetTypeID_onceToken != -1)
  {
    dispatch_once(&CGPDFStringGetTypeID_onceToken, &__block_literal_global_2295);
  }

  cftype = pdf_create_cftype();
  v11 = cftype;
  if (cftype)
  {
    *(cftype + 16) = 0;
    *(cftype + 24) = a1;
    *(cftype + 32) = 0u;
    *(cftype + 48) = 0u;
    *(cftype + 72) = a3;
    if (a5)
    {
      v12 = 2;
    }

    else
    {
      v12 = 0;
    }

    *(cftype + 64) = v12 | a4 | *(cftype + 64) & 0xFC;
    memcpy((cftype + 80), a2, a3);
    *(v11 + 80 + a3) = 0;
  }

  return v11;
}

uint64_t __CGPDFStringGetTypeID_block_invoke()
{
  result = pdf_register_cftype(&CGPDFStringGetTypeID_class);
  CGPDFStringGetTypeID_id = result;
  return result;
}

void *std::vector<CGPDFObject *>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<applesauce::CF::ObjectRef<CGPath *>>>(a2);
    }

    std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
  }

  return result;
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<applesauce::CF::ObjectRef<CGPath *>>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

uint64_t CGPDFDictionaryCreateWithObjects(uint64_t a1, void *a2)
{
  v2 = a2;
  if (a2)
  {
    v4 = -1;
    v5 = a2;
    do
    {
      v5 = *v5;
      ++v4;
    }

    while (v5);
    if (v4)
    {
      v6 = "found non-name key while building dictionary.";
      v8 = a2;
      while (*(v8 + 2) == 5)
      {
        v8 = **v8;
        if (!v8)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      v6 = "missing key or value while building dictionary.";
    }

    pdf_error(v6);
    return 0;
  }

LABEL_10:
  if (CGPDFDictionaryGetTypeID(void)::onceToken != -1)
  {
    dispatch_once(&CGPDFDictionaryGetTypeID(void)::onceToken, &__block_literal_global_16194);
  }

  cftype = pdf_create_cftype();
  v7 = cftype;
  if (cftype)
  {
    pthread_mutex_init((cftype + 88), 0);
    *(v7 + 16) = a1;
    *(v7 + 24) = 0u;
    *(v7 + 40) = 0u;
    *(v7 + 56) = 0u;
    *(v7 + 72) = 0;
    *(v7 + 80) = 1065353216;
    if (v2)
    {
LABEL_14:
      v10 = v2[4];
      v11 = strlen(v10);
      v12 = std::__string_view_hash<char>::operator()[abi:fe200100](v10, v11);
      v13 = v12;
      v14 = *(v7 + 56);
      if (!*&v14)
      {
        goto LABEL_30;
      }

      v15 = vcnt_s8(v14);
      v15.i16[0] = vaddlv_u8(v15);
      v16 = v15.u32[0];
      if (v15.u32[0] > 1uLL)
      {
        v17 = v12;
        if (v12 >= *&v14)
        {
          v17 = v12 % *&v14;
        }
      }

      else
      {
        v17 = (*&v14 - 1) & v12;
      }

      v18 = *(*(v7 + 48) + 8 * v17);
      if (!v18 || (v19 = *v18) == 0)
      {
LABEL_30:
        operator new();
      }

      while (1)
      {
        v20 = v19[1];
        if (v20 == v13)
        {
          if (!strcmp(*(v19[2] + 32), v10))
          {
            v21 = *v2;
            v19[3] = *v2;
            v2 = *v21;
            if (!*v21)
            {
              return v7;
            }

            goto LABEL_14;
          }
        }

        else
        {
          if (v16 > 1)
          {
            if (v20 >= *&v14)
            {
              v20 %= *&v14;
            }
          }

          else
          {
            v20 &= *&v14 - 1;
          }

          if (v20 != v17)
          {
            goto LABEL_30;
          }
        }

        v19 = *v19;
        if (!v19)
        {
          goto LABEL_30;
        }
      }
    }
  }

  return v7;
}