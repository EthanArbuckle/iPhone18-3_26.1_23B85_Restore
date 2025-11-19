void sub_1860A3258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

uint64_t IIOIOSurfaceWrapper::copyImageBlockSetNoCopy(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v11.size.height = a5;
  v11.size.width = a4;
  v10.size.width = *(a1 + 96);
  v10.size.height = *(a1 + 104);
  v10.origin.x = 0.0;
  v10.origin.y = 0.0;
  v11.origin.x = a2;
  v11.origin.y = a3;
  CGRectIntersection(v10, v11);
  v8 = IOSurfaceLock(*(a1 + 72), 1u, 0);
  result = 0;
  if (!v8)
  {
    IOSurfaceGetBaseAddress(*(a1 + 72));
    CGImageBlockCreate();
    return CGImageBlockSetCreate();
  }

  return result;
}

vImage_Error IIOIOSurfaceWrapper::copy_BGRA_8bit(IIOIOSurfaceWrapper *this, vImage_Buffer *a2, vImage_Buffer *a3)
{
  Current = CFAbsoluteTimeGetCurrent();
  v12 = 50331906;
  v11 = 50462976;
  if (*(this + 200))
  {
    v7 = &v11;
  }

  else
  {
    v7 = &v12;
  }

  v8 = vImagePermuteChannels_ARGB8888(a2, a3, v7, 0x10u);
  if ((*(&gIIODebugFlags + 1) & 0x80003000) != 0)
  {
    v9 = CFAbsoluteTimeGetCurrent();
    ImageIOLog("COL %s - time: %gms\n", "copy_BGRA_8bit", (v9 - Current) * 1000.0);
  }

  return v8;
}

vImage_Error IIOIOSurfaceWrapper::copy_RGBA_8bit(IIOIOSurfaceWrapper *this, vImage_Buffer *a2, vImage_Buffer *a3)
{
  Current = CFAbsoluteTimeGetCurrent();
  v12 = 50331906;
  v11 = 50462976;
  if (*(this + 200))
  {
    v7 = &v12;
  }

  else
  {
    v7 = &v11;
  }

  v8 = vImagePermuteChannels_ARGB8888(a2, a3, v7, 0x10u);
  if ((*(&gIIODebugFlags + 1) & 0x80003000) != 0)
  {
    v9 = CFAbsoluteTimeGetCurrent();
    ImageIOLog("COL %s - time: %gms\n", "copy_RGBA_8bit", (v9 - Current) * 1000.0);
  }

  return v8;
}

uint64_t IIOIOSurfaceWrapper::copy_L008_8bit(IIOIOSurfaceWrapper *this, vImage_Buffer *a2, vImage_Buffer *a3)
{
  Current = CFAbsoluteTimeGetCurrent();
  if (a2->rowBytes >= a3->rowBytes)
  {
    rowBytes = a3->rowBytes;
  }

  else
  {
    rowBytes = a2->rowBytes;
  }

  if (a3->height)
  {
    data = a3->data;
    v8 = a2->data;
    v9 = 1;
    do
    {
      memcpy(data, v8, rowBytes);
      v8 += a2->rowBytes;
      data += a3->rowBytes;
    }

    while (a3->height > v9++);
  }

  if ((*(&gIIODebugFlags + 1) & 0x80003000) != 0)
  {
    v11 = CFAbsoluteTimeGetCurrent();
    ImageIOLog("COL %s - time: %gms\n", "copy_L008_8bit", (v11 - Current) * 1000.0);
  }

  return 0;
}

uint64_t IIOIOSurfaceWrapper::copy_LA08_8bit(IIOIOSurfaceWrapper *this, vImage_Buffer *a2, vImage_Buffer *a3)
{
  Current = CFAbsoluteTimeGetCurrent();
  if (a2->rowBytes >= a3->rowBytes)
  {
    rowBytes = a3->rowBytes;
  }

  else
  {
    rowBytes = a2->rowBytes;
  }

  if (a3->height)
  {
    data = a3->data;
    v8 = a2->data;
    v9 = 1;
    do
    {
      memcpy(data, v8, rowBytes);
      v8 += a2->rowBytes;
      data += a3->rowBytes;
    }

    while (a3->height > v9++);
  }

  if ((*(&gIIODebugFlags + 1) & 0x80003000) != 0)
  {
    v11 = CFAbsoluteTimeGetCurrent();
    ImageIOLog("COL %s - time: %gms\n", "copy_LA08_8bit", (v11 - Current) * 1000.0);
  }

  return 0;
}

vImage_Error IIOIOSurfaceWrapper::copy_l64r_8bit(IIOIOSurfaceWrapper *this, vImage_Buffer *a2, vImage_Buffer *a3)
{
  Current = CFAbsoluteTimeGetCurrent();
  *backgroundColor = 0;
  *permuteMap = 50462976;
  v6 = vImageConvert_ARGB16UToARGB8888(a2, a3, permuteMap, 0, backgroundColor, 0x10u);
  if ((*(&gIIODebugFlags + 1) & 0x80003000) != 0)
  {
    v7 = CFAbsoluteTimeGetCurrent();
    ImageIOLog("COL %s - time: %gms\n", "copy_l64r_8bit", (v7 - Current) * 1000.0);
  }

  return v6;
}

vImage_Error IIOIOSurfaceWrapper::copy_RGhA_8bit(IIOIOSurfaceWrapper *this, vImage_Buffer *a2, vImage_Buffer *a3)
{
  Current = CFAbsoluteTimeGetCurrent();
  v6 = vImageConvert_Planar16FtoPlanar8(a2, a3, 0x10u);
  if ((*(&gIIODebugFlags + 1) & 0x80003000) != 0)
  {
    v7 = CFAbsoluteTimeGetCurrent();
    ImageIOLog("COL %s - time: %gms\n", "copy_RGhA_8bit", (v7 - Current) * 1000.0);
  }

  return v6;
}

vImage_Error IIOIOSurfaceWrapper::copy_2C16_8bit(IIOIOSurfaceWrapper *this, vImage_Buffer *a2, vImage_Buffer *a3)
{
  Current = CFAbsoluteTimeGetCurrent();
  v6 = vImageConvert_Planar16UtoPlanar8_dithered(a2, a3, 0, 0x10u);
  if ((*(&gIIODebugFlags + 1) & 0x80003000) != 0)
  {
    v7 = CFAbsoluteTimeGetCurrent();
    ImageIOLog("COL %s - time: %gms\n", "copy_2C16_8bit", (v7 - Current) * 1000.0);
  }

  return v6;
}

vImage_Error IIOIOSurfaceWrapper::copy_2C0h_8bit(IIOIOSurfaceWrapper *this, vImage_Buffer *a2, vImage_Buffer *a3)
{
  Current = CFAbsoluteTimeGetCurrent();
  v6 = vImageConvert_Planar16FtoPlanar8(a2, a3, 0x10u);
  if ((*(&gIIODebugFlags + 1) & 0x80003000) != 0)
  {
    v7 = CFAbsoluteTimeGetCurrent();
    ImageIOLog("COL %s - time: %gms\n", "copy_2C0h_8bit", (v7 - Current) * 1000.0);
  }

  return v6;
}

uint64_t IIOIOSurfaceWrapper::copyImageBlockSet_8bit(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v33 = xmmword_1EF4DCC88;
  v32 = xmmword_1EF4DCC98;
  if (IOSurfaceLock(*(a1 + 72), 1u, 0))
  {
    goto LABEL_32;
  }

  BaseAddress = IOSurfaceGetBaseAddress(*(a1 + 72));
  if (!BaseAddress)
  {
    if (*(a1 + 140))
    {
      v15 = "YES";
    }

    else
    {
      v15 = "NO";
    }

    _cg_jpeg_mem_term("copyImageBlockSet_8bit", 1106, "*** IOSurfaceGetBaseAddress returned NULL -- (protected: %s)\n", v15);
    goto LABEL_12;
  }

  v11 = *(a1 + 112);
  v31.data = BaseAddress + (a2 * *(a1 + 120)) + (a3 * v11);
  v31.height = a5;
  v31.width = a4;
  v31.rowBytes = v11;
  dest.data = *(a1 + 168);
  dest.height = a5;
  v12 = *(a1 + 184);
  dest.width = a4;
  dest.rowBytes = v12;
  v13 = *(a1 + 88);
  if (v13 > 1278226487)
  {
    if (v13 <= 1380411456)
    {
      if (v13 != 1278226488)
      {
        if (v13 == 1380401729)
        {
          v14 = IIOIOSurfaceWrapper::copy_RGBA_8bit(a1, &v31, &dest);
          goto LABEL_30;
        }

        goto LABEL_34;
      }

      IIOIOSurfaceWrapper::copy_L008_8bit(BaseAddress, &v31, &dest);
      goto LABEL_27;
    }

    if (v13 == 1380411457)
    {
      v14 = IIOIOSurfaceWrapper::copy_RGhA_8bit(BaseAddress, &v31, &dest);
      goto LABEL_30;
    }

    if (v13 == 1815491698)
    {
      v14 = IIOIOSurfaceWrapper::copy_l64r_8bit(BaseAddress, &v31, &dest);
      goto LABEL_30;
    }

LABEL_34:
    v18 = v13 >> 24;
    v19 = MEMORY[0x1E69E9830];
    if ((v13 >> 24) <= 0x7F)
    {
      v20 = *(MEMORY[0x1E69E9830] + 4 * v18 + 60) & 0x40000;
    }

    else
    {
      v20 = __maskrune(v18, 0x40000uLL);
      v13 = *(a1 + 88);
    }

    if (v20)
    {
      v21 = (v13 >> 24);
    }

    else
    {
      v21 = 46;
    }

    v22 = v13 << 8 >> 24;
    if (v22 <= 0x7F)
    {
      v23 = *(v19 + 4 * v22 + 60) & 0x40000;
    }

    else
    {
      v23 = __maskrune(v22, 0x40000uLL);
      v13 = *(a1 + 88);
    }

    if (v23)
    {
      v24 = (v13 << 8 >> 24);
    }

    else
    {
      v24 = 46;
    }

    v25 = v13 >> 8;
    if (v25 <= 0x7F)
    {
      v26 = *(v19 + 4 * v25 + 60) & 0x40000;
    }

    else
    {
      v26 = __maskrune(v25, 0x40000uLL);
      v13 = *(a1 + 88);
    }

    if (v26)
    {
      v27 = (v13 >> 8);
    }

    else
    {
      v27 = 46;
    }

    if (v13 <= 0x7F)
    {
      v28 = *(v19 + 4 * v13 + 60) & 0x40000;
    }

    else
    {
      v28 = __maskrune(v13, 0x40000uLL);
    }

    if (v28)
    {
      v29 = *(a1 + 88);
    }

    else
    {
      v29 = 46;
    }

    LogError("copyImageBlockSet_8bit", 1153, "*** pixelFormat '%c%c%c%c' not supported\n", v21, v24, v27, v29);
LABEL_12:
    IOSurfaceUnlock(*(a1 + 72), 1u, 0);
LABEL_32:
    _ImageIO_Free(*(a1 + 168), *(a1 + 176));
    result = 0;
    *(a1 + 168) = 0;
    return result;
  }

  if (v13 <= 843264309)
  {
    if (v13 != 843264056)
    {
      if (v13 == 843264104)
      {
        v14 = IIOIOSurfaceWrapper::copy_2C0h_8bit(BaseAddress, &v31, &dest);
LABEL_30:
        v16 = v14;
        goto LABEL_31;
      }

      goto LABEL_34;
    }

    IIOIOSurfaceWrapper::copy_LA08_8bit(BaseAddress, &v31, &dest);
LABEL_27:
    IOSurfaceUnlock(*(a1 + 72), 1u, 0);
    goto LABEL_33;
  }

  if (v13 == 843264310)
  {
    v14 = IIOIOSurfaceWrapper::copy_2C16_8bit(BaseAddress, &v31, &dest);
    goto LABEL_30;
  }

  if (v13 != 1111970369)
  {
    goto LABEL_34;
  }

  v16 = IIOIOSurfaceWrapper::copy_BGRA_8bit(a1, &v31, &dest);
  if (*(a1 + 200) == 1 && *(a1 + 136) == 3)
  {
    v16 = vImagePremultiplyData_RGBA8888(&dest, &dest, 0x10u);
  }

LABEL_31:
  IOSurfaceUnlock(*(a1 + 72), 1u, 0);
  if (v16)
  {
    goto LABEL_32;
  }

LABEL_33:
  v31.data = CGImageBlockCreate();
  return CGImageBlockSetCreate();
}

uint64_t IIOIOSurfaceWrapper::copy_RGBA_10bit(IIOIOSurfaceWrapper *this, vImage_Buffer *a2, vImage_Buffer *a3)
{
  Current = CFAbsoluteTimeGetCurrent();
  if (a2->rowBytes >= a3->rowBytes)
  {
    rowBytes = a3->rowBytes;
  }

  else
  {
    rowBytes = a2->rowBytes;
  }

  if (a3->height)
  {
    data = a3->data;
    v8 = a2->data;
    v9 = 1;
    do
    {
      memcpy(data, v8, rowBytes);
      v8 += a2->rowBytes;
      data += a3->rowBytes;
    }

    while (a3->height > v9++);
  }

  if ((*(&gIIODebugFlags + 1) & 0x80003000) != 0)
  {
    v11 = CFAbsoluteTimeGetCurrent();
    ImageIOLog("COL %s - time: %gms\n", "copy_RGBA_10bit", (v11 - Current) * 1000.0);
  }

  return 0;
}

uint64_t IIOIOSurfaceWrapper::copyImageBlockSet_10bit(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v41 = xmmword_1EF4DCC88;
  v40 = xmmword_1EF4DCC98;
  if (IOSurfaceLock(*(a1 + 72), 1u, 0))
  {
    goto LABEL_34;
  }

  BaseAddress = IOSurfaceGetBaseAddress(*(a1 + 72));
  if (!BaseAddress)
  {
    if (*(a1 + 140))
    {
      v15 = "YES";
    }

    else
    {
      v15 = "NO";
    }

    _cg_jpeg_mem_term("copyImageBlockSet_10bit", 1221, "*** IOSurfaceGetBaseAddress returned NULL -- (protected: %s)\n", v15);
    goto LABEL_33;
  }

  v11 = *(a1 + 112);
  v39.data = BaseAddress + (a2 * *(a1 + 120)) + (a3 * v11);
  v39.height = a5;
  v39.width = a4;
  v39.rowBytes = v11;
  v38.data = *(a1 + 168);
  v38.height = a5;
  v12 = *(a1 + 184);
  v38.width = a4;
  v38.rowBytes = v12;
  v13 = *(a1 + 88);
  if (v13 == 1815162994)
  {
    IIOIOSurfaceWrapper::copy_RGBA_10bit(BaseAddress, &v39, &v38);
    IOSurfaceUnlock(*(a1 + 72), 1u, 0);
    v39.data = CGImageBlockCreate();
    return CGImageBlockSetCreate();
  }

  v16 = v13 >> 24;
  if ((v13 >> 24) <= 0x7F)
  {
    v17 = *(MEMORY[0x1E69E9830] + 4 * v16 + 60) & 0x40000;
  }

  else
  {
    v17 = __maskrune(v16, 0x40000uLL);
    v13 = *(a1 + 88);
  }

  if (v17)
  {
    v18 = (v13 >> 24);
  }

  else
  {
    v18 = 46;
  }

  v19 = v13 << 8 >> 24;
  if (v19 <= 0x7F)
  {
    v20 = *(MEMORY[0x1E69E9830] + 4 * v19 + 60) & 0x40000;
  }

  else
  {
    v20 = __maskrune(v19, 0x40000uLL);
    v13 = *(a1 + 88);
  }

  if (v20)
  {
    v21 = (v13 << 8 >> 24);
  }

  else
  {
    v21 = 46;
  }

  v22 = v13 >> 8;
  if (v22 <= 0x7F)
  {
    v23 = *(MEMORY[0x1E69E9830] + 4 * v22 + 60) & 0x40000;
  }

  else
  {
    v23 = __maskrune(v22, 0x40000uLL);
    v13 = *(a1 + 88);
  }

  if (v23)
  {
    v24 = (v13 >> 8);
  }

  else
  {
    v24 = 46;
  }

  if (v13 <= 0x7F)
  {
    if ((*(MEMORY[0x1E69E9830] + 4 * v13 + 60) & 0x40000) != 0)
    {
      goto LABEL_29;
    }

LABEL_31:
    v25 = 46;
    goto LABEL_32;
  }

  if (!__maskrune(v13, 0x40000uLL))
  {
    goto LABEL_31;
  }

LABEL_29:
  v25 = *(a1 + 88);
LABEL_32:
  LogError("copyImageBlockSet_10bit", 1236, "*** pixelFormat '%c%c%c%c' not supported\n", v18, v21, v24, v25);
LABEL_33:
  IOSurfaceUnlock(*(a1 + 72), 1u, 0);
LABEL_34:
  kdebug_trace();
  v26 = *(a1 + 88);
  v27 = v26 >> 24;
  v28 = MEMORY[0x1E69E9830];
  if ((v26 >> 24) <= 0x7F)
  {
    v29 = *(MEMORY[0x1E69E9830] + 4 * v27 + 60) & 0x40000;
  }

  else
  {
    v29 = __maskrune(v27, 0x40000uLL);
    v26 = *(a1 + 88);
  }

  if (v29)
  {
    v30 = (v26 >> 24);
  }

  else
  {
    v30 = 46;
  }

  v31 = v26 << 8 >> 24;
  if (v31 <= 0x7F)
  {
    v32 = *(v28 + 4 * v31 + 60) & 0x40000;
  }

  else
  {
    v32 = __maskrune(v31, 0x40000uLL);
    v26 = *(a1 + 88);
  }

  if (v32)
  {
    v33 = (v26 << 8 >> 24);
  }

  else
  {
    v33 = 46;
  }

  v34 = v26 >> 8;
  if (v34 <= 0x7F)
  {
    v35 = *(v28 + 4 * v34 + 60) & 0x40000;
  }

  else
  {
    v35 = __maskrune(v34, 0x40000uLL);
    v26 = *(a1 + 88);
  }

  if (v35)
  {
    v36 = (v26 >> 8);
  }

  else
  {
    v36 = 46;
  }

  if (v26 <= 0x7F)
  {
    if ((*(v28 + 4 * v26 + 60) & 0x40000) != 0)
    {
      goto LABEL_54;
    }

LABEL_56:
    v37 = 46;
    goto LABEL_57;
  }

  if (!__maskrune(v26, 0x40000uLL))
  {
    goto LABEL_56;
  }

LABEL_54:
  v37 = *(a1 + 88);
LABEL_57:
  LogError("copyImageBlockSet_10bit", 1255, "*** copyImageBlockSet_10bit '%c%c%c%c' failed: err=%d\n", v30, v33, v36, v37, -50);
  _ImageIO_Free(*(a1 + 168), *(a1 + 176));
  result = 0;
  *(a1 + 168) = 0;
  return result;
}

vImage_Error IIOIOSurfaceWrapper::copy_RGBA_16bit(IIOIOSurfaceWrapper *this, vImage_Buffer *a2, vImage_Buffer *a3)
{
  Current = CFAbsoluteTimeGetCurrent();
  *permuteMap = 50462976;
  v10 = 0;
  *backgroundColor = 0;
  v6 = vImageConvert_ARGB8888ToARGB16U(a2, a3, permuteMap, 0, backgroundColor, 0x10u);
  if (v6)
  {
    _cg_jpeg_mem_term("copy_RGBA_16bit", 1278, "*** ERROR: iio_vImageConvert_ARGB8888ToARGB16U returned: %d\n", v6);
  }

  if ((*(&gIIODebugFlags + 1) & 0x80003000) != 0)
  {
    v7 = CFAbsoluteTimeGetCurrent();
    ImageIOLog("COL %s - time: %gms\n", "copy_RGBA_16bit", (v7 - Current) * 1000.0);
  }

  return v6;
}

vImage_Error IIOIOSurfaceWrapper::copy_BGRA_16bit(IIOIOSurfaceWrapper *this, vImage_Buffer *a2, vImage_Buffer *a3)
{
  Current = CFAbsoluteTimeGetCurrent();
  *permuteMap = 50331906;
  v10 = 0;
  *backgroundColor = 0;
  v6 = vImageConvert_ARGB8888ToARGB16U(a2, a3, permuteMap, 0, backgroundColor, 0x10u);
  if (v6)
  {
    _cg_jpeg_mem_term("copy_BGRA_16bit", 1297, "*** ERROR: iio_vImageConvert_ARGB8888ToARGB16U returned: %d\n", v6);
  }

  if ((*(&gIIODebugFlags + 1) & 0x80003000) != 0)
  {
    v7 = CFAbsoluteTimeGetCurrent();
    ImageIOLog("COL %s - time: %gms\n", "copy_BGRA_16bit", (v7 - Current) * 1000.0);
  }

  return v6;
}

vImage_Error IIOIOSurfaceWrapper::copy_L008_16bit(IIOIOSurfaceWrapper *this, vImage_Buffer *a2, vImage_Buffer *a3)
{
  Current = CFAbsoluteTimeGetCurrent();
  v6 = vImageConvert_Planar8To16U(a2, a3, 0x10u);
  if (v6)
  {
    _cg_jpeg_mem_term("copy_L008_16bit", 1313, "*** ERROR: iio_vImageConvert_Planar8To16U returned: %d\n", v6);
  }

  if ((*(&gIIODebugFlags + 1) & 0x80003000) != 0)
  {
    v7 = CFAbsoluteTimeGetCurrent();
    ImageIOLog("COL %s - time: %gms\n", "copy_L008_16bit", (v7 - Current) * 1000.0);
  }

  return v6;
}

vImage_Error IIOIOSurfaceWrapper::copy_LA08_16bit(IIOIOSurfaceWrapper *this, vImage_Buffer *a2, vImage_Buffer *a3)
{
  Current = CFAbsoluteTimeGetCurrent();
  v6 = vImageConvert_Planar8To16U(a2, a3, 0x10u);
  if (v6)
  {
    _cg_jpeg_mem_term("copy_LA08_16bit", 1327, "*** ERROR: iio_vImageConvert_Planar8To16U returned: %d\n", v6);
  }

  if ((*(&gIIODebugFlags + 1) & 0x80003000) != 0)
  {
    v7 = CFAbsoluteTimeGetCurrent();
    ImageIOLog("COL %s - time: %gms\n", "copy_LA08_16bit", (v7 - Current) * 1000.0);
  }

  return v6;
}

uint64_t IIOIOSurfaceWrapper::copy_l64r_16bit(IIOIOSurfaceWrapper *this, vImage_Buffer *a2, vImage_Buffer *a3)
{
  Current = CFAbsoluteTimeGetCurrent();
  if (a2->rowBytes >= a3->rowBytes)
  {
    rowBytes = a3->rowBytes;
  }

  else
  {
    rowBytes = a2->rowBytes;
  }

  if (a3->height)
  {
    data = a3->data;
    v8 = a2->data;
    v9 = 1;
    do
    {
      memcpy(data, v8, rowBytes);
      v8 += a2->rowBytes;
      data += a3->rowBytes;
    }

    while (a3->height > v9++);
  }

  if ((*(&gIIODebugFlags + 1) & 0x80003000) != 0)
  {
    v11 = CFAbsoluteTimeGetCurrent();
    ImageIOLog("COL %s - time: %gms\n", "copy_l64r_16bit", (v11 - Current) * 1000.0);
  }

  return 0;
}

vImage_Error IIOIOSurfaceWrapper::copy_RGhA_16bit(IIOIOSurfaceWrapper *this, vImage_Buffer *a2, vImage_Buffer *a3)
{
  Current = CFAbsoluteTimeGetCurrent();
  if (*(this + 54) == 5)
  {
    if (a2->rowBytes >= a3->rowBytes)
    {
      rowBytes = a3->rowBytes;
    }

    else
    {
      rowBytes = a2->rowBytes;
    }

    if (a3->height)
    {
      data = a3->data;
      v9 = a2->data;
      v10 = 1;
      do
      {
        memcpy(data, v9, rowBytes);
        v9 += a2->rowBytes;
        data += a3->rowBytes;
      }

      while (a3->height > v10++);
    }

    v12 = 0;
  }

  else
  {
    v12 = vImageConvert_16Fto16U(a2, a3, 0x10u);
    if (v12)
    {
      _cg_jpeg_mem_term("copy_RGhA_16bit", 1379, "*** ERROR: iio_vImageConvert_16Fto16U returned: %d\n", v12);
    }
  }

  if ((*(&gIIODebugFlags + 1) & 0x80003000) != 0)
  {
    v13 = CFAbsoluteTimeGetCurrent();
    ImageIOLog("COL %s - time: %gms\n", "copy_RGhA_16bit", (v13 - Current) * 1000.0);
  }

  return v12;
}

uint64_t IIOIOSurfaceWrapper::copy_2C16_16bit(IIOIOSurfaceWrapper *this, vImage_Buffer *a2, vImage_Buffer *a3)
{
  Current = CFAbsoluteTimeGetCurrent();
  if (a2->rowBytes >= a3->rowBytes)
  {
    rowBytes = a3->rowBytes;
  }

  else
  {
    rowBytes = a2->rowBytes;
  }

  if (a3->height)
  {
    data = a3->data;
    v8 = a2->data;
    v9 = 1;
    do
    {
      memcpy(data, v8, rowBytes);
      v8 += a2->rowBytes;
      data += a3->rowBytes;
    }

    while (a3->height > v9++);
  }

  if ((*(&gIIODebugFlags + 1) & 0x80003000) != 0)
  {
    v11 = CFAbsoluteTimeGetCurrent();
    ImageIOLog("COL %s - time: %gms\n", "copy_2C16_16bit", (v11 - Current) * 1000.0);
  }

  return 0;
}

vImage_Error IIOIOSurfaceWrapper::copy_2C0h_16bit(IIOIOSurfaceWrapper *this, vImage_Buffer *a2, vImage_Buffer *a3)
{
  Current = CFAbsoluteTimeGetCurrent();
  if (*(this + 54) == 5)
  {
    if (a2->rowBytes >= a3->rowBytes)
    {
      rowBytes = a3->rowBytes;
    }

    else
    {
      rowBytes = a2->rowBytes;
    }

    if (a3->height)
    {
      data = a3->data;
      v9 = a2->data;
      v10 = 1;
      do
      {
        memcpy(data, v9, rowBytes);
        v9 += a2->rowBytes;
        data += a3->rowBytes;
      }

      while (a3->height > v10++);
    }

    v12 = 0;
  }

  else
  {
    v12 = vImageConvert_16Fto16U(a2, a3, 0x10u);
    if (v12)
    {
      _cg_jpeg_mem_term("copy_2C0h_16bit", 1431, "*** ERROR: iio_vImageConvert_16Fto16U returned: %d\n", v12);
    }
  }

  if ((*(&gIIODebugFlags + 1) & 0x80003000) != 0)
  {
    v13 = CFAbsoluteTimeGetCurrent();
    ImageIOLog("COL %s - time: %gms\n", "copy_2C0h_16bit", (v13 - Current) * 1000.0);
  }

  return v12;
}

uint64_t IIOIOSurfaceWrapper::copyImageBlockSet_16bit(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v49 = xmmword_1EF4DCC88;
  v48 = xmmword_1EF4DCC98;
  if (IOSurfaceLock(*(a1 + 72), 1u, 0))
  {
LABEL_2:
    v10 = -50;
    goto LABEL_3;
  }

  BaseAddress = IOSurfaceGetBaseAddress(*(a1 + 72));
  if (!BaseAddress)
  {
    if (*(a1 + 140))
    {
      v29 = "YES";
    }

    else
    {
      v29 = "NO";
    }

    _cg_jpeg_mem_term("copyImageBlockSet_16bit", 1460, "*** IOSurfaceGetBaseAddress returned NULL -- (protected: %s)\n", v29);
    IOSurfaceUnlock(*(a1 + 72), 1u, 0);
    goto LABEL_2;
  }

  v25 = *(a1 + 112);
  v47.data = BaseAddress + (a2 * *(a1 + 120)) + (a3 * v25);
  v47.height = a5;
  v47.width = a4;
  v47.rowBytes = v25;
  v46.data = *(a1 + 168);
  v46.height = a5;
  v26 = *(a1 + 184);
  v46.width = a4;
  v46.rowBytes = v26;
  v27 = *(a1 + 88);
  if (v27 <= 1278226487)
  {
    if (v27 > 843264309)
    {
      if (v27 == 843264310)
      {
        IIOIOSurfaceWrapper::copy_2C16_16bit(BaseAddress, &v47, &v46);
        goto LABEL_57;
      }

      if (v27 == 1111970369)
      {
        v31 = IIOIOSurfaceWrapper::copy_BGRA_16bit(BaseAddress, &v47, &v46);
        if (v31)
        {
          v10 = v31;
          _cg_jpeg_mem_term("copyImageBlockSet_16bit", 1479, "*** ERROR: copy_BGRA_16bit returned: %d\n");
          goto LABEL_83;
        }

        goto LABEL_57;
      }
    }

    else
    {
      if (v27 == 843264056)
      {
        v32 = IIOIOSurfaceWrapper::copy_LA08_16bit(BaseAddress, &v47, &v46);
        if (v32)
        {
          v10 = v32;
          _cg_jpeg_mem_term("copyImageBlockSet_16bit", 1503, "*** ERROR: copy_LA08_16bit returned: %d\n");
          goto LABEL_83;
        }

        goto LABEL_57;
      }

      if (v27 == 843264104)
      {
        v28 = IIOIOSurfaceWrapper::copy_2C0h_16bit(a1, &v47, &v46);
        if (v28)
        {
          v10 = v28;
          _cg_jpeg_mem_term("copyImageBlockSet_16bit", 1515, "*** ERROR: copy_2C0h_16bit returned: %d\n");
LABEL_83:
          IOSurfaceUnlock(*(a1 + 72), 1u, 0);
LABEL_3:
          kdebug_trace();
          v11 = *(a1 + 88);
          v12 = v11 >> 24;
          v13 = MEMORY[0x1E69E9830];
          if ((v11 >> 24) <= 0x7F)
          {
            v14 = *(MEMORY[0x1E69E9830] + 4 * v12 + 60) & 0x40000;
          }

          else
          {
            v14 = __maskrune(v12, 0x40000uLL);
            v11 = *(a1 + 88);
          }

          if (v14)
          {
            v15 = (v11 >> 24);
          }

          else
          {
            v15 = 46;
          }

          v16 = v11 << 8 >> 24;
          if (v16 <= 0x7F)
          {
            v17 = *(v13 + 4 * v16 + 60) & 0x40000;
          }

          else
          {
            v17 = __maskrune(v16, 0x40000uLL);
            v11 = *(a1 + 88);
          }

          if (v17)
          {
            v18 = (v11 << 8 >> 24);
          }

          else
          {
            v18 = 46;
          }

          v19 = v11 >> 8;
          if (v19 <= 0x7F)
          {
            v20 = *(v13 + 4 * v19 + 60) & 0x40000;
          }

          else
          {
            v20 = __maskrune(v19, 0x40000uLL);
            v11 = *(a1 + 88);
          }

          if (v20)
          {
            v21 = (v11 >> 8);
          }

          else
          {
            v21 = 46;
          }

          if (v11 <= 0x7F)
          {
            if ((*(v13 + 4 * v11 + 60) & 0x40000) != 0)
            {
              goto LABEL_23;
            }
          }

          else if (__maskrune(v11, 0x40000uLL))
          {
LABEL_23:
            v22 = *(a1 + 88);
LABEL_26:
            LogError("copyImageBlockSet_16bit", 1540, "*** copyImageBlockSet_16bit '%c%c%c%c' failed: err=%d\n", v15, v18, v21, v22, v10);
            _ImageIO_Free(*(a1 + 168), *(a1 + 176));
            result = 0;
            *(a1 + 168) = 0;
            return result;
          }

          v22 = 46;
          goto LABEL_26;
        }

        goto LABEL_57;
      }
    }

    goto LABEL_58;
  }

  if (v27 > 1380411456)
  {
    if (v27 == 1380411457)
    {
      v34 = IIOIOSurfaceWrapper::copy_RGhA_16bit(a1, &v47, &v46);
      if (v34)
      {
        v10 = v34;
        _cg_jpeg_mem_term("copyImageBlockSet_16bit", 1485, "*** ERROR: copy_RGhA_16bit returned: %d\n");
        goto LABEL_83;
      }

      goto LABEL_57;
    }

    if (v27 == 1815491698)
    {
      IIOIOSurfaceWrapper::copy_l64r_16bit(BaseAddress, &v47, &v46);
      goto LABEL_57;
    }

    goto LABEL_58;
  }

  if (v27 == 1278226488)
  {
    v33 = IIOIOSurfaceWrapper::copy_L008_16bit(BaseAddress, &v47, &v46);
    if (v33)
    {
      v10 = v33;
      _cg_jpeg_mem_term("copyImageBlockSet_16bit", 1497, "*** ERROR: copy_L008_16bit returned: %d\n");
      goto LABEL_83;
    }

    goto LABEL_57;
  }

  if (v27 != 1380401729)
  {
LABEL_58:
    v35 = v27 >> 24;
    if ((v27 >> 24) <= 0x7F)
    {
      v36 = *(MEMORY[0x1E69E9830] + 4 * v35 + 60) & 0x40000;
    }

    else
    {
      v36 = __maskrune(v35, 0x40000uLL);
      v27 = *(a1 + 88);
    }

    if (v36)
    {
      v37 = (v27 >> 24);
    }

    else
    {
      v37 = 46;
    }

    v38 = v27 << 8 >> 24;
    if (v38 <= 0x7F)
    {
      v39 = *(MEMORY[0x1E69E9830] + 4 * v38 + 60) & 0x40000;
    }

    else
    {
      v39 = __maskrune(v38, 0x40000uLL);
      v27 = *(a1 + 88);
    }

    if (v39)
    {
      v40 = (v27 << 8 >> 24);
    }

    else
    {
      v40 = 46;
    }

    v41 = v27 >> 8;
    if (v41 <= 0x7F)
    {
      v42 = *(MEMORY[0x1E69E9830] + 4 * v41 + 60) & 0x40000;
    }

    else
    {
      v42 = __maskrune(v41, 0x40000uLL);
      v27 = *(a1 + 88);
    }

    if (v42)
    {
      v43 = (v27 >> 8);
    }

    else
    {
      v43 = 46;
    }

    if (v27 <= 0x7F)
    {
      v44 = *(MEMORY[0x1E69E9830] + 4 * v27 + 60) & 0x40000;
    }

    else
    {
      v44 = __maskrune(v27, 0x40000uLL);
    }

    if (v44)
    {
      v45 = *(a1 + 88);
    }

    else
    {
      v45 = 46;
    }

    LogError("copyImageBlockSet_16bit", 1520, "*** pixelFormat '%c%c%c%c' not supported\n", v37, v40, v43, v45);
    v10 = -4;
    goto LABEL_83;
  }

  v30 = IIOIOSurfaceWrapper::copy_RGBA_16bit(BaseAddress, &v47, &v46);
  if (v30)
  {
    v10 = v30;
    _cg_jpeg_mem_term("copyImageBlockSet_16bit", 1473, "*** ERROR: copy_RGBA_16bit returned: %d\n");
    goto LABEL_83;
  }

LABEL_57:
  IOSurfaceUnlock(*(a1 + 72), 1u, 0);
  v47.data = CGImageBlockCreate();
  return CGImageBlockSetCreate();
}

uint64_t IIO_CGImageBlockSetBytesPerPixelForPixelFormat(int a1)
{
  result = 4;
  if (a1 <= 1650943795)
  {
    if (a1 <= 875836517)
    {
      if (a1 > 875704933)
      {
        if (a1 == 875704934)
        {
          return result;
        }

        v5 = 12918;
      }

      else
      {
        if (a1 == 875704422)
        {
          return result;
        }

        v5 = 12406;
      }

      v3 = v5 | 0x34320000;
    }

    else
    {
      if (a1 > 1278226735)
      {
        if (a1 == 1278226736 || a1 == 1278226742)
        {
          return 2;
        }

        v4 = 1279340600;
        goto LABEL_26;
      }

      if (a1 == 875836518)
      {
        return result;
      }

      v3 = 875836534;
    }

LABEL_30:
    if (a1 == v3)
    {
      return result;
    }

    return IIO_BytesPerPixelForPixelFormatPlane0(a1);
  }

  if (a1 > 2019963439)
  {
    if (a1 <= 2019963955)
    {
      if (a1 == 2019963440)
      {
        return result;
      }

      v3 = 2019963442;
    }

    else
    {
      if (a1 == 2019963956 || a1 == 2037741158)
      {
        return result;
      }

      v3 = 2037741171;
    }

    goto LABEL_30;
  }

  if (a1 <= 2016686639)
  {
    if (a1 == 1650943796)
    {
      return 2;
    }

    v4 = 1919379252;
LABEL_26:
    if (a1 != v4)
    {
      return IIO_BytesPerPixelForPixelFormatPlane0(a1);
    }

    return 2;
  }

  if (a1 != 2016686640 && a1 != 2016686642)
  {
    v3 = 2016687156;
    goto LABEL_30;
  }

  return result;
}

unint64_t IIOIOSurfaceWrapper::packDebugInfo(IIOIOSurfaceWrapper *this, CGRect a2, uint64_t a3)
{
  result = IIOIOSurfaceWrapperBase::packDebugInfo(this, a2, a3);
  if (*(this + 200))
  {
    result |= 0x1000uLL;
  }

  return result;
}

uint64_t IIOIOSurfaceWrapper::copyImageBlockSetWithOptions8Bit(uint64_t a1, uint64_t a2, IIODictionary *a3, void *a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, double a9, double a10)
{
  pthread_mutex_lock((a1 + 8));
  if (*(a1 + 142) == 1)
  {
    *(a1 + 200) = 0;
    v20 = *MEMORY[0x1E695F288];
    if (IIODictionary::containsKey(a3, *MEMORY[0x1E695F288]))
    {
      v21 = *MEMORY[0x1E695F280];
      ObjectForKey = IIODictionary::getObjectForKey(a3, v20);
      if (CFStringCompare(v21, ObjectForKey, 0) == kCFCompareEqualTo)
      {
        *(a1 + 200) = 1;
      }
    }

    v23 = *(a1 + 88);
    if (v23 == 1111970369)
    {
      if (*(a1 + 200) != 1 || *(a1 + 136) != 1)
      {
        goto LABEL_13;
      }
    }

    else if (v23 == 1380401729 && (*(a1 + 200) & 1) != 0)
    {
      goto LABEL_13;
    }

    v24 = IIOIOSurfaceWrapper::copyImageBlockSetNoCopy(a1, a5, a6, a7, a8);
    if (v24)
    {
      v25 = v24;
      v26 = 0;
      goto LABEL_18;
    }
  }

LABEL_13:
  v26 = (*(*a1 + 40))(a1, 8, a3, a5, a6, a7, a8, a9, a10);
  if (v26)
  {
    v25 = 0;
  }

  else
  {
    v25 = (*(*a1 + 24))(a1, a2, a3, a5, a6, a7, a8, a9, a10);
  }

  (*(*a1 + 48))(a1);
  if (v26)
  {
    _cg_jpeg_mem_term("copyImageBlockSetWithOptions8Bit", 1642, "*** ERROR: copyImageBlockSetWithOptions8Bit err = %d\n", v26);
  }

LABEL_18:
  *a4 = (*(*a1 + 64))(a1, v26, a5, a6, a7, a8);
  pthread_mutex_unlock((a1 + 8));
  return v25;
}

uint64_t IIOIOSurfaceWrapper::copyImageBlockSetWithOptions10Bit(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, uint64_t a8, uint64_t a9, void *a10)
{
  pthread_mutex_lock((a1 + 8));
  v19 = (*(*a1 + 40))(a1, 10, a9, a2, a3, a4, a5, a6, a7);
  if (v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = IIOIOSurfaceWrapper::copyImageBlockSet_10bit(a1, a2, a3, a4, a5);
  }

  (*(*a1 + 48))(a1);
  if (v19)
  {
    _cg_jpeg_mem_term("copyImageBlockSetWithOptions10Bit", 1665, "*** ERROR: copyImageBlockSetWithOptions10Bit err = %d\n", v19);
  }

  *a10 = (*(*a1 + 64))(a1, v19, a2, a3, a4, a5);
  pthread_mutex_unlock((a1 + 8));
  return v20;
}

uint64_t IIOIOSurfaceWrapper::copyImageBlockSetWithOptions16Bit(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, double a9, double a10)
{
  pthread_mutex_lock((a1 + 8));
  if (*(a1 + 142) == 1)
  {
    v20 = IIOIOSurfaceWrapper::copyImageBlockSetNoCopy(a1, a5, a6, a7, a8);
    v21 = 0;
  }

  else
  {
    v21 = (*(*a1 + 40))(a1, 16, a3, a5, a6, a7, a8, a9, a10);
    if (v21)
    {
      v20 = 0;
    }

    else
    {
      v20 = (*(*a1 + 32))(a1, a2, a3, a5, a6, a7, a8, a9, a10);
    }

    (*(*a1 + 48))(a1);
    if (v21)
    {
      _cg_jpeg_mem_term("copyImageBlockSetWithOptions16Bit", 1696, "*** ERROR: copyImageBlockSetWithOptions16Bit err = %d\n", v21);
    }
  }

  *a4 = (*(*a1 + 64))(a1, v21, a5, a6, a7, a8);
  pthread_mutex_unlock((a1 + 8));
  return v20;
}

void IIOIOSurfaceWrapper_CIF10::IIOIOSurfaceWrapper_CIF10(IIOIOSurfaceWrapper_CIF10 *this, __IOSurface *a2, size_t a3, size_t a4, int a5, CGImageAlphaInfo a6, IIODictionary *a7)
{
  IIOIOSurfaceWrapperBase::IIOIOSurfaceWrapperBase(this, a2, a3, a4, a5, a6, a7);
  v9 = &unk_1EF4DCB98;
  *v10 = &unk_1EF4DCB98;
  if (v10[16] < 2uLL)
  {
    *(this + 14) = 0u;
    *(this + 15) = 0u;
  }

  else
  {
    *(this + 28) = IOSurfaceGetWidthOfPlane(*(this + 9), 1uLL);
    *(this + 29) = IOSurfaceGetHeightOfPlane(*(this + 9), 1uLL);
    *(this + 30) = IOSurfaceGetBytesPerRowOfPlane(*(this + 9), 1uLL);
    *(this + 31) = IOSurfaceGetBytesPerElementOfPlane(*(this + 9), 1uLL);
    v9 = *this;
  }

  v9[7](this, a7, 0);
}

void IIOIOSurfaceWrapper_CIF10::~IIOIOSurfaceWrapper_CIF10(IIOIOSurfaceWrapper_CIF10 *this)
{
  IIOIOSurfaceWrapperBase::~IIOIOSurfaceWrapperBase(this);

  JUMPOUT(0x186602850);
}

void IIOIOSurfaceWrapper_CIF10::completeSetup(IIOIOSurfaceWrapper_CIF10 *this, IIODictionary *a2, const __CFString *a3)
{
  *(this + 33) = 0;
  *(this + 64) = CIF10MIN();
  *(this + 65) = CIF10MAX();
  *(this + 272) = 1;
  if (onceSkipCheck != -1)
  {
    IIOIOSurfaceWrapper_CIF10::completeSetup();
  }

  v6 = *(this + 22);
  if (v6 == 1647534392)
  {
    *(this + 54) = 1;
    *(this + 264) = 1;
    v7 = *MEMORY[0x1E695F110];
    *(this + 41) = 1;
    goto LABEL_31;
  }

  if (v6 == 1999843442)
  {
    *(this + 54) = 1;
    *(this + 264) = 1;
    v7 = *MEMORY[0x1E695F110];
    *(this + 41) = 0;
    goto LABEL_31;
  }

  v8 = v6 >> 24;
  v9 = MEMORY[0x1E69E9830];
  if ((v6 >> 24) <= 0x7F)
  {
    v10 = *(MEMORY[0x1E69E9830] + 4 * v8 + 60) & 0x40000;
  }

  else
  {
    v10 = __maskrune(v8, 0x40000uLL);
    v6 = *(this + 22);
  }

  if (v10)
  {
    v11 = (v6 >> 24);
  }

  else
  {
    v11 = 46;
  }

  v12 = v6 << 8 >> 24;
  if (v12 <= 0x7F)
  {
    v13 = *(v9 + 4 * v12 + 60) & 0x40000;
  }

  else
  {
    v13 = __maskrune(v12, 0x40000uLL);
    v6 = *(this + 22);
  }

  if (v13)
  {
    v14 = (v6 << 8 >> 24);
  }

  else
  {
    v14 = 46;
  }

  v15 = v6 >> 8;
  if (v15 <= 0x7F)
  {
    v16 = *(v9 + 4 * v15 + 60) & 0x40000;
  }

  else
  {
    v16 = __maskrune(v15, 0x40000uLL);
    v6 = *(this + 22);
  }

  if (v16)
  {
    v17 = (v6 >> 8);
  }

  else
  {
    v17 = 46;
  }

  if (v6 <= 0x7F)
  {
    if ((*(v9 + 4 * v6 + 60) & 0x40000) != 0)
    {
      goto LABEL_27;
    }

LABEL_29:
    v18 = 46;
    goto LABEL_30;
  }

  if (!__maskrune(v6, 0x40000uLL))
  {
    goto LABEL_29;
  }

LABEL_27:
  v18 = *(this + 88);
LABEL_30:
  LogError("completeSetup", 1839, "*** IIOIOSurfaceWrapper_CIF10 - pixelFormat '%c%c%c%c' not handled\n", v11, v14, v17, v18);
  v7 = 0;
LABEL_31:
  IIOIOSurfaceWrapperBase::completeSetup(this, v5, v7);
  if (a2)
  {
    if (*(this + 264))
    {
      if (IIODictionary::containsKey(a2, @"kCGImageSkipCIF10SRGBCheck"))
      {
        BoolForKey = IIODictionary::getBoolForKey(a2, @"kCGImageSkipCIF10SRGBCheck");
        *(this + 265) = BoolForKey;
        v20 = "NO";
        if (BoolForKey)
        {
          v20 = "YES";
        }

        _cg_jpeg_mem_term("completeSetup", 1858, "    kCGImageSkipCIF10SRGBCheck was set to %s\n", v20);
      }

      else
      {
        v21 = *(this + 54);
        if (v21 == 2 || v21 == 5 || (v22 = *(this + 53), v22 == 5) || v22 == 2)
        {
          if (v21 == 2)
          {
            v23 = "kCGImageComponent16BitInteger";
          }

          else
          {
            v23 = "kCGImageComponent16BitFloat";
          }

          _cg_jpeg_mem_term("completeSetup", 1867, "    _componentType = %s  -- will skip CIF10SRGBCheck\n", v23);
          *(this + 265) = 1;
        }
      }

      if (*(this + 265) == 1)
      {
        v24 = gDeviceHasExtendedColorDisplay;
        *(this + 272) = gDeviceHasExtendedColorDisplay ^ 1;
        if (v24)
        {
          v25 = "NO (= assume P3)";
        }

        else
        {
          v25 = "YES";
        }

        _cg_jpeg_mem_term("completeSetup", 1873, "    Skipping CIF10-to-SRGB-Check -- _isSRGB = %s\n", v25);
      }
    }

    else
    {
      *(this + 265) = 1;
    }

    IIOIOSurfaceWrapper_CIF10::updateColorMatchMode(this, a2);
  }
}

uint64_t IIOIOSurfaceWrapper_CIF10::updateColorMatchMode(uint64_t this, IIODictionary *a2)
{
  v2 = this;
  if (a2)
  {
    this = IIODictionary::containsKey(a2, @"kCGImagePreferredColorConversionMode");
    if (!this)
    {
      return this;
    }

    this = IIODictionary::getUint32ForKey(a2, @"kCGImagePreferredColorConversionMode");
    if (this > 2)
    {
      if (this == 3)
      {
        goto LABEL_18;
      }

      if (this == 4)
      {
        this = 0;
        *(v2 + 267) = 1;
        goto LABEL_18;
      }
    }

    else
    {
      if (this == 1)
      {
        goto LABEL_18;
      }

      if (this == 2)
      {
        if (gCanUseMSRForColorConversion)
        {
          this = 2;
        }

        else
        {
          this = 0;
        }

LABEL_18:
        *(v2 + 268) = this;
        if ((*(&gIIODebugFlags + 1) & 0x80003000) != 0)
        {
          this = ImageIOLog("COL updateColorMatchMode: kCGImagePreferredColorConversionMode specified --> using: %d '%s'\n", this, gIIOColorMatchModeString[this]);
        }

        *(v2 + 266) = 1;
        return this;
      }
    }

    this = 0;
    goto LABEL_18;
  }

  if ((*(this + 266) & 1) == 0)
  {
    *(this + 268) = 0;
    if ((*(&gIIODebugFlags + 1) & 0x80003000) != 0)
    {

      return ImageIOLog("COL updateColorMatchMode: no options specified --> using: kColorConversionModeDefault\n");
    }
  }

  return this;
}

uint64_t IIOIOSurfaceWrapper_CIF10::createImage(IIOIOSurfaceWrapper_CIF10 *this)
{
  v27[3] = 2;
  v2 = IIOIOSurfaceWrapper_CIF10::CopyImageBlockSetWithOptions;
  if (*(this + 140))
  {
    v2 = IIOIOSurfaceWrapperBase::CopyImageBlockSetWithOptionsNoOp;
  }

  v27[4] = v2;
  v27[5] = IIOIOSurfaceWrapperBase::CopyIOSurface;
  v27[6] = IIOIOSurfaceWrapperBase::ReleaseInfo;
  memset(v27, 0, 24);
  IIODictionary::IIODictionary(v27);
  v3 = *(this + 22);
  if (v3 == 1647534392)
  {
    v4 = MEMORY[0x1E695F2C8];
    goto LABEL_7;
  }

  if (v3 == 1999843442)
  {
    v4 = MEMORY[0x1E695F2C0];
LABEL_7:
    IIODictionary::setObjectForKey(v27, *MEMORY[0x1E695E4D0], *v4);
  }

  if ((*(this + 265) & 1) == 0 && !IOSurfaceLock(*(this + 9), 1u, 0))
  {
    v5 = *(this + 22);
    if (v5 == 1647534392)
    {
      BaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane(*(this + 9), 0);
    }

    else
    {
      if (v5 != 1999843442)
      {
        goto LABEL_46;
      }

      BaseAddressOfPlane = IOSurfaceGetBaseAddress(*(this + 9));
    }

    if (BaseAddressOfPlane)
    {
      *(this + 272) = IIOIOSurfaceWrapper_CIF10::checkIfCIF10DataFitsIntoSRGB(this, BaseAddressOfPlane);
      IOSurfaceUnlock(*(this + 9), 1u, 0);
      goto LABEL_16;
    }

    v5 = *(this + 22);
LABEL_46:
    v15 = v5 >> 24;
    if ((v5 >> 24) <= 0x7F)
    {
      v16 = *(MEMORY[0x1E69E9830] + 4 * v15 + 60) & 0x40000;
    }

    else
    {
      v16 = __maskrune(v15, 0x40000uLL);
      v5 = *(this + 22);
    }

    if (v16)
    {
      v17 = (v5 >> 24);
    }

    else
    {
      v17 = 46;
    }

    v18 = v5 << 8 >> 24;
    if (v18 <= 0x7F)
    {
      v19 = *(MEMORY[0x1E69E9830] + 4 * v18 + 60) & 0x40000;
    }

    else
    {
      v19 = __maskrune(v18, 0x40000uLL);
      v5 = *(this + 22);
    }

    if (v19)
    {
      v20 = (v5 << 8 >> 24);
    }

    else
    {
      v20 = 46;
    }

    v21 = v5 >> 8;
    if (v21 <= 0x7F)
    {
      v22 = *(MEMORY[0x1E69E9830] + 4 * v21 + 60) & 0x40000;
    }

    else
    {
      v22 = __maskrune(v21, 0x40000uLL);
      v5 = *(this + 22);
    }

    if (v22)
    {
      v23 = (v5 >> 8);
    }

    else
    {
      v23 = 46;
    }

    if (v5 <= 0x7F)
    {
      if ((*(MEMORY[0x1E69E9830] + 4 * v5 + 60) & 0x40000) != 0)
      {
        goto LABEL_66;
      }
    }

    else if (__maskrune(v5, 0x40000uLL))
    {
LABEL_66:
      v24 = *(this + 88);
LABEL_69:
      _cg_jpeg_mem_term("createImage", 1910, "*** ERROR: can't get CIF10 data '%c%c%c%c'\n", v17, v20, v23, v24);
LABEL_70:
      v14 = 0;
      goto LABEL_71;
    }

    v24 = 46;
    goto LABEL_69;
  }

LABEL_16:
  if (*(this + 208) != 1)
  {
    v9 = *(this + 54);
    if (*(this + 272) == 1)
    {
      if (v9 != 1)
      {
        if ((*(&gIIODebugFlags + 1) & 0x80003000) != 0)
        {
          ImageIOLog("*** _isSRGB + componentType: changing %s to %s\n", gComponentString[v9], "8BitInt");
        }

        v10 = 1;
LABEL_29:
        *(this + 54) = v10;
      }
    }

    else if (v9 != 2)
    {
      if ((*(&gIIODebugFlags + 1) & 0x80003000) != 0)
      {
        ImageIOLog("*** NOTE: outside sRGB: changing compType from %s to %s\n", gComponentString[v9], "16BitInt");
      }

      v10 = 2;
      goto LABEL_29;
    }

    v8 = MEMORY[0x1E695F0B8];
    goto LABEL_31;
  }

  v7 = *(this + 53);
  *(this + 54) = v7;
  if ((v7 - 1) >= 2)
  {
    v8 = MEMORY[0x1E695F110];
  }

  else
  {
    v8 = MEMORY[0x1E695F0B8];
  }

LABEL_31:
  if (*(this + 272))
  {
    v8 = MEMORY[0x1E695F1C0];
  }

  v11 = *v8;
  if (!*v8)
  {
    goto LABEL_70;
  }

  v26[0] = 0;
  v26[1] = 0;
  IIOColorSpace::IIOColorSpace(v26, v11);
  if ((*(&gIIODebugFlags + 1) & 0x80003000) != 0)
  {
    if (*(this + 272))
    {
      v12 = "sRGB";
    }

    else if (*(this + 54) == 1)
    {
      v12 = "P3";
    }

    else
    {
      v12 = "extended-sRGB";
    }

    ImageIOLog("COL CGImageProviderCreate - using '%s'\n", v12);
  }

  v13 = CGImageProviderCreate();
  if (v13)
  {
    (*(*this + 72))(this, v13);
    CGImageProviderSetProperty();
    v14 = CGImageCreateWithImageProvider();
    CGImageProviderRelease();
    CGImageSetProperty();
  }

  else
  {
    v14 = 0;
  }

  IIOColorSpace::~IIOColorSpace(v26);
LABEL_71:
  IIODictionary::~IIODictionary(v27);
  return v14;
}

void sub_1860A6364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, CGColorSpaceRef);
  v9 = va_arg(va1, void);
  IIOColorSpace::~IIOColorSpace(va);
  IIODictionary::~IIODictionary(va1);
  _Unwind_Resume(a1);
}

uint64_t IIOIOSurfaceWrapper_CIF10::CopyImageBlockSetWithOptions(uint64_t a1, uint64_t a2, __CFDictionary *a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  memset(v36, 0, sizeof(v36));
  IIODictionary::IIODictionary(v36, a3);
  v18 = *(a1 + 216);
  IIOPackCopyCallbackInfo(a3);
  CGImageProviderGetBitmapInfo();
  kdebug_trace();
  if ((gIIODebugFlags & 0xC000) != 0)
  {
    v20 = *(a1 + 88);
    v21 = v20 >> 24;
    if ((v20 >> 24) <= 0x7F)
    {
      v22 = *(MEMORY[0x1E69E9830] + 4 * v21 + 60) & 0x40000;
    }

    else
    {
      v22 = __maskrune(v20 >> 24, 0x40000uLL);
    }

    if (v22)
    {
      v23 = v21;
    }

    else
    {
      v23 = 46;
    }

    v24 = v20 << 8 >> 24;
    if (v24 <= 0x7F)
    {
      v25 = *(MEMORY[0x1E69E9830] + 4 * v24 + 60) & 0x40000;
    }

    else
    {
      v25 = __maskrune(v20 << 8 >> 24, 0x40000uLL);
    }

    if (v25)
    {
      v26 = v24;
    }

    else
    {
      v26 = 46;
    }

    v27 = v20 >> 8;
    if (v27 <= 0x7F)
    {
      v28 = *(MEMORY[0x1E69E9830] + 4 * v27 + 60) & 0x40000;
    }

    else
    {
      v28 = __maskrune(v20 >> 8, 0x40000uLL);
    }

    v20 = v20;
    if (v20 <= 0x7F)
    {
      v29 = *(MEMORY[0x1E69E9830] + 4 * v20 + 60) & 0x40000;
    }

    else
    {
      v29 = __maskrune(v20, 0x40000uLL);
    }

    if (v28)
    {
      v30 = v27;
    }

    else
    {
      v30 = 46;
    }

    if (v29)
    {
      v31 = v20;
    }

    else
    {
      v31 = 46;
    }

    ImageIOLog("S   CopyImageBlockSetWithOptions-CIF10: {%g, %g, %g, %g} {%g, %g} '%c%c%c%c' %s\n", a4, a5, a6, a7, a8, a9, v23, v26, v30, v31, off_1E6F0BD88[v18]);
  }

  v35 = 0;
  if (*(a1 + 141) == 1)
  {
    v32 = IIOIOSurfaceWrapperBase::createBlockSetForCompressedSurface(a1, a4, a5, a6, a7, a2, v19, &v35);
    goto LABEL_38;
  }

  if (v18 > 4)
  {
    if (v18 != 5)
    {
      if (v18 == 6)
      {
LABEL_40:
        _cg_jpeg_mem_term("CopyImageBlockSetWithOptions", 3036, "*** ERROR: CopyImageBlockSetWithOptions returned NULL\n");
        v33 = 0;
        goto LABEL_41;
      }

LABEL_35:
      LogError("CopyImageBlockSetWithOptions", 3026, "*** unsupported componentType '%s' (%d)\n", gComponentString[v18], v18);
      goto LABEL_40;
    }

    goto LABEL_36;
  }

  if (v18 != 1)
  {
    if (v18 != 2)
    {
      goto LABEL_35;
    }

LABEL_36:
    v32 = IIOIOSurfaceWrapper_CIF10::copyImageBlockSetWithOptions16Bit(a1, a2, v36, &v35, a4, a5, a6, a7, a8, a9);
    goto LABEL_38;
  }

  v32 = IIOIOSurfaceWrapper_CIF10::copyImageBlockSetWithOptions8Bit(a1, a2, v36, &v35, a4, a5, a6, a7, a8, a9);
LABEL_38:
  v33 = v32;
  if (!v32)
  {
    goto LABEL_40;
  }

  CGImageBlockSetGetRect();
LABEL_41:
  kdebug_trace();
  IIODictionary::~IIODictionary(v36);
  return v33;
}

void sub_1860A66EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

BOOL IIOIOSurfaceWrapper_CIF10::checkIfCIF10DataFitsIntoSRGB(IIOIOSurfaceWrapper_CIF10 *this, unsigned int *a2)
{
  v2 = *(this + 13);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = *(this + 64);
    v6 = *(this + 65);
    v7 = *(this + 14);
    v8 = *(this + 12);
    v9 = vdupq_n_s32(v5);
    v10 = vdupq_n_s32(v6);
    v11.i64[0] = 0x300000003;
    v11.i64[1] = 0x300000003;
    do
    {
      v12 = 0uLL;
      if (v8 >= 4)
      {
        v13 = a2;
        v14 = v8 >> 2;
        do
        {
          v15 = *v13;
          v13 += 4;
          v16 = *&vshrq_n_u32(v15, 0x14uLL) & __PAIR128__(0xFFFFF3FFFFFFF3FFLL, 0xFFFFF3FFFFFFF3FFLL);
          v17 = vandq_s8(vshrq_n_u32(v15, 0xAuLL), v11);
          v18 = vandq_s8(v15, v11);
          v12 = vorrq_s8(v12, vorrq_s8(vcgtq_u32(vmaxq_u32(vmaxq_u32(v18, v16), v17), v10), vcgtq_u32(v9, vminq_u32(vminq_u32(v18, v16), v17))));
          --v14;
        }

        while (v14);
      }

      if ((v8 & 0xFFFFFFFFFFFFFFFCLL) == v8)
      {
        v19 = 0;
      }

      else
      {
        v19 = 0;
        v20 = v8 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v21 = a2[v20];
          v22 = (v21 >> 20) & 0x3FF;
          v23 = (v21 >> 10) & 0x3FF;
          v24 = v21 & 0x3FF;
          v30 = v22 < v5 || v23 < v5 || v22 > v6 || v23 > v6 || v24 < v5 || v24 > v6;
          v19 |= v30;
          ++v20;
        }

        while (v20 < v8);
      }

      if ((vmaxvq_u32(v12) & 0x80000000) != 0)
      {
        break;
      }

      if (v19)
      {
        break;
      }

      ++v4;
      a2 = (a2 + v7);
      v3 = v4 >= v2;
    }

    while (v4 != v2);
  }

  else
  {
    return 1;
  }

  return v3;
}

vImage_Error IIOIOSurfaceWrapper_CIF10::copy_CIF10_8bit_sRGB(IIOIOSurfaceWrapper_CIF10 *this, vImage_Buffer *a2, vImage_Buffer *a3, vImage_Buffer *a4)
{
  Current = CFAbsoluteTimeGetCurrent();
  v8 = *(this + 22);
  if (v8 != 1647534392)
  {
    if (v8 == 1999843442)
    {
      v14 = 197121;
      v13 = 66051;
      if (*(this + 200))
      {
        v9 = &v13;
      }

      else
      {
        v9 = &v14;
      }

      v10 = vImageConvert_XRGB2101010ToARGB8888(a2, 0xFFu, a4, *(this + 64), *(this + 65), v9, 0x10u);
      if (v10)
      {
        _cg_jpeg_mem_term("copy_CIF10_8bit_sRGB", 2129, "*** ERROR vImageConvert_XRGB2101010ToARGB8888 - %d\n");
      }

      goto LABEL_13;
    }

LABEL_12:
    v10 = 4294967246;
    goto LABEL_13;
  }

  if (IOSurfaceGetPlaneCount(*(this + 9)) != 2)
  {
    goto LABEL_12;
  }

  v14 = 197121;
  v13 = 66051;
  v10 = vImageConvert_XRGB2101010_A8ToARGB8888();
  if (v10)
  {
    _cg_jpeg_mem_term("copy_CIF10_8bit_sRGB", 2154, "*** ERROR vImageConvert_XRGB2101010_A8ToARGB8888 - %d\n");
  }

LABEL_13:
  if ((*(&gIIODebugFlags + 1) & 0x80003000) != 0)
  {
    v11 = CFAbsoluteTimeGetCurrent();
    ImageIOLog("COL %s - time: %gms\n", "copy_CIF10_8bit_sRGB", (v11 - Current) * 1000.0);
  }

  return v10;
}

vImage_Error IIOIOSurfaceWrapper_CIF10::copy_to_CIF10_FP16_xsRGB(IIOIOSurfaceWrapper_CIF10 *this, vImage_Buffer *a2, vImage_Buffer *a3, vImage_Buffer *a4)
{
  Current = CFAbsoluteTimeGetCurrent();
  v8 = *(this + 22);
  if (v8 != 1647534392)
  {
    if (v8 == 1999843442)
    {
      *permuteMap = 197121;
      v9 = vImageConvert_XRGB2101010ToARGB16F(a2, 1.0, a4, *(this + 64), *(this + 65), permuteMap, 0x810u);
      goto LABEL_33;
    }

    v15 = v8 >> 24;
    v16 = MEMORY[0x1E69E9830];
    if ((v8 >> 24) <= 0x7F)
    {
      v17 = *(MEMORY[0x1E69E9830] + 4 * v15 + 60) & 0x40000;
    }

    else
    {
      v17 = __maskrune(v15, 0x40000uLL);
      v8 = *(this + 22);
    }

    if (v17)
    {
      v18 = (v8 >> 24);
    }

    else
    {
      v18 = 46;
    }

    v19 = v8 << 8 >> 24;
    if (v19 <= 0x7F)
    {
      v20 = *(v16 + 4 * v19 + 60) & 0x40000;
    }

    else
    {
      v20 = __maskrune(v19, 0x40000uLL);
      v8 = *(this + 22);
    }

    if (v20)
    {
      v21 = (v8 << 8 >> 24);
    }

    else
    {
      v21 = 46;
    }

    v22 = v8 >> 8;
    if (v22 <= 0x7F)
    {
      v23 = *(v16 + 4 * v22 + 60) & 0x40000;
    }

    else
    {
      v23 = __maskrune(v22, 0x40000uLL);
      v8 = *(this + 22);
    }

    if (v23)
    {
      v24 = (v8 >> 8);
    }

    else
    {
      v24 = 46;
    }

    if (v8 <= 0x7F)
    {
      if ((*(v16 + 4 * v8 + 60) & 0x40000) != 0)
      {
        goto LABEL_28;
      }
    }

    else if (__maskrune(v8, 0x40000uLL))
    {
LABEL_28:
      v25 = *(this + 88);
LABEL_31:
      _cg_jpeg_mem_term("copy_to_CIF10_FP16_xsRGB", 2228, "*** _surfacePixelFormat '%c%c%c%c' is not handled\n", v18, v21, v24, v25);
      goto LABEL_32;
    }

    v25 = 46;
    goto LABEL_31;
  }

  if (IOSurfaceGetPlaneCount(*(this + 9)) != 2)
  {
LABEL_32:
    v9 = 4294967246;
    goto LABEL_33;
  }

  BytesPerRowOfPlane = IOSurfaceGetBytesPerRowOfPlane(*(this + 9), 0);
  WidthOfPlane = IOSurfaceGetWidthOfPlane(*(this + 9), 0);
  HeightOfPlane = IOSurfaceGetHeightOfPlane(*(this + 9), 0);
  BaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane(*(this + 9), 0);
  IOSurfaceGetBytesPerRowOfPlane(*(this + 9), 1uLL);
  IOSurfaceGetWidthOfPlane(*(this + 9), 1uLL);
  IOSurfaceGetHeightOfPlane(*(this + 9), 1uLL);
  v14 = IOSurfaceGetBaseAddressOfPlane(*(this + 9), 1uLL);
  v32 = 50462976;
  v9 = 4294967246;
  if (BaseAddressOfPlane && v14)
  {
    *permuteMap = BaseAddressOfPlane;
    v29 = HeightOfPlane;
    v30 = WidthOfPlane;
    v31 = BytesPerRowOfPlane;
    v9 = vImageConvert_XRGB2101010_A8ToARGB16F();
    LogError("copy_to_CIF10_FP16_xsRGB", 2219, "⭕️ check 'b3a8' conversion\n");
  }

LABEL_33:
  if ((*(&gIIODebugFlags + 1) & 0x80003000) != 0)
  {
    v26 = CFAbsoluteTimeGetCurrent();
    ImageIOLog("COL %s - time: %gms\n", "copy_to_CIF10_FP16_xsRGB", (v26 - Current) * 1000.0);
  }

  return v9;
}

uint64_t IIOIOSurfaceWrapper_CIF10::copy_and_colormatch_CIF10_to_P3_CA(IIOIOSurfaceWrapper_CIF10 *this, CGRect a2, vImage_Buffer *a3, vImage_Buffer *a4, vImage_Buffer *a5)
{
  height = a2.size.height;
  width = a2.size.width;
  Current = CFAbsoluteTimeGetCurrent();
  kdebug_trace();
  v33 = xmmword_1EF4DCBE8;
  v34 = *&off_1EF4DCBF8;
  memset(v32, 0, sizeof(v32));
  IIODictionary::IIODictionary(v32);
  if (height == *(this + 13) && width == *(this + 12))
  {
    v10 = MEMORY[0x1E695E4D0];
    if (*(this + 41))
    {
      IIODictionary::setObjectForKey(v32, *MEMORY[0x1E695E4D0], *MEMORY[0x1E695F2C8]);
    }

    v11 = CGImageProviderCreate();
    if (v11)
    {
      (*(*this + 72))(this, v11);
      v12 = CGImageCreateWithImageProvider();
      if (v12)
      {
        v13 = *(this + 54);
        v14 = 4.0;
        if (v13 == 2)
        {
          v14 = 8.0;
        }

        v16 = IIOAlignRowBytes((width * v14), 0);
        if (v13 == 2)
        {
          v17 = 1815491698;
        }

        else
        {
          v17 = 1111970369;
        }

        IOSurfaceWithFormatAndBuffer = IIO_CreateIOSurfaceWithFormatAndBuffer(a5->width, a5->height, v16, v17, a5->data, a5->height * v16, 1, v15);
        if (IOSurfaceWithFormatAndBuffer)
        {
          v30 = 0;
          v31 = 0;
          IIOColorSpace::IIOColorSpace(&v30, *MEMORY[0x1E695F0B8]);
          IIO_IOSurfaceAddColorSpace(IOSurfaceWithFormatAndBuffer, v31);
          IOSurfaceContext = IIO_CreateIOSurfaceContext(IOSurfaceWithFormatAndBuffer, v31);
          if (IOSurfaceContext)
          {
            CGContextClear();
            v35.origin.x = 0.0;
            v35.origin.y = 0.0;
            v35.size.width = width;
            v35.size.height = height;
            CGContextDrawImage(IOSurfaceContext, v35, v12);
            CGContextFlush(IOSurfaceContext);
            if (IOSurfaceLock(IOSurfaceWithFormatAndBuffer, 1u, 0))
            {
              LODWORD(v20) = -50;
            }

            else
            {
              BaseAddress = IOSurfaceGetBaseAddress(IOSurfaceWithFormatAndBuffer);
              if (BaseAddress)
              {
                if (*(this + 54) == 1)
                {
                  v29 = 50331906;
                  v28 = 50462976;
                  src.data = BaseAddress;
                  *&src.height = *&a5->height;
                  src.rowBytes = v16;
                  if (*(this + 200))
                  {
                    v22 = &v28;
                  }

                  else
                  {
                    v22 = &v29;
                  }

                  vImagePermuteChannels_ARGB8888(&src, a5, v22, 0x10u);
                }
              }

              else
              {
                IOSurfaceRemoveValue(IOSurfaceWithFormatAndBuffer, @"com.apple.ImageIO.ImageIO_Malloced");
              }

              IOSurfaceUnlock(IOSurfaceWithFormatAndBuffer, 1u, 0);
              LODWORD(v20) = 0;
            }

            CGContextRelease(IOSurfaceContext);
          }

          else
          {
            LODWORD(v20) = -50;
          }

          IIO_IOSurfaceRelease(IOSurfaceWithFormatAndBuffer);
          IIOColorSpace::~IIOColorSpace(&v30);
        }

        else
        {
          LODWORD(v20) = -50;
        }

        CGImageRelease(v12);
      }

      else
      {
        LODWORD(v20) = -50;
      }

      Property = CGImageProviderGetProperty();
      if (Property != *v10 || Property == 0)
      {
        v20 = v20;
      }

      else
      {
        v20 = 4294967246;
      }

      CGImageProviderRelease();
    }

    else
    {
      v20 = 4294967246;
    }

    if ((*(&gIIODebugFlags + 1) & 0x80003000) != 0)
    {
      v25 = CFAbsoluteTimeGetCurrent();
      ImageIOLog("COL %s - time: %gms\n", "copy_and_colormatch_CIF10_to_P3_CA", (v25 - Current) * 1000.0);
    }
  }

  else
  {
    v20 = 4294967246;
  }

  kdebug_trace();
  IIODictionary::~IIODictionary(v32);
  return v20;
}

void sub_1860A708C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, CGColorSpaceRef);
  v11 = va_arg(va1, void);
  IIOColorSpace::~IIOColorSpace(va);
  IIODictionary::~IIODictionary(va1);
  _Unwind_Resume(a1);
}

uint64_t IIOIOSurfaceWrapper_CIF10::copy_and_colormatch_CIF10_to_P3_MSR(IIOIOSurfaceWrapper_CIF10 *this, CGRect a2, vImage_Buffer *a3, vImage_Buffer *a4, vImage_Buffer *a5)
{
  height = a2.size.height;
  width = a2.size.width;
  x = a2.origin.x;
  y = a2.origin.y;
  kdebug_trace();
  v50 = 0;
  memset(v49, 0, sizeof(v49));
  IIODictionary::IIODictionary(v49);
  v7 = *(this + 54);
  v8 = v7 == 5 || v7 == 2;
  v9 = !v8;
  if (v8)
  {
    v10 = 8;
  }

  else
  {
    v10 = 4;
  }

  if (v8)
  {
    v11 = 1380411457;
  }

  else
  {
    v11 = 1380401729;
  }

  v13 = IOSurfaceAcceleratorCreate();
  if (v13)
  {
    v15 = 0;
  }

  else
  {
    IOSurfaceWithFormatAndBuffer = IIO_CreateIOSurfaceWithFormatAndBuffer(a5->width, a5->height, a5->rowBytes, v11, a5->data, a5->rowBytes * a5->height, 1, v12);
    v15 = IOSurfaceWithFormatAndBuffer;
    if (IOSurfaceWithFormatAndBuffer || (properties[0] = 0, properties[1] = 0, *&v41 = 0, IIODictionary::IIODictionary(properties), IIONumber::IIONumber(&v35, width), IIODictionary::setObjectForKey(properties, value[0], *MEMORY[0x1E696D130]), IIONumber::~IIONumber(&v35), IIONumber::IIONumber(&v35, height), IIODictionary::setObjectForKey(properties, value[0], *MEMORY[0x1E696CF58]), IIONumber::~IIONumber(&v35), IIONumber::IIONumber(&v35, v10), IIODictionary::setObjectForKey(properties, value[0], *MEMORY[0x1E696CE50]), IIONumber::~IIONumber(&v35), IIONumber::IIONumber(&v35, v11), IIODictionary::setObjectForKey(properties, value[0], *MEMORY[0x1E696CFC0]), IIONumber::~IIONumber(&v35), v15 = IOSurfaceCreate(properties[1]), _cg_jpeg_mem_term("copy_and_colormatch_CIF10_to_P3_MSR", 2408, "*** falling back to standard 'IOSurfaceCreate'\n"), IIODictionary::~IIODictionary(properties), v15))
    {
      v16 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
      CGColorSpaceAttachToIOSurface();
      CGColorSpaceRelease(v16);
      IOSurfaceRemoveValue(v15, @"com.apple.ImageIO.ImageIO_Malloced");
      v48 = 0;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v43 = 0u;
      v41 = 0u;
      v42 = 0u;
      *properties = 0u;
      *(&v43 + 11) = 3340;
      v17 = IOSurfaceSetBulkAttachments2();
      if (v17)
      {
        _cg_jpeg_mem_term("copy_and_colormatch_CIF10_to_P3_MSR", 2444, "*** ERROR: IOSurfaceSetBulkAttachments2 -dst- failed [%ld]\n", v17);
      }

      v18.f64[0] = x;
      v18.f64[1] = y;
      v19 = vcvtq_n_u64_f64(v18, 0x10uLL);
      v18.f64[0] = width;
      v18.f64[1] = height;
      v35 = v19;
      *value = vcvtq_n_u64_f64(v18, 0x10uLL);
      v37 = 0;
      v38 = width;
      v39 = height;
      v13 = IOSurfaceAcceleratorTransformSurface();
      if (v13)
      {
        _cg_jpeg_mem_term("copy_and_colormatch_CIF10_to_P3_MSR", 2467, "*** TransformSurface-band err 0x%x (%d)\n", v13, v13);
        goto LABEL_28;
      }

      if (v9)
      {
        *permuteMap = 50331906;
        v33 = 50462976;
        if (IOSurfaceWithFormatAndBuffer)
        {
          if (*(this + 200) == 1)
          {
            v13 = vImagePermuteChannels_ARGB8888(a5, a5, permuteMap, 0x10u);
            goto LABEL_28;
          }
        }

        else if (!IOSurfaceLock(v15, 1u, 0))
        {
          BaseAddress = IOSurfaceGetBaseAddress(v15);
          BytesPerRow = IOSurfaceGetBytesPerRow(v15);
          dest.data = BaseAddress;
          *&dest.height = *&a5->height;
          dest.rowBytes = BytesPerRow;
          if (*(this + 200))
          {
            v27 = permuteMap;
          }

          else
          {
            v27 = &v33;
          }

          v13 = vImagePermuteChannels_ARGB8888(&dest, a5, v27, 0x10u);
          IOSurfaceUnlock(v15, 1u, 0);
          goto LABEL_28;
        }
      }

      else if (*(this + 54) == 2)
      {
        v20 = IOSurfaceGetBaseAddress(v15);
        v21 = IOSurfaceGetBytesPerRow(v15);
        v22 = a5->height;
        v23 = a5->width;
        dest.data = v20;
        dest.height = v22;
        dest.width = 4 * v23;
        dest.rowBytes = v21;
        vImageConvert_16Fto16U(&dest, &dest, 0);
      }
    }

    v13 = 0;
  }

LABEL_28:
  IIO_IOSurfaceRelease(v15);
  if (v50)
  {
    CFRelease(v50);
  }

  kdebug_trace();
  IIODictionary::~IIODictionary(v49);
  return v13;
}

uint64_t IIOIOSurfaceWrapper_CIF10::copy_and_colormatch_CIF10_to_P3_vImage(IIOIOSurfaceWrapper_CIF10 *this, CGRect a2, vImage_Buffer *a3, vImage_Buffer *a4, vImage_Buffer *a5)
{
  kdebug_trace();
  Current = CFAbsoluteTimeGetCurrent();
  v9 = *(this + 41);
  v65 = 0;
  v66 = 0;
  IIOColorSpace::IIOColorSpace(&v65, *MEMORY[0x1E695F110]);
  v63 = 0;
  v64 = 0;
  v10 = *MEMORY[0x1E695F0B8];
  IIOColorSpace::IIOColorSpace(&v63, *MEMORY[0x1E695F0B8]);
  v61 = 0;
  v62 = 0;
  IIOColorSpace::IIOColorSpace(&v61, *MEMORY[0x1E695F1C0]);
  v59 = 0;
  v60 = 0;
  IIOColorSpace::IIOColorSpace(&v59, v10);
  *&v58.renderingIntent = 0;
  *&v58.bitsPerComponent = 0x4000000010;
  v58.colorSpace = v66;
  if (v9)
  {
    v11 = 4353;
  }

  else
  {
    v11 = 4357;
  }

  v58.bitmapInfo = v11;
  *&v58.version = 0uLL;
  *&v57.bitsPerComponent = 0x4000000010;
  v57.colorSpace = v64;
  v57.bitmapInfo = v11;
  memset(&v57.version, 0, 20);
  v56[0] = 0;
  v56[1] = 0;
  IIOColorConverter::IIOColorConverter(v56, &v58, &v57, v62, v60);
  width = a5->width;
  v47 = malloc_type_malloc(width << 9, 0x6D3B9654uLL);
  v13 = malloc_type_malloc(width << 9, 0x79991EA3uLL);
  if ((*(&gIIODebugFlags + 1) & 0x80003000) != 0)
  {
    v14 = v13;
    ImageIOLog("COL copy_and_colormatch_CIF10_to_P3_vImage: allocating FP16 buffers: 2 x %ld = %ld\n", width << 9, width << 10);
    v13 = v14;
  }

  v55.data = v47;
  v55.height = 64;
  v54.data = v13;
  v54.height = 64;
  v15 = a5->width;
  rowBytes = a5->rowBytes;
  v55.width = v15;
  v55.rowBytes = 8 * width;
  v54.width = v15;
  v54.rowBytes = 8 * width;
  v17 = *&a3->width;
  *&v53.data = *&a3->data;
  *&v53.width = v17;
  memset(&v52, 0, sizeof(v52));
  if (a4)
  {
    v18 = *&a4->width;
    *&v52.data = *&a4->data;
    *&v52.width = v18;
  }

  height = a5->height;
  v44 = v13;
  if (!height)
  {
    goto LABEL_63;
  }

  v20 = 0;
  v49 = 4 * v15;
  v45 = 8 * v15;
  v46 = a4;
  v21 = 4294967246;
  v22 = 64;
  v23 = 64;
  while (1)
  {
    if (v20 + v23 <= height)
    {
      v53.height = v23;
      v52.height = v23;
      if (!v22)
      {
        v20 += v23;
        goto LABEL_60;
      }
    }

    else
    {
      v23 = (height - v20);
      v55.height = v23;
      v54.height = v23;
      v53.height = v23;
      v52.height = v23;
      v22 = v23;
      if (height == v20)
      {
        goto LABEL_64;
      }
    }

    v24 = *(this + 22);
    if (v24 == 1647534392)
    {
      v53.data = a3->data + *(this + 14) * v20;
      v52.data = v46->data + *(this + 30) * v20;
      v25 = IIOIOSurfaceWrapper_CIF10::convert_b3a8_to_ARGB16F(this, &v53, &v52, &v55);
      goto LABEL_18;
    }

    if (v24 == 1999843442)
    {
      v53.data = a3->data + *(this + 14) * v20;
      v25 = IIOIOSurfaceWrapper_CIF10::convert_w30r_to_ARGB16F(this, &v53, &v55);
LABEL_18:
      LODWORD(v21) = v25;
      goto LABEL_44;
    }

    v26 = v24 >> 24;
    if ((v24 >> 24) <= 0x7F)
    {
      v27 = *(MEMORY[0x1E69E9830] + 4 * v26 + 60) & 0x40000;
    }

    else
    {
      v27 = __maskrune(v26, 0x40000uLL);
      v24 = *(this + 22);
    }

    v28 = v27 ? (v24 >> 24) : 46;
    v29 = v24 << 8 >> 24;
    if (v29 <= 0x7F)
    {
      v30 = *(MEMORY[0x1E69E9830] + 4 * v29 + 60) & 0x40000;
    }

    else
    {
      v30 = __maskrune(v29, 0x40000uLL);
      v24 = *(this + 22);
    }

    v31 = v30 ? (v24 << 8 >> 24) : 46;
    v32 = v24 >> 8;
    if (v32 <= 0x7F)
    {
      v33 = *(MEMORY[0x1E69E9830] + 4 * v32 + 60) & 0x40000;
    }

    else
    {
      v33 = __maskrune(v32, 0x40000uLL);
      v24 = *(this + 22);
    }

    v34 = v33 ? (v24 >> 8) : 46;
    if (v24 <= 0x7F)
    {
      if ((*(MEMORY[0x1E69E9830] + 4 * v24 + 60) & 0x40000) == 0)
      {
LABEL_42:
        v35 = 46;
        goto LABEL_43;
      }
    }

    else if (!__maskrune(v24, 0x40000uLL))
    {
      goto LABEL_42;
    }

    v35 = *(this + 88);
LABEL_43:
    _cg_jpeg_mem_term("copy_and_colormatch_CIF10_to_P3_vImage", 2602, "*** ERROR - check the _surfacePixelFormat case '%c%c%c%c'\n", v28, v31, v34, v35);
LABEL_44:
    if (v21)
    {
      _cg_jpeg_mem_term("copy_and_colormatch_CIF10_to_P3_vImage", 2606, "*** ERROR: conversion from CIF10 to FP16 failed: %d\n", v21);
    }

    v36 = IIOColorConverter::colorConvert(v56, &v55, &v54);
    v21 = v36;
    if (v36)
    {
      _cg_jpeg_mem_term("copy_and_colormatch_CIF10_to_P3_vImage", 2613, "*** ERROR: color conversion fp16_xsRGB to fp16_P3 failed: %d\n", v36);
    }

    data = a5->data;
    *&src.data = *&v54.data;
    src.rowBytes = v54.rowBytes;
    src.width = 4 * v54.width;
    v38 = &data[a5->rowBytes * v20];
    dest.data = v38;
    dest.height = v22;
    dest.width = v49;
    dest.rowBytes = rowBytes;
    if (!v54.data || !data)
    {
      break;
    }

    v39 = *(this + 54);
    if (v39 == 2)
    {
      if (src.rowBytes < 8 * v54.width || rowBytes < v45)
      {
        goto LABEL_64;
      }

      v41 = vImageConvert_16Fto16U(&src, &dest, 0x10u);
      v21 = v41;
      if (v41)
      {
        _cg_jpeg_mem_term("copy_and_colormatch_CIF10_to_P3_vImage", 2654, "*** ERROR: vImageConvert_16Fto16U err: %d\n", v41);
      }
    }

    else if (v39 == 1)
    {
      v40 = vImageConvert_Planar16FtoPlanar8(&src, &dest, 0x10u);
      v21 = v40;
      if (v40)
      {
        _cg_jpeg_mem_term("copy_and_colormatch_CIF10_to_P3_vImage", 2639, "*** ERROR: vImageConvert_Planar16FtoPlanar8 err: %d\n", v40);
      }
    }

    else
    {
      _cg_jpeg_mem_term("copy_and_colormatch_CIF10_to_P3_vImage", 2658, "*** ERROR: unexpected _componentType (%d)\n", *(this + 54));
    }

    height = a5->height;
    v20 += v23;
LABEL_60:
    if (v20 >= height)
    {
      goto LABEL_64;
    }
  }

  _cg_jpeg_mem_term("copy_and_colormatch_CIF10_to_P3_vImage", 2630, "*** ERROR: NULL buffer data - p3Temp.data: %p, finalTemp.data: %p\n", v54.data, v38);
LABEL_63:
  v21 = 4294967246;
LABEL_64:
  if (v47)
  {
    free(v47);
  }

  if (v44)
  {
    free(v44);
  }

  if ((gIIODebugFlags & 0x8000300000) != 0)
  {
    v42 = CFAbsoluteTimeGetCurrent();
    ImageIOLog("COL %s - time: %gms\n", "copy_and_colormatch_CIF10_to_P3_vImage", (v42 - Current) * 1000.0);
  }

  kdebug_trace();
  IIOColorConverter::~IIOColorConverter(v56);
  IIOColorSpace::~IIOColorSpace(&v59);
  IIOColorSpace::~IIOColorSpace(&v61);
  IIOColorSpace::~IIOColorSpace(&v63);
  IIOColorSpace::~IIOColorSpace(&v65);
  return v21;
}

void sub_1860A7BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  IIOColorConverter::~IIOColorConverter(&a43);
  IIOColorSpace::~IIOColorSpace((v43 - 176));
  IIOColorSpace::~IIOColorSpace((v43 - 160));
  IIOColorSpace::~IIOColorSpace((v43 - 144));
  IIOColorSpace::~IIOColorSpace((v43 - 128));
  _Unwind_Resume(a1);
}

vImage_Error IIOIOSurfaceWrapper_CIF10::convert_w30r_to_ARGB16F(IIOIOSurfaceWrapper_CIF10 *this, vImage_Buffer *src, vImage_Buffer *dest)
{
  *permuteMap = 197121;
  v3 = vImageConvert_XRGB2101010ToARGB16F(src, 1.0, dest, *(this + 64), *(this + 65), permuteMap, 0x810u);
  if (v3)
  {
    kdebug_trace();
  }

  return v3;
}

uint64_t IIOIOSurfaceWrapper_CIF10::convert_b3a8_to_ARGB16F(IIOIOSurfaceWrapper_CIF10 *this, vImage_Buffer *a2, vImage_Buffer *a3, vImage_Buffer *a4)
{
  if (*(this + 16) != 2)
  {
    return 4294967246;
  }

  v4 = vImageConvert_XRGB2101010_A8ToARGB16F();
  if (v4)
  {
    kdebug_trace();
  }

  return v4;
}

uint64_t IIOIOSurfaceWrapper_CIF10::copyImageBlockSet_8bit(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v31 = xmmword_1EF4DCC98;
  v32 = xmmword_1EF4DCC88;
  ColorMatchMode = IIOIOSurfaceWrapper_CIF10::getColorMatchMode(a1, *&a2);
  if (IOSurfaceLock(*(a1 + 72), 1u, 0))
  {
    goto LABEL_26;
  }

  v11 = *(a1 + 72);
  if (*(a1 + 88) == 1647534392)
  {
    BaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane(v11, 0);
    v13 = IOSurfaceGetBaseAddressOfPlane(*(a1 + 72), 1uLL);
    if (BaseAddressOfPlane)
    {
      goto LABEL_4;
    }

LABEL_7:
    _cg_jpeg_mem_term("copyImageBlockSet_8bit", 2742, "*** IOSurfaceGetBaseAddress returned NULL -- (protected: %s)\n");
LABEL_25:
    IOSurfaceUnlock(*(a1 + 72), 1u, 0);
    goto LABEL_26;
  }

  BaseAddressOfPlane = IOSurfaceGetBaseAddress(v11);
  v13 = 0;
  if (!BaseAddressOfPlane)
  {
    goto LABEL_7;
  }

LABEL_4:
  v19 = *(a1 + 112);
  v20 = a2 * *(a1 + 120);
  v21 = &BaseAddressOfPlane[v20 + (a3 * v19)];
  v22 = *(a1 + 240);
  if (v13)
  {
    v20 = a2 * *(a1 + 248);
    v23 = v13 + v20 + (a3 * v22);
  }

  else
  {
    v23 = 0;
  }

  v30.data = v21;
  v30.height = a5;
  v30.width = a4;
  v30.rowBytes = v19;
  v29.data = *(a1 + 168);
  v29.height = a5;
  v24 = *(a1 + 184);
  v29.width = a4;
  v29.rowBytes = v24;
  v28[0] = v23;
  v28[1] = a5;
  v28[2] = a4;
  v28[3] = v22;
  if (v23)
  {
    v25 = v28;
  }

  else
  {
    v25 = 0;
  }

  if (*(a1 + 272) == 1)
  {
    v26 = IIOIOSurfaceWrapper_CIF10::copy_CIF10_8bit_sRGB(a1, &v30, v25, &v29);
    IOSurfaceUnlock(*(a1 + 72), 1u, 0);
    if (!v26)
    {
      goto LABEL_28;
    }

LABEL_26:
    _ImageIO_Free(*(a1 + 168), *(a1 + 176));
    result = 0;
    *(a1 + 168) = 0;
    return result;
  }

  if (ColorMatchMode == 2)
  {
    if (gCanUseMSRForColorConversion == 1)
    {
      v34.origin.x = a2;
      v34.origin.y = a3;
      v34.size.width = a4;
      v34.size.height = a5;
      if (!IIOIOSurfaceWrapper_CIF10::copy_and_colormatch_CIF10_to_P3_MSR(a1, v34, v14, v15, &v29))
      {
        goto LABEL_27;
      }

      *&v20 = _cg_jpeg_mem_term("copyImageBlockSet_8bit", 2804, "*** ERROR: copy_and_colormatch_CIF10_to_P3_MSR returned: %d\n").n128_u64[0];
    }
  }

  else if (ColorMatchMode == 1 && (*(a1 + 267) & 1) == 0)
  {
    v33.origin.x = a2;
    v33.origin.y = a3;
    v33.size.width = a4;
    v33.size.height = a5;
    if (!IIOIOSurfaceWrapper_CIF10::copy_and_colormatch_CIF10_to_P3_CA(a1, v33, v14, v15, &v29))
    {
      goto LABEL_27;
    }

    *&v20 = _cg_jpeg_mem_term("copyImageBlockSet_8bit", 2796, "*** ERROR: copy_and_colormatch_CIF10_to_P3_CA returned: %d\n").n128_u64[0];
  }

  if (IIOIOSurfaceWrapper_CIF10::copy_and_colormatch_CIF10_to_P3_vImage(a1, *(&v16 - 1), &v30, v25, &v29))
  {
    _cg_jpeg_mem_term("copyImageBlockSet_8bit", 2810, "*** ERROR: copy_and_colormatch_CIF10_to_P3_vImage returned: %d\n");
    goto LABEL_25;
  }

LABEL_27:
  IOSurfaceUnlock(*(a1 + 72), 1u, 0);
LABEL_28:
  v30.data = CGImageBlockCreate();
  return CGImageBlockSetCreate();
}

uint64_t IIOIOSurfaceWrapper_CIF10::getColorMatchMode(IIOIOSurfaceWrapper_CIF10 *this, CGRect a2)
{
  v2 = *(this + 67);
  if (gCanUseMSRForColorConversion)
  {
    v3 = 2;
  }

  else
  {
    v3 = 3;
  }

  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  if (v4 == 1)
  {
    height = a2.size.height;
    width = a2.size.width;
    v4 = 3;
    if ((IIOIsAppSuspended() & 1) == 0)
    {
      v8 = *(this + 12);
      v9 = *(this + 13);
      if ((v9 * v8) >> 7 >= 0xE1)
      {
        v4 = 1;
      }

      else
      {
        v4 = 3;
      }

      if (width != v8 || height != v9)
      {
        if (*(this + 54) == 1)
        {
          if (gCanUseMSRForColorConversion)
          {
            return 2;
          }

          else
          {
            return 3;
          }
        }

        else
        {
          return 3;
        }
      }
    }
  }

  return v4;
}

uint64_t IIOIOSurfaceWrapper_CIF10::copyImageBlockSet_16bit(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v58 = xmmword_1EF4DCC98;
  v59 = xmmword_1EF4DCC88;
  v57 = 0;
  ColorMatchMode = IIOIOSurfaceWrapper_CIF10::getColorMatchMode(a1, *&a2);
  if (IOSurfaceLock(*(a1 + 72), 1u, 0))
  {
LABEL_2:
    v11 = -50;
    goto LABEL_3;
  }

  v25 = *(a1 + 72);
  if (*(a1 + 88) == 1647534392)
  {
    BaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane(v25, 0);
    v27 = IOSurfaceGetBaseAddressOfPlane(*(a1 + 72), 1uLL);
    if (BaseAddressOfPlane)
    {
      goto LABEL_29;
    }

LABEL_32:
    if (*(a1 + 140))
    {
      v38 = "YES";
    }

    else
    {
      v38 = "NO";
    }

    _cg_jpeg_mem_term("copyImageBlockSet_16bit", 2868, "*** IOSurfaceGetBaseAddress returned NULL -- (protected: %s)\n", v38);
    IOSurfaceUnlock(*(a1 + 72), 1u, 0);
    goto LABEL_2;
  }

  BaseAddressOfPlane = IOSurfaceGetBaseAddress(v25);
  v27 = 0;
  if (!BaseAddressOfPlane)
  {
    goto LABEL_32;
  }

LABEL_29:
  v33 = *(a1 + 112);
  v34 = a2 * *(a1 + 120);
  v35 = &BaseAddressOfPlane[v34 + (a3 * v33)];
  v36 = *(a1 + 240);
  if (v27)
  {
    v34 = a2 * *(a1 + 248);
    v37 = v27 + v34 + (a3 * v36);
  }

  else
  {
    v37 = 0;
  }

  v56.data = v35;
  v56.height = a5;
  v56.width = a4;
  v56.rowBytes = v33;
  v55.data = *(a1 + 168);
  v55.height = a5;
  v39 = *(a1 + 184);
  v55.width = a4;
  v55.rowBytes = v39;
  v54[0] = v37;
  v54[1] = a5;
  v54[2] = a4;
  v54[3] = v36;
  if (v37)
  {
    v40 = v54;
  }

  else
  {
    v40 = 0;
  }

  v41 = *(a1 + 88);
  if (v41 != 1999843442 && v41 != 1647534392)
  {
    v44 = v41 >> 24;
    if ((v41 >> 24) <= 0x7F)
    {
      v45 = *(MEMORY[0x1E69E9830] + 4 * v44 + 60) & 0x40000;
    }

    else
    {
      v45 = __maskrune(v44, 0x40000uLL);
      v41 = *(a1 + 88);
    }

    if (v45)
    {
      v46 = (v41 >> 24);
    }

    else
    {
      v46 = 46;
    }

    v47 = v41 << 8 >> 24;
    if (v47 <= 0x7F)
    {
      v48 = *(MEMORY[0x1E69E9830] + 4 * v47 + 60) & 0x40000;
    }

    else
    {
      v48 = __maskrune(v47, 0x40000uLL);
      v41 = *(a1 + 88);
    }

    if (v48)
    {
      v49 = (v41 << 8 >> 24);
    }

    else
    {
      v49 = 46;
    }

    v50 = v41 >> 8;
    if (v50 <= 0x7F)
    {
      v51 = *(MEMORY[0x1E69E9830] + 4 * v50 + 60) & 0x40000;
    }

    else
    {
      v51 = __maskrune(v50, 0x40000uLL);
      v41 = *(a1 + 88);
    }

    if (v51)
    {
      v52 = (v41 >> 8);
    }

    else
    {
      v52 = 46;
    }

    if (v41 <= 0x7F)
    {
      if ((*(MEMORY[0x1E69E9830] + 4 * v41 + 60) & 0x40000) != 0)
      {
        goto LABEL_71;
      }
    }

    else if (__maskrune(v41, 0x40000uLL))
    {
LABEL_71:
      v53 = *(a1 + 88);
LABEL_74:
      LogError("copyImageBlockSet_16bit", 2948, "*** pixelFormat '%c%c%c%c' not supported\n", v46, v49, v52, v53);
      v11 = -4;
      goto LABEL_75;
    }

    v53 = 46;
    goto LABEL_74;
  }

  if (*(a1 + 216) == 5)
  {
    v42 = IIOIOSurfaceWrapper_CIF10::copy_to_CIF10_FP16_xsRGB(a1, &v56, v29, &v55);
    if (v42)
    {
      v11 = v42;
      _cg_jpeg_mem_term("copyImageBlockSet_16bit", 2890, "*** ERROR: copy_to_CIF10_FP16_xsRGB returned: %d\n", v42);
LABEL_75:
      IOSurfaceUnlock(*(a1 + 72), 1u, 0);
LABEL_3:
      kdebug_trace();
      v12 = *(a1 + 88);
      v13 = v12 >> 24;
      v14 = MEMORY[0x1E69E9830];
      if ((v12 >> 24) <= 0x7F)
      {
        v15 = *(MEMORY[0x1E69E9830] + 4 * v13 + 60) & 0x40000;
      }

      else
      {
        v15 = __maskrune(v13, 0x40000uLL);
        v12 = *(a1 + 88);
      }

      if (v15)
      {
        v16 = (v12 >> 24);
      }

      else
      {
        v16 = 46;
      }

      v17 = v12 << 8 >> 24;
      if (v17 <= 0x7F)
      {
        v18 = *(v14 + 4 * v17 + 60) & 0x40000;
      }

      else
      {
        v18 = __maskrune(v17, 0x40000uLL);
        v12 = *(a1 + 88);
      }

      if (v18)
      {
        v19 = (v12 << 8 >> 24);
      }

      else
      {
        v19 = 46;
      }

      v20 = v12 >> 8;
      if (v20 <= 0x7F)
      {
        v21 = *(v14 + 4 * v20 + 60) & 0x40000;
      }

      else
      {
        v21 = __maskrune(v20, 0x40000uLL);
        v12 = *(a1 + 88);
      }

      if (v21)
      {
        v22 = (v12 >> 8);
      }

      else
      {
        v22 = 46;
      }

      if (v12 <= 0x7F)
      {
        if ((*(v14 + 4 * v12 + 60) & 0x40000) != 0)
        {
          goto LABEL_23;
        }
      }

      else if (__maskrune(v12, 0x40000uLL))
      {
LABEL_23:
        v23 = *(a1 + 88);
LABEL_26:
        LogError("copyImageBlockSet_16bit", 2968, "*** copyImageBlockSet_16bit '%c%c%c%c' failed: err=%d\n", v16, v19, v22, v23, v11);
        _ImageIO_Free(*(a1 + 168), *(a1 + 176));
        result = 0;
        *(a1 + 168) = 0;
        return result;
      }

      v23 = 46;
      goto LABEL_26;
    }

    goto LABEL_76;
  }

  if (ColorMatchMode == 1 && (*(a1 + 267) & 1) == 0)
  {
    v60.origin.x = a2;
    v60.origin.y = a3;
    v60.size.width = a4;
    v60.size.height = a5;
    v43 = IIOIOSurfaceWrapper_CIF10::copy_and_colormatch_CIF10_to_P3_CA(a1, v60, v28, v29, &v55);
    if (!v43)
    {
LABEL_76:
      IOSurfaceUnlock(*(a1 + 72), 1u, 0);
      goto LABEL_77;
    }

    *&v34 = _cg_jpeg_mem_term("copyImageBlockSet_16bit", 2928, "*** ERROR: copy_and_colormatch_CIF10_to_P3_CA returned: %d\n", v43).n128_u64[0];
  }

  v11 = IIOIOSurfaceWrapper_CIF10::copy_and_colormatch_CIF10_to_P3_vImage(a1, *(&v30 - 1), &v56, v40, &v55);
  IOSurfaceUnlock(*(a1 + 72), 1u, 0);
  if (v11)
  {
    goto LABEL_3;
  }

LABEL_77:
  v57 = CGImageBlockCreate();
  return CGImageBlockSetCreate();
}

uint64_t IIOIOSurfaceWrapper_CIF10::copyImageBlockSetWithOptions8Bit(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  pthread_mutex_lock((a1 + 8));
  v20 = (*(*a1 + 40))(a1, 8, a3, a5, a6, a7, a8, a9, a10);
  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = (*(*a1 + 24))(a1, a2, a3, a5, a6, a7, a8, a9, a10);
  }

  (*(*a1 + 48))(a1);
  if (v20)
  {
    _cg_jpeg_mem_term("copyImageBlockSetWithOptions8Bit", 3211, "*** ERROR: copyImageBlockSetWithOptions8Bit err = %d\n", v20);
  }

  *a4 = (*(*a1 + 64))(a1, v20, a5, a6, a7, a8);
  pthread_mutex_unlock((a1 + 8));
  return v21;
}

uint64_t IIOIOSurfaceWrapper_CIF10::copyImageBlockSetWithOptions16Bit(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  pthread_mutex_lock((a1 + 8));
  v20 = (*(*a1 + 40))(a1, 16, a3, a5, a6, a7, a8, a9, a10);
  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = (*(*a1 + 32))(a1, a2, a3, a5, a6, a7, a8, a9, a10);
  }

  (*(*a1 + 48))(a1);
  if (v20)
  {
    _cg_jpeg_mem_term("copyImageBlockSetWithOptions16Bit", 3246, "*** ERROR: copyImageBlockSetWithOptions16Bit err = %d\n", v20);
  }

  *a4 = (*(*a1 + 64))(a1, v20, a5, a6, a7, a8);
  pthread_mutex_unlock((a1 + 8));
  return v21;
}

unint64_t IIOIOSurfaceWrapper_CIF10::packDebugInfo(IIOIOSurfaceWrapper_CIF10 *this, CGRect a2, uint64_t a3)
{
  result = IIOIOSurfaceWrapperBase::packDebugInfo(this, a2, a3);
  if (*(this + 200))
  {
    result |= 0x1000uLL;
  }

  return result;
}

void IIOIOSurfaceWrapper_YCC::IIOIOSurfaceWrapper_YCC(IIOIOSurfaceWrapper_YCC *this, __IOSurface *a2, size_t a3, size_t a4, int a5, CGImageAlphaInfo a6, IIODictionary *a7)
{
  IIOIOSurfaceWrapperBase::IIOIOSurfaceWrapperBase(this, a2, a3, a4, a5, a6, a7);
  v9 = &unk_1EF4DCC18;
  *v10 = &unk_1EF4DCC18;
  if (v10[16] < 2uLL)
  {
    *(this + 14) = 0u;
    *(this + 15) = 0u;
  }

  else
  {
    *(this + 28) = IOSurfaceGetWidthOfPlane(*(this + 9), 1uLL);
    *(this + 29) = IOSurfaceGetHeightOfPlane(*(this + 9), 1uLL);
    *(this + 30) = IOSurfaceGetBytesPerRowOfPlane(*(this + 9), 1uLL);
    *(this + 31) = IOSurfaceGetBytesPerElementOfPlane(*(this + 9), 1uLL);
    v9 = *this;
  }

  v9[7](this, a7, 0);
}

void IIOIOSurfaceWrapper_YCC::~IIOIOSurfaceWrapper_YCC(IIOIOSurfaceWrapper_YCC *this)
{
  IIOIOSurfaceWrapperBase::~IIOIOSurfaceWrapperBase(this);

  JUMPOUT(0x186602850);
}

void IIOIOSurfaceWrapper_YCC::completeSetup(IIOIOSurfaceWrapper_YCC *this, IIODictionary *a2, const __CFString *a3)
{
  v4 = *(this + 22);
  if (v4 > 2016686641)
  {
    if (v4 <= 2019963439)
    {
      v6 = v4 == 2016686642;
      v7 = 2016687156;
    }

    else
    {
      v6 = v4 == 2019963440 || v4 == 2019963442;
      v7 = 2019963956;
    }

    if (v6 || v4 == v7)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v4 > 875704933)
    {
      if (v4 != 875704934 && v4 != 875836518)
      {
        if (v4 != 2016686640)
        {
          goto LABEL_30;
        }

LABEL_26:
        *(this + 54) = 6;
        v9 = *MEMORY[0x1E695F110];
        *(this + 41) = 0;
        goto LABEL_27;
      }

LABEL_19:
      *(this + 54) = 1;
      v9 = *MEMORY[0x1E695F1C0];
      *(this + 41) = 5;
      goto LABEL_27;
    }

    if (v4 == 875704422 || v4 == 875704438)
    {
      goto LABEL_19;
    }
  }

LABEL_30:
  v11 = v4 >> 24;
  if ((v4 >> 24) <= 0x7F)
  {
    v12 = *(MEMORY[0x1E69E9830] + 4 * v11 + 60) & 0x40000;
  }

  else
  {
    v12 = __maskrune(v11, 0x40000uLL);
    v4 = *(this + 22);
  }

  if (v12)
  {
    v13 = (v4 >> 24);
  }

  else
  {
    v13 = 46;
  }

  v14 = v4 << 8 >> 24;
  if (v14 <= 0x7F)
  {
    v15 = *(MEMORY[0x1E69E9830] + 4 * v14 + 60) & 0x40000;
  }

  else
  {
    v15 = __maskrune(v14, 0x40000uLL);
    v4 = *(this + 22);
  }

  if (v15)
  {
    v16 = (v4 << 8 >> 24);
  }

  else
  {
    v16 = 46;
  }

  v17 = v4 >> 8;
  if (v17 <= 0x7F)
  {
    v18 = *(MEMORY[0x1E69E9830] + 4 * v17 + 60) & 0x40000;
  }

  else
  {
    v18 = __maskrune(v17, 0x40000uLL);
    v4 = *(this + 22);
  }

  if (v18)
  {
    v19 = (v4 >> 8);
  }

  else
  {
    v19 = 46;
  }

  if (v4 <= 0x7F)
  {
    if ((*(MEMORY[0x1E69E9830] + 4 * v4 + 60) & 0x40000) != 0)
    {
      goto LABEL_50;
    }

LABEL_52:
    v20 = 46;
    goto LABEL_53;
  }

  if (!__maskrune(v4, 0x40000uLL))
  {
    goto LABEL_52;
  }

LABEL_50:
  v20 = *(this + 88);
LABEL_53:
  LogError("completeSetup", 3318, "*** pixelformat '%c%c%c%c' not handled\n", v13, v16, v19, v20);
  v9 = 0;
LABEL_27:

  IIOIOSurfaceWrapperBase::completeSetup(this, a2, v9);
}

uint64_t IIOIOSurfaceWrapper_YCC::createImage(IIOIOSurfaceWrapper_YCC *this)
{
  v2 = *(this + 22);
  if (v2 <= 2016686641)
  {
    if (v2 <= 875704933)
    {
      v3 = v2 == 875704422;
      v5 = 875704438;
      goto LABEL_15;
    }

    v3 = v2 == 875704934 || v2 == 875836518;
    v4 = 12848;
    goto LABEL_14;
  }

  if (v2 <= 2019963439)
  {
    v3 = v2 == 2016686642;
    v4 = 13364;
LABEL_14:
    v5 = v4 | 0x78340000;
    goto LABEL_15;
  }

  v3 = v2 == 2019963440 || v2 == 2019963956;
  v5 = 2019963442;
LABEL_15:
  if (!v3 && v2 != v5)
  {
    v8 = v2 >> 24;
    if ((v2 >> 24) <= 0x7F)
    {
      v9 = *(MEMORY[0x1E69E9830] + 4 * v8 + 60) & 0x40000;
    }

    else
    {
      v9 = __maskrune(v8, 0x40000uLL);
      v2 = *(this + 22);
    }

    if (v9)
    {
      v10 = (v2 >> 24);
    }

    else
    {
      v10 = 46;
    }

    v11 = v2 << 8 >> 24;
    if (v11 <= 0x7F)
    {
      v12 = *(MEMORY[0x1E69E9830] + 4 * v11 + 60) & 0x40000;
    }

    else
    {
      v12 = __maskrune(v11, 0x40000uLL);
      v2 = *(this + 22);
    }

    if (v12)
    {
      v13 = (v2 << 8 >> 24);
    }

    else
    {
      v13 = 46;
    }

    v14 = v2 >> 8;
    if (v14 <= 0x7F)
    {
      v15 = *(MEMORY[0x1E69E9830] + 4 * v14 + 60) & 0x40000;
    }

    else
    {
      v15 = __maskrune(v14, 0x40000uLL);
      v2 = *(this + 22);
    }

    if (v15)
    {
      v16 = (v2 >> 8);
    }

    else
    {
      v16 = 46;
    }

    if (v2 <= 0x7F)
    {
      if ((*(MEMORY[0x1E69E9830] + 4 * v2 + 60) & 0x40000) != 0)
      {
        goto LABEL_43;
      }
    }

    else if (__maskrune(v2, 0x40000uLL))
    {
LABEL_43:
      v17 = *(this + 88);
LABEL_46:
      _cg_jpeg_mem_term("createImage", 3348, "    CGImageCreateFromIOSurface -- unsupported pixelformat: '%c%c%c%c'\n", v10, v13, v16, v17);
      return 0;
    }

    v17 = 46;
    goto LABEL_46;
  }

  return IIOIOSurfaceWrapper_YCC::createImageWithImageProvider(this);
}

uint64_t IIOIOSurfaceWrapper_YCC::createImageWithImageProvider(IIOIOSurfaceWrapper_YCC *this)
{
  v12[2] = 0;
  v12[3] = 2;
  v2 = IIOIOSurfaceWrapper_YCC::CopyImageBlockSetWithOptions;
  if (*(this + 140))
  {
    v2 = IIOIOSurfaceWrapperBase::CopyImageBlockSetWithOptionsNoOp;
  }

  v12[4] = v2;
  v12[5] = IIOIOSurfaceWrapperBase::CopyIOSurface;
  v12[6] = IIOIOSurfaceWrapperBase::ReleaseInfo;
  v12[0] = 0;
  v12[1] = 0;
  IIODictionary::IIODictionary(v12);
  v3 = *(this + 41);
  if (v3 <= 6)
  {
    v4 = MEMORY[0x1E695E4D0];
    if (((1 << v3) & 6) != 0)
    {
      IIODictionary::setObjectForKey(v12, *MEMORY[0x1E695E4D0], *MEMORY[0x1E695F2C8]);
    }

    else if (((1 << v3) & 0x18) == 0)
    {
      if (((1 << v3) & 0x60) == 0)
      {
        goto LABEL_11;
      }

      v5 = MEMORY[0x1E695F2C0];
      goto LABEL_10;
    }

    v5 = MEMORY[0x1E695F2B8];
LABEL_10:
    IIODictionary::setObjectForKey(v12, *v4, *v5);
  }

LABEL_11:
  v6 = *(this + 10);
  v10 = 0;
  v11 = 0;
  IIOColorSpace::IIOColorSpace(&v10, *MEMORY[0x1E695F1C0]);
  if (!v6)
  {
    v6 = v11;
  }

  v7 = CGImageProviderCreate();
  if (v7)
  {
    (*(*this + 72))(this, v7);
    v8 = CGImageCreateWithImageProvider();
    CGImageProviderRelease();
    if (!*(this + 10))
    {
      IIO_IOSurfaceAddColorSpace(*(this + 9), v6);
    }
  }

  else
  {
    v8 = 0;
  }

  IIOColorSpace::~IIOColorSpace(&v10);
  IIODictionary::~IIODictionary(v12);
  return v8;
}

void sub_1860A9224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

uint64_t IIOIOSurfaceWrapper_YCC::CopyImageBlockSetWithOptions(uint64_t a1, uint64_t a2, __CFDictionary *a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  memset(v36, 0, sizeof(v36));
  IIODictionary::IIODictionary(v36, a3);
  v18 = *(a1 + 216);
  IIOPackCopyCallbackInfo(a3);
  CGImageProviderGetBitmapInfo();
  kdebug_trace();
  if ((gIIODebugFlags & 0xC000) != 0)
  {
    v20 = *(a1 + 88);
    v21 = v20 >> 24;
    if ((v20 >> 24) <= 0x7F)
    {
      v22 = *(MEMORY[0x1E69E9830] + 4 * v21 + 60) & 0x40000;
    }

    else
    {
      v22 = __maskrune(v20 >> 24, 0x40000uLL);
    }

    if (v22)
    {
      v23 = v21;
    }

    else
    {
      v23 = 46;
    }

    v24 = v20 << 8 >> 24;
    if (v24 <= 0x7F)
    {
      v25 = *(MEMORY[0x1E69E9830] + 4 * v24 + 60) & 0x40000;
    }

    else
    {
      v25 = __maskrune(v20 << 8 >> 24, 0x40000uLL);
    }

    if (v25)
    {
      v26 = v24;
    }

    else
    {
      v26 = 46;
    }

    v27 = v20 >> 8;
    if (v27 <= 0x7F)
    {
      v28 = *(MEMORY[0x1E69E9830] + 4 * v27 + 60) & 0x40000;
    }

    else
    {
      v28 = __maskrune(v20 >> 8, 0x40000uLL);
    }

    v20 = v20;
    if (v20 <= 0x7F)
    {
      v29 = *(MEMORY[0x1E69E9830] + 4 * v20 + 60) & 0x40000;
    }

    else
    {
      v29 = __maskrune(v20, 0x40000uLL);
    }

    if (v28)
    {
      v30 = v27;
    }

    else
    {
      v30 = 46;
    }

    if (v29)
    {
      v31 = v20;
    }

    else
    {
      v31 = 46;
    }

    ImageIOLog("S   CopyImageBlockSetWithOptions_YCC: {%g, %g, %g, %g} {%g, %g} '%c%c%c%c' %s\n", a4, a5, a6, a7, a8, a9, v23, v26, v30, v31, off_1E6F0BD88[v18]);
  }

  v35 = 0;
  if (*(a1 + 141) == 1)
  {
    v32 = IIOIOSurfaceWrapperBase::createBlockSetForCompressedSurface(a1, a4, a5, a6, a7, a2, v19, &v35);
  }

  else if (v18 == 6)
  {
    v32 = IIOIOSurfaceWrapper_YCC::copyImageBlockSetWithOptions10Bit(a1, a2, v19, &v35);
  }

  else
  {
    if (v18 != 1)
    {
      LogError("CopyImageBlockSetWithOptions", 3827, "*** unsupported componentType '%s' (%d)\n", gComponentString[v18], v18);
      goto LABEL_36;
    }

    v32 = IIOIOSurfaceWrapper_YCC::copyImageBlockSetWithOptions8Bit(a1, a2, v36, &v35);
  }

  v33 = v32;
  if (!v32)
  {
LABEL_36:
    _cg_jpeg_mem_term("CopyImageBlockSetWithOptions", 3837, "*** ERROR: CopyImageBlockSetWithOptions returned NULL\n");
    v33 = 0;
    goto LABEL_37;
  }

  CGImageBlockSetGetRect();
LABEL_37:
  kdebug_trace();
  IIODictionary::~IIODictionary(v36);
  return v33;
}

void sub_1860A956C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

void ___ZN23IIOIOSurfaceWrapper_YCC27copyImageBlockSet_420f_8bitEP15CGImageProvider6CGRect6CGSizeP13IIODictionary_block_invoke()
{
  v0 = 0;
  v13[16] = *MEMORY[0x1E69E9840];
  v10[0] = xmmword_186226C58;
  v10[1] = unk_186226C68;
  v9[0] = xmmword_186226C78;
  v9[1] = unk_186226C88;
  v1 = *MEMORY[0x1E6958840];
  v2 = *MEMORY[0x1E6958848];
  v8 = 1072746935;
  v7 = xmmword_186226C98;
  v11 = v9;
  v12 = v1;
  v3 = v13;
  v13[0] = &unk_1ED569E00;
  v13[1] = v10;
  v13[2] = v1;
  v13[3] = &unk_1ED569E80;
  v13[4] = v9;
  v13[5] = v2;
  v13[6] = &unk_1ED569F00;
  v13[7] = v10;
  v13[8] = v2;
  v13[9] = &unk_1ED569F80;
  v13[10] = v9;
  v13[11] = &v7;
  v13[12] = &unk_1ED56A000;
  v13[13] = v10;
  v13[14] = &v7;
  v13[15] = &unk_1ED56A080;
  do
  {
    Conversion = vImageConvert_YpCbCrToARGB_GenerateConversion(*(v3 - 1), *(v3 - 2), *v3, kvImage420Yp8_CbCr8, kvImageARGB8888, 0);
    if (Conversion)
    {
      v5 = Conversion;
      v6 = IIO_vImageErrorString(Conversion);
      _cg_jpeg_mem_term("copyImageBlockSet_420f_8bit_block_invoke", 3536, "*** ERROR: vImageConvert_YpCbCrToARGB_GenerateConversion[%d] returned %ld (%s)\n", v0, v5, v6);
    }

    ++v0;
    v3 += 3;
  }

  while (v0 != 6);
}

unint64_t IIOIOSurfaceWrapper_YCC::packDebugInfo(IIOIOSurfaceWrapper_YCC *this, CGRect a2, uint64_t a3)
{
  result = IIOIOSurfaceWrapperBase::packDebugInfo(this, a2, a3);
  if (*(this + 200))
  {
    result |= 0x1000uLL;
  }

  return result;
}

CFTypeID ___ZL30CheckIfDeviceHasDisplayP3Panelv_block_invoke()
{
  gDeviceHasExtendedColorDisplay = MGCopyAnswer() == *MEMORY[0x1E695E4D0];
  v0 = *MEMORY[0x1E696CD68];
  v1 = IOServiceMatching("AppleM2ScalerCSCDriver");
  result = IOServiceGetMatchingService(v0, v1);
  if (result)
  {
    v3 = result;
    v4 = IORegistryEntrySearchCFProperty(result, "IOService", @"IOSurfaceAcceleratorCapabilitiesDict", 0, 0);
    if (v4)
    {
      v5 = v4;
      v6 = CFGetTypeID(v4);
      if (v6 == CFDictionaryGetTypeID())
      {
        if (CFDictionaryContainsKey(v5, @"kSurfaceAcceleratorCapabilitiesColorManager"))
        {
          Value = CFDictionaryGetValue(v5, @"kSurfaceAcceleratorCapabilitiesColorManager");
          if (Value)
          {
            valuePtr = 0;
            if (CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr))
            {
              gCanUseMSRForColorConversion = valuePtr != 0;
            }
          }
        }
      }

      CFRelease(v5);
    }

    result = IOObjectRelease(v3);
  }

  if (gCanUseMSRForColorConversion == 1)
  {
    gCanUseMSRForColorConversion = 0;
    result = IIOGetBundleIdentifer();
    if (result)
    {
      v8 = result;
      TypeID = CFStringGetTypeID();
      result = CFGetTypeID(v8);
      if (TypeID == result)
      {
        result = CFStringCompare(v8, @"com.apple.springboard", 0);
        if (!result)
        {
          gCanUseMSRForColorConversion = 1;
        }
      }
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_1()
{

  return kdebug_trace();
}

uint64_t OUTLINED_FUNCTION_8_1@<X0>(unsigned int a1@<W8>)
{

  return IIOAlignRowBytes((v2 * a1), 0);
}

uint64_t OUTLINED_FUNCTION_9_1(uint64_t a1, size_t a2)
{

  return _ImageIO_Free(v2, a2);
}

uint64_t OUTLINED_FUNCTION_10_1(IIOIOSurfaceWrapperBase *this, int a2, IIODictionary *a5, CGRect a3, CGSize a4)
{

  return IIOIOSurfaceWrapperBase::preCopyBlockSet(this, a2, a3, a4, a5);
}

void png_handle_PLTE(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 76);
  if ((v4 & 1) == 0)
  {
    goto LABEL_39;
  }

  if ((v4 & 2) != 0)
  {
    v15 = "duplicate";
    goto LABEL_41;
  }

  v5 = a3;
  if ((v4 & 4) != 0)
  {
    png_crc_finish(a1, a3);
    v7 = "out of place";
    goto LABEL_7;
  }

  *(a1 + 76) = v4 | 2;
  v6 = *(a1 + 431);
  if ((v6 & 2) == 0)
  {
    png_crc_finish(a1, a3);
    v7 = "ignored in grayscale PNG";
LABEL_7:

    png_chunk_benign_error(a1, v7);
    return;
  }

  if (a3 > 0x300 || a3 % 3)
  {
    png_crc_finish(a1, a3);
    if (*(a1 + 431) != 3)
    {
      v7 = "invalid";
      goto LABEL_7;
    }

    v15 = "invalid";
LABEL_41:
    png_chunk_error(a1, v15);
  }

  v9 = a3 / 3u;
  if (v6 == 3)
  {
    v10 = 1 << *(a1 + 432);
  }

  else
  {
    v10 = 256;
  }

  bzero(v17, 0x300uLL);
  if (v10 < v9)
  {
    v9 = v10;
  }

  if (v9 >= 1)
  {
    v11 = v9;
    v12 = v17;
    do
    {
      memset(v16, 0, 3);
      png_crc_read(a1, v16, 3u);
      if (v17 > v12 || v12 + 3 > &v18)
      {
        goto LABEL_38;
      }

      *v12 = v16[0];
      *(v12 + 1) = *(v16 + 1);
      v12 += 3;
    }

    while (--v11);
  }

  png_crc_finish(a1, (-3 * v9 + v5));
  if (v10 < 0)
  {
LABEL_38:
    __break(0x5519u);
LABEL_39:
    v15 = "missing IHDR";
    goto LABEL_41;
  }

  _cg_png_set_PLTE(a1, a2, v17, v9);
  if (*(a1 + 424))
  {
    *(a1 + 424) = 0;
    if (!a2)
    {
      v13 = "tRNS must be after";
LABEL_36:
      png_chunk_benign_error(a1, v13);
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

  v14 = *(a2 + 8);
  if ((v14 & 0x10) != 0)
  {
    *(a1 + 424) = 0;
LABEL_31:
    *(a2 + 42) = 0;
    png_chunk_benign_error(a1, "tRNS must be after");
    v14 = *(a2 + 8);
  }

  if ((v14 & 0x40) != 0)
  {
    png_chunk_benign_error(a1, "hIST must be after");
  }

  if ((*(a2 + 8) & 0x20) != 0)
  {
    v13 = "bKGD must be after";
    goto LABEL_36;
  }
}

uint64_t png_handle_IEND(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 76);
  if ((~v4 & 5) != 0)
  {
    png_chunk_error(a1, "out of place");
  }

  v5 = a3;
  *(a1 + 76) = v4 | 0x18;
  result = png_crc_finish(a1, a3);
  if (v5)
  {

    return png_chunk_benign_error(a1, "invalid");
  }

  return result;
}

uint64_t png_handle_sBIT(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 76);
  if ((v4 & 1) == 0)
  {
    png_chunk_error(a1, "missing IHDR");
  }

  if ((v4 & 6) != 0)
  {
    png_crc_finish(a1, a3);
    v6 = "out of place";
LABEL_4:

    return png_chunk_benign_error(a1, v6);
  }

  if (a2 && (*(a2 + 8) & 2) != 0)
  {
    png_crc_finish(a1, a3);
    v6 = "duplicate";
    goto LABEL_4;
  }

  v9 = *(a1 + 431);
  if (v9 == 3)
  {
    v10 = 8;
  }

  else
  {
    v9 = *(a1 + 435);
    v10 = *(a1 + 432);
  }

  if (a3 <= 4 && v9 == a3)
  {
    v19 = 16843009 * v10;
    png_crc_read(a1, &v19, a3);
    result = png_crc_finish(a1, 0);
    if (!result)
    {
      if (a3)
      {
        v11 = a3;
        v12 = &v19;
        while (1)
        {
          v13 = *v12;
          v12 = (v12 + 1);
          if ((v13 - 1) >= v10)
          {
            return png_chunk_benign_error(a1, "invalid");
          }

          if (!--v11)
          {
            goto LABEL_19;
          }
        }
      }

      else
      {
LABEL_19:
        v14 = v19;
        if ((*(a1 + 431) & 2) != 0)
        {
          v15 = &v19 + 3;
          v16 = BYTE1(v19);
          v17 = BYTE2(v19);
        }

        else
        {
          v15 = &v19 + 1;
          *(a1 + 595) = v19;
          v16 = v14;
          v17 = v14;
        }

        v18 = *v15;
        *(a1 + 592) = v14;
        *(a1 + 593) = v16;
        *(a1 + 594) = v17;
        *(a1 + 596) = v18;
        if (a1 + 592 > (a1 + 597))
        {
          __break(0x5519u);
        }

        else
        {
          return png_set_sBIT(a1, a2, a1 + 592);
        }
      }
    }
  }

  else
  {
    png_chunk_benign_error(a1, "invalid");

    return png_crc_finish(a1, a3);
  }

  return result;
}

void png_handle_sPLT(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v38 = 0;
  v36 = 0u;
  *v37 = 0u;
  v7 = *(a1 + 1068);
  if (v7)
  {
    v8 = v7 - 1;
    if (!v8)
    {
LABEL_5:

      png_crc_finish(a1, v4);
      return;
    }

    *(a1 + 1068) = v8;
    if (v8 == 1)
    {
      png_warning(a1, "No space in chunk cache for sPLT");
      goto LABEL_5;
    }
  }

  v9 = *(a1 + 76);
  if ((v9 & 1) == 0)
  {
    png_chunk_error(a1, "missing IHDR");
  }

  if ((v9 & 4) != 0)
  {
    png_crc_finish(a1, a3);
    v15 = "out of place";
LABEL_17:

    png_chunk_benign_error(a1, v15);
    return;
  }

  buffer = png_read_buffer(a1, (a3 + 1), 2);
  if (!buffer)
  {
    png_crc_finish(a1, v4);
    v15 = "out of memory";
    goto LABEL_17;
  }

  v12 = buffer;
  v13 = v11;
  v14 = v11 - buffer;
  if (v11 < buffer || v14 < v4)
  {
    goto LABEL_29;
  }

  png_crc_read(a1, buffer, v4);
  if (!png_crc_finish(a1, 0))
  {
    v16 = (v12 + v4);
    if (v16 < v13 && v16 >= v12)
    {
      *v16 = 0;
      if (v13 > v12)
      {
        v3 = 0;
        do
        {
          v17 = v12 + v3 + 1;
          if (!*(v12 + v3))
          {
            goto LABEL_30;
          }

          ++v3;
        }

        while (v17 < v13 && v17 >= v12);
      }
    }

    while (1)
    {
      while (1)
      {
LABEL_29:
        __break(0x5519u);
LABEL_30:
        v19 = (v4 - 2);
        if (v4 >= 2)
        {
          v20 = (v3 + 1 + v12);
          if (v20 <= v12 + v19)
          {
            continue;
          }
        }

        v23 = "malformed sPLT chunk";
        goto LABEL_39;
        if (v20 >= v12)
        {
          LOBYTE(v37[0]) = *v20;
          v21 = LOBYTE(v37[0]);
          if (LOBYTE(v37[0]) == 8)
          {
            v22 = 6;
          }

          else
          {
            v22 = 10;
          }

          LODWORD(v4) = v19 - v3;
          if ((v19 - v3) % v22)
          {
            v23 = "sPLT chunk has bad length";
            goto LABEL_39;
          }

          v24 = 5 * ((v19 - v3) / v22);
          v35 = (v19 - v3) / v22;
          v25 = png_malloc_warn(a1, 10 * v35);
          v26 = v3 + 1;
          v27 = &v25[2 * v24];
          if (!v25)
          {
            v27 = 0;
          }

          if (v25 <= v27 && (0xCCCCCCCCCCCCCCCDLL * ((v27 - v25) >> 1)) >= v35)
          {
            break;
          }
        }
      }

      v37[1] = v25;
      LODWORD(v38) = v35;
      if (!v25)
      {
        break;
      }

      if (v22 <= v4)
      {
        v28 = 0;
        v29 = (v12 + v3 + 2);
        v30 = v25 + 4;
        do
        {
          if (v21 == 8)
          {
            if (v29 >= v13)
            {
              goto LABEL_29;
            }

            if (v29 < v12)
            {
              goto LABEL_29;
            }

            v31 = v29 + 2;
            *(v30 - 2) = *v29;
            if ((v29 + 1) >= v13)
            {
              goto LABEL_29;
            }

            if ((v29 + 1) < v12)
            {
              goto LABEL_29;
            }

            *(v30 - 1) = v29[1];
            if (v31 >= v13)
            {
              goto LABEL_29;
            }

            if (v31 < v12)
            {
              goto LABEL_29;
            }

            *v30 = *v31;
            if ((v29 + 3) >= v13 || (v29 + 3) < v12)
            {
              goto LABEL_29;
            }

            v32 = v29[3];
            v33 = (v29 + 4);
            v30[1] = v32;
          }

          else
          {
            if (v29 >= v13)
            {
              goto LABEL_29;
            }

            if (v29 < v12)
            {
              goto LABEL_29;
            }

            if ((v29 + 1) >= v13)
            {
              goto LABEL_29;
            }

            if ((v29 + 1) < v12)
            {
              goto LABEL_29;
            }

            *(v30 - 2) = bswap32(*v29) >> 16;
            if ((v29 + 2) >= v13)
            {
              goto LABEL_29;
            }

            if ((v29 + 2) < v12)
            {
              goto LABEL_29;
            }

            if ((v29 + 3) >= v13)
            {
              goto LABEL_29;
            }

            if ((v29 + 3) < v12)
            {
              goto LABEL_29;
            }

            *(v30 - 1) = bswap32(*(v29 + 1)) >> 16;
            if ((v29 + 4) >= v13)
            {
              goto LABEL_29;
            }

            if ((v29 + 4) < v12)
            {
              goto LABEL_29;
            }

            if ((v29 + 5) >= v13)
            {
              goto LABEL_29;
            }

            if ((v29 + 5) < v12)
            {
              goto LABEL_29;
            }

            *v30 = bswap32(*(v29 + 2)) >> 16;
            if ((v29 + 6) >= v13 || (v29 + 6) < v12 || (v29 + 7) >= v13 || (v29 + 7) < v12)
            {
              goto LABEL_29;
            }

            v30[1] = bswap32(*(v29 + 3)) >> 16;
            v33 = (v29 + 8);
          }

          if (v33 >= v13 || v33 < v12 || v33 + 1 >= v13 || v33 + 1 < v12)
          {
            goto LABEL_29;
          }

          v34 = *v33;
          v29 = (v33 + 1);
          v30[2] = bswap32(v34) >> 16;
          ++v28;
          v30 += 5;
        }

        while (v28 < v35);
      }

      if (v26 <= v14)
      {
        *&v36 = v12;
        *(&v36 + 1) = v26;
        png_set_sPLT(a1, a2, &v36, 1);
        png_free(a1, v37[1]);
        return;
      }
    }

    v23 = "sPLT chunk requires too much memory";
LABEL_39:

    png_warning(a1, v23);
  }
}

void png_handle_tRNS(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 76);
  if ((v4 & 1) == 0)
  {
    png_chunk_error(a1, "missing IHDR");
  }

  v5 = a3;
  if ((v4 & 4) != 0)
  {
    goto LABEL_15;
  }

  if (a2 && (*(a2 + 8) & 0x10) != 0)
  {
    png_crc_finish(a1, a3);
    v8 = "duplicate";
    goto LABEL_16;
  }

  memset(v13, 0, sizeof(v13));
  v7 = *(a1 + 431);
  if (v7 == 3)
  {
    if ((v4 & 2) == 0)
    {
LABEL_15:
      png_crc_finish(a1, a3);
      v8 = "out of place";
      goto LABEL_16;
    }

    if (a3 <= 0x100 && a3 - 1 < *(a1 + 416))
    {
      png_crc_read(a1, v13, a3);
      *(a1 + 424) = v5;
      goto LABEL_23;
    }

    png_crc_finish(a1, a3);
    v8 = "invalid";
LABEL_16:

    png_chunk_benign_error(a1, v8);
    return;
  }

  if (v7 == 2)
  {
    v12 = 0;
    v11 = 0;
    if (a3 == 6)
    {
      png_crc_read(a1, &v11, 6u);
      *(a1 + 424) = 1;
      *(a1 + 626) = bswap32(v11) >> 16;
      *(a1 + 628) = bswap32(HIWORD(v11)) >> 16;
      *(a1 + 630) = bswap32(v12) >> 16;
      goto LABEL_23;
    }

LABEL_13:
    png_crc_finish(a1, a3);
    png_chunk_benign_error(a1, "invalid");
    return;
  }

  if (*(a1 + 431))
  {
    png_crc_finish(a1, a3);
    v8 = "invalid with alpha channel";
    goto LABEL_16;
  }

  LOWORD(v11) = 0;
  if (a3 != 2)
  {
    goto LABEL_13;
  }

  png_crc_read(a1, &v11, 2u);
  *(a1 + 424) = 1;
  *(a1 + 632) = bswap32(v11) >> 16;
LABEL_23:
  if (png_crc_finish(a1, 0))
  {
    *(a1 + 424) = 0;
    v9 = *(a1 + 80);
    if ((*(a1 + 315) & 0x20) != 0)
    {
      if ((v9 & 0x200) != 0)
      {
        return;
      }
    }

    else if ((v9 & 0x400) == 0)
    {
      return;
    }

    v10 = 0;
  }

  else
  {
    v10 = *(a1 + 424);
  }

  if (v10 > 0x100 || a1 + 624 > (a1 + 634))
  {
    __break(0x5519u);
  }

  else
  {
    _cg_png_set_tRNS(a1, a2, v13, v10, a1 + 624);
  }
}

uint64_t png_handle_hIST(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  if ((*(a1 + 76) & 1) == 0)
  {
    goto LABEL_24;
  }

  if ((*(a1 + 76) & 6) != 2)
  {
    png_crc_finish(a1, a3);
    v8 = "out of place";
LABEL_20:

    return png_chunk_benign_error(a1, v8);
  }

  if (a2 && (*(a2 + 8) & 0x40) != 0)
  {
    png_crc_finish(a1, a3);
    v8 = "duplicate";
    goto LABEL_20;
  }

  if ((a3 & 1) != 0 || a3 > 0x201 || (v5 = a3 >> 1, v5 != *(a1 + 416)))
  {
    png_crc_finish(a1, a3);
    v8 = "invalid";
    goto LABEL_20;
  }

  memset(v10, 0, sizeof(v10));
  if (a3 >= 2)
  {
    v6 = v10;
    while (1)
    {
      v9 = 0;
      png_crc_read(a1, &v9, 2u);
      if (v6 < v10 || v6 + 1 > v11 || v6 > v6 + 1)
      {
        break;
      }

      *v6++ = bswap32(v9) >> 16;
      if (!--v5)
      {
        goto LABEL_14;
      }
    }

    __break(0x5519u);
LABEL_24:
    png_chunk_error(a1, "missing IHDR");
  }

LABEL_14:
  result = png_crc_finish(a1, 0);
  if (!result)
  {
    return png_set_hIST(a1, a2, v10);
  }

  return result;
}

uint64_t png_handle_oFFs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 76);
  if ((v4 & 1) == 0)
  {
    png_chunk_error(a1, "missing IHDR");
  }

  if ((v4 & 4) != 0)
  {
    png_crc_finish(a1, a3);
    v8 = "out of place";
  }

  else if (a2 && (*(a2 + 9) & 1) != 0)
  {
    png_crc_finish(a1, a3);
    v8 = "duplicate";
  }

  else
  {
    if (a3 == 9)
    {
      v11 = 0;
      v10 = 0;
      png_crc_read(a1, &v10, 9u);
      result = png_crc_finish(a1, 0);
      if (!result)
      {
        if (v10 < 0)
        {
          v7 = -((2147418112 * BYTE1(v10) - ((v10 << 24) | (BYTE2(v10) << 8) | BYTE3(v10))) & 0x7FFFFFFF);
        }

        else
        {
          v7 = _byteswap_ulong(v10);
        }

        if (SBYTE4(v10) < 0)
        {
          v9 = -((2147418112 * BYTE5(v10) - ((BYTE4(v10) << 24) | (BYTE6(v10) << 8) | HIBYTE(v10))) & 0x7FFFFFFF);
        }

        else
        {
          v9 = _byteswap_ulong(HIDWORD(v10));
        }

        return png_set_oFFs(a1, a2, v7, v9, v11);
      }

      return result;
    }

    png_crc_finish(a1, a3);
    v8 = "invalid";
  }

  return png_chunk_benign_error(a1, v8);
}

void png_handle_pCAL(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 76);
  if ((v6 & 1) == 0)
  {
    png_chunk_error(a1, "missing IHDR");
  }

  v7 = a3;
  if ((v6 & 4) != 0)
  {
    png_crc_finish(a1, a3);
    v13 = "out of place";
    goto LABEL_79;
  }

  if (a2 && (*(a2 + 9) & 4) != 0)
  {
    png_crc_finish(a1, a3);
    v13 = "duplicate";
    goto LABEL_79;
  }

  buffer = png_read_buffer(a1, (a3 + 1), 2);
  if (buffer)
  {
    v11 = buffer;
    v12 = v10;
    if (v10 < buffer || v10 - buffer < v7)
    {
      goto LABEL_23;
    }

    png_crc_read(a1, buffer, v7);
    if (png_crc_finish(a1, 0))
    {
      return;
    }

    v3 = v7;
    v7 = &v11[v7];
    if (v7 < v12 && v7 >= v11)
    {
      *v7 = 0;
      if (v12 > v11)
      {
        v4 = 0;
        do
        {
          if (!v11[v4])
          {
            goto LABEL_24;
          }
        }

        while (&v11[++v4] < v12 && &v11[v4] >= v11);
      }
    }

    while (1)
    {
      while (1)
      {
        do
        {
LABEL_23:
          __break(0x5519u);
LABEL_24:
          if (v3 - v4 <= 12)
          {
            v13 = "invalid";
            goto LABEL_79;
          }

          v15 = &v11[v4 + 1];
        }

        while (v15 >= v12 || v15 < v11);
        v16 = *v15;
        v17 = *v15;
        v18 = &v11[v4 + 2];
        v19 = v18 < v12 && v18 >= v11;
        v20 = v19;
        if (v16 < 0)
        {
          break;
        }

        if (v20)
        {
          v21 = &v11[v4 + 3];
          if (v21 < v12 && v21 >= v11)
          {
            v22 = &v11[v4 + 4];
            if (v22 < v12 && v22 >= v11)
            {
              v23 = (v17 << 24) | (*v18 << 16) | (*v21 << 8) | *v22;
              goto LABEL_47;
            }
          }
        }
      }

      if (v20)
      {
        v24 = &v11[v4 + 3];
        if (v24 < v12 && v24 >= v11)
        {
          v25 = &v11[v4 + 4];
          if (v25 < v12 && v25 >= v11)
          {
            v23 = -((2147418112 * *v18 - ((v17 << 24) | (*v24 << 8) | *v25)) & 0x7FFFFFFF);
LABEL_47:
            v26 = &v11[v4 + 5];
            if (v26 < v12 && v26 >= v11)
            {
              v27 = *v26;
              v28 = *v26;
              v29 = &v11[v4 + 6];
              v31 = v29 < v12 && v29 >= v11;
              if (v27 < 0)
              {
                if (v31)
                {
                  v35 = &v11[v4 + 7];
                  if (v35 < v12 && v35 >= v11)
                  {
                    v36 = &v11[v4 + 8];
                    if (v36 < v12 && v36 >= v11)
                    {
                      v34 = -((2147418112 * *v29 - ((v28 << 24) | (*v35 << 8) | *v36)) & 0x7FFFFFFF);
LABEL_68:
                      v37 = &v11[v4 + 9];
                      if (v37 < v12 && v37 >= v11)
                      {
                        v38 = &v11[v4 + 10];
                        if (v38 < v12 && v38 >= v11)
                        {
                          v39 = *v37;
                          v40 = *v38;
                          if (!*v37 && v40 != 2 || v39 - 1 <= 1 && v40 != 3 || v39 == 3 && v40 != 4)
                          {
                            v13 = "invalid parameter count";
                            goto LABEL_79;
                          }

                          v41 = &v11[v4 + 11];
                          v55 = v34;
                          v56 = v23;
                          if (v39 >= 4)
                          {
                            png_chunk_benign_error(a1, "unrecognized equation type");
                          }

                          while (v41 < v12 && v41 >= v11)
                          {
                            if (!*v41)
                            {
                              v42 = png_malloc_warn(a1, 8 * v40);
                              v44 = &v42[v40];
                              if (!v42)
                              {
                                goto LABEL_13;
                              }

                              if (v40)
                              {
                                v45 = 0;
                                while (1)
                                {
                                  v46 = v41 + 1;
                                  if ((v41 + 1) < v7)
                                  {
                                    break;
                                  }

LABEL_104:
                                  v41 = v46;
LABEL_105:
                                  if (v41 >= v7)
                                  {
                                    png_free(a1, v42);
                                    v13 = "invalid data";
                                    goto LABEL_79;
                                  }

                                  if (++v45 == v40)
                                  {
                                    goto LABEL_107;
                                  }
                                }

                                if (v46 >= v11)
                                {
                                  v47 = v41 + 2;
                                  while (v47 <= v12)
                                  {
                                    if (!*(v47++ - 1))
                                    {
                                      v49 = &v42[v45];
                                      if (v49 >= v42 && (v49 + 1) <= v44 && v49 <= v49 + 1)
                                      {
                                        *v49 = v46;
                                        v50 = &v11[v3 - 1] - v41;
                                        while (v46 >= v11)
                                        {
                                          if (!*v46)
                                          {
                                            goto LABEL_104;
                                          }

                                          ++v46;
                                          if (!--v50)
                                          {
                                            v41 = &v11[v3];
                                            goto LABEL_105;
                                          }
                                        }
                                      }

                                      goto LABEL_23;
                                    }
                                  }
                                }
                              }

                              else
                              {
LABEL_107:
                                v51 = v11 + 1;
                                while (v51 <= v12)
                                {
                                  if (!*(v51++ - 1))
                                  {
                                    if (v42 > v44 || v40 > (8 * v40) >> 3)
                                    {
                                      goto LABEL_23;
                                    }

                                    v54 = v12;
                                    v53 = v42;
                                    png_set_pCAL_sized(a1, a2, v11, v56, v55, v39, v40, v43, &v11[v4 + 11], v54, v42);

                                    png_free(a1, v53);
                                    return;
                                  }
                                }
                              }

                              goto LABEL_23;
                            }

                            ++v41;
                          }
                        }
                      }
                    }
                  }
                }
              }

              else if (v31)
              {
                v32 = &v11[v4 + 7];
                if (v32 < v12 && v32 >= v11)
                {
                  v33 = &v11[v4 + 8];
                  if (v33 < v12 && v33 >= v11)
                  {
                    v34 = (v28 << 24) | (*v29 << 16) | (*v32 << 8) | *v33;
                    goto LABEL_68;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  png_crc_finish(a1, v7);
LABEL_13:
  v13 = "out of memory";
LABEL_79:

  png_chunk_benign_error(a1, v13);
}

unint64_t png_handle_sCAL(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 76);
  if ((v4 & 1) == 0)
  {
    png_chunk_error(a1, "missing IHDR");
  }

  if ((v4 & 4) != 0)
  {
    png_crc_finish(a1, a3);
    v7 = "out of place";
    goto LABEL_23;
  }

  if (a2 && (*(a2 + 9) & 0x40) != 0)
  {
    png_crc_finish(a1, a3);
    v7 = "duplicate";
    goto LABEL_23;
  }

  if (a3 <= 3)
  {
    png_crc_finish(a1, a3);
    v7 = "invalid";
LABEL_23:

    return png_chunk_benign_error(a1, v7);
  }

  result = png_read_buffer(a1, (a3 + 1), 2);
  if (result)
  {
    v10 = result;
    v11 = v9;
    if (v9 < result)
    {
      goto LABEL_39;
    }

    if (v9 - result < a3)
    {
      goto LABEL_39;
    }

    v12 = a3;
    result = png_crc_read(a1, result, a3);
    v13 = &v10[a3];
    if (v13 >= v11 || v13 < v10)
    {
      goto LABEL_39;
    }

    *v13 = 0;
    result = png_crc_finish(a1, 0);
    if (result)
    {
      return result;
    }

    if (v11 <= v10)
    {
LABEL_39:
      __break(0x5519u);
      return result;
    }

    if (*v10 - 1 >= 2)
    {
      v7 = "invalid unit";
      goto LABEL_23;
    }

    v18 = 1;
    v17 = 0;
    if (png_check_fp_number(v10, v11, a3, &v17, &v18) && (v14 = v18, v18 < a3) && (v15 = v18 + 1, ++v18, !v10[v14]))
    {
      if ((v17 & 0x188) == 0x108)
      {
        v17 = 0;
        if (png_check_fp_number(v10, v11, v12, &v17, &v18) && v18 == v12)
        {
          if ((v17 & 0x188) == 0x108)
          {
            return png_set_sCAL_sized(a1, a2, *v10, v10 + 1, v11, &v10[v15], v11);
          }

          v16 = "non-positive height";
        }

        else
        {
          v16 = "bad height format";
        }
      }

      else
      {
        v16 = "non-positive width";
      }
    }

    else
    {
      v16 = "bad width format";
    }

    return png_chunk_benign_error(a1, v16);
  }

  else
  {
    png_chunk_benign_error(a1, "out of memory");

    return png_crc_finish(a1, a3);
  }
}

void png_handle_zTXt(uint64_t a1, uint64_t a2, uint64_t size)
{
  v6 = *(a1 + 1068);
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = v6 - 1;
  if (!v7)
  {

    png_crc_finish(a1, size);
    return;
  }

  *(a1 + 1068) = v7;
  if (v7 != 1)
  {
LABEL_8:
    v9 = *(a1 + 76);
    if (v9)
    {
      if ((v9 & 4) != 0)
      {
        *(a1 + 76) = v9 | 8;
      }

      buffer = png_read_buffer(a1, size, 2);
      if (!buffer)
      {
        png_crc_finish(a1, size);
        v8 = "out of memory";
        goto LABEL_30;
      }

      v12 = buffer;
      v13 = v11;
      if (v11 >= buffer && v11 - buffer >= size)
      {
        png_crc_read(a1, buffer, size);
        if (png_crc_finish(a1, 0))
        {
          return;
        }

        if (!size)
        {
          goto LABEL_26;
        }

        v14 = 0;
        do
        {
          v15 = (v12 + v14);
          if (v12 + v14 >= v13 || v15 < v12)
          {
            goto LABEL_58;
          }

          if (!*v15)
          {
            goto LABEL_25;
          }

          ++v14;
        }

        while (size != v14);
        LODWORD(v14) = size;
LABEL_25:
        if ((v14 - 80) < 0xFFFFFFB1)
        {
LABEL_26:
          v17 = "bad keyword";
          goto LABEL_27;
        }

        if (v14 + 3 > size)
        {
          v17 = "truncated";
          goto LABEL_27;
        }

        v18 = (v12 + v14 + 1);
        if (v18 < v13 && v18 >= v12)
        {
          if (*v18)
          {
            v17 = "unknown compression type";
            goto LABEL_27;
          }

          v31 = -1;
          png_decompress_chunk(a1, size, v14 + 2, &v31);
          if (v19 != 1)
          {
            v17 = *(a1 + 144);
            goto LABEL_56;
          }

          v30[0] = 0;
          v20 = *(a1 + 1120);
          if (!v20)
          {
            v17 = "Read failure in png_handle_zTXt";
            goto LABEL_56;
          }

          v21 = *(a1 + 1128);
          v22 = v31;
          v23 = (v20 + v31 + (v14 + 2));
          if (v23 < v21 && v23 >= v20)
          {
            *v23 = 0;
            v24 = v20 + 1;
            do
            {
              if (v24 > v21)
              {
                goto LABEL_58;
              }
            }

            while (*(v24++ - 1));
            v30[1] = v20;
            v26 = v20 + v14 + 2;
            if (v26 >= v20 && v26 < v21)
            {
              v27 = v14 + v20 + 3;
              do
              {
                if (v27 > v21)
                {
                  goto LABEL_58;
                }
              }

              while (*(v27++ - 1));
              v30[2] = v26;
              v30[3] = v22;
              memset(&v30[4], 0, 24);
              png_set_text_2(a1, a2, v30, 1);
              if (v29)
              {
                v17 = "insufficient memory";
              }

              else
              {
                v17 = 0;
              }

LABEL_56:
              if (!v17)
              {
                return;
              }

LABEL_27:
              png_chunk_benign_error(a1, v17);
              return;
            }
          }
        }
      }

LABEL_58:
      __break(0x5519u);
    }

    png_chunk_error(a1, "missing IHDR");
  }

  png_crc_finish(a1, size);
  v8 = "no space in chunk cache";
LABEL_30:

  png_chunk_benign_error(a1, v8);
}

void png_decompress_chunk(uint64_t a1, int a2, unsigned int a3, unint64_t *a4)
{
  v8 = *(a1 + 1072);
  if (v8 + 1 > 1)
  {
    v9 = a3 + 1;
    if (v8 < v9)
    {
      png_zstream_error(a1, -4);
      return;
    }
  }

  else
  {
    v9 = a3 + 1;
    v8 = -1;
  }

  v10 = v8 - v9;
  if (v10 < *a4)
  {
    *a4 = v10;
  }

  if (!png_inflate_claim(a1, *(a1 + 312)))
  {
    v11 = a2 - a3;
    v21 = a2 - a3;
    if (*(a1 + 1120) + a3 >= *(a1 + 1120))
    {
      if (png_inflate(a1, *(a1 + 312)) != 1)
      {
LABEL_32:
        *(a1 + 92) = 0;
        return;
      }

      if (inflateReset((a1 + 96)))
      {
        png_zstream_error(a1, 1);
        goto LABEL_32;
      }

      v12 = *a4;
      v13 = a3 + *a4 + 1;
      v14 = malloc_type_malloc(v13, 0xAC046B70uLL);
      if (!v14)
      {
        png_zstream_error(a1, -4);
        goto LABEL_32;
      }

      if ((v13 & 0x8000000000000000) == 0)
      {
        v15 = v14;
        bzero(v14, v13);
        if (v15 <= &v15[v13] && *(a1 + 1120) + a3 >= *(a1 + 1120) && &v15[a3] >= v15)
        {
          v16 = &v15[v13];
          if (png_inflate(a1, *(a1 + 312)) != 1 || v12 != *a4)
          {
            png_free(a1, v15);
            goto LABEL_32;
          }

          v17 = &v15[v12 + a3];
          if (v17 < v16 && v17 >= v15)
          {
            *v17 = 0;
            if (!a3 || v13 >= a3 && (v18 = *(a1 + 1120), v19 = *(a1 + 1128), v18 <= v19) && v19 - v18 >= a3 && (memcpy(v15, v18, a3), v15 <= &v15[a3]))
            {
              v20 = *(a1 + 1120);
              *(a1 + 1120) = v15;
              *(a1 + 1128) = v16;
              *(a1 + 1136) = v13;
              png_free(a1, v20);
              if (v11 != v21)
              {
                png_chunk_benign_error(a1, "extra compressed data");
              }

              goto LABEL_32;
            }
          }
        }
      }
    }

    __break(0x5519u);
  }
}

uint64_t png_handle_acTL(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 76);
  if ((v4 & 1) == 0)
  {
    v9 = "Missing IHDR before acTL";
    goto LABEL_17;
  }

  if ((v4 & 4) != 0)
  {
    v8 = "Invalid acTL after IDAT skipped";
  }

  else if ((v4 & 0x10000) != 0)
  {
    v8 = "Duplicate acTL skipped";
  }

  else
  {
    if (a3 == 8)
    {
      v10[0] = 0;
      png_crc_read(a1, v10, 8u);
      png_crc_finish(a1, 0);
      if (((LOBYTE(v10[0]) << 24) & 0x80000000) == 0 && ((BYTE4(v10[0]) << 24) & 0x80000000) == 0)
      {
        result = _cg_png_set_acTL(a1, a2, _byteswap_ulong(v10[0]), _byteswap_ulong(HIDWORD(v10[0])));
        if (result)
        {
          *(a1 + 76) |= 0x10000u;
        }

        return result;
      }

      v9 = "PNG unsigned integer out of range";
LABEL_17:
      _cg_png_error(a1, v9);
    }

    v8 = "acTL with invalid length skipped";
  }

  png_warning(a1, v8);

  return png_crc_finish(a1, a3);
}

void png_handle_fcTL(uint64_t a1, _DWORD *a2, unsigned int a3)
{
  v14[3] = *MEMORY[0x1E69E9840];
  png_ensure_sequence_number(a1, a3);
  v6 = *(a1 + 76);
  if ((v6 & 1) == 0)
  {
    v13 = "Missing IHDR before fcTL";
    goto LABEL_28;
  }

  if ((v6 & 4) != 0)
  {
    v11 = "Invalid fcTL after IDAT skipped";
LABEL_15:
    png_warning(a1, v11);

    png_crc_finish(a1, a3 - 4);
    return;
  }

  if ((v6 & 0x20000) != 0)
  {
    v11 = "Duplicate fcTL within one frame skipped";
    goto LABEL_15;
  }

  if (a3 != 26)
  {
    v11 = "fcTL with invalid length skipped";
    goto LABEL_15;
  }

  memset(v14, 0, 22);
  png_crc_read(a1, v14, 0x16u);
  png_crc_finish(a1, 0);
  if (LOBYTE(v14[0]) << 24 < 0 || BYTE4(v14[0]) << 24 < 0 || LOBYTE(v14[1]) << 24 < 0 || BYTE4(v14[1]) << 24 < 0)
  {
    v13 = "PNG unsigned integer out of range";
LABEL_28:
    _cg_png_error(a1, v13);
  }

  v7 = _byteswap_ulong(v14[0]);
  v8 = _byteswap_ulong(HIDWORD(v14[0]));
  v9 = _byteswap_ulong(v14[1]);
  v10 = _byteswap_ulong(HIDWORD(v14[1]));
  if (*(a1 + 936))
  {
    if (a2)
    {
LABEL_11:
      png_set_next_frame_fcTL(a1, a2, v7, v8, v9, v10, bswap32(LOWORD(v14[2])) >> 16, bswap32(WORD1(v14[2])) >> 16, BYTE4(v14[2]), BYTE5(v14[2]));
      png_read_reinit(a1, a2);
      *(a1 + 76) |= 0x20000u;
    }
  }

  else
  {
    if (v9 | v10)
    {
      v12 = "fcTL for the first frame must have zero offset";
    }

    else
    {
      if (!a2)
      {
        return;
      }

      if (v7 == *a2 && v8 == a2[1])
      {
        goto LABEL_11;
      }

      v12 = "size in first frame's fcTL must match the size in IHDR";
    }

    png_warning(a1, v12);
  }
}

uint64_t png_ensure_sequence_number(uint64_t a1, unsigned int a2)
{
  if (a2 <= 3)
  {
    v5 = "invalid fcTL or fdAT chunk found";
    goto LABEL_8;
  }

  v6 = 0;
  result = png_crc_read(a1, &v6, 4u);
  if (v6 << 24 < 0)
  {
    v5 = "PNG unsigned integer out of range";
    goto LABEL_8;
  }

  v4 = _byteswap_ulong(v6);
  if (v4 != *(a1 + 924))
  {
    v5 = "fcTL or fdAT chunk with out-of-order sequence number found";
LABEL_8:
    _cg_png_error(a1, v5);
  }

  *(a1 + 924) = v4 + 1;
  return result;
}

void png_read_reinit(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 416);
  *(a1 + 280) = v2;
  v3 = *(a1 + 434);
  v4 = v3 >= 8;
  v5 = (v3 >> 3) * v2;
  if (!v4)
  {
    v5 = (*(a1 + 434) * v2 + 7) >> 3;
  }

  *(a1 + 296) = v5;
  v6 = *(a2 + 50);
  v7 = (v6 >> 3) * v2;
  if (v6 < 8)
  {
    v7 = (*(a2 + 50) * v2 + 7) >> 3;
  }

  *(a1 + 384) = v7;
  v8 = *(a1 + 320);
  if (v8)
  {
    v9 = *(a1 + 328);
    v4 = v9 >= v8;
    v10 = v9 - v8;
    if (!v4 || v5 >= v10 || (v11 = v5 + 1, bzero(*(a1 + 320), v5 + 1), v8 > v8 + v11))
    {
      __break(0x5519u);
    }
  }
}

BOOL png_handle_fdAT(uint64_t a1, uint64_t a2, unsigned int a3)
{
  png_ensure_sequence_number(a1, a3);
  png_warning(a1, "ignoring fdAT chunk");

  return png_crc_finish(a1, a3 - 4);
}

uint64_t png_read_filter_row_sub(uint64_t result, char *a2, unint64_t a3)
{
  v3 = *(result + 8);
  v4 = *(result + 19) + 7;
  if (v3 > v4 >> 3)
  {
    v5 = v4 >> 3;
    v6 = &a2[v4 >> 3];
    v7 = v3 - v5;
    v8 = a2;
    while (v6 < a3 && v6 >= a2 && v8 < a3 && v8 >= a2)
    {
      v9 = *v8++;
      *v6++ += v9;
      if (!--v7)
      {
        return result;
      }
    }

    __break(0x5519u);
  }

  return result;
}

uint64_t png_read_filter_row_up(uint64_t result, _BYTE *a2, unint64_t a3, char *a4, unint64_t a5)
{
  v5 = *(result + 8);
  if (v5)
  {
    while (a2 < a3 && a4 < a5)
    {
      v6 = *a4++;
      *a2++ += v6;
      if (!--v5)
      {
        return result;
      }
    }

    __break(0x5519u);
  }

  return result;
}

uint64_t png_read_reset(uint64_t result)
{
  *(result + 76) &= 0xFFFFFFF3;
  *(result + 308) = 0;
  *(result + 429) = 0;
  return result;
}

uint64_t png_inflate(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v7 = v2;
  v22 = *MEMORY[0x1E69E9840];
  if (*(v2 + 92) == v8)
  {
    v9 = v6;
    v10 = v5;
    v11 = v4;
    v12 = *v6;
    v13 = *v4;
    *(v2 + 96) = v3;
    *(v2 + 104) = 0;
    *(v2 + 128) = 0;
    if (v5)
    {
      *(v2 + 120) = v5;
    }

    do
    {
      bzero(v21, 0x1000uLL);
      *(v7 + 104) += v13;
      if (v10)
      {
        LODWORD(v14) = -1;
      }

      else
      {
        *(v7 + 120) = v21;
        LODWORD(v14) = 4096;
      }

      v15 = v12 + *(v7 + 128);
      if (v15 >= v14)
      {
        v14 = v14;
      }

      else
      {
        v14 = v15;
      }

      *(v7 + 128) = v14;
      v12 = v15 - v14;
      v16 = png_zlib_inflate(v7, 4 * (v15 == v14));
      v13 = 0;
    }

    while (!v16);
    v17 = v16;
    if (!v10)
    {
      *(v7 + 120) = 0;
    }

    v18 = *(v7 + 104);
    v19 = v12 + *(v7 + 128);
    if (v19)
    {
      *v9 -= v19;
    }

    if (v18)
    {
      *v11 -= v18;
    }

    png_zstream_error(v7, v16);
  }

  else
  {
    *(v2 + 144) = "zstream unclaimed";
    return 4294967294;
  }

  return v17;
}

void *png_malloc_array(void (**a1)(void), int a2, unint64_t a3)
{
  if (a2 < 1 || !a3)
  {
    _cg_png_error(a1, "internal error: array alloc");
  }

  if (!is_mul_ok(a3, a2))
  {
    return 0;
  }

  v4 = a2 * a3;
  result = malloc_type_malloc(v4, 0x142DC6EFuLL);
  v5 = v4 > 0 || result == 0;
  if (!v5 || result && !v4)
  {
    __break(0x5519u);
  }

  return result;
}

const char *IIO_vImageErrorString(uint64_t a1)
{
  switch(a1)
  {
    case -21784:
      result = "kvImageCoreVideoIsAbsent";
      break;
    case -21783:
      result = "kvImageUnsupportedConversion";
      break;
    case -21782:
      result = "kvImageInvalidCVImageFormat";
      break;
    case -21781:
      result = "kvImageInvalidImageObject";
      break;
    case -21780:
      result = "kvImageOutOfPlaceOperationRequired";
      break;
    case -21779:
      result = "kvImageColorSyncIsAbsent";
      break;
    case -21778:
      result = "kvImageInvalidImageFormat";
      break;
    case -21777:
      result = "kvImageInvalidRowBytes";
      break;
    case -21776:
      result = "kvImageInternalError";
      break;
    case -21775:
      result = "kvImageUnknownFlagsBit";
      break;
    case -21774:
      result = "kvImageBufferSizeMismatch";
      break;
    case -21773:
      result = "kvImageInvalidParameter";
      break;
    case -21772:
      result = "kvImageNullPointerArgument";
      break;
    case -21771:
      result = "kvImageMemoryAllocationError";
      break;
    case -21770:
      result = "kvImageInvalidOffset_Y";
      break;
    case -21769:
      result = "kvImageInvalidOffset_X";
      break;
    case -21768:
      result = "kvImageInvalidEdgeStyle";
      break;
    case -21767:
      result = "kvImageInvalidKernelSize";
      break;
    case -21766:
      result = "kvImageRoiLargerThanInputBuffer";
      break;
    default:
      if (a1)
      {
        result = "unknown vImage error";
      }

      else
      {
        result = "kvImageNoError";
      }

      break;
  }

  return result;
}

vImage_Error iio_convert_XRGB2101010ToRGB16U(const vImage_Buffer *a1, const vImage_Buffer *a2, vImage_Flags a3)
{
  v6 = *&a1->width;
  src.data = a1->data;
  *&src.width = v6;
  src.height = 1;
  v7 = 8 * (a1->width & 0x1FFFFFFF);
  v8 = malloc_type_malloc(v7, 0x100004077774924uLL);
  v9 = *&a2->data;
  *&rgbDest.width = *&a2->width;
  *&dest.data = v9;
  width = a2->width;
  dest.data = v8;
  dest.height = 1;
  dest.width = width;
  dest.rowBytes = v7;
  rgbDest.data = a2->data;
  rgbDest.height = 1;
  *permuteMap = 50462976;
  if (a1->height)
  {
    v11 = 0;
    while (1)
    {
      v12 = vImageConvert_XRGB2101010ToARGB16U(&src, 0xFFFFu, &dest, 0, 1023, permuteMap, a3);
      if (v12)
      {
        v14 = v12;
        _cg_jpeg_mem_term("iio_convert_XRGB2101010ToRGB16U", 1130, "*** ERROR: vImageConvert_XRGB2101010ToARGB16U failed err: %ld\n");
        goto LABEL_7;
      }

      v13 = vImageConvert_ARGB16UtoRGB16U(&dest, &rgbDest, a3);
      if (v13)
      {
        break;
      }

      src.data = src.data + src.rowBytes;
      rgbDest.data = rgbDest.data + rgbDest.rowBytes;
      if (++v11 >= a1->height)
      {
        goto LABEL_6;
      }
    }

    v14 = v13;
    _cg_jpeg_mem_term("iio_convert_XRGB2101010ToRGB16U", 1132, "*** ERROR: vImageConvert_ARGB16UtoRGB16U failed err: %ld\n");
  }

  else
  {
LABEL_6:
    v14 = 0;
  }

LABEL_7:
  free(v8);
  return v14;
}

vImage_Error iioConvert_XRGB2101010ToRGB888(const vImage_Buffer *a1, Pixel_8 a2, const vImage_Buffer *a3, int32_t a4, int32_t a5, const unsigned __int8 *a6, vImage_Flags a7)
{
  v14 = 4 * a3->width;
  v15 = malloc_type_malloc(v14 * a3->height, 0x100004077774924uLL);
  v18.data = v15;
  *&v18.height = *&a3->height;
  v18.rowBytes = v14;
  v16 = vImageConvert_XRGB2101010ToARGB8888(a1, a2, &v18, a4, a5, a6, a7);
  if (!v16)
  {
    v16 = vImageConvert_RGBA8888toRGB888(&v18, a3, a7);
  }

  free(v15);
  return v16;
}

void addPropertiesFromMetadata(IIODictionary *a1, IIOArray *a2, void *a3, int a4)
{
  if (!a3)
  {
    return;
  }

  v8 = CFGetTypeID(a3);
  if (v8 == CGImageMetadataGetTypeID())
  {
    v9 = CGImageMetadataCopyTags(a3);
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v10 = IIOArray::IIOArray(&v45, v9);
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 0x40000000;
    v43[2] = ___ZL25addPropertiesFromMetadataP13IIODictionaryP8IIOArrayPKvi_block_invoke;
    v43[3] = &__block_descriptor_tmp_66;
    v43[4] = a1;
    v43[5] = a2;
    v44 = a4;
    IIOArray::enumerate(v10, v43);
    CFRelease(v9);
LABEL_4:
    IIOArray::~IIOArray(&v45);
    return;
  }

  v11 = CFGetTypeID(a3);
  if (v11 == CGImageMetadataTagGetTypeID())
  {
    v12 = CGImageMetadataTagCopyNamespace(a3);
    if (CFStringCompare(v12, @"http://ns.adobe.com/photoshop/1.0/", 0) && CFStringCompare(v12, @"http://ns.adobe.com/exif/1.0/", 0))
    {
      if (CFStringCompare(v12, @"http://ns.adobe.com/exif/1.0/aux/", 0) == kCFCompareEqualTo || CFStringCompare(v12, @"http://ns.adobe.com/exif/1.0/", 0) == kCFCompareEqualTo)
      {
        v13 = &kCGImagePropertyExifAuxDictionary;
        goto LABEL_22;
      }

      if (CFStringCompare(v12, @"http://iptc.org/std/Iptc4xmpCore/1.0/xmlns/", 0) && CFStringCompare(v12, @"http://iptc.org/std/Iptc4xmpExt/2008-02-29/", 0) && CFStringCompare(v12, @"http://purl.org/dc/elements/1.1/", 0) && CFStringCompare(v12, @"http://ns.adobe.com/tiff/1.0/", 0) == kCFCompareEqualTo)
      {
        v13 = &kCGImagePropertyTIFFDictionary;
        goto LABEL_22;
      }
    }

    v13 = &kCGImagePropertyIPTCDictionary;
LABEL_22:
    v18 = *v13;
    v19 = CGImageMetadataTagCopyName(a3);
    if (v19)
    {
      v20 = v19;
      if (CFStringCompare(v19, @"AuthorsPosition", 0))
      {
        v21 = gKeyMapping;
        v22 = 16;
        while (--v22)
        {
          v23 = v21 + 2;
          v24 = CFStringCompare(v20, v21[2], 0);
          v21 = v23;
          if (v24 == kCFCompareEqualTo)
          {
            goto LABEL_30;
          }
        }

        v26 = v20;
      }

      else
      {
        v23 = gKeyMapping;
LABEL_30:
        v26 = v23[1];
      }

      v25 = CFRetain(v26);
      CFRelease(v20);
    }

    else
    {
      v25 = 0;
    }

    if (a4 <= 1)
    {
      v27 = v18;
    }

    else
    {
      v27 = 0;
    }

    Type = CGImageMetadataTagGetType(a3);
    if ((Type - 2) >= 4)
    {
      if (Type == kCGImageMetadataTypeStructure)
      {
        v45 = 0;
        v46 = 0;
        v47 = 0;
        IIODictionary::IIODictionary(&v45);
        if (a1)
        {
          if (v27)
          {
            IIODictionary::setObjectForKeyGroup(a1, v46, v25, v27);
          }

          else
          {
            IIODictionary::setObjectForKey(a1, v46, v25);
          }
        }

        else
        {
          IIOArray::addObject(a2, v46);
        }

        v34 = CGImageMetadataTagCopyValue(a3);
        if (v34)
        {
          addPropertiesFromMetadata(&v45, a2, v34, a4 + 1);
          CFRelease(v34);
        }

        IIODictionary::~IIODictionary(&v45);
      }

      else if (Type == kCGImageMetadataTypeString)
      {
        v30 = CGImageMetadataTagCopyValue(a3);
        if (v30)
        {
          v31 = v30;
          if (a1)
          {
            if (v27)
            {
              IIODictionary::setObjectForKeyGroup(a1, v30, v25, v27);
            }

            else
            {
              IIODictionary::setObjectForKey(a1, v30, v25);
            }
          }

          else if (a2)
          {
            IIOArray::addObject(a2, v30);
          }

          CFRelease(v31);
        }
      }
    }

    else
    {
      v29 = CGImageMetadataTagCopyValue(a3);
      v45 = 0;
      v46 = 0;
      v47 = 0;
      IIOArray::IIOArray(&v45);
      if (a1)
      {
        if (v27)
        {
          IIODictionary::setObjectForKeyGroup(a1, v46, v25, v27);
        }

        else
        {
          IIODictionary::setObjectForKey(a1, v46, v25);
        }
      }

      else if (a2)
      {
        IIOArray::addObject(a2, v46);
      }

      addPropertiesFromMetadata(0, &v45, v29, a4 + 1);
      CFRelease(v29);
      IIOArray::~IIOArray(&v45);
    }

    if (v12)
    {
      CFRelease(v12);
    }

    if (v25)
    {
      CFRelease(v25);
    }

    return;
  }

  v14 = CFGetTypeID(a3);
  if (v14 == CGImageMetadataValueGetTypeID())
  {
    _cg_jpeg_mem_term("addPropertiesFromMetadata", 5998, "===CGImageMetadataValue:%p===\n");
  }

  else
  {
    v15 = CFGetTypeID(a3);
    if (v15 == CGImageMetadataPropertyGetTypeID())
    {
      _cg_jpeg_mem_term("addPropertiesFromMetadata", 6002, "===CGImageMetadataProperty:%p===\n");
    }

    else
    {
      v16 = CFGetTypeID(a3);
      if (v16 == CFArrayGetTypeID())
      {
        v45 = 0;
        v46 = 0;
        v47 = 0;
        v17 = IIOArray::IIOArray(&v45, a3);
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 0x40000000;
        v41[2] = ___ZL25addPropertiesFromMetadataP13IIODictionaryP8IIOArrayPKvi_block_invoke_2;
        v41[3] = &__block_descriptor_tmp_69;
        v41[4] = a1;
        v41[5] = a2;
        v42 = a4;
        IIOArray::enumerate(v17, v41);
        goto LABEL_4;
      }

      v32 = CFGetTypeID(a3);
      if (v32 == CFDictionaryGetTypeID())
      {
        v45 = 0;
        v46 = 0;
        v47 = 0;
        IIODictionary::IIODictionary(&v45);
        memset(v40, 0, sizeof(v40));
        IIODictionary::IIODictionary(v40, a3);
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 0x40000000;
        v38[2] = ___ZL25addPropertiesFromMetadataP13IIODictionaryP8IIOArrayPKvi_block_invoke_3;
        v38[3] = &__block_descriptor_tmp_70;
        v38[4] = a1;
        v38[5] = a2;
        v39 = a4;
        IIODictionary::enumerate(v40, v38);
        IIODictionary::~IIODictionary(v40);
        IIODictionary::~IIODictionary(&v45);
      }

      else
      {
        v33 = CFGetTypeID(a3);
        if (v33 == CFBagGetTypeID())
        {
          _cg_jpeg_mem_term("addPropertiesFromMetadata", 6027, "===CFBag:%p===\n");
        }

        else
        {
          v35 = CFGetTypeID(a3);
          if (v35 == CFSetGetTypeID())
          {
            _cg_jpeg_mem_term("addPropertiesFromMetadata", 6031, "===CFSet:%p===\n");
          }

          else
          {
            v36 = CFGetTypeID(a3);
            if (v36 == CFStringGetTypeID())
            {
              _cg_jpeg_mem_term("addPropertiesFromMetadata", 6035, "===CFString:%p===\n");
            }

            else
            {
              v37 = CFGetTypeID(a3);
              if (v37 == CFNumberGetTypeID())
              {
                _cg_jpeg_mem_term("addPropertiesFromMetadata", 6039, "===CFNumber:%p===\n");
              }

              else
              {
                _cg_jpeg_mem_term("addPropertiesFromMetadata", 6043, "===unknown:%p===\n", a3);

                CFShow(a3);
              }
            }
          }
        }
      }
    }
  }
}

void sub_1860ACB1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  IIODictionary::~IIODictionary(va);
  IIODictionary::~IIODictionary((v9 - 104));
  _Unwind_Resume(a1);
}

void IIOSubsampler::IIOSubsampler(IIOSubsampler *this, int a2, int a3, int a4, __int16 a5, __int16 a6, __int16 a7, __int16 a8, unsigned int a9, unsigned int a10)
{
  *this = &unk_1EF4DCD30;
  *(this + 2) = a2;
  *(this + 3) = a3;
  *(this + 4) = a4;
  *(this + 5) = a4 & 0x1F;
  *(this + 40) = BYTE1(a4) & 1;
  *(this + 12) = a5;
  *(this + 13) = a6;
  *(this + 14) = a7;
  *(this + 15) = a8;
  *(this + 8) = a9;
  *(this + 9) = a10;
  *(this + 41) = 0;
}

vImage_Error IIOSubsampler::scale8bitChannels(IIOSubsampler *this, vImage_Buffer *a2, vImage_Buffer *a3, vImage_Error a4)
{
  width = a2->width;
  v5 = a4;
  if (a2->rowBytes < width * a4 || a3->rowBytes < a3->width * a4)
  {
    return 4294945522;
  }

  v7 = a4;
  v10 = malloc_type_malloc(a2->height * width, 0x100004077774924uLL);
  height = a2->height;
  v12 = a2->width;
  src.data = v10;
  src.height = height;
  src.width = v12;
  src.rowBytes = v12;
  v13 = malloc_type_malloc(a3->height * a3->width, 0x100004077774924uLL);
  v14 = a3->height;
  v15 = a3->width;
  v33.data = v13;
  v33.height = v14;
  v33.width = v15;
  v33.rowBytes = v15;
  if (v7)
  {
    v16 = 0;
    do
    {
      v17 = a2->height;
      if (v17)
      {
        v18 = 0;
        v19 = 0;
        v20 = a2->width;
        do
        {
          if (v20)
          {
            v21 = &v10[v20 * v18];
            v22 = a2->data + a2->rowBytes * v19;
            v23 = 1;
            do
            {
              *v21++ = v22[v16];
              v20 = a2->width;
              v24 = v20 > v23++;
              v22 += v5;
            }

            while (v24);
            v17 = a2->height;
          }

          v18 = ++v19;
        }

        while (v17 > v19);
      }

      v7 = vImageScale_Planar8(&src, &v33, 0, 0);
      v25 = a3->height;
      if (v25)
      {
        v26 = 0;
        v27 = 0;
        v28 = a3->width;
        do
        {
          if (v28)
          {
            v29 = &v13[v33.rowBytes * v26];
            v30 = a3->data + a3->rowBytes * v27;
            v31 = 1;
            do
            {
              v32 = *v29++;
              v30[v16] = v32;
              v28 = a3->width;
              v24 = v28 > v31++;
              v30 += v5;
            }

            while (v24);
            v25 = a3->height;
          }

          v26 = ++v27;
        }

        while (v25 > v27);
      }

      ++v16;
    }

    while (v16 != v5);
  }

  if (v10)
  {
    free(v10);
  }

  if (v13)
  {
    free(v13);
  }

  return v7;
}

vImage_Error IIOSubsampler::scale16bitChannels(IIOSubsampler *this, vImage_Buffer *a2, vImage_Buffer *a3, vImage_Error a4)
{
  v4 = a4;
  width = a2->width;
  v6 = 2 * a4;
  if (a2->rowBytes < v6 * width || a3->rowBytes < v6 * a3->width)
  {
    return 4294945522;
  }

  v10 = (2 * width);
  v11 = malloc_type_malloc(a2->height * v10, 0x100004077774924uLL);
  src.data = v11;
  *&src.height = *&a2->height;
  src.rowBytes = v10;
  v12 = (2 * LODWORD(a3->width));
  v13 = malloc_type_malloc(a3->height * v12, 0x100004077774924uLL);
  dest.data = v13;
  *&dest.height = *&a3->height;
  dest.rowBytes = v12;
  if (v4)
  {
    v14 = 0;
    v15 = 0;
    v35 = v4;
    do
    {
      height = a2->height;
      if (height)
      {
        v17 = 0;
        v19 = a2->width;
        rowBytes = a2->rowBytes;
        v20 = a2->data + v14;
        do
        {
          if (v19)
          {
            v21 = &v11[v10 * v17];
            v22 = 1;
            v23 = v20;
            do
            {
              *v21 = *v23;
              v21 += 2;
              v24 = v19 > v22++;
              v23 = (v23 + v6);
            }

            while (v24);
          }

          ++v17;
          v20 += rowBytes;
        }

        while (height > v17);
      }

      if (*(this + 40))
      {
        v25 = vImageScale_Planar16F(&src, &dest, 0, 0);
      }

      else
      {
        v25 = vImageScale_Planar16U(&src, &dest, 0, 0);
      }

      v4 = v25;
      v26 = a3->height;
      if (v26)
      {
        v27 = 0;
        data = a3->data;
        v30 = a3->width;
        v29 = a3->rowBytes;
        do
        {
          if (v30)
          {
            v31 = &v13[v12 * v27];
            v32 = 1;
            v33 = data;
            do
            {
              v34 = *v31;
              v31 += 2;
              *&v33[v14] = v34;
              v24 = v30 > v32++;
              v33 += v6;
            }

            while (v24);
          }

          ++v27;
          data += v29;
        }

        while (v26 > v27);
      }

      ++v15;
      v14 += 2;
    }

    while (v15 != v35);
  }

  if (v11)
  {
    free(v11);
  }

  if (v13)
  {
    free(v13);
  }

  return v4;
}

vImage_Error IIOSubsampler::scale32bitChannels(IIOSubsampler *this, vImage_Buffer *a2, vImage_Buffer *a3, vImage_Error a4)
{
  v4 = a4;
  width = a2->width;
  v6 = 4 * a4;
  if (a2->rowBytes < v6 * width || a3->rowBytes < v6 * a3->width)
  {
    return 4294945522;
  }

  v10 = (4 * width);
  v11 = malloc_type_malloc(a2->height * v10, 0x100004077774924uLL);
  src.data = v11;
  *&src.height = *&a2->height;
  src.rowBytes = v10;
  v12 = (4 * LODWORD(a3->width));
  v13 = malloc_type_malloc(a3->height * v12, 0x100004077774924uLL);
  dest.data = v13;
  *&dest.height = *&a3->height;
  dest.rowBytes = v12;
  if (v4)
  {
    v14 = 0;
    v15 = 0;
    v34 = v4;
    do
    {
      height = a2->height;
      if (height)
      {
        v17 = 0;
        v19 = a2->width;
        rowBytes = a2->rowBytes;
        v20 = a2->data + v14;
        do
        {
          if (v19)
          {
            v21 = &v11[v10 * v17];
            v22 = 1;
            v23 = v20;
            do
            {
              *v21 = *v23;
              v21 += 4;
              v24 = v19 > v22++;
              v23 = (v23 + v6);
            }

            while (v24);
          }

          ++v17;
          v20 += rowBytes;
        }

        while (height > v17);
      }

      v4 = vImageScale_PlanarF(&src, &dest, 0, 0);
      v25 = a3->height;
      if (v25)
      {
        v26 = 0;
        data = a3->data;
        v29 = a3->width;
        v28 = a3->rowBytes;
        do
        {
          if (v29)
          {
            v30 = &v13[v12 * v26];
            v31 = 1;
            v32 = data;
            do
            {
              v33 = *v30;
              v30 += 4;
              *&v32[v14] = v33;
              v24 = v29 > v31++;
              v32 += v6;
            }

            while (v24);
          }

          ++v26;
          data += v28;
        }

        while (v25 > v26);
      }

      ++v15;
      v14 += 4;
    }

    while (v15 != v34);
  }

  if (v11)
  {
    free(v11);
  }

  if (v13)
  {
    free(v13);
  }

  return v4;
}

vImage_Error IIOSubsampler::subsampleGray8(IIOSubsampler *this, unsigned __int8 *a2, unsigned int a3, unsigned __int8 *a4, unsigned int *a5)
{
  src.data = a2;
  src.height = a3;
  v5 = *(this + 1);
  *&v6 = v5;
  *(&v6 + 1) = HIDWORD(v5);
  *&src.width = v6;
  v7 = *a5;
  dest.data = a4;
  dest.height = v7;
  v8 = *(this + 4);
  *&v6 = v8;
  *(&v6 + 1) = HIDWORD(v8);
  *&dest.width = v6;
  v9 = vImageScale_Planar8(&src, &dest, 0, 0x20u);
  if (v9)
  {
    LogError("subsampleGray8", 267, "*** ERROR: vImageScale_Planar8 err = %ld\n", v9);
  }

  return v9;
}

vImage_Error IIOSubsampler::subsampleGray16(IIOSubsampler *this, unsigned __int8 *a2, unsigned int a3, unsigned __int8 *a4, unsigned int *a5)
{
  src.data = a2;
  src.height = a3;
  v5 = *(this + 1);
  *&v6 = v5;
  *(&v6 + 1) = HIDWORD(v5);
  *&src.width = v6;
  v7 = *a5;
  dest.data = a4;
  dest.height = v7;
  v8 = *(this + 4);
  *&v6 = v8;
  *(&v6 + 1) = HIDWORD(v8);
  *&dest.width = v6;
  v9 = vImageScale_Planar16U(&src, &dest, 0, 0x20u);
  if (v9)
  {
    LogError("subsampleGray16", 283, "*** ERROR: vImageScale_Planar16U err = %ld\n", v9);
  }

  return v9;
}

vImage_Error IIOSubsampler::subsampleRGB888(IIOSubsampler *this, unsigned __int8 *a2, unsigned int a3, unsigned __int8 *a4, unsigned int *a5)
{
  v6 = a4;
  v8 = a3;
  v31.data = a2;
  v31.height = a3;
  v9 = *(this + 1);
  *&v10 = v9;
  *(&v10 + 1) = HIDWORD(v9);
  *&v31.width = v10;
  v11 = *a5;
  v30.data = a4;
  v30.height = v11;
  v12 = *(this + 4);
  *&v10 = v12;
  *(&v10 + 1) = HIDWORD(v12);
  *&v30.width = v10;
  v13 = (4 * v9);
  v14 = (4 * v12 + 15) & 0xFFFFFFF0;
  src.data = malloc_type_malloc(v13 * a3, 0xB93735FDuLL);
  src.height = v8;
  src.width = *(this + 2);
  src.rowBytes = v13;
  v15 = malloc_type_malloc(*a5 * v14, 0x7BABAD17uLL);
  v16 = *a5;
  dest.data = v15;
  dest.height = v16;
  dest.width = *(this + 8);
  dest.rowBytes = v14;
  v17 = vImageConvert_RGB888toARGB8888(&v31, 0, 0xFFu, &src, 0, 0);
  if (v17)
  {
    v22 = v17;
    IIOSubsampler::subsampleRGB888(v17);
  }

  else
  {
    v18 = vImageScale_ARGB8888(&src, &dest, 0, 0x20u);
    if (v18)
    {
      v22 = v18;
      IIOSubsampler::subsampleRGB888(v18);
    }

    else
    {
      v19 = *(this + 15);
      if (v19)
      {
        if ((v19 & 2) != 0)
        {
          v20 = 66051;
        }

        else
        {
          v20 = 197121;
        }

        *permuteMap = v20;
        vImagePermuteChannels_ARGB8888(&dest, &dest, permuteMap, 0x10u);
        if (*a5)
        {
          v23 = 0;
          data = dest.data;
          v25 = *(this + 9);
          do
          {
            memcpy(v6, data, v25);
            data += v14;
            v25 = *(this + 9);
            v6 += v25;
            ++v23;
          }

          while (v23 < *a5);
        }

        v22 = 0;
      }

      else
      {
        v21 = vImageConvert_ARGB8888toRGB888(&dest, &v30, 0);
        v22 = v21;
        if (v21)
        {
          IIOSubsampler::subsampleRGB888(v21);
        }
      }
    }
  }

  if (src.data)
  {
    free(src.data);
  }

  if (dest.data)
  {
    free(dest.data);
  }

  return v22;
}

vImage_Error IIOSubsampler::subsampleRGBA8888(IIOSubsampler *this, unsigned __int8 *a2, unsigned int a3, unsigned __int8 *a4, unsigned int *a5)
{
  src.data = a2;
  src.height = a3;
  v6 = *(this + 3);
  src.width = *(this + 2);
  src.rowBytes = v6;
  v7 = *a5;
  v24.data = a4;
  v24.height = v7;
  v8 = *(this + 4);
  *&v9 = v8;
  *(&v9 + 1) = HIDWORD(v8);
  *&v24.width = v9;
  dest = src;
  v10 = *(this + 5);
  if ((v10 - 1) > 1)
  {
    v13 = 0;
  }

  else
  {
    v12 = malloc_type_malloc(v6 * a3, 0x100004077774924uLL);
    if (!v12)
    {
      LogError("subsampleRGBA8888", 430, "*** ERROR: failed to allocte temp (%d bytes)\n", *(this + 3) * a3);
      return 0;
    }

    v13 = v12;
    dest.data = v12;
    v10 = *(this + 5);
  }

  if (v10 == 1)
  {
    v16 = vImageUnpremultiplyData_RGBA8888(&src, &dest, 0x10u);
    if (v16)
    {
      v15 = v16;
      IIOSubsampler::subsampleRGBA8888(v16);
      goto LABEL_19;
    }
  }

  else if (v10 == 2)
  {
    v14 = vImageUnpremultiplyData_ARGB8888(&src, &dest, 0x10u);
    if (v14)
    {
      v15 = v14;
      IIOSubsampler::subsampleRGBA8888(v14);
      goto LABEL_19;
    }
  }

  v17 = vImageScale_ARGB8888(&dest, &v24, 0, 0x20u);
  if (v17)
  {
    v15 = v17;
    IIOSubsampler::subsampleRGBA8888(v17);
  }

  else
  {
    v18 = *(this + 5);
    if (v18 != 1)
    {
      if (v18 == 2)
      {
        v19 = vImagePremultiplyData_ARGB8888(&v24, &v24, 0x10u);
        if (v19)
        {
          v15 = v19;
          IIOSubsampler::subsampleRGBA8888(v19);
          goto LABEL_19;
        }
      }

LABEL_16:
      if ((*(this + 15) & 2) != 0)
      {
        *permuteMap = 50331906;
        vImagePermuteChannels_ARGB8888(&v24, &v24, permuteMap, 0x10u);
      }

      v15 = 0;
      goto LABEL_19;
    }

    v20 = vImagePremultiplyData_RGBA8888(&v24, &v24, 0x10u);
    if (!v20)
    {
      goto LABEL_16;
    }

    v15 = v20;
    IIOSubsampler::subsampleRGBA8888(v20);
  }

LABEL_19:
  if (v13)
  {
    free(v13);
  }

  return v15;
}

vImage_Error IIOSubsampler::subsampleRGBA16(IIOSubsampler *this, unsigned __int8 *a2, unsigned int a3, unsigned __int8 *a4, unsigned int *a5)
{
  src.data = a2;
  src.height = a3;
  v6 = *(this + 3);
  src.width = *(this + 2);
  src.rowBytes = v6;
  v7 = *a5;
  dest.data = a4;
  dest.height = v7;
  v8 = *(this + 4);
  *&v9 = v8;
  *(&v9 + 1) = HIDWORD(v8);
  *&dest.width = v9;
  v21 = src;
  v10 = *(this + 5);
  if ((v10 - 1) > 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = malloc_type_malloc(v6 * a3, 0x100004077774924uLL);
    v21.data = v11;
    v10 = *(this + 5);
  }

  if (v10 == 1)
  {
    if (*(this + 40) == 1)
    {
      v12 = vImageUnpremultiplyData_RGBA16F(&src, &v21, 0);
    }

    else
    {
      v12 = vImageUnpremultiplyData_RGBA16U(&src, &v21, 0);
    }

    v14 = v12;
    if (v12)
    {
      IIOSubsampler::subsampleRGBA16(this + 40, v12);
      goto LABEL_29;
    }
  }

  else if (v10 == 2)
  {
    if (*(this + 40) == 1)
    {
      v21 = src;
    }

    else
    {
      v13 = vImageUnpremultiplyData_ARGB16U(&src, &v21, 0);
      if (v13)
      {
        v14 = v13;
        IIOSubsampler::subsampleRGBA16(v13);
        goto LABEL_29;
      }
    }
  }

  v15 = this + 40;
  if (*(this + 40) == 1)
  {
    v16 = vImageScale_ARGB16F(&v21, &dest, 0, 0x10u);
  }

  else
  {
    v16 = vImageScale_ARGB16U(&v21, &dest, 0, 0x20u);
  }

  v14 = v16;
  if (v16)
  {
    IIOSubsampler::subsampleRGBA16(this + 40, v16);
  }

  else
  {
    v17 = *(this + 5);
    if (v17 == 1)
    {
      if (*v15 == 1)
      {
        v18 = vImagePremultiplyData_RGBA16F(&dest, &dest, 0);
      }

      else
      {
        v18 = vImagePremultiplyData_RGBA16U(&dest, &dest, 0);
      }

      v14 = v18;
      if (v18)
      {
        IIOSubsampler::subsampleRGBA16(this + 40, v18);
      }
    }

    else if (v17 == 2 && (*v15 & 1) == 0)
    {
      v19 = vImagePremultiplyData_ARGB16U(&dest, &dest, 0);
      v14 = v19;
      if (v19)
      {
        IIOSubsampler::subsampleRGBA16(v19);
      }
    }

    else
    {
      v14 = 0;
    }
  }

LABEL_29:
  if (v11)
  {
    free(v11);
  }

  return v14;
}

vImage_Error IIOSubsampler::subsampleRGBA32(IIOSubsampler *this, unsigned __int8 *a2, unsigned int a3, unsigned __int8 *a4, unsigned int *a5)
{
  src.data = a2;
  src.height = a3;
  v6 = *(this + 3);
  src.width = *(this + 2);
  src.rowBytes = v6;
  v7 = *a5;
  dest.data = a4;
  dest.height = v7;
  v8 = *(this + 4);
  *&v9 = v8;
  *(&v9 + 1) = HIDWORD(v8);
  *&dest.width = v9;
  v21 = src;
  v10 = *(this + 5);
  if ((v10 - 1) > 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = malloc_type_malloc(v6 * a3, 0x100004077774924uLL);
    v21.data = v11;
    v10 = *(this + 5);
  }

  if (v10 == 1)
  {
    if (*(this + 40) == 1)
    {
      v12 = vImageUnpremultiplyData_RGBA16F(&src, &v21, 0);
    }

    else
    {
      v12 = vImageUnpremultiplyData_RGBA16U(&src, &v21, 0);
    }

    v14 = v12;
    if (v12)
    {
      IIOSubsampler::subsampleRGBA32(this + 40, v12);
      goto LABEL_29;
    }
  }

  else if (v10 == 2)
  {
    if (*(this + 40) == 1)
    {
      v21 = src;
    }

    else
    {
      v13 = vImageUnpremultiplyData_ARGB16U(&src, &v21, 0);
      if (v13)
      {
        v14 = v13;
        IIOSubsampler::subsampleRGBA32(v13);
        goto LABEL_29;
      }
    }
  }

  v15 = this + 40;
  if (*(this + 40) == 1)
  {
    v16 = vImageScale_ARGB16F(&v21, &dest, 0, 0x10u);
  }

  else
  {
    v16 = vImageScale_ARGB16U(&v21, &dest, 0, 0x20u);
  }

  v14 = v16;
  if (v16)
  {
    IIOSubsampler::subsampleRGBA32(this + 40, v16);
  }

  else
  {
    v17 = *(this + 5);
    if (v17 == 1)
    {
      if (*v15 == 1)
      {
        v18 = vImagePremultiplyData_RGBA16F(&dest, &dest, 0);
      }

      else
      {
        v18 = vImagePremultiplyData_RGBA16U(&dest, &dest, 0);
      }

      v14 = v18;
      if (v18)
      {
        IIOSubsampler::subsampleRGBA32(this + 40, v18);
      }
    }

    else if (v17 == 2 && (*v15 & 1) == 0)
    {
      v19 = vImagePremultiplyData_ARGB16U(&dest, &dest, 0);
      v14 = v19;
      if (v19)
      {
        IIOSubsampler::subsampleRGBA32(v19);
      }
    }

    else
    {
      v14 = 0;
    }
  }

LABEL_29:
  if (v11)
  {
    free(v11);
  }

  return v14;
}

uint64_t IIOSubsampler::subsample(IIOSubsampler *this, unsigned __int8 *a2, unsigned int a3, unsigned __int8 *a4, unsigned int *a5)
{
  v6 = *(this + 13);
  if (v6 <= 2)
  {
    if (v6 == 1)
    {
      v20 = *(this + 12);
      if (v20 == 16)
      {
        if (!IIOSubsampler::subsampleGray16(this, a2, a3, a4, a5))
        {
          return 1;
        }
      }

      else if (v20 == 8 && !IIOSubsampler::subsampleGray8(this, a2, a3, a4, a5))
      {
        return 1;
      }

      goto LABEL_35;
    }

    if (v6 != 2)
    {
      goto LABEL_35;
    }

    v13 = *(this + 12);
    if (v13 != 16)
    {
      if (v13 != 8)
      {
        goto LABEL_35;
      }

      v40.data = a2;
      v40.height = a3;
      v14 = *(this + 1);
      *&v15 = v14;
      *(&v15 + 1) = HIDWORD(v14);
      *&v40.width = v15;
      v16 = *a5;
      v39.data = a4;
      v39.height = v16;
      v17 = *(this + 4);
      *&v15 = v17;
      *(&v15 + 1) = HIDWORD(v17);
      *&v39.width = v15;
      v12 = 2;
LABEL_13:
      if (!IIOSubsampler::scale8bitChannels(this, &v40, &v39, v12))
      {
        return 1;
      }

      goto LABEL_35;
    }

    v40.data = a2;
    v40.height = a3;
    v27 = *(this + 1);
    *&v28 = v27;
    *(&v28 + 1) = HIDWORD(v27);
    *&v40.width = v28;
    v29 = *a5;
    v39.data = a4;
    v39.height = v29;
    v30 = *(this + 4);
    *&v28 = v30;
    *(&v28 + 1) = HIDWORD(v30);
    *&v39.width = v28;
    v26 = 2;
  }

  else
  {
    switch(v6)
    {
      case 3u:
        v18 = *(this + 12);
        if (v18 == 32)
        {
          v40.data = a2;
          v40.height = a3;
          v35 = *(this + 1);
          *&v36 = v35;
          *(&v36 + 1) = HIDWORD(v35);
          *&v40.width = v36;
          v37 = *a5;
          v39.data = a4;
          v39.height = v37;
          v38 = *(this + 4);
          *&v36 = v38;
          *(&v36 + 1) = HIDWORD(v38);
          *&v39.width = v36;
          if (!IIOSubsampler::scale32bitChannels(this, &v40, &v39, 3))
          {
            return 1;
          }

          goto LABEL_35;
        }

        if (v18 != 16)
        {
          if (v18 == 8 && !IIOSubsampler::subsampleRGB888(this, a2, a3, a4, a5))
          {
            return 1;
          }

          goto LABEL_35;
        }

        v40.data = a2;
        v40.height = a3;
        v31 = *(this + 1);
        *&v32 = v31;
        *(&v32 + 1) = HIDWORD(v31);
        *&v40.width = v32;
        v33 = *a5;
        v39.data = a4;
        v39.height = v33;
        v34 = *(this + 4);
        *&v32 = v34;
        *(&v32 + 1) = HIDWORD(v34);
        *&v39.width = v32;
        v26 = 3;
        break;
      case 4u:
        v19 = *(this + 12);
        if (v19 == 32)
        {
          if (!IIOSubsampler::subsampleRGBA32(this, a2, a3, a4, a5))
          {
            return 1;
          }
        }

        else if (v19 == 16)
        {
          if (!IIOSubsampler::subsampleRGBA16(this, a2, a3, a4, a5))
          {
            return 1;
          }
        }

        else if (v19 == 8 && !IIOSubsampler::subsampleRGBA8888(this, a2, a3, a4, a5))
        {
          return 1;
        }

        goto LABEL_35;
      case 5u:
        v7 = *(this + 12);
        if (v7 != 16)
        {
          if (v7 != 8)
          {
            goto LABEL_35;
          }

          v40.data = a2;
          v40.height = a3;
          v8 = *(this + 1);
          *&v9 = v8;
          *(&v9 + 1) = HIDWORD(v8);
          *&v40.width = v9;
          v10 = *a5;
          v39.data = a4;
          v39.height = v10;
          v11 = *(this + 4);
          *&v9 = v11;
          *(&v9 + 1) = HIDWORD(v11);
          *&v39.width = v9;
          v12 = 5;
          goto LABEL_13;
        }

        v40.data = a2;
        v40.height = a3;
        v22 = *(this + 1);
        *&v23 = v22;
        *(&v23 + 1) = HIDWORD(v22);
        *&v40.width = v23;
        v24 = *a5;
        v39.data = a4;
        v39.height = v24;
        v25 = *(this + 4);
        *&v23 = v25;
        *(&v23 + 1) = HIDWORD(v25);
        *&v39.width = v23;
        v26 = 5;
        break;
      default:
        goto LABEL_35;
    }
  }

  if (!IIOSubsampler::scale16bitChannels(this, &v40, &v39, v26))
  {
    return 1;
  }

LABEL_35:
  if ((*(this + 41) & 1) == 0)
  {
    *(this + 41) = 1;
    _cg_jpeg_mem_term("subsample", 745, "*** ERROR subsample #channels: %d    bitsPerComponent: %d not handled\n", *(this + 13), *(this + 12));
  }

  return 0;
}

uint64_t IIOImageAnimator::IIOImageAnimator(uint64_t a1, uint64_t a2, const void *a3, IIODictionary *a4)
{
  *a1 = &unk_1EF4DCD60;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  IIO_LoadCoreMediaSymbols();
  *(a1 + 8) = a2;
  *(a1 + 24) = _Block_copy(a3);
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  if (IIODictionary::containsKey(a4, @"StartIndex"))
  {
    Uint64ForKey = IIODictionary::getUint64ForKey(a4, @"StartIndex");
  }

  else
  {
    Uint64ForKey = -1;
  }

  *(a1 + 128) = Uint64ForKey;
  v9 = IIODictionary::containsKey(a4, @"DelayTime");
  DoubleForKey = -1.0;
  if (v9)
  {
    DoubleForKey = IIODictionary::getDoubleForKey(a4, @"DelayTime");
  }

  *(a1 + 136) = -1;
  *(a1 + 144) = DoubleForKey;
  if (IIODictionary::containsKey(a4, @"LoopCount"))
  {
    ObjectForKey = IIODictionary::getObjectForKey(a4, @"LoopCount");
    v12 = ObjectForKey;
    if (ObjectForKey != *MEMORY[0x1E695E880])
    {
      v13 = CFGetTypeID(ObjectForKey);
      if (v13 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v12, kCFNumberCFIndexType, (a1 + 136));
      }
    }
  }

  return a1;
}

void sub_1860ADEBC(_Unwind_Exception *exception_object)
{
  v4 = *(v1 + 120);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v4);
  }

  v5 = *v2;
  if (*v2)
  {
    *(v1 + 64) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void IIOImageAnimator::~IIOImageAnimator(IIOImageAnimator *this)
{
  *this = &unk_1EF4DCD60;
  v2 = *(this + 1);
  if (v2)
  {
    v3 = IIOImageSource::cf(v2);
    CFRelease(v3);
  }

  v4 = *(this + 12);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 15);
  *(this + 14) = 0;
  *(this + 15) = 0;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v5);
  }

  v6 = *(this + 21);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(this + 22);
  if (v7)
  {
    CFRelease(v7);
  }

  CGColorSpaceRelease(*(this + 10));
  _Block_release(*(this + 3));
  v8 = *(this + 15);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v8);
  }

  v9 = *(this + 7);
  if (v9)
  {
    *(this + 8) = v9;
    operator delete(v9);
  }
}

{
  IIOImageAnimator::~IIOImageAnimator(this);

  JUMPOUT(0x186602850);
}

uint64_t IIOImageAnimator::setup(IIOImageSource **this)
{
  memset(v40, 0, sizeof(v40));
  IIODictionary::IIODictionary(v40);
  v2 = IIOImageSource::copyProperties(this[1], v40);
  if (!v2)
  {
    v5 = 4294945155;
    goto LABEL_48;
  }

  Type = IIOImageSource::getType(this[1]);
  memset(v39, 0, sizeof(v39));
  IIODictionary::IIODictionary(v39, v2);
  if (CFStringCompare(Type, @"com.compuserve.gif", 0))
  {
    if (CFStringCompare(Type, @"public.png", 0))
    {
      if (CFStringCompare(Type, @"public.heics", 0))
      {
        if (CFStringCompare(Type, @"public.avis", 0))
        {
          if (CFStringCompare(Type, @"org.webmproject.webp", 0))
          {
            goto LABEL_15;
          }

          v4 = &kCGImagePropertyWebPDictionary;
        }

        else
        {
          v4 = &kCGImagePropertyAVISDictionary;
        }
      }

      else
      {
        v4 = &kCGImagePropertyHEICSDictionary;
      }
    }

    else
    {
      v4 = &kCGImagePropertyPNGDictionary;
    }
  }

  else
  {
    v4 = &kCGImagePropertyGIFDictionary;
  }

  v6 = *v4;
  if (*v4)
  {
    this[5] = IIODictionary::getUint32ForKeyGroup(v39, @"CanvasPixelWidth", v6);
    this[6] = IIODictionary::getUint32ForKeyGroup(v39, @"CanvasPixelHeight", v6);
    goto LABEL_19;
  }

LABEL_15:
  ArrayObjectForPath = IIODictionary::getArrayObjectForPath(v39, "{FileContents}.Images");
  if (ArrayObjectForPath)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(ArrayObjectForPath, 0);
  }

  else
  {
    ValueAtIndex = 0;
  }

  v36 = 0;
  v37 = 0;
  v38 = 0;
  IIODictionary::IIODictionary(&v36, ValueAtIndex);
  this[5] = IIODictionary::getUint32ForKey(&v36, @"Width");
  this[6] = IIODictionary::getUint32ForKey(&v36, @"Height");
  IIODictionary::~IIODictionary(&v36);
  v6 = 0;
LABEL_19:
  v9 = this[6];
  if (!this[5] || !v9)
  {
    _cg_jpeg_mem_term("setup", 264, "*** ERROR: bad image dimensions (%ldx%ld)", this[5], v9);
    goto LABEL_50;
  }

  ObjectForKeyGroup = IIODictionary::getObjectForKeyGroup(v39, @"FrameInfo", v6);
  v11 = ObjectForKeyGroup;
  if (!ObjectForKeyGroup)
  {
    this[4] = 1;
LABEL_25:
    v13 = 0;
    do
    {
      v14 = CFArrayGetValueAtIndex(v11, v13);
      v36 = 0;
      v37 = 0;
      v38 = 0;
      IIODictionary::IIODictionary(&v36, v14);
      DoubleForKey = IIODictionary::getDoubleForKey(&v36, @"DelayTime");
      v17 = this[8];
      v16 = this[9];
      if (v17 >= v16)
      {
        v19 = this[7];
        v20 = v17 - v19;
        v21 = (v17 - v19) >> 3;
        v22 = v21 + 1;
        if ((v21 + 1) >> 61)
        {
          std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
        }

        v23 = v16 - v19;
        if (v23 >> 2 > v22)
        {
          v22 = v23 >> 2;
        }

        if (v23 >= 0x7FFFFFFFFFFFFFF8)
        {
          v24 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v24 = v22;
        }

        if (v24)
        {
          std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned long long>>((this + 7), v24);
        }

        v25 = (v17 - v19) >> 3;
        v26 = (8 * v21);
        v27 = (8 * v21 - 8 * v25);
        *v26 = DoubleForKey;
        v18 = v26 + 1;
        memcpy(v27, v19, v20);
        v28 = this[7];
        this[7] = v27;
        this[8] = v18;
        this[9] = 0;
        if (v28)
        {
          operator delete(v28);
        }
      }

      else
      {
        *v17 = DoubleForKey;
        v18 = v17 + 1;
      }

      this[8] = v18;
      IIODictionary::~IIODictionary(&v36);
      ++v13;
    }

    while (v13 < this[4]);
    v36 = 0;
    v37 = 0;
    v38 = 0;
    IIODictionary::IIODictionary(&v36);
    v29 = IIOImageSource::copyPropertiesAtIndex(this[1], 0, &v36);
    memset(v35, 0, sizeof(v35));
    IIODictionary::IIODictionary(v35, v29);
    *(this + 92) = IIODictionary::getBoolForKey(v35, "HasAlpha");
    Plugin = IIOImageSource::getAnimationReadPlugin(this[1]);
    this[2] = Plugin;
    ColorSpace = IIOReadPlugin::getColorSpace(Plugin);
    this[10] = CGColorSpaceRetain(ColorSpace);
    ColorSpaceModel = IIOReadPlugin::getColorSpaceModel(this[2]);
    *(this + 22) = ColorSpaceModel;
    if (ColorSpaceModel >= 2)
    {
      _cg_jpeg_mem_term("setup", 288, "*** ERROR: unsupported colorspace");
      v5 = 4294945154;
    }

    else if (this[10])
    {
      v5 = 0;
    }

    else
    {
      v33 = MEMORY[0x1E695F128];
      if (ColorSpaceModel)
      {
        v33 = MEMORY[0x1E695F1C0];
      }

      v5 = 0;
      this[10] = CGColorSpaceCreateWithName(*v33);
    }

    IIODictionary::~IIODictionary(v35);
    IIODictionary::~IIODictionary(&v36);
    IIODictionary::~IIODictionary(v39);
    goto LABEL_46;
  }

  Count = CFArrayGetCount(ObjectForKeyGroup);
  this[4] = Count;
  if (Count)
  {
    goto LABEL_25;
  }

  _cg_jpeg_mem_term("setup", 270, "*** ERROR: bad image count (%ld)", 0);
LABEL_50:
  IIODictionary::~IIODictionary(v39);
  v29 = 0;
  v5 = 4294945155;
LABEL_46:
  CFRelease(v2);
  if (v29)
  {
    CFRelease(v29);
  }

LABEL_48:
  IIODictionary::~IIODictionary(v40);
  return v5;
}

void sub_1860AE4A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  IIODictionary::~IIODictionary(va);
  IIODictionary::~IIODictionary(va1);
  _Unwind_Resume(a1);
}

uint64_t IIOImageAnimator::start(IIOImageAnimator *this)
{
  v50[0] = 0;
  v50[1] = v50;
  v50[2] = 0x2000000000;
  v2 = *(this + 16);
  if (v2 == -1)
  {
    v2 = 0;
  }

  v50[3] = v2;
  v3 = *(this + 5);
  v4 = *(this + 6);
  memset(v49, 0, sizeof(v49));
  IIODictionary::IIODictionary(v49);
  v47 = xmmword_1EF4DCD70;
  v48 = *&off_1EF4DCD80;
  IIODictionary::setObjectForKey(v5, *MEMORY[0x1E695E4D0], *MEMORY[0x1E695F2C8]);
  v6 = v3;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2000000000;
  v46 = CGImageProviderCreate();
  v40 = 0;
  v41 = 0;
  v42 = 0;
  IIODictionary::IIODictionary(&v40);
  v7 = *MEMORY[0x1E695F280];
  v8 = *MEMORY[0x1E695F288];
  IIODictionary::setObjectForKey(v9, *MEMORY[0x1E695F280], *MEMORY[0x1E695F288]);
  (*(**(this + 2) + 80))(*(this + 2), v41);
  if (*(this + 22))
  {
    v10 = 1111970369;
  }

  else
  {
    v10 = 843264056;
  }

  SurfaceWithFormat = IIO_CreateSurfaceWithFormat(v10, v3, v4, *(this + 10));
  *(this + 21) = SurfaceWithFormat;
  IOSurfaceIncrementUseCount(SurfaceWithFormat);
  if (*(this + 4) == 1)
  {
    LOBYTE(v29[0]) = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    IIODictionary::IIODictionary(&v30);
    IIODictionary::setObjectForKey(&v30, v7, v8);
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    IIODecodeParameter::IIODecodeParameter(&v34, 0, v44[3], 0, v31, 0.0, 0.0, v3, v4, v3, v4);
    IIOReadPlugin::decodeImageIntoIOSurface(*(this + 2), &v34, *(this + 21));
    v12 = CGImageCreateFromIOSurface(*(this + 21), 0);
    v13 = (*(*(this + 3) + 16))();
    IIOImageAnimator::_releaseFrameImage(v13, v12);
    IIODecodeParameter::~IIODecodeParameter(&v34);
    IIODictionary::~IIODictionary(&v30);
    v14 = 0;
  }

  else
  {
    v15 = IIO_CreateSurfaceWithFormat(v10, v3, v4, *(this + 10));
    *(this + 22) = v15;
    IOSurfaceIncrementUseCount(v15);
    v16 = *(this + 21);
    if (v16 && *(this + 22))
    {
      *&v34 = 0;
      *(&v34 + 1) = &v34;
      v35 = 0x2000000000uLL;
      v30 = 0;
      v31 = &v30;
      v32 = 0x2000000000;
      v33 = v16;
      v29[0] = 0;
      v29[1] = v29;
      v29[2] = 0x2000000000;
      v29[3] = 0;
      v17 = malloc_type_calloc(8uLL, 2uLL, 0x2004093837F09uLL);
      v28[0] = 0;
      v28[1] = v28;
      v28[2] = 0x2000000000;
      v28[3] = 0;
      *(this + 20) = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
      v27 = 0;
      HostTimeClock = gFunc_CMClockGetHostTimeClock();
      gFunc_CMTimebaseCreateWithSourceClock(*MEMORY[0x1E695E480], HostTimeClock, &v27);
      if (v27)
      {
        gFunc_CMTimebaseAddTimerDispatchSource(v27, *(this + 20));
        v19 = *(this + 20);
        v25 = *&kCMTimeZero.value;
        v26 = 0;
        gFunc_CMTimebaseSetTimerDispatchSourceNextFireTime(v27, v19, &v25, 0);
        Ref = IIOImageSource::imageReadRef(*(this + 1));
        v21 = CGImageReadSessionCreate(Ref);
        *(this + 12) = v21;
        *(this + 13) = CGImageSourceGetSource(v21);
        *(this + 19) = IIOImageSource::reader(*(this + 1));
        v22 = *(this + 20);
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 0x40000000;
        handler[2] = ___ZN16IIOImageAnimator5startEv_block_invoke;
        handler[3] = &unk_1E6F41978;
        handler[4] = v50;
        handler[5] = &v43;
        handler[11] = 0;
        handler[12] = 0;
        *&handler[13] = v6;
        *&handler[14] = v4;
        *&handler[15] = v6;
        *&handler[16] = v4;
        handler[6] = &v30;
        handler[7] = v29;
        handler[8] = v28;
        handler[9] = &v34;
        handler[10] = this;
        handler[17] = v17;
        handler[18] = v27;
        dispatch_source_set_event_handler(v22, handler);
        gFunc_CMTimebaseSetRate(v27, 1.0);
        dispatch_resume(*(this + 20));
        v14 = 0;
      }

      else
      {
        v14 = 4294945152;
      }

      _Block_object_dispose(v28, 8);
      _Block_object_dispose(v29, 8);
      _Block_object_dispose(&v30, 8);
      _Block_object_dispose(&v34, 8);
    }

    else
    {
      v14 = 4294945152;
    }
  }

  IIODictionary::~IIODictionary(&v40);
  _Block_object_dispose(&v43, 8);
  IIODictionary::~IIODictionary(v49);
  _Block_object_dispose(v50, 8);
  return v14;
}

void sub_1860AE9FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a45, 8);
  IIODictionary::~IIODictionary((v45 - 248));
  _Block_object_dispose((v45 - 224), 8);
  IIODictionary::~IIODictionary((v45 - 152));
  _Block_object_dispose((v45 - 128), 8);
  _Unwind_Resume(a1);
}

void IIOImageAnimator::_releaseFrameImage(IIOImageAnimator *this, CGImage *a2)
{
  if (CGImageGetImageProvider())
  {
    CGImageProviderSetProperty();
    CGImageProviderSetProperty();
  }

  CGImageRelease(a2);
}

void ___ZN16IIOImageAnimator5startEv_block_invoke(CGImage *a1)
{
  v2 = *(a1 + 10);
  v34 = 0;
  if (*(*(*(a1 + 4) + 8) + 24) >= ((*(v2 + 64) - *(v2 + 56)) >> 3))
  {
    __break(1u);
    goto LABEL_24;
  }

  v1 = a1;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  IIODictionary::IIODictionary(&v31);
  IIODictionary::setObjectForKey(v3, *MEMORY[0x1E695F280], *MEMORY[0x1E695F288]);
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  IIODecodeParameter::IIODecodeParameter(v29, 0, *(*(*(v1 + 5) + 8) + 24), *(*(*(v1 + 4) + 8) + 24), v32, *(v1 + 11), *(v1 + 12), *(v1 + 13), *(v1 + 14), *(v1 + 15), *(v1 + 16));
  IIOReadPlugin::decodeImageIntoIOSurface(*(v2 + 16), v29, *(*(*(v1 + 6) + 8) + 24));
  *(*(*(v1 + 7) + 8) + 24) = *(*(*(v1 + 6) + 8) + 24);
  v27 = 0u;
  v28 = 0u;
  memset(v26, 0, sizeof(v26));
  IIODictionary::IIODictionary(v26);
  IIODictionary::setObjectForKey(v26, *MEMORY[0x1E695E4D0], *MEMORY[0x1E695F2C8]);
  LODWORD(v27) = 2;
  *(&v27 + 1) = _copyImageBlockSetCallback;
  *&v28 = _copyIOSurfaceCallback;
  *(&v28 + 1) = _releaseFrameImageProviderInfo;
  a1 = CGImageProviderCreate();
  if (!a1)
  {
LABEL_24:
    v4 = 0;
    goto LABEL_5;
  }

  a1 = CGImageCreateWithImageProvider();
  v4 = a1;
  if (a1)
  {
    CGImageProviderRelease();
    a1 = (*(*(v2 + 24) + 16))();
  }

LABEL_5:
  v5 = *(*(v1 + 8) + 8);
  v6 = *(v5 + 24);
  if (v6 == 2)
  {
    v8 = *(v1 + 17);
    v9 = *v8;
    *v8 = *(v8 + 8);
    IIOImageAnimator::_releaseFrameImage(a1, v9);
  }

  else
  {
    if (v6 == 1)
    {
      **(v1 + 17) = *(*(v1 + 17) + 8);
      v5 = *(*(v1 + 8) + 8);
      v7 = *(v5 + 24) + 1;
    }

    else
    {
      if (v6)
      {
        goto LABEL_12;
      }

      v7 = 1;
    }

    *(v5 + 24) = v7;
  }

LABEL_12:
  *(*(v1 + 17) + 8) = v4;
  CGImageRetain(*(*(v1 + 17) + 8));
  CGImageRelease(v4);
  CGImageProviderRelease();
  v10 = *(*(v1 + 6) + 8);
  v11 = *(v2 + 168);
  if (*(v10 + 24) == v11)
  {
    v11 = *(v2 + 176);
  }

  *(v10 + 24) = v11;
  if (v34)
  {
    goto LABEL_21;
  }

  if (*(v2 + 32) < 2uLL || (++*(*(*(v1 + 4) + 8) + 24), v12 = *(*(v1 + 4) + 8), *(v12 + 24) >= *(v2 + 32)) && (*(v12 + 24) = 0, *(*(*(v1 + 7) + 8) + 24) = 0, *(v2 + 136) != -1) && (v13 = *(*(v1 + 9) + 8), v14 = *(v13 + 24) + 1, *(v13 + 24) = v14, v14 >= *(v2 + 136)))
  {
    v34 = 1;
LABEL_21:
    _cg_jpeg_mem_term("start_block_invoke", 462, "*** animation was stopped...\n");
    CFRelease(*(v1 + 18));
    dispatch_source_cancel(*(v2 + 160));
    dispatch_release(*(v2 + 160));
    *(v2 + 160) = 0;
    IIOImageAnimator::_releaseFrameImage(v18, **(v1 + 17));
    IIOImageAnimator::_releaseFrameImage(v19, *(*(v1 + 17) + 8));
    free(*(v1 + 17));
    CGImageProviderRelease();
    *(*(*(v1 + 5) + 8) + 24) = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZN16IIOImageAnimator5startEv_block_invoke_2;
    block[3] = &__block_descriptor_tmp_49;
    block[4] = v2;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    goto LABEL_22;
  }

  v23 = 0uLL;
  v24 = 0;
  v15 = gFunc_CMTimeAdd;
  gFunc_CMTimebaseGetTime(&v21, *(v1 + 18));
  gFunc_CMTimeMakeWithSeconds(600);
  v15(&v23, &v21, v20);
  v16 = *(v1 + 18);
  v17 = *(v2 + 160);
  v21 = v23;
  v22 = v24;
  gFunc_CMTimebaseSetTimerDispatchSourceNextFireTime(v16, v17, &v21, 0);
LABEL_22:
  IIODictionary::~IIODictionary(v26);
  IIODecodeParameter::~IIODecodeParameter(v29);
  IIODictionary::~IIODictionary(&v31);
}

void sub_1860AEFF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  IIODictionary::~IIODictionary(&a24);
  IIODecodeParameter::~IIODecodeParameter(&a31);
  IIODictionary::~IIODictionary((v31 - 96));
  _Unwind_Resume(a1);
}

void *_copyImageBlockSetCallback(__IOSurface *a1, uint64_t a2, const __CFDictionary *a3)
{
  v22 = 0;
  CGImageProviderGetSize();
  v6 = v5;
  v8 = v7;
  v21 = xmmword_1EF4DCDA0;
  if (!CGImageProviderGetProperty())
  {
    BytesPerRow = IOSurfaceGetBytesPerRow(a1);
    IOSurfaceLock(a1, 1u, 0);
    v11 = malloc_type_malloc((v8 * BytesPerRow), 0x100004077774924uLL);
    if (v11)
    {
      v12 = v11;
      BaseAddress = IOSurfaceGetBaseAddress(a1);
      memcpy(v12, BaseAddress, (v8 * BytesPerRow));
      if (!a3 || (Value = CFDictionaryGetValue(a3, *MEMORY[0x1E695F288])) == 0 || (v15 = Value, v16 = CFGetTypeID(Value), v16 != CFStringGetTypeID()) || CFStringCompare(v15, *MEMORY[0x1E695F280], 0))
      {
        src.data = v12;
        src.height = v8;
        src.width = v6;
        src.rowBytes = BytesPerRow;
        dest.data = v12;
        dest.height = v8;
        dest.width = v6;
        dest.rowBytes = BytesPerRow;
        *permuteMap = 50331906;
        vImagePermuteChannels_ARGB8888(&src, &dest, permuteMap, 0x10u);
      }

      v17 = CGImageBlockCreate();
      v22 = v17;
    }

    else
    {
      v17 = 0;
    }

    IOSurfaceUnlock(a1, 1u, 0);
    if (v17)
    {
      goto LABEL_6;
    }

    return 0;
  }

  if (*MEMORY[0x1E695E4C0] == CGImageProviderGetProperty())
  {
    _cg_jpeg_mem_term("_copyImageBlockSetCallback", 68, "*** Should not be here\n");
  }

  result = malloc_type_calloc((vcvtd_n_u64_f64(v6, 2uLL) + 15) & 0xFFFFFFFFFFFFFFF0, v8, 0x100004077774924uLL);
  if (result)
  {
    v22 = CGImageBlockCreate();
    if (v22)
    {
LABEL_6:
      CGImageProviderGetColorSpace();
      return CGImageBlockSetCreateWithType();
    }

    return 0;
  }

  return result;
}

uint64_t ___ZN16IIOImageAnimator5startEv_block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t _cg_JP2InitCompressionSettings(uint64_t result, float a2)
{
  *result = a2 < 1.0;
  *(result + 2) = 0;
  *(result + 4) = vcvts_n_s32_f32(a2, 0xAuLL);
  *(result + 6) = 4;
  *(result + 8) = 0;
  return result;
}

uint64_t _cg_JP2CompressorSetup(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t *a5, void *a6)
{
  v11 = malloc_type_calloc(0x120uLL, 1uLL, 0x10E0040C207FBCFuLL);
  *a6 = v11;
  if (v11)
  {
    v12 = v11;
    v13 = *a4;
    v14 = a4[1];
    v15 = a4[3];
    v11[2] = a4[2];
    v11[3] = v15;
    *v11 = v13;
    v11[1] = v14;
    v16 = a4[4];
    v17 = a4[5];
    v18 = a4[7];
    v11[6] = a4[6];
    v11[7] = v18;
    v11[4] = v16;
    v11[5] = v17;
    v19 = a4[8];
    v20 = a4[9];
    v21 = a4[11];
    v11[10] = a4[10];
    v11[11] = v21;
    v11[8] = v19;
    v11[9] = v20;
    v22 = *(v11 + 12);
    if (v22)
    {
      CFRetain(v22);
    }

    *(v12 + 26) = a1;
    *(v12 + 27) = a2;
    v23 = *a5;
    *(v12 + 50) = *(a5 + 2);
    *(v12 + 24) = v23;
    operator new();
  }

  return 4294967188;
}

void kdu_image_in::AllocateSrcLineBuffer(kdu_image_in *this)
{
  if (*(this + 5) > 0)
  {
    operator new[]();
  }

  kdu_image_in::AllocateSrcLineBuffer();
}

uint64_t kdu_image_in::SetChannelOffsets(uint64_t result, int a2)
{
  *(result + 40) = xmmword_186226E70;
  switch(a2)
  {
    case 2:
      goto LABEL_4;
    case 6:
LABEL_5:
      *(result + 40) = 0x200000001;
      *(result + 48) = 3;
      return result;
    case 4:
LABEL_4:
      *(result + 52) = 0;
      goto LABEL_5;
  }

  if ((a2 & 0xFFFFFFFD) == 1)
  {
    *(result + 52) = 3;
  }

  return result;
}

uint64_t _cg_JP2CompressorTearDown(uint64_t a1)
{
  v2 = *(a1 + 232);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    CFRelease(v3);
  }

  kdu_image_in::DeallocateSrcLineBuffer(*(a1 + 248));
  v4 = *(a1 + 248);
  if (v4)
  {
    MEMORY[0x186602850](v4, 0x1090C40459A9DE1);
  }

  v5 = *(a1 + 224);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  free(a1);
  return 0;
}

uint64_t kdu_image_in::DeallocateSrcLineBuffer(kdu_image_in *this)
{
  v2 = *(this + 4);
  if (!v2)
  {
    kdu_image_in::DeallocateSrcLineBuffer();
  }

  result = MEMORY[0x186602830](v2, 0x1000C8077774924);
  *(this + 4) = 0;
  return result;
}

uint64_t kdu_image_in::get(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 24) / 8;
  v4 = *a3;
  v5 = (*(a1 + 32) + *(a1 + 4 * a2 + 40));
  v6 = *(a3 + 8);
  if ((*(a3 + 6) & 2) != 0 || !v6)
  {
    if (*(a3 + 6))
    {
      if (v4 >= 1)
      {
        v9 = v4 + 1;
        do
        {
          *v6++ = *v5 - 128;
          v5 += v3;
          --v9;
        }

        while (v9 > 1);
      }
    }

    else if (v4 >= 1)
    {
      v8 = v4 + 1;
      do
      {
        *v6++ = 32 * *v5 - 4096;
        v5 += v3;
        --v8;
      }

      while (v8 > 1);
    }
  }

  else if (*(a3 + 6))
  {
    if (v4 >= 1)
    {
      v10 = v4 + 1;
      do
      {
        *v6 = *v5 - 128;
        v6 += 2;
        v5 += v3;
        --v10;
      }

      while (v10 > 1);
    }
  }

  else if (v4 >= 1)
  {
    v7 = v4 + 1;
    do
    {
      *v6 = vcvts_n_f32_u32(*v5, 8uLL) + -0.5;
      v6 += 2;
      v5 += v3;
      --v7;
    }

    while (v7 > 1);
  }

  return 1;
}

uint64_t _cg_JP2CompressorProcessImage(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  v4 = *(a1 + 232);
  if (*(v4 + 8) || *(v4 + 16))
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    siz_params::siz_params(v9);
    kdu_params::set(v9, "Scomponents", 0, 0, *(a1 + 120));
    kdu_params::set(v9, "Sdims", 0, 0, *(a1 + 72));
    kdu_params::set(v9, "Sdims", 0, 1, *(a1 + 64));
    kdu_params::set(v9, "Sprecision", 0, 0, 8);
    kdu_params::set(v9, "Ssigned", 0, 0, 0);
    kdu_params::set(v9, "Stiles", 0, 0, v3);
    kdu_params::set(v9, "Stiles", 0, 1, v2);
    kdu_params::set(v9, "Stile_origin", 0, 0, 0);
    kdu_params::set(v9, "Stile_origin", 0, 1, 0);
    (*(*&v9[0] + 72))(v9, 0);
    v8 = 0;
    v8 = jp2_target::access_dimensions(*(a1 + 240));
    jp2_target::access_resolution(*(a1 + 240));
    jp2_target::access_channels(*(a1 + 240));
    v7 = 0;
    v7 = jp2_target::access_colour(*(a1 + 240));
    if (*(a1 + 120))
    {
      v5 = 0;
      do
      {
        kdu_params::set(v9, "Sdims", v5, 0, *(a1 + 72));
        kdu_params::set(v9, "Sdims", v5, 1, *(a1 + 64));
        kdu_params::set(v9, "Sprecision", v5, 0, 8);
        kdu_params::set(v9, "Ssigned", v5++, 0, 0);
      }

      while (*(a1 + 120) > v5);
    }

    (*(*&v9[0] + 72))(v9, 0);
    jp2_dimensions::init(&v8, v9, 1u);
  }

  return 0xFFFFFFFFLL;
}

void sub_1860B0410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  kdu_params::~kdu_params(va);
  _Unwind_Resume(a1);
}

float **_cg_JP2CompressorSetDisplayResolution(uint64_t a1, float a2, float a3)
{
  v6 = jp2_target::access_resolution(*(a1 + 240));
  jp2_resolution::init(&v6, a2 / a3);
  return jp2_resolution::set_resolution(&v6, a2, 1);
}

void jp2_family_tgt::~jp2_family_tgt(jp2_family_tgt *this)
{
  jp2_family_tgt::~jp2_family_tgt(this);

  JUMPOUT(0x186602850);
}

{
  *this = &unk_1EF4DCDC0;
  jp2_family_tgt::close(this);
}

void MyJP2CompressedTarget::~MyJP2CompressedTarget(MyJP2CompressedTarget *this)
{
  *this = &unk_1EF4D2B00;
}

{
  *this = &unk_1EF4D2B00;
  JUMPOUT(0x186602850);
}

BOOL MyJP2CompressedTarget::write(MyJP2CompressedTarget *this, const unsigned __int8 *a2, int a3)
{
  v5 = (*(*(this + 1) + 40))(*(*(this + 1) + 8), a2, a3);
  *(this + 2) += v5;
  return v5 == a3;
}

void IIO_Writer_BMP::~IIO_Writer_BMP(IIO_Writer_BMP *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

uint64_t IIO_Writer_BMP::write(IIO_Writer_BMP *this, IIOImageWriteSession *a2, IIOImageDestination *a3)
{
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "IIO_Writer_BMP::write", 0, 0, -1, 0);
  }

  v8 = 0;
  memset(v7, 0, sizeof(v7));
  BMPWritePlugin::BMPWritePlugin(v7, a2, a3);
  v5 = IIOWritePlugin::writeAll(v7);
  BMPWritePlugin::~BMPWritePlugin(v7);
  return v5;
}

void sub_1860B0788(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  BMPWritePlugin::~BMPWritePlugin(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1860B0774);
}

void IIOImageSource::IIOImageSource(IIOImageSource *a1, const __CFData *a2, int a3)
{
  *a1 = &unk_1EF4D46B0;
  *(a1 + 9) = 0;
  *(a1 + 10) = 0;
  *(a1 + 18) = 0;
  *(a1 + 19) = 0;
  *(a1 + 20) = 0;
  *(a1 + 25) = 0;
  *(a1 + 26) = 0;
  *(a1 + 27) = 0;
  IIOImageSource::setup(a1, a3);
  IIOImageSource::setupWithProxyData(a1, a2, v5);
}

void sub_1860B0840(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 208) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 152) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

IIODictionary *IIOImageSource::addImageSourceProxyInfo(IIOImageSource *this, IIODictionary *a2, IIODictionary *a3)
{
  result = IIOImageSource::getProperties(this, a3);
  if (result)
  {
    v5 = result;
    ObjectForKey = IIODictionary::getObjectForKey(result, @"{Groups}");
    if (ObjectForKey)
    {
      IIODictionary::setObjectForKey(a2, ObjectForKey, @"{Groups}");
    }

    result = IIODictionary::getObjectForKeyGroup(v5, @"ImageCount", @"{FileContents}");
    if (result)
    {
      IIODictionary::setObjectForKeyGroup(a2, result, @"ImageCount", @"{FileContents}");
      v7[0] = 0;
      v7[1] = v7;
      v7[2] = 0x2000000000;
      operator new();
    }
  }

  return result;
}

void sub_1860B0B5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  IIOArray::~IIOArray(va);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void ___ZN14IIOImageSource23addImageSourceProxyInfoEP13IIODictionaryS1__block_invoke(uint64_t a1, const __CFDictionary *a2)
{
  memset(v10, 0, sizeof(v10));
  IIODictionary::IIODictionary(v10, a2);
  v7 = 0;
  v8 = 0;
  v9 = 0;
  IIODictionary::IIODictionary(&v7);
  IIOArray::addObject(*(*(*(a1 + 32) + 8) + 24), v8);
  ObjectForKey = IIODictionary::getObjectForKey(v10, @"AuxiliaryData");
  if (ObjectForKey)
  {
    memset(v6, 0, sizeof(v6));
    IIOArray::IIOArray(v6, ObjectForKey);
    v5[0] = 0;
    v5[1] = v5;
    v5[2] = 0x2000000000;
    operator new();
  }

  v4 = IIODictionary::getObjectForKey(v10, @"NamedColorSpace");
  IIODictionary::setObjectForKey(&v7, v4, @"NamedColorSpace");
  IIODictionary::~IIODictionary(&v7);
  IIODictionary::~IIODictionary(v10);
}

void sub_1860B0D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  MEMORY[0x186602850](v10, 0x10A1C4047070A01);
  IIOArray::~IIOArray(va);
  IIODictionary::~IIODictionary((v11 - 64));
  IIODictionary::~IIODictionary((v11 - 40));
  _Unwind_Resume(a1);
}

void ___ZN14IIOImageSource23addImageSourceProxyInfoEP13IIODictionaryS1__block_invoke_2(uint64_t a1, const __CFDictionary *a2)
{
  memset(v7, 0, sizeof(v7));
  IIODictionary::IIODictionary(v7, a2);
  v4 = 0;
  v5 = 0;
  v6 = 0;
  IIODictionary::IIODictionary(&v4);
  ObjectForKey = IIODictionary::getObjectForKey(v7, @"AuxiliaryDataType");
  IIODictionary::setObjectForKey(&v4, ObjectForKey, @"AuxiliaryDataType");
  IIOArray::addObject(*(*(*(a1 + 32) + 8) + 24), v5);
  IIODictionary::~IIODictionary(&v4);
  IIODictionary::~IIODictionary(v7);
}

void sub_1860B0E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

void IIOImageSource::addImageSourceAtIndexProxyInfo(IIOImageSource *this, IIODictionary *a2, unsigned int a3, const __CFDictionary **a4)
{
  PropertiesAtIndexInternal = IIOImageSource::getPropertiesAtIndexInternal(this, a3, a4);
  ObjectForKeyGroup = IIODictionary::getObjectForKeyGroup(PropertiesAtIndexInternal, @"23", @"{MakerApple}");
  if (ObjectForKeyGroup)
  {
    IIODictionary::setObjectForKeyGroup(a2, ObjectForKeyGroup, @"23", @"{MakerApple}");
  }

  v7 = IIODictionary::getObjectForKeyGroup(PropertiesAtIndexInternal, @"25", @"{MakerApple}");
  if (v7)
  {
    IIODictionary::setObjectForKeyGroup(a2, v7, @"25", @"{MakerApple}");
  }

  v8 = IIODictionary::getObjectForKeyGroup(PropertiesAtIndexInternal, @"87", @"{MakerApple}");
  if (v8)
  {
    IIODictionary::setObjectForKeyGroup(a2, v8, @"87", @"{MakerApple}");
  }

  v9 = IIODictionary::getObjectForKeyGroup(PropertiesAtIndexInternal, @"CameraExtrinsics", @"{HEIF}");
  if (v9)
  {
    IIODictionary::setObjectForKeyGroup(a2, v9, @"CameraExtrinsics", @"{HEIF}");
  }

  v10 = IIODictionary::getObjectForKeyGroup(PropertiesAtIndexInternal, @"CameraModel", @"{HEIF}");
  if (v10)
  {

    IIODictionary::setObjectForKeyGroup(a2, v10, @"CameraModel", @"{HEIF}");
  }
}

CFDataRef IIOImageSource::createProxyData(IIO_Reader **this, const __CFDictionary **a2)
{
  Type = IIOImageSource::getType(this);
  v5 = IIOImageSource::updatedCount(this);
  PrimaryImageIndex = IIOImageSource::getPrimaryImageIndex(this);
  v24 = 0;
  v25 = 0;
  v26 = 0;
  PropertiesAtIndexInternal = IIOImageSource::getPropertiesAtIndexInternal(this, 0, a2);
  IIODictionary::IIODictionary(&v24, *(PropertiesAtIndexInternal + 1), 1);
  memset(v23, 0, sizeof(v23));
  IIODictionary::IIODictionary(v23);
  v20 = 0;
  v21 = 0;
  v22 = 0;
  IIODictionary::IIODictionary(&v20);
  IIONumber::IIONumber(&v17, 1.0);
  IIODictionary::setObjectForKey(&v20, value, @"iio-proxy-version");
  IIONumber::~IIONumber(&v17);
  IIODictionary::setObjectForKey(&v20, Type, @"iio-proxy-isrType");
  IIONumber::IIONumber(&v17, v5);
  IIODictionary::setObjectForKey(&v20, value, @"iio-proxy-count");
  IIONumber::~IIONumber(&v17);
  IIONumber::IIONumber(&v17, PrimaryImageIndex);
  IIODictionary::setObjectForKey(&v20, value, @"iio-primary_index");
  IIONumber::~IIONumber(&v17);
  IIODictionary::setObjectForKey(&v24, v21, @"{iio-proxy-base}");
  v17 = 0;
  v18 = 0;
  value = 0;
  IIODictionary::IIODictionary(&v17);
  IIOImageSource::addImageSourceProxyInfo(this, &v17, a2);
  IIODictionary::setObjectForKey(&v24, v18, @"{iio-proxy-containerProperties}");
  if (v5 >= 2)
  {
    error = 0;
    v15 = 0;
    v16 = 0;
    IIOArray::IIOArray(&error);
    if (v5)
    {
      v8 = 0;
      do
      {
        v11 = 0;
        v12 = 0;
        v13 = 0;
        IIODictionary::IIODictionary(&v11);
        if (v8)
        {
          IIOImageSource::addImageSourceAtIndexProxyInfo(this, &v11, v8, a2);
        }

        IIOArray::addObject(&error, v12);
        IIODictionary::~IIODictionary(&v11);
        ++v8;
      }

      while (v5 != v8);
    }

    IIODictionary::setObjectForKey(&v24, v15, @"{iio-proxy-imageProperties}");
    IIOArray::~IIOArray(&error);
  }

  error = 0;
  v9 = CFPropertyListCreateData(*MEMORY[0x1E695E480], v25, kCFPropertyListBinaryFormat_v1_0, 0, &error);
  IIODictionary::~IIODictionary(&v17);
  IIODictionary::~IIODictionary(&v20);
  IIODictionary::~IIODictionary(v23);
  IIODictionary::~IIODictionary(&v24);
  return v9;
}

void sub_1860B1224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va3, a4);
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  va_copy(va3, va2);
  v14 = va_arg(va3, void);
  v16 = va_arg(va3, void);
  v17 = va_arg(va3, void);
  IIOArray::~IIOArray(va);
  IIODictionary::~IIODictionary(va1);
  IIODictionary::~IIODictionary(va2);
  IIODictionary::~IIODictionary(va3);
  IIODictionary::~IIODictionary((v4 - 72));
  _Unwind_Resume(a1);
}

CFTypeRef IIOImageSource::proxyCopyProperties(IIODictionary **this, IIODictionary *a2)
{
  ObjectForKey = IIODictionary::getObjectForKey(this[16], @"{iio-proxy-containerProperties}");

  return CFRetain(ObjectForKey);
}

CFTypeRef IIOImageSource::proxyCopyPropertiesAtIndex(IIOImageSource *this, unint64_t a2, IIODictionary *a3)
{
  if (!a2)
  {
    cf = 0;
    v10 = 0;
    v8 = 0;
    IIODictionary::IIODictionary(&v8, *(*(this + 16) + 8), 0);
    IIODictionary::removeObjectForKey(&v8, @"{iio-proxy-base}");
    IIODictionary::removeObjectForKey(&v8, @"{iio-proxy-containerProperties}");
    IIODictionary::removeObjectForKey(&v8, @"{iio-proxy-imageProperties}");
    v7 = CFRetain(cf);
    IIODictionary::~IIODictionary(&v8);
    return v7;
  }

  ObjectForKey = IIODictionary::getObjectForKey(*(this + 16), @"{iio-proxy-imageProperties}");
  if (CFArrayGetCount(ObjectForKey) <= a2)
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(ObjectForKey, a2);

  return CFRetain(ValueAtIndex);
}

void sub_1860B141C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

CFDataRef CGImageSourceCreateProxyData(uint64_t a1, const __CFDictionary *a2)
{
  IIOInitDebugFlags();
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "CGImageSourceCreateProxyData", 0, 0, -1, 0);
  }

  if (!a1)
  {
    CGImageSourceCreateProxyData_cold_1();
    return 0;
  }

  Source = CGImageSourceGetSource(a1);
  if (!Source)
  {
    return 0;
  }

  v5 = Source;
  memset(v8, 0, sizeof(v8));
  IIODictionary::IIODictionary(v8, a2);
  IIOImageSource::lock(v5);
  ProxyData = IIOImageSource::createProxyData(v5, v8);
  IIOImageSource::unlock(v5);
  IIODictionary::~IIODictionary(v8);
  return ProxyData;
}

void sub_1860B1510(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

uint64_t CGImageSourceCreateWithProxyData(const void *a1, const __CFDictionary *a2)
{
  kdebug_trace();
  IIOInitDebugFlags();
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "CGImageSourceCreateWithProxyData", 0, 0, -1, 0);
  }

  if (a1)
  {
    v4 = CFGetTypeID(a1);
    if (v4 == CFDataGetTypeID())
    {
      memset(v6, 0, sizeof(v6));
      IIODictionary::IIODictionary(v6, a2);
      operator new();
    }

    CGImageSourceCreateWithProxyData_cold_1();
  }

  else
  {
    CGImageSourceCreateWithProxyData_cold_2();
  }

  kdebug_trace();
  kdebug_trace();
  return 0;
}

void sub_1860B16E4(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x186602850](v2, 0x10E1C4080364B91);
  IIODictionary::~IIODictionary(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1860B1644);
}

BOOL CGImageSourceIsProxy(uint64_t a1)
{
  IIOInitDebugFlags();
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "CGImageSourceIsProxy", 0, 0, -1, 0);
  }

  if (!a1)
  {
    CGImageSourceIsProxy_cold_2();
    return 0;
  }

  Source = CGImageSourceGetSource(a1);
  if (!Source)
  {
    return 0;
  }

  v3 = Source;
  if (IIOImageSource::imageDataDidNotMatchRequestedHint(Source))
  {
    CGImageSourceIsProxy_cold_1();
    return 0;
  }

  IIOImageSource::lock(v3);
  v4 = v3[54] == 7;
  IIOImageSource::unlock(v3);
  return v4;
}

uint64_t _AlphaPosition(int a1)
{
  if ((a1 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return dword_186226F20[a1 - 1];
  }
}

uint64_t _ImageAlphaPosition(CGImage *a1)
{
  v1 = CGImageGetAlphaInfo(a1) - 1;
  if (v1 > 5)
  {
    return 0;
  }

  else
  {
    return dword_186226F20[v1];
  }
}

uint64_t _AlphaTogglePosition(uint64_t result)
{
  if ((result - 1) <= 5)
  {
    return dword_186226F38[(result - 1)];
  }

  return result;
}

BOOL _ValidAlphaInfo(uint64_t a1, size_t a2, CGColorSpaceRef space, unsigned int a4)
{
  if (!a4)
  {
    return CGColorSpaceGetNumberOfComponents(space) * a1 == a2;
  }

  if (a4 <= 4)
  {
    return a1 + a1 * CGColorSpaceGetNumberOfComponents(space) <= a2;
  }

  if (a4 - 5 > 1)
  {
    return 0;
  }

  return CGColorSpaceGetNumberOfComponents(space) * a1 < a2;
}

void IIOAddDateComponents(IIOArray *a1)
{
  v6 = time(0);
  v2 = localtime(&v6);
  tm_mday = v2->tm_mday;
  tm_mon = v2->tm_mon;
  IIONumber::IIONumber(v5, v2->tm_year + 1900);
  IIOArray::addObject(a1, v5);
  IIONumber::~IIONumber(v5);
  IIONumber::IIONumber(v5, tm_mon + 1);
  IIOArray::addObject(a1, v5);
  IIONumber::~IIONumber(v5);
  IIONumber::IIONumber(v5, tm_mday);
  IIOArray::addObject(a1, v5);
  IIONumber::~IIONumber(v5);
  IIONumber::IIONumber(v5, 0);
  IIOArray::addObject(a1, v5);
  IIONumber::~IIONumber(v5);
  IIONumber::IIONumber(v5, 0);
  IIOArray::addObject(a1, v5);
  IIONumber::~IIONumber(v5);
  IIONumber::IIONumber(v5, 0);
  IIOArray::addObject(a1, v5);
  IIONumber::~IIONumber(v5);
}

void IIOAddXYZfrom_xy(IIOArray *a1, float a2, float a3, float a4)
{
  if (a3 == 0.0)
  {
    v7 = 0.0;
    a4 = 0.0;
    v8 = 0.0;
  }

  else
  {
    v7 = (a2 * a4) / a3;
    v8 = (((1.0 - a2) - a3) * a4) / a3;
  }

  IIONumber::IIONumber(v9, v7);
  IIOArray::addObject(a1, v9);
  IIONumber::~IIONumber(v9);
  IIONumber::IIONumber(v9, a4);
  IIOArray::addObject(a1, v9);
  IIONumber::~IIONumber(v9);
  IIONumber::IIONumber(v9, v8);
  IIOArray::addObject(a1, v9);
  IIONumber::~IIONumber(v9);
}

void sub_1860B1C3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

BOOL IIOImageIsSDR(CGImage *a1)
{
  ColorSpace = CGImageGetColorSpace(a1);
  if (CGColorSpaceGetModel(ColorSpace) != kCGColorSpaceModelRGB)
  {
    return 1;
  }

  v3 = CGImageGetColorSpace(a1);
  if (CGColorSpaceUsesITUR_2100TF(v3))
  {
    return 0;
  }

  if (!CGColorSpaceUsesExtendedRange(ColorSpace))
  {
    return 1;
  }

  CGImageGetContentHeadroom();
  return v5 == 1.0;
}

void IIO_Reader_PNG::~IIO_Reader_PNG(IIO_Reader_PNG *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

IIOImageRead *IIO_Reader_PNG::createGlobalInfoData(IIO_Reader_PNG *this, IIOImageReadSession *a2)
{
  result = IIOImageReadSession::globalInfoForType(a2, 1095781959);
  if (result)
  {
    v3 = 0xF0F0F0F0F0F0F0F1 * ((*(result + 2) - *(result + 1)) >> 1);
    v4.location = 0;
    v4.length = v3;
    return GlobalPNGInfo::createDataRepresentation(result, &v4);
  }

  return result;
}

uint64_t globalPNGInfoReleaseProc(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t IIO_Reader_PNG::updateSourceProperties(IIO_Reader_PNG *this, IIOImageReadSession *a2, IIODictionary *a3, IIODictionary *a4, IIODictionary *a5, CGImageSourceStatus *a6)
{
  v55[1] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    BoolForKey = IIODictionary::getBoolForKey(a4, @"kCGImageSourcePropertiesIncludeColorInfo");
  }

  else
  {
    BoolForKey = 0;
  }

  v55[0] = 0;
  if (IIOImageReadSession::getBytesAtOffset(a2, v55, 8, 8) != 8)
  {
    v8 = 0;
    v28 = -1;
    goto LABEL_25;
  }

  v8 = 0;
  v28 = -1;
  v9 = 8;
  while (1)
  {
    v10 = v55[0];
    if (HIDWORD(v55[0]) != 1380206665 || !BoolForKey)
    {
      break;
    }

    LOWORD(Size) = 0;
    if (IIOImageReadSession::getBytesAtOffset(a2, &Size, v9 + 16, 2) != 2)
    {
      goto LABEL_25;
    }

    if (BYTE1(Size) <= 2u)
    {
      if (BYTE1(Size) == 2)
      {
        v11 = @"RGB";
      }

      else
      {
        v11 = v8;
      }

      if (!BYTE1(Size))
      {
        v11 = @"Gray";
      }
    }

    else
    {
      v11 = @"RGB";
      if (BYTE1(Size) != 3 && BYTE1(Size) != 6)
      {
        v11 = v8;
        if (BYTE1(Size) == 4)
        {
          v11 = @"Gray";
        }
      }
    }

    v28 = (BYTE1(Size) & 0xFD) == 4;
    v8 = v11;
LABEL_22:
    v9 += bswap32(v10) + 12;
    if (IIOImageReadSession::getBytesAtOffset(a2, v55, v9, 8) != 8)
    {
      goto LABEL_25;
    }
  }

  v12 = bswap32(HIDWORD(v55[0]));
  if (v12 == 1229209940)
  {
    goto LABEL_25;
  }

  if (v12 != 1633899596)
  {
    goto LABEL_22;
  }

  if (IIOImageReadSession::getBytesAtOffset(a2, v55, v9 + 8, 8) == 8)
  {
    IIONumber::IIONumber(&Size, bswap32(HIDWORD(v55[0])));
    IIODictionary::setObjectForKeyGroup(a3, v35[1], @"LoopCount", @"{PNG}");
    IIONumber::~IIONumber(&Size);
  }

LABEL_25:
  v13 = IIOImageReadSession::globalInfoForType(a2, 1095781959);
  if (v13 || (LODWORD(Size) = 0, LODWORD(v29[0]) = 0, (*(*this + 32))(this, a2, a4, &Size, v29), (v13 = IIOImageReadSession::globalInfoForType(a2, 1095781959)) != 0))
  {
    IIONumber::IIONumber(&Size, *(v13 + 8));
    IIODictionary::setObjectForKeyGroup(a3, v35[1], @"CanvasPixelWidth", @"{PNG}");
    IIONumber::~IIONumber(&Size);
    IIONumber::IIONumber(&Size, *(v13 + 9));
    IIODictionary::setObjectForKeyGroup(a3, v35[1], @"CanvasPixelHeight", @"{PNG}");
    IIONumber::~IIONumber(&Size);
    Size = 0;
    v35[0] = 0;
    v35[1] = 0;
    IIOArray::IIOArray(&Size);
    v14 = *(v13 + 1);
    for (i = *(v13 + 2); v14 != i; v14 += 34)
    {
      v16 = *(v14 + 20);
      v17 = *(v14 + 22);
      v29[0] = 0;
      v29[1] = 0;
      *&v30 = 0;
      IIODictionary::IIODictionary(v29);
      v18 = v16 / v17;
      if (v18 < 0.05)
      {
        v18 = 0.05;
      }

      IIONumber::IIONumber(v53, v18);
      IIODictionary::setObjectForKey(v29, v54, @"DelayTime");
      IIONumber::~IIONumber(v53);
      IIOArray::addObject(&Size, v29[1]);
      IIODictionary::~IIODictionary(v29);
    }

    IIODictionary::setObjectForKeyGroup(a3, v35[0], @"FrameInfo", @"{PNG}");
    IIOArray::~IIOArray(&Size);
    v19 = 1;
    if (BoolForKey)
    {
LABEL_32:
      v20 = MEMORY[0x1E695E4D0];
      if (v28 != -1)
      {
        v21 = MEMORY[0x1E695E4C0];
        if (v28)
        {
          v21 = MEMORY[0x1E695E4D0];
        }

        IIODictionary::setObjectForKeyGroup(a3, *v21, @"kCGImageSourcePropertyHasAlpha", @"{PNG}");
      }

      if (v8)
      {
        IIODictionary::setObjectForKeyGroup(a3, v8, @"kCGImageSourcePropertyColorModel", @"{PNG}");
      }

      v53[0] = 0;
      v53[1] = 0;
      v54 = 0;
      IIODictionary::IIODictionary(v53);
      memset(v52, 0, sizeof(v52));
      IIODictionary::IIODictionary(v52);
      v51 = 0;
      v50 = 0u;
      v49 = 0u;
      v48 = 0u;
      v47 = 0u;
      v46 = 0u;
      v45 = 0u;
      v44 = 0u;
      v43 = 0u;
      v42 = 0u;
      v41 = 0u;
      v40 = 0u;
      v39 = 0u;
      v38 = 0u;
      v37 = 0u;
      v36 = 0u;
      *v35 = 0u;
      IIODictionary::setObjectForKey(v53, *v20, @"kCGImageSourceSkipMetadata");
      Mutable = CGImageMetadataCreateMutable();
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      *v29 = 0u;
      BYTE14(v30) = v19;
      Size = IIOImageReadSession::getSize(a2);
      BYTE1(v45) = IIOImageReadSession::isFinal(a2);
      IIOImageReadSession::rewind(a2);
      PNGReadPlugin::InitializePluginData(a2, v53, v52, Mutable, &v51, &Size, v29, 0);
      if (v51)
      {
        v23 = CGColorSpaceCopyICCData(v51);
        if (v23)
        {
          IIODictionary::setObjectForKeyGroup(a3, v23, @"kCGImageSourceColorSpace", @"{PNG}");
          CFRelease(v23);
        }

        CFRelease(v51);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      IIODictionary::~IIODictionary(v52);
      IIODictionary::~IIODictionary(v53);
    }
  }

  else
  {
    v19 = 0;
    if (BoolForKey)
    {
      goto LABEL_32;
    }
  }

  return 0;
}

void sub_1860B24D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

uint64_t globalGIFInfoReleaseProc(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void *GIFReadPlugin::GIFReadPlugin(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  result = IIOReadPlugin::IIOReadPlugin(a1, a2, a3, a4, a5);
  *result = &unk_1EF4DCFF8;
  result[58] = 0;
  return result;
}

void GIFReadPlugin::~GIFReadPlugin(GIFReadPlugin *this)
{
  IIOReadPlugin::~IIOReadPlugin(this);

  JUMPOUT(0x186602850);
}

uint64_t GIFReadPlugin::loadDataFromXPCObject(GIFReadPlugin *this, void *a2)
{
  DataFromXPCObject = IIOReadPlugin::loadDataFromXPCObject(this, a2);
  if (!DataFromXPCObject)
  {
    length = 0;
    data = xpc_dictionary_get_data(a2, "iio_xpc_plugin_data_gif", &length);
    if (length == 8)
    {
      *(this + 58) = *data;
    }
  }

  return DataFromXPCObject;
}

uint64_t GIFReadPlugin::saveDataToXPCObject(GIFReadPlugin *this, void *a2)
{
  v4 = IIOReadPlugin::saveDataToXPCObject(this, a2);
  if (!v4)
  {
    iio_xpc_dictionary_add_databuffer(a2, "iio_xpc_plugin_data_gif", this + 464, 8uLL);
  }

  return v4;
}

size_t GIFReadPlugin::initialize(GIFReadPlugin *this, IIODictionary *a2)
{
  v50 = 0;
  v3 = *(this + 6);
  v4 = *(this + 7);
  *(this + 469) = IIODictionary::getBoolForKey(v3, @"IIO_SKIP_GIF_COMPOSING");
  IIOSkipMetadata(v3);
  IIOSkipXMP_and_IPTC(v3);
  v5 = *(this + 3);
  if (!v5)
  {
    goto LABEL_34;
  }

  _cg_DGifOpen(v5, gifRead, &v50);
  if (!v6)
  {
    goto LABEL_34;
  }

  v7 = v6;
  v8 = IIOImageReadSession::globalInfoForType(*(this + 3), 1195984416);
  if (!v8)
  {
    GIFReadPlugin::initialize();
LABEL_33:
    _cg_DGifCloseFile(v7, 0);
LABEL_34:
    Extension = 4294967246;
LABEL_35:
    kdebug_trace();
    return Extension;
  }

  v9 = v8;
  v10 = (this + 224);
  v11 = *(this + 56);
  if (v11 >= GlobalGIFInfo::frameCount(v8))
  {
    GIFReadPlugin::initialize(this + 56, v9);
    goto LABEL_33;
  }

  if (GlobalGIFInfo::frameCount(v9) >= 6)
  {
    *(this + 470) = 1;
  }

  *(this + 64) = 2097160;
  *(this + 85) = 1380401696;
  *(this + 372) = 0;
  *(this + 374) = 0;
  *(this + 61) = *v7;
  *(this + 62) = v7[1];
  v12 = GlobalGIFInfo::frameCount(v9);
  if (v12 >= 2)
  {
    v17 = *(this + 61);
    v18 = *(this + 62);
  }

  else
  {
    GlobalGIFInfo::getFrameInfoAtIndex(v9, 0, &v41);
    v13 = v42;
    v14 = HIWORD(v42);
    v15 = v43;
    v16 = v44;
    v17 = *(this + 61);
    if (!v17 && !*(this + 62) && !v42)
    {
      *(this + 61) = v43;
      *(this + 62) = v16;
      v17 = v15;
    }

    if (!v14 && !v13 && v17 > v15 && *(this + 62) > v16 || v17 > 0x800 || (v18 = *(this + 62), v18 >= 0x801))
    {
      *(this + 61) = v15;
      *(this + 62) = v16;
      v17 = v15;
      v18 = v16;
    }
  }

  if (4 * v12 * v18 * v17 >= 0x1E8481)
  {
    *(this + 371) = 0;
  }

  v19 = *(v9 + 22);
  if (v19)
  {
    if (*v19 == 2)
    {
      v20 = 2;
    }

    else
    {
      v20 = 1;
    }
  }

  else
  {
    v20 = 1;
  }

  if (v7[1] * *v7 > (1100 * v20 * IIOImageReadSession::getSize(*(this + 3))))
  {
    if (*(this + 369) == 1)
    {
      LogError("initialize", 397, "malformed GIF file (%d x %d) - [canvasSize: %ld  fileSize: %ld   ratio: %d]  \n");
    }

    goto LABEL_33;
  }

  GlobalGIFInfo::getFrameInfoAtIndex(v9, *v10, &v41);
  v21 = v43;
  v22 = v44;
  if (v44 * v43 > 1100 * v20 * v48)
  {
    if (*(this + 369) == 1)
    {
      LogError("initialize", 411, "malformed GIF frame#%ld (%d x %d) - [canvasSize: %ld  frameDataSize: %ld   adjustment: %d]\n", *v10);
    }

    goto LABEL_33;
  }

  v25 = v46;
  v39 = v47;
  v26 = v49;
  if (*(this + 469) == 1)
  {
    v27 = HIWORD(v42);
    v38 = v45;
    IIONumber::IIONumber(&v41, v42);
    IIODictionary::setObjectForKeyGroup(v4, &v41, @"xOffset", @"{GIF}");
    IIONumber::~IIONumber(&v41);
    IIONumber::IIONumber(&v41, v27);
    IIODictionary::setObjectForKeyGroup(v4, &v41, @"yOffset", @"{GIF}");
    IIONumber::~IIONumber(&v41);
    IIONumber::IIONumber(&v41, v21);
    IIODictionary::setObjectForKeyGroup(v4, &v41, @"width", @"{GIF}");
    IIONumber::~IIONumber(&v41);
    IIONumber::IIONumber(&v41, v22);
    IIODictionary::setObjectForKeyGroup(v4, &v41, @"height", @"{GIF}");
    IIONumber::~IIONumber(&v41);
    IIONumber::IIONumber(&v41, v38);
    IIODictionary::setObjectForKeyGroup(v4, &v41, @"disposeOp", @"{GIF}");
    IIONumber::~IIONumber(&v41);
  }

  *(this + 63) = (4 * *(this + 61) + 15) & 0xFFFFFFF0;
  if ((v26 & 2) != 0)
  {
    v28 = 3;
  }

  else
  {
    v28 = 5;
  }

  *(this + 262) = v28;
  if (v12 != 1 || (v26 & 2) != 0 || v22 >= v7[1])
  {
    *(this + 130) = 4;
    if (*(this + 56) && (v26 & 2) == 0)
    {
      GlobalGIFInfo::getFrameInfoAtIndex(v9, 0, &v41);
      if ((v49 & 2) != 0)
      {
        v28 = 3;
        *(this + 262) = 3;
      }

      else
      {
        v28 = *(this + 262) & 0x1F;
      }
    }
  }

  else
  {
    v28 = 3;
    *(this + 262) = 3;
    *(this + 130) = 4;
  }

  *(this + 263) = 0;
  v29 = *(this + 264);
  v30 = *(this + 265) != 0;
  *(this + 294) = v28;
  *(this + 295) = 0;
  *(this + 296) = v29 & 0xF;
  *(this + 297) = v30;
  *(this + 378) = 1;
  if (GlobalGIFInfo::colorSyncProfileOffset(v9))
  {
    v41 = 0;
    v40 = 0;
    v31 = *(this + 3);
    v32 = GlobalGIFInfo::colorSyncProfileOffset(v9);
    IIOImageReadSession::seek(v31, v32, 0);
    Extension = _cg_DGifGetExtension(v7, &v40, &v41);
    if (!Extension)
    {
      GIFReadPlugin::initialize();
      v33 = 0;
      goto LABEL_68;
    }

    v33 = malloc_type_malloc(0, 0x100004077774924uLL);
    if (!v33)
    {
      goto LABEL_68;
    }

    v34 = 0;
    while (v41)
    {
      if (v33)
      {
        v35 = reallocf(v33, *v41 + v34);
        v33 = v35;
        if (!v35)
        {
          GIFReadPlugin::initialize(&v41, v34);
          goto LABEL_68;
        }

        v36 = v41;
        memcpy(&v35[v34], v41 + 1, *v41);
        v34 += *v36;
      }

      Extension = _cg_DGifGetExtensionNext(v7, &v41);
      if (!Extension)
      {
        GIFReadPlugin::initialize();
        goto LABEL_68;
      }
    }

    v37 = CGColorSpaceCreateWithCopyOfData(v33 + 11, v34 - 11);
    if (v37)
    {
      goto LABEL_65;
    }
  }

  else
  {
    v33 = 0;
  }

  v37 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
LABEL_65:
  *(this + 20) = v37;
  *(this + 49) = 1;
  *(this + 116) = v39;
  if ((v26 & 8) != 0)
  {
    IIO_addDelayTimeToDictionary(v25, v4, @"{GIF}");
  }

  Extension = 0;
  *(this + 204) = 1;
LABEL_68:
  if (v33)
  {
    free(v33);
  }

  _cg_DGifCloseFile(v7, 0);
  if (Extension)
  {
    goto LABEL_35;
  }

  return Extension;
}