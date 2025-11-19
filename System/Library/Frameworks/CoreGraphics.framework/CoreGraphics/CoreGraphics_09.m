uint64_t ripc_BeginLayer(uint64_t a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4, uint64_t a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v16 = a1;
  if (a1)
  {
    v17 = *(a1 + 288);
  }

  else
  {
    v17 = 0;
  }

  space = 0;
  if (!a5 || *(v17 + 96) || *(v17 + 88))
  {
    v63 = 0u;
    v64 = 0u;
    v62 = 0u;
    if ((ripc_GetRenderingState(v17, a2, a3, &v62) & 1) == 0)
    {
      v63 = 0u;
      v64 = 0u;
      v62 = 0u;
      ripc_InitializeColorTransform(v17);
    }

    v18 = malloc_type_malloc(0x30uLL, 0x10600404FCFB723uLL);
    if (v18)
    {
      v24 = v18;
      *v18 = *(v17 + 88);
      *(v17 + 88) = v18;
      v18[4] = *(v17 + 48);
      v25 = *(v17 + 16);
      if (v25)
      {
        CFRetain(*(v17 + 16));
      }

      v24[1] = v25;
      *(v24 + 1) = *(v17 + 24);
      v24[5] = *(v17 + 72);
      *(v17 + 72) = 0;
      if (a4)
      {
        memset(&v60, 0, 32);
        if (kCGColorSpace_block_invoke_once != -1)
        {
          dispatch_once(&kCGColorSpace_block_invoke_once, &__block_literal_global_75_23302);
        }

        CGCFDictionaryGetCFTypeRef(a4, @"kCGContextColorSpace", CGColorSpaceGetTypeID_type_id, &space);
        if (CGCFDictionaryGetRect(a4, @"kCGContextBoundingBox", &v60))
        {
          v67.origin.x = v60.a;
          v67.origin.y = v60.b;
          v67.size.width = v60.c;
          v67.size.height = v60.d;
          v65.origin.x = a6;
          v65.origin.y = a7;
          v65.size.width = a8;
          v65.size.height = a9;
          *(&v22 - 24) = CGRectIntersection(v65, v67);
          a6 = v26;
          a7 = v27;
          a8 = v28;
          a9 = v22.f64[0];
        }
      }

      if (a6 != -8.98846567e307 || a7 != -8.98846567e307 || a8 != 1.79769313e308 || a9 != 1.79769313e308)
      {
        v22.f64[0] = *(v17 + 40);
        v23.f64[0] = 1.0;
        v29 = vdupq_lane_s64(vceqq_f64(v22, v23).i64[0], 0);
        v30 = vbslq_s8(v29, *(a3 + 56), vmulq_n_f64(*(a3 + 56), v22.f64[0]));
        v31 = vbslq_s8(v29, *(a3 + 40), vmulq_n_f64(*(a3 + 40), v22.f64[0]));
        *&v60.a = vbslq_s8(v29, *(a3 + 24), vmulq_n_f64(*(a3 + 24), v22.f64[0]));
        *&v60.c = v31;
        *&v60.tx = v30;
        v32 = a6;
        *v31.i64 = a7;
        *v30.i64 = a8;
        v33 = a9;
        v66 = CGRectApplyAffineTransform(*(&v30 - 1), &v60);
        v34 = v66.size.width + v66.origin.x;
        if (v66.origin.x <= 1073741820.0)
        {
          if (v66.origin.x >= -1073741820.0)
          {
            v35 = vcvtmd_s64_f64(v66.origin.x + 0.0);
          }

          else
          {
            v35 = -1073741823;
          }
        }

        else
        {
          v35 = 0x3FFFFFFF;
        }

        LODWORD(v60.a) = v35;
        if (v34 <= 1073741820.0)
        {
          if (v34 >= -1073741820.0)
          {
            v36 = vcvtpd_s64_f64(v34);
          }

          else
          {
            v36 = -1073741823;
          }
        }

        else
        {
          v36 = 0x3FFFFFFF;
        }

        v37 = v36 - v35;
        LODWORD(v60.b) = v36 - v35;
        v38 = v66.size.height + v66.origin.y;
        if (v66.origin.y <= 1073741820.0)
        {
          if (v66.origin.y >= -1073741820.0)
          {
            v39 = vcvtmd_s64_f64(v66.origin.y + 0.0);
          }

          else
          {
            v39 = -1073741823;
          }
        }

        else
        {
          v39 = 0x3FFFFFFF;
        }

        HIDWORD(v60.a) = v39;
        if (v38 <= 1073741820.0)
        {
          if (v38 >= -1073741820.0)
          {
            v40 = vcvtpd_s64_f64(v38);
          }

          else
          {
            v40 = -1073741823;
          }
        }

        else
        {
          v40 = 0x3FFFFFFF;
        }

        v41 = v40 - v39;
        HIDWORD(v60.b) = v40 - v39;
        if (*(&v64 + 1))
        {
          v59 = 0uLL;
          if ((*(**(&v64 + 1) + 40))(*(&v64 + 1), &v59))
          {
            v42.i64[0] = __PAIR64__(v39, v35);
            v42.i64[1] = __PAIR64__(v41, v37);
            *&v60.a = vaddq_s32(v42, v59);
          }
        }

        if ((CGSBoundsIntersection(&v63 + 2, &v60, &v63 + 2) & 1) == 0)
        {
          *&v64 = 0;
        }
      }

      v43 = *(v17 + 200);
      v44 = *(v17 + 120);
      if (v43 == v44)
      {
        v47 = *(v17 + 16);
        if (v47 != v43)
        {
          if (v47)
          {
            CFRelease(v47);
            v44 = *(v17 + 120);
          }

          if (v44)
          {
            CFRetain(v44);
          }

          *(v17 + 16) = v44;
        }

        v48 = *(v17 + 48);
        if (v48)
        {
          v46 = *(v48 + 32);
        }

        else
        {
          v46 = 0;
        }
      }

      else
      {
        v45 = *(v17 + 48);
        if (v45)
        {
          v46 = *(v45 + 32);
        }

        else
        {
          v46 = 0;
        }

        if (space && CGColorTransformConvertNeedsCMS(*(v17 + 120), space, 0))
        {
          Model = CGColorSpaceGetModel(space);
          v53 = *(v17 + 16);
          if (v53)
          {
            CFRelease(v53);
          }

          *(v17 + 16) = 0;
          if (Model <= kCGColorSpaceModelCMYK)
          {
            v54 = RIPLayerDepthForModel(Model, *v46, v49, v50, v51, v19, v20, v21);
            if (v54)
            {
              v55 = v54;
              v56 = color_transform_create(space, 0);
              if (v56)
              {
                *(v17 + 16) = v56;
                v46 = v55;
              }
            }
          }
        }
      }

      if (a2)
      {
        v57 = *(a2 + 4);
      }

      else
      {
        v57 = 3;
      }

      *(v17 + 48) = RIPLayerCreate(RIPLayer_ripl_class, &v63 + 8, 49, v46, v57, v19, v20, v21);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    *(v17 + 96) = a5;
  }

  return v16;
}

void CGContextBeginTransparencyLayerWithRect(CGContextRef c, CGRect rect, CFDictionaryRef auxInfo)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      height = rect.size.height;
      width = rect.size.width;
      y = rect.origin.y;
      x = rect.origin.x;
      v15 = *(c + 5);
      if (!v15 || (v16 = *(v15 + 192)) == 0 || (v17 = v16(rect.origin, *&rect.origin.y, rect.size, *&rect.size.height)) == 0)
      {
        DeviceClipBoundingBox = CGContextGetDeviceClipBoundingBox(c, auxInfo, v3, v4, v5, v6, v7, v8);
        v22 = v21;
        v23 = v18;
        v24 = v19;
        v25 = *(c + 12);
        v26 = *(*(v25 + 120) + 16);
        if (v26)
        {
          v27 = *(c + 14);
          v28 = *(v27 + 40);
          *&color.a = *(v27 + 24);
          *&color.c = v28;
          *&color.tx = *(v27 + 56);
          DeviceClipBoundingBox = CGStyleGetDrawBoundingBoxWithMatrix(v26, &color, DeviceClipBoundingBox, v22, v18, v19);
          v22 = v29;
          v23 = v30;
          v24 = v31;
        }

        if (x != -8.98846567e307 || y != -8.98846567e307 || width != 1.79769313e308 || height != 1.79769313e308)
        {
          v32 = *(v25 + 40);
          *&color.a = *(v25 + 24);
          *&color.c = v32;
          *&color.tx = *(v25 + 56);
          v33 = x;
          *&v32 = y;
          v34 = width;
          v35 = height;
          v91 = CGRectApplyAffineTransform(*(&v32 - 8), &color);
          DrawBoundingBoxWithMatrix = v91.origin.x;
          v37 = v91.origin.y;
          v38 = v91.size.width;
          v39 = v91.size.height;
          if (v26)
          {
            v40 = *(c + 14);
            v41 = *(v40 + 40);
            *&color.a = *(v40 + 24);
            *&color.c = v41;
            *&color.tx = *(v40 + 56);
            DrawBoundingBoxWithMatrix = CGStyleGetDrawBoundingBoxWithMatrix(v26, &color, v91.origin.x, v37, v91.size.width, v91.size.height);
            v37 = v42;
            v38 = v43;
            v39 = v44;
          }

          v92.origin.x = DeviceClipBoundingBox;
          v92.origin.y = v22;
          v92.size.width = v23;
          v92.size.height = v24;
          v93 = CGRectIntersection(v92, *&DrawBoundingBoxWithMatrix);
          DeviceClipBoundingBox = v93.origin.x;
          v22 = v93.origin.y;
          v23 = v93.size.width;
          v24 = v93.size.height;
        }

        v94.origin.x = DeviceClipBoundingBox;
        v94.origin.y = v22;
        v94.size.width = v23;
        v94.size.height = v24;
        v95 = CGRectIntegral(v94);
        v51 = CGContextDelegateCreateForContext(auxInfo, c, v45, v46, v47, v48, v49, v50, v95.origin, *&v95.origin.y, v95.size, *&v95.size.height);
        if (v51)
        {
          v52 = v51;
          v53 = *(v51 + 192);
          if (v53)
          {
            v17 = v53(v51, *(c + 14), *(c + 12), auxInfo, *(c + 5), x, y, width, height);
          }

          else
          {
            v17 = 0;
          }

          if (v17 == v52)
          {
            v17 = v52;
          }

          else
          {
            CFRelease(v52);
          }
        }

        else
        {
          v17 = 0;
        }
      }

      v55 = *(c + 13);
      v56 = *(v55 + 8);
      if (v56 == v55)
      {
        v57 = CGGStateCreate();
        v58 = *(v55 + 8);
        *(v55 + 8) = v57;
        *v57 = v55;
        *v58 = v57;
        *(v57 + 1) = v58;
        v56 = *(v55 + 8);
      }

      v59 = malloc_type_calloc(1uLL, 0x98uLL, 0x10200404FA37D3AuLL);
      *v59 = v59;
      *(v59 + 1) = v59;
      *(v59 + 4) = 1;
      v60 = *(v56 + 24);
      v61 = *(v56 + 40);
      *(v59 + 56) = *(v56 + 56);
      *(v59 + 40) = v61;
      *(v59 + 24) = v60;
      v62 = *(v56 + 72);
      if (v62)
      {
        CFRetain(*(v56 + 72));
      }

      *(v59 + 9) = v62;
      CGGStateClipReset(v59);
      v63 = *(v56 + 120);
      v64 = malloc_type_calloc(1uLL, 0x50uLL, 0x1060040871B95B4uLL);
      *v64 = 1;
      v65 = *(v64 + 1) & 0xFFFF00FF | 0x200;
      *(v64 + 1) = v65;
      *(v64 + 1) = 0x3FF0000000000000;
      *(v64 + 2) = 0;
      *(v64 + 24) = *(v63 + 24);
      v66 = *(v63 + 4) & 0xF0000 | v65 & 0xFFF002FF;
      *(v64 + 1) = v66;
      v67 = v66 & 0xFF0FFFFF | *(v63 + 4) & 0xF00000;
      *(v64 + 1) = v67;
      v68 = v67 & 0xFFFFFE00 | *(v63 + 4);
      *(v64 + 1) = v68;
      *(v64 + 1) = v68 & 0xFCFFFFFF | *(v63 + 4) & 0x1000000;
      *(v64 + 5) = 0;
      *(v64 + 14) = *(v63 + 56);
      *(v64 + 8) = CGCFDictionaryCreateCopy(*(v63 + 64));
      *(v59 + 15) = v64;
      v59[20] &= ~2u;
      CGGStateStrokeCopy(v59, v56, v69, v70, v71, v72, v73, v74);
      CGGStateTextCopy(v59, v56, v75, v76, v77, v78, v79, v80);
      CGGStateDeviceCopy(v59, v56);
      v88 = *(v55 + 8);
      *(v55 + 8) = v59;
      *v59 = v55;
      *v88 = v59;
      *(v59 + 1) = v88;
      *(c + 12) = *(v55 + 8);
      if (v17)
      {
        *(c + 5) = v17;
      }

      else
      {
        CGPostError("CGContextBeginTransparencyLayer: cannot create transparency layer.", v81, v82, v83, v84, v85, v86, v87, SLOBYTE(color.a));
        CGGStateClipToRect(*(c + 12), 0.0, 0.0, 0.0, 0.0);
      }

      color.a = 0.0;
      if (kCGColorContentHeadroom_block_invoke_once != -1)
      {
        dispatch_once(&kCGColorContentHeadroom_block_invoke_once, &__block_literal_global_36_2440);
      }

      if (CGCFDictionaryGetCFTypeRef(auxInfo, @"kCGContextBackgroundColor", CGColorGetTypeID_color_type_id, &color))
      {
        CGContextSaveGState(c);
        CGContextSetBlendMode(c, kCGBlendModeCopy);
        CGContextSetFillColorWithColor(c, *&color.a);
        v96.origin.x = -8.98846567e307;
        v96.size.width = 1.79769313e308;
        v96.origin.y = -8.98846567e307;
        v96.size.height = 1.79769313e308;
        CGContextFillRect(c, v96);
        CGContextRestoreGState(c);
      }

      return;
    }

    v54 = c;
  }

  else
  {
    v54 = 0;
  }

  handle_invalid_context("CGContextBeginTransparencyLayerWithRect", v54, v3, v4, v5, v6, v7, v8);
}

uint64_t CGCFDictionaryGetCFTypeRef(CFDictionaryRef theDict, const void *a2, uint64_t a3, uint64_t *a4)
{
  result = 0;
  if (theDict)
  {
    if (a2)
    {
      result = CFDictionaryGetValue(theDict, a2);
      if (result)
      {
        v8 = result;
        if (a3 && CFGetTypeID(result) != a3)
        {
          return 0;
        }

        else
        {
          if (a4)
          {
            *a4 = v8;
          }

          return 1;
        }
      }
    }
  }

  return result;
}

void CGContextEndTransparencyLayer(CGContextRef c)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      v10 = CGGStackRestore(*(c + 13), v1, v2, v3, v4, v5, v6, v7);
      *(c + 12) = v10;
      v16 = *(c + 5);
      if (v16 && (v17 = *(v16 + 200)) != 0 && (v18 = v17()) != 0)
      {
        v19 = v18;
        v20 = *(c + 5);
        if (v20 != v19)
        {
          if (v20)
          {
            CFRelease(v20);
          }

          *(c + 5) = v19;
        }
      }

      else
      {

        CGPostError("CGContextEndTransparencyLayer: unbalanced transparency layers.", v9, v10, v11, v12, v13, v14, v15, v23);
      }

      return;
    }

    v21 = c;
  }

  else
  {
    v21 = 0;
  }

  handle_invalid_context("CGContextEndTransparencyLayer", v21, v2, v3, v4, v5, v6, v7);
}

uint64_t ripc_EndLayer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v81 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = *(a1 + 288);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v6 + 88);
  if (v7)
  {
    Cache = CGColorTransformGetCache(*(v6 + 16));
    if (Cache)
    {
      v9 = Cache[2];
      if (v9)
      {
        CFRetain(Cache[2]);
      }
    }

    else
    {
      v9 = 0;
    }

    v77 = xmmword_184562D30;
    v78 = xmmword_184562D40;
    v79 = xmmword_184562D50;
    v80 = 0;
    v73 = xmmword_184562CF0;
    v74 = unk_184562D00;
    v75 = xmmword_184562D10;
    v76 = unk_184562D20;
    v69 = xmmword_184562CB0;
    v70 = unk_184562CC0;
    v71 = xmmword_184562CD0;
    v72 = unk_184562CE0;
    v65 = RIPImageDataInitializer;
    v66 = unk_184562C80;
    v67 = xmmword_184562C90;
    v68 = unk_184562CA0;
    v62 = 0;
    v60 = 0u;
    v61 = 0u;
    v59 = 0u;
    *(v6 + 88) = *v7;
    v23 = *(v6 + 48);
    *(v6 + 48) = v7[4];
    v24 = *(v6 + 16);
    if (v24)
    {
      CFRelease(v24);
    }

    *(v6 + 16) = v7[1];
    *(v6 + 24) = *(v7 + 1);
    ripc_ReleaseClipState((v6 + 72));
    *(v6 + 72) = v7[5];
    free(v7);
    memset(v58, 0, sizeof(v58));
    if (!ripc_GetRenderingState(v6, a2, a3, v58) || !v23)
    {
      if (!v23)
      {
        return v5;
      }

      goto LABEL_41;
    }

    if (!(*(*v23 + 32))(v23, 16, 0))
    {
LABEL_41:
      (*(*v23 + 24))(v23);
      return v5;
    }

    if (*(v23 + 20) >= 1 && *(v23 + 24) >= 1 && *(v23 + 56))
    {
      if ((CGColorTransformConvertNeedsCMS(*(v6 + 120), v9, 0) & 1) == 0)
      {
        v35 = 0;
        v36 = *(v23 + 32);
        *&v67 = v36;
        DWORD2(v68) = *(v23 + 20);
        DWORD2(v67) = DWORD2(v68);
        HIDWORD(v68) = *(v23 + 24);
        *&v68 = 0;
        HIDWORD(v67) = HIDWORD(v68);
        LODWORD(v69) = *(v23 + 48);
        *(&v69 + 1) = *(v23 + 56);
        *(&v70 + 1) = *(v23 + 72);
        LODWORD(v70) = *(v23 + 64);
        v71 = 0uLL;
        goto LABEL_36;
      }

      v55 = 0;
      v25 = *(v23 + 24);
      v56 = *(v23 + 20);
      v57 = v25;
      v26 = *(v23 + 48);
      v27 = *(v23 + 72);
      v64[0] = *(v23 + 56);
      v64[1] = v27;
      v28 = *(v23 + 64);
      v63[0] = v26;
      v63[1] = v28;
      v29 = CGSImageDataLockPixels(v56, v25, v64, v63, *(v23 + 32), v9, v56, v25, &v55, 0, *(v6 + 120), *(v6 + 216), *(*(v6 + 48) + 32));
      if (v29)
      {
        v35 = v29;
        RIPImageDataInitialize(&v65, v6, v29, v30, v31, v32, v33, v34);
        v36 = v67;
LABEL_36:
        CGColorSpaceRelease(v9);
        if (v36 == RIPGetDepthForLayerFormat(0, v37, v38, v39, v40, v41, v42, v43))
        {
          *&v67 = 0;
        }

        v59 = *(v23 + 12);
        v62 = 0;
        *&v61 = 0;
        v60 = &v65;
        DWORD2(v61) = 0;
        ripc_RenderImage(v6, a2, a3, v58, &v59, &v59, v44, v45);
        if (v35)
        {
          CGSImageDataUnlock(v35);
        }
      }
    }

    (*(*v23 + 48))(v23, 0);
    goto LABEL_41;
  }

  v5 = *(v6 + 96);
  if (v5)
  {
    *(v6 + 96) = 0;
    v54 = 0uLL;
    v10 = *(v6 + 48);
    if (v10)
    {
      if ((*(*v10 + 72))(v10, &v54))
      {
        (*(**(v6 + 48) + 88))(*(v6 + 48), v6 + 40);
        v11.i64[0] = SDWORD2(v54);
        v11.i64[1] = SHIDWORD(v54);
        v12 = vcvtq_f64_s64(v11);
        v11.i64[0] = v54;
        v11.i64[1] = SDWORD1(v54);
        v13 = vcvtq_f64_s64(v11);
        v14 = *(v6 + 40);
        if (v14 != 1.0)
        {
          v15 = 1.0 / v14;
          v12 = vmulq_n_f64(v12, v15);
          v13 = vmulq_n_f64(v13, v15);
        }

        v16 = v13.f64[1];
        if (v13.f64[0] != INFINITY && v13.f64[1] != INFINITY && v12.f64[0] != 0.0)
        {
          v18 = v12.f64[1];
          if (v12.f64[1] != 0.0)
          {
            v52 = v13;
            v53 = v12;
            v19 = *(v5 + 80);
            v20 = *(v6 + 48);
            v21 = CGColorTransformGetCache(*(v6 + 16));
            v22 = v21 ? v21[2] : 0;
            Image = RIPLayerCreateImage(v20, v22, v19 != ripc_DrawImage);
            if (Image)
            {
              v48 = Image;
              v49 = *(a3 + 40);
              v65 = *(a3 + 24);
              v66 = v49;
              v67 = *(a3 + 56);
              *(a3 + 24) = CGAffineTransformIdentity;
              v50 = *(v5 + 80);
              if (v50)
              {
                v50(v5, a2, a3, Image, v52, v16, v53, v18);
              }

              v51 = v66;
              *(a3 + 24) = v65;
              *(a3 + 40) = v51;
              *(a3 + 56) = v67;
              CFRelease(v48);
            }
          }
        }
      }
    }
  }

  return v5;
}

void CGGStateAddClip(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (!*(a2 + 8))
    {
      x = *(a2 + 24);
      y = *(a2 + 32);
      width = *(a2 + 40);
      height = *(a2 + 48);
      if ((*(a2 + 10) & 1) == 0)
      {
        v10 = CGRectIntegral(*(a2 + 24));
        x = v10.origin.x;
        y = v10.origin.y;
        width = v10.size.width;
        height = v10.size.height;
      }

      *(a1 + 80) = CGRectIntersection(*(a1 + 80), *&x);
    }

    maybeCopyClipState(a1);
    v8 = *(a1 + 112);

    CGClipStackAddClip(v8, a2);
  }
}

CGLayerRef CGLayerCreateWithContext(CGContextRef context, CGSize size, CFDictionaryRef auxiliaryInfo)
{
  v9 = 0;
  if (size.width > 0.0)
  {
    height = size.height;
    if (size.height > 0.0)
    {
      width = size.width;
      if (_block_invoke_once_2327 != -1)
      {
        dispatch_once(&_block_invoke_once_2327, &__block_literal_global_5_2328);
      }

      Instance = CGTypeCreateInstance(CGLayerGetTypeID_layer_type_id, 24, v3, v4, v5, v6, v7, v8);
      v9 = Instance;
      if (Instance)
      {
        v23.n128_f64[0] = ceil(width);
        v24.n128_f64[0] = ceil(height);
        *(Instance + 24) = v23.n128_u64[0];
        *(Instance + 32) = v24.n128_u64[0];
        v21.n128_u64[0] = 0;
        v22.n128_u64[0] = 0;
        v25 = CGContextDelegateCreateForContext(auxiliaryInfo, context, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
        if (v25)
        {
          v28 = v25;
          if (context)
          {
            v29 = *(context + 14);
          }

          else
          {
            v29 = 0;
          }

          *(v9 + 2) = CGContextCreateWithDelegateAndInfo(v25, 14, v29, 0, 0, 0, v26, v27);
          CFRelease(v28);
          v30 = *(v9 + 2);
          if (v30)
          {
            if (context)
            {
              *(*(v30 + 112) + 24) = CGAffineTransformIdentity;
            }

            return v9;
          }

          CFRelease(v9);
        }

        return 0;
      }
    }
  }

  return v9;
}

uint64_t CGContextDelegateCreateForContext(CFDictionaryRef theDict, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10, __n128 a11, __n128 a12)
{
  v13 = a12.n128_f64[0];
  v14 = a11.n128_f64[0];
  v15 = a10.n128_f64[0];
  v16 = a9.n128_f64[0];
  if (!a2)
  {
    goto LABEL_10;
  }

  if (*(a2 + 16) != 1129601108)
  {
    handle_invalid_context("CGContextDelegateCreateForContext", a2, a3, a4, a5, a6, a7, a8);
    return 0;
  }

  v18 = *(a2 + 40);
  if (!v18)
  {
    goto LABEL_10;
  }

  v19 = v18[26];
  if (v19)
  {
    v20 = v19(a9, a10, a11, a12);
    if (v20)
    {
      return v20;
    }

    v18 = *(a2 + 40);
    if (!v18)
    {
      goto LABEL_10;
    }
  }

  if (v18[16])
  {
    goto LABEL_10;
  }

  if (!theDict)
  {
    goto LABEL_30;
  }

  space = CFDictionaryGetValue(theDict, @"kCGContextColorSpace");
  if (space)
  {
LABEL_28:
    CFRetain(space);
    goto LABEL_35;
  }

  v18 = *(a2 + 40);
  if (v18)
  {
LABEL_30:
    v40 = v18[4];
    if (v40)
    {
      v41 = v40();
      if (v41)
      {
        Cache = CGColorTransformGetCache(v41);
        if (Cache)
        {
          space = Cache[2];
          if (space)
          {
            goto LABEL_28;
          }
        }
      }
    }
  }

  space = CGColorSpaceCreateDeviceRGB();
LABEL_35:
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"kCGContextBackgroundColor");
  }

  else
  {
    Value = 0;
  }

  if (*(a2 + 24) == 4)
  {
    if (*(a2 + 16) == 1129601108)
    {
      v44 = *(*(a2 + 32) + 41) & 1;
LABEL_41:
      v45 = *(*(a2 + 32) + 80) < 9uLL;
      goto LABEL_47;
    }

    handle_invalid_context("CGBitmapContextGetBitmapInfo", a2, v34, v35, v36, v37, v38, v39);
    if (*(a2 + 16) == 1129601108 && *(a2 + 24) == 4)
    {
      v44 = 0;
      goto LABEL_41;
    }

    handle_invalid_context("CGBitmapContextGetBitsPerComponent", a2, v34, v35, v36, v37, v38, v39);
  }

  v44 = 0;
  v45 = 1;
LABEL_47:
  if (Value)
  {
    if ((Value & 0x8000000000000000) != 0)
    {
      Alpha = CGTaggedColorGetAlpha(Value, v33, v34, v35, v36, v37, v38, v39);
    }

    else
    {
      Alpha = *(Value + 8 * *(Value + 56) + 64);
    }

    v47 = Alpha < 1.0;
  }

  else
  {
    v47 = 1;
  }

  Model = CGColorSpaceGetModel(space);
  switch(Model)
  {
    case kCGColorSpaceModelCMYK:
      v58 = 16;
      if (v45)
      {
        v58 = 8;
      }

      if (v44)
      {
        v51 = 32;
      }

      else
      {
        v51 = v58;
      }

      if ((v44 | v45))
      {
        v52 = 0x2000;
      }

      else
      {
        v52 = 4096;
      }

      v53 = 4;
LABEL_95:
      v59 = v53 * v51;
      v66.origin.x = v16;
      v66.origin.y = v15;
      v66.size.width = v14;
      v66.size.height = v13;
      v67 = CGRectIntegral(v66);
      v60 = *(a2 + 112);
      v61 = *(v60 + 8);
      v62 = *(v60 + 16);
      if (v47)
      {
        v63 = v51;
      }

      else
      {
        v63 = 0;
      }

      v64 = CGBitmapContextInfoCreate(0, v67.origin.x, v67.origin.y, v67.size.width, v67.size.height, v51, v59, 0, v61, v62, space, v52, v63, 0, 0);
      CGColorSpaceRelease(space);
      if (v64)
      {
        v21 = bitmap_context_delegate_create(v64, theDict);
        CGBitmapContextInfoRelease(v64);
        if (v21)
        {
          return v21;
        }
      }

      goto LABEL_10;
    case kCGColorSpaceModelRGB:
      if (v47)
      {
        v54 = 4097;
      }

      else
      {
        v54 = 4101;
      }

      v55 = 16;
      if (v47)
      {
        v56 = 8194;
      }

      else
      {
        v56 = 8198;
      }

      if (v45)
      {
        v55 = 8;
      }

      else
      {
        v56 = v54;
      }

      if (v47)
      {
        v57 = 8193;
      }

      else
      {
        v57 = 8197;
      }

      v53 = 4;
      if (v44)
      {
        v51 = 32;
      }

      else
      {
        v51 = v55;
      }

      if (!v44)
      {
        v53 = 4;
      }

      LOBYTE(v47) = 0;
      if (v44)
      {
        v52 = v57;
      }

      else
      {
        v52 = v56;
      }

      goto LABEL_95;
    case kCGColorSpaceModelMonochrome:
      v49 = 16;
      if (v45)
      {
        v49 = 8;
        v50 = 0;
      }

      else
      {
        v50 = 4096;
      }

      if (v44)
      {
        v51 = 32;
      }

      else
      {
        v51 = v49;
      }

      if (v44)
      {
        v52 = 0x2000;
      }

      else
      {
        v52 = v50;
      }

      v53 = 1;
      goto LABEL_95;
  }

  CGColorSpaceRelease(space);
LABEL_10:
  if (theDict)
  {
    MutableCopy = CGCFDictionaryCreateMutableCopy(theDict);
    if (!CFDictionaryGetValue(MutableCopy, @"kCGContextGroup") && !CFDictionaryGetValue(MutableCopy, @"kCGContextColorSpace") && MutableCopy && *MEMORY[0x1E695E4D0])
    {
      CFDictionarySetValue(MutableCopy, @"kCGContextGroup", *MEMORY[0x1E695E4D0]);
    }

    CFDictionaryRemoveValue(MutableCopy, @"kCGContextBoundingBox");
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    MutableCopy = Mutable;
    v23 = *MEMORY[0x1E695E4D0];
    if (Mutable)
    {
      v30 = v23 == 0;
    }

    else
    {
      v30 = 1;
    }

    if (!v30)
    {
      CFDictionarySetValue(Mutable, @"kCGContextGroup", v23);
    }
  }

  *v65 = v16;
  *&v65[1] = v15;
  *&v65[2] = v14;
  *&v65[3] = v13;
  if (CG::DisplayList::createCGDisplayList(MutableCopy, v65, v23, v24, v25, v26, v27, v28))
  {
    CG::DisplayList::createContextDelegate();
  }

  v21 = 0;
  CFRelease(MutableCopy);
  return v21;
}

uint64_t dlRecorder_DrawPathDirect(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const CGPath *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && (v9 = *(a1 + 288)) != 0)
  {

    return CG::DisplayListRecorder::DrawPath(v9, a2, a3, a4, a5, 1, a6);
  }

  else
  {
    CGPostError("%s: CGContextDelegateGetInfo() returned NULL", a2, a3, a4, a5, a6, a7, a8, "dlRecorder_DrawPathDirect");
    return 1000;
  }
}

uint64_t CGSoftMaskCreate(uint64_t a1, __int128 *a2, const void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12)
{
  if (!a5 || a4 && (a4[6] != 1 || a4[4] != 1))
  {
    return 0;
  }

  if (_block_invoke_once_17414 != -1)
  {
    dispatch_once(&_block_invoke_once_17414, &__block_literal_global_5_17415);
  }

  Instance = CGTypeCreateInstance(CGSoftMaskGetTypeID_soft_mask_type_id, 144, a3, a4, a5, a6, a7, a8);
  v22 = Instance;
  if (Instance)
  {
    *(Instance + 16) = atomic_fetch_add_explicit(&identifier_17416, 1u, memory_order_relaxed) + 1;
    v23 = *a2;
    v24 = a2[1];
    *(Instance + 56) = a2[2];
    *(Instance + 40) = v24;
    *(Instance + 24) = v23;
    *(Instance + 72) = a9;
    *(Instance + 80) = a10;
    *(Instance + 88) = a11;
    *(Instance + 96) = a12;
    if (a3)
    {
      CFRetain(a3);
    }

    *(v22 + 104) = a3;
    if (a4)
    {
      CFRetain(a4);
    }

    *(v22 + 112) = a4;
    *(v22 + 120) = a1;
    v25 = *(a5 + 16);
    *(v22 + 128) = *a5;
    *(v22 + 144) = v25;
    *(v22 + 152) = 0;
  }

  return v22;
}

void CGGStateSetSoftMask(uint64_t a1, const void *a2)
{
  if (*(*(a1 + 120) + 40) != a2)
  {
    maybeCopyRenderingState(a1);
    v4 = *(*(a1 + 120) + 40);
    if (v4)
    {
      CFRelease(v4);
    }

    if (a2)
    {
      CFRetain(a2);
    }

    *(*(a1 + 120) + 40) = a2;
  }
}

void CGContextSetSoftMask(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (*(a1 + 16) == 1129601108)
    {
      CGGStateSetSoftMask(*(a1 + 96), a2);
      return;
    }

    v8 = a1;
  }

  else
  {
    v8 = 0;
  }

  handle_invalid_context("CGContextSetSoftMask", v8, a3, a4, a5, a6, a7, a8);
}

void sub_183F08678(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CGColorTransformConvertColorFloatComponents(void *a1, void *a2, unsigned int a3, uint64_t a4, float *a5, uint64_t a6)
{
  if (a2)
  {
    v10 = *(a2[3] + 48);
  }

  else
  {
    v10 = 0;
  }

  Cache = CGColorTransformGetCache(a1);
  if (Cache)
  {
    v12 = Cache[2];
    if (v12)
    {
      v12 = *(*(v12 + 24) + 48);
    }
  }

  else
  {
    v12 = 0;
  }

  if (a6)
  {
    v13 = 0;
    v14 = 0x100004000313F17;
    v30 = 4 * v10;
    v15 = 4 * v12;
    do
    {
      if (a2)
      {
        v16 = *(a2[3] + 48);
        v17 = malloc_type_malloc(8 * v16, v14);
        v18 = v17;
        if (v16)
        {
          for (i = 0; i != v16; ++i)
          {
            v17[i] = *(a4 + 4 * i);
          }
        }
      }

      else
      {
        v18 = malloc_type_malloc(0, v14);
      }

      v20 = CGColorTransformGetCache(a1);
      if (v20 && (v21 = v20[2]) != 0)
      {
        v22 = *(*(v21 + 24) + 48);
      }

      else
      {
        v22 = 0;
      }

      v23 = v14;
      v24 = malloc_type_malloc(8 * v22, v14);
      CGColorTransformConvertColorComponents(a1, a2, a3, v18, v24);
      v25 = v24;
      for (j = a5; v22; --v22)
      {
        v27 = *v25++;
        v28 = v27;
        *j++ = v28;
      }

      free(v24);
      free(v18);
      ++v13;
      a4 += v30;
      a5 = (a5 + v15);
      v14 = v23;
    }

    while (v13 != a6);
  }

  return 1;
}

CGFloat CGGStateResetClip(uint64_t a1)
{
  CGClipStackRelease(*(a1 + 112));
  v2 = malloc_type_malloc(0x98uLL, 0x10A2040CE17A557uLL);
  *v2 = 1;
  *(v2 + 1) = 0;
  *(v2 + 2) = 0;
  result = CGRectInfinite.origin.x;
  *(v2 + 48) = CGRectInfinite;
  *(v2 + 80) = CGRectInfinite;
  *(v2 + 16) = CGRectInfinite;
  *(v2 + 15) = 0;
  *(v2 + 16) = 0;
  *(v2 + 14) = 3;
  *(a1 + 112) = v2;
  *(a1 + 80) = CGRectInfinite;
  *(a1 + 20) &= ~1u;
  return result;
}

void CGSoftMaskDelegateDrawSoftMask(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4)
  {
    if (*(a4 + 136))
    {
      v9 = CGContextCreateWithDelegateAndInfo(a1, 12, a2, a3, 0, 0, a7, a8);
      if (v9)
      {
        v10 = v9;
        (*(a4 + 136))(*(a4 + 120), v9);

        CFRelease(v10);
      }
    }
  }
}

uint64_t dlRecorder_DrawLayer(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12)
{
  if (!a1 || (v12 = *(a1 + 288)) == 0)
  {
    CGPostError("%s: CGContextDelegateGetInfo() returned NULL", a2, a3, a4, a5, a6, a7, a8, "dlRecorder_DrawLayer");
    return 1000;
  }

  v18 = CG::DisplayListRecorder::currentDisplayList(v12);
  if (!v18)
  {
    return 1000;
  }

  v19 = v18;
  v20 = v18[7];
  v22 = v18[5] == -8.98846567e307 && v18[6] == -8.98846567e307 && v20 == 1.79769313e308;
  if ((!v22 || v18[8] != 1.79769313e308) && *(v18 + 86) != *(v18 + 87) && v18[11] != INFINITY && v18[12] != INFINITY)
  {
    v24 = v18[8];
    v37 = v18[5];
    v38 = v18[6];
    Copy = CGGStateCreateCopy(a3);
    v26 = Copy;
    v27 = *(Copy + 24);
    v28 = *(Copy + 40);
    v29 = vmlaq_n_f64(vmlaq_n_f64(*(Copy + 56), v27, a9), v28, a10);
    v30 = vmulq_n_f64(v27, a11 / v20);
    v31 = vmulq_n_f64(v28, a12 / v24);
    *(Copy + 24) = v30;
    *(Copy + 40) = v31;
    *(Copy + 56) = vmlsq_lane_f64(vmlsq_lane_f64(v29, v30, v37, 0), v31, v38, 0);
    v32 = &CGRectNull;
    p_y = &CGRectNull.origin.y;
    p_size = (v19 + 104);
    p_height = (v19 + 112);
    if (*(v19 + 688) == *(v19 + 696))
    {
      p_size = &CGRectNull.size;
    }

    else
    {
      p_y = (v19 + 96);
    }

    if (*(v19 + 688) == *(v19 + 696))
    {
      p_height = &CGRectNull.size.height;
    }

    else
    {
      v32 = (v19 + 88);
    }

    CGGStateClipToRect(Copy, v32->origin.x, *p_y, p_size->width, *p_height);
    CGDisplayListDelegateDrawDisplayList(a4, a2, v26, v19);
    CGGStateRelease(v26);
  }

  return 0;
}

void CGContextDrawLayerAtPoint(CGContextRef context, CGPoint point, CGLayerRef layer)
{
  if (!context)
  {
    v12 = 0;
LABEL_9:
    handle_invalid_context("CGContextDrawLayerAtPoint", v12, v3, v4, v5, v6, v7, v8);
    return;
  }

  if (*(context + 4) != 1129601108)
  {
    v12 = context;
    goto LABEL_9;
  }

  if (layer)
  {
    v9 = *(layer + 2);
    if (v9)
    {
      v10 = *(v9 + 40);
      if (v10)
      {
        v11 = *(v10 + 216);
        if (v11)
        {
          v11(point, *&point.y, *(layer + 3), *(layer + 4));
        }
      }
    }
  }
}

uint64_t CGSCombineMask(char *a1, int a2, char *__b, int a4, int a5, int a6, unsigned int a7)
{
  v9 = a2;
  v10 = a1;
  v11 = HIBYTE(a7);
  if (a5 == 1)
  {
    v12 = BYTE1(a7) + v11;
    v13 = 255;
    if (v12 <= 0xFE)
    {
      v14 = 255 - v12;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14 == 255;
  }

  else
  {
    if (a5 < 2)
    {
      return 0;
    }

    v13 = BYTE1(a7) ^ 0xFF;
    if (BYTE1(a7))
    {
      v16 = -2;
    }

    else
    {
      v16 = -1;
    }

    if (v11)
    {
      v14 = v11 ^ 0xFF;
    }

    else
    {
      v14 = 255;
    }

    if (v11)
    {
      v17 = a5;
    }

    else
    {
      v17 = a5 + 1;
    }

    v15 = v17 + v16;
  }

  if (a6 == 1)
  {
    v18 = BYTE2(a7) + a7;
    v19 = 255;
    if (v18 <= 0xFE)
    {
      v20 = 255 - v18;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20 == 255;
    if (a1)
    {
      goto LABEL_22;
    }

LABEL_50:
    if (v20 <= 0xFE)
    {
      v42 = __b;
      if (v14 <= 0xFE)
      {
        *__b = (v20 * v14 + ((v20 * v14) >> 8) + 1) >> 8;
        v42 = __b + 1;
      }

      if (v15 < 4)
      {
        v43 = v15;
      }

      else
      {
        memset(v42, v20, (v15 & 0xFFFFFFFC) - 4 + 4);
        v43 = v15 & 3;
        v42 += v15 & 0xFFFFFFFC;
      }

      if (v43)
      {
        memset(v42, v20, v43);
        v42 += v43;
      }

      if (v13 <= 0xFE)
      {
        *v42 = (v20 * v13 + ((v20 * v13) >> 8) + 1) >> 8;
      }

      __b += a4;
    }

    if (!v21)
    {
      goto LABEL_92;
    }

    v62 = __b;
    if (v14 <= 0xFE)
    {
      if (v13 < 0xFF)
      {
        v63 = v21 + 1;
        v64 = __b;
        do
        {
          *v64 = v14;
          v64[v15 + 1] = v13;
          v64 += a4;
          --v63;
        }

        while (v63 > 1);
LABEL_91:
        __b += v21 * a4;
LABEL_92:
        if (v19 > 0xFE)
        {
          return 1;
        }

        if (v14 <= 0xFE)
        {
          *__b++ = (v19 * v14 + ((v19 * v14) >> 8) + 1) >> 8;
        }

        if (v15 >= 4)
        {
          v69 = v15 - 7;
          if (v15 < 7)
          {
            v69 = 0;
          }

          v70 = (v69 + 3) & 0x7FFFFFFC;
          memset(__b, v19, (v70 + 4));
          v15 = v15 - v70 - 4;
          __b += (v70 + 4);
        }

        if (v15 >= 1)
        {
          memset(__b, v19, v15);
          __b += v15;
        }

        if (v13 > 0xFE)
        {
          return 1;
        }

        v61 = v19 * v13;
        goto LABEL_103;
      }

      v65 = v21 + 1;
      v66 = __b;
      do
      {
        *v66 = v14;
        v66 += a4;
        --v65;
      }

      while (v65 > 1);
      v62 = __b + 1;
    }

    if (v13 <= 0xFE)
    {
      v67 = &v62[v15];
      v68 = v21 + 1;
      do
      {
        *v67 = v13;
        v67 += a4;
        --v68;
      }

      while (v68 > 1);
    }

    goto LABEL_91;
  }

  if (a6 < 2)
  {
    return 0;
  }

  v20 = BYTE2(a7) ^ 0xFF;
  v19 = a7 ^ 0xFF;
  if (a7)
  {
    v40 = -2;
  }

  else
  {
    v40 = -1;
  }

  v41 = v40 + a6;
  if (BYTE2(a7))
  {
    v21 = v41;
  }

  else
  {
    v21 = v41 + 1;
  }

  if (!a1)
  {
    goto LABEL_50;
  }

LABEL_22:
  if (a1 != __b || a2 != a4)
  {
    CGBlt_copyBytes(a5, a6, a1, __b, a2, a4);
    v9 = a4;
    v10 = __b;
  }

  if (v20 <= 0xFE)
  {
    v22 = v10;
    v23 = __b;
    if (v14 <= 0xFE)
    {
      v22 = v10 + 1;
      v24 = ((v20 * v14 + ((v20 * v14) >> 8) + 1) >> 8) * *v10;
      *__b = (v24 + (v24 >> 8) + 1) >> 8;
      v23 = __b + 1;
    }

    v25 = v15;
    if (v15 >= 4)
    {
      do
      {
        v25 -= 4;
        v26 = (v20 * v22[1] + ((v20 * v22[1]) >> 8) + 1) >> 8;
        *v23 = (v20 * *v22 + ((v20 * *v22) >> 8) + 1) >> 8;
        v23[1] = v26;
        v27 = v22[2];
        v28 = v22[3];
        v22 += 4;
        v23[2] = (v20 * v27 + ((v20 * v27) >> 8) + 1) >> 8;
        v23[3] = (v20 * v28 + ((v20 * v28) >> 8) + 1) >> 8;
        v23 += 4;
      }

      while (v25 > 3);
    }

    if (v25)
    {
      v29 = v25 + 1;
      do
      {
        v30 = *v22++;
        *v23++ = (v20 * v30 + ((v20 * v30) >> 8) + 1) >> 8;
        --v29;
      }

      while (v29 > 1);
    }

    if (v13 <= 0xFE)
    {
      v31 = (v20 * v13 + ((v20 * v13) >> 8) + 1) >> 8;
      *v23 = (v31 * *v22 + ((v31 * *v22) >> 8) + 1) >> 8;
    }

    __b += a4;
    v10 += v9;
  }

  if (v21 < 1)
  {
    goto LABEL_63;
  }

  v32 = v10;
  v33 = __b;
  if (v14 > 0xFE)
  {
    goto LABEL_59;
  }

  if (v13 >= 0xFF)
  {
    v45 = v21 + 1;
    v46 = v10;
    v47 = __b;
    do
    {
      v48 = *v46;
      v46 += v9;
      *v47 = (v14 * v48 + ((v14 * v48) >> 8) + 1) >> 8;
      v47 += a4;
      --v45;
    }

    while (v45 > 1);
    v32 = v10 + 1;
    v33 = __b + 1;
LABEL_59:
    if (v13 <= 0xFE)
    {
      v49 = &v32[v15];
      v50 = v21 + 1;
      v51 = &v33[v15];
      do
      {
        v52 = *v49;
        v49 += v9;
        *v51 = (v13 * v52 + ((v13 * v52) >> 8) + 1) >> 8;
        v51 += a4;
        --v50;
      }

      while (v50 > 1);
    }

    goto LABEL_62;
  }

  v34 = v15 + 1;
  v35 = v21 + 1;
  v36 = v10;
  v37 = __b;
  do
  {
    v38 = *v36;
    v39 = v36[v34];
    v36 += v9;
    *v37 = (v14 * v38 + ((v14 * v38) >> 8) + 1) >> 8;
    v37[v34] = (v13 * v39 + ((v13 * v39) >> 8) + 1) >> 8;
    v37 += a4;
    --v35;
  }

  while (v35 > 1);
LABEL_62:
  v10 += v9 * v21;
  __b += v21 * a4;
LABEL_63:
  if (v19 > 0xFE)
  {
    return 1;
  }

  if (v14 <= 0xFE)
  {
    v53 = *v10++;
    v54 = ((v19 * v14 + ((v19 * v14) >> 8) + 1) >> 8) * v53;
    *__b++ = (v54 + (v54 >> 8) + 1) >> 8;
  }

  if (v15 >= 4)
  {
    do
    {
      v55 = v15;
      v15 -= 4;
      v56 = (v19 * v10[1] + ((v19 * v10[1]) >> 8) + 1) >> 8;
      *__b = (v19 * *v10 + ((v19 * *v10) >> 8) + 1) >> 8;
      __b[1] = v56;
      v57 = v10[2];
      v58 = v10[3];
      v10 += 4;
      __b[2] = (v19 * v57 + ((v19 * v57) >> 8) + 1) >> 8;
      __b[3] = (v19 * v58 + ((v19 * v58) >> 8) + 1) >> 8;
      __b += 4;
    }

    while (v55 > 7);
  }

  if (v15 >= 1)
  {
    v59 = v15 + 1;
    do
    {
      v60 = *v10++;
      *__b++ = (v19 * v60 + ((v19 * v60) >> 8) + 1) >> 8;
      --v59;
    }

    while (v59 > 1);
  }

  if (v13 > 0xFE)
  {
    return 1;
  }

  v61 = ((v19 * v13 + ((v19 * v13) >> 8) + 1) >> 8) * *v10;
LABEL_103:
  *__b = (v61 + (v61 >> 8) + 1) >> 8;
  return 1;
}

BOOL ripl_IsContained(_DWORD *a1, _DWORD *a2)
{
  result = 0;
  if (*a1 > *a2)
  {
    v2 = a1[1];
    v3 = a2[1];
    if (v2 > v3 && a1[2] + *a1 < a2[2] + *a2 && a1[3] + v2 < a2[3] + v3)
    {
      return 1;
    }
  }

  return result;
}

uint64_t W8_image(uint64_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  memset(v48, 0, 512);
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

  if (_blt_image_initialize(a2, a3, &v31, v48) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v18 = 34083076;
  v19 = *a3;
  *(&v31 + 1) = __PAIR64__(*v6, *a3);
  if (v19 == 34083076)
  {
    if (!v42 && (~DWORD1(v32) & 0xC3) == 0)
    {
      v17.n128_u32[0] = *(a3 + 8);
      if (v17.n128_f32[0] >= 1.0 && !*(a3 + 24))
      {
        if ((BYTE4(v32) & 4) != 0)
        {
          v17.n128_u64[0] = *(a3 + 32);
          *(a2 + 8) = v17.n128_u64[0];
        }

        W8_mark(a1, v17);
        return 1;
      }
    }

    *&v31 = W8_sample_W8;
    if (*(a2 + 12))
    {
      goto LABEL_51;
    }

    v20 = 2;
    v21 = 16;
    goto LABEL_37;
  }

  v20 = SAMPLEINDEX(v19, v10, v11, v12, v13, v14, v15, v16);
  if (!v20)
  {
    return 0xFFFFFFFFLL;
  }

  if (v20 > 0xB)
  {
    goto LABEL_29;
  }

  if (v20 > 6)
  {
    switch(v20)
    {
      case 7:
        v22 = 0;
        v21 = 32;
        break;
      case 9:
        v22 = 0;
        v21 = 40;
        break;
      case 8:
        v22 = 0;
        v21 = 8;
        goto LABEL_30;
      default:
        goto LABEL_29;
    }

    goto LABEL_30;
  }

  if (v20 == 2)
  {
    if (!*(a2 + 12))
    {
      v22 = 0;
      v21 = 16;
      goto LABEL_30;
    }

LABEL_29:
    v21 = 255;
    v22 = 1;
    goto LABEL_30;
  }

  if (v20 != 5)
  {
    if (v20 == 6)
    {
      v22 = 0;
      v21 = 0;
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v22 = 0;
  v21 = 24;
LABEL_30:
  *&v31 = *&W8_image_sample[2 * v20 + 2];
  if (v31)
  {
    goto LABEL_36;
  }

  if ((HIWORD(*a3) & 0x3Fu) <= 0x10)
  {
    *&v31 = *&W16_image_sample[2 * v20 + 2];
    if (v31)
    {
      v18 = 68161828;
      goto LABEL_36;
    }
  }

  *&v31 = *&WF_image_sample[2 * v20 + 2];
  if (!v31)
  {
    return 0xFFFFFFFFLL;
  }

  LODWORD(v32) = 8;
  v18 = 136319269;
LABEL_36:
  DWORD2(v31) = v18;
  if (v22)
  {
    goto LABEL_51;
  }

LABEL_37:
  if ((v8 - 1) > 1 || (BYTE4(v32) & 7) != 3 || a2[2] != 5 && a2[2] || v20 > 0xB)
  {
    goto LABEL_51;
  }

  HIDWORD(v24) = v21;
  LODWORD(v24) = v21;
  v23 = v24 >> 3;
  if (v23 > 2)
  {
    if (v23 == 3)
    {
      DWORD2(v31) = *a3;
      v25 = W8_image_mark_RGB24;
      goto LABEL_66;
    }

    if (v23 == 4)
    {
      DWORD2(v31) = *a3;
      v25 = W8_image_mark_rgb32;
      goto LABEL_66;
    }

    if (v23 != 5)
    {
      goto LABEL_51;
    }

    DWORD2(v31) = *a3;
    v26 = W8_image_mark_rgb32;
LABEL_64:
    v27 = v26;
    v28 = a2;
    v29 = v8;
    v30 = 8;
LABEL_67:
    W8_image_mark_image(v28, &v31, v29, v30, v27);
    return 1;
  }

  switch(v23)
  {
    case 0:
      DWORD2(v31) = *a3;
      v25 = W8_image_mark_RGB32;
      goto LABEL_66;
    case 1:
      DWORD2(v31) = *a3;
      v26 = W8_image_mark_RGB32;
      goto LABEL_64;
    case 2:
      DWORD2(v31) = *a3;
      v25 = W8_image_mark_W8;
LABEL_66:
      v27 = v25;
      v28 = a2;
      v29 = v8;
      v30 = 0;
      goto LABEL_67;
  }

LABEL_51:
  W8_image_mark(a2, &v31, v8, v17);
  return 1;
}

unint64_t W8_mark_pixelmask(unint64_t result, int a2)
{
  v2 = *(result + 48);
  v3 = *(result + 136);
  v5 = *(result + 12);
  v4 = *(result + 16);
  if (v2)
  {
    v6 = *(result + 32);
    v7 = (v2 + v6 * v4 + v5);
    v8 = -1;
    if (!v3)
    {
      return result;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v8 = 0;
    if (!v3)
    {
      return result;
    }
  }

  v10 = *(result + 4);
  v9 = *(result + 8);
  v11 = *(result + 28);
  v12 = *(result + 88);
  v13 = *(result + 96);
  v14 = (*(result + 40) + v4 * v11 + v5);
  v15 = *(result + 124);
  v16 = (v3 + *(result + 108) * v15 + *(result + 104));
  v17 = *(result + 56);
  v18 = *(result + 60);
  v589 = *(result + 76);
  if ((*result & 0xFF00) != 0x100)
  {
    v20 = *(result + 64);
    v21 = *(result + 68);
    if (v13)
    {
      v557 = *(result + 80);
      v19 = 1;
    }

    else
    {
      v557 = 0;
      v19 = 0;
    }

    v26 = v12 + v21 * v589;
    v8 &= 1u;
    v25 = 1;
    result = *(result + 88);
    v22 = v12;
    goto LABEL_19;
  }

  if (v13)
  {
    v557 = *(result + 80);
    v13 += v557 * v18 + v17;
    v19 = -1;
  }

  else
  {
    v557 = 0;
    v19 = 0;
  }

  v22 = (v12 + v18 * v589 + v17);
  if (v589 == v11 && v14 - v22 >= 1)
  {
    if (v14 - v22 <= v10)
    {
      v14 += v10 - 1;
      v22 += v10 - 1;
      v16 += v10 - 1;
      v7 += v8 & (v10 - 1);
      v13 += v19 & (v10 - 1);
      v25 = -1;
      goto LABEL_16;
    }

    v23 = v9 - 1;
    v24 = &v22[v589 * v23];
    if (v14 <= &v24[v10 - 1])
    {
      v14 += v11 * v23;
      v11 = -v11;
      v589 = -v589;
      v16 += v15 * v23;
      v15 = -v15;
      v7 += v6 * v23;
      v6 = -v6;
      v8 &= 1u;
      v13 += v557 * v23;
      v557 = -v557;
      v19 &= 1u;
      v25 = 1;
      v22 = v24;
      goto LABEL_16;
    }
  }

  v8 &= 1u;
  v19 &= 1u;
  v25 = 1;
LABEL_16:
  v26 = 0;
  result = 0;
  v12 = -1;
  v21 = v557;
  v20 = v589;
LABEL_19:
  v27 = v25 * v10;
  v558 = v10;
  if (v26)
  {
    v28 = v18 % v21;
    v29 = &v22[v589 * v28];
    result = v17 % v20;
    v22 = &v29[result];
    v30 = v20;
    v12 = &v29[v20];
    v31 = &v13[v557 * v28 + result];
    if (v19)
    {
      v13 = v31;
    }

    v590 = &v29[result];
  }

  else
  {
    v589 -= v27;
    v590 = result;
    v557 -= v19 * v10;
    v30 = v20;
  }

  v556 = v15 - v27;
  v554 = v6 - v8 * v558;
  v555 = v11 - v27;
  v32 = v25;
  v33 = v21;
  v553 = v26;
  v591 = v8;
  v592 = v19;
  switch(a2)
  {
    case 0:
      if (v8)
      {
        do
        {
          v34 = v558;
          do
          {
            v35 = *v16;
            if (*v16)
            {
              if (v35 == 255)
              {
                LOBYTE(v36) = 0;
                *v14 = 0;
              }

              else
              {
                v37 = *v14;
                v38 = *v7;
                v39 = (v37 | (v38 << 16)) * v35 + 65537 + ((((v37 | (v38 << 16)) * v35) >> 8) & 0xFF00FF);
                v40 = v37 | (v38 << 24);
                *v14 = v40 - BYTE1(v39);
                v36 = (v40 - (v39 & 0xFF000000 | BYTE1(v39))) >> 24;
              }

              *v7 = v36;
            }

            v16 += v32;
            v14 += v32;
            v7 += v8;
            --v34;
          }

          while (v34);
          v16 += v556;
          v14 += v555;
          v7 += v554;
          --v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v41 = v558;
          do
          {
            v42 = *v16;
            if (*v16)
            {
              if (v42 == 255)
              {
                LOBYTE(v43) = 0;
              }

              else
              {
                v43 = *v14 - ((*v14 * v42 + ((*v14 * v42) >> 8) + 1) >> 8);
              }

              *v14 = v43;
            }

            v16 += v25;
            v14 += v25;
            --v41;
          }

          while (v41);
          v16 += v556;
          v14 += v555;
          --v9;
        }

        while (v9);
      }

      return result;
    case 1:
      if (v8)
      {
        if (v19)
        {
          v233 = -v30;
          v234 = -(v589 * v21);
          v235 = -(v557 * v21);
          v236 = v13;
          do
          {
            v237 = v558;
            do
            {
              v238 = *v16;
              if (*v16)
              {
                if (v238 == 255)
                {
                  *v14 = *v22;
                  LOBYTE(v239) = *v236;
                }

                else
                {
                  v240 = (*v22 | (*v236 << 16)) * v238 + (*v14 | (*v7 << 16)) * (v238 ^ 0xFF);
                  v241 = v240 + 65537 + ((v240 >> 8) & 0xFF00FF);
                  *v14 = BYTE1(v241);
                  v239 = HIBYTE(v241);
                }

                *v7 = v239;
              }

              v16 += v25;
              v14 += v25;
              v7 += v8;
              v242 = &v236[v19];
              if (&v22[v25] >= v12)
              {
                result = v233;
              }

              else
              {
                result = 0;
              }

              v236 = &v242[result];
              v22 += v25 + result;
              --v237;
            }

            while (v237);
            if (v26)
            {
              result = v589;
              if (&v590[v589] >= v26)
              {
                v243 = v235;
              }

              else
              {
                v243 = 0;
              }

              v13 += v557 + v243;
              if (&v590[v589] >= v26)
              {
                v244 = v234;
              }

              else
              {
                v244 = 0;
              }

              v22 = &v590[v589 + v244];
              v12 += v589 + v244;
              v236 = v13;
              v590 = v22;
            }

            else
            {
              v22 += v589;
              v236 += v557;
            }

            v16 += v556;
            v14 += v555;
            v7 += v554;
            --v9;
          }

          while (v9);
        }

        else
        {
          v496 = -v30;
          v497 = -(v589 * v21);
          do
          {
            v498 = v558;
            do
            {
              v499 = *v16;
              if (*v16)
              {
                if (v499 == 255)
                {
                  *v14 = *v22;
                  LOBYTE(v500) = -1;
                }

                else
                {
                  v501 = (*v22 | 0xFF0000) * v499 + (*v14 | (*v7 << 16)) * (v499 ^ 0xFF);
                  v502 = v501 + 65537 + ((v501 >> 8) & 0xFF00FF);
                  *v14 = BYTE1(v502);
                  v500 = HIBYTE(v502);
                }

                *v7 = v500;
              }

              v16 += v32;
              v14 += v32;
              v7 += v8;
              if (&v22[v32] >= v12)
              {
                v503 = v496;
              }

              else
              {
                v503 = 0;
              }

              v22 += v32 + v503;
              --v498;
            }

            while (v498);
            v16 += v556;
            v14 += v555;
            v7 += v554;
            v504 = v590;
            if (&v590[v589] >= v26)
            {
              v505 = v497;
            }

            else
            {
              v505 = 0;
            }

            v506 = &v590[v589 + v505];
            v507 = v12 + v589 + v505;
            if (v26)
            {
              v12 = v507;
              v504 = v506;
            }

            v590 = v504;
            if (v26)
            {
              v22 = v506;
            }

            else
            {
              v22 += v589;
            }

            --v9;
          }

          while (v9);
        }
      }

      else
      {
        v476 = -v30;
        do
        {
          v477 = v558;
          do
          {
            v478 = *v16;
            if (*v16)
            {
              if (v478 == 255)
              {
                LOBYTE(v479) = *v22;
              }

              else
              {
                v479 = (*v22 * v478 + *v14 * (v478 ^ 0xFF) + ((*v22 * v478 + *v14 * (v478 ^ 0xFFu)) >> 8) + 1) >> 8;
              }

              *v14 = v479;
            }

            v16 += v25;
            v14 += v25;
            if (&v22[v25] >= v12)
            {
              v480 = v476;
            }

            else
            {
              v480 = 0;
            }

            v22 += v25 + v480;
            --v477;
          }

          while (v477);
          v16 += v556;
          v14 += v555;
          v481 = v590;
          if (&v590[v589] >= v26)
          {
            v482 = -(v589 * v21);
          }

          else
          {
            v482 = 0;
          }

          v483 = &v590[v589 + v482];
          v484 = v12 + v589 + v482;
          if (v26)
          {
            v12 = v484;
            v481 = v483;
          }

          v590 = v481;
          if (v26)
          {
            v22 = v483;
          }

          else
          {
            v22 += v589;
          }

          --v9;
        }

        while (v9);
      }

      return result;
    case 2:
      if (v8)
      {
        v172 = -v30;
        v173 = -(v589 * v21);
        v174 = -(v557 * v21);
        v175 = v13;
        while (1)
        {
          v176 = v558;
          do
          {
            v177 = *v16;
            if (!*v16)
            {
              goto LABEL_277;
            }

            if (v177 != 255)
            {
              v180 = *v22;
              v181 = *v175;
              v182 = (v180 | (v181 << 16)) * (v177 ^ 0xFF) + 65537 + ((((v180 | (v181 << 16)) * (v177 ^ 0xFFu)) >> 8) & 0xFF00FF);
              v183 = (v180 | (v181 << 24)) - (v182 & 0xFF000000 | BYTE1(v182));
              if (!HIBYTE(v183))
              {
                goto LABEL_277;
              }

              v184 = (*v14 | (*v7 << 16)) * (~v183 >> 24);
              v185 = ((v184 + 65537 + ((v184 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v184 + 1 + BYTE1(v184)) >> 8)) + (v183 & 0xFF0000FF);
              goto LABEL_275;
            }

            v178 = *v175;
            if (!*v175)
            {
              goto LABEL_277;
            }

            if (v178 != 255)
            {
              v186 = (*v14 | (*v7 << 16)) * (v178 ^ 0xFF);
              v185 = ((v186 + 65537 + ((v186 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v186 + 1 + BYTE1(v186)) >> 8)) + (*v22 | (v178 << 24));
LABEL_275:
              *v14 = v185;
              v179 = HIBYTE(v185);
              goto LABEL_276;
            }

            *v14 = *v22;
            LOBYTE(v179) = -1;
LABEL_276:
            *v7 = v179;
LABEL_277:
            v16 += v25;
            v14 += v25;
            v7 += v8;
            v187 = &v175[v19];
            if (&v22[v25] >= v12)
            {
              result = v172;
            }

            else
            {
              result = 0;
            }

            v175 = &v187[result];
            v22 += v25 + result;
            --v176;
          }

          while (v176);
          if (v26)
          {
            result = v589;
            if (&v590[v589] >= v26)
            {
              v188 = v174;
            }

            else
            {
              v188 = 0;
            }

            v13 += v557 + v188;
            if (&v590[v589] >= v26)
            {
              v189 = v173;
            }

            else
            {
              v189 = 0;
            }

            v22 = &v590[v589 + v189];
            v12 += v589 + v189;
            v175 = v13;
            v590 = v22;
          }

          else
          {
            v22 += v589;
            v175 += v557;
          }

          v16 += v556;
          v14 += v555;
          v7 += v554;
          if (!--v9)
          {
            return result;
          }
        }
      }

      v449 = -v30;
      v450 = -(v589 * v21);
      v451 = -(v557 * v21);
      v452 = v13;
      break;
    case 3:
      v204 = -v30;
      v205 = -(v589 * v21);
      v206 = -(v557 * v21);
      v207 = v13;
      do
      {
        v208 = v558;
        do
        {
          v209 = *v16;
          if (*v16)
          {
            if (v209 == 255)
            {
              if (v19)
              {
                v210 = *v207;
              }

              else
              {
                v210 = 255;
              }

              v214 = *v22;
              v212 = (v214 | (v210 << 16)) * (*v7 ^ 0xFF);
              v213 = (v214 | (v210 << 24)) - ((v212 + 65537 + ((v212 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v212 + 1 + BYTE1(v212)) >> 8));
              HIBYTE(v214) = HIBYTE(v213);
            }

            else
            {
              if (v19)
              {
                v211 = *v207 << 16;
              }

              else
              {
                v211 = 16711680;
              }

              v215 = (v211 | *v22) * ((*v7 * v209 + ((*v7 * v209) >> 8) + 1) >> 8) + (*v14 | (*v7 << 16)) * (v209 ^ 0xFF);
              v214 = v215 + 65537 + ((v215 >> 8) & 0xFF00FF);
              v213 = v214 >> 8;
            }

            *v14 = v213;
            *v7 = HIBYTE(v214);
          }

          v16 += v25;
          v14 += v25;
          v7 += v8;
          v216 = &v207[v19];
          if (&v22[v25] >= v12)
          {
            result = v204;
          }

          else
          {
            result = 0;
          }

          v207 = &v216[result];
          v22 += v25 + result;
          --v208;
        }

        while (v208);
        if (v26)
        {
          result = v589;
          if (&v590[v589] >= v26)
          {
            v217 = v206;
          }

          else
          {
            v217 = 0;
          }

          v13 += v557 + v217;
          if (&v590[v589] >= v26)
          {
            v218 = v205;
          }

          else
          {
            v218 = 0;
          }

          v22 = &v590[v589 + v218];
          v12 += v589 + v218;
          v207 = v13;
          v590 = v22;
        }

        else
        {
          v22 += v589;
          v207 += v557;
        }

        v16 += v556;
        v14 += v555;
        v7 += v554;
        --v9;
      }

      while (v9);
      return result;
    case 4:
      v100 = -v30;
      v101 = -(v589 * v21);
      v102 = -(v557 * v21);
      v103 = v13;
      do
      {
        v104 = v558;
        do
        {
          v105 = *v16;
          if (*v16)
          {
            if (v105 == 255)
            {
              if (v19)
              {
                v106 = *v103;
              }

              else
              {
                v106 = 255;
              }

              v110 = *v22;
              v108 = (v110 | (v106 << 16)) * *v7;
              v109 = (v110 | (v106 << 24)) - ((v108 + 65537 + ((v108 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v108 + 1 + BYTE1(v108)) >> 8));
              HIBYTE(v110) = HIBYTE(v109);
            }

            else
            {
              if (v19)
              {
                v107 = *v103 << 16;
              }

              else
              {
                v107 = 16711680;
              }

              v111 = (v107 | *v22) * (((*v7 ^ 0xFF) * v105 + (((*v7 ^ 0xFFu) * v105) >> 8) + 1) >> 8) + (*v14 | (*v7 << 16)) * (v105 ^ 0xFF);
              v110 = v111 + 65537 + ((v111 >> 8) & 0xFF00FF);
              v109 = v110 >> 8;
            }

            *v14 = v109;
            *v7 = HIBYTE(v110);
          }

          v16 += v25;
          v14 += v25;
          v7 += v8;
          v112 = &v103[v19];
          if (&v22[v25] >= v12)
          {
            result = v100;
          }

          else
          {
            result = 0;
          }

          v103 = &v112[result];
          v22 += v25 + result;
          --v104;
        }

        while (v104);
        if (v26)
        {
          result = v589;
          if (&v590[v589] >= v26)
          {
            v113 = v102;
          }

          else
          {
            v113 = 0;
          }

          v13 += v557 + v113;
          if (&v590[v589] >= v26)
          {
            v114 = v101;
          }

          else
          {
            v114 = 0;
          }

          v22 = &v590[v589 + v114];
          v12 += v589 + v114;
          v103 = v13;
          v590 = v22;
        }

        else
        {
          v22 += v589;
          v103 += v557;
        }

        v16 += v556;
        v14 += v555;
        v7 += v554;
        --v9;
      }

      while (v9);
      return result;
    case 5:
      v273 = v8;
      v274 = -v30;
      v275 = -(v589 * v21);
      v276 = -(v557 * v21);
      v277 = v13;
      do
      {
        v278 = v558;
        do
        {
          if (*v16)
          {
            v279 = *v22;
            v280 = *v277;
            v281 = (v279 | (v280 << 16)) * (*v16 ^ 0xFF) + 65537 + ((((v279 | (v280 << 16)) * (*v16 ^ 0xFFu)) >> 8) & 0xFF00FF);
            v282 = (v279 | (v280 << 24)) - (v281 & 0xFF000000 | BYTE1(v281));
            v283 = (HIBYTE(v282) ^ 0xFF) * (*v14 | (*v7 << 16)) + (v282 | (HIBYTE(v282) << 16)) * *v7;
            v284 = v283 + 65537 + ((v283 >> 8) & 0xFF00FF);
            *v14 = BYTE1(v284);
            *v7 = HIBYTE(v284);
          }

          v16 += v25;
          v14 += v25;
          v7 += v273;
          v285 = &v277[v19];
          if (&v22[v25] >= v12)
          {
            result = v274;
          }

          else
          {
            result = 0;
          }

          v277 = &v285[result];
          v22 += v25 + result;
          --v278;
        }

        while (v278);
        if (v26)
        {
          result = v589;
          if (&v590[v589] >= v26)
          {
            v286 = v276;
          }

          else
          {
            v286 = 0;
          }

          v13 += v557 + v286;
          if (&v590[v589] >= v26)
          {
            v287 = v275;
          }

          else
          {
            v287 = 0;
          }

          v22 = &v590[v589 + v287];
          v12 += v589 + v287;
          v277 = v13;
          v590 = v22;
        }

        else
        {
          v22 += v589;
          v277 += v557;
        }

        v16 += v556;
        v14 += v555;
        v7 += v554;
        --v9;
      }

      while (v9);
      return result;
    case 6:
      v316 = v8;
      v317 = -v30;
      v318 = v13;
      do
      {
        v319 = v558;
        do
        {
          v320 = *v16;
          if (*v16)
          {
            v321 = *v7;
            if (v321 != 0xFF)
            {
              if (~v321 == 255)
              {
                if (v19)
                {
                  v322 = *v318;
                }

                else
                {
                  v322 = 255;
                }

                v324 = *v22;
                v325 = (v324 | (v322 << 16)) * (v320 ^ 0xFF) + 65537 + ((((v324 | (v322 << 16)) * (v320 ^ 0xFFu)) >> 8) & 0xFF00FF);
                v326 = (v324 | (v322 << 24)) - (v325 & 0xFF000000 | BYTE1(v325));
              }

              else
              {
                if (v19)
                {
                  v323 = *v318 << 16;
                }

                else
                {
                  v323 = 16711680;
                }

                v327 = (v323 | *v22) * ((~v321 * v320 + ((~v321 * v320) >> 8) + 1) >> 8);
                v326 = ((v327 + 65537 + ((v327 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v327 + 1 + BYTE1(v327)) >> 8)) + (*v14 | (v321 << 24));
              }

              *v14 = v326;
              *v7 = HIBYTE(v326);
            }
          }

          v16 += v25;
          v14 += v25;
          v7 += v316;
          result = &v22[v25];
          v328 = &v318[v19];
          if (result >= v12)
          {
            v329 = v317;
          }

          else
          {
            v329 = 0;
          }

          v318 = &v328[v329];
          v22 = (result + v329);
          --v319;
        }

        while (v319);
        if (v26)
        {
          if (&v590[v589] >= v26)
          {
            result = -(v557 * v21);
          }

          else
          {
            result = 0;
          }

          v13 += v557 + result;
          if (&v590[v589] >= v26)
          {
            v330 = -(v589 * v21);
          }

          else
          {
            v330 = 0;
          }

          v22 = &v590[v589 + v330];
          v12 += v589 + v330;
          v318 = v13;
          v590 = v22;
        }

        else
        {
          v22 += v589;
          v318 += v557;
        }

        v16 += v556;
        v14 += v555;
        v7 += v554;
        --v9;
      }

      while (v9);
      return result;
    case 7:
      if (v8)
      {
        v219 = -v30;
        v220 = -(v589 * v21);
        v221 = -(v557 * v21);
        v222 = v13;
        do
        {
          v223 = v558;
          do
          {
            v224 = *v16;
            if (*v16)
            {
              if (v224 == 255)
              {
                v225 = *v14;
                v228 = *v7;
                v226 = (v225 | (v228 << 16)) * (*v222 ^ 0xFF);
                v227 = (v225 | (v228 << 24)) - ((v226 + 65537 + ((v226 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v226 + 1 + BYTE1(v226)) >> 8));
                HIBYTE(v228) = HIBYTE(v227);
              }

              else
              {
                v229 = ((v224 ^ 0xFF) + ((*v222 * v224 + ((*v222 * v224) >> 8) + 1) >> 8)) * (*v14 | (*v7 << 16));
                v228 = v229 + 65537 + ((v229 >> 8) & 0xFF00FF);
                v227 = v228 >> 8;
              }

              *v14 = v227;
              *v7 = HIBYTE(v228);
            }

            v16 += v25;
            v14 += v25;
            v7 += v8;
            v230 = &v222[v19];
            if (&v22[v25] >= v12)
            {
              result = v219;
            }

            else
            {
              result = 0;
            }

            v222 = &v230[result];
            v22 += v25 + result;
            --v223;
          }

          while (v223);
          if (v26)
          {
            result = v589;
            if (&v590[v589] >= v26)
            {
              v231 = v221;
            }

            else
            {
              v231 = 0;
            }

            v13 += v557 + v231;
            if (&v590[v589] >= v26)
            {
              v232 = v220;
            }

            else
            {
              v232 = 0;
            }

            v22 = &v590[v589 + v232];
            v12 += v589 + v232;
            v222 = v13;
            v590 = v22;
          }

          else
          {
            v22 += v589;
            v222 += v557;
          }

          v16 += v556;
          v14 += v555;
          v7 += v554;
          --v9;
        }

        while (v9);
      }

      else
      {
        v464 = -v30;
        v465 = -(v589 * v21);
        v466 = -(v557 * v21);
        v467 = v13;
        do
        {
          v468 = v558;
          do
          {
            v469 = *v16;
            if (*v16)
            {
              if (v469 == 255)
              {
                v470 = *v14 - (((*v467 ^ 0xFF) * *v14 + (((*v467 ^ 0xFF) * *v14) >> 8) + 1) >> 8);
              }

              else
              {
                v471 = *v467 * v469 + ((*v467 * v469) >> 8) + 1;
                v470 = (((v469 ^ 0xFF) + (v471 >> 8)) * *v14 + ((((v469 ^ 0xFF) + (v471 >> 8)) * *v14) >> 8) + 1) >> 8;
              }

              *v14 = v470;
            }

            v16 += v32;
            v14 += v32;
            v472 = &v467[v19];
            if (&v22[v32] >= v12)
            {
              v473 = v464;
            }

            else
            {
              v473 = 0;
            }

            v467 = &v472[v473];
            v22 += v32 + v473;
            --v468;
          }

          while (v468);
          if (v26)
          {
            if (&v590[v589] >= v26)
            {
              v474 = v466;
            }

            else
            {
              v474 = 0;
            }

            v13 += v557 + v474;
            if (&v590[v589] >= v26)
            {
              v475 = v465;
            }

            else
            {
              v475 = 0;
            }

            v22 = &v590[v589 + v475];
            v12 += v589 + v475;
            v467 = v13;
            v590 = v22;
          }

          else
          {
            v22 += v589;
            v467 += v557;
          }

          v16 += v556;
          v14 += v555;
          --v9;
        }

        while (v9);
      }

      return result;
    case 8:
      if (v8)
      {
        v360 = -v30;
        v361 = -(v589 * v21);
        v362 = -(v557 * v21);
        v363 = v13;
        do
        {
          v364 = v558;
          do
          {
            v365 = *v16;
            if (*v16)
            {
              v366 = *v14;
              v367 = *v7;
              if (v365 == 255)
              {
                v368 = (v366 | (v367 << 16)) * *v363;
              }

              else
              {
                v368 = ((*v363 * v365 + ((*v363 * v365) >> 8) + 1) >> 8) * (v366 | (v367 << 16));
              }

              v369 = (v366 | (v367 << 24)) - ((v368 + 65537 + ((v368 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v368 + 1 + BYTE1(v368)) >> 8));
              *v14 = v369;
              *v7 = HIBYTE(v369);
            }

            v16 += v25;
            v14 += v25;
            v7 += v8;
            v370 = &v363[v19];
            if (&v22[v25] >= v12)
            {
              result = v360;
            }

            else
            {
              result = 0;
            }

            v363 = &v370[result];
            v22 += v25 + result;
            --v364;
          }

          while (v364);
          if (v26)
          {
            result = v589;
            if (&v590[v589] >= v26)
            {
              v371 = v362;
            }

            else
            {
              v371 = 0;
            }

            v13 += v557 + v371;
            if (&v590[v589] >= v26)
            {
              v372 = v361;
            }

            else
            {
              v372 = 0;
            }

            v22 = &v590[v589 + v372];
            v12 += v589 + v372;
            v363 = v13;
            v590 = v22;
          }

          else
          {
            v22 += v589;
            v363 += v557;
          }

          v16 += v556;
          v14 += v555;
          v7 += v554;
          --v9;
        }

        while (v9);
      }

      else
      {
        v485 = -v30;
        v486 = -(v589 * v21);
        v487 = -(v557 * v21);
        v488 = v13;
        do
        {
          v489 = v558;
          do
          {
            v490 = *v16;
            if (*v16)
            {
              if (v490 == 255)
              {
                v491 = *v488;
              }

              else
              {
                v491 = (*v488 * v490 + ((*v488 * v490) >> 8) + 1) >> 8;
              }

              *v14 -= (v491 * *v14 + ((v491 * *v14) >> 8) + 1) >> 8;
            }

            v16 += v32;
            v14 += v32;
            v492 = &v488[v19];
            if (&v22[v32] >= v12)
            {
              v493 = v485;
            }

            else
            {
              v493 = 0;
            }

            v488 = &v492[v493];
            v22 += v32 + v493;
            --v489;
          }

          while (v489);
          if (v26)
          {
            if (&v590[v589] >= v26)
            {
              v494 = v487;
            }

            else
            {
              v494 = 0;
            }

            v13 += v557 + v494;
            if (&v590[v589] >= v26)
            {
              v495 = v486;
            }

            else
            {
              v495 = 0;
            }

            v22 = &v590[v589 + v495];
            v12 += v589 + v495;
            v488 = v13;
            v590 = v22;
          }

          else
          {
            v22 += v589;
            v488 += v557;
          }

          v16 += v556;
          v14 += v555;
          --v9;
        }

        while (v9);
      }

      return result;
    case 9:
      v129 = v8;
      v130 = -v30;
      v131 = v13;
      do
      {
        v132 = v558;
        do
        {
          v133 = *v16;
          if (*v16)
          {
            v134 = *v22;
            v135 = *v131;
            v136 = ~v133;
            v137 = (v134 | (v135 << 16)) * ~v133;
            v138 = (v134 | (v135 << 24)) - ((v137 + 65537 + ((v137 >> 8) & 0xFF00FF)) & 0xFF000000 | ((v137 + 1 + BYTE1(v137)) >> 8));
            v139 = (v138 | (HIBYTE(v138) << 16)) * (*v7 ^ 0xFF) + (*v14 | (*v7 << 16)) * (v136 + HIBYTE(v138));
            v140 = v139 + 65537 + ((v139 >> 8) & 0xFF00FF);
            *v14 = BYTE1(v140);
            *v7 = HIBYTE(v140);
          }

          v16 += v25;
          v14 += v25;
          v7 += v129;
          result = &v22[v25];
          v141 = &v131[v19];
          if (result >= v12)
          {
            v142 = v130;
          }

          else
          {
            v142 = 0;
          }

          v131 = &v141[v142];
          v22 = (result + v142);
          --v132;
        }

        while (v132);
        if (v26)
        {
          if (&v590[v589] >= v26)
          {
            result = -(v557 * v21);
          }

          else
          {
            result = 0;
          }

          v13 += v557 + result;
          if (&v590[v589] >= v26)
          {
            v143 = -(v589 * v21);
          }

          else
          {
            v143 = 0;
          }

          v22 = &v590[v589 + v143];
          v12 += v589 + v143;
          v131 = v13;
          v590 = v22;
        }

        else
        {
          v22 += v589;
          v131 += v557;
        }

        v16 += v556;
        v14 += v555;
        v7 += v554;
        --v9;
      }

      while (v9);
      return result;
    case 10:
      v345 = v8;
      v346 = -v30;
      v347 = -(v589 * v21);
      v348 = -(v557 * v21);
      v349 = v13;
      do
      {
        v350 = v558;
        do
        {
          if (*v16)
          {
            v351 = *v22;
            v352 = *v349;
            v353 = (v351 | (v352 << 16)) * (*v16 ^ 0xFF) + 65537 + ((((v351 | (v352 << 16)) * (*v16 ^ 0xFFu)) >> 8) & 0xFF00FF);
            v354 = (v351 | (v352 << 24)) - (v353 & 0xFF000000 | BYTE1(v353));
            v355 = (HIBYTE(v354) ^ 0xFF) * (*v14 | (*v7 << 16)) + (v354 | (HIBYTE(v354) << 16)) * (*v7 ^ 0xFF);
            v356 = v355 + 65537 + ((v355 >> 8) & 0xFF00FF);
            *v14 = BYTE1(v356);
            *v7 = HIBYTE(v356);
          }

          v16 += v25;
          v14 += v25;
          v7 += v345;
          v357 = &v349[v19];
          if (&v22[v25] >= v12)
          {
            result = v346;
          }

          else
          {
            result = 0;
          }

          v349 = &v357[result];
          v22 += v25 + result;
          --v350;
        }

        while (v350);
        if (v26)
        {
          result = v589;
          if (&v590[v589] >= v26)
          {
            v358 = v348;
          }

          else
          {
            v358 = 0;
          }

          v13 += v557 + v358;
          if (&v590[v589] >= v26)
          {
            v359 = v347;
          }

          else
          {
            v359 = 0;
          }

          v22 = &v590[v589 + v359];
          v12 += v589 + v359;
          v349 = v13;
          v590 = v22;
        }

        else
        {
          v22 += v589;
          v349 += v557;
        }

        v16 += v556;
        v14 += v555;
        v7 += v554;
        --v9;
      }

      while (v9);
      return result;
    case 11:
      if (v8)
      {
        v86 = -v30;
        v87 = -(v589 * v21);
        v88 = -(v557 * v21);
        v89 = v13;
        do
        {
          v90 = v558;
          do
          {
            if (*v16)
            {
              if (v19)
              {
                v91 = *v89;
              }

              else
              {
                v91 = 255;
              }

              v92 = *v22;
              v93 = (v92 | (v91 << 16)) * (*v16 ^ 0xFF) + 65537 + ((((v92 | (v91 << 16)) * (*v16 ^ 0xFFu)) >> 8) & 0xFF00FF);
              v94 = (v92 | (v91 << 24)) - (v93 & 0xFF000000 | BYTE1(v93));
              v95 = ((*v7 - *v14) | (*v7 << 16)) + (HIBYTE(v94) << 16) + (HIBYTE(v94) - v94);
              v96 = (255 * ((v95 >> 8) & 0x10001)) | v95;
              *v14 = BYTE2(v96) - v96;
              *v7 = BYTE2(v96);
            }

            v16 += v25;
            v14 += v25;
            v7 += v8;
            v97 = &v89[v19];
            if (&v22[v25] >= v12)
            {
              result = v86;
            }

            else
            {
              result = 0;
            }

            v89 = &v97[result];
            v22 += v25 + result;
            --v90;
          }

          while (v90);
          if (v26)
          {
            result = v589;
            if (&v590[v589] >= v26)
            {
              v98 = v88;
            }

            else
            {
              v98 = 0;
            }

            v13 += v557 + v98;
            if (&v590[v589] >= v26)
            {
              v99 = v87;
            }

            else
            {
              v99 = 0;
            }

            v22 = &v590[v589 + v99];
            v12 += v589 + v99;
            v89 = v13;
            v590 = v22;
          }

          else
          {
            v22 += v589;
            v89 += v557;
          }

          v16 += v556;
          v14 += v555;
          v7 += v554;
          --v9;
        }

        while (v9);
      }

      else
      {
        v428 = -v30;
        v429 = -(v589 * v21);
        v430 = -(v557 * v21);
        v431 = v13;
        do
        {
          v432 = v558;
          do
          {
            if (*v16)
            {
              if (v19)
              {
                v433 = *v431;
              }

              else
              {
                v433 = 255;
              }

              result = *v22;
              v434 = (result | (v433 << 16)) * (*v16 ^ 0xFF) + 65537 + ((((result | (v433 << 16)) * (*v16 ^ 0xFF)) >> 8) & 0xFF00FF);
              v435 = (*v14 ^ 0xFF) - (result - BYTE1(v434)) + (((result | (v433 << 24)) - (v434 & 0xFF000000 | BYTE1(v434))) >> 24);
              v436 = BYTE1(v435) | (2 * BYTE1(v435)) | (4 * (BYTE1(v435) | (2 * BYTE1(v435))));
              *v14 = ~(v435 | (16 * v436) | v436);
            }

            v16 += v32;
            v14 += v32;
            v437 = &v431[v19];
            if (&v22[v32] >= v12)
            {
              v438 = v428;
            }

            else
            {
              v438 = 0;
            }

            v431 = &v437[v438];
            v22 += v32 + v438;
            --v432;
          }

          while (v432);
          if (v26)
          {
            if (&v590[v589] >= v26)
            {
              v439 = v430;
            }

            else
            {
              v439 = 0;
            }

            v13 += v557 + v439;
            if (&v590[v589] >= v26)
            {
              v440 = v429;
            }

            else
            {
              v440 = 0;
            }

            v22 = &v590[v589 + v440];
            v12 += v589 + v440;
            v431 = v13;
            v590 = v22;
          }

          else
          {
            v22 += v589;
            v431 += v557;
          }

          v16 += v556;
          v14 += v555;
          --v9;
        }

        while (v9);
      }

      return result;
    case 12:
      if (v8)
      {
        v115 = -v30;
        v116 = -(v589 * v21);
        v117 = -(v557 * v21);
        v118 = v13;
        do
        {
          v119 = v558;
          do
          {
            if (*v16)
            {
              if (v19)
              {
                v120 = *v118;
              }

              else
              {
                v120 = 255;
              }

              v121 = *v22;
              v122 = (v121 | (v120 << 16)) * (*v16 ^ 0xFF) + 65537 + ((((v121 | (v120 << 16)) * (*v16 ^ 0xFFu)) >> 8) & 0xFF00FF);
              v123 = (v121 | (v120 << 24)) - (v122 & 0xFF000000 | BYTE1(v122));
              v124 = (*v14 | (*v7 << 16)) + v123 + (HIBYTE(v123) << 16);
              v125 = (255 * ((v124 >> 8) & 0x10001)) | v124;
              *v14 = v125;
              *v7 = BYTE2(v125);
            }

            v16 += v25;
            v14 += v25;
            v7 += v8;
            v126 = &v118[v19];
            if (&v22[v25] >= v12)
            {
              result = v115;
            }

            else
            {
              result = 0;
            }

            v118 = &v126[result];
            v22 += v25 + result;
            --v119;
          }

          while (v119);
          if (v26)
          {
            result = v589;
            if (&v590[v589] >= v26)
            {
              v127 = v117;
            }

            else
            {
              v127 = 0;
            }

            v13 += v557 + v127;
            if (&v590[v589] >= v26)
            {
              v128 = v116;
            }

            else
            {
              v128 = 0;
            }

            v22 = &v590[v589 + v128];
            v12 += v589 + v128;
            v118 = v13;
            v590 = v22;
          }

          else
          {
            v22 += v589;
            v118 += v557;
          }

          v16 += v556;
          v14 += v555;
          v7 += v554;
          --v9;
        }

        while (v9);
      }

      else
      {
        v441 = -v30;
        do
        {
          v442 = v558;
          do
          {
            if (*v16)
            {
              v443 = *v14 + (*v22 - ((*v22 * (*v16 ^ 0xFF) + ((*v22 * (*v16 ^ 0xFFu)) >> 8) + 1) >> 8));
              *v14 = -(v443 >> 8) | v443;
            }

            v16 += v25;
            v14 += v25;
            if (&v22[v25] >= v12)
            {
              v444 = v441;
            }

            else
            {
              v444 = 0;
            }

            v22 += v25 + v444;
            --v442;
          }

          while (v442);
          v16 += v556;
          v14 += v555;
          v445 = v590;
          if (&v590[v589] >= v26)
          {
            v446 = -(v589 * v21);
          }

          else
          {
            v446 = 0;
          }

          v447 = &v590[v589 + v446];
          v448 = v12 + v589 + v446;
          if (v26)
          {
            v12 = v448;
            v445 = v447;
          }

          v590 = v445;
          if (v26)
          {
            v22 = v447;
          }

          else
          {
            v22 += v589;
          }

          --v9;
        }

        while (v9);
      }

      return result;
    case 13:
      v302 = v8;
      v303 = v19;
      v304 = -v30;
      v517 = -(v557 * v33);
      v532 = -(v589 * v33);
      v305 = v13;
      v547 = v8;
      do
      {
        v568 = v13;
        v583 = v9;
        v306 = v558;
        v307 = v12;
        do
        {
          if (*v16)
          {
            v308 = v19 ? *v305 : 255;
            v309 = *v22;
            v310 = (v309 | (v308 << 16)) * (*v16 ^ 0xFF) + 65537 + ((((v309 | (v308 << 16)) * (*v16 ^ 0xFFu)) >> 8) & 0xFF00FF);
            result = (v309 | (v308 << 24)) - (v310 & 0xFF000000 | BYTE1(v310));
            v311 = BYTE3(result);
            if (BYTE3(result))
            {
              if (v8)
              {
                if (*v7)
                {
                  result = PDAmultiplyPDA_18018(*v14, *v7, (v309 - ((v309 * (*v16 ^ 0xFF) + 1 + ((v309 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v311);
                  v302 = v547;
                  v8 = v591;
                  v19 = v592;
                  v12 = v307;
                  v311 = BYTE3(result);
                }

                *v14 = result;
                *v7 = v311;
              }

              else
              {
                result = PDAmultiplyPDA_18018(*v14, 255, (v309 - ((v309 * (*v16 ^ 0xFF) + 1 + ((v309 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v311);
                v302 = v547;
                v8 = v591;
                v19 = v592;
                v12 = v307;
                *v14 = result;
              }
            }
          }

          v16 += v32;
          v14 += v32;
          v7 += v302;
          if (&v22[v32] >= v12)
          {
            v312 = v304;
          }

          else
          {
            v312 = 0;
          }

          v305 += v303 + v312;
          v22 += v32 + v312;
          --v306;
        }

        while (v306);
        if (v553)
        {
          v313 = v583;
          v314 = v517;
          if (&v590[v589] < v553)
          {
            v314 = 0;
          }

          v13 = &v568[v557 + v314];
          v315 = v532;
          if (&v590[v589] < v553)
          {
            v315 = 0;
          }

          v22 = &v590[v589 + v315];
          v12 += v589 + v315;
          v305 = &v568[v557 + v314];
          v590 = v22;
        }

        else
        {
          v313 = v583;
          v22 += v589;
          v305 += v557;
          v13 = v568;
        }

        v16 += v556;
        v14 += v555;
        v7 += v554;
        v9 = v313 - 1;
      }

      while (v9);
      return result;
    case 14:
      v72 = v8;
      v73 = v19;
      v74 = -v30;
      v510 = -(v557 * v33);
      v525 = -(v589 * v33);
      v75 = v13;
      v540 = v8;
      do
      {
        v561 = v13;
        v576 = v9;
        v76 = v558;
        v77 = v12;
        do
        {
          if (*v16)
          {
            v78 = v19 ? *v75 : 255;
            v79 = *v22;
            v80 = (v79 | (v78 << 16)) * (*v16 ^ 0xFF) + 65537 + ((((v79 | (v78 << 16)) * (*v16 ^ 0xFFu)) >> 8) & 0xFF00FF);
            result = (v79 | (v78 << 24)) - (v80 & 0xFF000000 | BYTE1(v80));
            v81 = BYTE3(result);
            if (BYTE3(result))
            {
              if (v8)
              {
                if (*v7)
                {
                  result = PDAscreenPDA_18019(*v14, *v7, (v79 - ((v79 * (*v16 ^ 0xFF) + 1 + ((v79 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v81);
                  v72 = v540;
                  v8 = v591;
                  v19 = v592;
                  v12 = v77;
                  v81 = BYTE3(result);
                }

                *v14 = result;
                *v7 = v81;
              }

              else
              {
                result = PDAscreenPDA_18019(*v14, 255, (v79 - ((v79 * (*v16 ^ 0xFF) + 1 + ((v79 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v81);
                v72 = v540;
                v8 = v591;
                v19 = v592;
                v12 = v77;
                *v14 = result;
              }
            }
          }

          v16 += v32;
          v14 += v32;
          v7 += v72;
          if (&v22[v32] >= v12)
          {
            v82 = v74;
          }

          else
          {
            v82 = 0;
          }

          v75 += v73 + v82;
          v22 += v32 + v82;
          --v76;
        }

        while (v76);
        if (v553)
        {
          v83 = v576;
          v84 = v510;
          if (&v590[v589] < v553)
          {
            v84 = 0;
          }

          v13 = &v561[v557 + v84];
          v85 = v525;
          if (&v590[v589] < v553)
          {
            v85 = 0;
          }

          v22 = &v590[v589 + v85];
          v12 += v589 + v85;
          v75 = &v561[v557 + v84];
          v590 = v22;
        }

        else
        {
          v83 = v576;
          v22 += v589;
          v75 += v557;
          v13 = v561;
        }

        v16 += v556;
        v14 += v555;
        v7 += v554;
        v9 = v83 - 1;
      }

      while (v9);
      return result;
    case 15:
      v190 = v8;
      v191 = v19;
      v192 = -v30;
      v513 = -(v557 * v33);
      v528 = -(v589 * v33);
      v193 = v13;
      v543 = v8;
      do
      {
        v564 = v13;
        v579 = v9;
        v194 = v558;
        v195 = v12;
        do
        {
          if (*v16)
          {
            v196 = v19 ? *v193 : 255;
            v197 = *v22;
            v198 = (v197 | (v196 << 16)) * (*v16 ^ 0xFF) + 65537 + ((((v197 | (v196 << 16)) * (*v16 ^ 0xFFu)) >> 8) & 0xFF00FF);
            result = (v197 | (v196 << 24)) - (v198 & 0xFF000000 | BYTE1(v198));
            v199 = BYTE3(result);
            if (BYTE3(result))
            {
              if (v8)
              {
                if (*v7)
                {
                  result = PDAoverlayPDA_18020(*v14, *v7, (v197 - ((v197 * (*v16 ^ 0xFF) + 1 + ((v197 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v199);
                  v190 = v543;
                  v8 = v591;
                  v19 = v592;
                  v12 = v195;
                  v199 = BYTE3(result);
                }

                *v14 = result;
                *v7 = v199;
              }

              else
              {
                result = PDAoverlayPDA_18020(*v14, 0xFFu, (v197 - ((v197 * (*v16 ^ 0xFF) + 1 + ((v197 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v199);
                v190 = v543;
                v8 = v591;
                v19 = v592;
                v12 = v195;
                *v14 = result;
              }
            }
          }

          v16 += v32;
          v14 += v32;
          v7 += v190;
          if (&v22[v32] >= v12)
          {
            v200 = v192;
          }

          else
          {
            v200 = 0;
          }

          v193 += v191 + v200;
          v22 += v32 + v200;
          --v194;
        }

        while (v194);
        if (v553)
        {
          v201 = v579;
          v202 = v513;
          if (&v590[v589] < v553)
          {
            v202 = 0;
          }

          v13 = &v564[v557 + v202];
          v203 = v528;
          if (&v590[v589] < v553)
          {
            v203 = 0;
          }

          v22 = &v590[v589 + v203];
          v12 += v589 + v203;
          v193 = &v564[v557 + v202];
          v590 = v22;
        }

        else
        {
          v201 = v579;
          v22 += v589;
          v193 += v557;
          v13 = v564;
        }

        v16 += v556;
        v14 += v555;
        v7 += v554;
        v9 = v201 - 1;
      }

      while (v9);
      return result;
    case 16:
      v58 = v8;
      v59 = v19;
      v60 = -v30;
      v509 = -(v557 * v33);
      v524 = -(v589 * v33);
      v61 = v13;
      v539 = v8;
      do
      {
        v560 = v13;
        v575 = v9;
        v62 = v558;
        v63 = v12;
        do
        {
          if (*v16)
          {
            v64 = v19 ? *v61 : 255;
            v65 = *v22;
            v66 = (v65 | (v64 << 16)) * (*v16 ^ 0xFF) + 65537 + ((((v65 | (v64 << 16)) * (*v16 ^ 0xFFu)) >> 8) & 0xFF00FF);
            result = (v65 | (v64 << 24)) - (v66 & 0xFF000000 | BYTE1(v66));
            v67 = BYTE3(result);
            if (BYTE3(result))
            {
              if (v8)
              {
                if (*v7)
                {
                  result = PDAdarkenPDA_18022(*v14, *v7, (v65 - ((v65 * (*v16 ^ 0xFF) + 1 + ((v65 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v67);
                  v58 = v539;
                  v8 = v591;
                  v19 = v592;
                  v12 = v63;
                  v67 = BYTE3(result);
                }

                *v14 = result;
                *v7 = v67;
              }

              else
              {
                result = PDAdarkenPDA_18022(*v14, 0xFFu, (v65 - ((v65 * (*v16 ^ 0xFF) + 1 + ((v65 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v67);
                v58 = v539;
                v8 = v591;
                v19 = v592;
                v12 = v63;
                *v14 = result;
              }
            }
          }

          v16 += v32;
          v14 += v32;
          v7 += v58;
          if (&v22[v32] >= v12)
          {
            v68 = v60;
          }

          else
          {
            v68 = 0;
          }

          v61 += v59 + v68;
          v22 += v32 + v68;
          --v62;
        }

        while (v62);
        if (v553)
        {
          v69 = v575;
          v70 = v509;
          if (&v590[v589] < v553)
          {
            v70 = 0;
          }

          v13 = &v560[v557 + v70];
          v71 = v524;
          if (&v590[v589] < v553)
          {
            v71 = 0;
          }

          v22 = &v590[v589 + v71];
          v12 += v589 + v71;
          v61 = &v560[v557 + v70];
          v590 = v22;
        }

        else
        {
          v69 = v575;
          v22 += v589;
          v61 += v557;
          v13 = v560;
        }

        v16 += v556;
        v14 += v555;
        v7 += v554;
        v9 = v69 - 1;
      }

      while (v9);
      return result;
    case 17:
      v245 = v8;
      v246 = v19;
      v247 = -v30;
      v514 = -(v557 * v33);
      v529 = -(v589 * v33);
      v248 = v13;
      v544 = v8;
      do
      {
        v565 = v13;
        v580 = v9;
        v249 = v558;
        v250 = v12;
        do
        {
          if (*v16)
          {
            v251 = v19 ? *v248 : 255;
            v252 = *v22;
            v253 = (v252 | (v251 << 16)) * (*v16 ^ 0xFF) + 65537 + ((((v252 | (v251 << 16)) * (*v16 ^ 0xFFu)) >> 8) & 0xFF00FF);
            result = (v252 | (v251 << 24)) - (v253 & 0xFF000000 | BYTE1(v253));
            v254 = BYTE3(result);
            if (BYTE3(result))
            {
              if (v8)
              {
                if (*v7)
                {
                  result = PDAlightenPDA_18021(*v14, *v7, (v252 - ((v252 * (*v16 ^ 0xFF) + 1 + ((v252 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v254);
                  v245 = v544;
                  v8 = v591;
                  v19 = v592;
                  v12 = v250;
                  v254 = BYTE3(result);
                }

                *v14 = result;
                *v7 = v254;
              }

              else
              {
                result = PDAlightenPDA_18021(*v14, 0xFFu, (v252 - ((v252 * (*v16 ^ 0xFF) + 1 + ((v252 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v254);
                v245 = v544;
                v8 = v591;
                v19 = v592;
                v12 = v250;
                *v14 = result;
              }
            }
          }

          v16 += v32;
          v14 += v32;
          v7 += v245;
          if (&v22[v32] >= v12)
          {
            v255 = v247;
          }

          else
          {
            v255 = 0;
          }

          v248 += v246 + v255;
          v22 += v32 + v255;
          --v249;
        }

        while (v249);
        if (v553)
        {
          v256 = v580;
          v257 = v514;
          if (&v590[v589] < v553)
          {
            v257 = 0;
          }

          v13 = &v565[v557 + v257];
          v258 = v529;
          if (&v590[v589] < v553)
          {
            v258 = 0;
          }

          v22 = &v590[v589 + v258];
          v12 += v589 + v258;
          v248 = &v565[v557 + v257];
          v590 = v22;
        }

        else
        {
          v256 = v580;
          v22 += v589;
          v248 += v557;
          v13 = v565;
        }

        v16 += v556;
        v14 += v555;
        v7 += v554;
        v9 = v256 - 1;
      }

      while (v9);
      return result;
    case 18:
      v331 = v8;
      v332 = v19;
      v333 = -v30;
      v518 = -(v557 * v33);
      v533 = -(v589 * v33);
      v334 = v13;
      v548 = v8;
      do
      {
        v569 = v13;
        v584 = v9;
        v335 = v558;
        v336 = v12;
        do
        {
          if (*v16)
          {
            v337 = v19 ? *v334 : 255;
            v338 = *v22;
            v339 = (v338 | (v337 << 16)) * (*v16 ^ 0xFF) + 65537 + ((((v338 | (v337 << 16)) * (*v16 ^ 0xFFu)) >> 8) & 0xFF00FF);
            result = (v338 | (v337 << 24)) - (v339 & 0xFF000000 | BYTE1(v339));
            v340 = BYTE3(result);
            if (BYTE3(result))
            {
              if (v8)
              {
                if (*v7)
                {
                  result = PDAcolordodgePDA_18023(*v14, *v7, (v338 - ((v338 * (*v16 ^ 0xFF) + 1 + ((v338 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v340);
                  v331 = v548;
                  v8 = v591;
                  v19 = v592;
                  v12 = v336;
                  v340 = BYTE3(result);
                }

                *v14 = result;
                *v7 = v340;
              }

              else
              {
                result = PDAcolordodgePDA_18023(*v14, 0xFFu, (v338 - ((v338 * (*v16 ^ 0xFF) + 1 + ((v338 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v340);
                v331 = v548;
                v8 = v591;
                v19 = v592;
                v12 = v336;
                *v14 = result;
              }
            }
          }

          v16 += v32;
          v14 += v32;
          v7 += v331;
          if (&v22[v32] >= v12)
          {
            v341 = v333;
          }

          else
          {
            v341 = 0;
          }

          v334 += v332 + v341;
          v22 += v32 + v341;
          --v335;
        }

        while (v335);
        if (v553)
        {
          v342 = v584;
          v343 = v518;
          if (&v590[v589] < v553)
          {
            v343 = 0;
          }

          v13 = &v569[v557 + v343];
          v344 = v533;
          if (&v590[v589] < v553)
          {
            v344 = 0;
          }

          v22 = &v590[v589 + v344];
          v12 += v589 + v344;
          v334 = &v569[v557 + v343];
          v590 = v22;
        }

        else
        {
          v342 = v584;
          v22 += v589;
          v334 += v557;
          v13 = v569;
        }

        v16 += v556;
        v14 += v555;
        v7 += v554;
        v9 = v342 - 1;
      }

      while (v9);
      return result;
    case 19:
      v387 = v8;
      v388 = v19;
      v389 = -v30;
      v520 = -(v557 * v33);
      v535 = -(v589 * v33);
      v390 = v13;
      v550 = v8;
      do
      {
        v571 = v13;
        v586 = v9;
        v391 = v558;
        v392 = v12;
        do
        {
          if (*v16)
          {
            v393 = v19 ? *v390 : 255;
            v394 = *v22;
            v395 = (v394 | (v393 << 16)) * (*v16 ^ 0xFF) + 65537 + ((((v394 | (v393 << 16)) * (*v16 ^ 0xFFu)) >> 8) & 0xFF00FF);
            result = (v394 | (v393 << 24)) - (v395 & 0xFF000000 | BYTE1(v395));
            v396 = BYTE3(result);
            if (BYTE3(result))
            {
              if (v8)
              {
                if (*v7)
                {
                  result = PDAcolorburnPDA_18024(*v14, *v7, (v394 - ((v394 * (*v16 ^ 0xFF) + 1 + ((v394 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v396);
                  v387 = v550;
                  v8 = v591;
                  v19 = v592;
                  v12 = v392;
                  v396 = BYTE3(result);
                }

                *v14 = result;
                *v7 = v396;
              }

              else
              {
                result = PDAcolorburnPDA_18024(*v14, 0xFFu, (v394 - ((v394 * (*v16 ^ 0xFF) + 1 + ((v394 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v396);
                v387 = v550;
                v8 = v591;
                v19 = v592;
                v12 = v392;
                *v14 = result;
              }
            }
          }

          v16 += v32;
          v14 += v32;
          v7 += v387;
          if (&v22[v32] >= v12)
          {
            v397 = v389;
          }

          else
          {
            v397 = 0;
          }

          v390 += v388 + v397;
          v22 += v32 + v397;
          --v391;
        }

        while (v391);
        if (v553)
        {
          v398 = v586;
          v399 = v520;
          if (&v590[v589] < v553)
          {
            v399 = 0;
          }

          v13 = &v571[v557 + v399];
          v400 = v535;
          if (&v590[v589] < v553)
          {
            v400 = 0;
          }

          v22 = &v590[v589 + v400];
          v12 += v589 + v400;
          v390 = &v571[v557 + v399];
          v590 = v22;
        }

        else
        {
          v398 = v586;
          v22 += v589;
          v390 += v557;
          v13 = v571;
        }

        v16 += v556;
        v14 += v555;
        v7 += v554;
        v9 = v398 - 1;
      }

      while (v9);
      return result;
    case 20:
      v259 = v8;
      v260 = v19;
      v261 = -v30;
      v515 = -(v557 * v33);
      v530 = -(v589 * v33);
      v262 = v13;
      v545 = v8;
      do
      {
        v566 = v13;
        v581 = v9;
        v263 = v558;
        v264 = v12;
        do
        {
          if (*v16)
          {
            v265 = v19 ? *v262 : 255;
            v266 = *v22;
            v267 = (v266 | (v265 << 16)) * (*v16 ^ 0xFF) + 65537 + ((((v266 | (v265 << 16)) * (*v16 ^ 0xFFu)) >> 8) & 0xFF00FF);
            result = (v266 | (v265 << 24)) - (v267 & 0xFF000000 | BYTE1(v267));
            v268 = BYTE3(result);
            if (BYTE3(result))
            {
              if (v8)
              {
                if (*v7)
                {
                  result = PDAsoftlightPDA_18026(*v14, *v7, (v266 - ((v266 * (*v16 ^ 0xFF) + 1 + ((v266 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v268);
                  v259 = v545;
                  v8 = v591;
                  v19 = v592;
                  v12 = v264;
                  v268 = BYTE3(result);
                }

                *v14 = result;
                *v7 = v268;
              }

              else
              {
                result = PDAsoftlightPDA_18026(*v14, 0xFFu, (v266 - ((v266 * (*v16 ^ 0xFF) + 1 + ((v266 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v268);
                v259 = v545;
                v8 = v591;
                v19 = v592;
                v12 = v264;
                *v14 = result;
              }
            }
          }

          v16 += v32;
          v14 += v32;
          v7 += v259;
          if (&v22[v32] >= v12)
          {
            v269 = v261;
          }

          else
          {
            v269 = 0;
          }

          v262 += v260 + v269;
          v22 += v32 + v269;
          --v263;
        }

        while (v263);
        if (v553)
        {
          v270 = v581;
          v271 = v515;
          if (&v590[v589] < v553)
          {
            v271 = 0;
          }

          v13 = &v566[v557 + v271];
          v272 = v530;
          if (&v590[v589] < v553)
          {
            v272 = 0;
          }

          v22 = &v590[v589 + v272];
          v12 += v589 + v272;
          v262 = &v566[v557 + v271];
          v590 = v22;
        }

        else
        {
          v270 = v581;
          v22 += v589;
          v262 += v557;
          v13 = v566;
        }

        v16 += v556;
        v14 += v555;
        v7 += v554;
        v9 = v270 - 1;
      }

      while (v9);
      return result;
    case 21:
      v288 = v8;
      v289 = v19;
      v290 = -v30;
      v516 = -(v557 * v33);
      v531 = -(v589 * v33);
      v291 = v13;
      v546 = v8;
      do
      {
        v567 = v13;
        v582 = v9;
        v292 = v558;
        v293 = v12;
        do
        {
          if (*v16)
          {
            v294 = v19 ? *v291 : 255;
            v295 = *v22;
            v296 = (v295 | (v294 << 16)) * (*v16 ^ 0xFF) + 65537 + ((((v295 | (v294 << 16)) * (*v16 ^ 0xFFu)) >> 8) & 0xFF00FF);
            result = (v295 | (v294 << 24)) - (v296 & 0xFF000000 | BYTE1(v296));
            v297 = BYTE3(result);
            if (BYTE3(result))
            {
              if (v8)
              {
                if (*v7)
                {
                  result = PDAhardlightPDA_18025(*v14, *v7, (v295 - ((v295 * (*v16 ^ 0xFF) + 1 + ((v295 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v297);
                  v288 = v546;
                  v8 = v591;
                  v19 = v592;
                  v12 = v293;
                  v297 = BYTE3(result);
                }

                *v14 = result;
                *v7 = v297;
              }

              else
              {
                result = PDAhardlightPDA_18025(*v14, 0xFFu, (v295 - ((v295 * (*v16 ^ 0xFF) + 1 + ((v295 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v297);
                v288 = v546;
                v8 = v591;
                v19 = v592;
                v12 = v293;
                *v14 = result;
              }
            }
          }

          v16 += v32;
          v14 += v32;
          v7 += v288;
          if (&v22[v32] >= v12)
          {
            v298 = v290;
          }

          else
          {
            v298 = 0;
          }

          v291 += v289 + v298;
          v22 += v32 + v298;
          --v292;
        }

        while (v292);
        if (v553)
        {
          v299 = v582;
          v300 = v516;
          if (&v590[v589] < v553)
          {
            v300 = 0;
          }

          v13 = &v567[v557 + v300];
          v301 = v531;
          if (&v590[v589] < v553)
          {
            v301 = 0;
          }

          v22 = &v590[v589 + v301];
          v12 += v589 + v301;
          v291 = &v567[v557 + v300];
          v590 = v22;
        }

        else
        {
          v299 = v582;
          v22 += v589;
          v291 += v557;
          v13 = v567;
        }

        v16 += v556;
        v14 += v555;
        v7 += v554;
        v9 = v299 - 1;
      }

      while (v9);
      return result;
    case 22:
      v373 = v8;
      v374 = v19;
      v375 = -v30;
      v519 = -(v557 * v33);
      v534 = -(v589 * v33);
      v376 = v13;
      v549 = v8;
      do
      {
        v570 = v13;
        v585 = v9;
        v377 = v558;
        v378 = v12;
        do
        {
          if (*v16)
          {
            v379 = v19 ? *v376 : 255;
            v380 = *v22;
            v381 = (v380 | (v379 << 16)) * (*v16 ^ 0xFF) + 65537 + ((((v380 | (v379 << 16)) * (*v16 ^ 0xFFu)) >> 8) & 0xFF00FF);
            result = (v380 | (v379 << 24)) - (v381 & 0xFF000000 | BYTE1(v381));
            v382 = BYTE3(result);
            if (BYTE3(result))
            {
              if (v8)
              {
                if (*v7)
                {
                  result = PDAdifferencePDA_18027(*v14, *v7, (v380 - ((v380 * (*v16 ^ 0xFF) + 1 + ((v380 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v382);
                  v373 = v549;
                  v8 = v591;
                  v19 = v592;
                  v12 = v378;
                  v382 = BYTE3(result);
                }

                *v14 = result;
                *v7 = v382;
              }

              else
              {
                result = PDAdifferencePDA_18027(*v14, 0xFFu, (v380 - ((v380 * (*v16 ^ 0xFF) + 1 + ((v380 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v382);
                v373 = v549;
                v8 = v591;
                v19 = v592;
                v12 = v378;
                *v14 = result;
              }
            }
          }

          v16 += v32;
          v14 += v32;
          v7 += v373;
          if (&v22[v32] >= v12)
          {
            v383 = v375;
          }

          else
          {
            v383 = 0;
          }

          v376 += v374 + v383;
          v22 += v32 + v383;
          --v377;
        }

        while (v377);
        if (v553)
        {
          v384 = v585;
          v385 = v519;
          if (&v590[v589] < v553)
          {
            v385 = 0;
          }

          v13 = &v570[v557 + v385];
          v386 = v534;
          if (&v590[v589] < v553)
          {
            v386 = 0;
          }

          v22 = &v590[v589 + v386];
          v12 += v589 + v386;
          v376 = &v570[v557 + v385];
          v590 = v22;
        }

        else
        {
          v384 = v585;
          v22 += v589;
          v376 += v557;
          v13 = v570;
        }

        v16 += v556;
        v14 += v555;
        v7 += v554;
        v9 = v384 - 1;
      }

      while (v9);
      return result;
    case 23:
      v401 = v8;
      v402 = v19;
      v403 = -v30;
      v521 = -(v557 * v33);
      v536 = -(v589 * v33);
      v404 = v13;
      v551 = v8;
      do
      {
        v572 = v13;
        v587 = v9;
        v405 = v558;
        v406 = v12;
        do
        {
          if (*v16)
          {
            v407 = v19 ? *v404 : 255;
            v408 = *v22;
            v409 = (v408 | (v407 << 16)) * (*v16 ^ 0xFF) + 65537 + ((((v408 | (v407 << 16)) * (*v16 ^ 0xFFu)) >> 8) & 0xFF00FF);
            result = (v408 | (v407 << 24)) - (v409 & 0xFF000000 | BYTE1(v409));
            v410 = BYTE3(result);
            if (BYTE3(result))
            {
              if (v8)
              {
                if (*v7)
                {
                  result = PDAexclusionPDA_18028(*v14, *v7, (v408 - ((v408 * (*v16 ^ 0xFF) + 1 + ((v408 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v410);
                  v401 = v551;
                  v8 = v591;
                  v19 = v592;
                  v12 = v406;
                  v410 = BYTE3(result);
                }

                *v14 = result;
                *v7 = v410;
              }

              else
              {
                result = PDAexclusionPDA_18028(*v14, 0xFFu, (v408 - ((v408 * (*v16 ^ 0xFF) + 1 + ((v408 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v410);
                v401 = v551;
                v8 = v591;
                v19 = v592;
                v12 = v406;
                *v14 = result;
              }
            }
          }

          v16 += v32;
          v14 += v32;
          v7 += v401;
          if (&v22[v32] >= v12)
          {
            v411 = v403;
          }

          else
          {
            v411 = 0;
          }

          v404 += v402 + v411;
          v22 += v32 + v411;
          --v405;
        }

        while (v405);
        if (v553)
        {
          v412 = v587;
          v413 = v521;
          if (&v590[v589] < v553)
          {
            v413 = 0;
          }

          v13 = &v572[v557 + v413];
          v414 = v536;
          if (&v590[v589] < v553)
          {
            v414 = 0;
          }

          v22 = &v590[v589 + v414];
          v12 += v589 + v414;
          v404 = &v572[v557 + v413];
          v590 = v22;
        }

        else
        {
          v412 = v587;
          v22 += v589;
          v404 += v557;
          v13 = v572;
        }

        v16 += v556;
        v14 += v555;
        v7 += v554;
        v9 = v412 - 1;
      }

      while (v9);
      return result;
    case 24:
      v158 = v8;
      v159 = v19;
      v160 = -v30;
      v512 = -(v557 * v33);
      v527 = -(v589 * v33);
      v161 = v13;
      v542 = v8;
      do
      {
        v563 = v13;
        v578 = v9;
        v162 = v558;
        v163 = v12;
        do
        {
          if (*v16)
          {
            v164 = v19 ? *v161 : 255;
            v165 = *v22;
            v166 = (v165 | (v164 << 16)) * (*v16 ^ 0xFF) + 65537 + ((((v165 | (v164 << 16)) * (*v16 ^ 0xFFu)) >> 8) & 0xFF00FF);
            result = (v165 | (v164 << 24)) - (v166 & 0xFF000000 | BYTE1(v166));
            v167 = BYTE3(result);
            if (BYTE3(result))
            {
              if (v8)
              {
                if (*v7)
                {
                  result = PDAhuePDA_18029(*v14, *v7, (v165 - ((v165 * (*v16 ^ 0xFF) + 1 + ((v165 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v167);
                  v158 = v542;
                  v8 = v591;
                  v19 = v592;
                  v12 = v163;
                  v167 = BYTE3(result);
                }

                *v14 = result;
                *v7 = v167;
              }

              else
              {
                result = PDAhuePDA_18029(*v14, 0xFFu, (v165 - ((v165 * (*v16 ^ 0xFF) + 1 + ((v165 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v167);
                v158 = v542;
                v8 = v591;
                v19 = v592;
                v12 = v163;
                *v14 = result;
              }
            }
          }

          v16 += v32;
          v14 += v32;
          v7 += v158;
          if (&v22[v32] >= v12)
          {
            v168 = v160;
          }

          else
          {
            v168 = 0;
          }

          v161 += v159 + v168;
          v22 += v32 + v168;
          --v162;
        }

        while (v162);
        if (v553)
        {
          v169 = v578;
          v170 = v512;
          if (&v590[v589] < v553)
          {
            v170 = 0;
          }

          v13 = &v563[v557 + v170];
          v171 = v527;
          if (&v590[v589] < v553)
          {
            v171 = 0;
          }

          v22 = &v590[v589 + v171];
          v12 += v589 + v171;
          v161 = &v563[v557 + v170];
          v590 = v22;
        }

        else
        {
          v169 = v578;
          v22 += v589;
          v161 += v557;
          v13 = v563;
        }

        v16 += v556;
        v14 += v555;
        v7 += v554;
        v9 = v169 - 1;
      }

      while (v9);
      return result;
    case 25:
      v144 = v8;
      v145 = v19;
      v146 = -v30;
      v511 = -(v557 * v33);
      v526 = -(v589 * v33);
      v147 = v13;
      v541 = v8;
      do
      {
        v562 = v13;
        v577 = v9;
        v148 = v558;
        v149 = v12;
        do
        {
          if (*v16)
          {
            v150 = v19 ? *v147 : 255;
            v151 = *v22;
            v152 = (v151 | (v150 << 16)) * (*v16 ^ 0xFF) + 65537 + ((((v151 | (v150 << 16)) * (*v16 ^ 0xFFu)) >> 8) & 0xFF00FF);
            result = (v151 | (v150 << 24)) - (v152 & 0xFF000000 | BYTE1(v152));
            v153 = BYTE3(result);
            if (BYTE3(result))
            {
              if (v8)
              {
                if (*v7)
                {
                  result = PDAhuePDA_18029(*v14, *v7, (v151 - ((v151 * (*v16 ^ 0xFF) + 1 + ((v151 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v153);
                  v144 = v541;
                  v8 = v591;
                  v19 = v592;
                  v12 = v149;
                  v153 = BYTE3(result);
                }

                *v14 = result;
                *v7 = v153;
              }

              else
              {
                result = PDAhuePDA_18029(*v14, 0xFFu, (v151 - ((v151 * (*v16 ^ 0xFF) + 1 + ((v151 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v153);
                v144 = v541;
                v8 = v591;
                v19 = v592;
                v12 = v149;
                *v14 = result;
              }
            }
          }

          v16 += v32;
          v14 += v32;
          v7 += v144;
          if (&v22[v32] >= v12)
          {
            v154 = v146;
          }

          else
          {
            v154 = 0;
          }

          v147 += v145 + v154;
          v22 += v32 + v154;
          --v148;
        }

        while (v148);
        if (v553)
        {
          v155 = v577;
          v156 = v511;
          if (&v590[v589] < v553)
          {
            v156 = 0;
          }

          v13 = &v562[v557 + v156];
          v157 = v526;
          if (&v590[v589] < v553)
          {
            v157 = 0;
          }

          v22 = &v590[v589 + v157];
          v12 += v589 + v157;
          v147 = &v562[v557 + v156];
          v590 = v22;
        }

        else
        {
          v155 = v577;
          v22 += v589;
          v147 += v557;
          v13 = v562;
        }

        v16 += v556;
        v14 += v555;
        v7 += v554;
        v9 = v155 - 1;
      }

      while (v9);
      return result;
    case 26:
      v415 = v8;
      v416 = v19;
      v417 = -v30;
      v522 = -(v557 * v21);
      v537 = -(v589 * v21);
      v418 = v13;
      do
      {
        v573 = v13;
        v588 = v9;
        v419 = v558;
        v552 = v12;
        do
        {
          if (*v16)
          {
            v420 = v19 ? *v418 : 255;
            v421 = *v22;
            v422 = (v421 | (v420 << 16)) * (*v16 ^ 0xFF) + 65537 + ((((v421 | (v420 << 16)) * (*v16 ^ 0xFFu)) >> 8) & 0xFF00FF);
            result = (v421 | (v420 << 24)) - (v422 & 0xFF000000 | BYTE1(v422));
            v423 = BYTE3(result);
            if (BYTE3(result))
            {
              if (v8)
              {
                if (*v7)
                {
                  result = PDAluminosityPDA_18031((v421 - ((v421 * (*v16 ^ 0xFF) + 1 + ((v421 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v423, *v14, *v7);
                  v8 = v591;
                  v19 = v592;
                  v12 = v552;
                  v423 = BYTE3(result);
                }

                *v14 = result;
                *v7 = v423;
              }

              else
              {
                result = PDAluminosityPDA_18031((v421 - ((v421 * (*v16 ^ 0xFF) + 1 + ((v421 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v423, *v14, 0xFFu);
                v8 = v591;
                v19 = v592;
                v12 = v552;
                *v14 = result;
              }
            }
          }

          v16 += v32;
          v14 += v32;
          v7 += v415;
          if (&v22[v32] >= v12)
          {
            v424 = v417;
          }

          else
          {
            v424 = 0;
          }

          v418 += v416 + v424;
          v22 += v32 + v424;
          --v419;
        }

        while (v419);
        if (v553)
        {
          v425 = v588;
          v426 = v522;
          if (&v590[v589] < v553)
          {
            v426 = 0;
          }

          v13 = &v573[v557 + v426];
          v427 = v537;
          if (&v590[v589] < v553)
          {
            v427 = 0;
          }

          v22 = &v590[v589 + v427];
          v12 += v589 + v427;
          v418 = &v573[v557 + v426];
          v590 = v22;
        }

        else
        {
          v425 = v588;
          v22 += v589;
          v418 += v557;
          v13 = v573;
        }

        v16 += v556;
        v14 += v555;
        v7 += v554;
        v9 = v425 - 1;
      }

      while (v9);
      return result;
    case 27:
      v44 = v8;
      v45 = v19;
      v46 = -v30;
      v508 = -(v557 * v33);
      v523 = -(v589 * v33);
      v47 = v13;
      v538 = v8;
      do
      {
        v559 = v13;
        v574 = v9;
        v48 = v558;
        v49 = v12;
        do
        {
          if (*v16)
          {
            v50 = v19 ? *v47 : 255;
            v51 = *v22;
            v52 = (v51 | (v50 << 16)) * (*v16 ^ 0xFF) + 65537 + ((((v51 | (v50 << 16)) * (*v16 ^ 0xFFu)) >> 8) & 0xFF00FF);
            result = (v51 | (v50 << 24)) - (v52 & 0xFF000000 | BYTE1(v52));
            v53 = BYTE3(result);
            if (BYTE3(result))
            {
              if (v8)
              {
                if (*v7)
                {
                  result = PDAluminosityPDA_18031(*v14, *v7, (v51 - ((v51 * (*v16 ^ 0xFF) + 1 + ((v51 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v53);
                  v44 = v538;
                  v8 = v591;
                  v19 = v592;
                  v12 = v49;
                  v53 = BYTE3(result);
                }

                *v14 = result;
                *v7 = v53;
              }

              else
              {
                result = PDAluminosityPDA_18031(*v14, 0xFFu, (v51 - ((v51 * (*v16 ^ 0xFF) + 1 + ((v51 * (*v16 ^ 0xFF)) >> 8)) >> 8)), v53);
                v44 = v538;
                v8 = v591;
                v19 = v592;
                v12 = v49;
                *v14 = result;
              }
            }
          }

          v16 += v32;
          v14 += v32;
          v7 += v44;
          if (&v22[v32] >= v12)
          {
            v54 = v46;
          }

          else
          {
            v54 = 0;
          }

          v47 += v45 + v54;
          v22 += v32 + v54;
          --v48;
        }

        while (v48);
        if (v553)
        {
          v55 = v574;
          v56 = v508;
          if (&v590[v589] < v553)
          {
            v56 = 0;
          }

          v13 = &v559[v557 + v56];
          v57 = v523;
          if (&v590[v589] < v553)
          {
            v57 = 0;
          }

          v22 = &v590[v589 + v57];
          v12 += v589 + v57;
          v47 = &v559[v557 + v56];
          v590 = v22;
        }

        else
        {
          v55 = v574;
          v22 += v589;
          v47 += v557;
          v13 = v559;
        }

        v16 += v556;
        v14 += v555;
        v7 += v554;
        v9 = v55 - 1;
      }

      while (v9);
      return result;
    default:
      return result;
  }

  do
  {
    v453 = v558;
    do
    {
      v454 = *v16;
      if (!*v16)
      {
        goto LABEL_758;
      }

      if (v454 == 255)
      {
        v455 = *v452;
        if (!*v452)
        {
          goto LABEL_758;
        }

        if (v455 == 255)
        {
          LOBYTE(v456) = *v22;
        }

        else
        {
          result = *v14;
          v456 = *v22 + ((result * (v455 ^ 0xFF) + ((result * (v455 ^ 0xFF)) >> 8) + 1) >> 8);
        }
      }

      else
      {
        v457 = *v22;
        result = *v452;
        v458 = (v457 | (result << 16)) * (v454 ^ 0xFF) + 65537 + ((((v457 | (result << 16)) * (v454 ^ 0xFFu)) >> 8) & 0xFF00FF);
        v459 = (v457 | (result << 24)) - (v458 & 0xFF000000 | BYTE1(v458));
        if (!HIBYTE(v459))
        {
          goto LABEL_758;
        }

        result = ~v459 >> 24;
        v456 = v459 + ((result * *v14 + ((result * *v14) >> 8) + 1) >> 8);
      }

      *v14 = v456;
LABEL_758:
      v16 += v32;
      v14 += v32;
      v460 = &v452[v19];
      if (&v22[v32] >= v12)
      {
        v461 = v449;
      }

      else
      {
        v461 = 0;
      }

      v452 = &v460[v461];
      v22 += v32 + v461;
      --v453;
    }

    while (v453);
    if (v26)
    {
      if (&v590[v589] >= v26)
      {
        v462 = v451;
      }

      else
      {
        v462 = 0;
      }

      v13 += v557 + v462;
      if (&v590[v589] >= v26)
      {
        v463 = v450;
      }

      else
      {
        v463 = 0;
      }

      v22 = &v590[v589 + v463];
      v12 += v589 + v463;
      v452 = v13;
      v590 = v22;
    }

    else
    {
      v22 += v589;
      v452 += v557;
    }

    v16 += v556;
    v14 += v555;
    --v9;
  }

  while (v9);
  return result;
}

void ripc_ContextRestore(uint64_t a1, uint64_t a2)
{
  *(a1 + 104) = *(a2 + 104);
  v4 = *(a2 + 120);
  v5 = *(a2 + 136);
  v6 = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 152) = v6;
  *(a1 + 136) = v5;
  *(a1 + 120) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  v7 = *(a1 + 56);
  if (v7)
  {
    ripr_release(v7);
  }

  *(a1 + 56) = *(a2 + 56);
  v8 = *(a1 + 64);
  if (v8)
  {
    ripr_release(v8);
  }

  *(a1 + 64) = *(a2 + 64);
  v9 = *(a1 + 80);
  if (v9 && *v9)
  {
    (*(*v9 + 24))(v9);
  }

  *(a1 + 80) = *(a2 + 80);
  ripc_ReleaseClipState((a1 + 72));
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 216) = *(a2 + 216);
}

dispatch_once_t RIPLayerCoverage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  result = RIPGetDepthForLayerFormat(0, a2, a3, a4, a5, a6, a7, a8);
  if (v9 != result)
  {
    v18 = *(a1 + 32);
    result = RIPGetDepthForLayerFormat(1u, v11, v12, v13, v14, v15, v16, v17);
    if (v18 == result && !*(a1 + 72))
    {
      result = RIPGetDepthForLayerFormat(0, v19, v20, v21, v22, v23, v24, v25);
      *(a1 + 32) = result;
    }
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<CG::DisplayListResourceSoftMask *,std::shared_ptr<CG::DisplayListResourceSoftMask>::__shared_ptr_default_delete<CG::DisplayListResourceSoftMask,CG::DisplayListResourceSoftMask>,std::allocator<CG::DisplayListResourceSoftMask>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void CG::DisplayListResourceSoftMask::~DisplayListResourceSoftMask(CG::DisplayListResourceSoftMask *this)
{
  *this = &unk_1EF23F6A0;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x1865EE610);
}

{
  *this = &unk_1EF23F6A0;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

void soft_mask_finalize(void *a1)
{
  v2 = a1[19];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[13];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[14];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[18];
  if (v5)
  {
    v6 = a1[15];

    v5(v6);
  }
}

double CGClipGetBounds(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      return CGClipMaskGetBounds(*(a1 + 24));
    }

    else
    {
      result = -8.98846567e307;
      if (v1 == 4)
      {
        v3 = INFINITY;
        if (*(a1 + 24))
        {
          return -8.98846567e307;
        }

        return v3;
      }
    }
  }

  else if (*(a1 + 8))
  {
    result = -8.98846567e307;
    if (v1 == 2)
    {
      *&result = CGPathGetBoundingBox(*(a1 + 24));
    }
  }

  else
  {
    return *(a1 + 24);
  }

  return result;
}

CGFloat CGImageTextureDataGetSize(uint64_t a1)
{
  v1 = (a1 + 72);
  if (!a1)
  {
    v1 = &CGSizeZero;
  }

  return v1->width;
}

void RIPClipStateRemoveEntry(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  *(v5 + 8) = v4;
  *v4 = v5;
  *a2 = a2;
  a2[1] = a2;
  v6 = a2[11];
  if ((v6 + 1) >= 2)
  {
    (*(*v6 + 24))(v6);
  }

  free(a2);
  --*(a1 + 40);
}

uint64_t CGColorSpaceGetCICPInfo(uint64_t result, _DWORD *a2)
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = CFGetTypeID(result);
  if (kCGColorSpace_block_invoke_once != -1)
  {
    dispatch_once(&kCGColorSpace_block_invoke_once, &__block_literal_global_75_23302);
  }

  if (v4 != CGColorSpaceGetTypeID_type_id)
  {
    return 0;
  }

  if (CGColorSpaceGetType(v3) == 6)
  {
    v5 = (*(v3[3] + 96) + 8);
  }

  else
  {
    if (CGColorSpaceGetType(v3) != 11)
    {
      v6 = 0;
      goto LABEL_12;
    }

    v5 = *(v3[3] + 96);
  }

  v6 = *v5;
LABEL_12:
  if (CGColorSpaceGetCICPInfo_cglibrarypredicate != -1)
  {
    dispatch_once(&CGColorSpaceGetCICPInfo_cglibrarypredicate, &__block_literal_global_49);
  }

  result = CGColorSpaceGetCICPInfo_f(v6);
  if (result)
  {
    if (a2)
    {
      *a2 = *result;
    }

    return 1;
  }

  return result;
}

uint64_t rip_auto_context_draw_shading(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v7 = 120;
    pthread_mutex_lock(0x78);
    v6 = 0;
    goto LABEL_6;
  }

  v6 = *(a1 + 288);
  v7 = v6 + 120;
  pthread_mutex_lock((v6 + 120));
  if (!v6)
  {
LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  v8 = *(v6 + 88);
  if (!v8)
  {
    v8 = *(v6 + 80);
  }

LABEL_7:
  rip_auto_context_update_content_info_from_GState(v6, a3);
  v9 = *(v6 + 112);
  v10 = *(a3 + 120);
  if (*(v10 + 48) >= v9)
  {
    v9 = *(v10 + 48);
  }

  *(v6 + 112) = v9;
  v11 = *(a4 + 24);
  content_type_from_color_space = rip_adaptive_bitmap_context_get_content_type_from_color_space(v11);
  *(v6 + 116) |= content_type_from_color_space;
  if (content_type_from_color_space != 1)
  {
    if (content_type_from_color_space == 2)
    {
      v13 = *(v6 + 104) | CGColorSpaceIsWideGamutRGB(v11);
    }

    else
    {
      v13 = 1;
    }

    *(v6 + 104) = v13;
  }

  v14 = *(v6 + 108);
  if (v14 <= CGColorSpaceGetHeadroomInfo(v11, 0))
  {
    HeadroomInfo = CGColorSpaceGetHeadroomInfo(v11, 0);
  }

  else
  {
    HeadroomInfo = *(v6 + 108);
  }

  *(v6 + 108) = HeadroomInfo;
  if (v8)
  {
    v23 = *(v8 + 40);
    if (v23)
    {
      v24 = *(v23 + 96);
      if (v24)
      {
        v25 = v24();
      }

      else
      {
        v25 = 1006;
      }
    }

    else
    {
      v25 = 0;
    }

    *(v6 + 105) |= rip_auto_context_contains_transparency(v6, v15, v16, v17, v18, v19, v20, v21);
  }

  else
  {
    v25 = 0;
  }

  pthread_mutex_unlock(v7);
  return v25;
}

uint64_t dlRecorder_DrawShading(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || (v8 = *(a1 + 288)) == 0)
  {
    CGPostError("%s: CGContextDelegateGetInfo() returned NULL", a2, a3, a4, a5, a6, a7, a8, "dlRecorder_DrawShading");
    return 1000;
  }

  v12 = CG::DisplayListRecorder::currentDisplayList(v8);
  if (!v12)
  {
    return 1000;
  }

  v13 = v12;
  if (v12[5] == INFINITY || v12[6] == INFINITY)
  {
    return 0;
  }

  result = 0;
  if (v13[7] != 0.0 && v13[8] != 0.0)
  {
    v16 = *(a3 + 40);
    v42 = *(a3 + 24);
    v43 = v16;
    v44 = *(a3 + 56);
    if (*(v13 + 73) != 1 || (a4[40] != 1 ? (v17 = &CGRectInfinite, p_height = &CGRectInfinite.size.height, p_y = &CGRectInfinite.origin.y, p_size = &CGRectInfinite.size) : (v17 = (a4 + 48), p_y = (a4 + 56), p_size = (a4 + 64), p_height = (a4 + 72)), (v21 = *p_height, v22 = *p_y, width = p_size->width, x = v17->origin.x, v39 = v22, v40 = width, v41 = v21, v24 = CG::DisplayListRecorder::intersectRectWithClipConsideringStyle(&x, a2, *(a3 + 112), *(*(a3 + 120) + 16)), result = 0, x = v24, v39 = v25, v40 = v26, v41 = v27, v24 != INFINITY) && v25 != INFINITY && (result = 0, v26 != 0.0) && v27 != 0.0))
    {
      v28 = CG::DisplayList::shadingResourceForShading((v13 + 2), a4);
      if (v28)
      {
        v29 = v28;
        EntryDrawingState = CG::DisplayList::getEntryDrawingState((v13 + 2), a3, a2);
        v31 = EntryDrawingState[1];
        if (v31)
        {
          v32 = *(v31 + 8);
          v33 = EntryDrawingState[2];
          if (v33)
          {
            v32 |= *(v33 + 8);
          }

          v34 = v32 & 0x1000;
          v35 = EntryDrawingState[3];
          if (v35)
          {
            v34 |= *(v35 + 8) & 0x3400;
          }

          v36 = *(a3 + 120);
          if (*(v36 + 8) >= 1.0)
          {
            v37 = *(v29 + 8) & 0x1000 | v34;
          }

          else
          {
            LOWORD(v37) = v34 | 0x1000;
          }

          if ((v37 & 0x1000) == 0 && (((*(v36 + 4) << 16) >> 24) - 3) < 0xFFFFFFFE)
          {
            LOWORD(v37) = v37 | 0x1000;
          }

          if ((v37 & 0x3000) != 0)
          {
            *(v13 + 20) |= v37 & 0x3000;
          }

          if (*(v13 + 74) == 1)
          {
            if ((v37 & 0x400) != 0)
            {
              CG::DisplayList::getEntryPatternState((v13 + 2), a3, a2);
            }

            operator new();
          }

          return 0;
        }
      }

      return 1000;
    }
  }

  return result;
}

uint64_t CG::DisplayList::shadingResourceForShading(CG::DisplayList *this, CGShading *a2)
{
  if (!a2)
  {
    return 0;
  }

  ++*(this + 94);
  v3 = this + 376;
  v4 = *(this + 47);
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = this + 376;
  do
  {
    v7 = *(v4 + 4);
    v6 = *(v4 + 5);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = *(v7 + 16);
      std::__shared_weak_count::__release_shared[abi:fe200100](v6);
    }

    else
    {
      v8 = *(v7 + 16);
    }

    if (v8 >= a2)
    {
      v5 = v4;
    }

    v4 = *&v4[8 * (v8 < a2)];
  }

  while (v4);
  if (v3 == v5)
  {
    goto LABEL_15;
  }

  v9 = *(v5 + 4);
  v10 = *(v5 + 5);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    if (*(v9 + 16) < a2)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v10);
      goto LABEL_15;
    }

    v13 = *(v5 + 4);
    v12 = *(v5 + 5);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v14 = *(v13 + 16);
      std::__shared_weak_count::__release_shared[abi:fe200100](v12);
    }

    else
    {
      v14 = *(v13 + 16);
    }

    std::__shared_weak_count::__release_shared[abi:fe200100](v10);
    if (v14 <= a2)
    {
      return *(v5 + 4);
    }

LABEL_15:
    operator new();
  }

  if (*(v9 + 16) != a2)
  {
    goto LABEL_15;
  }

  return *(v5 + 4);
}

unsigned int *CG::DisplayListEntryShading::_hash(uint64_t a1, unsigned int *a2)
{
  __src = *(*(*(a1 + 80) + 16) + 16);
  XXH64_update(a2, &__src, 4uLL);
  XXH64_update(a2, (a1 + 88), 0x30uLL);
  XXH64_update(a2, (a1 + 136), 4uLL);
  XXH64_update(a2, (a1 + 140), 4uLL);

  return CG::DisplayListEntry::_hash(a1, a2);
}

uint64_t std::__shared_ptr_pointer<CG::DisplayListResourceShading *,std::shared_ptr<CG::DisplayListResourceShading>::__shared_ptr_default_delete<CG::DisplayListResourceShading,CG::DisplayListResourceShading>,std::allocator<CG::DisplayListResourceShading>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void CG::DisplayListResourceShading::~DisplayListResourceShading(CG::DisplayListResourceShading *this)
{
  *this = &unk_1EF239AF0;
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    CFRelease(v3);
  }
}

{
  CG::DisplayListResourceShading::~DisplayListResourceShading(this);

  JUMPOUT(0x1865EE610);
}

uint64_t RGBA32_shade(uint64_t a1, __n128 a2)
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

  if (v11 >= 24 && *v7 == 134755208)
  {
    v11 += 4;
  }

  if ((*v5 & 0xF000000) == 0x3000000)
  {
    if (*(v5 + 16))
    {
      v14 = RGBA32_shade_radial_RGB;
    }

    else if (*(v5 + 24))
    {
      v14 = RGBA32_shade_conic_RGB;
    }

    else if (*(&v19 + 1) < 2)
    {
      v14 = RGBA32_shade_axial_RGB;
    }

    else
    {
      v14 = RGBA32_shade_custom_RGB;
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
LABEL_30:
      _blt_shade_samples_16(v16, 2, 3, v18, *(&v18 + 1), v15);
      if (*(v5 + 1))
      {
        *&v39 = &_blt_shade_samples_noise;
      }

      goto LABEL_32;
    }

    v16 = malloc_type_malloc(8 * v15 + 32, 0x24046928uLL);
    if (v16)
    {
      v38[1] = v16;
      v15 = *(&v19 + 1) * v19;
      goto LABEL_30;
    }

    return 0xFFFFFFFFLL;
  }

  if (!*&v17[0])
  {
    return 0xFFFFFFFFLL;
  }

LABEL_32:
  DWORD2(v17[0]) = *v7;
  HIDWORD(v17[0]) = DWORD2(v17[0]);
  argb32_image_mark(v6, v17, v11, v13);
  if (v38[1] && (v38[1] < v44 || &v45 < v38[1]))
  {
    free(v38[1]);
  }

  return 1;
}

void layerFinalize(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t __CGLayerGetTypeID_block_invoke_2()
{
  result = __CGTypeRegisterInternal(CGLayerGetTypeID_class);
  CGLayerGetTypeID_layer_type_id = result;
  return result;
}

uint64_t __CGSoftMaskGetTypeID_block_invoke_2()
{
  result = __CGTypeRegisterInternal(CGSoftMaskGetTypeID_runtime_class);
  CGSoftMaskGetTypeID_soft_mask_type_id = result;
  return result;
}

uint64_t CGGradientCreateWithColorComponentsAndOptions(CGColorSpace *a1, double *a2, double *a3, size_t a4, const __CFDictionary *a5)
{
  HeadroomInfo = CGColorSpaceGetHeadroomInfo(a1, 0);

  return create_gradient(a1, a2, a3, a4, a5, HeadroomInfo);
}

void CGContextDrawLinearGradient(CGContextRef c, CGGradientRef gradient, CGPoint startPoint, CGPoint endPoint, CGGradientDrawingOptions options)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      if (gradient)
      {
        y = endPoint.y;
        x = endPoint.x;
        v15 = startPoint.y;
        v16 = startPoint.x;
        v17 = CFGetTypeID(gradient);
        if (kCGGradientInterpolatesPremultiplied_block_invoke_once[0] != -1)
        {
          v22 = v17;
          dispatch_once(kCGGradientInterpolatesPremultiplied_block_invoke_once, &__block_literal_global_18_14085);
          v17 = v22;
        }

        if (v17 == CGGradientGetTypeID_gradient_type_id)
        {
          v18 = *(c + 5);
          if (v18)
          {
            v19 = *(v18 + 104);
            if (!v19 || v19(v16, v15, x, y) == 1006)
            {
              AxialWithGradient = CGShadingCreateAxialWithGradient(gradient, options & 1, (options >> 1) & 1, v16, v15, x, y);
              CGContextDrawShading(c, AxialWithGradient);
              if (AxialWithGradient)
              {

                CFRelease(AxialWithGradient);
              }
            }
          }
        }
      }

      return;
    }

    v21 = c;
  }

  else
  {
    v21 = 0;
  }

  handle_invalid_context("CGContextDrawLinearGradient", v21, *&options, v5, v6, v7, v8, v9);
}

CGFunctionRef CGGradientGetFunction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    _CGHandleAssert("CGGradientGetFunction", 440, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/API/CGGradient.c", "g != NULL", "gradient is missing", a6, a7, a8, v17);
  }

  result = *(a1 + 32);
  if (!result)
  {
    v10 = malloc_type_malloc(0x20uLL, 0x10E004015446177uLL);
    v11 = *(a1 + 40);
    v10[2] = *(a1 + 48);
    *v10 = CFRetain(v11);
    v10[3] = CFDataGetBytePtr(*(a1 + 40));
    v12 = *(a1 + 24);
    if (v12)
    {
      v13 = *(*(v12 + 3) + 48) + 1;
    }

    else
    {
      v13 = 1;
    }

    v10[1] = v13;
    v14 = CGColorSpaceUsesExtendedRange(v12);
    v15 = &create_function_default_range;
    if (v14)
    {
      v15 = &create_function_extended_range;
    }

    if (*(a1 + 20))
    {
      v16 = &create_function_premul_callbacks;
    }

    else
    {
      v16 = &create_function_default_callbacks;
    }

    result = CGFunctionCreate(v10, 1uLL, create_function_domain, v10[1], &v15[10 - 2 * v10[1]], v16);
    *(a1 + 32) = result;
    if (!result)
    {
      CFRelease(*v10);
      free(v10);
      return 0;
    }
  }

  return result;
}

CGFunctionRef CGFunctionCreate(void *info, size_t domainDimension, const CGFloat *domain, size_t rangeDimension, const CGFloat *range, const CGFunctionCallbacks *callbacks)
{
  v8 = 0;
  if (domainDimension && rangeDimension && callbacks)
  {
    if (callbacks->evaluate)
    {
      if (_block_invoke_once_6183 != -1)
      {
        dispatch_once(&_block_invoke_once_6183, &__block_literal_global_8_6184);
      }

      Instance = CGTypeCreateInstance(CGFunctionGetTypeID_function_type_id, 96, domain, rangeDimension, range, callbacks, v6, v7);
      v8 = Instance;
      *(Instance + 16) = atomic_fetch_add_explicit(CGFunctionCreate_identifier, 1u, memory_order_relaxed) + 1;
      *(Instance + 24) = info;
      releaseInfo = callbacks->releaseInfo;
      *(Instance + 64) = *&callbacks->version;
      *(Instance + 80) = releaseInfo;
      *(Instance + 88) = 0;
      *(Instance + 96) = 0;
      *(Instance + 104) = 0;
      *(Instance + 32) = domainDimension;
      if (domain)
      {
        v17 = 16 * domainDimension;
        v18 = malloc_type_malloc(v17, 0x858C06A2uLL);
        *(v8 + 5) = v18;
        memcpy(v18, domain, v17);
      }

      else
      {
        *(Instance + 40) = 0;
      }

      *(v8 + 6) = rangeDimension;
      if (range)
      {
        v19 = 16 * rangeDimension;
        v20 = malloc_type_malloc(v19, 0xCDC6BFCBuLL);
        *(v8 + 7) = v20;
        memcpy(v20, range, v19);
      }

      else
      {
        *(v8 + 7) = 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

uint64_t CGShadingCreateAxialInternal(void *a1, uint64_t a2, uint64_t a3, double *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12)
{
  Empty = 0;
  if (a1 && a5)
  {
    v15 = *(a1[3] + 48);
    v16 = a5[6];
    if (v16 == v15 || v16 == v15 + 1)
    {
      v18 = a7;
      v19 = a6;
      Empty = CGShadingCreateEmpty(1, a1, a2, a3, a5, a6, a7, a8);
      *(Empty + 128) = a9;
      *(Empty + 136) = a10;
      *(Empty + 144) = v19;
      *(Empty + 152) = a11;
      *(Empty + 160) = a12;
      *(Empty + 168) = v18;
      CFRetain(a5);
      *(Empty + 192) = a5;
      if (a4)
      {
        *(Empty + 176) = *a4;
        v24 = a4[1];
      }

      else
      {
        *(Empty + 176) = 0;
        v24 = 1.0;
      }

      *(Empty + 184) = v24;
    }

    else
    {
      return 0;
    }
  }

  return Empty;
}

uint64_t CGShadingCreateEmpty(int a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a3;
  if ((a1 - 1) > 3)
  {
    v12 = 112;
  }

  else
  {
    v12 = qword_1844DF998[a1 - 1];
  }

  if (_block_invoke_once_10784 != -1)
  {
    dispatch_once(&_block_invoke_once_10784, &__block_literal_global_5_10785);
  }

  Instance = CGTypeCreateInstance(CGShadingGetTypeID_shading_type_id, v12, a3, a4, a5, a6, a7, a8);
  v14 = Instance;
  if (Instance)
  {
    *(Instance + 16) = atomic_fetch_add_explicit(CGShadingCreateEmpty_identifier, 1u, memory_order_relaxed) + 1;
    if (a2)
    {
      CFRetain(a2);
      *(v14 + 24) = a2;
      *(v14 + 20) = a1;
      if (v9)
      {
        v15 = *(a2[3] + 48);
LABEL_11:
        v16 = v15 + 1;
        v17 = v15 == -1;
        v18 = malloc_type_malloc(8 * (v15 + 1), 0x100004000313F17uLL);
        if (!v17)
        {
          v19 = v18;
          do
          {
            v20 = *v9++;
            *v19++ = v20;
            --v16;
          }

          while (v16);
        }

        *(v14 + 32) = v18;
      }
    }

    else
    {
      v15 = 0;
      *(Instance + 24) = 0;
      *(Instance + 20) = a1;
      if (v9)
      {
        goto LABEL_11;
      }
    }

    v21 = &CGRectNull;
    if (a4)
    {
      v21 = a4;
    }

    *(v14 + 40) = a4 != 0;
    size = v21->size;
    *(v14 + 48) = v21->origin;
    *(v14 + 64) = size;
    *(v14 + 88) = 0;
    *(v14 + 96) = CGColorSpaceGetHeadroomInfo(a2, 0);
  }

  return v14;
}

void CGContextDrawShading(CGContextRef c, CGShadingRef shading)
{
  if (!c)
  {
    v10 = 0;
LABEL_8:
    handle_invalid_context("CGContextDrawShading", v10, v2, v3, v4, v5, v6, v7);
    return;
  }

  if (*(c + 4) != 1129601108)
  {
    v10 = c;
    goto LABEL_8;
  }

  if (shading)
  {
    v8 = *(c + 5);
    if (v8)
    {
      v9 = *(v8 + 96);
      if (v9)
      {
        v9();
      }
    }
  }
}

void gradient_finalize(uint64_t a1)
{
  CGColorSpaceRelease(*(a1 + 24));
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t ripc_DrawShading(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3;
  v7 = a2;
  v388 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v9 = a1[36];
  }

  else
  {
    v9 = 0;
  }

  v372 = 0u;
  v373 = 0u;
  v371 = 0u;
  v366 = 0u;
  v367 = 0u;
  v368 = 0u;
  v369 = 0u;
  v370 = 0;
  v365 = 0;
  v362 = 0u;
  v363 = 0u;
  v364 = 0u;
  memset(&v361, 0, sizeof(v361));
  v359 = 0;
  v360 = 0;
  result = ripc_GetRenderingState(v9, a2, a3, &v371);
  if (!result)
  {
    return result;
  }

  v17 = (v6 + 24);
  v18 = *(v6 + 24);
  v20 = *(v6 + 40);
  v19 = *(v6 + 56);
  v21 = *(v9 + 40);
  if (v21 != 1.0)
  {
    v20 = vmulq_n_f64(v20, v21);
    v18 = vmulq_n_f64(v18, v21);
    v19 = vmulq_n_f64(v19, v21);
  }

  v22.n64_f64[0] = SDWORD2(v372);
  v23 = SHIDWORD(v372);
  v24 = v373;
  v25 = SDWORD1(v373);
  p_y = &CGRectInfinite.origin.y;
  p_size = &CGRectInfinite.size;
  v28 = (a4 + 48);
  if (*(a4 + 40) == 1)
  {
    p_size = (a4 + 64);
    p_y = (a4 + 56);
    p_height = (a4 + 72);
  }

  else
  {
    v28 = &CGRectInfinite;
    p_height = &CGRectInfinite.size.height;
  }

  v30 = *p_height;
  x = v28->origin.x;
  v32 = *p_y;
  width = p_size->width;
  if (v28->origin.x == -8.98846567e307 && v32 == -8.98846567e307 && width == 1.79769313e308 && v30 == 1.79769313e308)
  {
    v370 = 0;
    v34 = 1;
    y = -8.98846567e307;
    height = 1.79769313e308;
    v37 = 1.79769313e308;
    v38 = -8.98846567e307;
  }

  else
  {
    v354 = v20;
    v355 = v18;
    *&v374.a = v18;
    *&v374.c = v20;
    v356 = v19;
    *&v374.tx = v19;
    v358.n64_f64[0] = SDWORD2(v372);
    v353 = SHIDWORD(v372);
    v352.f64[0] = v373;
    *v357.i64 = SDWORD1(v373);
    v55.n64_u64[0] = CGRectApplyInverseAffineTransform(&v374.a, v22, v23, v24, v25).n64_u64[0];
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v389.origin.x = x;
    v389.origin.y = v32;
    v389.size.width = width;
    v389.size.height = v30;
    v424.origin.x = v55.n64_f64[0];
    v424.origin.y = v57;
    v424.size.width = v59;
    v424.size.height = v61;
    v390 = CGRectIntersection(v389, v424);
    v38 = v390.origin.x;
    if (v390.origin.x == INFINITY || v390.origin.y == INFINITY)
    {
      return 0;
    }

    v37 = v390.size.width;
    result = 0;
    if (v390.size.width == 0.0)
    {
      return result;
    }

    height = v390.size.height;
    if (v390.size.height == 0.0)
    {
      return result;
    }

    y = v390.origin.y;
    v391.origin.x = v55.n64_f64[0];
    v391.origin.y = v57;
    v391.size.width = v59;
    v391.size.height = v61;
    v425.origin.x = v38;
    v425.origin.y = y;
    v425.size.width = v37;
    v425.size.height = height;
    if (CGRectContainsRect(v391, v425))
    {
      v370 = 0;
      v34 = 1;
      v23 = v353;
      v25 = *v357.i64;
      v24 = v352.f64[0];
      v22.n64_u64[0] = v358.n64_u64[0];
    }

    else
    {
      if (v37 < 0.0 || (v103 = v38, v104 = y, v105 = v37, v106 = height, height < 0.0))
      {
        v392.origin.x = v38;
        v392.origin.y = y;
        v392.size.width = v37;
        v392.size.height = height;
        *&v103 = CGRectStandardize(v392);
      }

      v351 = v6;
      v362 = vmlaq_n_f64(vmulq_f64(v354, 0), v355, v105);
      v363 = vmlaq_f64(vmulq_n_f64(v354, v106), 0, v355);
      v364 = vaddq_f64(v356, vmlaq_n_f64(vmulq_n_f64(v354, v104), v355, v103));
      v370 = &v362;
      *&v374.a = v355;
      *&v374.c = v354;
      *&v374.tx = v356;
      v393.origin.x = v38;
      v393.origin.y = y;
      v393.size.width = v37;
      v393.size.height = height;
      *(&v11 - 24) = CGRectApplyAffineTransform(v393, &v374);
      v22.n64_u64[0] = *&v394.origin.x;
      v23 = v394.origin.y;
      v25 = v11.f64[0];
      if (v24 < 0.0 || v11.f64[0] < 0.0)
      {
        v161 = v394.origin.x;
        v162 = v24;
        v358.n64_f64[0] = 0.00390625;
        v107 = vcvtmd_s64_f64(COERCE_DOUBLE(CGRectStandardize(*(&v11 - 24))) + 0.00390625);
        v410.origin.x = v161;
        v410.origin.y = v23;
        v410.size.width = v162;
        v410.size.height = v25;
        v411 = CGRectStandardize(v410);
        v108 = vcvtpd_s64_f64(v411.origin.x + v411.size.width + -0.00390625);
        v411.origin.x = v161;
        v411.origin.y = v23;
        v411.size.width = v162;
        v411.size.height = v25;
        v412 = CGRectStandardize(v411);
        LODWORD(v4) = vcvtmd_s64_f64(v412.origin.y + 0.00390625);
        v412.origin.x = v161;
        v412.origin.y = v23;
        v412.size.width = v162;
        v412.size.height = v25;
        *(&v11 - 24) = CGRectStandardize(v412);
        v24 = v162;
        v22.n64_f64[0] = v161;
      }

      else
      {
        v107 = vcvtmd_s64_f64(v394.origin.x + 0.00390625);
        v108 = vcvtpd_s64_f64(v394.origin.x + v24 + -0.00390625);
        LODWORD(v4) = vcvtmd_s64_f64(v394.origin.y + 0.00390625);
      }

      v34 = 0;
      v359 = v107 | (v4 << 32);
      LODWORD(v360) = v108 - v107;
      HIDWORD(v360) = vcvtpd_s64_f64(v394.origin.y + v11.f64[0] + -0.00390625) - v4;
      v6 = v351;
    }

    v18 = v355;
    v19 = v356;
    v20 = v354;
  }

  v39 = *(*(v6 + 120) + 4);
  v40 = *(a4 + 20);
  result = 1000;
  if (v40 <= 1)
  {
    if (!v40)
    {
      v95 = v24;
      Copy = CGGStateCreateCopy(v6);
      *(Copy + 24) = CGAffineTransformIdentity;
      CGGStateClipToRect(Copy, v22.n64_f64[0], v23, v95, v25);
      v97 = *v17;
      v98 = v17[1];
      *(Copy + 56) = v17[2];
      *(Copy + 40) = v98;
      *(Copy + 24) = v97;
      CGShadingDrawInContextDelegate(a4, a1, v7, Copy, v99, v100, v101, v102);
      CGGStateRelease(Copy);
      return 0;
    }

    v358.n64_u64[0] = v22.n64_u64[0];
    *v357.i64 = v25;
    if (v40 != 1)
    {
      return result;
    }

    v63 = *(a4 + 128);
    v64 = *(a4 + 136);
    v65 = *(a4 + 152) - v63;
    v66 = *(a4 + 160) - v64;
    v67 = *(a4 + 176);
    *v383.f32 = vcvt_f32_f64(v67);
    v383.i64[1] = 0x3F80000000000000;
    v68 = v67.f64[1];
    v69 = v67.f64[1] - v67.f64[0];
    if (v65 == 0.0 && v66 == 0.0)
    {
      v70 = 1.0;
      v71 = 0.0;
      v72 = 1.0;
    }

    else
    {
      v72 = sqrt(v66 * v66 + v65 * v65);
      v70 = v65 / v72;
      v71 = v66 / v72;
    }

    v127 = v72 / v69;
    v12.f64[0] = v70 * v127;
    v14.f64[0] = v71 * v127;
    v15.f64[0] = -(v71 * v127);
    v128 = -(v67.f64[0] * v127);
    v16.f64[0] = v63 + v128 * v70;
    v11.f64[0] = v64 + v128 * v71;
    v112 = vmlaq_n_f64(vmulq_n_f64(v20, v14.f64[0]), v18, v12.f64[0]);
    v129 = vaddq_f64(v19, vmlaq_n_f64(vmulq_n_f64(v20, v11.f64[0]), v18, v16.f64[0]));
    *&v361.a = v112;
    *&v361.c = vmlaq_n_f64(vmulq_n_f64(v20, v12.f64[0]), v18, v15.f64[0]);
    *&v361.tx = v129;
    v353 = *(a4 + 32);
    v130 = v23;
    v131 = *v357.i64;
    if (v353 == 0.0 && (*(a4 + 144) & 1) == 0 && (*(a4 + 168) & 1) == 0)
    {
      v341 = v16;
      v342 = v11;
      v343 = v15;
      v344 = v14;
      v345 = v12;
      v346 = v67;
      v348 = v129;
      v352 = v112;
      v347.f64[0] = v67.f64[1] - v67.f64[0];
      v354 = v20;
      v355 = v18;
      v356 = v19;
      v374 = v361;
      v132 = v24;
      v133.n64_u64[0] = CGRectApplyInverseAffineTransform(&v374.a, v358, v23, v24, *v357.i64).n64_u64[0];
      result = 0;
      if (v133.n64_f64[0] > v68)
      {
        return result;
      }

      v137 = v346.f64[0];
      if (v133.n64_f64[0] + v135.n64_f64[0] < v346.f64[0])
      {
        return result;
      }

      v138 = v134.n64_u64[0];
      v139 = v347.f64[0];
      v140 = v136.n64_u64[0];
      v399 = CGRectIntersection(*v133.n64_u64, *&v137);
      if (v34)
      {
        *&v374.a = *&v361.a;
        *&v374.c = *&v361.c;
        v141 = *&v361.tx;
      }

      else
      {
        v374.a = v345.f64[0];
        v374.b = v344.f64[0];
        v374.c = v343.f64[0];
        v374.d = v345.f64[0];
        v374.tx = v341.f64[0];
        v374.ty = v342.f64[0];
        v429 = CGRectApplyAffineTransform(v399, &v374);
        v416.origin.x = v38;
        v416.origin.y = y;
        v416.size.width = v37;
        v416.size.height = height;
        v399 = CGRectIntersection(v416, v429);
        *&v374.c = v354;
        *&v374.a = v355;
        v141 = v356;
      }

      *&v374.tx = v141;
      v430 = CGRectApplyAffineTransform(v399, &v374);
      v417.origin.y = v23;
      *&v417.size.height = v357.i64[0];
      v417.origin.x = v358.n64_f64[0];
      v417.size.width = v132;
      *(&v24 - 2) = CGRectIntersection(v417, v430);
      v358.n64_u64[0] = v179;
      v130 = v180;
      v131 = v181;
      v69 = v347.f64[0];
      v112 = v352;
      v129 = v348;
    }

    v50 = v6;
    if (v24 < 0.0 || v131 < 0.0)
    {
      v184 = v358.n64_u64[0];
      v185 = v130;
      v186 = v131;
      v187 = v24;
      v188 = v69;
      v352 = v112;
      v348 = v129;
      v182 = vcvtmd_s64_f64(COERCE_DOUBLE(CGRectStandardize(*(&v24 - 2))) + 0.00390625);
      v418.origin.x = v358.n64_f64[0];
      v418.origin.y = v130;
      v418.size.width = v187;
      v418.size.height = v131;
      v419 = CGRectStandardize(v418);
      v183 = vcvtpd_s64_f64(v419.origin.x + v419.size.width + -0.00390625);
      v419.origin.x = v358.n64_f64[0];
      v419.origin.y = v130;
      v419.size.width = v187;
      v419.size.height = v131;
      v420 = CGRectStandardize(v419);
      LODWORD(v4) = vcvtmd_s64_f64(v420.origin.y + 0.00390625);
      v420.origin.x = v358.n64_f64[0];
      v420.origin.y = v130;
      v420.size.width = v187;
      v420.size.height = v131;
      v421 = CGRectStandardize(v420);
      v129 = v348;
      v112.f64[0] = v352.f64[0];
      v69 = v188;
      v130 = v421.origin.y;
      v131 = v421.size.height;
    }

    else
    {
      v182 = vcvtmd_s64_f64(v358.n64_f64[0] + 0.00390625);
      v183 = vcvtpd_s64_f64(v358.n64_f64[0] + v24 + -0.00390625);
      LODWORD(v4) = vcvtmd_s64_f64(v130 + 0.00390625);
    }

    v189 = vcvtpd_s64_f64(v130 + v131 + -0.00390625);
    *&v366 = v182 | (v4 << 32);
    v190.f64[0] = v129.f64[0];
    v190.f64[1] = v189;
    DWORD2(v366) = v183 - v182;
    HIDWORD(v366) = v189 - v4;
    v129.f64[0] = v182;
    *&v361.tx = vsubq_f64(v190, v129);
    v148 = *&v361.b;
    *&v361.b = vnegq_f64(*&v361.b);
    *&v369 = &v361;
    *(&v367 + 1) = 0;
    *&v368 = 0;
    *&v367 = &v383;
    v191 = *(a4 + 144);
    DWORD2(v368) = v191;
    if (*(a4 + 168) == 1)
    {
      DWORD2(v368) = v191 | 2;
    }

    v125 = (a4 + 192);
    v150 = fabs(v69);
    goto LABEL_113;
  }

  if (v40 == 2)
  {
    v15.f64[0] = *(a4 + 128);
    v14.f64[0] = *(a4 + 136);
    v73 = *(a4 + 160) - v15.f64[0];
    v74 = *(a4 + 168) - v14.f64[0];
    v75 = *(a4 + 192);
    v76 = *(a4 + 144);
    v77 = *(a4 + 176);
    v78 = vdupq_laneq_s64(v75, 1);
    v79 = vsubq_f64(v78, v75);
    *v383.f32 = vcvt_f32_f64(v75);
    v383.i64[1] = 0x3F80000000000000;
    *v357.i64 = v25;
    v358.n64_u64[0] = v22.n64_u64[0];
    if (v73 == 0.0 && v74 == 0.0)
    {
      v80 = 1.0;
      v81 = 0.0;
      v82 = 0.0;
      v83 = vabdd_f64(v77, v76) / v79.f64[0];
    }

    else
    {
      v109 = sqrt(v74 * v74 + v73 * v73);
      v80 = v73 / v109;
      v82 = v74 / v109;
      v83 = (v109 + vabdd_f64(v77, v76)) / v79.f64[0];
      v81 = v109 / v83;
    }

    v110 = v76 / v83;
    v111 = v77 / v83;
    v78.f64[0] = v80 * v83;
    v13.f64[0] = v82 * v83;
    v11.f64[0] = -(v82 * v83);
    v112 = vmlaq_n_f64(vmulq_n_f64(v20, v13.f64[0]), v18, v78.f64[0]);
    v113 = vaddq_f64(v19, vmlaq_n_f64(vmulq_n_f64(v20, v14.f64[0]), v18, v15.f64[0]));
    *&v361.a = v112;
    *&v361.c = vmlaq_n_f64(vmulq_n_f64(v20, v78.f64[0]), v18, v11.f64[0]);
    *&v361.tx = v113;
    v114 = v110;
    v115 = v81;
    *v384 = v114;
    *&v384[1] = v115;
    v116 = v111;
    *&v384[2] = v116;
    v353 = *(a4 + 32);
    if (v353 != 0.0 || (*(a4 + 152) & 1) != 0 || (*(a4 + 184) & 1) != 0)
    {
      v117 = *v357.i64;
    }

    else
    {
      v341 = v11;
      v342 = v13;
      v343 = v78;
      v344 = v15;
      v345 = v14;
      v346 = v113;
      v347 = v112;
      v348 = v79;
      v354 = v20;
      v355 = v18;
      v356 = v19;
      v374 = v361;
      v352.f64[0] = v24;
      v163.n64_u64[0] = CGRectApplyInverseAffineTransform(&v374.a, v358, v23, v24, *v357.i64).n64_u64[0];
      v167 = -v110;
      if (v110 <= v81 + v111)
      {
        v168 = v81 + v111;
      }

      else
      {
        v168 = v110;
      }

      if (v81 - v111 < v167)
      {
        v167 = v81 - v111;
      }

      if (v111 <= v110)
      {
        v169 = v110;
      }

      else
      {
        v169 = v111;
      }

      if (v163.n64_f64[0] > v168 || v163.n64_f64[0] + v165.n64_f64[0] < v167 || v164.n64_f64[0] > v169)
      {
        return 0;
      }

      v172 = -v169;
      if (v164.n64_f64[0] + v166.n64_f64[0] < -v169)
      {
        return 0;
      }

      v173 = v168 - v167;
      v174 = v169 + v169;
      v413 = CGRectIntersection(*v163.n64_u64, *&v167);
      if (v34)
      {
        *&v374.a = *&v361.a;
        *&v374.c = *&v361.c;
        v175 = *&v361.tx;
      }

      else
      {
        v374.a = v343.f64[0];
        v374.b = v342.f64[0];
        v374.c = v341.f64[0];
        v374.d = v343.f64[0];
        v374.tx = v344.f64[0];
        v374.ty = v345.f64[0];
        v431 = CGRectApplyAffineTransform(v413, &v374);
        v422.origin.x = v38;
        v422.origin.y = y;
        v422.size.width = v37;
        v422.size.height = height;
        v413 = CGRectIntersection(v422, v431);
        *&v374.a = v355;
        *&v374.c = v354;
        v175 = v356;
      }

      *&v374.tx = v175;
      v432 = CGRectApplyAffineTransform(v413, &v374);
      *&v423.size.height = v357.i64[0];
      v423.origin.x = v358.n64_f64[0];
      v423.origin.y = v23;
      v423.size.width = v352.f64[0];
      *(&v24 - 2) = CGRectIntersection(v423, v432);
      v358.n64_u64[0] = v337;
      v23 = v338;
      v117 = v339;
      v112 = v347;
      v79 = v348;
      v113 = v346;
    }

    v50 = v6;
    if (v24 < 0.0 || v117 < 0.0)
    {
      v142 = v358.n64_u64[0];
      v143 = v23;
      v144 = v117;
      v145 = v24;
      v347 = v112;
      v348 = v79;
      v346 = v113;
      v118 = vcvtmd_s64_f64(COERCE_DOUBLE(CGRectStandardize(*(&v24 - 2))) + 0.00390625);
      v400.origin.x = v358.n64_f64[0];
      v400.origin.y = v23;
      v400.size.width = v145;
      v400.size.height = v117;
      v401 = CGRectStandardize(v400);
      v119 = vcvtpd_s64_f64(v401.origin.x + v401.size.width + -0.00390625);
      v401.origin.x = v358.n64_f64[0];
      v401.origin.y = v23;
      v401.size.width = v145;
      v401.size.height = v117;
      v402 = CGRectStandardize(v401);
      LODWORD(v4) = vcvtmd_s64_f64(v402.origin.y + 0.00390625);
      v402.origin.x = v358.n64_f64[0];
      v402.origin.y = v23;
      v402.size.width = v145;
      v402.size.height = v117;
      v403 = CGRectStandardize(v402);
      v113 = v346;
      v112.f64[0] = v347.f64[0];
      v79.f64[0] = v348.f64[0];
      v23 = v403.origin.y;
      v117 = v403.size.height;
    }

    else
    {
      v118 = vcvtmd_s64_f64(v358.n64_f64[0] + 0.00390625);
      v119 = vcvtpd_s64_f64(v358.n64_f64[0] + v24 + -0.00390625);
      LODWORD(v4) = vcvtmd_s64_f64(v23 + 0.00390625);
    }

    v146 = vcvtpd_s64_f64(v23 + v117 + -0.00390625);
    *&v366 = v118 | (v4 << 32);
    DWORD2(v366) = v119 - v118;
    HIDWORD(v366) = v146 - v4;
    v147.f64[0] = v113.f64[0];
    v147.f64[1] = v146;
    v113.f64[0] = v118;
    *&v361.tx = vsubq_f64(v147, v113);
    v148 = *&v361.b;
    *&v361.b = vnegq_f64(*&v361.b);
    *&v369 = &v361;
    *&v367 = &v383;
    *(&v367 + 1) = v384;
    *&v368 = 0;
    v149 = *(a4 + 152);
    DWORD2(v368) = v149;
    if (*(a4 + 184) == 1)
    {
      DWORD2(v368) = v149 | 2;
    }

    v125 = (a4 + 208);
    v150 = fabs(v79.f64[0]);
LABEL_113:
    v90 = vmulq_f64(v148, v148);
    v126 = vcvtpd_s64_f64(v150 * sqrt(v90.f64[0] + v112.f64[0] * v112.f64[0]));
    goto LABEL_114;
  }

  if (v40 != 3)
  {
    if (v40 != 4)
    {
      return result;
    }

    v42 = *(a4 + 128);
    v41 = *(a4 + 144);
    v383 = vcvt_hight_f32_f64(vcvt_f32_f64(v42), v41);
    v43 = vsubq_f64(vzip2q_s64(v42, v41), vzip1q_s64(v42, v41));
    v44 = *(a4 + 168);
    v45 = *(a4 + 184);
    v46 = *(a4 + 200);
    v47 = vmlaq_n_f64(vmulq_laneq_f64(v20, v44, 1), v18, v44.f64[0]);
    v48 = vmlaq_n_f64(vmulq_laneq_f64(v20, v45, 1), v18, v45.f64[0]);
    v49 = vaddq_f64(v19, vmlaq_n_f64(vmulq_laneq_f64(v20, v46, 1), v18, v46.f64[0]));
    *&v361.a = v47;
    *&v361.c = v48;
    *&v361.tx = v49;
    v353 = *(a4 + 32);
    if (v353 == 0.0)
    {
      v341 = v46;
      v342 = v45;
      v343 = v44;
      v344 = v42;
      v346 = v48;
      v347 = v49;
      v348 = v47;
      v354 = v20;
      v355 = v18;
      v356 = v19;
      v374 = v361;
      v151 = v24;
      v352 = v43;
      v345 = v41;
      v404.origin.x = CGRectApplyInverseAffineTransform(&v374.a, v22, v23, v24, v25).n64_f64[0];
      v426.size = v352;
      v426.origin.x = v344.f64[0];
      v426.origin.y = v345.f64[0];
      v405 = CGRectIntersection(v404, v426);
      result = 0;
      if (v405.origin.x == INFINITY)
      {
        return result;
      }

      if (v405.origin.y == INFINITY)
      {
        return result;
      }

      result = 0;
      if (v405.size.width == 0.0 || v405.size.height == 0.0)
      {
        return result;
      }

      if (v34)
      {
        *&v374.a = *&v361.a;
        *&v374.c = *&v361.c;
        v152 = *&v361.tx;
      }

      else
      {
        *&v374.a = v343;
        *&v374.c = v342;
        *&v374.tx = v341;
        v427 = CGRectApplyAffineTransform(v405, &v374);
        v414.origin.x = v38;
        v414.origin.y = y;
        v414.size.width = v37;
        v414.size.height = height;
        v405 = CGRectIntersection(v414, v427);
        *&v374.a = v355;
        *&v374.c = v354;
        v152 = v356;
      }

      *&v374.tx = v152;
      v428 = CGRectApplyAffineTransform(v405, &v374);
      v415.origin.y = v23;
      v415.size.height = v25;
      v415.origin.x = v22.n64_f64[0];
      v415.size.width = v151;
      *(&v24 - 2) = CGRectIntersection(v415, v428);
      v22.n64_u64[0] = v176;
      v23 = v177;
      v25 = v178;
      v43 = v352;
      v49 = v347;
      v47 = v348;
      v48 = v346;
    }

    v50 = v6;
    v51 = *&v48.i64[1];
    v52 = *&v47.i64[1];
    if (v24 < 0.0 || v25 < 0.0)
    {
      v153 = v22.n64_u64[0];
      v154 = v23;
      v347 = v49;
      v348 = v47;
      v155 = v25;
      v156 = v24;
      v352 = v43;
      v346 = v48;
      v53 = vcvtmd_s64_f64(COERCE_DOUBLE(CGRectStandardize(*(&v24 - 2))) + 0.00390625);
      v406.origin.x = v22.n64_f64[0];
      v406.origin.y = v23;
      v406.size.width = v156;
      v406.size.height = v25;
      v407 = CGRectStandardize(v406);
      v54 = vcvtpd_s64_f64(v407.origin.x + v407.size.width + -0.00390625);
      v407.origin.x = v22.n64_f64[0];
      v407.origin.y = v23;
      v407.size.width = v156;
      v407.size.height = v25;
      v408 = CGRectStandardize(v407);
      LODWORD(v4) = vcvtmd_s64_f64(v408.origin.y + 0.00390625);
      v408.origin.x = v22.n64_f64[0];
      v408.origin.y = v23;
      v408.size.width = v156;
      v408.size.height = v25;
      v409 = CGRectStandardize(v408);
      v48 = v346;
      v49 = v347;
      v43 = v352;
      v23 = v409.origin.y;
      v25 = v409.size.height;
      v47 = v348;
    }

    else
    {
      v53 = vcvtmd_s64_f64(v22.n64_f64[0] + 0.00390625);
      v54 = vcvtpd_s64_f64(v22.n64_f64[0] + v24 + -0.00390625);
      LODWORD(v4) = vcvtmd_s64_f64(v23 + 0.00390625);
    }

    v157 = vcvtpd_s64_f64(v23 + v25 + -0.00390625);
    *&v366 = v53 | (v4 << 32);
    DWORD2(v366) = v54 - v53;
    HIDWORD(v366) = v157 - v4;
    v158 = vmulq_f64(v43, vzip1q_s64(v47, v48));
    v159 = vmulq_f64(v43, vzip2q_s64(v47, v48));
    v160.f64[0] = v49.f64[0];
    v160.f64[1] = v157;
    v49.f64[0] = v53;
    *&v361.tx = vsubq_f64(v160, v49);
    v361.b = -v52;
    v361.d = -v51;
    *&v369 = &v361;
    v125 = (a4 + 160);
    *(&v367 + 1) = 0;
    *&v368 = 0;
    *&v367 = &v383;
    DWORD2(v368) = 0;
    v90 = vcvtq_s64_f64(vrndpq_f64(vsqrtq_f64(vmlaq_f64(vmulq_f64(v159, v159), v158, v158))));
    *&v90.f64[0] = vmovn_s64(v90);
    goto LABEL_115;
  }

  v50 = v6;
  v84 = *(a4 + 152);
  *v383.f32 = vcvt_f32_f64(v84);
  v383.i64[1] = 0x3F80000000000000;
  *&v84.f64[0] = vsub_f32(vdup_lane_s32(*v383.f32, 1), *v383.f32);
  v352 = v84;
  *v84.f64 = *(a4 + 144);
  v384[0] = LODWORD(v84.f64[0]);
  v353 = *(a4 + 32);
  v85 = v24;
  v355 = v18;
  v356 = v19;
  v354 = v20;
  v86 = __sincosf_stret(*v84.f64);
  v87 = -v86.__sinval;
  v88 = vmlaq_n_f64(vmulq_n_f64(v354, v87), v355, -v86.__cosval);
  v89 = vmlaq_n_f64(vmulq_n_f64(v354, v86.__cosval), v355, v87);
  v90 = vmlaq_n_f64(vmulq_laneq_f64(v354, *(a4 + 128), 1), v355, *(a4 + 128));
  v91 = vaddq_f64(v356, v90);
  *&v361.a = v88;
  *&v361.c = v89;
  v92 = v91.f64[1];
  if (v85 < 0.0 || v25 < 0.0)
  {
    v395.origin.x = v22.n64_f64[0];
    v395.origin.y = v23;
    v395.size.width = v85;
    v356 = v91;
    v395.size.height = v25;
    v93 = vcvtmd_s64_f64(COERCE_DOUBLE(CGRectStandardize(v395)) + 0.00390625);
    v396.origin.x = v22.n64_f64[0];
    v396.origin.y = v23;
    v396.size.width = v85;
    v396.size.height = v25;
    v397 = CGRectStandardize(v396);
    v94 = vcvtpd_s64_f64(v397.origin.x + v397.size.width + -0.00390625);
    v397.origin.x = v22.n64_f64[0];
    v397.origin.y = v23;
    v397.size.width = v85;
    v397.size.height = v25;
    v398 = CGRectStandardize(v397);
    LODWORD(v6) = vcvtmd_s64_f64(v398.origin.y + 0.00390625);
    v398.origin.x = v22.n64_f64[0];
    v398.origin.y = v23;
    v398.size.width = v85;
    v398.size.height = v25;
    *v90.f64 = CGRectStandardize(v398);
    v23 = v120;
    v25 = v91.f64[0];
    v91.f64[0] = v356.f64[0];
  }

  else
  {
    v93 = vcvtmd_s64_f64(v22.n64_f64[0] + 0.00390625);
    v94 = vcvtpd_s64_f64(v22.n64_f64[0] + v85 + -0.00390625);
    LODWORD(v6) = vcvtmd_s64_f64(v23 + 0.00390625);
  }

  v121 = vcvtpd_s64_f64(v23 + v25 + -0.00390625);
  *&v366 = v93 | (v6 << 32);
  DWORD2(v366) = v94 - v93;
  HIDWORD(v366) = v121 - v6;
  v361.tx = v91.f64[0] - v93;
  v361.ty = v121 - v92;
  *&v361.b = vnegq_f64(*&v361.b);
  v122 = (v6 - v361.ty) * (v6 - v361.ty);
  v123 = (v121 - v361.ty) * (v121 - v361.ty);
  v124 = fmax(fmax(v122 + (v93 - v361.tx) * (v93 - v361.tx), v122 + (v94 - v361.tx) * (v94 - v361.tx)), fmax(v123 + (v93 - v361.tx) * (v93 - v361.tx), v123 + (v94 - v361.tx) * (v94 - v361.tx)));
  *&v369 = &v361;
  *&v367 = &v383;
  *(&v367 + 1) = 0;
  *&v368 = v384;
  DWORD2(v368) = 0;
  v125 = (a4 + 168);
  v126 = vcvtpd_s64_f64(fabsf(*v352.f64) * (sqrtf(v124) * 3.1416));
  if (v126 <= 128)
  {
    v126 = 128;
  }

LABEL_114:
  *&v90.f64[0] = v126 | 0x100000000;
LABEL_115:
  v357 = v90;
  v192 = v50;
  v358.n64_u64[0] = *v125;
  v193 = *(a4 + 24);
  ContentHeadroom = CGShadingGetContentHeadroom(a4);
  v382 = 0;
  v380 = 0u;
  v381 = 0u;
  v378 = 0u;
  v379 = 0u;
  v376 = 0u;
  v377 = 0u;
  v375 = 0u;
  memset(&v374, 0, sizeof(v374));
  v198 = *(*(v50 + 120) + 4);
  v199 = &unk_1ED4E1000;
  if (RIPGetCacheState_predicate != -1)
  {
    dispatch_once(&RIPGetCacheState_predicate, &__block_literal_global_10_13792);
  }

  if (*(RIPGetCacheState_cache_state + 32))
  {
    v200 = vmin_u32(*v357.i8, 0x100000001000);
    if (v358.n64_f64[0] == 0.0)
    {
      v201 = 0;
    }

    else
    {
      v201 = *(v358.n64_u64[0] + 96);
    }

    v385[0] = MEMORY[0x1E69E9820];
    v385[1] = 0x40000000;
    v385[2] = __lookup_function_entry_block_invoke;
    v385[3] = &__block_descriptor_tmp_7502;
    v385[4] = v9;
    v385[5] = &v383;
    *&v202 = v200.u32[0];
    *(&v202 + 1) = v200.u32[1];
    v386 = v202;
    v387 = v198 << 12 >> 28;
    Entry = RIPDataGetEntry(v9, v201, 0, v385);
    if (Entry)
    {
      goto LABEL_185;
    }

    if (RIPGetCacheState_predicate != -1)
    {
      dispatch_once(&RIPGetCacheState_predicate, &__block_literal_global_10_13792);
    }
  }

  if (*(RIPGetCacheState_cache_state + 32) == 1)
  {
    if (v358.n64_f64[0] == 0.0)
    {
      v204 = 0.0;
    }

    else
    {
      v204 = *(v358.n64_u64[0] + 96);
    }

    v374.tx = v204;
  }

  result = 1000;
  if (*(v9 + 128) <= 2u && v358.n64_f64[0] != 0.0)
  {
    v205 = *(v358.n64_u64[0] + 32);
    if (v205 == 2)
    {
      if (v193 == 0.0)
      {
        v210 = 0.0;
      }

      else
      {
        v210 = *(*(*&v193 + 24) + 48);
      }

      *&v352.f64[0] = v9;
      v238 = v383.f32[0];
      v239 = v383.f32[2];
      v240 = *(v358.n64_u64[0] + 48);
      if (*&v210 != v240 && *&v210 + 1 != v240)
      {
        _CGHandleAssert("acquire_function_2d", 344, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/RIP/RIPFunction.c", "(components == CGFunctionGetRangeDimension(function)) || (components + 1 == CGFunctionGetRangeDimension(function))", "", v194, v195, v196, SLOBYTE(v341.f64[0]));
      }

      v354.f64[0] = v193;
      v241 = vdupq_n_s64(0x1000uLL);
      v357 = vandq_s8(vaddw_u32(vdupq_n_s64(3uLL), vadd_s32(*v357.i8, 0x200000002)), vdupq_n_s64(0x1FFFFFFFCuLL));
      v242 = vbslq_s8(vcgtq_u64(v241, v357), v357, v241);
      v243 = v242.i64[0];
      v346 = v242;
      v244 = v242.u64[1];
      v245 = v383.f32[1] - v383.f32[0];
      v246 = (v242.i64[0] - 2);
      v247 = v383.f32[3] - v383.f32[2];
      v248 = (v242.i64[1] - 2);
      v249 = v242.i64[1] * v242.i64[0];
      *&v344.f64[0] = 4 * *&v210 * v242.i64[1] * v242.i64[0];
      *&v347.f64[0] = malloc_type_malloc(*&v344.f64[0], 0x100004052888210uLL);
      v251 = *(v358.n64_u64[0] + 48);
      v350 = v7;
      v351 = v192;
      v349 = v39;
      v348.f64[0] = v210;
      *&v345.f64[0] = v249;
      if (v251 <= *&v210)
      {
        v216 = 0;
      }

      else
      {
        v216 = malloc_type_calloc(v249, 4uLL, 0x100004052888210uLL);
      }

      v252 = v245 / v246;
      v253 = v247 / v248;
      if (v357.i64[1])
      {
        v254 = 0;
        v255 = v238 - (v252 * 0.5);
        if (v243 <= 1)
        {
          v256 = 1;
        }

        else
        {
          v256 = v243;
        }

        if (v244 <= 1)
        {
          v257 = 1;
        }

        else
        {
          v257 = v244;
        }

        *&v356.f64[0] = v257;
        v258 = v239 - (v253 * 0.5);
        *&v355.f64[0] = 4 * v243;
        v259 = v216;
        v260 = *&v347.f64[0];
        do
        {
          *(v385 + 1) = v258 + (v254 * v253);
          if (v357.i64[0])
          {
            v261 = 0;
            v262 = v259;
            do
            {
              *v385 = v255 + (v261 * v252);
              if (v216)
              {
                v263 = v262;
              }

              else
              {
                v263 = 0;
              }

              v250.n128_f32[0] = v255 + (v261 * v252);
              function_evaluate(v358.n64_i64[0], v385, v260, v263, v250);
              ++v261;
              v260 += *&v348.f64[0];
              ++v262;
            }

            while (v256 != v261);
          }

          ++v254;
          v259 = (v259 + *&v355.f64[0]);
        }

        while (v254 != *&v356.f64[0]);
      }

      v9 = *&v352.f64[0];
      v264 = *(*&v352.f64[0] + 128);
      if (v264 < 3)
      {
        v265 = qword_1844DF4F0[v264];
        v226 = malloc_type_calloc(v265 * *&v345.f64[0], 4uLL, 0x100004052888210uLL);
        v192 = v351;
        v266 = rip_function_convert_color_components(*(*&v352.f64[0] + 120), *&v354.f64[0], v351, *&v345.f64[0], *&v347.f64[0], 32 * *&v348.f64[0], SLODWORD(v344.f64[0]), v226, ContentHeadroom, 32 * v265, 4 * v265 * LODWORD(v345.f64[0]));
        v199 = &unk_1ED4E1000;
        v237 = v358.n64_f64[0];
        if ((v266 & 1) == 0)
        {
          CGPostError("%s - rip_function_convert_color_components failed", v267, v268, v269, v270, v271, v272, v273, "acquire_function_2d");
        }

        free(*&v347.f64[0]);
        v376 = *(*&v352.f64[0] + 132);
        LODWORD(v377) = *(*&v352.f64[0] + 148);
        v274 = *(*&v352.f64[0] + 128);
        DWORD2(v377) = (*(*(v351 + 120) + 4) << 12) >> 28;
        DWORD1(v377) = v274;
        *&v379 = v383.f32[0] - v252;
        *(&v379 + 1) = v252 + v383.f32[1];
        *(&v379 + 2) = v383.f32[2] - v253;
        v236 = v253 + v383.f32[3];
        v39 = v349;
        v235 = v346;
        goto LABEL_184;
      }
    }

    else
    {
      if (v205 != 1)
      {
        return result;
      }

      v349 = v39;
      v206 = (v357.i32[0] + 2) + 15;
      v207 = v206 & 0x1FFFFFFF0;
      if ((v206 & 0x1FFFFF000) != 0)
      {
        v208 = 4096;
      }

      else
      {
        v208 = v206 & 0x1FFFFFFF0;
      }

      if (v193 == 0.0)
      {
        v209 = 0;
      }

      else
      {
        v209 = *(*(*&v193 + 24) + 48);
      }

      v350 = v7;
      v211 = v383.f32[0];
      v212 = *(v358.n64_u64[0] + 48);
      if (v209 != v212 && v209 + 1 != v212)
      {
        _CGHandleAssert("acquire_function_1d", 245, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/RIP/RIPFunction.c", "(components == CGFunctionGetRangeDimension(function)) || (components + 1 == CGFunctionGetRangeDimension(function))", "", v194, v195, v196, SLOBYTE(v341.f64[0]));
      }

      v354.f64[0] = v193;
      *&v352.f64[0] = v9;
      v213 = v383.f32[1] - v383.f32[0];
      *&v356.f64[0] = 4 * v209 * v208;
      v357.i64[0] = malloc_type_malloc(*&v356.f64[0], 0x100004052888210uLL);
      v215 = *(v358.n64_u64[0] + 48);
      v351 = v192;
      if (v215 <= v209)
      {
        v216 = 0;
      }

      else
      {
        v216 = malloc_type_calloc(v208, 4uLL, 0x100004052888210uLL);
      }

      v217 = v213 / (v208 - 2);
      if (v207)
      {
        v218 = 0;
        v219 = v211 + (v217 * -0.5);
        if (v208 <= 1)
        {
          v220 = 1;
        }

        else
        {
          v220 = v208;
        }

        v221 = v216;
        v222 = v357.i64[0];
        do
        {
          *v385 = v219 + (v218 * v217);
          if (v216)
          {
            v223 = v221;
          }

          else
          {
            v223 = 0;
          }

          v214.n128_f32[0] = v219 + (v218 * v217);
          function_evaluate(v358.n64_i64[0], v385, v222, v223, v214);
          ++v218;
          v222 += v209;
          ++v221;
        }

        while (v220 != v218);
      }

      v9 = *&v352.f64[0];
      v224 = *(*&v352.f64[0] + 128);
      if (v224 < 3)
      {
        v225 = qword_1844DF4F0[v224];
        v226 = malloc_type_calloc(v225 * v208, 4uLL, 0x100004052888210uLL);
        v192 = v351;
        if ((rip_function_convert_color_components(*(*&v352.f64[0] + 120), *&v354.f64[0], v351, v208, v357.i64[0], 32 * v209, SLODWORD(v356.f64[0]), v226, ContentHeadroom, 32 * v225, 4 * v225 * v208) & 1) == 0)
        {
          CGPostError("%s - rip_function_convert_color_components failed", v227, v228, v229, v230, v231, v232, v233, "acquire_function_1d");
        }

        free(v357.i64[0]);
        v376 = *(*&v352.f64[0] + 132);
        LODWORD(v377) = *(*&v352.f64[0] + 148);
        v234 = *(*&v352.f64[0] + 128);
        DWORD2(v377) = (*(*(v351 + 120) + 4) << 12) >> 28;
        DWORD1(v377) = v234;
        *&v379 = v383.f32[0] - v217;
        *(&v379 + 1) = v217 + v383.f32[1];
        DWORD2(v379) = 0;
        v235 = vdupq_n_s64(1uLL);
        v235.i64[0] = v208;
        v236 = 1.0;
        v39 = v349;
        v199 = &unk_1ED4E1000;
        v237 = v358.n64_f64[0];
LABEL_184:
        *(&v379 + 3) = v236;
        v378 = v235;
        *&v380 = v226;
        *(&v380 + 1) = v216;
        Entry = &v374;
        v374.ty = v237;
        v7 = v350;
        v193 = v354.f64[0];
LABEL_185:
        v275 = (v39 << 12 >> 28);
        *(&v369 + 1) = Entry + 8;
        if (*(v7 + 81) == 1 && (*(*(v192 + 120) + 7) & 1) != 0)
        {
          v276 = v193;
          *(v9 + 108) = *(v9 + 108) | 0xFF00;
          v277 = -256;
        }

        else
        {
          v276 = v193;
          v277 = 0;
          *(v9 + 108) = *(v9 + 108);
        }

        v278 = v277 | *(v7 + 82);
        *(v9 + 108) = v278;
        *(v9 + 112) = v275;
        v279 = *(v192 + 120);
        *(v9 + 104) = (*(v279 + 4) << 16) >> 24;
        v280 = *(v279 + 8);
        *(v9 + 152) = v280;
        v358.n64_u64[0] = (Entry + 8);
        if (v353 == 0.0)
        {
          v282 = 0;
          goto LABEL_211;
        }

        v354.f64[0] = v276;
        if (v276 == 0.0)
        {
          v281 = 0;
        }

        else
        {
          v281 = *(*(*&v276 + 24) + 48);
        }

        v283 = *(*&v353 + 8 * v281);
        Cache = CGColorTransformGetCache(*(v9 + 120));
        v351 = v192;
        if (Cache)
        {
          v286 = Cache[2];
          if (v286)
          {
            v287 = *(*(v286 + 24) + 48);
            if (v287 >> 61)
            {
              v288 = v7;
              MEMORY[0x1EEE9AC00](Cache, v285);
              v289 = &v340;
              v290 = 0;
LABEL_205:
              if (CGColorTransformConvertColorComponents(*(v9 + 120), *&v354.f64[0], v275, *&v353, v290))
              {
                RIPColorCreateWithColor(*(v9 + 128), v290, v287, v283);
                v282 = v293;
              }

              else
              {
                v282 = 0;
              }

              if (v290 != v289)
              {
                free(v290);
              }

              v278 = *(v9 + 108);
              v7 = v288;
              v192 = v351;
              v199 = &unk_1ED4E1000;
LABEL_211:
              if (v278 && (*(*(v9 + 48) + 29) & 2) != 0)
              {
                v294 = *(v192 + 120);
                v295 = *(v294 + 24);
                v296 = *(v294 + 32);
                v297 = *(v9 + 40);
                v298 = v297 == 1.0;
                v299 = *(v7 + 24) * v297;
                v300 = *(v7 + 32) * v297;
                v301 = *(v7 + 40) * v297;
                v302 = *(v7 + 48) * v297;
                v303 = *(v7 + 56) * v297;
                v304 = *(v7 + 64) * v297;
                if (v298)
                {
                  v299 = *(v7 + 24);
                  v305 = *(v7 + 32);
                }

                else
                {
                  v305 = v300;
                }

                if (v298)
                {
                  v306 = *(v7 + 40);
                }

                else
                {
                  v306 = v301;
                }

                if (v298)
                {
                  v307 = *(v7 + 48);
                }

                else
                {
                  v307 = v302;
                }

                if (v298)
                {
                  v308 = *(v7 + 56);
                }

                else
                {
                  v308 = v303;
                }

                if (v298)
                {
                  v309 = *(v7 + 64);
                }

                else
                {
                  v309 = v304;
                }

                v310 = v296 * v306 + v299 * v295 + v308;
                if (v310 <= 1073741820.0)
                {
                  v312 = vcvtmd_s64_f64(v310);
                  if (v310 >= -1073741820.0)
                  {
                    v311 = v312;
                  }

                  else
                  {
                    v311 = -1073741823;
                  }
                }

                else
                {
                  v311 = 0x3FFFFFFF;
                }

                LODWORD(v365) = v311;
                v313 = v296 * v307 + v305 * v295 + v309;
                if (v313 <= 1073741820.0)
                {
                  if (v313 >= -1073741820.0)
                  {
                    v314 = vcvtmd_s64_f64(v313);
                  }

                  else
                  {
                    v314 = -1073741823;
                  }
                }

                else
                {
                  v314 = 0x3FFFFFFF;
                }

                HIDWORD(v365) = v314;
              }

              else
              {
                v365 = 0;
              }

              if (*(&v373 + 1) && (*(*(&v373 + 1) + 12) & 0x80) != 0)
              {
                (*(**(&v373 + 1) + 80))();
              }

              else
              {
                if (v370)
                {
                  v315 = &v359;
                }

                else
                {
                  v315 = 0;
                }

                RIPLayerBltShade(*(v9 + 48), v371, v315, &v366, v282, v9 + 104, v195, v196);
              }

              free(v282);
              v323 = v9;
              if (v199[495] != -1)
              {
                dispatch_once(&RIPGetCacheState_predicate, &__block_literal_global_10_13792);
              }

              if (*(RIPGetCacheState_cache_state + 32) == 1 && (v324 = Entry[5]) != 0)
              {
                v325 = Entry[4];
                if (!v325)
                {
                  v326 = RIPDataCreate(Entry[5], v316, v317, v318, v319, v320, v321, v322);
                  v327 = 0;
                  atomic_compare_exchange_strong_explicit((v324 + 96), &v327, v326, memory_order_relaxed, memory_order_relaxed);
                  v325 = *(v324 + 96);
                  if (v325 != v326)
                  {
                    CFRelease(v326);
                  }
                }

                if (*(Entry + 13))
                {
                  RIPLockCacheState();
                  --*(Entry + 13);
                }

                else
                {
                  v328 = RIPCacheEntryCreate(0, v325);
                  v329 = v358.n64_u64[0];
                  *(v328 + 4) = *v358.n64_u64[0];
                  v330 = v329[4];
                  v332 = v329[1];
                  v331 = v329[2];
                  *(v328 + 7) = v329[3];
                  *(v328 + 8) = v330;
                  *(v328 + 5) = v332;
                  *(v328 + 6) = v331;
                  RIPLockCacheState();
                  v333 = v325[3];
                  v334 = *v328;
                  v325[3] = v328;
                  *v328 = v325 + 2;
                  *v333 = v334;
                  *(v334 + 8) = v333;
                  ++v325[5];
                  ripc_AddEntry(*(v323 + 208), v328);
                  if (v325[5] > 0x20uLL)
                  {
                    v335 = v325[2];
                    RIPCacheEntryRemove(v335);
                    v335[1] = 0;
                    RIPUnlockCacheState();
                    do
                    {
                      v336 = v335[1];
                      RIPCacheEntryRelease(v335);
                      v335 = v336;
                    }

                    while (v336);
                    return 0;
                  }
                }

                RIPUnlockCacheState();
              }

              else
              {
                free(Entry[16]);
                free(Entry[17]);
              }

              return 0;
            }

            Cache = (8 * v287);
          }

          else
          {
            v287 = 0;
            Cache = 0;
          }
        }

        else
        {
          v287 = 0;
        }

        v288 = v7;
        v291 = MEMORY[0x1EEE9AC00](Cache, v285);
        v289 = (v341.f64 - ((v292 + 15) & 0xFFFFFFFFFFFFFFF0));
        if (v287 <= 0x1FFFFFFFFFFFFFFELL)
        {
          v290 = (v341.f64 - ((v292 + 15) & 0xFFFFFFFFFFFFFFF0));
        }

        else
        {
          v290 = 0;
        }

        if (v287 - 0x1FFFFFFFFFFFFFFFLL >= 0xE000000000000022)
        {
          v290 = malloc_type_malloc(v291, 0x61C53040uLL);
        }

        goto LABEL_205;
      }
    }

    abort();
  }

  return result;
}

uint64_t *RIPDataGetEntry(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  RIPLockCacheState();
  v8 = (a2 + 16);
  v9 = *(a2 + 24);
  if (v9 == (a2 + 16))
  {
LABEL_6:
    v9 = 0;
  }

  else
  {
    while (*(v9 + 12) != a3 || !(*(a4 + 16))(a4, v9))
    {
      v9 = v9[1];
      if (v9 == v8)
      {
        goto LABEL_6;
      }
    }

    v10 = *v9;
    if (*v9 != v8)
    {
      v11 = v9[1];
      *(v10 + 8) = v11;
      *v11 = v10;
      v12 = *(a2 + 24);
      *v9 = v8;
      v9[1] = v12;
      *(a2 + 24) = v9;
      *v12 = v9;
    }

    v13 = *(a1 + 208);
    ++*(v9 + 14);
    if (RIPGetCacheState_predicate != -1)
    {
      dispatch_once(&RIPGetCacheState_predicate, &__block_literal_global_10_13792);
    }

    v14 = v9[5];
    v15 = *(RIPGetCacheState_cache_state + 8);
    if (v14 != v13 && v14 != v15)
    {
      --*(v14 + 16);
      v9[5] = v15;
      ++*(v15 + 16);
    }

    v16 = v9 + 2;
    v17 = v9[2];
    if (v17 != v15)
    {
      v18 = v9[3];
      *(v17 + 8) = v18;
      *v18 = v17;
      v19 = *(v15 + 8);
      v9[2] = v15;
      v9[3] = v19;
      *(v15 + 8) = v16;
      *v19 = v16;
    }

    ++*(v9 + 13);
  }

  RIPUnlockCacheState();
  return v9;
}

void function_evaluate(uint64_t a1, float *a2, float *a3, float *a4, __n128 a5)
{
  v8 = a1;
  v35[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 48);
    if (v9 >> 61)
    {
      MEMORY[0x1EEE9AC00](a1, a5);
      v12 = &v34;
      v13 = 0;
      goto LABEL_11;
    }

    a1 = 8 * v9;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v14 = MEMORY[0x1EEE9AC00](a1, a5);
  v12 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v9 <= 0x1FFFFFFFFFFFFFFELL)
  {
    v13 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  }

  else
  {
    v13 = 0;
  }

  if (v9 - 0x1FFFFFFFFFFFFFFFLL >= v16)
  {
    v13 = malloc_type_malloc(v14, 0xFA81F361uLL);
  }

LABEL_11:
  v17 = MEMORY[0x1EEE9AC00](8 * v10, v11);
  v22 = (v35 - v19);
  if (v18 <= 0x1FFFFFFFFFFFFFFELL)
  {
    v23 = (v35 - v19);
  }

  else
  {
    v23 = 0;
  }

  if (v18 - 0x1FFFFFFFFFFFFFFFLL >= v20)
  {
    v23 = malloc_type_malloc(v17, 0xFF38EC47uLL);
  }

  if (v9)
  {
    v24 = v13;
    do
    {
      v25 = *a2++;
      v21.n128_f64[0] = v25;
      *v24++ = v25;
      --v9;
    }

    while (v9);
  }

  CGFunctionEvaluate(v8, v13, v23, v21);
  if (a4)
  {
    if (v10 != 1)
    {
      v26 = v23;
      v27 = v10 - 1;
      do
      {
        v28 = *v26++;
        v29 = v28;
        *a3++ = v29;
        --v27;
      }

      while (v27);
    }

    v30 = v23[v10 - 1];
    *a4 = v30;
  }

  else if (v10)
  {
    v31 = v23;
    do
    {
      v32 = *v31++;
      v33 = v32;
      *a3++ = v33;
      --v10;
    }

    while (v10);
  }

  if (v23 != v22)
  {
    free(v23);
  }

  if (v13 != v12)
  {
    free(v13);
  }
}

uint64_t CGFunctionEvaluate(uint64_t a1, char *a2, double *a3, __n128 a4)
{
  v22[1] = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](a1, a4);
  if (v8 <= 0x1FFFFFFFFFFFFFFELL)
  {
    v10 = v22 - v9;
  }

  else
  {
    v10 = 0;
  }

  if (v8 - 0x1FFFFFFFFFFFFFFFLL >= 0xE000000000000012)
  {
    v10 = malloc_type_malloc(v7, 0x6B634459uLL);
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    v12 = *(a1 + 32);
    if (v12)
    {
      v13 = 0;
      v14 = (v11 + 8);
      do
      {
        v15 = *(v14 - 1);
        v16 = *&a2[8 * v13];
        if (v16 >= v15 && (v15 = *v14, v16 <= *v14))
        {
          *&v10[8 * v13] = v16;
        }

        else
        {
          *&v10[8 * v13] = v15;
        }

        ++v13;
        v14 += 2;
      }

      while (v12 != v13);
    }

    a2 = v10;
  }

  result = (*(a1 + 72))(*(a1 + 24), a2, a3);
  v18 = *(a1 + 56);
  if (v18)
  {
    v19 = *(a1 + 48);
    if (v19)
    {
      v20 = (v18 + 8);
      do
      {
        v21 = *(v20 - 1);
        if (*a3 < v21 || (v21 = *v20, *a3 > *v20))
        {
          *a3 = v21;
        }

        ++a3;
        v20 += 2;
        --v19;
      }

      while (v19);
    }
  }

  return result;
}

void *gradient_evaluate(void *result, double *a2, double *a3)
{
  v3 = result[2];
  v4 = v3 - 2;
  if (v3 >= 2)
  {
    v5 = *a2;
    v6 = result[1];
    v7 = result[3];
    v8 = v6 + 1;
    v9 = *(v7 + 8 * (v6 + 1));
    v10 = 0;
    if (*a2 <= v9)
    {
      v14 = 0.0;
      v12 = v6 + 1;
      if (v6)
      {
LABEL_9:
        v15 = (v5 - v14) / (v9 - v14);
        v16 = v7 + 8;
        v17 = (v16 + 8 * v10 * v8);
        v18 = (v16 + 8 * v12);
        do
        {
          v19 = *v17++;
          v20 = v19;
          v21 = *v18++;
          *a3++ = v15 * v21 + (1.0 - v15) * v20;
          --v6;
        }

        while (v6);
      }
    }

    else
    {
      v11 = (v7 + 16 * v6 + 16);
      v12 = v6 + 1;
      v13 = *(v7 + 8 * (v6 + 1));
      while (v4 != v10)
      {
        v9 = *v11;
        ++v10;
        v12 += v8;
        v11 += v6 + 1;
        v14 = v13;
        v13 = v9;
        if (v5 <= v9)
        {
          if (v6)
          {
            goto LABEL_9;
          }

          return result;
        }
      }
    }
  }

  return result;
}

void *CGColorTransformConvertComponentData(void *a1, void *a2, int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, int a13)
{
  if (!a1)
  {
    return 0;
  }

  v27 = CFGetTypeID(a1);
  if (kCGColorTransformDefaultCMYK_block_invoke_once != -1)
  {
    dispatch_once(&kCGColorTransformDefaultCMYK_block_invoke_once, &__block_literal_global_34_17654);
  }

  if (v27 != CGColorTransformGetTypeID_type_id)
  {
    return 0;
  }

  v47 = a4;
  BitsPerComponent = CGPixelComponentGetBitsPerComponent(a3, v20, v21, v22, v23, v24, v25, v26);
  v35 = 4096;
  if (a3 != 2 && a3 != 5)
  {
    if (a3 == 4)
    {
      if (a2)
      {
        v44 = *(a2[3] + 48);
      }

      else
      {
        v44 = 0;
      }

      v35 = 0x2000;
      v45 = 32;
      v46 = a13;
      v36 = 0x2000;
      goto LABEL_20;
    }

    v35 = 0;
  }

  if (a2)
  {
    v44 = *(a2[3] + 48);
  }

  else
  {
    v44 = 0;
  }

  v46 = a13;
  v45 = CGPixelComponentGetBitsPerComponent(a3, v28, v29, v30, v31, v32, v33, v34);
  if (a3 != 2 && a3 != 5)
  {
    v43 = 0;
    goto LABEL_21;
  }

  v36 = 4096;
LABEL_20:
  v43 = v36;
LABEL_21:
  Cache = CGColorTransformGetCache(a1);
  if (Cache)
  {
    v38 = Cache[2];
    if (v38)
    {
      v38 = *(*(v38 + 24) + 48);
    }
  }

  else
  {
    v38 = 0;
  }

  v75[0] = a8;
  v75[1] = a5;
  v75[2] = a6;
  v75[3] = a10;
  v76 = v47;
  v77 = 0;
  v78 = a3;
  v79 = 0;
  v80 = BitsPerComponent;
  v81 = v44;
  v82 = 0;
  v83 = v35;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v49[0] = a11;
  v49[1] = a5;
  v49[2] = a6;
  v49[3] = v46;
  v50 = v47;
  v51 = 0;
  v52 = a3;
  v53 = 0;
  v54 = v45;
  v55 = v38;
  v56 = 0;
  v57 = v43;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v39 = CFGetTypeID(a1);
  if (kCGColorTransformDefaultCMYK_block_invoke_once != -1)
  {
    dispatch_once(&kCGColorTransformDefaultCMYK_block_invoke_once, &__block_literal_global_34_17654);
  }

  if (v39 != CGColorTransformGetTypeID_type_id)
  {
    return 0;
  }

  CGCMSConverter = CGColorTransformCreateCGCMSConverter(a1, a2, v47);
  v41 = CGCMSConverterConvert(CGCMSConverter, v75, v49);
  if (CGCMSConverter)
  {
    CFRelease(CGCMSConverter);
  }

  return v41;
}

void *RIPLayerBltShade(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a3;
  v91 = *MEMORY[0x1E69E9840];
  v64[0] = 0;
  v64[1] = 0;
  if (a3 || (v11 = v64, result = CGSBoundsIntersection((a1 + 12), a4, v64), result))
  {
    v90 = 0;
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v59 = 0u;
    if (a2 && !*(a2 + 72))
    {
      if (*(a2 + 64))
      {
        if (v11 == (a2 + 12) || !ripl_IsContained(v11, (a2 + 12)))
        {
          if ((ripl_CreateMask(a2, 0, a3, a4, a5, a6, a7, a8) & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          a2 = 0;
        }
      }

      else if (!*(a2 + 56) && ripl_IsEnclosed(v11, (a2 + 12)))
      {
        a2 = 0;
      }
    }

    v15 = *(a1 + 40);
    if (!v15)
    {
      *&v86 = 0;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v15 = &v72;
      v72 = 0u;
      v73 = 0u;
    }

    result = (*(*a1 + 32))(a1, 32, v11);
    if (result)
    {
      v22 = result;
      v23 = *result;
      if (!*result || !*(v23 + 48) || !*(a1 + 56) && !ripl_CreateMask(a1, 1, v16, v17, v18, v19, v20, v21))
      {
        goto LABEL_44;
      }

      *v15 = *a6;
      ripl_BltOpDestination(v15, v11, a1);
      v24 = *(a4 + 56);
      v25 = *a4;
      v26 = *(a4 + 4);
      v27 = *(a4 + 8);
      v28 = *(a4 + 12);
      *(v15 + 1) = 1;
      *(v15 + 14) = *v11 - v25;
      *(v15 + 15) = v28 + v26 - (v11[1] + v11[3]);
      *(v15 + 16) = v27;
      *(v15 + 68) = v28;
      v29 = *(v24 + 20);
      v30 = *(v24 + 32);
      v31 = 4 * v30;
      if (v29 == 2)
      {
        v30 *= 4;
      }

      else if (v29 == 1)
      {
        v30 *= 3;
      }

      v32 = 4 * v30;
      v34 = *(v24 + 64);
      v33 = *(v24 + 72);
      if (!v33)
      {
        v31 = 0;
      }

      *(v15 + 19) = v32;
      *(v15 + 20) = v31;
      *(v15 + 11) = v34;
      *(v15 + 12) = v33;
      ripl_BltOpMask(v15, v11, a2);
      if (!CGBlt_initialize(v15))
      {
        goto LABEL_44;
      }

      if (a5)
      {
        if (*a5 != &ripc_class)
        {
          goto LABEL_44;
        }

        v36 = *(a5 + 156);
        v35 = a5 + 156;
        *&v63 = v35 - 128;
        if (v36 >= 1.0)
        {
          *(&v63 + 1) = 0;
        }

        else
        {
          *(&v63 + 1) = v35;
        }
      }

      else
      {
        v63 = 0uLL;
      }

      v37 = (*(a6 + 4) << 8) | 0xFF;
      LODWORD(v59) = v37;
      v38 = *(a6 + 48);
      v39 = 0.0;
      if (v38 >= 0.0)
      {
        v39 = 1.0;
        if (v38 <= 1.0)
        {
          v39 = v38;
        }
      }

      *(&v59 + 1) = v39;
      v40 = *(a4 + 64);
      if (v40)
      {
        v41 = *(a1 + 24);
        v42 = v41 + *(a1 + 16);
        v43 = *(a1 + 12);
        _D2 = v41;
        v45 = *v40;
        v67 = v45;
        _Q3 = *(v40 + 2);
        v68 = vneg_f32(vcvt_f32_f64(_Q3));
        v47 = *(v40 + 3);
        __asm { FMLA            D5, D2, V3.D[1] }

        *_Q3.f64 = v47;
        v53 = _D5 - v42;
        v69 = LODWORD(_Q3.f64[0]);
        v70 = v53;
        v54 = v43 - (*(v40 + 5) + v47 * v41);
        v71 = v54;
        v40 = &v67;
      }

      *(&v59 + 1) = v40;
      v55 = *(a4 + 56);
      *(&v62 + 1) = v55 + 3;
      *&v62 = vmovn_s64(v55[2]);
      v56 = v55[1].u32[1];
      if (v56 <= 2)
      {
        LODWORD(v59) = dword_184562A60[v56] | (*(a4 + 40) << 28) | v37;
        v60 = *(a4 + 24);
        v57 = *(a4 + 16);
        v58 = *(a4 + 48);
        v65 = vcvt_hight_f32_f64(vcvt_f32_f64(*v58), v58[1]);
        v66 = vcvt_f32_f64(v58[2]);
        *&v61 = v57;
        *(&v61 + 1) = &v65;
        if (!(*(v23 + 48))(v22, v15, &v59))
        {
          v11 = 0;
        }

        goto LABEL_45;
      }

LABEL_44:
      v11 = 0;
LABEL_45:
      (*(*a1 + 48))(a1, v11);
      return (v11 != 0);
    }
  }

  return result;
}

uint64_t _blt_shade_initialize(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 5);
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  v9 = v5 * v8 - v6 * v7;
  if (v9 == 0.0)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = v4[5];
  v13 = v4[4];
  v14 = 1.0 / v9;
  *(a3 + 272) = &_blt_shade_constants;
  v15 = v14 * v5;
  v16 = v14 * v6;
  v17 = v14 * v7;
  v20 = v14 * v8;
  v18 = v17 * v12 - v20 * v13;
  v19 = v16 * v13 - v15 * v12;
  *&v20 = v20;
  *(a3 + 280) = LODWORD(v20);
  *&v16 = v16;
  v21 = LODWORD(v16);
  *(a3 + 284) = -*&v16;
  *&v16 = v17;
  *(a3 + 288) = -*&v16;
  *&v15 = v15;
  *(a3 + 292) = LODWORD(v15);
  v22 = LODWORD(v15);
  *&v15 = v18;
  *(a3 + 296) = LODWORD(v15);
  v23 = LODWORD(v15);
  *&v15 = v19;
  *(a3 + 300) = LODWORD(v15);
  v24 = (v21 & 0x7FFFFFFFu) > 0x7F7FFFFF;
  v25 = (v22 & 0x7FFFFFFFu) > 0x7F7FFFFF;
  v26 = (v23 & 0x7FFFFFFFu) > 0x7F7FFFFF;
  v10 = 0xFFFFFFFFLL;
  if ((LODWORD(v20) & 0x7FFFFFFFu) > 0x7F7FFFFF || v24 || COERCE_UNSIGNED_INT(fabs(v17)) > 0x7F7FFFFF || v25 || v26 || COERCE_UNSIGNED_INT(fabs(v19)) > 0x7F7FFFFF)
  {
    return v10;
  }

  v27 = *(a2 + 4);
  if (v27)
  {
    v28 = *v27;
    *(a3 + 304) = *v27;
    v29 = *(v27 + 4);
    *(a3 + 308) = v29;
    *(a3 + 312) = *(v27 + 8);
    v30 = *(v27 + 12);
  }

  else
  {
    *(a3 + 312) = 0;
    *(a3 + 304) = 0x3F80000000000000;
    v28 = 0.0;
    v29 = 1.0;
    v30 = 1.0;
  }

  *(a3 + 316) = v30;
  *(a3 + 360) = 0;
  v31 = a2[12];
  v32 = v31;
  LODWORD(v20) = a2[13];
  v33 = *&v20;
  v34 = *(a2 + 7);
  if (v34)
  {
    v35 = (v32 + -0.00390625) / (v34[1] - *v34);
    *(a3 + 344) = v35;
    v36 = *v34;
    *(a3 + 336) = *v34;
    *(a3 + 340) = v34[1];
    v37 = (v33 + -0.00390625) / (v34[3] - v34[2]);
    *(a3 + 356) = v37;
    *(a3 + 348) = v34[2];
    v38 = v34[3];
  }

  else
  {
    *(a3 + 348) = 0;
    v35 = v32 + -0.00390625;
    *(a3 + 344) = v35;
    *(a3 + 336) = 0x3F80000000000000;
    v39 = v33 + -0.00390625;
    *(a3 + 356) = v39;
    v38 = 1.0;
    v36 = 0.0;
  }

  *(a3 + 352) = v38;
  *(a3 + 328) = -1;
  if ((*(a2 + 3) & 0x10) == 0)
  {
    v40 = -1;
LABEL_21:
    *(a3 + 320) = v40;
    goto LABEL_23;
  }

  v41 = vcvtms_s32_f32(v35 * (v28 - v36));
  *(a3 + 320) = v41;
  if ((v41 & 0x80000000) == 0)
  {
    if (v31 > v41)
    {
      goto LABEL_23;
    }

    v40 = v31 - 1;
    goto LABEL_21;
  }

  *(a3 + 320) = 0;
LABEL_23:
  if ((*(a2 + 3) & 0x20) == 0)
  {
    v42 = -1;
LABEL_28:
    *(a3 + 324) = v42;
    goto LABEL_30;
  }

  v43 = vcvtps_s32_f32(v35 * (v29 - v36));
  *(a3 + 324) = v43;
  if ((v43 & 0x80000000) != 0)
  {
    *(a3 + 324) = 0;
    goto LABEL_30;
  }

  if (v31 <= v43)
  {
    v42 = v31 - 1;
    goto LABEL_28;
  }

LABEL_30:
  *(a3 + 384) = *(a2 + 4);
  *(a3 + 376) = 0;
  v44 = *(a2 + 2);
  if (!v44)
  {
    a4 = 0;
LABEL_57:
    *(a3 + 360) = 0;
    *(a3 + 368) = 0;
    *(a3 + 22) = 2056;
    v60 = vdupq_n_s64(0x80uLL);
    *(a3 + 96) = vorrq_s8(vshll_n_s32(*(a1 + 56), 8uLL), v60);
    *(a3 + 208) = xmmword_18439CA60;
    *(a3 + 224) = xmmword_18439CA70;
    *(a3 + 120) = 0;
    *(a3 + 128) = 0;
    *(a3 + 192) = xmmword_18439CA80;
    v61 = vaddq_s64(vshll_n_s32(*(a1 + 64), 8uLL), vdupq_n_s64(0xFFFFFFFFFFFFFF80));
    *(a3 + 400) = a4;
    *(a3 + 136) = 256;
    *(a3 + 112) = 256;
    *(a3 + 64) = v60;
    *(a3 + 80) = v61;
    if (*(a2 + 2) << 16)
    {
      v62 = 0;
    }

    else
    {
      v62 = 0x3FFFFFFF;
    }

    *(a3 + 188) = v62;
    *(a3 + 20) = 134742016;
    v63 = *(a2 + 6);
    *&v64 = v63;
    *(&v64 + 1) = HIDWORD(v63);
    *(a3 + 24) = *(a1 + 76);
    *(a3 + 32) = *(a1 + 88);
    *(a3 + 48) = v64;
    v65 = *(a2 + 1);
    *(a3 + 184) = v65;
    v66 = 0.0;
    if (v65 < 0.0 || (v66 = 1.0, v65 > 1.0))
    {
      *(a3 + 184) = v66;
    }

    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 144) = 0u;
    *(a3 + 160) = 0u;
    *(a3 + 176) = 0;
    v10 = 1;
    *(a3 + 240) = 0;
    *(a3 + 248) = 0;
    return v10;
  }

  v45 = *v44;
  v46 = *v44;
  *a4 = *v44;
  v47 = *(*(a2 + 2) + 8);
  *(a4 + 4) = v47;
  v48 = *(*(a2 + 2) + 4);
  *(a4 + 8) = v48;
  v49 = v47 - v46;
  v50 = v48 * v48 - v49 * v49;
  v51 = v50;
  v52 = v46 * -2.0 * v49;
  *(a4 + 20) = v51;
  *(a4 + 24) = v52;
  *(a4 + 28) = v45 * v45;
  if (v50 == 0.0)
  {
    v53 = 0.0;
  }

  else
  {
    v53 = 1.0 / (v50 + v50);
  }

  *(a4 + 32) = v53;
  v54 = *a2;
  if (!(*a2 >> 28))
  {
    *(a4 + 12) = 0x3F80000000000000;
    goto LABEL_57;
  }

  if (v45 >= v47)
  {
    if (v45 <= v47)
    {
      v56 = 3.4028e38;
    }

    else
    {
      v56 = 1.0 - v47 / v49;
    }

    v55 = -3.4028e38;
  }

  else
  {
    v55 = -v46 / v49;
    v56 = 3.4028e38;
  }

  v57 = 0.0;
  if ((v54 & 0x10000000) != 0)
  {
    v57 = v55;
  }

  *(a4 + 12) = v57;
  v58 = *a2;
  v59 = 1.0;
  if ((*a2 & 0x20000000) != 0)
  {
    v59 = v56;
  }

  *(a4 + 16) = v59;
  v10 = 0xFFFFFFFFLL;
  if ((LODWORD(v45) & 0x7FFFFFFFu) <= 0x7F7FFFFF && (LODWORD(v47) & 0x7FFFFFFFu) <= 0x7F7FFFFF && (LODWORD(v48) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    if ((v54 & 0x10000000) != 0 && (LODWORD(v55) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      return 0xFFFFFFFFLL;
    }

    v10 = 0xFFFFFFFFLL;
    if ((LODWORD(v53) & 0x7FFFFFFFu) <= 0x7F7FFFFF && (LODWORD(v51) & 0x7FFFFFFFu) <= 0x7F7FFFFF && (((LODWORD(v56) & 0x7FFFFFFFu) > 0x7F7FFFFF) & (v58 >> 29)) == 0 && (LODWORD(v52) & 0x7FFFFFFFu) <= 0x7F7FFFFF && (v45 * v45) != INFINITY)
    {
      goto LABEL_57;
    }
  }

  return v10;
}

uint64_t _blt_shade_samples_16(uint64_t result, int a2, int a3, float *a4, float *a5, unint64_t a6)
{
  v6 = 65535.0;
  if (a2 == 2)
  {
    v6 = 65280.0;
  }

  if (a2 == 1)
  {
    v6 = 7936.0;
  }

  switch(a3)
  {
    case 1:
      if (!a6)
      {
        return result;
      }

      v37 = (result + 2);
      for (i = 1; ; ++i)
      {
        v39 = *a4++;
        v40 = v39;
        if (!a5)
        {
          goto LABEL_71;
        }

        v41 = *a5++;
        v42 = v41;
        if (v41 >= 0.0)
        {
          break;
        }

        *(v37 - 1) = 0;
LABEL_77:
        v45 = i;
        v37 += 2;
        if (v45 >= a6)
        {
          return result;
        }
      }

      if (v42 <= 1.0)
      {
        v43 = v6 * v42;
      }

      else
      {
LABEL_71:
        v43 = v6;
      }

      v44 = 1.0;
      if (v40 <= 1.0)
      {
        v44 = v40;
        if (v40 < 0.0)
        {
          v44 = 0.0;
        }
      }

      *(v37 - 1) = ((v44 * v43) + 0.5);
      *v37 = (v43 + 0.5);
      goto LABEL_77;
    case 4:
      if (!a6)
      {
        return result;
      }

      v19 = 1;
      while (1)
      {
        v21 = *a4;
        v20 = a4[1];
        v23 = a4[2];
        v22 = a4[3];
        if (!a5)
        {
          break;
        }

        v24 = *a5++;
        v25 = v24;
        if (v24 >= 0.0)
        {
          v14 = v25 <= 1.0;
          v26 = v6 * v25;
          if (!v14)
          {
            v26 = v6;
          }

          goto LABEL_38;
        }

        *result = 0;
LABEL_63:
        result += 10;
        v36 = v19++;
        a4 += 4;
        if (v36 >= a6)
        {
          return result;
        }
      }

      v26 = v6;
LABEL_38:
      if (v21 < 0.0)
      {
        v27 = 0.0;
      }

      else
      {
        v27 = *a4;
      }

      if (v21 <= 1.0)
      {
        v28.f32[0] = v27;
      }

      else
      {
        v28.f32[0] = 1.0;
      }

      if (v20 < 0.0)
      {
        v29 = 0.0;
      }

      else
      {
        v29 = a4[1];
      }

      if (v20 <= 1.0)
      {
        v30 = v29;
      }

      else
      {
        v30 = 1.0;
      }

      if (v23 < 0.0)
      {
        v31 = 0.0;
      }

      else
      {
        v31 = a4[2];
      }

      if (v23 <= 1.0)
      {
        v32 = v31;
      }

      else
      {
        v32 = 1.0;
      }

      if (v22 < 0.0)
      {
        v33 = 0.0;
      }

      else
      {
        v33 = a4[3];
      }

      v28.f32[1] = v30;
      v28.f32[2] = v32;
      if (v22 <= 1.0)
      {
        v34 = v33;
      }

      else
      {
        v34 = 1.0;
      }

      v28.f32[3] = v34;
      v35.i64[0] = 0x3F0000003F000000;
      v35.i64[1] = 0x3F0000003F000000;
      *result = vmovn_s32(vcvtq_u32_f32(vmlaq_n_f32(v35, v28, v26)));
      *(result + 8) = (v26 + 0.5);
      goto LABEL_63;
    case 3:
      if (a6)
      {
        v7 = 1;
        while (1)
        {
          v9 = *a4;
          v8 = a4[1];
          v10 = a4[2];
          if (!a5)
          {
            break;
          }

          v11 = *a5++;
          v12 = v11;
          if (v11 >= 0.0)
          {
            v14 = v12 <= 1.0;
            v13 = v6 * v12;
            if (!v14)
            {
              v13 = v6;
            }

            goto LABEL_16;
          }

          *result = 0;
LABEL_28:
          result += 8;
          v18 = v7++;
          a4 += 3;
          if (v18 >= a6)
          {
            return result;
          }
        }

        v13 = v6;
LABEL_16:
        if (v9 < 0.0)
        {
          v15 = 0.0;
        }

        else
        {
          v15 = *a4;
        }

        if (v9 > 1.0)
        {
          v15 = 1.0;
        }

        v16 = 1.0;
        v17 = 1.0;
        if (v8 <= 1.0)
        {
          v17 = a4[1];
          if (v8 < 0.0)
          {
            v17 = 0.0;
          }
        }

        if (v10 <= 1.0)
        {
          v16 = a4[2];
          if (v10 < 0.0)
          {
            v16 = 0.0;
          }
        }

        *result = ((v15 * v13) + 0.5);
        *(result + 2) = ((v17 * v13) + 0.5);
        *(result + 4) = ((v16 * v13) + 0.5);
        *(result + 6) = (v13 + 0.5);
        goto LABEL_28;
      }

      break;
    default:
      if (a5)
      {
        if (a6)
        {
          v46 = 0;
          do
          {
            v47 = a5[v46];
            if (v47 >= 0.0)
            {
              v48 = v6;
              if (v47 <= 1.0)
              {
                v48 = ((v47 * v6) + 0.5);
              }
            }

            else
            {
              LOWORD(v48) = 0;
            }

            *(result + 2 * v46++) = v48;
          }

          while (a6 > v46);
        }
      }

      else if (a6)
      {
        v49 = 1;
        do
        {
          *result = v6;
          result += 2;
          v50 = v49++;
        }

        while (v50 < a6);
      }

      break;
  }

  return result;
}