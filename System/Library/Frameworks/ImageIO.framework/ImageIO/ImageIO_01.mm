uint64_t ATXReadPlugin::setupCallback(uint64_t a1, CFDictionaryRef *a2)
{
  v2 = *(a1 + 408);
  switch(v2)
  {
    case 13:
      return IIOReadPlugin::setupImageProviderCallbackV3(a1, a2);
    case 12:
      return IIOReadPlugin::setupImageProviderCallbackV2(a1, a2);
    case 1:
      return IIOReadPlugin::setupCallback(a1, a2);
  }

  return 4294967246;
}

uint64_t IIOImageProviderInfo::CopyImageTextureData(uint64_t *a1, const void *a2, const __CFDictionary *a3)
{
  kdebug_trace();
  IIOInitDebugFlags();
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "CopyImageTextureData", a2, 0, -1, a3);
  }

  if (a1)
  {
    v7 = IIOImageProviderInfo::copyImageTextureData(*a1, v6, a3);
    if (v7)
    {
      CGImageTextureDataGetSize();
      CGImageTextureDataIsCompressed();
      CGImageTextureDataSupportsTiledLayout();
      CGImageTextureDataGetNumberOfMipmaps();
      CGImageTextureDataGetNumberOfFaces();
      CGImageTextureDataGetPixelFormat();
      CGImageTextureDataGetPixelFormat();
    }
  }

  else
  {
    v7 = 0;
  }

  kdebug_trace();
  return v7;
}

uint64_t IIOImageProviderInfo::copyImageTextureData(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "copyImageTextureData", 0, 0, -1, a3);
  }

  IIOInitDebugFlags();
  if ((gIIODebugFlags & 0xC) != 0)
  {
    *(a1 + 144) = CFAbsoluteTimeGetCurrent();
  }

  if (*(a1 + 248))
  {
    v5 = *(a1 + 120);
    if (v5)
    {
      v6 = *v5;
      if (*v5)
      {
        v7 = CFGetTypeID(*v5);
        if (v7 == CFDictionaryGetTypeID())
        {
          pthread_mutex_lock((a1 + 152));
          v8 = *MEMORY[0x1E695E4D0];
          if (v8 == CFDictionaryGetValue(v6, @"kImageIOInfoHeader_pluginHandlesReMapping"))
          {
            v12 = 0;
            v11 = 0;
          }

          else
          {
            Value = CFDictionaryGetValue(v6, @"kImageIOInfoHeader_session");
            v10 = CGImageReadSessionGetRead(Value);
            v11 = v10;
            if (v10)
            {
              v12 = IIOImageRead::mapData(v10);
            }

            else
            {
              v12 = 0;
            }
          }

          v13 = (*(a1 + 248))(*(a1 + 120), *(a1 + 16), a3);
          if (v13 && (gIIODebugFlags & 0xC) != 0)
          {
            *(a1 + 144) = CFAbsoluteTimeGetCurrent() - *(a1 + 144);
          }

          v14 = !v12;
          if (!v11)
          {
            v14 = 1;
          }

          if ((v14 & 1) == 0)
          {
            IIOImageRead::unmapData(v11);
          }

          pthread_mutex_unlock((a1 + 152));
          if (v13)
          {
            return v13;
          }

          goto LABEL_25;
        }
      }
    }

    else
    {
      v6 = 0;
    }

    LogFault("copyImageTextureData", 2560, "header '%p' is not a CFDictionary...\n", v6);
    return 0;
  }

  v13 = 0;
LABEL_25:
  if ((gIIODebugFlags & 0x800000000000) != 0)
  {
    ImageIOLog("∆∆∆ ISSUE: %s:%d:  %s\n", "copyImageTextureData", 2591, "returned textureData is NULL\n");
    return 0;
  }

  return v13;
}

uint64_t IIO_Reader::CopyImageTextureDataProc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  if (v6[194] == 1)
  {
    ImageIOLog("    CopyImageTextureDataProc\n");
  }

  (*(*v6 + 80))(v6, a3);
  v7 = (*(*v6 + 264))(v6, a1, a2, a3);
  (*(*v6 + 88))(v6);
  return v7;
}

void sub_185E69E8C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x185E69E74);
}

uint64_t IIOReadPlugin::willDecode(IIOReadPlugin *this, const __CFDictionary *a2)
{
  if (*(this + 194) == 1)
  {
    v4 = *(this + 55);
    v5 = v4 >> 24;
    if ((v4 >> 24) <= 0x7F)
    {
      v6 = *(MEMORY[0x1E69E9830] + 4 * v5 + 60) & 0x40000;
    }

    else
    {
      v6 = __maskrune(v4 >> 24, 0x40000uLL);
    }

    if (v6)
    {
      v7 = v5;
    }

    else
    {
      v7 = 46;
    }

    v8 = v4 << 8 >> 24;
    if (v8 <= 0x7F)
    {
      v9 = *(MEMORY[0x1E69E9830] + 4 * v8 + 60) & 0x40000;
    }

    else
    {
      v9 = __maskrune(v4 << 8 >> 24, 0x40000uLL);
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      v10 = 46;
    }

    v11 = v4 >> 8;
    if (v11 <= 0x7F)
    {
      v12 = *(MEMORY[0x1E69E9830] + 4 * v11 + 60) & 0x40000;
    }

    else
    {
      v12 = __maskrune(v4 >> 8, 0x40000uLL);
    }

    if (v12)
    {
      v13 = v11;
    }

    else
    {
      v13 = 46;
    }

    if (v4 <= 0x7F)
    {
      v14 = *(MEMORY[0x1E69E9830] + 4 * v4 + 60) & 0x40000;
    }

    else
    {
      v14 = __maskrune(v4, 0x40000uLL);
    }

    if (v14)
    {
      v15 = v4;
    }

    else
    {
      v15 = 46;
    }

    ImageIOLog(">>> willDecode -start- %c%c%c%c\n", v7, v10, v13, v15);
  }

  v16 = *(this + 77);
  if (!v16)
  {
    v16 = *(this + 69);
    *(this + 77) = v16;
  }

  if (!*(this + 78))
  {
    *(this + 78) = *(this + 70);
  }

  v17 = *(this + 79);
  if (!v17)
  {
    v17 = *(this + 71);
    *(this + 79) = v17;
  }

  v18 = *(this + 160);
  if (!*(this + 160))
  {
    v18 = *(this + 144);
    *(this + 160) = v18;
    if (v18 == 10)
    {
      if (*(this + 328) != 3)
      {
        *(this + 328) = 3;
        *(this + 326) = *(this + 294) & 0x1F;
        *(this + 162) = *(this + 146);
      }

      v18 = 10;
    }
  }

  v19 = *(this + 161);
  if (!*(this + 161))
  {
    v19 = *(this + 145);
    *(this + 161) = v19;
  }

  v20 = *(this + 162);
  if (!*(this + 162))
  {
    v20 = *(this + 146);
    *(this + 162) = v20;
  }

  v21 = *(this + 328);
  v22 = *(this + 326);
  if (!((*(this + 327) << 12) | (v21 << 16) | ((*(this + 329) != 0) << 8) | v22))
  {
    v23 = *(this + 296);
    v24 = *(this + 295);
    v25 = *(this + 297) != 0;
    v22 = *(this + 294) & 0x1F;
    *(this + 326) = v22;
    *(this + 327) = v24 & 7;
    v21 = v23 & 0xF | (v24 >> 4);
    *(this + 328) = v21;
    *(this + 329) = v25;
  }

  if (v18 >= 9)
  {
    if (v18 == 10)
    {
      if ((v21 - 3) < 2)
      {
        v26 = 10;
        goto LABEL_56;
      }
    }

    else if (v18 > 0x10)
    {
      if (v18 > 0x20)
      {
        goto LABEL_132;
      }

      v26 = 32;
      goto LABEL_55;
    }

    v26 = 16;
LABEL_55:
    *(this + 160) = v26;
    goto LABEL_56;
  }

  v26 = 8;
  *(this + 160) = 8;
  if (v19 == 24)
  {
    if (!v22)
    {
      v28 = 0;
      v27 = *(this + 84);
      LOWORD(v19) = 24;
      goto LABEL_63;
    }

    v19 = 32;
    *(this + 161) = 32;
  }

LABEL_56:
  v27 = *(this + 84);
  v28 = v22 != 0;
  if (!v27 && v22)
  {
    if (v20 == 1)
    {
      v20 = 2;
      *(this + 162) = 2;
    }

    v27 = 0;
    if (v19 == v26)
    {
      LOWORD(v19) = v20 * v19;
      *(this + 161) = v19;
    }

    v28 = 1;
  }

LABEL_63:
  if (v20 * v26 <= v19)
  {
    goto LABEL_88;
  }

  if (v27 <= 1)
  {
    if (v27)
    {
      if (v27 != 1)
      {
        goto LABEL_88;
      }

      if (v22)
      {
        v29 = 4;
      }

      else
      {
        v29 = 3;
      }

      *(this + 162) = v29;
      LOWORD(v19) = v29 * v26;
      if ((v21 - 3) < 2)
      {
        LOWORD(v19) = 32;
      }

      goto LABEL_87;
    }

    goto LABEL_77;
  }

  switch(v27)
  {
    case 2:
      v31 = v22 == 0;
      v32 = 4;
LABEL_84:
      if (!v31)
      {
        ++v32;
      }

      *(this + 162) = v32;
      LOWORD(v19) = v32 * v26;
      goto LABEL_87;
    case 3:
      v31 = v22 == 0;
      v32 = 3;
      goto LABEL_84;
    case 5:
LABEL_77:
      if (v28)
      {
        v30 = 2;
      }

      else
      {
        v30 = 1;
      }

      *(this + 162) = v30;
      v19 = v26 << v28;
LABEL_87:
      *(this + 161) = v19;
      break;
  }

LABEL_88:
  v33 = (v19 >> 3) * v16;
  if ((v33 & 0xFFFFFFFF00000000) != 0)
  {
LABEL_132:
    exception = __cxa_allocate_exception(4uLL);
    *exception = -50;
  }

  if (v17 < v33)
  {
    *(this + 79) = v33;
  }

  *(this + 14) = 0x100000000;
  v34 = *(MEMORY[0x1E695F050] + 16);
  *(this + 120) = *MEMORY[0x1E695F050];
  *(this + 26) = 1;
  *(this + 136) = v34;
  *(this + 52) = 0;
  *(this + 53) = 0;
  *(this + 436) = -1;
  *(this + 108) = 538976288;
  *(this + 445) = 256;
  v66 = (*(*this + 72))(this, a2);
  if ((IIOGeometry::isValid((this + 236)) & 1) == 0)
  {
    v35 = ((*(this + 129) + 7) >> 3) * *(this + 61);
    if (v35 > *(this + 63))
    {
      *(this + 63) = (v35 + 15) & 0xFFFFFFF0;
    }
  }

  if ((IIOGeometry::isValid((this + 268)) & 1) == 0)
  {
    v36 = ((*(this + 145) + 7) >> 3) * *(this + 69);
    if (v36 > *(this + 71))
    {
      *(this + 71) = (v36 + 15) & 0xFFFFFFF0;
    }
  }

  if ((IIOGeometry::isValid((this + 300)) & 1) == 0)
  {
    v37 = ((*(this + 161) + 7) >> 3) * *(this + 77);
    if (v37 > *(this + 79))
    {
      *(this + 79) = (v37 + 15) & 0xFFFFFFF0;
    }
  }

  v38 = *(this + 53);
  if (v38)
  {
    v39 = *(this + 79);
    if (v39 % v38)
    {
      *(this + 79) = (v38 + v39 - 1) / v38 * v38;
    }
  }

  IIOReadPlugin::updateRequestFormat(this);
  ++*(this + 56);
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    v65 = *(this + 161);
    v40 = *(this + 160);
    v41 = *(this + 162);
    v42 = *(this + 326);
    v43 = (*(this + 328) << 16) | (*(this + 327) << 12) | ((*(this + 329) != 0) << 8) | v42;
    v44 = *(this + 75);
    v45 = *(this + 76);
    v46 = *(this + 77);
    v47 = *(this + 78);
    v48 = *(this + 79);
    v49 = IIO_BitmapInfoString(v43);
    ImageIOLog("             _blockGeo   %5d %5d %5d %5d   %6d   %3d   %3d   %3d   %3d   %08X   %s\n", v44, v45, v46, v47, v48, v65, v40, v41, v42, v43, v49);
  }

  if (*(this + 194) == 1)
  {
    v50 = *(this + 55);
    v51 = v50 >> 24;
    v52 = MEMORY[0x1E69E9830];
    if ((v50 >> 24) <= 0x7F)
    {
      v53 = *(MEMORY[0x1E69E9830] + 4 * v51 + 60) & 0x40000;
    }

    else
    {
      v53 = __maskrune(v50 >> 24, 0x40000uLL);
    }

    if (v53)
    {
      v54 = v51;
    }

    else
    {
      v54 = 46;
    }

    v55 = v50 << 8 >> 24;
    if (v55 <= 0x7F)
    {
      v56 = *(v52 + 4 * v55 + 60) & 0x40000;
    }

    else
    {
      v56 = __maskrune(v50 << 8 >> 24, 0x40000uLL);
    }

    if (v56)
    {
      v57 = v55;
    }

    else
    {
      v57 = 46;
    }

    v58 = v50 >> 8;
    if (v58 <= 0x7F)
    {
      v59 = *(v52 + 4 * v58 + 60) & 0x40000;
    }

    else
    {
      v59 = __maskrune(v50 >> 8, 0x40000uLL);
    }

    if (v59)
    {
      v60 = v58;
    }

    else
    {
      v60 = 46;
    }

    if (v50 <= 0x7F)
    {
      v61 = *(v52 + 4 * v50 + 60) & 0x40000;
    }

    else
    {
      v61 = __maskrune(v50, 0x40000uLL);
    }

    if (v61)
    {
      v62 = v50;
    }

    else
    {
      v62 = 46;
    }

    ImageIOLog("<<< willDecode -result- %c%c%c%c\n", v54, v57, v60, v62);
  }

  return v66;
}

uint64_t IIOReadPlugin::extractDecodeOptions(IIOReadPlugin *this, const __CFDictionary *a2)
{
  *(this + 436) = -1;
  *(this + 108) = 538976288;
  *(this + 445) = 256;
  *(this + 26) = xmmword_18620A640;
  memset(v6, 0, sizeof(v6));
  IIODictionary::IIODictionary(v6, a2);
  if (IIODictionary::getBoolForKey(v6, @"kCGImageBlockIOSurfaceOptimizedRequest"))
  {
    if (*(this + 84) == 1 && *(this + 161) == 32)
    {
      *(this + 218) = 1;
    }

    *(this + 440) = 1;
    *(this + 53) = 16;
    *(this + 438) = 0;
    *(this + 445) = 1;
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 0x40000000;
    v5[2] = ___ZN13IIOReadPlugin20extractDecodeOptionsEPK14__CFDictionary_block_invoke;
    v5[3] = &__block_descriptor_tmp_38;
    v5[4] = this;
    IIODictionary::enumerate(v6, v5);
    if (!*(this + 326) && *(this + 438) == 1)
    {
      *(this + 446) = 0;
    }

    if (*(this + 442) == 255)
    {
      *(this + 53) = 16;
    }

    if (*(this + 441) == 255)
    {
      *(this + 52) = 64;
    }
  }

  if (*(this + 446))
  {
    v3 = 0;
  }

  else
  {
    v3 = 4294967246;
  }

  IIODictionary::~IIODictionary(v6);
  return v3;
}

void sub_185E6A6E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

void IIODictionary::enumerate(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    IIODictionaryEnumerateUsingBlock(v2, a2);
  }
}

uint64_t IIOGeometry::isValid(IIOGeometry *this)
{
  v3 = *(this + 2);
  v2 = *(this + 3);
  if (v3)
  {
    if (!v2)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (v2)
    {
LABEL_5:
      _cg_jpeg_mem_term("isValid", 172, "🔺 bad width/height:  w: %d   h: %d\n", v3, v2);
      result = 0;
      v3 = *(this + 2);
      goto LABEL_8;
    }

    v3 = 0;
  }

  result = 1;
LABEL_8:
  v5 = *(this + 11);
  v6 = *(this + 4);
  if (v3 * v5 > 8 * v6)
  {
    _cg_jpeg_mem_term("isValid", 178, "🔺 rowBytes too small: w: %d   bpp: %d   rb: %d   min: %d\n", v3, (v5 + 7) >> 3, v6, ((v5 + 7) >> 3) * v3);
    result = 0;
    v5 = *(this + 11);
  }

  v7 = *(this + 10);
  v8 = *(this + 12);
  v9 = v8 * v7;
  if (v8 * v7 <= v5)
  {
    if (v9 >= v5)
    {
      goto LABEL_26;
    }

    v10 = v7 == 10 || v7 == 5;
    if (v10 && v8 == 3)
    {
      goto LABEL_26;
    }

    _cg_jpeg_mem_term("isValid", 199, "🔺 bitsPerPixel too big: bpc: %d   #channels: %d   bpp: %d   min: %d\n");
    goto LABEL_25;
  }

  if (v7 != 10 || v8 != 4 || *(this + 28) != 3)
  {
    _cg_jpeg_mem_term("isValid", 192, "🔺 bitsPerPixel too small: bpc: %d   #channels: %d   bpp: %d   min: %d\n");
    goto LABEL_25;
  }

  if (v9 > v5 + 8)
  {
    _cg_jpeg_mem_term("isValid", 187, "🔺 bitsPerPixel too small: bpc: %d   #channels: %d   bpp: %d   min: %d\n");
LABEL_25:
    result = 0;
  }

LABEL_26:
  v11 = *(this + 12);
  if ((v11 | 2) == 3 && *(this + 26) && *(this + 10) != 5)
  {
    _cg_jpeg_mem_term("isValid", 208, "🔺 bad alpha: #channels: %d   alphaVal: %d 0x%08x\n", v11, *(this + 26), *(this + 26));
    return 0;
  }

  return result;
}

uint64_t IIOReadPlugin::updateRequestFormat(uint64_t this)
{
  v1 = *(this + 336);
  if (v1 > 2)
  {
    if (v1 > 4)
    {
      if (v1 == 5)
      {
        v2 = 1768842360;
      }

      else
      {
        if (v1 != 6)
        {
          return this;
        }

        v2 = 1885434996;
      }
    }

    else if (v1 == 3)
    {
      v2 = 1281450528;
    }

    else
    {
      v2 = 1684371022;
    }

    goto LABEL_29;
  }

  if (v1)
  {
    if (v1 != 1)
    {
      if (v1 != 2)
      {
        return this;
      }

      v2 = 1129142603;
      goto LABEL_29;
    }

    if (*(this + 436) == 1)
    {
      v2 = 1111970392;
LABEL_29:
      *(this + 432) = v2;
      return this;
    }

    if (*(this + 437) == 1)
    {
LABEL_19:
      v2 = 1380401752;
      goto LABEL_29;
    }

    v3 = *(this + 326);
    if (v3 <= 2)
    {
      if (!*(this + 326))
      {
        v2 = 1380401696;
        goto LABEL_29;
      }

      if (v3 == 1 || v3 == 2)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (*(this + 326) <= 4u)
      {
        if (v3 != 3 && v3 != 4)
        {
          return this;
        }

LABEL_28:
        v2 = 1380401729;
        goto LABEL_29;
      }

      if (v3 == 5 || v3 == 6)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    *(this + 432) = 1198678393;
    if (*(this + 436) == 1)
    {
      *(this + 436) = -1;
    }
  }

  return this;
}

uint64_t CommonASTCReadPlugin::copyImageTextureData(uint64_t a1)
{
  v2 = *(a1 + 488);
  if (!v2)
  {
    v12 = xmmword_1EF4DE638;
    v13 = *off_1EF4DE648;
    v3 = IIOImageRead::imageCount(*(a1 + 32));
    memset(v11, 0, sizeof(v11));
    IIODictionary::IIODictionary(v11);
    v4 = *(a1 + 480);
    IIONumber::IIONumber(v10, *(a1 + 464));
    IIODictionary::setObjectForKey(v11, v10, @"width");
    IIONumber::~IIONumber(v10);
    IIONumber::IIONumber(v10, *(a1 + 468));
    IIODictionary::setObjectForKey(v11, v10, @"height");
    IIONumber::~IIONumber(v10);
    IIONumber::IIONumber(v10, 16 * v4);
    IIODictionary::setObjectForKey(v11, v10, @"rowBytes");
    IIONumber::~IIONumber(v10);
    IIONumber::IIONumber(v10, *(a1 + 476));
    IIODictionary::setObjectForKey(v11, v10, @"metalFormat");
    IIONumber::~IIONumber(v10);
    IIONumber::IIONumber(v10, v3);
    IIODictionary::setObjectForKey(v11, v10, @"mipmapLevelCount");
    IIONumber::~IIONumber(v10);
    IIONumber::IIONumber(v10, 1);
    IIODictionary::setObjectForKey(v11, v10, @"faceCount");
    IIONumber::~IIONumber(v10);
    ColorSpace = CGImageProviderGetColorSpace();
    IIODictionary::setObjectForKey(v11, ColorSpace, @"colorSpace");
    v6 = hardware_supports_astc();
    v7 = MEMORY[0x1E695E4D0];
    if (!v6)
    {
      v7 = MEMORY[0x1E695E4C0];
    }

    IIODictionary::setObjectForKey(v11, *v7, @"supportsTiledLayout");
    v8 = ASTCTextureImp::GLFormatForMetalFormat(*(a1 + 476));
    IIONumber::IIONumber(v10, v8);
    IIODictionary::setObjectForKey(v11, v10, @"pixelFormatGL");
    IIONumber::~IIONumber(v10);
    IIONumber::IIONumber(v10, *(a1 + 476));
    IIODictionary::setObjectForKey(v11, v10, @"pixelFormatMetal");
    IIONumber::~IIONumber(v10);
    IIOImageSource::cf(*(a1 + 32));
    operator new();
  }

  CFRetain(v2);
  return *(a1 + 488);
}

void sub_185E6ACE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MEMORY[0x186602850](v4, 0xA1C40B41E38F6);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

uint64_t IIOImageRead::imageCount(IIOImageRead *this)
{
  Source = CGImageSourceGetSource(~*(this + 2));
  if (!Source)
  {
    return 1;
  }

  return IIOImageSource::count(Source);
}

uint64_t hardware_supports_astc(void)
{
  if (hardware_supports_astc(void)::onceToken != -1)
  {
    hardware_supports_astc();
  }

  return hardware_supports_astc(void)::supportsASTC;
}

uint64_t ASTCTextureImp::GLFormatForMetalFormat(ASTCTextureImp *this)
{
  if ((this - 186) > 0x32)
  {
    return 0;
  }

  else
  {
    return dword_18620ABF4[this - 186];
  }
}

void *IIOTextureHandler::IIOTextureHandler(void *a1, CFTypeRef cf)
{
  a1[3] = cf;
  a1[4] = 0;
  a1[6] = 0;
  *a1 = &unk_1EF4DE4F8;
  a1[1] = 0;
  a1[2] = 0;
  if (cf)
  {
    CFRetain(cf);
    a1[4] = CGImageSourceGetSource(a1[3]);
    v3 = CGImageReadSessionCreate(a1[3]);
    a1[5] = v3;
    Source = CGImageSourceGetSource(v3);
    a1[6] = Source;
    IIOImageReadSession::mapData(Source);
  }

  return a1;
}

void sub_185E6AE88(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL IIOImageRead::mapData(IIOImageRead *this)
{
  v12 = 0;
  v11 = 0;
  pthread_mutex_lock((this + 376));
  if ((gIIODebugFlags & 0x100000000000) != 0)
  {
    ImageIOLog("    %s:   <IIOImageRead: %p> mmapping data    <CFData:%p>  count: %d\n", "mapData", this, *(this + 4), *(this + 110));
  }

  if (*(this + 67) == 1)
  {
    if (*(this + 4))
    {
      IIOImageRead::validateFileSize(this);
      v4 = *(this + 4);
      if (v4)
      {
        v5 = *(this + 10);
        if (v5 != CFDataGetLength(v4))
        {
          CFDataGetLength(*(this + 4));
          kdebug_trace();
          v6 = *(this + 10);
          Length = CFDataGetLength(*(this + 4));
          LogFault("mapData", 1014, "*** ImageIO - mmapped file changed (old: %ld  new: %ld)\n", v6, Length);
          *(this + 10) = CFDataGetLength(*(this + 4));
        }

        v8 = *(this + 4);
        if (v8)
        {
          v9 = *(this + 110) + 1;
          *(this + 110) = v9;
          if ((gIIODebugFlags & 0x100000000000) != 0)
          {
            v10 = CFGetRetainCount(v8);
            ImageIOLog("    %s:                  new count: %d   (rc=%ld)\n", "mapData", v9, v10);
          }
        }
      }
    }

    else
    {
      v3 = IIOImageRead::createDataWithMappedFile(this, &v12, &v11);
      *(this + 4) = v3;
      if ((gIIODebugFlags & 0x80000000000) != 0)
      {
        ImageIOLog("D   %s:%d createDataWithMappedFile %p\n", "mapData", 999, v3);
        v3 = *(this + 4);
      }

      if (v3)
      {
        *(this + 110) = 1;
      }
    }
  }

  pthread_mutex_unlock((this + 376));
  return v12;
}

double IIOReadPlugin::didDecode(IIOReadPlugin *this)
{
  result = 0.0;
  *(this + 300) = 0u;
  *(this + 316) = 0u;
  return result;
}

uint64_t ApplicationOptIn(void)
{
  MainBundle = CFBundleGetMainBundle();
  InfoDictionary = CFBundleGetInfoDictionary(MainBundle);
  if (!InfoDictionary)
  {
    return 0xFFFFFFFFLL;
  }

  Value = CFDictionaryGetValue(InfoDictionary, @"NSImageIOEnableOutOfProcess");
  if (!Value)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = Value;
  TypeID = CFBooleanGetTypeID();
  if (TypeID != CFGetTypeID(v3))
  {
    return 0xFFFFFFFFLL;
  }

  if (*MEMORY[0x1E695E4D0] == v3)
  {
    return 1;
  }

  return IIO_OSAppleInternalBuild() - 1;
}

const __CFString *ApplicationEnabled_LDM_off(const __CFString *result, const char *a2)
{
  if (result)
  {
    v2 = result;
    return (CFStringCompare(result, @"com.apple.SubcredentialUIService.SubcredentialInvitationMessagesExtension", 0) == kCFCompareEqualTo || CFStringCompare(v2, @"com.apple.gamecenter.GameCenterUIService.GameCenterMessageExtension", 0) == kCFCompareEqualTo || CFStringCompare(v2, @"com.apple.icloud.apps.messages.business.extension", 0) == kCFCompareEqualTo);
  }

  return result;
}

uint64_t IIOLockDownModeEnabled()
{
  if (IIOLockDownModeEnabled::once != -1)
  {
    IIOLockDownModeEnabled_cold_1();
  }

  return IIOLockDownModeEnabled::lockDownModeEnabled;
}

uint64_t ASTCTextureImp::textureDataLockData(ASTCTextureImp *this, IIOImageReadSession *a2, uint64_t a3, unint64_t a4, unint64_t *a5, unint64_t *a6, unint64_t *a7, char a8)
{
  *a5 = 0;
  *a6 = 0;
  *a7 = 0;
  pthread_mutex_lock((this + 168));
  if ((a8 & 2) != 0)
  {
    v15 = *(this + 10);
    if (!v15)
    {
      if (*(this + 41))
      {
        if (*(this + 40))
        {
          LogError("textureDataLockData", 1057, "*** pre-twiddled LZFSE compressed ASTC is not supported\n");
        }

        else
        {
          ASTCTextureImp::createTwiddledDataFromTwiddled(this, a2);
        }
      }

      else if (*(this + 40))
      {
        ASTCTextureImp::createTwiddledDataFromLinearLZFSE(this, a2, a3);
      }

      else
      {
        ASTCTextureImp::createTwiddledDataFromLinear(this, a2, a3);
      }

      v15 = *(this + 10);
      if (!v15)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_21;
  }

  v15 = *(this + 7);
  if (v15)
  {
LABEL_21:
    v16 = *(this + 19);
    *a5 = *(this + 18);
    *a6 = v16;
    *a7 = *(this + 20);
LABEL_22:
    pthread_mutex_unlock((this + 168));
    return v15;
  }

  if ((*(this + 41) & 1) == 0)
  {
    if (*(this + 40))
    {
      _cg_jpeg_mem_term("createLinearDataFromLZFSE", 992, "*** ERROR: createLinearDataFromLZFSE is not supported\n");
    }

    else
    {
      ASTCTextureImp::createLinearDataFromLinear(this, a2);
    }

LABEL_17:
    v15 = *(this + 7);
    if (!v15)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if ((*(this + 40) & 1) == 0)
  {
    _cg_jpeg_mem_term("createLinearDataFromTwiddled", 1003, "*** ERROR: createLinearDataFromTwiddled is not supported\n");
    goto LABEL_17;
  }

  LogError("textureDataLockData", 1106, "*** pre-twiddled LZFSE compressed ASTC is not supported\n");
  return 0;
}

uint64_t IIOTextureHandler::LockDataCallback(IIOTextureHandler *this, void *a2, uint64_t a3, uint64_t a4, unint64_t *a5, unint64_t *a6, unint64_t *a7)
{
  v17 = *MEMORY[0x1E69E9840];
  if ((gIIODebugFlags & 0xC000) != 0)
  {
    *__str = 0u;
    v16 = 0u;
    snprintf(__str, 0x20uLL, "option: %d", a7);
    if (gIIODebugFlags >> 14)
    {
      ImageIODebugOptions(gIIODebugFlags >> 14, "S", "LockDataCallback", 0, __str, -1, 0);
    }
  }

  if (!this)
  {
    return 0;
  }

  result = *(this + 1);
  if (result)
  {
    return (*(*result + 40))(result, *(this + 6), a2, a3, a4, a5, a6, a7);
  }

  return result;
}

void ASTCTextureImp::createTwiddledDataFromTwiddled(ASTCTextureImp *this, IIOImageReadSession *a2)
{
  v3 = *(this + 15);
  if (v3 || (*(this + 15) = IIOImageReadSession::retainBytePointer(a2, this + 16, 1), v5 = IIOImageSource::cf(a2), *(this + 17) = v5, CFRetain(v5), (v3 = *(this + 15)) != 0))
  {
    v6 = 0;
    v7 = v3 + *(this + 14);
  }

  else
  {
    _cg_jpeg_mem_term("createTwiddledDataFromTwiddled", 952, "*** Can't access image data\n");
    v7 = 0;
    v6 = -50;
  }

  *(this + 10) = v7;
  *(this + 58) = v6;
}

Class __IIOLockDownModeEnabled_block_invoke()
{
  result = NSClassFromString(&cfstr_Lockdownmodema.isa);
  if (result)
  {
    result = [(objc_class *)result shared];
    _ZZZ22IIOLockDownModeEnabledEUb_E20gLockdownModeManager = result;
    if (result)
    {
      result = [(objc_class *)result enabled];
      IIOLockDownModeEnabled::lockDownModeEnabled = result;
    }
  }

  return result;
}

void IIOTextureHandler::UnlockDataCallback(IIOTextureHandler *this, void *a2)
{
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "UnlockDataCallback", 0, 0, -1, 0);
  }

  if (this)
  {
    v3 = *(this + 1);
    if (v3)
    {
      v4 = *(*v3 + 48);

      v4();
    }
  }
}

uint64_t ImageIOLogInternal(const char *a1, ...)
{
  va_start(va, a1);
  result = IIO_OSAppleInternalBuild();
  if (result)
  {
    if (gImageIOLogProc)
    {
      return gImageIOLogProc(0, 0, 0, 0, a1, va);
    }
  }

  return result;
}

void ImageIOLogger(int a1, const char *a2, const char *a3, int a4, const char *a5, va_list a6)
{
  v21 = *MEMORY[0x1E69E9840];
  if (ImageIOLogger(int,char const*,char const*,int,char const*,char *)::once != -1)
  {
    ImageIOLogger();
  }

  v17 = 0;
  v18 = 0;
  if (a3)
  {
    asprintf(&v18, "%s%s:%d: %s");
  }

  else if (a2)
  {
    asprintf(&v18, "%s: %s");
  }

  else
  {
    asprintf(&v18, "%s");
  }

  vasprintf(&v17, v18, a6);
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_25;
      }

      v11 = gIIO_Log;
      if (!os_log_type_enabled(gIIO_Log, OS_LOG_TYPE_INFO))
      {
        goto LABEL_25;
      }

      *buf = 136446210;
      v20 = v17;
      v12 = v11;
      v13 = OS_LOG_TYPE_INFO;
    }

    else
    {
      v16 = gIIO_Log;
      if (!os_log_type_enabled(gIIO_Log, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_25;
      }

      *buf = 136446210;
      v20 = v17;
      v12 = v16;
      v13 = OS_LOG_TYPE_DEFAULT;
    }

    _os_log_impl(&dword_185E59000, v12, v13, "%{public}s\n", buf, 0xCu);
    goto LABEL_25;
  }

  switch(a1)
  {
    case 2:
      v14 = gIIO_Log;
      if (os_log_type_enabled(gIIO_Log, OS_LOG_TYPE_DEBUG))
      {
        ImageIOLogger(&v17, v14);
      }

      break;
    case 16:
      v15 = gIIO_Log;
      if (os_log_type_enabled(gIIO_Log, OS_LOG_TYPE_ERROR))
      {
        ImageIOLogger(&v17, v15);
      }

      break;
    case 17:
      v10 = gIIO_Log;
      if (os_log_type_enabled(gIIO_Log, OS_LOG_TYPE_FAULT))
      {
        ImageIOLogger(&v17, v10);
      }

      break;
  }

LABEL_25:
  free(v17);
  free(v18);
}

os_log_t ___ZL13ImageIOLoggeriPKcS0_iS0_Pc_block_invoke()
{
  v0 = getprogname();
  result = os_log_create("com.apple.imageio", v0);
  gIIO_Log = result;
  return result;
}

IIO_Reader *IIO_ReaderHandler::readerForType(IIO_ReaderHandler *this, int a2)
{
  v2 = *(this + 2);
  v3 = *(this + 3);
  if (v2 == v3)
  {
    return 0;
  }

  while (IIO_Reader::osType(*v2) != a2)
  {
    if (++v2 == v3)
    {
      return 0;
    }
  }

  return *v2;
}

uint64_t OUTLINED_FUNCTION_5_0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, IIOImageReadSession *a54)
{

  return IIOImageReadSession::getBytes(a54, v54, v55);
}

void *OUTLINED_FUNCTION_24(size_t a1)
{

  return malloc_type_malloc(a1, 0x100004077774924uLL);
}

uint64_t OUTLINED_FUNCTION_5_1()
{

  return kdebug_trace();
}

memory_object_offset_t OUTLINED_FUNCTION_5_3(unint64_t a1, uint64_t a2, memory_object_size_t *a3, const char *a4)
{

  return _ImageIO_Malloc(a1, 64, a3, a4, 0, 0);
}

uint64_t OUTLINED_FUNCTION_5_4()
{
  v5 = *(v0 + 24);
  v6 = v3 + *(v0 + 208);

  return IIOImageReadSession::getBytesAtOffset(v5, v2, v6, v1);
}

void *OUTLINED_FUNCTION_3(void *a1)
{

  return __cxa_get_exception_ptr(a1);
}

double OUTLINED_FUNCTION_5_5(uint64_t a1)
{
  *a1 = v1;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

void _cg_png_destroy_read_struct(uint64_t *a1, _OWORD **a2, _OWORD **a3)
{
  if (!a1)
  {
    return;
  }

  v4 = *a1;
  if (!*a1)
  {
    return;
  }

  if (v4 >= v4 + 1280)
  {
    goto LABEL_14;
  }

  _cg_png_destroy_info_struct(*a1, a3);
  _cg_png_destroy_info_struct(v4, a2);
  *a1 = 0;
  png_destroy_gamma_table(v4);
  png_free(v4, *(v4 + 992));
  *(v4 + 992) = 0u;
  png_free(v4, *(v4 + 1152));
  *(v4 + 1152) = 0u;
  png_free(v4, *(v4 + 1120));
  *(v4 + 1120) = 0u;
  png_free(v4, *(v4 + 792));
  *(v4 + 792) = 0u;
  png_free(v4, *(v4 + 808));
  *(v4 + 808) = 0u;
  v6 = *(v4 + 860);
  if ((v6 & 0x1000) != 0)
  {
    v7 = *(v4 + 400);
    if (!v7 || v7 < *(v4 + 408))
    {
      png_zfree(v4);
      *(v4 + 400) = 0;
      *(v4 + 408) = 0;
      v6 = *(v4 + 860);
      goto LABEL_8;
    }

LABEL_14:
    __break(0x5519u);
    return;
  }

LABEL_8:
  v8 = v6 & 0xFFFFEFFF;
  *(v4 + 860) = v6 & 0xFFFFEFFF;
  if ((v6 & 0x2000) != 0)
  {
    png_free(v4, *(v4 + 608));
    *(v4 + 608) = 0u;
    v8 = *(v4 + 860);
  }

  *(v4 + 860) = v8 & 0xFFFFDFFF;
  inflateEnd((v4 + 96));
  png_free(v4, *(v4 + 696));
  *(v4 + 696) = 0u;
  png_free(v4, *(v4 + 1088));
  *(v4 + 1088) = 0u;
  png_free(v4, *(v4 + 888));
  *(v4 + 888) = 0u;

  png_destroy_png_struct(v4);
}

uint64_t _cg_png_set_pHYs(uint64_t result, uint64_t a2, int a3, int a4, char a5)
{
  if (result)
  {
    if (a2)
    {
      *(a2 + 248) = a3;
      *(a2 + 252) = a4;
      *(a2 + 256) = a5;
      *(a2 + 8) |= 0x80u;
    }
  }

  return result;
}

uint64_t ERROR_ImageIO_DestinationBufferIsNotBigEnough(uint64_t result, _BYTE *a2)
{
  v3 = result;
  if (!result || a2 == -1)
  {
    *gCrashMessage = 0;
    result = snprintf(gCrashMessage, 0x200uLL, "ImageIO: ERROR_ImageIO_DestinationBufferIsNotBigEnough: buffer: %p offset: %p\n", result, a2);
    qword_1ED5688A0 = gCrashMessage;
  }

  a2[v3] = 0;
  return result;
}

CFIndex IIOImageRead::getCFDataBytesAtOffset(IIOImageRead *this, UInt8 *a2, CFIndex a3, CFIndex a4)
{
  if ((gIIODebugFlags & 0x800000) != 0)
  {
    v8 = *(this + 4);
    Length = CFDataGetLength(v8);
    ImageIOLog("    %s:%d:  data: %p  [%8ld]  offset: 0x%08lX   size: %8ld\n", "getCFDataBytesAtOffset", 1436, v8, Length, a3, a4);
  }

  v10 = *(this + 4);
  if (!v10)
  {
    return 0;
  }

  v11 = CFGetTypeID(v10);
  if (v11 != CFDataGetTypeID())
  {
    return 0;
  }

  v12 = CFDataGetLength(*(this + 4));
  if (v12 < *(this + 10) && (*(this + 69) & 1) == 0)
  {
    LogFault("getCFDataBytesAtOffset", 1446, ": *** ERROR *** CGImageSource was created with data size: %ld - current size is only: %ld\n", *(this + 10), v12);
    *(this + 69) = 1;
  }

  if (a4 + a3 > v12)
  {
    LogError("getCFDataBytesAtOffset", 1454, ": *** ERROR *** requested range: %ld-%lld - is outside input CFData range (0-%ld)\n", a3, a4 + a3, v12);
    return 0;
  }

  if (v12 - a3 < a4)
  {
    a4 = v12 - a3;
  }

  if (a4 < 1)
  {
    return 0;
  }

  BytePtr = CFDataGetBytePtr(*(this + 4));
  if (!BytePtr)
  {
    _cg_jpeg_mem_term("getCFDataBytesAtOffset", 1466, "*** ERROR: cannot get bytePtr from <CFDataRef: %p>\n", *(this + 4));
    return 0;
  }

  v15 = BytePtr;
  if (*(this + 72) == 1)
  {
    *gCrashMessage = 0;
    snprintf(gCrashMessage, 0x200uLL, "ImageIO: CFDataGetBytes: data: %p size: %zu  offset: %zu count: %zu  dst: %p\n", *(this + 4), v12, a3, a4, a2);
    qword_1ED5688A0 = gCrashMessage;
  }

  if (a3 < 1)
  {
    if (a3 < 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    CHECK_FIRST_BYTE_OF_IMAGEBLOCK(&v15[a3 - 1]);
  }

  ERROR_ImageIO_SourceBufferRangeIsNotBigEnough(&v15[a3], (a4 - 1));
LABEL_22:
  v16.location = a3;
  v16.length = a4;
  CFDataGetBytes(*(this + 4), v16, a2);
  if (*(this + 72) == 1)
  {
    qword_1ED5688A0 = 0;
  }

  return a4;
}

uint64_t IIOImageReadSession::getBytesAtOffset(IIOImageReadSession *this, unsigned __int8 *a2, off_t a3, uint64_t a4)
{
  v6 = *(this + 4);
  if (v6)
  {

    return IIOImageRead::getBytesAtOffset(v6, a2, a3, a4, 0);
  }

  else
  {
    LogError("getBytesAtOffset", 268, "*** ERROR: IIOImageReadSession::getBytesAtOffset: _iRead is NULL\n", v4, v5);
    return 0;
  }
}

uint64_t ERROR_ImageIO_SourceBufferRangeIsNotBigEnough(uint64_t result, const void *a2)
{
  if (!result || a2 == -1)
  {
    *gCrashMessage = 0;
    result = snprintf(gCrashMessage, 0x200uLL, "ImageIO: ERROR_ImageIO_SourceBufferRangeIsNotBigEnough: buffer: %p offset: %p\n", result, a2);
    qword_1ED5688A0 = gCrashMessage;
  }

  return result;
}

uint64_t ___ZN13IIOReadPlugin28createImageBlockSetFromCacheEP7InfoRecP15CGImageProvider6CGRect6CGSizePK14__CFDictionary_block_invoke(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v6 = *(a1 + 40);
  LODWORD(a3) = *(a2 + 8);
  LODWORD(a4) = *(a2 + 12);
  v7 = *&a3;
  v8 = *&a4;
  LODWORD(a3) = *(a2 + 16);
  LODWORD(a4) = *(a2 + 20);
  v9 = *&a3;
  v10 = *&a4;
  v15.origin.x = v7;
  v15.origin.y = v8;
  v15.size.width = *&a3;
  v15.size.height = *&a4;
  result = CGRectEqualToRect(*(a1 + 48), v15);
  if (result)
  {
    v12 = *(a2 + 28);
    if (*(v6 + 224) == v12 && *(a2 + 24) == *(v6 + 432) && *(v6 + 320) == BYTE6(v12) && __PAIR64__((v12 & 0x200000000000000) != 0, HIBYTE(v12) & 1) == __PAIR64__(*(v6 + 383), *(v6 + 382)))
    {
      v14 = 0;
      result = IIOImageRead::getCachedImageBlockData(*(v6 + 32), a2, &v14);
      if (result)
      {
        v13 = IIO_ImageBlockCreate(v14, *(a2 + 36), 0, v7, v8, v9, v10);
        result = IIOReadPlugin::imageBlockSetCreate(v6, *(a1 + 80), 1uLL, *(a1 + 88), *(a1 + 96), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), &v13, *(a1 + 104));
        *(*(*(a1 + 32) + 8) + 24) = result;
      }
    }
  }

  return result;
}

BOOL imageio_key_is_equal(char *a1, char *a2, void *a3)
{
  v3 = 0;
  if (a1 && a2)
  {
    if (*a1 == *a2 && *(a1 + 2) == *(a2 + 2) && *(a1 + 3) == *(a2 + 3) && *(a1 + 4) == *(a2 + 4) && *(a1 + 5) == *(a2 + 5) && (v5 = *(a2 + 28) ^ *(a1 + 28), (v5 & 0xFF00FFFFFFFFFFLL) == 0))
    {
      v12 = *(a1 + 6) == *(a2 + 6) && (v5 & 0x100000000000000) == 0;
      v3 = (v5 & 0x200000000000000) == 0 && v12;
    }

    else
    {
      v3 = 0;
    }

    if ((~gIIODebugFlags & 0x300) == 0)
    {
      DebugStringFromKey = createDebugStringFromKey(a1);
      if (DebugStringFromKey)
      {
        v7 = DebugStringFromKey;
        v8 = "!=";
        if (v3)
        {
          v8 = "==";
        }

        ImageIOLog("    %s %s\n", v8, DebugStringFromKey);
        free(v7);
      }

      v9 = createDebugStringFromKey(a2);
      if (v9)
      {
        v10 = v9;
        ImageIOLog("       %s\n", v9);
        free(v10);
      }
    }
  }

  return v3;
}

uint64_t CGImageReadSessionGetRead(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 24);
    if (v1)
    {
      return *(v1 + 32);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ImageIO_make_non_purgeable(const void *a1)
{
  if (IIO_XPCServer())
  {
    return 0;
  }

  if ((gIIODebugFlags & 0xC0) != 0)
  {
    ImageIOLog("    ImageIO_make_non_purgeable: %14p\n", a1);
    if ((gIIODebugFlags & 0x80) != 0)
    {
      IIODebug_ShowBacktrace(1);
    }
  }

  v4 = 0;
  v3 = MEMORY[0x1866043A0](*MEMORY[0x1E69E9A60], a1, 0, &v4);
  if (v3 && (gIIODebugFlags & 0xC0) != 0)
  {
    ImageIOLog("    vm_purgable_control-SET_STATE-VM_PURGABLE_NONVOLATILE : %ld\n", v3);
  }

  if (v4 == 2)
  {
    return 14;
  }

  else
  {
    return 0;
  }
}

BOOL imageio_make_nonpurgeable(void *a1, void *a2)
{
  if ((gIIODebugFlags & 0x202) != 0)
  {
    ImageIOLog("    imageio_make_nonpurgeable value: %p   user_data: %p\n", a1, a2);
  }

  return ImageIO_make_non_purgeable(a1) == 0;
}

const char *IIOReadPlugin::ImageBlockRelease(const char *result, const void *a2)
{
  if ((gIIODebugFlags & 0xC00) != 0)
  {
    result = IIO_ImageBlockReleased(result, a2);
  }

  if (a2)
  {
    Data = CGImageBlockGetData();

    return CGImageReadSessionReleaseCachedImageBlockData(Data);
  }

  return result;
}

uint64_t CGImageReadSessionReleaseCachedImageBlockData(void *value)
{
  if ((gIIODebugFlags & 0x200) != 0)
  {
    _cg_jpeg_mem_term("CGImageReadSessionReleaseCachedImageBlockData", 569, "    cache_release_value:   %p:   data: %12p\n", gImageBlockCache, value);
  }

  v2 = gImageBlockCache;

  return cache_release_value(v2, value);
}

uint64_t ImageIO_make_purgeable(const void *a1)
{
  result = IIO_XPCServer();
  if ((result & 1) == 0)
  {
    if ((gIIODebugFlags & 0xC0) != 0)
    {
      ImageIOLog("    ImageIO_make_purgeable:     %14p\n", a1);
      if ((gIIODebugFlags & 0x80) != 0)
      {
        IIODebug_ShowBacktrace(1);
      }
    }

    v3 = 1;
    result = MEMORY[0x1866043A0](*MEMORY[0x1E69E9A60], a1, 0, &v3);
    if (result)
    {
      if ((gIIODebugFlags & 0xC0) != 0)
      {
        return ImageIOLog("    vm_purgable_control-SET_STATE-VM_PURGABLE_VOLATILE : %ld\n", result);
      }
    }
  }

  return result;
}

uint64_t imageio_make_purgeable(void *a1, void *a2)
{
  if ((gIIODebugFlags & 0x202) != 0)
  {
    ImageIOLog("    imageio_make_purgeable    value: %p   user_data: %p\n", a1, a2);
  }

  return ImageIO_make_purgeable(a1);
}

const char *IIOReadPlugin::ImageBlockSetReleaseInfo(const char *this, void *a2)
{
  if ((gIIODebugFlags & 0xC00) != 0)
  {
    return IIO_ImageBlockSetReleased(this);
  }

  return this;
}

uint64_t IIOImageRead::enumerateCacheKeysWithBlock(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 312));
  v4 = *(a1 + 288);
  v5 = *(a1 + 296);
  if (v4 != v5)
  {
    v6 = 0;
    do
    {
      v7 = *v4;
      v8 = v4[1];
      *&v11[12] = *(v4 + 28);
      v10 = v7;
      *v11 = v8;
      (*(a2 + 16))(a2, &v10, v6);
      v6 = (v6 + 1);
      v4 = (v4 + 44);
    }

    while (v4 != v5);
  }

  return pthread_mutex_unlock((a1 + 312));
}

char *createDebugStringFromKey(uint64_t a1)
{
  v20 = 0;
  if ((gIIODebugFlags & 0x400000000300) == 0)
  {
    return 0;
  }

  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 12);
  v5 = *(a1 + 16);
  v6 = *(a1 + 20);
  v7 = *(a1 + 24);
  v8 = v7 >> 24;
  v9 = MEMORY[0x1E69E9830];
  if ((v7 >> 24) <= 0x7F)
  {
    v10 = *(MEMORY[0x1E69E9830] + 4 * v8 + 60) & 0x40000;
  }

  else
  {
    v10 = __maskrune(v8, 0x40000uLL);
    v7 = *(a1 + 24);
  }

  if (v10)
  {
    v12 = (v7 >> 24);
  }

  else
  {
    v12 = 46;
  }

  v13 = v7 << 8 >> 24;
  if (v13 <= 0x7F)
  {
    v14 = *(v9 + 4 * v13 + 60) & 0x40000;
  }

  else
  {
    v14 = __maskrune(v13, 0x40000uLL);
    v7 = *(a1 + 24);
  }

  if (v14)
  {
    v15 = (v7 << 8 >> 24);
  }

  else
  {
    v15 = 46;
  }

  v16 = v7 >> 8;
  if (v16 <= 0x7F)
  {
    v17 = *(v9 + 4 * v16 + 60) & 0x40000;
  }

  else
  {
    v17 = __maskrune(v16, 0x40000uLL);
    v7 = *(a1 + 24);
  }

  if (v17)
  {
    v18 = (v7 >> 8);
  }

  else
  {
    v18 = 46;
  }

  if (v7 <= 0x7F)
  {
    if ((*(v9 + 4 * v7 + 60) & 0x40000) != 0)
    {
      goto LABEL_23;
    }

LABEL_25:
    v19 = 46;
    goto LABEL_26;
  }

  if (!__maskrune(v7, 0x40000uLL))
  {
    goto LABEL_25;
  }

LABEL_23:
  v19 = *(a1 + 24);
LABEL_26:
  asprintf(&v20, "'%p [%d,%d,%d,%d] '%c%c%c%c' #=%d rb=%6d rba=%3d sub=%2d float=%2d bpc=%2d'", v2, v3, v4, v5, v6, v12, v15, v18, v19, *(a1 + 28), *(a1 + 36), WORD1(*(a1 + 28)), BYTE4(*(a1 + 28)), WORD2(*(a1 + 28)) >> 8, BYTE6(*(a1 + 28)));
  return v20;
}

void IIOImageProviderInfo::checkBlockSetBuffer(uint64_t a1)
{
  if ((gIIODebugFlags & 0x400000000000) != 0)
  {
    if (IIOImageProviderInfo::checkBlockSetBuffer(CGImageBlockSet *)::onceToken != -1)
    {
      IIOImageProviderInfo::checkBlockSetBuffer();
    }

    Count = CGImageBlockSetGetCount();
    if (Count)
    {
      v3 = Count;
      for (i = 0; i != v3; ++i)
      {
        if (CGImageBlockSetGetImageBlock())
        {
          CGImageBlockGetRect();
          v6 = v5;
          v8 = v7;
          v10 = v9;
          v12 = v11;
          BytesPerRow = CGImageBlockGetBytesPerRow();
          ComponentType = CGImageBlockSetGetComponentType();
          PixelSize = CGImageBlockSetGetPixelSize();
          Data = CGImageBlockGetData();
          if (Data)
          {
            v17 = Data;
            v18 = v6;
            byte_1ED569BB8 = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[v18 >> 28];
            byte_1ED569BB9 = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[(v18 >> 24) & 0xF];
            byte_1ED569BBA = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[(v18 >> 20) & 0xF];
            byte_1ED569BBB = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[(v18 >> 16) & 0xF];
            byte_1ED569BBC = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[v18 >> 12];
            byte_1ED569BBD = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[(v18 >> 8) & 0xF];
            byte_1ED569BBE = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[v18 >> 4];
            byte_1ED569BBF = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[v18 & 0xF];
            v19 = v8;
            byte_1ED569BC3 = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[v19 >> 28];
            byte_1ED569BC4 = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[(v19 >> 24) & 0xF];
            byte_1ED569BC5 = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[(v19 >> 20) & 0xF];
            byte_1ED569BC6 = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[(v19 >> 16) & 0xF];
            byte_1ED569BC7 = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[v19 >> 12];
            byte_1ED569BC8 = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[(v19 >> 8) & 0xF];
            byte_1ED569BC9 = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[v19 >> 4];
            byte_1ED569BCA = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[v19 & 0xF];
            v20 = v10;
            byte_1ED569BCE = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[v20 >> 28];
            byte_1ED569BCF = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[(v20 >> 24) & 0xF];
            byte_1ED569BD0 = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[(v20 >> 20) & 0xF];
            byte_1ED569BD1 = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[(v20 >> 16) & 0xF];
            byte_1ED569BD2 = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[v20 >> 12];
            byte_1ED569BD3 = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[(v20 >> 8) & 0xF];
            byte_1ED569BD4 = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[v20 >> 4];
            v21 = v12;
            byte_1ED569BD5 = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[v20 & 0xF];
            byte_1ED569BD9 = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[v21 >> 28];
            byte_1ED569BDA = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[(v21 >> 24) & 0xF];
            byte_1ED569BDB = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[(v21 >> 20) & 0xF];
            byte_1ED569BDC = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[(v21 >> 16) & 0xF];
            byte_1ED569BDD = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[v21 >> 12];
            byte_1ED569BDE = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[(v21 >> 8) & 0xF];
            byte_1ED569BDF = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[v21 >> 4];
            byte_1ED569BE0 = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[v21 & 0xF];
            byte_1ED569BE8 = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[BytesPerRow >> 28];
            byte_1ED569BE9 = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[(BytesPerRow >> 24) & 0xF];
            byte_1ED569BEA = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[(BytesPerRow >> 20) & 0xF];
            byte_1ED569BEB = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[(BytesPerRow >> 16) & 0xF];
            byte_1ED569BEC = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[BytesPerRow >> 12];
            byte_1ED569BED = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[(BytesPerRow >> 8) & 0xF];
            byte_1ED569BEE = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[BytesPerRow >> 4];
            byte_1ED569BEF = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[BytesPerRow & 0xF];
            byte_1ED569BFB = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[PixelSize >> 28];
            byte_1ED569BFC = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[(PixelSize >> 24) & 0xF];
            byte_1ED569BFD = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[(PixelSize >> 20) & 0xF];
            byte_1ED569BFE = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[(PixelSize >> 16) & 0xF];
            byte_1ED569BFF = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[PixelSize >> 12];
            byte_1ED569C00 = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[(PixelSize >> 8) & 0xF];
            byte_1ED569C01 = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[PixelSize >> 4];
            byte_1ED569C02 = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[PixelSize & 0xF];
            byte_1ED569C0F = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[ComponentType >> 28];
            v22 = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[(ComponentType >> 20) & 0xF];
            byte_1ED569C10 = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[(ComponentType >> 24) & 0xF];
            byte_1ED569C11 = v22;
            byte_1ED569C12 = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[(ComponentType >> 16) & 0xF];
            v23 = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[(ComponentType >> 8) & 0xF];
            byte_1ED569C13 = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[ComponentType >> 12];
            byte_1ED569C14 = v23;
            byte_1ED569C15 = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[ComponentType >> 4];
            byte_1ED569C16 = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[ComponentType & 0xF];
            unk_1ED569C1D = bswap32(*(a1 + 72));
            LODWORD(v20) = *(a1 + 136);
            byte_1ED569C28 = BYTE3(v20);
            byte_1ED569C29 = BYTE2(v20);
            byte_1ED569C2A = BYTE1(v20);
            byte_1ED569C2B = v20;
            memset(&byte_1ED569C37, 48, 16);
            qword_1ED5688A0 = &IIOImageProviderInfo::checkBlockSetBuffer(CGImageBlockSet *)::logMessage;
            CHECK_FIRST_BYTE_OF_IMAGEBLOCK(Data);
            if (is_mul_ok(v12, BytesPerRow))
            {
              v24 = v12 * BytesPerRow;
              if (v24)
              {
                byte_1ED569C37 = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[(v24 - 1) >> 60];
                byte_1ED569C38 = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[((v24 - 1) >> 56) & 0xF];
                byte_1ED569C39 = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[((v24 - 1) >> 52) & 0xF];
                byte_1ED569C3A = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[((v24 - 1) >> 48) & 0xF];
                byte_1ED569C3B = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[((v24 - 1) >> 44) & 0xF];
                byte_1ED569C3C = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[((v24 - 1) >> 40) & 0xF];
                byte_1ED569C3D = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[((v24 - 1) >> 36) & 0xF];
                byte_1ED569C3E = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[((v24 - 1) >> 32) & 0xF];
                byte_1ED569C3F = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[(v24 - 1) >> 28];
                byte_1ED569C40 = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[((v24 - 1) >> 24) & 0xF];
                byte_1ED569C41 = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[((v24 - 1) >> 20) & 0xF];
                byte_1ED569C42 = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[((v24 - 1) >> 16) & 0xF];
                byte_1ED569C43 = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[(v24 - 1) >> 12];
                byte_1ED569C44 = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[((v24 - 1) >> 8) & 0xF];
                byte_1ED569C45 = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[(v24 - 1) >> 4];
                byte_1ED569C46 = CopyUInt32AsHexToStringAtOffset(unsigned int,char *,unsigned int)::table[(v24 - 1) & 0xF];
                qword_1ED5688A0 = &IIOImageProviderInfo::checkBlockSetBuffer(CGImageBlockSet *)::logMessage;
                CHECK_LAST_BYTE_OF_IMAGEBLOCK(v17);
              }
            }

            qword_1ED5688A0 = 0;
          }
        }
      }
    }
  }
}

uint64_t IIOReadPlugin::imageBlockSetCreate(uint64_t a1, uint64_t a2, unint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, uint64_t a10, const void *a11)
{
  if (a8 == 0.0)
  {
    _cg_jpeg_mem_term("imageBlockSetCreate", 2143, "*** ERROR: rect:{%g,%g,%g,%g} - invalid width\n");
LABEL_18:
    _cg_jpeg_mem_term("imageBlockSetCreate", 2171, "*** CGImageBlockSetCreate returned nil rect:{%g,%g,%g,%g}  size:{%g,%g}\n", a6, a7, a8, a9, a4, a5);
    return 0;
  }

  if (a9 == 0.0)
  {
    _cg_jpeg_mem_term("imageBlockSetCreate", 2144, "*** ERROR: rect:{%g,%g,%g,%g} - invalid height\n");
    goto LABEL_18;
  }

  if (a9 != a5)
  {
    _cg_jpeg_mem_term("imageBlockSetCreate", 2146, "*** buffer height mismatch: rect:{%g,%g,%g,%g}  size:{%g,%g}\n", a6, a7, a8, a9, a4, a5);
  }

  if (a8 != a4)
  {
    _cg_jpeg_mem_term("imageBlockSetCreate", 2148, "*** buffer width mismatch: rect:{%g,%g,%g,%g}  size:{%g,%g}\n", a6, a7, a8, a9, a4, a5);
  }

  v21 = CGImageBlockSetCreate();
  if (!(a2 | v21))
  {
    LogError("imageBlockSetCreate", 2153, "*** ERROR: CGImageBlockSetCreate returned NULL - called with NULL provider\n");
  }

  v22 = gIIODebugFlags;
  if ((gIIODebugFlags & 0xC00) != 0 || *(a1 + 194) == 1)
  {
    atomic_fetch_add_explicit(&gBlockSetCount, 1u, memory_order_relaxed);
    v23 = 115;
    if (a3 == 1)
    {
      v23 = 32;
    }

    ImageIOLog("    CGImageBlockSetCreate:    %14p - info: %14p                        S-[%2ld] %2ld block%c\n", v21, a11, gBlockSetCount, a3, v23);
    v22 = gIIODebugFlags;
    if ((gIIODebugFlags & 0x800) != 0)
    {
      IIODebug_ShowBacktrace(2);
      v22 = gIIODebugFlags;
    }
  }

  if ((v22 & 0x40000000000) != 0)
  {
    IIOReadPlugin::debugBlockSetAlpha(a1, a2, a3);
  }

  if (!v21)
  {
    goto LABEL_18;
  }

  return v21;
}

const void *IIOImageProviderInfo::CopyImageBlockSetWithOptions(uint64x2_t **a1, const void *a2, const __CFDictionary *a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  if (a1)
  {
    CGImageProviderGetBitmapInfo();
    v18 = *a1;
    IIOPackCopyCallbackInfo(*a1, a3);
    if (v18)
    {
      v19 = v18[8].i32[2];
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;
    kdebug_trace();
    IIOInitDebugFlags();
    v21 = gIIODebugFlags;
    if ((gIIODebugFlags & 0xC000) != 0)
    {
      v59 = 0;
      if (v18 && v18[1].i64[1])
      {
        IIOLookupISR();
        v21 = gIIODebugFlags;
      }

      v22 = v20 >> 24;
      if (v21 < 0)
      {
        v24 = MEMORY[0x1E69E9830];
        if (v22 <= 0x7F)
        {
          v25 = *(MEMORY[0x1E69E9830] + 4 * v22 + 60) & 0x40000;
        }

        else
        {
          v25 = __maskrune(v20 >> 24, 0x40000uLL);
        }

        if (v25)
        {
          v29 = v22;
        }

        else
        {
          v29 = 46;
        }

        v30 = v20 << 8 >> 24;
        if (v30 <= 0x7F)
        {
          v31 = *(v24 + 4 * v30 + 60) & 0x40000;
        }

        else
        {
          v31 = __maskrune(v20 << 8 >> 24, 0x40000uLL);
        }

        if (v31)
        {
          v35 = v30;
        }

        else
        {
          v35 = 46;
        }

        v36 = v20 >> 8;
        if (v36 <= 0x7F)
        {
          v37 = *(v24 + 4 * v36 + 60) & 0x40000;
        }

        else
        {
          v37 = __maskrune(v20 >> 8, 0x40000uLL);
        }

        if (v37)
        {
          v40 = v36;
        }

        else
        {
          v40 = 46;
        }

        if (v20 <= 0x7F)
        {
          v41 = *(v24 + 4 * v20 + 60) & 0x40000;
        }

        else
        {
          v41 = __maskrune(v20, 0x40000uLL);
        }

        if (v41)
        {
          v43 = v20;
        }

        else
        {
          v43 = 46;
        }

        asprintf(&v59, "'%c%c%c%c' %s - src={%g,%g,%g,%g}  dest={%g,%g}", v29, v35, v40, v43, "CopyImageBlockSetWithOptions", a4, a5, a6, a7, a8, a9);
      }

      else
      {
        if (v22 <= 0x7F)
        {
          v23 = *(MEMORY[0x1E69E9830] + 4 * v22 + 60) & 0x40000;
        }

        else
        {
          v23 = __maskrune(v20 >> 24, 0x40000uLL);
        }

        if (v23)
        {
          v26 = v22;
        }

        else
        {
          v26 = 46;
        }

        v27 = v20 << 8 >> 24;
        if (v27 <= 0x7F)
        {
          v28 = *(MEMORY[0x1E69E9830] + 4 * v27 + 60) & 0x40000;
        }

        else
        {
          v28 = __maskrune(v20 << 8 >> 24, 0x40000uLL);
        }

        if (v28)
        {
          v32 = v27;
        }

        else
        {
          v32 = 46;
        }

        v33 = v20 >> 8;
        if (v33 <= 0x7F)
        {
          v34 = *(MEMORY[0x1E69E9830] + 4 * v33 + 60) & 0x40000;
        }

        else
        {
          v34 = __maskrune(v20 >> 8, 0x40000uLL);
        }

        if (v34)
        {
          v38 = v33;
        }

        else
        {
          v38 = 46;
        }

        if (v20 <= 0x7F)
        {
          v39 = *(MEMORY[0x1E69E9830] + 4 * v20 + 60) & 0x40000;
        }

        else
        {
          v39 = __maskrune(v20, 0x40000uLL);
        }

        if (v39)
        {
          v42 = v20;
        }

        else
        {
          v42 = 46;
        }

        asprintf(&v59, "'%c%c%c%c' %s", v26, v32, v38, v42, "CopyImageBlockSetWithOptions");
      }

      if (v59)
      {
        ImageIODebugOptions(gIIODebugFlags >> 14, "C", v59, 0, 0, -1, 0);
        free(v59);
      }
    }

    if (v18)
    {
      v44 = IIOImageProviderInfo::copyImageBlockSetWithOptions(v18, a2, a3, a4, a5, a6, a7, a8, a9);
      if (v44)
      {
        v45 = v44;
        CGImageBlockSetGetRect();
        goto LABEL_94;
      }

      v46 = v20 >> 24;
      if ((v20 >> 24) <= 0x7F)
      {
        v47 = *(MEMORY[0x1E69E9830] + 4 * v46 + 60) & 0x40000;
      }

      else
      {
        v47 = __maskrune(v20 >> 24, 0x40000uLL);
      }

      if (v47)
      {
        v48 = v46;
      }

      else
      {
        v48 = 46;
      }

      v49 = v20 << 8 >> 24;
      if (v49 <= 0x7F)
      {
        v50 = *(MEMORY[0x1E69E9830] + 4 * v49 + 60) & 0x40000;
      }

      else
      {
        v50 = __maskrune(v20 << 8 >> 24, 0x40000uLL);
      }

      if (v50)
      {
        v51 = v49;
      }

      else
      {
        v51 = 46;
      }

      v52 = v20 >> 8;
      if (v52 <= 0x7F)
      {
        v53 = *(MEMORY[0x1E69E9830] + 4 * v52 + 60) & 0x40000;
      }

      else
      {
        v53 = __maskrune(v20 >> 8, 0x40000uLL);
      }

      if (v53)
      {
        v54 = v52;
      }

      else
      {
        v54 = 46;
      }

      if (v20 <= 0x7F)
      {
        v55 = *(MEMORY[0x1E69E9830] + 4 * v20 + 60) & 0x40000;
      }

      else
      {
        v55 = __maskrune(v20, 0x40000uLL);
      }

      if (v55)
      {
        v56 = v20;
      }

      else
      {
        v56 = 46;
      }

      _cg_jpeg_mem_term("CopyImageBlockSetWithOptions", 2673, "*** ERROR: CopyImageBlockSetWithOptions '%c%c%c%c' returned NULL\n", v48, v51, v54, v56);
    }
  }

  else
  {
    kdebug_trace();
  }

  if (a2)
  {
    CGImageProviderGetBitmapInfo();
    CGImageProviderGetComponentType();
    ColorSpace = CGImageProviderGetColorSpace();
    CGColorSpaceGetModel(ColorSpace);
  }

  kdebug_trace();
  v45 = 0;
LABEL_94:
  kdebug_trace();
  return v45;
}

unint64_t IIOPackCopyCallbackInfo(uint64x2_t *a1, CFDictionaryRef theDict)
{
  if (theDict)
  {
    if (CFDictionaryContainsKey(theDict, *MEMORY[0x1E695F288]))
    {
      v4 = 0x4000000000000000;
    }

    else
    {
      v4 = 0x8000000000000000;
    }

    v5 = CFDictionaryContainsKey(theDict, *MEMORY[0x1E695F298]);
    v6 = 0x1000000000000000;
    if (!v5)
    {
      v6 = 0x2000000000000000;
    }

    v7 = v6 | v4;
    if (CFDictionaryContainsKey(theDict, @"kCGImageBlockIOSurfaceOptimizedRequest"))
    {
      v8 = 0x400000000000000;
    }

    else
    {
      v8 = 0x800000000000000;
    }

    v9 = CFDictionaryContainsKey(theDict, *MEMORY[0x1E695F278]);
    v10 = 0x100000000000000;
    if (!v9)
    {
      v10 = 0x200000000000000;
    }

    v11 = v7 | v8 | v10;
    v12 = CFDictionaryContainsKey(theDict, *MEMORY[0x1E695F268]);
    v13 = 0x40000000000000;
    if (!v12)
    {
      v13 = 0x80000000000000;
    }

    v14 = v11 | v13;
    if (CFDictionaryContainsKey(theDict, *MEMORY[0x1E695F270]))
    {
      result = v14 | 0x10000000000000;
      if (!a1)
      {
        return result;
      }
    }

    else
    {
      result = v14 | 0x20000000000000;
      if (!a1)
      {
        return result;
      }
    }
  }

  else
  {
    result = 0xAAA0000000000000;
    if (!a1)
    {
      return result;
    }
  }

  v16 = vandq_s8(vshlq_u64(a1[3], xmmword_1862090C0), xmmword_1862090D0);
  result |= vorrq_s8(vdupq_laneq_s64(v16, 1), v16).u64[0];
  return result;
}

unint64_t IIOPackCopyCallbackInfo(const __CFDictionary *a1)
{
  if (!a1)
  {
    return 0xAAA0000000000000;
  }

  if (CFDictionaryContainsKey(a1, *MEMORY[0x1E695F288]))
  {
    v2 = 0x4000000000000000;
  }

  else
  {
    v2 = 0x8000000000000000;
  }

  v3 = CFDictionaryContainsKey(a1, *MEMORY[0x1E695F298]);
  v4 = 0x1000000000000000;
  if (!v3)
  {
    v4 = 0x2000000000000000;
  }

  v5 = v4 | v2;
  if (CFDictionaryContainsKey(a1, @"kCGImageBlockIOSurfaceOptimizedRequest"))
  {
    v6 = 0x400000000000000;
  }

  else
  {
    v6 = 0x800000000000000;
  }

  v7 = CFDictionaryContainsKey(a1, *MEMORY[0x1E695F278]);
  v8 = 0x100000000000000;
  if (!v7)
  {
    v8 = 0x200000000000000;
  }

  v9 = v5 | v6 | v8;
  v10 = CFDictionaryContainsKey(a1, *MEMORY[0x1E695F268]);
  v11 = 0x40000000000000;
  if (!v10)
  {
    v11 = 0x80000000000000;
  }

  v12 = v9 | v11;
  if (CFDictionaryContainsKey(a1, *MEMORY[0x1E695F270]))
  {
    return v12 | 0x10000000000000;
  }

  else
  {
    return v12 | 0x20000000000000;
  }
}

uint64_t IIO_Reader::CopyImageBlockSetProc(uint64_t a1, uint64_t a2, uint64_t a3, CGFloat a4, CGFloat a5, double a6, double a7, double a8, double a9)
{
  ImageBlockSetFromCache = 0;
  if ((IIO_XPCServer() & 1) == 0)
  {
    v18 = *(a1 + 8);
    if ((*(*v18 + 80))(v18, a3))
    {
      exception = __cxa_allocate_exception(4uLL);
      *exception = -1;
      __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
    }

    if (*(v18 + 194) == 1)
    {
      ImageIOLog("    CopyImageBlockSetProc: rect:{%g,%g,%g,%g}  size:{%g,%g}\n", a4, a5, a6, a7, a8, a9);
    }

    memset(v72, 0, sizeof(v72));
    v19 = IIOReadPlugin::inputGeometry(v18, v72);
    LODWORD(v20) = DWORD1(v72[0]);
    v19.n128_u32[0] = v72[0];
    v19.n128_f64[0] = v19.n128_u64[0];
    v21 = v20;
    LODWORD(v23) = HIDWORD(v72[0]);
    LODWORD(v22) = DWORD2(v72[0]);
    v24 = v22;
    v25 = v23;
    v75.size.width = fmax(a6, 1.0);
    v75.size.height = fmax(a7, 1.0);
    v75.origin.x = a4;
    v75.origin.y = a5;
    v74 = CGRectIntersection(*v19.n128_u64, v75);
    x = v74.origin.x;
    y = v74.origin.y;
    width = v74.size.width;
    height = v74.size.height;
    if ((gIIODebugFlags & 0x30000) == 0)
    {
LABEL_30:
      ImageBlockSetFromCache = IIOReadPlugin::createImageBlockSetFromCache(v18, a1, a2, x, y, width, height, a8, a9);
      if (ImageBlockSetFromCache)
      {
LABEL_91:
        (*(*v18 + 88))(v18);
        return ImageBlockSetFromCache;
      }

      v71 = 0;
      memset(v70, 0, sizeof(v70));
      v41 = IIOReadPlugin::index(v18);
      IIODecodeParameter::IIODecodeParameter(v70, a1, a2, v41, a3, x, y, width, height, a8, a9);
      v42 = IIOReadPlugin::callDecodeImage(v18, v70, 3, 0, 0, &ImageBlockSetFromCache);
      if (v42 == -1400)
      {
        ImageIOLog("‼️ retrying 'decodeImage' (ImageIOXPCService crashed?)\n");
        v43 = IIOReadPlugin::callDecodeImage(v18, v70, 3, 0, 0, &ImageBlockSetFromCache);
        v42 = v43;
        v44 = "❌";
        if (!v43)
        {
          v44 = "✅";
        }

        ImageIOLog("%s retrying 'decodeImage'  err: %d\n", v44, v43);
      }

      if (v42 == -181)
      {
        IIOXPCLog("❗️ request not handled [%d]\n", -181);
      }

      else if (v42)
      {
        if (v42 == -56)
        {
          v45 = v18[55];
          v46 = v45 >> 24;
          if ((v45 >> 24) <= 0x7F)
          {
            v47 = *(MEMORY[0x1E69E9830] + 4 * v46 + 60) & 0x40000;
          }

          else
          {
            v47 = __maskrune(v46, 0x40000uLL);
            v45 = v18[55];
          }

          if (v47)
          {
            v48 = (v45 >> 24);
          }

          else
          {
            v48 = 46;
          }

          v49 = v45 << 8 >> 24;
          if (v49 <= 0x7F)
          {
            v50 = *(MEMORY[0x1E69E9830] + 4 * v49 + 60) & 0x40000;
          }

          else
          {
            v50 = __maskrune(v49, 0x40000uLL);
            v45 = v18[55];
          }

          if (v50)
          {
            v51 = (v45 << 8 >> 24);
          }

          else
          {
            v51 = 46;
          }

          v52 = v45 >> 8;
          if (v52 <= 0x7F)
          {
            v53 = *(MEMORY[0x1E69E9830] + 4 * v52 + 60) & 0x40000;
          }

          else
          {
            v53 = __maskrune(v52, 0x40000uLL);
            v45 = v18[55];
          }

          if (v53)
          {
            v54 = (v45 >> 8);
          }

          else
          {
            v54 = 46;
          }

          if (v45 <= 0x7F)
          {
            v55 = *(MEMORY[0x1E69E9830] + 4 * v45 + 60) & 0x40000;
          }

          else
          {
            v55 = __maskrune(v45, 0x40000uLL);
          }

          if (v55)
          {
            v56 = *(v18 + 220);
          }

          else
          {
            v56 = 46;
          }

          LogError("CopyImageBlockSetProc", 1571, "*** IIO_Reader::CopyImageBlockSetProc - '%c%c%c%c'- does not support 'callDecodeImage'\n", v48, v51, v54, v56);
        }

        v57 = v18[55];
        v58 = v57 >> 24;
        if ((v57 >> 24) <= 0x7F)
        {
          v59 = *(MEMORY[0x1E69E9830] + 4 * v58 + 60) & 0x40000;
        }

        else
        {
          v59 = __maskrune(v58, 0x40000uLL);
          v57 = v18[55];
        }

        if (v59)
        {
          v60 = (v57 >> 24);
        }

        else
        {
          v60 = 46;
        }

        v61 = v57 << 8 >> 24;
        if (v61 <= 0x7F)
        {
          v62 = *(MEMORY[0x1E69E9830] + 4 * v61 + 60) & 0x40000;
        }

        else
        {
          v62 = __maskrune(v61, 0x40000uLL);
          v57 = v18[55];
        }

        if (v62)
        {
          v63 = (v57 << 8 >> 24);
        }

        else
        {
          v63 = 46;
        }

        v64 = v57 >> 8;
        if (v64 <= 0x7F)
        {
          v65 = *(MEMORY[0x1E69E9830] + 4 * v64 + 60) & 0x40000;
        }

        else
        {
          v65 = __maskrune(v64, 0x40000uLL);
          v57 = v18[55];
        }

        if (v65)
        {
          v66 = (v57 >> 8);
        }

        else
        {
          v66 = 46;
        }

        if (v57 <= 0x7F)
        {
          if ((*(MEMORY[0x1E69E9830] + 4 * v57 + 60) & 0x40000) != 0)
          {
            goto LABEL_84;
          }
        }

        else if (__maskrune(v57, 0x40000uLL))
        {
LABEL_84:
          v67 = *(v18 + 220);
LABEL_87:
          _cg_jpeg_mem_term("CopyImageBlockSetProc", 1577, "*** ERROR: '%c%c%c%c' callDecodeImage failed [%d]\n", v60, v63, v66, v67, v42);
          goto LABEL_88;
        }

        v67 = 46;
        goto LABEL_87;
      }

LABEL_88:
      if (!ImageBlockSetFromCache)
      {
        _cg_jpeg_mem_term("CopyImageBlockSetProc", 1579, "*** ERROR: callDecodeImage returned NULL blockSet [%d]\n", v42);
      }

      IIODecodeParameter::~IIODecodeParameter(v70);
      goto LABEL_91;
    }

    v30 = v18[55];
    v31 = v30 >> 24;
    if ((v30 >> 24) <= 0x7F)
    {
      v32 = *(MEMORY[0x1E69E9830] + 4 * v31 + 60) & 0x40000;
    }

    else
    {
      v32 = __maskrune(v31, 0x40000uLL);
      v30 = v18[55];
    }

    if (v32)
    {
      v33 = (v30 >> 24);
    }

    else
    {
      v33 = 46;
    }

    v34 = v30 << 8 >> 24;
    if (v34 <= 0x7F)
    {
      v35 = *(MEMORY[0x1E69E9830] + 4 * v34 + 60) & 0x40000;
    }

    else
    {
      v35 = __maskrune(v34, 0x40000uLL);
      v30 = v18[55];
    }

    if (v35)
    {
      v36 = (v30 << 8 >> 24);
    }

    else
    {
      v36 = 46;
    }

    v37 = v30 >> 8;
    if (v37 <= 0x7F)
    {
      v38 = *(MEMORY[0x1E69E9830] + 4 * v37 + 60) & 0x40000;
    }

    else
    {
      v38 = __maskrune(v37, 0x40000uLL);
      v30 = v18[55];
    }

    if (v38)
    {
      v39 = (v30 >> 8);
    }

    else
    {
      v39 = 46;
    }

    if (v30 <= 0x7F)
    {
      if ((*(MEMORY[0x1E69E9830] + 4 * v30 + 60) & 0x40000) != 0)
      {
        goto LABEL_26;
      }
    }

    else if (__maskrune(v30, 0x40000uLL))
    {
LABEL_26:
      v40 = *(v18 + 220);
LABEL_29:
      ImageIOLog("*** IIO_Reader::CopyImageBlockSetProc - using new '%c%c%c%c'- callDecodeImage [kIIOImageType_ImageBlockSet]\n", v33, v36, v39, v40);
      goto LABEL_30;
    }

    v40 = 46;
    goto LABEL_29;
  }

  return ImageBlockSetFromCache;
}

void sub_185E6DD28(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  __cxa_begin_catch(a1);
  *(v15 - 120) = 0;
  __cxa_end_catch();
  JUMPOUT(0x185E6DCD8);
}

const void *IIOImageProviderInfo::copyImageBlockSetWithOptions(uint64_t a1, const void *a2, CFDictionaryRef theDict, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v16 = a1;
  v17 = gIIODebugFlags;
  if ((gIIODebugFlags & 0x400000000000) != 0)
  {
    ImageIOLog("\n");
    LODWORD(a1) = ImageIOLog("*** copyImageBlockSetWithOptions *** %p {%g, %g, %g, %g} {%g, %g}\n", a2, a4, a5, a6, a7, a8, a9);
    v17 = gIIODebugFlags;
  }

  if ((v17 & 0xC) != 0)
  {
    *(v16 + 144) = CFAbsoluteTimeGetCurrent();
  }

  v19 = 0;
  if (a8 != 0.0 && a9 != 0.0)
  {
    if (!*(v16 + 224))
    {
      v19 = 0;
      goto LABEL_17;
    }

    v20 = *(v16 + 120);
    if (!v20 || (v21 = *v20) == 0 || (v22 = CFGetTypeID(*v20), v22 != CFDictionaryGetTypeID()))
    {
      LogError("copyImageBlockSetWithOptions", 2293, "*** ERROR: 'ImageProviderCopyImageBlockSetCallback' header is not a CFDictionary...\n");
      return 0;
    }

    pthread_mutex_lock((v16 + 152));
    v23 = *MEMORY[0x1E695E4D0];
    if (v23 == CFDictionaryGetValue(v21, @"kImageIOInfoHeader_pluginHandlesReMapping") || (Value = CFDictionaryGetValue(v21, @"kImageIOInfoHeader_session")) == 0)
    {
      v26 = 0;
    }

    else
    {
      v25 = CGImageReadSessionGetRead(Value);
      v26 = v25;
      if (v25)
      {
        v27 = IIOImageRead::mapData(v25);
        goto LABEL_31;
      }
    }

    v27 = 0;
LABEL_31:
    v31 = *(v16 + 24);
    if (v31)
    {
      v32 = 0;
      if (!theDict || (*(v31 + 188) & 1) == 0)
      {
        goto LABEL_38;
      }

      if (CFDictionaryContainsValue(theDict, *MEMORY[0x1E695F280]))
      {
        MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, theDict);
        v32 = MutableCopy;
        if (MutableCopy)
        {
          CFDictionaryRemoveValue(MutableCopy, *MEMORY[0x1E695F288]);
          theDict = v32;
        }

LABEL_38:
        v19 = (*(v16 + 224))(*(v16 + 120), *(v16 + 16), theDict, a4, a5, a6, a7, a8, a9);
        if (!v19)
        {
          goto LABEL_49;
        }

        CGImageBlockSetGetRect();
        v35 = v34;
        Count = CGImageBlockSetGetCount();
        if (!Count || v35 == 0.0)
        {
          CFRelease(v19);
        }

        else
        {
          v37 = Count;
          if (CGImageBlockSetGetImageBlock())
          {
            v38 = *(v16 + 24);
            if (v38)
            {
              v39 = CGImageReadSessionGetRead(*(v38 + 24));
              if (v39)
              {
                if (IIOImageRead::isFinal(v39))
                {
                  v40 = *(v16 + 24);
                  v41 = *(v40 + 144);
                  if (v41 != -6)
                  {
                    if (v41)
                    {
                      *(v40 + 144) = 0;
                    }
                  }
                }
              }
            }

            IIOImageProviderInfo::checkBlockSetBuffer(v16);
LABEL_49:
            v42 = !v27;
            if (!v26)
            {
              v42 = 1;
            }

            if ((v42 & 1) == 0)
            {
              IIOImageRead::unmapData(v26);
            }

            LODWORD(a1) = pthread_mutex_unlock((v16 + 152));
            if (!v32)
            {
              goto LABEL_17;
            }

LABEL_58:
            CFRelease(v32);
            goto LABEL_17;
          }

          _cg_jpeg_mem_term("copyImageBlockSetWithOptions", 2363, "*** CGImageBlockSetGetImageBlock returned NULL for index %d (count is %d)\n", 0, v37);
          IIO_ImageBlockSetRelease(v19);
          LODWORD(a1) = pthread_mutex_unlock((v16 + 152));
        }

        v19 = 0;
        if (!v32)
        {
          goto LABEL_17;
        }

        goto LABEL_58;
      }
    }

    v32 = 0;
    goto LABEL_38;
  }

LABEL_17:
  v28 = gIIODebugFlags;
  if ((gIIODebugFlags & 0xC) != 0)
  {
    *(v16 + 144) = CFAbsoluteTimeGetCurrent() - *(v16 + 144);
    IIOImageProviderInfo::logBlockSetDecodingTime(v16, v19, a4, a5, a6, a7, a8, a9);
    v28 = gIIODebugFlags;
  }

  if ((v28 & 0xC000) == 0x8000 || (v28 & 0x400000000000) != 0)
  {
    IIOImageProviderInfo::debugCallbackOptionsResult(a1, theDict, v19);
    v28 = gIIODebugFlags;
  }

  if (!v19 && (v28 & 0x800000000000) != 0)
  {
    ImageIOLog("∆∆∆ ISSUE: %s:%d:  %s\n", "copyImageBlockSetWithOptions", 2402, "returned blockSet is NULL\n");
    return 0;
  }

  return v19;
}

__n128 IIOReadPlugin::inputGeometry@<Q0>(IIOReadPlugin *this@<X0>, uint64_t a2@<X8>)
{
  result = *(this + 236);
  v3 = *(this + 252);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t IIOReadPlugin::createImageBlockSetFromCache(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v40 = 0;
  v41 = &v40;
  v42 = 0x2000000000;
  v43 = 0;
  v14 = *(a1 + 32);
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 0x40000000;
  v39[2] = ___ZN13IIOReadPlugin28createImageBlockSetFromCacheEP7InfoRecP15CGImageProvider6CGRect6CGSizePK14__CFDictionary_block_invoke;
  v39[3] = &unk_1E6F094E0;
  *&v39[6] = a4;
  *&v39[7] = a5;
  *&v39[8] = a6;
  *&v39[9] = a7;
  v39[4] = &v40;
  v39[5] = a1;
  v39[10] = a3;
  *&v39[11] = a8;
  *&v39[12] = a9;
  v39[13] = a2;
  IIOImageRead::enumerateCacheKeysWithBlock(v14, v39);
  if (v41[3])
  {
    if ((gIIODebugFlags & 0x30000) == 0)
    {
LABEL_51:
      kdebug_trace();
      v18 = v41[3];
      goto LABEL_52;
    }

    v15 = *(a1 + 220);
    v16 = v15 >> 24;
    if ((v15 >> 24) <= 0x7F)
    {
      v17 = *(MEMORY[0x1E69E9830] + 4 * v16 + 60) & 0x40000;
    }

    else
    {
      v17 = __maskrune(v16, 0x40000uLL);
      v15 = *(a1 + 220);
    }

    if (v17)
    {
      v19 = (v15 >> 24);
    }

    else
    {
      v19 = 46;
    }

    v20 = v15 << 8 >> 24;
    if (v20 <= 0x7F)
    {
      v21 = *(MEMORY[0x1E69E9830] + 4 * v20 + 60) & 0x40000;
    }

    else
    {
      v21 = __maskrune(v20, 0x40000uLL);
      v15 = *(a1 + 220);
    }

    if (v21)
    {
      v22 = (v15 << 8 >> 24);
    }

    else
    {
      v22 = 46;
    }

    v23 = v15 >> 8;
    if (v23 <= 0x7F)
    {
      v24 = *(MEMORY[0x1E69E9830] + 4 * v23 + 60) & 0x40000;
    }

    else
    {
      v24 = __maskrune(v23, 0x40000uLL);
      v15 = *(a1 + 220);
    }

    if (v24)
    {
      v25 = (v15 >> 8);
    }

    else
    {
      v25 = 46;
    }

    if (v15 <= 0x7F)
    {
      if ((*(MEMORY[0x1E69E9830] + 4 * v15 + 60) & 0x40000) != 0)
      {
        goto LABEL_24;
      }
    }

    else if (__maskrune(v15, 0x40000uLL))
    {
LABEL_24:
      v26 = *(a1 + 220);
      goto LABEL_27;
    }

    v26 = 46;
LABEL_27:
    v27 = *(a1 + 432);
    v28 = v27 >> 24;
    if ((v27 >> 24) <= 0x7F)
    {
      v29 = *(MEMORY[0x1E69E9830] + 4 * v28 + 60) & 0x40000;
    }

    else
    {
      v29 = __maskrune(v28, 0x40000uLL);
      v27 = *(a1 + 432);
    }

    if (v29)
    {
      v30 = (v27 >> 24);
    }

    else
    {
      v30 = 46;
    }

    v31 = v27 << 8 >> 24;
    if (v31 <= 0x7F)
    {
      v32 = *(MEMORY[0x1E69E9830] + 4 * v31 + 60) & 0x40000;
    }

    else
    {
      v32 = __maskrune(v31, 0x40000uLL);
      v27 = *(a1 + 432);
    }

    if (v32)
    {
      v33 = (v27 << 8 >> 24);
    }

    else
    {
      v33 = 46;
    }

    v34 = v27 >> 8;
    if (v34 <= 0x7F)
    {
      v35 = *(MEMORY[0x1E69E9830] + 4 * v34 + 60) & 0x40000;
    }

    else
    {
      v35 = __maskrune(v34, 0x40000uLL);
      v27 = *(a1 + 432);
    }

    if (v35)
    {
      v36 = (v27 >> 8);
    }

    else
    {
      v36 = 46;
    }

    if (v27 <= 0x7F)
    {
      if ((*(MEMORY[0x1E69E9830] + 4 * v27 + 60) & 0x40000) != 0)
      {
        goto LABEL_47;
      }
    }

    else if (__maskrune(v27, 0x40000uLL))
    {
LABEL_47:
      v37 = *(a1 + 432);
LABEL_50:
      ImageIOLog("❇️  '%c%c%c%c' rect: {%g,%g,%g,%g} found in cache - format: '%c%c%c%c'\n", v19, v22, v25, v26, a4, a5, a6, a7, v30, v33, v36, v37);
      goto LABEL_51;
    }

    v37 = 46;
    goto LABEL_50;
  }

  v18 = 0;
LABEL_52:
  _Block_object_dispose(&v40, 8);
  return v18;
}

BOOL IIOImageRead::getCachedImageBlockData(uint64_t a1, _DWORD *a2, void **a3)
{
  v5 = cache_get_and_retain(gImageBlockCache, a2, a3);
  if (*a3 && !a2[10])
  {
    a2[10] = IOMemorySizeLookup(*a3);
  }

  DebugStringFromKey = createDebugStringFromKey(a2);
  if (DebugStringFromKey)
  {
    v7 = DebugStringFromKey;
    if (v5)
    {
      ImageIOLog("MIS cache_get_and_retain:  %p:   data: %12p key: %s  NOT FOUND\n");
    }

    else
    {
      ImageIOLog("FND cache_get_and_retain:  %p:   data: %12p key: %s\n");
    }

    free(v7);
  }

  return v5 == 0;
}

uint64_t IIOReadPlugin::callDecodeImage(uint64_t a1, uint64_t a2, uint64_t a3, IOSurfaceRef *a4, uint64_t a5, uint64_t *a6)
{
  v10 = *(a1 + 220);
  ReaderHandler = IIO_ReaderHandler::GetReaderHandler(a1);
  v12 = IIO_ReaderHandler::readerForType(ReaderHandler, v10);
  v13 = *(a1 + 16);
  v149 = a4;
  if (v13)
  {
    Options = IIOImagePlus::getOptions(v13);
  }

  else
  {
    Options = 0;
  }

  v15 = IIOImageRead::forceUseServer(*(a1 + 32));
  v16 = v15;
  IIOXPCClient = IIOXPCClient::GetIIOXPCClient(v15);
  v151 = IIO_Reader::testHeaderSize(v13);
  v18 = IIO_Reader::testHeaderSize(v151);
  v146 = IIOXPCClient;
  v19 = IIOXPCClient::useServerForDecodeImage(IIOXPCClient, v18, v12, v16);
  if (!v12)
  {
    v46 = v10 >> 24;
    if ((v10 >> 24) <= 0x7F)
    {
      v47 = *(MEMORY[0x1E69E9830] + 4 * v46 + 60) & 0x40000;
    }

    else
    {
      v47 = __maskrune(v10 >> 24, 0x40000uLL);
    }

    if (v47)
    {
      v49 = v46;
    }

    else
    {
      v49 = 46;
    }

    v50 = v10 << 8 >> 24;
    if (v50 <= 0x7F)
    {
      v51 = *(MEMORY[0x1E69E9830] + 4 * v50 + 60) & 0x40000;
    }

    else
    {
      v51 = __maskrune(v10 << 8 >> 24, 0x40000uLL);
    }

    if (v51)
    {
      v52 = v50;
    }

    else
    {
      v52 = 46;
    }

    v53 = v10 >> 8;
    if (v53 <= 0x7F)
    {
      v54 = *(MEMORY[0x1E69E9830] + 4 * v53 + 60) & 0x40000;
    }

    else
    {
      v54 = __maskrune(v10 >> 8, 0x40000uLL);
    }

    if (v54)
    {
      v55 = v53;
    }

    else
    {
      v55 = 46;
    }

    if (v10 <= 0x7F)
    {
      v56 = *(MEMORY[0x1E69E9830] + 4 * v10 + 60) & 0x40000;
    }

    else
    {
      v56 = __maskrune(v10, 0x40000uLL);
    }

    if (v56)
    {
      v57 = v10;
    }

    else
    {
      v57 = 46;
    }

    _cg_jpeg_mem_term("callDecodeImage", 2230, "*** ERROR: could not find a reader for '%c%c%c%c'\n", v49, v52, v55, v57);
    return 4294967246;
  }

  v20 = v19;
  v21 = *(a1 + 72);
  if (v21)
  {
    v22 = *v21;
    if (*v21)
    {
      v23 = IIO_Reader::utType(v12);
      if (CFStringCompare(v22, v23, 0))
      {
        v24 = *(a1 + 72);
        if (v24)
        {
          v25 = *v24;
        }

        else
        {
          v25 = 0;
        }

        v76 = IIOString::IIOString(v155, v25);
        v77 = IIOString::utf8String(v76);
        v78 = IIO_Reader::utType(v12);
        v79 = IIOString::IIOString(v154, v78);
        v80 = IIOString::utf8String(v79);
        _cg_jpeg_mem_term("callDecodeImage", 2235, "*** ERROR: pluginUTI '%s' does not match reader '%s'\n", v77, v80);
        IIOString::~IIOString(v154);
        IIOString::~IIOString(v155);
        return 4294967246;
      }
    }
  }

  if (v20)
  {
    kdebug_trace();
    IIOImagePlus::getProperties(v13);
    v154[0] = 0;
    v26 = xpc_dictionary_create(0, 0, 0);
    if (v26)
    {
      v27 = v26;
      iio_xpc_add_message_dict(v26);
      v28 = iio_xpc_add_source_dict(v27);
      v29 = iio_xpc_add_plugin_dict(v27);
      v30 = iio_xpc_add_callback_dict(v27);
      object = v27;
      xpc_dictionary_set_uint64(v27, "iio_xpc_message_id", 6uLL);
      memset(v155, 0, 24);
      v31 = IIO_Reader::utType(v12);
      v32 = IIOString::IIOString(v155, v31);
      v33 = IIOString::utf8String(v32);
      xpc_dictionary_set_string(v28, "iio_xpc_src_utitype", v33);
      xpc_dictionary_set_uint64(v28, "iio_xpc_src_ostype", *(a1 + 220));
      if (v151)
      {
        IIOImageReadSession::addDataToXPCDictionary(v151, v27, v154);
      }

      iio_xpc_dictionary_add_CFDictionary(v28, "iio_xpc_src_options");
      if (IIODictionary::containsKey(Options, @"kCGImageSourceDecodeRequest"))
      {
        iio_xpc_dictionary_add_CFDictionary(v28, "iio_xpc_src_properties");
      }

      IIODecodeParameter::saveDataToXPCObject(a2, v27);
      xpc_dictionary_set_uint64(v28, "iio_xpc_src_image_type", a3);
      v34 = (*(*v12 + 104))(v12, v151);
      if (v34)
      {
        iio_xpc_dictionary_add_GlobalInfo(v29, v34, *(a1 + 220));
        CFRelease(v34);
      }

      (*(*a1 + 112))(a1, v29);
      v35 = 1;
      if (a3 == 1)
      {
        if (v149)
        {
          if (*v149)
          {
            XPCObject = IOSurfaceCreateXPCObject(*v149);
            if (XPCObject)
            {
              xpc_dictionary_set_value(v30, "iio_xpc_cb_decode_iosurface", XPCObject);
              xpc_release(XPCObject);
              v35 = 0;
            }
          }
        }
      }

      v37 = IIOXPCClient::xpc_connection(v146);
      v38 = IIOXPCClient::xpc_queue(v146);
      v39 = IIOXPCClient::send_message_with_reply(v146, v37, v38, object);
      v40 = v39;
      if (v39)
      {
        plugin_dict = iio_xpc_get_plugin_dict(v39);
        message_dict = iio_xpc_get_message_dict(v40);
        callback_dict = iio_xpc_get_callback_dict(v40);
        error_code = iio_xpc_dictionary_get_error_code(message_dict);
        v44 = error_code;
        v45 = v10 >> 24;
        if (error_code)
        {
          if (error_code == -56)
          {
            if (v45 > 0x7F)
            {
              __maskrune(v10 >> 24, 0x40000uLL);
            }

            if ((v10 << 8 >> 24) > 0x7F)
            {
              __maskrune(v10 << 8 >> 24, 0x40000uLL);
            }

            if ((v10 >> 8) > 0x7F)
            {
              __maskrune(v10 >> 8, 0x40000uLL);
            }

            if (v10 > 0x7F)
            {
              __maskrune(v10, 0x40000uLL);
            }

            IIOXPCLog("❌ ImageIOXPC [%c%c%c%c]: XPC_READPLUGIN_DECODE_IMAGE: error: -56 (iio_methodNotImplemented)\n");
          }

          else if (error_code == -1400)
          {
            if (v45 > 0x7F)
            {
              __maskrune(v10 >> 24, 0x40000uLL);
            }

            if ((v10 << 8 >> 24) > 0x7F)
            {
              __maskrune(v10 << 8 >> 24, 0x40000uLL);
            }

            if ((v10 >> 8) > 0x7F)
            {
              __maskrune(v10 >> 8, 0x40000uLL);
            }

            if (v10 > 0x7F)
            {
              __maskrune(v10, 0x40000uLL);
            }

            IIOXPCLog("❌ ImageIOXPC [%c%c%c%c]: XPC_READPLUGIN_DECODE_IMAGE XPC connection interrupted\n");
          }

          else
          {
            if (v45 <= 0x7F)
            {
              v87 = *(MEMORY[0x1E69E9830] + 4 * v45 + 60) & 0x40000;
            }

            else
            {
              v87 = __maskrune(v10 >> 24, 0x40000uLL);
            }

            if (v87)
            {
              v91 = v45;
            }

            else
            {
              v91 = 46;
            }

            v92 = v10 << 8 >> 24;
            if (v92 <= 0x7F)
            {
              v93 = *(MEMORY[0x1E69E9830] + 4 * v92 + 60) & 0x40000;
            }

            else
            {
              v93 = __maskrune(v10 << 8 >> 24, 0x40000uLL);
            }

            if (v93)
            {
              v97 = v92;
            }

            else
            {
              v97 = 46;
            }

            v98 = v10 >> 8;
            if (v98 <= 0x7F)
            {
              v99 = *(MEMORY[0x1E69E9830] + 4 * v98 + 60) & 0x40000;
            }

            else
            {
              v99 = __maskrune(v10 >> 8, 0x40000uLL);
            }

            if (v10 <= 0x7F)
            {
              v101 = *(MEMORY[0x1E69E9830] + 4 * v10 + 60) & 0x40000;
            }

            else
            {
              v101 = __maskrune(v10, 0x40000uLL);
            }

            if (v99)
            {
              v105 = v98;
            }

            else
            {
              v105 = 46;
            }

            if (v101)
            {
              v106 = v10;
            }

            else
            {
              v106 = 46;
            }

            IIOXPCLog("❌ ImageIOXPC [%c%c%c%c]: XPC_READPLUGIN_DECODE_IMAGE error: %d\n", v91, v97, v105, v106, v44);
          }
        }

        else
        {
          if (v45 <= 0x7F)
          {
            v86 = *(MEMORY[0x1E69E9830] + 4 * v45 + 60) & 0x40000;
          }

          else
          {
            v86 = __maskrune(v10 >> 24, 0x40000uLL);
          }

          if (v86)
          {
            v88 = v45;
          }

          else
          {
            v88 = 46;
          }

          v140 = v88;
          v89 = v10 << 8 >> 24;
          if (v89 <= 0x7F)
          {
            v90 = *(MEMORY[0x1E69E9830] + 4 * v89 + 60) & 0x40000;
          }

          else
          {
            v90 = __maskrune(v10 << 8 >> 24, 0x40000uLL);
          }

          if (v90)
          {
            v94 = v89;
          }

          else
          {
            v94 = 46;
          }

          v139 = v94;
          v95 = v10 >> 8;
          if (v95 <= 0x7F)
          {
            v96 = *(MEMORY[0x1E69E9830] + 4 * v95 + 60) & 0x40000;
          }

          else
          {
            v96 = __maskrune(v10 >> 8, 0x40000uLL);
          }

          v10 = v10;
          if (v10 <= 0x7F)
          {
            v100 = *(MEMORY[0x1E69E9830] + 4 * v10 + 60) & 0x40000;
          }

          else
          {
            v100 = __maskrune(v10, 0x40000uLL);
          }

          if (v96)
          {
            v103 = v95;
          }

          else
          {
            v103 = 46;
          }

          if (v100)
          {
            v104 = v10;
          }

          else
          {
            v104 = 46;
          }

          IIOXPCLog("✅ ImageIOXPC [%c%c%c%c]: XPC_READPLUGIN_DECODE_IMAGE: OK\n", v140, v139, v103, v104);
          if (a3 == 1)
          {
            if (callback_dict)
            {
              v130 = v35;
            }

            else
            {
              v130 = 0;
            }

            if (v130 == 1)
            {
              value = xpc_dictionary_get_value(callback_dict, "iio_xpc_cb_decode_iosurface");
              if (v149)
              {
                *v149 = IOSurfaceLookupFromXPCObject(value);
              }
            }
          }

          else if (a3 == 3)
          {
            *a6 = IIOReadPlugin::createImageBlockSetFromXPCObject(a1, v40, *(a2 + 8), *(a2 + 16));
          }

          v153 = 0;
          GlobalInfo = iio_xpc_dictionary_get_GlobalInfo(plugin_dict, &v153);
          if (v153)
          {
            (*(*v12 + 96))(v12, v151, GlobalInfo);
          }
        }

        _cg_jpeg_mem_term(v146, v40, v102);
        xpc_release(v40);
      }

      else
      {
        IIOXPCLog("❌ ImageIOXPC: XPC_READPLUGIN_DECODE_IMAGE error null-reply\n");
        v44 = 4294967246;
      }

      xpc_release(object);
      IIOString::~IIOString(v155);
      if (v151 && v154[0])
      {
        IIOImageReadSession::releaseBytePointer(v151, v154[0]);
      }
    }

    else
    {
      v44 = 4294967246;
    }

    kdebug_trace();
    if (!v44)
    {
      goto LABEL_208;
    }
  }

  else
  {
    if (v16 == 1)
    {
      IIOXPCLog("⭕️ ImageIOXPC: OOP-request was made, but we're decoding in-process (XPC_READPLUGIN_DECODEIMAGE)...\n");
    }

    v44 = (*(*a1 + 216))(a1, a2, a3, v149, a5, a6);
    if (!v44)
    {
      if (a3 == 1)
      {
        PixelFormat = IOSurfaceGetPixelFormat(*v149);
        if ((gIIODebugFlags & 0x30000) != 0)
        {
          v82 = PixelFormat;
          v83 = v10 >> 24;
          v84 = MEMORY[0x1E69E9830];
          if ((v10 >> 24) <= 0x7F)
          {
            v85 = *(MEMORY[0x1E69E9830] + 4 * v83 + 60) & 0x40000;
          }

          else
          {
            v85 = __maskrune(v10 >> 24, 0x40000uLL);
          }

          if (v85)
          {
            v107 = v83;
          }

          else
          {
            v107 = 46;
          }

          v152 = v107;
          v108 = v10 << 8 >> 24;
          if (v108 <= 0x7F)
          {
            v109 = *(v84 + 4 * v108 + 60) & 0x40000;
          }

          else
          {
            v109 = __maskrune(v10 << 8 >> 24, 0x40000uLL);
          }

          if (v109)
          {
            v110 = v108;
          }

          else
          {
            v110 = 46;
          }

          v147 = v110;
          v111 = v10 >> 8;
          if (v111 <= 0x7F)
          {
            v112 = *(v84 + 4 * v111 + 60) & 0x40000;
          }

          else
          {
            v112 = __maskrune(v10 >> 8, 0x40000uLL);
          }

          if (v112)
          {
            v113 = v111;
          }

          else
          {
            v113 = 46;
          }

          objecta = v113;
          if (v10 <= 0x7F)
          {
            v114 = *(v84 + 4 * v10 + 60) & 0x40000;
          }

          else
          {
            v114 = __maskrune(v10, 0x40000uLL);
          }

          if (v114)
          {
            v115 = v10;
          }

          else
          {
            v115 = 46;
          }

          v143 = v115;
          v141 = *(a2 + 72);
          v116 = *v149;
          Width = IOSurfaceGetWidth(*v149);
          Height = IOSurfaceGetHeight(*v149);
          v119 = v82 >> 24;
          v120 = v84;
          if ((v82 >> 24) <= 0x7F)
          {
            v121 = *(v84 + 4 * v119 + 60) & 0x40000;
          }

          else
          {
            v121 = __maskrune(v82 >> 24, 0x40000uLL);
          }

          if (v121)
          {
            v122 = v119;
          }

          else
          {
            v122 = 46;
          }

          v123 = v82 << 8 >> 24;
          if (v123 <= 0x7F)
          {
            v124 = *(v120 + 4 * v123 + 60) & 0x40000;
          }

          else
          {
            v124 = __maskrune(v82 << 8 >> 24, 0x40000uLL);
          }

          if (v124)
          {
            v125 = v123;
          }

          else
          {
            v125 = 46;
          }

          LODWORD(v126) = v82 >> 8;
          if (v126 <= 0x7F)
          {
            v127 = *(v120 + 4 * v126 + 60) & 0x40000;
          }

          else
          {
            v127 = __maskrune(v82 >> 8, 0x40000uLL);
          }

          if (v127)
          {
            v126 = v126;
          }

          else
          {
            v126 = 46;
          }

          v82 = v82;
          if (v82 <= 0x7F)
          {
            v128 = *(v120 + 4 * v82 + 60) & 0x40000;
          }

          else
          {
            v128 = __maskrune(v82, 0x40000uLL);
          }

          if (v128)
          {
            v129 = v82;
          }

          else
          {
            v129 = 46;
          }

          ImageIOLog("♦️  '%c%c%c%c' - decoded IOSurface[%d]: <IOSurface: %p> %ldx%ld  '%c%c%c%c'\n", v152, v147, objecta, v143, v141, v116, Width, Height, v122, v125, v126, v129);
        }
      }

      else if (a3 == 3 && !*a6)
      {
        v58 = *(a1 + 96);
        if (v58)
        {
          if (*(a1 + 104))
          {
            v59 = 0;
            v60 = 0.0;
            v61 = 0.0;
            v62 = 0.0;
            v63 = 0.0;
            do
            {
              CGImageBlockGetRect();
              v68 = v64;
              v69 = v65;
              v70 = v66;
              v71 = v67;
              if (v59)
              {
                v156.origin.x = v60;
                v156.origin.y = v61;
                v156.size.width = v62;
                v156.size.height = v63;
                *(&v67 - 3) = CGRectUnion(v156, *&v68);
                v60 = v72;
                v61 = v73;
                v62 = v74;
              }

              else
              {
                v62 = v66;
                v61 = v65;
                v60 = v64;
              }

              v63 = v67;
              ++v59;
              v75 = *(a1 + 104);
            }

            while (v59 < v75);
            v58 = *(a1 + 96);
          }

          else
          {
            v75 = 0;
            v63 = 0.0;
            v62 = 0.0;
            v61 = 0.0;
            v60 = 0.0;
          }

          *a6 = IIOReadPlugin::imageBlockSetCreate(a1, *(a2 + 16), v75, v62, v63, v60, v61, v62, v63, v58, *(a2 + 8));
        }

        else
        {
          LogError("callDecodeImage", 2411, "*** ERROR: decodeImageImp failed - NULL _blockArray\n");
        }
      }
    }

    v48 = *(a1 + 96);
    if (v48)
    {
      free(v48);
    }

    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    if (!v44)
    {
LABEL_208:
      if (*(a1 + 382) == 1 && ((*(*a1 + 24))(a1) & 1) == 0)
      {
        CGImageProviderSetContentHeadroom();
        v133 = CGColorSpaceUsesExtendedRange(*(a1 + 168));
        v134 = CGColorSpaceUsesITUR_2100TF(*(a1 + 168));
        if (v133 && *(a1 + 373) == 1)
        {
          v135 = a6;
        }

        else
        {
          v135 = a6;
          v136 = !v134;
          if (!a6)
          {
            v136 = 1;
          }

          if (v136)
          {
            return 0;
          }
        }

        v137 = *v135;
        if (*v135)
        {
          IIOReadPlugin::convertBlockSetToSDR(a1, *v135);
          v44 = 0;
          *v135 = v137;
          return v44;
        }
      }

      return 0;
    }
  }

  return v44;
}

uint64_t IIODecodeParameter::IIODecodeParameter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CFTypeRef cf, double a6, double a7, double a8, double a9, double a10, double a11)
{
  *a1 = &unk_1EF4DD240;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a6;
  *(a1 + 32) = a7;
  *(a1 + 40) = a8;
  *(a1 + 48) = a9;
  *(a1 + 56) = a10;
  *(a1 + 64) = a11;
  *(a1 + 72) = a4;
  *(a1 + 80) = 0;
  if (cf)
  {
    *(a1 + 80) = CFRetain(cf);
  }

  return a1;
}

const char *IIOReadPlugin::debugCopyBlockSet(const char *result, const void *a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if (result[194] == 1)
  {
    v16 = result;
    PixelSize = CGImageProviderGetPixelSize();
    CGImageProviderGetSize();
    v19 = v18;
    v21 = v20;
    v22 = *(v16 + 55);
    ImageIOLog("===================================================================================================\n");
    v23 = v22 >> 24;
    v24 = MEMORY[0x1E69E9830];
    if ((v22 >> 24) <= 0x7F)
    {
      v25 = *(MEMORY[0x1E69E9830] + 4 * v23 + 60) & 0x40000;
    }

    else
    {
      v25 = __maskrune(v22 >> 24, 0x40000uLL);
    }

    if (v25)
    {
      v26 = v23;
    }

    else
    {
      v26 = 46;
    }

    v27 = v22 << 8 >> 24;
    if (v27 <= 0x7F)
    {
      v28 = *(v24 + 4 * v27 + 60) & 0x40000;
    }

    else
    {
      v28 = __maskrune(v22 << 8 >> 24, 0x40000uLL);
    }

    if (v28)
    {
      v29 = v27;
    }

    else
    {
      v29 = 46;
    }

    v30 = v22 >> 8;
    if (v30 <= 0x7F)
    {
      v31 = *(v24 + 4 * v30 + 60) & 0x40000;
    }

    else
    {
      v31 = __maskrune(v22 >> 8, 0x40000uLL);
    }

    if (v31)
    {
      v32 = v30;
    }

    else
    {
      v32 = 46;
    }

    if (v22 <= 0x7F)
    {
      v33 = *(v24 + 4 * v22 + 60) & 0x40000;
    }

    else
    {
      v33 = __maskrune(v22, 0x40000uLL);
    }

    if (v33)
    {
      v34 = v22;
    }

    else
    {
      v34 = 46;
    }

    ImageIOLog(">>> CGImageBlockSet - %c%c%c%c\n", v26, v29, v32, v34);
    ImageIOLog("                         plugin: %p\n", v16);
    ImageIOLog("                          index: %d\n", *(v16 + 56));
    ImageIOLog("                     sourceRect: {%g, %g, %g, %g}\n", a3, a4, a5, a6);
    ImageIOLog("               destionationSize: {%g, %g}\n", a7, a8);
    ImageIOLog("                      imageSize: {%d, %d}\n", v19, v21);
    ImageIOLog("                       provider: %p\n", a2);
    ImageIOLog("                      pixelSize: %zu\n", PixelSize);
    ImageIOLog("                        session: %p\n", *(v16 + 3));
    ImageIOLog("                subsampleFactor: %d\n", *(v16 + 166));
    if (*(v16 + 77) > *(v16 + 69))
    {
      if (*(v16 + 166) <= 1u)
      {
        v35 = "";
      }

      else
      {
        v35 = "SUBSAMPLING ISSUE";
      }

      _cg_jpeg_mem_term("debugCopyBlockSet", 1647, "*** _rpd._blockGeo seem to be wrong %s\n", v35);
    }

    if (*(v16 + 441) != 255)
    {
      ImageIOLog("               addressAlignment: %d\n", *(v16 + 52));
    }

    if (*(v16 + 53) != -1)
    {
      ImageIOLog("              rowBytesAlignment: %d\n", *(v16 + 53));
    }

    if (*(v16 + 440) != 255)
    {
      ImageIOLog("                      singleton: YES\n");
    }

    v36 = *(v16 + 436);
    if (v36 != 255)
    {
      if (v36 == 1)
      {
        v37 = "YES";
      }

      else
      {
        v37 = "NO";
      }

      ImageIOLog("                   format_BGRx8: %s\n", v37);
    }

    v38 = *(v16 + 438);
    if (v38 != 255)
    {
      if (v38 == 1)
      {
        v39 = "YES";
      }

      else
      {
        v39 = "NO";
      }

      ImageIOLog("              premultiplication: %s\n", v39);
    }

    v40 = *(v16 + 443);
    if (v40 != 255)
    {
      if (v40 == 1)
      {
        v41 = "YES";
      }

      else
      {
        v41 = "NO";
      }

      ImageIOLog("      cacheImmediatelyRequested: %s\n", v41);
    }

    v42 = *(v16 + 439);
    if (v42 != 255)
    {
      if (v42 == 1)
      {
        v43 = "YES";
      }

      else
      {
        v43 = "NO";
      }

      ImageIOLog("                 readOnlyBlocks: %s\n", v43);
    }

    return ImageIOLog("\n");
  }

  return result;
}

char *_cg_png_create_info_struct(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  result = malloc_type_malloc(0x1B8uLL, 0x10B0040F13E9682uLL);
  if (!result)
  {
    return 0;
  }

  if (result >= result + 440)
  {
    __break(0x5519u);
  }

  else
  {
    *(result + 54) = 0;
    *(result + 25) = 0u;
    *(result + 26) = 0u;
    *(result + 23) = 0u;
    *(result + 24) = 0u;
    *(result + 21) = 0u;
    *(result + 22) = 0u;
    *(result + 19) = 0u;
    *(result + 20) = 0u;
    *(result + 17) = 0u;
    *(result + 18) = 0u;
    *(result + 15) = 0u;
    *(result + 16) = 0u;
    *(result + 13) = 0u;
    *(result + 14) = 0u;
    *(result + 11) = 0u;
    *(result + 12) = 0u;
    *(result + 9) = 0u;
    *(result + 10) = 0u;
    *(result + 7) = 0u;
    *(result + 8) = 0u;
    *(result + 5) = 0u;
    *(result + 6) = 0u;
    *(result + 3) = 0u;
    *(result + 4) = 0u;
    *(result + 1) = 0u;
    *(result + 2) = 0u;
    *result = 0u;
  }

  return result;
}

uint64_t _cg_png_set_benign_errors(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 7340032;
  }

  else
  {
    v2 = 0;
  }

  *(result + 80) = *(result + 80) & 0xFF8FFFFF | v2;
  return result;
}

uint64_t _cg_png_set_option(uint64_t a1, unsigned int a2, int a3)
{
  v3 = 1;
  if (a1 && a2 <= 0xD && (a2 & 1) == 0)
  {
    if (a3)
    {
      v4 = 3;
    }

    else
    {
      v4 = 2;
    }

    v5 = *(a1 + 824);
    *(a1 + 824) = v5 & ~(3 << a2) | (v4 << a2);
    return (v5 >> a2) & 3;
  }

  return v3;
}

uint64_t png_user_version_check(uint64_t a1, unsigned __int8 *a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = 0;
    v5 = "1.6.43";
    v6 = a2;
    do
    {
      if (v5 >= "InitializePluginData" || v5 < "1.6.43")
      {
        __break(0x5519u);
      }

      v8 = *v6;
      v9 = *v5;
      if (v8 != v9)
      {
        *(a1 + 80) |= 0x20000u;
      }

      if (v8 == 46)
      {
        ++v4;
      }

      if (!v9)
      {
        break;
      }

      if (!v8)
      {
        break;
      }

      ++v6;
      ++v5;
    }

    while (v4 <= 1);
    if ((*(a1 + 82) & 2) == 0)
    {
      return 1;
    }
  }

  else
  {
    *(a1 + 80) |= 0x20000u;
  }

  memset(v14, 0, sizeof(v14));
  v11 = png_safecat(v14, v15, 0x80uLL, 0, "Application built with libpng-");
  v12 = png_safecat(v14, v15, 0x80uLL, v11, a2);
  v13 = png_safecat(v14, v15, 0x80uLL, v12, " but running with ");
  png_safecat(v14, v15, 0x80uLL, v13, "1.6.43");
  png_warning(a1, v14);
  return 0;
}

uint64_t _cg_png_set_IHDR(uint64_t result, uint64_t a2, unsigned int a3, unsigned int a4, unsigned __int8 a5, unsigned __int8 a6, unsigned __int8 a7, unsigned __int8 a8, unsigned __int8 a9)
{
  if (!result || !a2)
  {
    return result;
  }

  *a2 = a3;
  *(a2 + 4) = a4;
  *(a2 + 44) = a5;
  *(a2 + 45) = a6;
  *(a2 + 46) = a8;
  *(a2 + 47) = a9;
  *(a2 + 48) = a7;
  result = png_check_IHDR(result, a3, a4, a5, a6, a7, a8, a9);
  v11 = *(a2 + 45);
  if (v11 == 3)
  {
    v12 = 1;
LABEL_7:
    *(a2 + 49) = v12;
    goto LABEL_8;
  }

  v12 = v11 & 2 | 1;
  *(a2 + 49) = v12;
  if ((v11 & 4) != 0)
  {
    v12 = (v11 & 2) + 2;
    goto LABEL_7;
  }

LABEL_8:
  v13 = *(a2 + 44) * v12;
  *(a2 + 50) = v13;
  v14 = v13 >= 8u;
  v15 = (v13 * a3 + 7) >> 3;
  v16 = a3 * (v13 >> 3);
  if (!v14)
  {
    v16 = v15;
  }

  *(a2 + 16) = v16;
  *(a2 + 408) = 1;
  return result;
}

uint64_t png_check_IHDR(uint64_t result, unsigned int a2, unsigned int a3, int a4, unsigned int a5, int a6, int a7, int a8)
{
  v15 = result;
  if (a2)
  {
    if ((a2 & 0x80000000) == 0)
    {
      v16 = 0;
      goto LABEL_7;
    }

    v17 = "Invalid image width in IHDR";
  }

  else
  {
    v17 = "Image width is zero in IHDR";
  }

  result = png_warning(result, v17);
  v16 = 1;
LABEL_7:
  if (*(v15 + 1060) < a2)
  {
    result = png_warning(v15, "Image width exceeds user limit in IHDR");
    v16 = 1;
  }

  if (a3)
  {
    if ((a3 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    v18 = "Invalid image height in IHDR";
  }

  else
  {
    v18 = "Image height is zero in IHDR";
  }

  result = png_warning(v15, v18);
  v16 = 1;
LABEL_14:
  if (*(v15 + 1064) < a3)
  {
    result = png_warning(v15, "Image height exceeds user limit in IHDR");
    v16 = 1;
  }

  if (a4 > 0x10 || ((1 << a4) & 0x10116) == 0)
  {
    result = png_warning(v15, "Invalid bit depth in IHDR");
    v16 = 1;
  }

  v19 = a5 & 0xFFFFFFFB;
  if (a5 > 6 || v19 == 1)
  {
    result = png_warning(v15, "Invalid color type in IHDR");
    v16 = 1;
  }

  if (a4 > 8 && a5 == 3 || (a5 != 4 ? (v20 = v19 == 2) : (v20 = 1), !v20 ? (v21 = 0) : (v21 = 1), a4 < 8 && v21))
  {
    result = png_warning(v15, "Invalid color type/bit depth combination in IHDR");
    v16 = 1;
  }

  if (a6 >= 2)
  {
    result = png_warning(v15, "Unknown interlace method in IHDR");
    v16 = 1;
  }

  if (a7)
  {
    result = png_warning(v15, "Unknown compression method in IHDR");
    v16 = 1;
  }

  if ((*(v15 + 77) & 0x10) != 0 && *(v15 + 912))
  {
    result = png_warning(v15, "MNG features are not allowed in a PNG datastream");
  }

  if (a8 && (a8 != 64 || (*(v15 + 912) & 4) == 0 || v19 != 2 || (*(v15 + 76) & 0x1000) != 0))
  {
    png_warning(v15, "Unknown filter method in IHDR");
    if ((*(v15 + 77) & 0x10) != 0)
    {
      png_warning(v15, "Invalid filter method in IHDR");
    }

LABEL_49:
    _cg_png_error(v15, "Invalid IHDR data");
  }

  if (v16)
  {
    goto LABEL_49;
  }

  return result;
}

char *png_create_png_struct(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __src[160] = *MEMORY[0x1E69E9840];
  bzero(__src, 0x500uLL);
  HIDWORD(__src[132]) = 1000000;
  __src[133] = 0x3E8000F4240;
  __src[134] = 8000000;
  png_set_mem_fn(__src, a5, a6, a7);
  png_set_error_fn(__src, a2, a3, a4);
  if (!png_user_version_check(__src, a1))
  {
    return 0;
  }

  result = png_malloc_warn(__src, 1280);
  v15 = result;
  if (!result)
  {
    return v15;
  }

  __src[20] = png_zalloc;
  __src[21] = png_zfree;
  __src[22] = result;
  if (result < result + 1280)
  {
    memcpy(result, __src, 0x500uLL);
    return v15;
  }

  __break(0x5519u);
  return result;
}

void *png_malloc_warn(void *result, int64_t size)
{
  if (result)
  {
    v3 = result;
    result = malloc_type_malloc(size, 0x18ADE60AuLL);
    if (result)
    {
      if (size > 0)
      {
        return result;
      }

      __break(0x5519u);
    }

    png_warning(v3, "Out of memory");
    return 0;
  }

  return result;
}

void *png_set_error_fn(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    result[1] = a4;
    result[2] = a2;
    *result = a3;
  }

  return result;
}

void *png_set_mem_fn(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    result[121] = a2;
    result[122] = a3;
    result[123] = a4;
  }

  return result;
}

void png_free_data(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  if (!a1 || !a2)
  {
    return;
  }

  v8 = *(a2 + 176);
  if (v8 && (a3 & *(a2 + 340) & 0x4000) != 0)
  {
    if (a4 == -1)
    {
      if (*(a2 + 164) >= 1)
      {
        v15 = 0;
        v16 = 0;
        while (1)
        {
          v17 = *(a2 + 176);
          v18 = v17 + v15;
          v19 = v17 + v15 + 88;
          v20 = v17 + v15 < v17 || v19 > v17 + 88 * *(a2 + 168);
          if (v20 || v18 > v19)
          {
            goto LABEL_112;
          }

          png_free(a1, *(v18 + 8));
          ++v16;
          v15 += 88;
          if (v16 >= *(a2 + 164))
          {
            v8 = *(a2 + 176);
            break;
          }
        }
      }

      png_free(a1, v8);
      *(a2 + 176) = 0;
      *(a2 + 164) = 0;
      *(a2 + 168) = 0;
    }

    else
    {
      v9 = &v8[88 * a4];
      v10 = (v9 + 11);
      if (v9 < v8 || v10 > &v8[88 * *(a2 + 168)] || v9 >= v10)
      {
        goto LABEL_112;
      }

      png_free(a1, v9[1]);
      v13 = *(a2 + 176);
      v14 = v13 + 88 * a4;
      if (v14 < v13 || v14 + 88 > v13 + 88 * *(a2 + 168) || v14 > v14 + 88)
      {
        goto LABEL_112;
      }

      *(v14 + 8) = 0;
      *(v14 + 16) = 0;
    }
  }

  v22 = *(a2 + 340);
  if ((a3 & v22 & 0x2000) != 0)
  {
    *(a2 + 8) &= ~0x10u;
    png_free(a1, *(a2 + 200));
    *(a2 + 200) = 0;
    *(a2 + 208) = 0;
    *(a2 + 42) = 0;
    v22 = *(a2 + 340);
  }

  if ((a3 & v22 & 0x100) != 0)
  {
    png_free(a1, *(a2 + 376));
    png_free(a1, *(a2 + 384));
    *(a2 + 376) = 0;
    *(a2 + 384) = 0;
    *(a2 + 8) &= ~0x4000u;
    v22 = *(a2 + 340);
  }

  if ((a3 & v22 & 0x80) != 0)
  {
    png_free(a1, *(a2 + 304));
    png_free(a1, *(a2 + 320));
    *(a2 + 304) = 0;
    *(a2 + 320) = 0;
    v23 = *(a2 + 328);
    if (v23)
    {
      if (*(a2 + 337))
      {
        v24 = 0;
        do
        {
          png_free(a1, *(*(a2 + 328) + 8 * v24++));
        }

        while (v24 < *(a2 + 337));
        v23 = *(a2 + 328);
      }

      png_free(a1, v23);
      *(a2 + 328) = 0;
      *(a2 + 337) = 0;
    }

    *(a2 + 8) &= ~0x400u;
    v22 = *(a2 + 340);
  }

  if ((a3 & v22 & 0x10) != 0)
  {
    png_free(a1, *(a2 + 136));
    png_free(a1, *(a2 + 152));
    *(a2 + 136) = 0;
    *(a2 + 144) = 0;
    *(a2 + 160) = 0;
    *(a2 + 152) = 0;
    *(a2 + 8) &= ~0x1000u;
  }

  v25 = *(a2 + 360);
  if (v25 && (a3 & *(a2 + 340) & 0x20) != 0)
  {
    v26 = *(a2 + 368);
    if (a4 == -1)
    {
      if (v26 >= 1)
      {
        v32 = 0;
        v33 = 0;
        while (1)
        {
          png_free(a1, *(*(a2 + 360) + v32));
          v34 = *(a2 + 360);
          v35 = v34 + v32;
          v36 = v34 + v32 + 40;
          v37 = v34 + v32 < v34 || v36 > v34 + 40 * *(a2 + 368);
          if (v37 || v35 > v36)
          {
            goto LABEL_112;
          }

          png_free(a1, *(v35 + 24));
          ++v33;
          v32 += 40;
          if (v33 >= *(a2 + 368))
          {
            v25 = *(a2 + 360);
            break;
          }
        }
      }

      png_free(a1, v25);
      *(a2 + 360) = 0;
      *(a2 + 368) = 0;
      *(a2 + 8) &= ~0x2000u;
    }

    else
    {
      v27 = &v25[5 * a4];
      if (v27 < v25)
      {
        goto LABEL_112;
      }

      if (v27 + 5 > &v25[5 * v26])
      {
        goto LABEL_112;
      }

      if (v27 > v27 + 5)
      {
        goto LABEL_112;
      }

      png_free(a1, *v27);
      v28 = *(a2 + 360);
      v29 = v28 + 40 * a4;
      if (v29 < v28)
      {
        goto LABEL_112;
      }

      if (v29 + 40 > v28 + 40 * *(a2 + 368))
      {
        goto LABEL_112;
      }

      if (v29 > v29 + 40)
      {
        goto LABEL_112;
      }

      png_free(a1, *(v29 + 24));
      v30 = *(a2 + 360);
      v31 = v30 + 40 * a4;
      if (v31 < v30 || v31 + 40 > v30 + 40 * *(a2 + 368) || v31 > v31 + 40)
      {
        goto LABEL_112;
      }

      *(v31 + 24) = 0;
      *(v31 + 32) = 0;
      *v31 = 0;
      *(v31 + 8) = 0;
    }
  }

  v39 = *(a2 + 344);
  if (!v39 || (a3 & *(a2 + 340) & 0x200) == 0)
  {
    goto LABEL_83;
  }

  v40 = *(a2 + 352);
  if (a4 == -1)
  {
    if (v40 >= 1)
    {
      v44 = 0;
      v45 = 8;
      do
      {
        png_free(a1, *(*(a2 + 344) + v45));
        ++v44;
        v45 += 32;
      }

      while (v44 < *(a2 + 352));
      v39 = *(a2 + 344);
    }

    png_free(a1, v39);
    *(a2 + 344) = 0;
    *(a2 + 352) = 0;
    goto LABEL_83;
  }

  v41 = v39 + 32 * a4;
  if (v41 < v39 || v41 + 32 > v39 + 32 * v40 || v41 > v41 + 32 || (png_free(a1, *(v41 + 8)), v42 = *(a2 + 344), v43 = v42 + 32 * a4, v43 < v42) || v43 + 32 > v42 + 32 * *(a2 + 352) || v43 > v43 + 32)
  {
LABEL_112:
    __break(0x5519u);
    return;
  }

  *(v43 + 8) = 0;
  *(v43 + 16) = 0;
LABEL_83:
  v46 = *(a2 + 340);
  if ((a3 & v46 & 0x8000) != 0)
  {
    v47 = *(a2 + 272);
    if (v47)
    {
      png_free(a1, v47);
      *(a2 + 272) = 0;
      *(a2 + 280) = 0;
    }

    v48 = *(a2 + 264);
    if (v48)
    {
      png_free(a1, v48);
      *(a2 + 264) = 0;
      *(a2 + 260) = 0;
    }

    *(a2 + 8) &= ~0x10000u;
    v46 = *(a2 + 340);
  }

  if ((a3 & v46 & 8) != 0)
  {
    png_free(a1, *(a2 + 288));
    *(a2 + 288) = 0;
    *(a2 + 296) = 0;
    *(a2 + 8) &= ~0x40u;
    v46 = *(a2 + 340);
  }

  if ((a3 & v46 & 0x1000) != 0)
  {
    png_free(a1, *(a2 + 24));
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 8) &= ~8u;
    *(a2 + 40) = 0;
    v46 = *(a2 + 340);
  }

  if ((a3 & v46 & 0x40) != 0)
  {
    v49 = *(a2 + 392);
    if (v49)
    {
      if (*(a2 + 4))
      {
        v50 = 0;
        v51 = 0;
        while (1)
        {
          v52 = *(a2 + 392);
          v53 = (v52 + v50);
          v54 = v52 + v50 + 8;
          v55 = v52 + v50 < v52 || v54 > *(a2 + 400);
          if (v55 || v53 > v54)
          {
            goto LABEL_112;
          }

          png_free(a1, *v53);
          ++v51;
          v50 += 8;
          if (v51 >= *(a2 + 4))
          {
            v49 = *(a2 + 392);
            break;
          }
        }
      }

      png_free(a1, v49);
      *(a2 + 392) = 0;
      *(a2 + 400) = 0;
      v46 = *(a2 + 340);
    }

    *(a2 + 8) &= ~0x8000u;
  }

  v57 = a3 & 0xFFFFBDDF;
  if (a4 == -1)
  {
    v57 = a3;
  }

  *(a2 + 340) = v46 & ~v57;
}

void _cg_png_destroy_info_struct(uint64_t a1, _OWORD **a2)
{
  if (a1)
  {
    if (a2)
    {
      v2 = *a2;
      if (*a2)
      {
        *a2 = 0;
        if (v2 >= (v2 + 440) || (png_free_data(a1, v2, 0xFFFFu, -1), *(v2 + 54) = 0, v2[25] = 0u, v2[26] = 0u, v2[23] = 0u, v2[24] = 0u, v2[21] = 0u, v2[22] = 0u, v2[19] = 0u, v2[20] = 0u, v2[17] = 0u, v2[18] = 0u, v2[15] = 0u, v2[16] = 0u, v2[13] = 0u, v2[14] = 0u, v2[11] = 0u, v2[12] = 0u, v2[9] = 0u, v2[10] = 0u, v2[7] = 0u, v2[8] = 0u, v2[5] = 0u, v2[6] = 0u, v2[3] = 0u, v2[4] = 0u, v2[1] = 0u, v2[2] = 0u, *v2 = 0u, v2 > (v2 + 440)))
        {
          __break(0x5519u);
        }

        else
        {

          png_free(a1, v2);
        }
      }
    }
  }
}

void png_destroy_png_struct(char *__src)
{
  __dst[160] = *MEMORY[0x1E69E9840];
  if (__src)
  {
    memcpy(__dst, __src, 0x500uLL);
    bzero(__src, 0x500uLL);
    if (__src + 1280 < __src)
    {
      __break(0x5519u);
    }

    else if (__dst[123])
    {
      (__dst[123])(__dst, __src);
    }

    else
    {
      free(__src);
    }
  }
}

void png_destroy_gamma_table(uint64_t a1)
{
  png_free(a1, *(a1 + 496));
  *(a1 + 496) = 0;
  *(a1 + 504) = 0;
  v2 = *(a1 + 512);
  if (v2)
  {
    v3 = (a1 + 512);
    v4 = *(a1 + 488);
    if (v4 != -23)
    {
      v5 = 0;
      v6 = 1 << (8 - v4);
      if (v6 <= 1)
      {
        v6 = 1;
      }

      v7 = 16 * v6;
      while (1)
      {
        v8 = *(a1 + 512);
        v9 = (v8 + v5);
        v10 = v8 + v5 + 16;
        v11 = v8 + v5 < v8 || v10 > *(a1 + 520);
        if (v11 || v9 > v10)
        {
          goto LABEL_47;
        }

        png_free(a1, *v9);
        v5 += 16;
        if (v7 == v5)
        {
          v2 = *v3;
          break;
        }
      }
    }

    png_free(a1, v2);
    *v3 = 0;
    *(a1 + 520) = 0;
  }

  png_free(a1, *(a1 + 528));
  *(a1 + 528) = 0u;
  png_free(a1, *(a1 + 544));
  *(a1 + 544) = 0u;
  v13 = *(a1 + 560);
  if (v13)
  {
    v14 = (a1 + 560);
    v15 = *(a1 + 488);
    if (v15 != -23)
    {
      v16 = 0;
      v17 = 1 << (8 - v15);
      if (v17 <= 1)
      {
        v17 = 1;
      }

      v18 = 16 * v17;
      while (1)
      {
        v19 = *(a1 + 560);
        v20 = (v19 + v16);
        v21 = v19 + v16 + 16;
        v22 = v19 + v16 < v19 || v21 > *(a1 + 568);
        if (v22 || v20 > v21)
        {
          goto LABEL_47;
        }

        png_free(a1, *v20);
        v16 += 16;
        if (v18 == v16)
        {
          v13 = *v14;
          break;
        }
      }
    }

    png_free(a1, v13);
    *v14 = 0;
    *(a1 + 568) = 0;
  }

  v24 = *(a1 + 576);
  if (v24)
  {
    v25 = (a1 + 576);
    v26 = *(a1 + 488);
    if (v26 != -23)
    {
      v27 = 0;
      v28 = 1 << (8 - v26);
      if (v28 <= 1)
      {
        v28 = 1;
      }

      v29 = 16 * v28;
      while (1)
      {
        v30 = *(a1 + 576);
        v31 = (v30 + v27);
        v32 = v30 + v27 + 16;
        v33 = v30 + v27 < v30 || v32 > *(a1 + 584);
        if (v33 || v31 > v32)
        {
          break;
        }

        png_free(a1, *v31);
        v27 += 16;
        if (v29 == v27)
        {
          v24 = *v25;
          goto LABEL_45;
        }
      }

LABEL_47:
      __break(0x5519u);
      return;
    }

LABEL_45:
    png_free(a1, v24);
    *v25 = 0;
    *(a1 + 584) = 0;
  }
}

uint64_t png_handle_pHYs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 76);
  if ((v4 & 1) == 0)
  {
    png_chunk_error(a1, "missing IHDR");
  }

  if ((v4 & 4) != 0)
  {
    png_crc_finish(a1, a3);
    v7 = "out of place";
  }

  else if (a2 && (*(a2 + 8) & 0x80) != 0)
  {
    png_crc_finish(a1, a3);
    v7 = "duplicate";
  }

  else
  {
    if (a3 == 9)
    {
      v9 = 0;
      v8 = 0;
      png_crc_read(a1, &v8, 9u);
      result = png_crc_finish(a1, 0);
      if (!result)
      {
        return _cg_png_set_pHYs(a1, a2, bswap32(v8), bswap32(HIDWORD(v8)), v9);
      }

      return result;
    }

    png_crc_finish(a1, a3);
    v7 = "invalid";
  }

  return png_chunk_benign_error(a1, v7);
}

void png_cache_unknown_chunk(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 1088);
  v5 = *(a1 + 1088);
  if (v5)
  {
    png_free(a1, v5);
    v6 = 0;
    *v4 = 0;
    v4[1] = 0;
  }

  else
  {
    v6 = *(a1 + 1096);
  }

  v7 = *(a1 + 1072);
  if (v7 + 1 <= 1)
  {
    v6 = a2;
LABEL_6:
    v8 = *(a1 + 312);
    *(a1 + 1080) = HIBYTE(v8);
    *(a1 + 1081) = BYTE2(v8);
    *(a1 + 1082) = BYTE1(v8);
    *(a1 + 1083) = v8;
    *(a1 + 1084) = 0;
    *(a1 + 1104) = *(a1 + 76);
    if (!a2)
    {
      *v4 = 0;
      v4[1] = 0;
      goto LABEL_21;
    }

    v9 = png_malloc_warn(a1, v6);
    v10 = &v9[v6];
    if (!v9)
    {
      v10 = 0;
    }

    v11 = v10 >= v9;
    v12 = v10 - v9;
    if (!v11 || v12 < v6)
    {
      goto LABEL_23;
    }

    v13 = v9;
    *(a1 + 1088) = v9;
    *(a1 + 1096) = v6;
    v14 = v6;
    goto LABEL_15;
  }

  v14 = a2;
  if (v7 >= a2)
  {
    v6 = a2;
    goto LABEL_6;
  }

  v13 = 0;
  if (a2)
  {
LABEL_15:
    if (!v13)
    {
      png_crc_finish(a1, a2);
      png_chunk_benign_error(a1, "unknown chunk exceeds memory limits");
      return;
    }
  }

  if (!a2)
  {
LABEL_21:
    png_crc_finish(a1, 0);
    return;
  }

  if (v6 >= v14)
  {
    png_crc_read(a1, v13, a2);
    goto LABEL_21;
  }

LABEL_23:
  __break(0x5519u);
}

void png_handle_unknown(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = a4;
  if (!*(a1 + 872))
  {
    if (!a4)
    {
      v4 = *(a1 + 880);
    }

    if (v4 == 3 || v4 == 2 && (*(a1 + 315) & 0x20) != 0)
    {
      png_cache_unknown_chunk(a1, a3);
      if (!v9)
      {
        goto LABEL_23;
      }
    }

    else
    {
      png_crc_finish(a1, a3);
    }

    goto LABEL_16;
  }

  png_cache_unknown_chunk(a1, a3);
  if (!v7)
  {
    goto LABEL_23;
  }

  if (a1 + 1080 > (a1 + 1112))
  {
    __break(0x5519u);
    goto LABEL_34;
  }

  v8 = (*(a1 + 872))(a1);
  if (v8 < 0)
  {
LABEL_34:
    v13 = "error in user chunk";
LABEL_35:
    png_chunk_error(a1, v13);
  }

  if (!v8)
  {
    if (v4 <= 1)
    {
      if (*(a1 + 880) <= 1)
      {
        png_chunk_warning(a1, "Saving unknown chunk:");
        png_app_warning(a1, "forcing save of an unhandled chunk; please call png_set_keep_unknown_chunks");
      }

      goto LABEL_18;
    }

LABEL_16:
    if (v4 == 3)
    {
LABEL_19:
      v10 = *(a1 + 1068);
      if (!v10)
      {
LABEL_25:
        _cg_png_set_unknown_chunks(a1, a2, (a1 + 1080), 1);
        goto LABEL_26;
      }

      if (v10 != 1)
      {
        if (v10 == 2)
        {
          v11 = 1;
          *(a1 + 1068) = 1;
          png_chunk_benign_error(a1, "no space in chunk cache");
          goto LABEL_27;
        }

        *(a1 + 1068) = v10 - 1;
        goto LABEL_25;
      }

LABEL_23:
      v11 = 1;
      goto LABEL_27;
    }

    if (v4 != 2)
    {
      goto LABEL_23;
    }

LABEL_18:
    if ((*(a1 + 315) & 0x20) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

LABEL_26:
  v11 = 0;
LABEL_27:
  v12 = *(a1 + 1088);
  if (v12)
  {
    png_free(a1, v12);
  }

  *(a1 + 1088) = 0;
  *(a1 + 1096) = 0;
  if (v11 && (*(a1 + 315) & 0x20) == 0)
  {
    v13 = "unhandled critical chunk";
    goto LABEL_35;
  }
}

uint64_t _cg_png_get_user_chunk_ptr(uint64_t result)
{
  if (result)
  {
    return *(result + 864);
  }

  return result;
}

void _cg_png_read_info(unint64_t a1, _DWORD *a2)
{
  if (!a1 || !a2)
  {
    return;
  }

  png_read_sig(a1, a2);
  chunk_header = _cg_png_read_chunk_header(a1);
  for (i = *(a1 + 312); i != 1229209940; i = *(a1 + 312))
  {
    v8 = *(a1 + 76);
    if ((v8 & 4) != 0)
    {
      *(a1 + 76) = v8 | 0x2008;
    }

    if (i == 1229278788)
    {
      png_handle_IEND(a1, a2, chunk_header);
    }

    else if (i == 1229472850)
    {
      png_handle_IHDR(a1, a2, chunk_header);
    }

    else
    {
      v9 = png_chunk_unknown_handling(a1, i);
      if (v9)
      {
        png_handle_unknown(a1, a2, chunk_header, v9);
        if (i == 1347179589)
        {
          *(a1 + 76) |= 2u;
        }

        goto LABEL_20;
      }

      if (i > 1866876530)
      {
        if (i <= 1934642259)
        {
          if (i <= 1883789682)
          {
            if (i == 1866876531)
            {
              png_handle_oFFs(a1, a2, chunk_header);
            }

            else
            {
              if (i != 1883455820)
              {
                goto LABEL_74;
              }

              png_handle_pCAL(a1, a2, chunk_header);
            }
          }

          else
          {
            switch(i)
            {
              case 1883789683:
                png_handle_pHYs(a1, a2, chunk_header);
                break;
              case 1933723988:
                png_handle_sBIT(a1, a2, chunk_header);
                break;
              case 1933787468:
                png_handle_sCAL(a1, a2, chunk_header);
                break;
              default:
                goto LABEL_74;
            }
          }
        }

        else if (i > 1950960964)
        {
          switch(i)
          {
            case 1950960965:
              png_handle_tIME(a1, a2, chunk_header);
              break;
            case 1951551059:
              png_handle_tRNS(a1, a2, chunk_header);
              break;
            case 2052348020:
              png_handle_zTXt(a1, a2, chunk_header);
              break;
            default:
              goto LABEL_74;
          }
        }

        else
        {
          switch(i)
          {
            case 1934642260:
              png_handle_sPLT(a1, a2, chunk_header);
              break;
            case 1934772034:
              png_handle_sRGB(a1, a2, chunk_header);
              break;
            case 1950701684:
              png_handle_tEXt(a1, a2, chunk_header);
              break;
            default:
              goto LABEL_74;
          }
        }
      }

      else if (i <= 1717785675)
      {
        if (i <= 1649100611)
        {
          if (i == 1347179589)
          {
            png_handle_PLTE(a1, a2, chunk_header);
          }

          else
          {
            if (i != 1633899596)
            {
              goto LABEL_74;
            }

            png_handle_acTL(a1, a2, chunk_header);
          }
        }

        else
        {
          switch(i)
          {
            case 1649100612:
              png_handle_bKGD(a1, a2, chunk_header);
              break;
            case 1665684045:
              png_handle_cHRM(a1, a2, chunk_header);
              break;
            case 1700284774:
              png_handle_eXIf(a1, a2, chunk_header);
              break;
            default:
              goto LABEL_74;
          }
        }
      }

      else if (i > 1749635923)
      {
        switch(i)
        {
          case 1749635924:
            png_handle_hIST(a1, a2, chunk_header);
            break;
          case 1766015824:
            if ((*(a1 + 84) & 4) != 0)
            {
              png_crc_finish(a1, chunk_header);
            }

            else
            {
              png_handle_iCCP(a1, a2);
            }

            break;
          case 1767135348:
            png_handle_iTXt(a1, a2, chunk_header);
            break;
          default:
LABEL_74:
            png_handle_unknown(a1, a2, chunk_header, 0);
            break;
        }
      }

      else
      {
        switch(i)
        {
          case 1717785676:
            png_handle_fcTL(a1, a2, chunk_header);
            break;
          case 1717846356:
            png_handle_fdAT(a1, a2, chunk_header);
            break;
          case 1732332865:
            png_handle_gAMA(a1, a2, chunk_header);
            break;
          default:
            goto LABEL_74;
        }
      }
    }

LABEL_20:
    chunk_header = _cg_png_read_chunk_header(a1);
  }

  v6 = *(a1 + 76);
  if ((v6 & 1) == 0)
  {
    v10 = "Missing IHDR before IDAT";
    goto LABEL_81;
  }

  if ((v6 & 2) == 0 && *(a1 + 431) == 3)
  {
    v10 = "Missing PLTE before IDAT";
LABEL_81:
    png_chunk_error(a1, v10);
  }

  if ((v6 & 8) != 0)
  {
    png_chunk_benign_error(a1, "Too many IDATs found");
    v6 = *(a1 + 76);
  }

  *(a1 + 76) = v6 | 4;
  v7 = png_chunk_unknown_handling(a1, 1229209940);
  if (v7)
  {
    png_handle_unknown(a1, a2, chunk_header, v7);
    LODWORD(chunk_header) = 0;
  }

  else
  {
    png_have_info(a1, a2);
  }

  *(a1 + 392) = chunk_header;
}

void *_cg_png_set_read_fn(void *result, uint64_t a2, size_t (*a3)(size_t result, void *__ptr, size_t a3))
{
  if (result)
  {
    v3 = result;
    if (a3)
    {
      v4 = a3;
    }

    else
    {
      v4 = png_default_read_data;
    }

    result[4] = v4;
    result[5] = a2;
    if (result[3])
    {
      result[3] = 0;
      result = png_warning(result, "Can't set both read_data_fn and write_data_fn in the same structure");
    }

    v3[59] = 0;
  }

  return result;
}

void _cg_png_set_keep_unknown_chunks_sized(uint64_t a1, unsigned int a2, const char *a3, int a4)
{
  if (!a1)
  {
    return;
  }

  if (a2 >= 4)
  {
    v6 = "png_set_keep_unknown_chunks: invalid keep";
LABEL_74:

    png_app_error(a1, v6);
    return;
  }

  v7 = a4;
  if (a4 <= 0)
  {
    *(a1 + 880) = a2;
    if (!a4)
    {
      return;
    }

    v8 = "bKGD";
    v9 = "14IIO_Writer_GIF";
    v7 = 18;
  }

  else
  {
    v8 = a3;
    if (!a3)
    {
      v6 = "png_set_keep_unknown_chunks: no chunk list";
      goto LABEL_74;
    }

    v9 = &a3[5 * a4];
  }

  v10 = *(a1 + 888);
  if (v10)
  {
    v11 = *(a1 + 884);
  }

  else
  {
    v11 = 0;
  }

  if (v11 + v7 >= 0x33333334)
  {
    v6 = "png_set_keep_unknown_chunks: too many chunks";
    goto LABEL_74;
  }

  if (a2)
  {
    v12 = 5 * (v11 + v7);
    v13 = png_malloc(a1, v12);
    v10 = v13;
    if (v13)
    {
      v14 = v13 + v12;
    }

    else
    {
      v14 = 0;
    }

    if (v11)
    {
      if ((v15 = *(a1 + 888), v16 = *(a1 + 896), v19 = v16 >= v15, v17 = v16 - v15, !v19) || (v18 = 5 * v11, v17 < v18) || (v13 <= v14 ? (v19 = v14 - v13 >= v18) : (v19 = 0), !v19 || (memcpy(v13, v15, 5 * v11), v10 > (v10 + v18))))
      {
LABEL_88:
        __break(0x5519u);
        return;
      }
    }

    if (v10)
    {
      goto LABEL_29;
    }

    goto LABEL_79;
  }

  if (!v11)
  {
LABEL_80:
    v31 = 0;
    v10 = 0;
    v14 = 0;
    goto LABEL_81;
  }

  v14 = *(a1 + 896);
  if (!v10)
  {
LABEL_79:
    v31 = 0;
LABEL_81:
    v36 = *(a1 + 888);
    goto LABEL_82;
  }

LABEL_29:
  v20 = 0;
  v21 = v14 - v10;
  while (2)
  {
    v22 = &v8[5 * v20];
    v23 = v22 + 5;
    if (v22 < v8 || v23 > v9 || v22 > v23)
    {
      goto LABEL_88;
    }

    v26 = (v10 + 5 * v11);
    v27 = v11 + 1;
    v28 = v14 - v10;
    v29 = v10;
    while (--v27)
    {
      if (v29 > v14 || v28 <= 3)
      {
        goto LABEL_88;
      }

      if (*v29 == *v22)
      {
        v30 = v29 + 4;
        if (v29 + 4 >= v14 || v30 < v29)
        {
          goto LABEL_88;
        }

        goto LABEL_53;
      }

      v28 -= 5;
      v19 = (v29 + 5) >= v29;
      v29 = (v29 + 5);
      if (!v19)
      {
        goto LABEL_88;
      }
    }

    if (!a2)
    {
      goto LABEL_54;
    }

    if (v14 < v26)
    {
      goto LABEL_88;
    }

    if (v14 - v26 < 4)
    {
      goto LABEL_88;
    }

    *v26 = *v22;
    if (v26 >= v26 + 1)
    {
      goto LABEL_88;
    }

    v30 = v26 + 1;
    if ((v26 + 1) >= v14 || v30 < v26)
    {
      goto LABEL_88;
    }

    ++v11;
LABEL_53:
    *v30 = a2;
LABEL_54:
    if (++v20 != v7)
    {
      continue;
    }

    break;
  }

  if (v11)
  {
    v31 = 0;
    v32 = (v10 + 4);
    v33 = v10;
    while (v32 < v14 && v32 >= v10)
    {
      if (*v32)
      {
        v34 = (v32 - 4);
        if ((v32 - 4) != v33)
        {
          if (v34 > v14)
          {
            goto LABEL_88;
          }

          if (v10 > v34)
          {
            goto LABEL_88;
          }

          if (v21 < 5)
          {
            goto LABEL_88;
          }

          if (v33 > v14)
          {
            goto LABEL_88;
          }

          if (v10 > v33)
          {
            goto LABEL_88;
          }

          if (v14 - v33 < 5)
          {
            goto LABEL_88;
          }

          v35 = *v34;
          *(v33 + 4) = *v32;
          *v33 = v35;
          if (v33 >= v33 + 5)
          {
            goto LABEL_88;
          }
        }

        v33 += 5;
        ++v31;
      }

      v32 = (v32 + 5);
      v21 -= 5;
      if (!--v11)
      {
        if (v31)
        {
          goto LABEL_81;
        }

        goto LABEL_71;
      }
    }

    goto LABEL_88;
  }

LABEL_71:
  v36 = *(a1 + 888);
  if (v36 != v10)
  {
    png_free(a1, v10);
    goto LABEL_80;
  }

  v31 = 0;
  v10 = 0;
  v14 = 0;
LABEL_82:
  *(a1 + 884) = v31;
  if (v36 != v10)
  {
    if (v36)
    {
      png_free(a1, v36);
    }

    *(a1 + 888) = v10;
    *(a1 + 896) = v14;
  }
}

uint64_t png_chunk_unknown_handling(uint64_t a1, int a2)
{
  LOBYTE(v3) = HIBYTE(a2);
  BYTE1(v3) = BYTE2(a2);
  BYTE2(v3) = BYTE1(a2);
  HIBYTE(v3) = a2;
  v4 = 0;
  return png_handle_as_unknown(a1, &v3);
}

BOOL png_crc_error(_DWORD *a1)
{
  v5 = 0;
  v2 = a1[78];
  v3 = a1[20];
  a1[287] = 129;
  png_read_data(a1, &v5, 4);
  if ((v2 & 0x20000000) != 0)
  {
    if ((~v3 & 0x300) == 0)
    {
      return 0;
    }
  }

  else if ((v3 & 0x800) != 0)
  {
    return 0;
  }

  return bswap32(v5) != a1[99];
}

uint64_t _cg_png_set_read_user_chunk_fn(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    *(result + 872) = a3;
    *(result + 864) = a2;
  }

  return result;
}

uint64_t png_read_data(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(result + 32);
  if (!v4)
  {
    _cg_png_error(result, "Call to NULL read function");
  }

  if (a2 && !a3)
  {
    __break(0x5519u);
  }

  else
  {

    return v4();
  }

  return result;
}

uint64_t _cg_png_get_io_ptr(uint64_t result)
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

uint64_t _cg_png_read_update_info(uint64_t result, unsigned int *a2)
{
  if (result)
  {
    v2 = result;
    if ((*(result + 80) & 0x40) != 0)
    {

      return png_app_error(result, "png_read_update_info/png_start_read_image: duplicate call");
    }

    else
    {
      png_read_start_row(result);

      return png_read_transform_info(v2, a2);
    }
  }

  return result;
}

uint64_t _cg_png_get_rowbytes(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      return *(a2 + 16);
    }
  }

  return result;
}

unint64_t png_read_sig(unint64_t result, uint64_t a2)
{
  v2 = *(result + 437);
  if (v2 <= 7)
  {
    v3 = result;
    *(result + 1148) = 17;
    v4 = a2 + 52;
    png_read_data(result, a2 + 52 + v2, 8 - v2);
    *(v3 + 437) = 8;
    result = png_sig_cmp(v4, v2, 8 - v2);
    if (result)
    {
      if (v2 <= 3 && png_sig_cmp(v4, v2, 4 - v2))
      {
        v5 = "Not a PNG file";
      }

      else
      {
        v5 = "PNG file corrupted by ASCII conversion";
      }

      _cg_png_error(v3, v5);
    }

    if (v2 <= 2)
    {
      *(v3 + 76) |= 0x1000u;
    }
  }

  return result;
}

unint64_t png_sig_cmp(uint64_t a1, unint64_t a2, size_t a3)
{
  if (a3 <= 8)
  {
    if (!a3)
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    a3 = 8;
  }

  if (a2 > 7)
  {
    return 0xFFFFFFFFLL;
  }

  if (a3 + a2 > 8)
  {
    a3 = 8 - a2;
  }

  result = a1 + a2;
  if (a3 <= 8 - a2 && result <= result + a3)
  {
    return memcmp(result, &png_sig_cmp_png_signature + a2, a3);
  }

  __break(0x5519u);
  return result;
}

uLong png_reset_crc(uLong result)
{
  if ((~*(result + 80) & 0x300) != 0 && (*(result + 80) & 0x800) == 0)
  {
    v2 = result;
    result = crc32(0, 0, 0);
    *(v2 + 396) = result;
  }

  return result;
}

uint64_t png_calculate_crc(uint64_t result, Bytef *buf, uint64_t a3)
{
  if ((*(result + 315) & 0x20) != 0)
  {
    v3 = (~*(result + 80) & 0x300) != 0;
  }

  else
  {
    v3 = (*(result + 80) & 0x800) == 0;
  }

  if (a3 && v3)
  {
    v4 = a3;
    v6 = result;
    result = *(result + 396);
    while (1)
    {
      v7 = v4 ? v4 : 0xFFFFFFFFLL;
      result = crc32(result, buf, v7);
      if (&buf[v7] > &buf[v4] || buf > &buf[v7])
      {
        break;
      }

      buf += v7;
      v4 -= v7;
      if (!v4)
      {
        *(v6 + 396) = result;
        return result;
      }
    }

    __break(0x5519u);
  }

  return result;
}

void (**png_check_chunk_name(void (**result)(void), unsigned int a2))(void)
{
  v2 = 4;
  do
  {
    if (a2 - 123 < 0xFFFFFFC6 || a2 - 91 <= 5)
    {
      png_chunk_error(result, "invalid chunk type");
    }

    a2 >>= 8;
    --v2;
  }

  while (v2);
  return result;
}

uint64_t png_handle_IHDR(uint64_t a1, uint64_t a2, int a3)
{
  v20[2] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 76);
  if (v4)
  {
    v19 = "out of place";
    goto LABEL_13;
  }

  if (a3 != 13)
  {
    v19 = "invalid";
LABEL_13:
    png_chunk_error(a1, v19);
  }

  *(v20 + 5) = 0;
  v20[0] = 0;
  *(a1 + 76) = v4 | 1;
  png_crc_read(a1, v20, 0xDu);
  png_crc_finish(a1, 0);
  if (LOBYTE(v20[0]) << 24 < 0 || BYTE4(v20[0]) << 24 < 0)
  {
    _cg_png_error(a1, "PNG unsigned integer out of range");
  }

  v6 = _byteswap_ulong(v20[0]);
  v7 = _byteswap_ulong(HIDWORD(v20[0]));
  v8 = v20[1];
  v9 = BYTE1(v20[1]);
  v10 = BYTE2(v20[1]);
  v11 = BYTE3(v20[1]);
  v12 = BYTE4(v20[1]);
  *(a1 + 928) = v6;
  *(a1 + 932) = v7;
  *(a1 + 280) = v6;
  *(a1 + 284) = v7;
  *(a1 + 432) = v8;
  *(a1 + 428) = v12;
  *(a1 + 431) = v9;
  *(a1 + 916) = v11;
  *(a1 + 1056) = v10;
  v13 = 0x4010201030101uLL >> (8 * v9);
  if (v9 >= 7)
  {
    LOBYTE(v13) = 1;
  }

  *(a1 + 435) = v13;
  v14 = v13 * v8;
  *(a1 + 434) = v14;
  v15 = v14 >= 8u;
  v16 = (v14 * v6 + 7) >> 3;
  v17 = v6 * (v14 >> 3);
  if (!v15)
  {
    v17 = v16;
  }

  *(a1 + 296) = v17;
  return _cg_png_set_IHDR(a1, a2, v6, v7, v8, v9, v12, v10, v11);
}

uint64_t png_check_chunk_length(uint64_t result, unsigned int a2)
{
  v2 = *(result + 1072);
  if (v2 - 1 >= 0x7FFFFFFE)
  {
    v2 = 0x7FFFFFFFLL;
  }

  if (*(result + 312) == 1229209940)
  {
    v3 = 6;
    if (!*(result + 428))
    {
      v3 = 0;
    }

    v4 = ((*(result + 435) * *(result + 280)) << (*(result + 432) > 8u)) + v3;
    v5 = *(result + 284);
    if (0xFFFFFFFF / (v4 + 1) >= v5)
    {
      v6 = (v4 + 1) * v5;
    }

    else
    {
      v6 = 0x7FFFFFFFLL;
    }

    if (v4 + 1 < 0x7F36)
    {
      v7 = v4 + 1;
    }

    else
    {
      v7 = 32566;
    }

    v8 = 5 * (v6 / v7) + v6 + 11;
    if (v8 >= 0x7FFFFFFF)
    {
      v8 = 0x7FFFFFFFLL;
    }

    if (v2 <= v8)
    {
      v2 = v8;
    }
  }

  if (v2 < a2)
  {
    return png_benign_error(result, "chunk data is too large");
  }

  return result;
}

uint64_t _cg_png_read_chunk_header(uLong a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  *(a1 + 1148) = 33;
  png_read_data(a1, v5, 8);
  v2 = LOBYTE(v5[0]) << 24;
  if (v2 < 0)
  {
    _cg_png_error(a1, "PNG unsigned integer out of range");
  }

  v3 = BYTE3(v5[0]) | (BYTE1(v5[0]) << 16) | (BYTE2(v5[0]) << 8);
  *(a1 + 312) = bswap32(HIDWORD(v5[0]));
  png_reset_crc(a1);
  png_calculate_crc(a1, v5 + 4, 4);
  png_check_chunk_name(a1, *(a1 + 312));
  png_check_chunk_length(a1, v3 | v2);
  *(a1 + 1148) = 65;
  return v3 | v2;
}

char *png_create_read_struct_2(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = png_create_png_struct(a1, a2, a3, a4, a5, a6, a7);
  v8 = result;
  if (!result)
  {
    return v8;
  }

  *(result + 286) = 0x4000;
  v9 = *(result + 20) | 0x300000;
  *(result + 19) = 0x8000;
  *(result + 20) = v9;
  if (result < result + 1280)
  {
    _cg_png_set_read_fn(result, 0, 0);
    return v8;
  }

  __break(0x5519u);
  return result;
}

BOOL png_crc_finish(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a2);
  v9 = *MEMORY[0x1E69E9840];
  if (v2)
  {
    v4 = v2;
    do
    {
      bzero(v8, 0x1000uLL);
      if (v4 >= 0x1000)
      {
        v5 = 4096;
      }

      else
      {
        v5 = v4;
      }

      v4 -= v5;
      png_crc_read(v3, v8, v5);
    }

    while (v4);
  }

  result = png_crc_error(v3);
  if (result)
  {
    v7 = *(v3 + 80);
    if ((*(v3 + 315) & 0x20) != 0)
    {
      if ((v7 & 0x200) == 0)
      {
        goto LABEL_10;
      }
    }

    else if ((v7 & 0x400) != 0)
    {
LABEL_10:
      png_chunk_warning(v3, "CRC error");
      return 1;
    }

    png_chunk_error(v3, "CRC error");
  }

  return result;
}

uint64_t png_read_start_row(uint64_t a1)
{
  png_init_read_transformations(a1);
  if (*(a1 + 428))
  {
    v2 = *(a1 + 88);
    v3 = *(a1 + 284);
    if ((v2 & 2) == 0)
    {
      v3 = (v3 + 7) >> 3;
    }

    *(a1 + 288) = v3;
    v4 = *(a1 + 429);
    v5 = &png_read_finish_row_png_pass_inc[v4] < png_read_finish_row_png_pass_ystart && &png_read_finish_row_png_pass_inc[v4] >= png_read_finish_row_png_pass_inc;
    if (!v5)
    {
      goto LABEL_90;
    }

    v6 = png_read_finish_row_png_pass_inc[v4];
    v7 = png_read_start_row_png_pass_start[v4];
    v8 = *(a1 + 280);
    *(a1 + 304) = (v8 + v6 + ~v7) / v6;
  }

  else
  {
    *(a1 + 288) = *(a1 + 284);
    v8 = *(a1 + 280);
    *(a1 + 304) = v8;
    v2 = *(a1 + 88);
  }

  v9 = *(a1 + 434);
  if ((v2 & 4) != 0 && *(a1 + 432) < 8u)
  {
    v9 = 8;
  }

  if ((v2 & 0x1000) == 0)
  {
    if ((v2 & 0x200) != 0)
    {
      *(a1 + 88) = v2 & 0xFFFFEDFF;
    }

    goto LABEL_29;
  }

  v10 = *(a1 + 431);
  if (*(a1 + 431))
  {
    if (v10 == 2)
    {
      if (*(a1 + 424))
      {
        v9 = (87384 * v9) >> 16;
      }
    }

    else if (v10 == 3)
    {
      if (*(a1 + 424))
      {
        v9 = 32;
      }

      else
      {
        v9 = 24;
      }

      if ((v2 & 0x200) == 0)
      {
        goto LABEL_29;
      }

LABEL_28:
      v9 <<= *(a1 + 432) < 0x10u;
      goto LABEL_29;
    }

    if ((v2 & 0x200) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (v9 <= 8)
  {
    v9 = 8;
  }

  v9 <<= *(a1 + 424) != 0;
  if ((v2 & 0x200) != 0)
  {
    goto LABEL_28;
  }

LABEL_29:
  v11 = *(a1 + 88);
  if ((v11 & 0x8000) == 0)
  {
    if ((v11 & 0x4000) != 0)
    {
      goto LABEL_41;
    }

LABEL_50:
    if ((v11 & 0x100000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_51;
  }

  if (v9 <= 0x20)
  {
    v12 = 32;
  }

  else
  {
    v12 = 64;
  }

  if (v9 >= 9)
  {
    v13 = 32;
  }

  else
  {
    v13 = 16;
  }

  if (!*(a1 + 431))
  {
    v9 = v13;
  }

  if (*(a1 + 431) - 2 < 2)
  {
    v9 = v12;
  }

  if ((v11 & 0x4000) == 0)
  {
    goto LABEL_50;
  }

LABEL_41:
  if ((v11 & 0x8000) != 0 || ((*(a1 + 424) != 0) & (v11 >> 12)) != 0 || (v14 = *(a1 + 431), v14 == 4))
  {
    if (v9 >= 0x11)
    {
      v9 = 64;
    }

    else
    {
      v9 = 32;
    }

    if ((v11 & 0x100000) == 0)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v34 = v14 == 6;
    if (v14 == 6)
    {
      v35 = 64;
    }

    else
    {
      v35 = 48;
    }

    if (v34)
    {
      v36 = 32;
    }

    else
    {
      v36 = 24;
    }

    if (v9 <= 8)
    {
      v9 = v36;
    }

    else
    {
      v9 = v35;
    }

    if ((v11 & 0x100000) == 0)
    {
      goto LABEL_53;
    }
  }

LABEL_51:
  if (*(a1 + 73) * *(a1 + 72) > v9)
  {
    v9 = *(a1 + 73) * *(a1 + 72);
  }

LABEL_53:
  *(a1 + 438) = v9;
  *(a1 + 439) = 0;
  v15 = (v8 + 7) & 0xFFFFFFF8;
  v16 = v15 * (v9 >> 3);
  v17 = (v15 * v9) >> 3;
  if (v9 > 7)
  {
    v17 = v16;
  }

  v18 = v17 + ((v9 + 7) >> 3) + 49;
  if (v18 > *(a1 + 1112))
  {
    png_free(a1, *(a1 + 992));
    png_free(a1, *(a1 + 1152));
    if (*(a1 + 428))
    {
      png_calloc(a1, v18);
    }

    else
    {
      v19 = png_malloc(a1, v18);
    }

    v20 = v19 + v18;
    if (!v19)
    {
      v20 = 0;
    }

    *(a1 + 992) = v19;
    *(a1 + 1000) = v20;
    v21 = png_malloc(a1, v18);
    v22 = v21 + v18;
    if (!v21)
    {
      v22 = 0;
    }

    *(a1 + 1152) = v21;
    *(a1 + 1160) = v22;
    v23 = *(a1 + 992);
    v24 = ((v23 + 32) & 0xFFFFFFFFFFFFFFF0) - 1;
    if (v24 < v23)
    {
      goto LABEL_90;
    }

    v25 = *(a1 + 1000);
    *(a1 + 336) = v24;
    *(a1 + 344) = v25;
    v26 = ((v21 + 4) & 0xFFFFFFFFFFFFFFF0) - 1;
    if (v26 < v21)
    {
      goto LABEL_90;
    }

    *(a1 + 320) = v26;
    *(a1 + 328) = v22;
    *(a1 + 1112) = v18;
  }

  v27 = *(a1 + 296);
  if (v27 == -1)
  {
LABEL_91:
    v37 = "Row has too many bytes to allocate in memory";
    goto LABEL_93;
  }

  v29 = *(a1 + 320);
  v28 = *(a1 + 328);
  v5 = v28 >= v29;
  v30 = v28 - v29;
  if (!v5 || v27 >= v30 || (v31 = v27 + 1, bzero(*(a1 + 320), v27 + 1), v29 > v29 + v31))
  {
LABEL_90:
    __break(0x5519u);
    goto LABEL_91;
  }

  v32 = *(a1 + 1120);
  if (v32)
  {
    *(a1 + 1120) = 0;
    *(a1 + 1128) = 0;
    *(a1 + 1136) = 0;
    png_free(a1, v32);
  }

  result = png_inflate_claim(a1, 1229209940);
  if (result)
  {
    v37 = *(a1 + 144);
LABEL_93:
    _cg_png_error(a1, v37);
  }

  *(a1 + 80) |= 0x40u;
  return result;
}

uint64_t png_handle_as_unknown(uint64_t a1, _DWORD *a2)
{
  result = 0;
  if (a1 && a2)
  {
    v4 = *(a1 + 884);
    if (v4)
    {
      v5 = *(a1 + 888);
      v6 = *(a1 + 896);
      v7 = (5 * v4);
      v8 = (v7 + v5 - 1);
      for (i = v6 - v5 - v7 + 5; ; i += 5)
      {
        v10 = v8 - 4;
        v11 = (v8 - 4) > v6 || v5 > v10;
        if (v11 || i <= 3)
        {
          break;
        }

        if (*a2 == *v10)
        {
          if (v8 < v6 && v8 >= v5)
          {
            return *v8;
          }

          break;
        }

        v8 -= 5;
        if (v10 <= v5)
        {
          return 0;
        }
      }

      __break(0x5519u);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t png_have_info(uint64_t result, uint64_t a2)
{
  if ((*(a2 + 8) & 0x60000) == 0x20000)
  {
    *(result + 920) |= 1u;
    ++*(a2 + 408);
  }

  return result;
}

uint64_t png_crc_read(uint64_t result, Bytef *a2, unsigned int a3)
{
  if (result && a3)
  {
    v4 = result;
    v5 = a3;
    png_read_data(result, a2, a3);

    return png_calculate_crc(v4, a2, v5);
  }

  return result;
}

void (**png_malloc(void (**result)(void), int64_t size))(void)
{
  if (result)
  {
    v3 = result;
    result = malloc_type_malloc(size, 0x440796D0uLL);
    if (!result)
    {
      _cg_png_error(v3, "Out of memory");
    }

    if (size <= 0)
    {
      __break(0x5519u);
    }
  }

  return result;
}

void png_free(uint64_t a1, void *a2)
{
  if (a1 && a2)
  {
    v2 = *(a1 + 984);
    if (v2)
    {
      v2();
    }

    else
    {
      free(a2);
    }
  }
}

void png_init_read_transformations(uint64_t a1)
{
  v2 = *(a1 + 1200);
  v3 = *(a1 + 492);
  if (v2)
  {
    if (v3)
    {
      v170 = 0;
      if (png_muldiv(&v170, v2, v3, 100000))
      {
        v4 = png_gamma_significant(v170);
        *(a1 + 1274) |= 1u;
        if (!v4)
        {
          goto LABEL_13;
        }
      }

      else
      {
        *(a1 + 1274) |= 1u;
      }

      v5 = *(a1 + 88) | 0x2000;
      goto LABEL_14;
    }

    *(a1 + 492) = png_reciprocal(*(a1 + 1200));
  }

  else if (v3)
  {
    *(a1 + 1200) = png_reciprocal(*(a1 + 492));
  }

  else
  {
    *(a1 + 1200) = 100000;
    *(a1 + 492) = 100000;
  }

  *(a1 + 1274) |= 1u;
LABEL_13:
  v5 = *(a1 + 88) & 0xFFFFDFFF;
LABEL_14:
  *(a1 + 88) = v5;
  if ((v5 & 0x40080) == 0x40000)
  {
    *(a1 + 88) = v5 & 0xFD7FFE7F;
    *(a1 + 80) &= ~0x2000u;
    *(a1 + 424) = 0;
  }

  v6 = png_gamma_significant(*(a1 + 492));
  v7 = *(a1 + 88);
  if (!v6)
  {
    v7 &= ~0x800000u;
    *(a1 + 88) = v7;
    *(a1 + 80) &= ~0x2000u;
  }

  if ((v7 & 0x600000) != 0)
  {
    png_colorspace_set_rgb_coefficients(a1);
    v7 = *(a1 + 88);
  }

  if ((v7 & 0x100) != 0)
  {
    if ((*(a1 + 431) & 2) == 0)
    {
      *(a1 + 76) |= 0x800u;
    }
  }

  else if ((~v7 & 0x4080) == 0)
  {
    v8 = *(a1 + 454);
    if (v8 == *(a1 + 456) && v8 == *(a1 + 458))
    {
      *(a1 + 76) |= 0x800u;
      *(a1 + 460) = v8;
    }
  }

  v9 = *(a1 + 431);
  if (v9 == 3)
  {
    v10 = *(a1 + 424);
    if (*(a1 + 424))
    {
      v11 = 0;
      v12 = *(a1 + 608);
      v13 = *(a1 + 424);
      do
      {
        if (v12 >= *(a1 + 616) || v12 < *(a1 + 608))
        {
          goto LABEL_293;
        }

        if (*v12 != 255)
        {
          if (*v12)
          {
            goto LABEL_50;
          }

          v11 = 1;
        }

        ++v12;
        --v13;
      }

      while (v13);
      v7 &= ~0x800000u;
      *(a1 + 88) = v7;
      *(a1 + 80) &= ~0x2000u;
      if (v11)
      {
LABEL_50:
        if ((~v7 & 0x1100) == 0)
        {
          v19 = *(a1 + 400);
          v20 = (v19 + 3 * *(a1 + 452));
          v21 = v20 + 3;
          if (v20 < v19 || v21 > *(a1 + 408) || v20 > v21)
          {
            goto LABEL_293;
          }

          *(a1 + 454) = *v20;
          *(a1 + 456) = v20[1];
          *(a1 + 458) = v20[2];
          if (v10 && (v7 & 0x2080000) == 0x80000)
          {
            v24 = *(a1 + 608);
            v25 = *(a1 + 616);
            v26 = v24;
            do
            {
              if (v26 >= v25 || v26 < v24)
              {
                goto LABEL_293;
              }

              *v26 = ~*v26;
              ++v26;
              --v10;
            }

            while (v10);
            v7 = *(a1 + 88);
          }
        }

        goto LABEL_70;
      }
    }

    else
    {
      *(a1 + 80) &= ~0x2000u;
    }

    v7 &= 0xFF7FFE7F;
    *(a1 + 88) = v7;
    goto LABEL_50;
  }

  if ((v9 & 4) != 0)
  {
    v15 = v7;
  }

  else
  {
    v14 = *(a1 + 424);
    v15 = v7 & 0xFF7FFFFF;
    *(a1 + 88) = v7 & 0xFF7FFFFF;
    *(a1 + 80) &= ~0x2000u;
    if (!v14)
    {
      v15 = v7 & 0xFF7FFE7F;
      *(a1 + 88) = v7 & 0xFF7FFE7F;
    }
  }

  if ((v9 & 2) != 0 || (v15 & 0x1100) != 0x1100)
  {
    goto LABEL_69;
  }

  v16 = *(a1 + 460);
  v17 = *(a1 + 632);
  v18 = *(a1 + 432);
  switch(v18)
  {
    case 4:
      v16 *= 17;
      v17 *= 17;
      break;
    case 2:
      v16 *= 85;
      v17 *= 85;
      break;
    case 1:
      v16 *= 255;
      v17 *= 255;
      break;
  }

  *(a1 + 458) = v16;
  *(a1 + 456) = v16;
  *(a1 + 454) = v16;
  if ((v15 & 0x2000000) != 0)
  {
LABEL_69:
    v7 = v15;
  }

  else
  {
    *(a1 + 630) = v17;
    *(a1 + 628) = v17;
    v7 = v15;
    *(a1 + 626) = v17;
  }

LABEL_70:
  if ((v7 & 0x380) == 0x280 && *(a1 + 432) != 16)
  {
    *(a1 + 454) = vaddhn_s32(vmull_u16(*(a1 + 454), 0xFF00FF00FF00FFLL), vdupq_n_s32(0x807Fu));
  }

  if ((v7 & 0x4000400) != 0 && (v7 & 0x180) == 0x80 && *(a1 + 432) == 16)
  {
    *(a1 + 454) = vmul_s16(*(a1 + 454), 0x101010101010101);
  }

  *(a1 + 470) = *(a1 + 460);
  *(a1 + 462) = *(a1 + 452);
  if ((v7 & 0x2000) != 0)
  {
    goto LABEL_114;
  }

  if ((v7 & 0x600000) != 0)
  {
    if (png_gamma_significant(*(a1 + 1200)) || png_gamma_significant(*(a1 + 492)))
    {
      goto LABEL_114;
    }

    v7 = *(a1 + 88);
  }

  if ((v7 & 0x80) != 0 && (png_gamma_significant(*(a1 + 1200)) || png_gamma_significant(*(a1 + 492)) || *(a1 + 444) == 3 && png_gamma_significant(*(a1 + 448))))
  {
    goto LABEL_114;
  }

  v27 = *(a1 + 88);
  if ((v27 & 0x800000) == 0)
  {
    goto LABEL_86;
  }

  if (png_gamma_significant(*(a1 + 492)))
  {
LABEL_114:
    png_build_gamma_table(a1, *(a1 + 432));
    v27 = *(a1 + 88);
    if ((v27 & 0x80) == 0)
    {
      if (*(a1 + 431) != 3 || (v27 & 0x1000) != 0 && (v27 & 0x600000) != 0)
      {
        goto LABEL_252;
      }

      v48 = *(a1 + 416);
      if (*(a1 + 416))
      {
        v49 = *(a1 + 400);
        v50 = *(a1 + 408);
        v51 = v49;
        while (1)
        {
          v52 = (v51 + 3) > v50 || v51 > v51 + 3;
          if (v52 || v51 < v49)
          {
            goto LABEL_293;
          }

          v55 = *(a1 + 496);
          v54 = *(a1 + 504);
          v56 = (v55 + *v51);
          if (v56 >= v54 || v56 < v55)
          {
            goto LABEL_293;
          }

          *v51 = *v56;
          v58 = *(a1 + 496);
          v59 = (v58 + v51[1]);
          if (v59 >= v54 || v59 < v58)
          {
            goto LABEL_293;
          }

          v51[1] = *v59;
          v61 = *(a1 + 496);
          v62 = (v61 + v51[2]);
          if (v62 >= v54 || v62 < v61)
          {
            goto LABEL_293;
          }

          v51[2] = *v62;
          v51 += 3;
          if (!--v48)
          {
            goto LABEL_250;
          }
        }
      }

      goto LABEL_250;
    }

    if ((v27 & 0x600000) != 0)
    {
      png_warning(a1, "libpng does not support gamma+background+rgb_to_gray");
    }

    if (*(a1 + 431) == 3)
    {
      v64 = 100000;
      v65 = *(a1 + 400);
      v66 = *(a1 + 408);
      v67 = *(a1 + 416);
      v68 = *(a1 + 444);
      if (v68 == 1)
      {
        v69 = *(a1 + 492);
      }

      else if (v68 == 3)
      {
        v69 = png_reciprocal(*(a1 + 448));
        v64 = png_reciprocal2(*(a1 + 448), *(a1 + 492));
      }

      else
      {
        v69 = 100000;
        if (v68 == 2)
        {
          v70 = *(a1 + 496);
          v71 = *(a1 + 504);
          v72 = *(a1 + 454);
          v73 = (v70 + v72);
          if (v70 + v72 < v71 && v73 >= v70)
          {
            v74 = *(a1 + 456);
            v75 = (v70 + v74);
            if (v70 + v74 < v71 && v75 >= v70)
            {
              v76 = *(a1 + 458);
              v77 = (v70 + v76);
              if (v70 + v76 < v71 && v77 >= v70)
              {
                v78 = *(a1 + 544);
                v79 = *(a1 + 552);
                v80 = (v78 + v72);
                if (v80 < v79 && v80 >= v78)
                {
                  v81 = (v78 + v74);
                  if (v81 < v79 && v81 >= v78)
                  {
                    v82 = (v78 + v76);
                    if (v82 < v79 && v82 >= v78)
                    {
                      LOBYTE(v83) = *v73;
                      v84 = *v75;
                      v85 = *v77;
                      LOBYTE(v86) = *v80;
                      v87 = *v81;
                      v88 = *v82;
                      if (!*(a1 + 416))
                      {
                        goto LABEL_249;
                      }

LABEL_194:
                      v99 = 0;
                      v100 = v88;
                      v101 = v65;
                      while (v99 < *(a1 + 424))
                      {
                        v102 = *(a1 + 608);
                        v103 = *(a1 + 616);
                        v104 = (v102 + v99);
                        if (v102 + v99 >= v103 || v104 < v102)
                        {
                          goto LABEL_293;
                        }

                        v106 = *v104;
                        if (v106 == 255)
                        {
                          break;
                        }

                        if (v106)
                        {
                          if ((v101 + 3) > v66)
                          {
                            goto LABEL_293;
                          }

                          if (v101 > v101 + 3)
                          {
                            goto LABEL_293;
                          }

                          if (v101 < v65)
                          {
                            goto LABEL_293;
                          }

                          v116 = *(a1 + 552);
                          v117 = *(a1 + 544);
                          v118 = (v117 + *v101);
                          if (v118 >= v116 || v118 < v117)
                          {
                            goto LABEL_293;
                          }

                          v119 = *v118 * v106 + (v106 ^ 0xFF) * v86 + 128;
                          v120 = v119 + HIBYTE(v119);
                          v121 = *(a1 + 528);
                          v122 = *(a1 + 536);
                          v123 = (v121 + HIBYTE(v120));
                          if (v123 >= v122 || v123 < v121)
                          {
                            goto LABEL_293;
                          }

                          *v101 = *v123;
                          v125 = *(a1 + 544);
                          v126 = (v125 + v101[1]);
                          if (v126 >= v116)
                          {
                            goto LABEL_293;
                          }

                          if (v126 < v125)
                          {
                            goto LABEL_293;
                          }

                          v127 = *(a1 + 608);
                          v128 = (v127 + v99);
                          if (v127 + v99 >= v103 || v128 < v127)
                          {
                            goto LABEL_293;
                          }

                          v129 = *v128 * *v126 + (*v128 ^ 0xFF) * v87 + 128;
                          v130 = *(a1 + 528);
                          v131 = (v130 + ((v129 + HIBYTE(v129)) >> 8));
                          if (v131 >= v122 || v131 < v130)
                          {
                            goto LABEL_293;
                          }

                          v101[1] = *v131;
                          v133 = *(a1 + 544);
                          v134 = (v133 + v101[2]);
                          if (v134 >= v116)
                          {
                            goto LABEL_293;
                          }

                          if (v134 < v133)
                          {
                            goto LABEL_293;
                          }

                          v135 = *(a1 + 608);
                          v136 = (v135 + v99);
                          if (v135 + v99 >= v103)
                          {
                            goto LABEL_293;
                          }

                          if (v136 < v135)
                          {
                            goto LABEL_293;
                          }

                          v137 = *v136 * *v134 + (*v136 ^ 0xFF) * v100 + 128;
                          v138 = *(a1 + 528);
                          v139 = (v138 + ((v137 + HIBYTE(v137)) >> 8));
                          if (v139 >= v122 || v139 < v138)
                          {
                            goto LABEL_293;
                          }

                          v115 = *v139;
LABEL_220:
                          v101[2] = v115;
                          goto LABEL_221;
                        }

                        if ((v101 + 3) > v66 || v101 > v101 + 3 || v101 < v65)
                        {
                          goto LABEL_293;
                        }

                        *v101 = v83;
                        v101[1] = v84;
                        v101[2] = v85;
LABEL_221:
                        ++v99;
                        v101 += 3;
                        if (v67 == v99)
                        {
                          goto LABEL_249;
                        }
                      }

                      if ((v101 + 3) > v66 || v101 > v101 + 3 || v101 < v65)
                      {
                        goto LABEL_293;
                      }

                      v108 = *(a1 + 496);
                      v107 = *(a1 + 504);
                      v109 = (v108 + *v101);
                      if (v109 >= v107 || v109 < v108)
                      {
                        goto LABEL_293;
                      }

                      *v101 = *v109;
                      v111 = *(a1 + 496);
                      v112 = (v111 + v101[1]);
                      if (v112 >= v107)
                      {
                        goto LABEL_293;
                      }

                      if (v112 < v111)
                      {
                        goto LABEL_293;
                      }

                      v101[1] = *v112;
                      v113 = *(a1 + 496);
                      v114 = (v113 + v101[2]);
                      if (v114 >= v107 || v114 < v113)
                      {
                        goto LABEL_293;
                      }

                      v115 = *v114;
                      goto LABEL_220;
                    }
                  }
                }
              }
            }
          }

LABEL_293:
          __break(0x5519u);
LABEL_294:
          _cg_png_error(a1, "invalid background gamma type");
        }
      }

      v97 = png_gamma_significant(v64);
      v83 = *(a1 + 454);
      if (v97)
      {
        LOBYTE(v83) = png_gamma_8bit_correct(*(a1 + 454), v64);
        v84 = png_gamma_8bit_correct(*(a1 + 456), v64);
        v85 = png_gamma_8bit_correct(*(a1 + 458), v64);
      }

      else
      {
        v84 = *(a1 + 456);
        v85 = *(a1 + 458);
      }

      v98 = png_gamma_significant(v69);
      v86 = *(a1 + 454);
      if (v98)
      {
        LOBYTE(v86) = png_gamma_8bit_correct(*(a1 + 454), v69);
        v87 = png_gamma_8bit_correct(*(a1 + 456), v69);
        v88 = png_gamma_8bit_correct(*(a1 + 458), v69);
        if (!v67)
        {
          goto LABEL_249;
        }
      }

      else
      {
        v87 = *(a1 + 456);
        v88 = *(a1 + 458);
        if (!v67)
        {
LABEL_249:
          v27 = *(a1 + 88);
LABEL_250:
          v27 &= 0xFFFFDF7F;
          goto LABEL_251;
        }
      }

      goto LABEL_194;
    }

    v89 = *(a1 + 444);
    switch(v89)
    {
      case 3:
        v91 = png_reciprocal(*(a1 + 448));
        v92 = *(a1 + 448);
        break;
      case 2:
        v91 = png_reciprocal(*(a1 + 1200));
        v92 = *(a1 + 1200);
        break;
      case 1:
        v90 = 100000;
        v91 = *(a1 + 492);
        goto LABEL_172;
      default:
        goto LABEL_294;
    }

    v90 = png_reciprocal2(v92, *(a1 + 492));
LABEL_172:
    v93 = png_gamma_significant(v91);
    v94 = png_gamma_significant(v90);
    if (v93)
    {
      *(a1 + 470) = png_gamma_correct(a1, *(a1 + 460), v91);
    }

    if (v94)
    {
      *(a1 + 460) = png_gamma_correct(a1, *(a1 + 460), v90);
    }

    v95 = *(a1 + 454);
    if (v95 == *(a1 + 456) && v95 == *(a1 + 458) && v95 == *(a1 + 460))
    {
      v96 = *(a1 + 470);
      *(a1 + 468) = v96;
      *(a1 + 466) = v96;
      *(a1 + 464) = v96;
      *(a1 + 458) = v95;
      *(a1 + 456) = v95;
      *(a1 + 454) = v95;
    }

    else
    {
      if (v93)
      {
        *(a1 + 464) = png_gamma_correct(a1, v95, v91);
        *(a1 + 466) = png_gamma_correct(a1, *(a1 + 456), v91);
        *(a1 + 468) = png_gamma_correct(a1, *(a1 + 458), v91);
      }

      if (v94)
      {
        *(a1 + 454) = png_gamma_correct(a1, *(a1 + 454), v90);
        *(a1 + 456) = png_gamma_correct(a1, *(a1 + 456), v90);
        *(a1 + 458) = png_gamma_correct(a1, *(a1 + 458), v90);
      }
    }

    *(a1 + 444) = 1;
    v27 = *(a1 + 88);
    goto LABEL_252;
  }

  v27 = *(a1 + 88);
LABEL_86:
  if ((v27 & 0x80) == 0 || *(a1 + 431) != 3)
  {
    goto LABEL_252;
  }

  v28 = *(a1 + 424);
  if (*(a1 + 424))
  {
    v29 = 0;
    v30 = *(a1 + 400);
    v31 = *(a1 + 408);
    v32 = *(a1 + 454);
    v33 = *(a1 + 456);
    v34 = *(a1 + 458);
    v35 = v30;
    do
    {
      v36 = *(a1 + 608);
      v37 = *(a1 + 616);
      v38 = (v36 + v29);
      if (v36 + v29 >= v37 || v38 < v36)
      {
        goto LABEL_293;
      }

      v40 = *v38;
      if (v40 != 255)
      {
        if (v40)
        {
          if ((v35 + 3) > v31)
          {
            goto LABEL_293;
          }

          if (v35 > v35 + 3)
          {
            goto LABEL_293;
          }

          if (v35 < v30)
          {
            goto LABEL_293;
          }

          v41 = *v35 * v40 + v32 * (v40 ^ 0xFF) + 128;
          *v35 = (v41 + ((v41 & 0xFF00) >> 8)) >> 8;
          v42 = *(a1 + 608);
          v43 = (v42 + v29);
          if (v42 + v29 >= v37)
          {
            goto LABEL_293;
          }

          if (v43 < v42)
          {
            goto LABEL_293;
          }

          v44 = *v43 * v35[1] + v33 * (*v43 ^ 0xFF) + 128;
          v35[1] = (v44 + ((v44 & 0xFF00) >> 8)) >> 8;
          v45 = *(a1 + 608);
          v46 = (v45 + v29);
          if (v45 + v29 >= v37 || v46 < v45)
          {
            goto LABEL_293;
          }

          v47 = *v46 * v35[2] + v34 * (*v46 ^ 0xFF) + 128;
          v35[2] = (v47 + ((v47 & 0xFF00) >> 8)) >> 8;
        }

        else
        {
          if ((v35 + 3) > v31 || v35 > v35 + 3 || v35 < v30)
          {
            goto LABEL_293;
          }

          *v35 = v32;
          v35[1] = v33;
          v35[2] = v34;
        }
      }

      ++v29;
      v35 += 3;
    }

    while (v28 != v29);
    v27 = *(a1 + 88);
  }

  v27 &= ~0x80u;
LABEL_251:
  *(a1 + 88) = v27;
LABEL_252:
  if ((v27 & 0x1008) == 8 && *(a1 + 431) == 3)
  {
    v140 = *(a1 + 416);
    v141 = *(a1 + 592);
    *(a1 + 88) = v27 & 0xFFFFEFF7;
    if ((v141 - 1) <= 6 && v140)
    {
      v142 = 0;
      v143 = 8 - v141;
      v144 = *(a1 + 408);
      do
      {
        v145 = *(a1 + 400);
        v146 = (v145 + v142);
        v147 = v145 + v142 + 3;
        v148 = v145 + v142 < v145 || v147 > v144;
        if (v148 || v146 > v147)
        {
          goto LABEL_293;
        }

        *v146 = *v146 >> v143;
        v142 += 3;
      }

      while (3 * v140 != v142);
    }

    v150 = *(a1 + 593);
    if ((v150 - 1) <= 6 && v140 != 0)
    {
      v152 = 0;
      v153 = 8 - v150;
      v154 = *(a1 + 408);
      do
      {
        v155 = *(a1 + 400);
        v156 = v155 + v152;
        v157 = v155 + v152 + 3;
        v158 = v155 + v152 < v155 || v157 > v154;
        if (v158 || v156 > v157)
        {
          goto LABEL_293;
        }

        *(v156 + 1) = *(v156 + 1) >> v153;
        v152 += 3;
      }

      while (3 * v140 != v152);
    }

    v160 = *(a1 + 594);
    if ((v160 - 1) <= 6)
    {
      if (v140)
      {
        v161 = 0;
        v162 = 8 - v160;
        v163 = *(a1 + 408);
        v164 = 3 * v140;
        while (1)
        {
          v165 = *(a1 + 400);
          v166 = v165 + v161;
          v167 = v165 + v161 + 3;
          v168 = v165 + v161 < v165 || v167 > v163;
          if (v168 || v166 > v167)
          {
            break;
          }

          *(v166 + 2) = *(v166 + 2) >> v162;
          v161 += 3;
          if (v164 == v161)
          {
            return;
          }
        }

        goto LABEL_293;
      }
    }
  }
}

void *png_zalloc(void *result, unsigned int a2, unsigned int a3)
{
  if (result)
  {
    v3 = a3 * a2;
    result = png_malloc_warn(result, v3);
    if (v3 <= 0 && result != 0)
    {
      __break(0x5519u);
    }
  }

  return result;
}

uint64_t png_inflate_claim(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 92);
  if (v4)
  {
    memset(v14, 0, sizeof(v14));
    v13 = 0u;
    v12 = 0u;
    v11 = bswap32(v4);
    png_safecat(&v11, &v15, 0x40uLL, 4uLL, " using zstream");
    png_chunk_warning(a1, &v11);
    *(a1 + 92) = 0;
  }

  *(a1 + 96) = 0;
  v5 = (a1 + 96);
  if ((*(a1 + 824) & 0xC) == 0xC)
  {
    v6 = 15;
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 440) = (*(a1 + 824) & 0xC) != 12;
  if ((*(a1 + 84) & 0x11) != 0)
  {
    v7 = -15;
  }

  else
  {
    v7 = v6;
  }

  *(a1 + 104) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  if ((*(a1 + 80) & 2) != 0)
  {
    v8 = inflateReset2(v5, v7);
    if (!v8)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = inflateInit2_(v5, v7, "1.2.12", 112);
    if (!v8)
    {
      *(a1 + 80) |= 2u;
LABEL_14:
      v9 = 0;
      *(a1 + 92) = a2;
      return v9;
    }
  }

  v9 = v8;
  png_zstream_error(a1, v8);
  return v9;
}

uint64_t png_read_transform_info(uint64_t result, unsigned int *a2)
{
  v2 = *(result + 88);
  if ((v2 & 0x1000) == 0)
  {
    goto LABEL_7;
  }

  v3 = *(a2 + 45);
  if (v3 == 3)
  {
    if (*(result + 424))
    {
      v4 = 6;
    }

    else
    {
      v4 = 2;
    }

    *(a2 + 45) = v4;
    *(a2 + 44) = 8;
    *(a2 + 21) = 0;
    if (!*(result + 400))
    {
      _cg_png_error(result, "Palette is NULL in indexed image");
    }

LABEL_7:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if ((v2 & 0x2000000) != 0 && *(result + 424))
  {
    *(a2 + 45) = v3 | 4;
  }

  if (*(a2 + 44) <= 7u)
  {
    *(a2 + 44) = 8;
  }

  *(a2 + 21) = 0;
  if ((v2 & 0x80) != 0)
  {
LABEL_8:
    *(a2 + 117) = *(result + 460);
    *(a2 + 226) = *(result + 452);
  }

LABEL_9:
  a2[15] = *(result + 1200);
  v5 = *(a2 + 44);
  if ((v2 & 0x4000400) != 0 && v5 == 16)
  {
    v5 = 8;
    *(a2 + 44) = 8;
  }

  if ((v2 & 0x4000) != 0)
  {
    *(a2 + 45) |= 2u;
  }

  if ((v2 & 0x600000) != 0)
  {
    *(a2 + 45) &= ~2u;
  }

  if ((v2 & 0x40) != 0 && (*(a2 + 45) | 4) == 6 && *(result + 792) && v5 == 8)
  {
    *(a2 + 45) = 3;
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_28;
    }
  }

  else if ((v2 & 0x200) == 0 || v5 != 8)
  {
LABEL_29:
    if ((v2 & 4) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  if (*(a2 + 45) == 3)
  {
LABEL_28:
    v5 = 8;
    goto LABEL_29;
  }

  v5 = 16;
  *(a2 + 44) = 16;
  if ((v2 & 4) == 0)
  {
    goto LABEL_32;
  }

LABEL_30:
  if (v5 <= 7)
  {
    LOBYTE(v5) = 8;
    *(a2 + 44) = 8;
  }

LABEL_32:
  v7 = *(a2 + 45);
  if (v7 != 3 && (v7 & 2) != 0)
  {
    v8 = 3;
  }

  else
  {
    v8 = 1;
  }

  *(a2 + 49) = v8;
  if ((v2 & 0x40000) != 0)
  {
    v7 &= ~4u;
    *(a2 + 45) = v7;
    *(a2 + 21) = 0;
    if ((v7 & 4) == 0)
    {
LABEL_45:
      if ((v2 & 0x8000) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_49;
    }
  }

  else if ((v7 & 4) == 0)
  {
    goto LABEL_45;
  }

  *(a2 + 49) = ++v8;
  if ((v2 & 0x8000) == 0)
  {
    goto LABEL_52;
  }

LABEL_49:
  if ((v7 | 2) == 2)
  {
    *(a2 + 49) = ++v8;
    if ((v2 & 0x1000000) != 0)
    {
      *(a2 + 45) = v7 | 4;
    }
  }

LABEL_52:
  if ((v2 & 0x100000) != 0)
  {
    v9 = *(result + 72);
    if (v9)
    {
      *(a2 + 44) = v9;
      LOBYTE(v5) = v9;
    }

    v10 = *(result + 73);
    if (v10)
    {
      *(a2 + 49) = v10;
      v8 = v10;
    }
  }

  v11 = v5 * v8;
  *(a2 + 50) = v5 * v8;
  v12 = (v5 * v8) >= 8u;
  v13 = (*a2 * (v5 * v8) + 7) >> 3;
  v14 = *a2 * (v11 >> 3);
  if (!v12)
  {
    v14 = v13;
  }

  *(a2 + 2) = v14;
  *(result + 384) = v14;
  return result;
}

void IIOArray::~IIOArray(IIOArray *this)
{
  IIOArray::~IIOArray(this);

  JUMPOUT(0x186602850);
}

{
  *this = &unk_1EF4D4210;
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

void IIO_LoadCMPhotoSymbols()
{
  if (gLoadCMPhotoSymbolsInitOnce != -1)
  {
    IIO_LoadCMPhotoSymbols_cold_1();
  }
}

uint64_t IIOLoadCMPhotoSymbols(void)
{
  v222 = *MEMORY[0x1E69E9840];
  strcpy(__path, "/System/Library/PrivateFrameworks/CMPhoto.framework/CMPhoto");
  v0 = dlopen(__path, 257);
  if (v0)
  {
    v1 = v0;
    gFunc_CMPhotoCompressionCreateContainerFromImageExt = dlsym(v0, "CMPhotoCompressionCreateContainerFromImageExt");
    if (gFunc_CMPhotoCompressionCreateContainerFromImageExt)
    {
      v2 = 0;
    }

    else
    {
      v4 = dlerror();
      printf("❌  failed to load 'CMPhotoCompressionCreateContainerFromImageExt' [%s]\n", v4);
      v2 = 1;
    }

    gFunc_CMPhotoCompressionCreateDataContainerFromImage = dlsym(v1, "CMPhotoCompressionCreateDataContainerFromImage");
    if (!gFunc_CMPhotoCompressionCreateDataContainerFromImage)
    {
      v5 = dlerror();
      printf("❌  failed to load 'CMPhotoCompressionCreateDataContainerFromImage' [%s]\n", v5);
      ++v2;
    }

    gFunc_CMPhotoCompressionSessionAddAuxiliaryImage = dlsym(v1, "CMPhotoCompressionSessionAddAuxiliaryImage");
    if (!gFunc_CMPhotoCompressionSessionAddAuxiliaryImage)
    {
      v6 = dlerror();
      printf("❌  failed to load 'CMPhotoCompressionSessionAddAuxiliaryImage' [%s]\n", v6);
      ++v2;
    }

    gFunc_CMPhotoCompressionSessionAddAuxiliaryImageFromDictionaryRepresentation = dlsym(v1, "CMPhotoCompressionSessionAddAuxiliaryImageFromDictionaryRepresentation");
    if (!gFunc_CMPhotoCompressionSessionAddAuxiliaryImageFromDictionaryRepresentation)
    {
      v7 = dlerror();
      printf("❌  failed to load 'CMPhotoCompressionSessionAddAuxiliaryImageFromDictionaryRepresentation' [%s]\n", v7);
      ++v2;
    }

    gFunc_CMPhotoCompressionSessionAddCustomMetadata = dlsym(v1, "CMPhotoCompressionSessionAddCustomMetadata");
    if (!gFunc_CMPhotoCompressionSessionAddCustomMetadata)
    {
      v8 = dlerror();
      printf("❌  failed to load 'CMPhotoCompressionSessionAddCustomMetadata' [%s]\n", v8);
      ++v2;
    }

    gFunc_CMPhotoCompressionSessionAddExif = dlsym(v1, "CMPhotoCompressionSessionAddExif");
    if (!gFunc_CMPhotoCompressionSessionAddExif)
    {
      v9 = dlerror();
      printf("❌  failed to load 'CMPhotoCompressionSessionAddExif' [%s]\n", v9);
      ++v2;
    }

    gFunc_CMPhotoCompressionSessionAddGroup = dlsym(v1, "CMPhotoCompressionSessionAddGroup");
    if (!gFunc_CMPhotoCompressionSessionAddGroup)
    {
      v10 = dlerror();
      printf("❌  failed to load 'CMPhotoCompressionSessionAddGroup' [%s]\n", v10);
      ++v2;
    }

    gFunc_CMPhotoCompressionSessionAddGroupProperties = dlsym(v1, "CMPhotoCompressionSessionAddGroupProperties");
    if (!gFunc_CMPhotoCompressionSessionAddGroupProperties)
    {
      v11 = dlerror();
      printf("❌  failed to load 'CMPhotoCompressionSessionAddGroupProperties' [%s]\n", v11);
      ++v2;
    }

    gFunc_CMPhotoImageHasOpaqueAlphaFromPixelData = dlsym(v1, "CMPhotoImageHasOpaqueAlphaFromPixelData");
    if (!gFunc_CMPhotoImageHasOpaqueAlphaFromPixelData)
    {
      v12 = dlerror();
      printf("❌  failed to load 'CMPhotoImageHasOpaqueAlphaFromPixelData' [%s]\n", v12);
      ++v2;
    }

    gFunc_CMPhotoCompressionSessionAddImage = dlsym(v1, "CMPhotoCompressionSessionAddImage");
    if (!gFunc_CMPhotoCompressionSessionAddImage)
    {
      v13 = dlerror();
      printf("❌  failed to load 'CMPhotoCompressionSessionAddImage' [%s]\n", v13);
      ++v2;
    }

    gFunc_CMPhotoCompressionSessionAddImageHandleToGroup = dlsym(v1, "CMPhotoCompressionSessionAddImageHandleToGroup");
    if (!gFunc_CMPhotoCompressionSessionAddImageHandleToGroup)
    {
      v14 = dlerror();
      printf("❌  failed to load 'CMPhotoCompressionSessionAddImageHandleToGroup' [%s]\n", v14);
      ++v2;
    }

    gFunc_CMPhotoCompressionSessionAddImageToSequence = dlsym(v1, "CMPhotoCompressionSessionAddImageToSequence");
    if (!gFunc_CMPhotoCompressionSessionAddImageToSequence)
    {
      v15 = dlerror();
      printf("❌  failed to load 'CMPhotoCompressionSessionAddImageToSequence' [%s]\n", v15);
      ++v2;
    }

    gFunc_CMPhotoCompressionSessionAddTmapImageOneShot = dlsym(v1, "CMPhotoCompressionSessionAddTmapImageOneShot");
    if (!gFunc_CMPhotoCompressionSessionAddTmapImageOneShot)
    {
      v16 = dlerror();
      printf("❌  failed to load 'CMPhotoCompressionSessionAddTmapImageOneShot' [%s]\n", v16);
      ++v2;
    }

    gFunc_CMPhotoCompressionSessionAddThumbnail = dlsym(v1, "CMPhotoCompressionSessionAddThumbnail");
    if (!gFunc_CMPhotoCompressionSessionAddThumbnail)
    {
      v17 = dlerror();
      printf("❌  failed to load 'CMPhotoCompressionSessionAddThumbnail' [%s]\n", v17);
      ++v2;
    }

    gFunc_CMPhotoCompressionSessionAddXMP = dlsym(v1, "CMPhotoCompressionSessionAddXMP");
    if (!gFunc_CMPhotoCompressionSessionAddXMP)
    {
      v18 = dlerror();
      printf("❌  failed to load 'CMPhotoCompressionSessionAddXMP' [%s]\n", v18);
      ++v2;
    }

    gFunc_CMPhotoCompressionSessionCloseContainer = dlsym(v1, "CMPhotoCompressionSessionCloseContainer");
    if (!gFunc_CMPhotoCompressionSessionCloseContainer)
    {
      v19 = dlerror();
      printf("❌  failed to load 'CMPhotoCompressionSessionCloseContainer' [%s]\n", v19);
      ++v2;
    }

    gFunc_CMPhotoCompressionSessionCloseContainerAndCopyBacking = dlsym(v1, "CMPhotoCompressionSessionCloseContainerAndCopyBacking");
    if (!gFunc_CMPhotoCompressionSessionCloseContainerAndCopyBacking)
    {
      v20 = dlerror();
      printf("❌  failed to load 'CMPhotoCompressionSessionCloseContainerAndCopyBacking' [%s]\n", v20);
      ++v2;
    }

    gFunc_CMPhotoCompressionSessionCreate = dlsym(v1, "CMPhotoCompressionSessionCreate");
    if (!gFunc_CMPhotoCompressionSessionCreate)
    {
      v21 = dlerror();
      printf("❌  failed to load 'CMPhotoCompressionSessionCreate' [%s]\n", v21);
      ++v2;
    }

    gFunc_CMPhotoCompressionSessionDiscardCaches = dlsym(v1, "CMPhotoCompressionSessionDiscardCaches");
    if (!gFunc_CMPhotoCompressionSessionDiscardCaches)
    {
      v22 = dlerror();
      printf("❌  failed to load 'CMPhotoCompressionSessionDiscardCaches' [%s]\n", v22);
      ++v2;
    }

    gFunc_CMPhotoCompressionSessionEndImageSequence = dlsym(v1, "CMPhotoCompressionSessionEndImageSequence");
    if (!gFunc_CMPhotoCompressionSessionEndImageSequence)
    {
      v23 = dlerror();
      printf("❌  failed to load 'CMPhotoCompressionSessionEndImageSequence' [%s]\n", v23);
      ++v2;
    }

    gFunc_CMPhotoCompressionSessionInvalidate = dlsym(v1, "CMPhotoCompressionSessionInvalidate");
    if (!gFunc_CMPhotoCompressionSessionInvalidate)
    {
      v24 = dlerror();
      printf("❌  failed to load 'CMPhotoCompressionSessionInvalidate' [%s]\n", v24);
      ++v2;
    }

    gFunc_CMPhotoCompressionSessionOpenEmptyContainer = dlsym(v1, "CMPhotoCompressionSessionOpenEmptyContainer");
    if (!gFunc_CMPhotoCompressionSessionOpenEmptyContainer)
    {
      v25 = dlerror();
      printf("❌  failed to load 'CMPhotoCompressionSessionOpenEmptyContainer' [%s]\n", v25);
      ++v2;
    }

    gFunc_CMPhotoCompressionSessionOpenExistingContainerForModification = dlsym(v1, "CMPhotoCompressionSessionOpenExistingContainerForModification");
    if (!gFunc_CMPhotoCompressionSessionOpenExistingContainerForModification)
    {
      v26 = dlerror();
      printf("❌  failed to load 'CMPhotoCompressionSessionOpenExistingContainerForModification' [%s]\n", v26);
      ++v2;
    }

    gFunc_CMPhotoCompressionSessionReleaseHardwareResources = dlsym(v1, "CMPhotoCompressionSessionReleaseHardwareResources");
    if (!gFunc_CMPhotoCompressionSessionReleaseHardwareResources)
    {
      v27 = dlerror();
      printf("❌  failed to load 'CMPhotoCompressionSessionReleaseHardwareResources' [%s]\n", v27);
      ++v2;
    }

    gFunc_CMPhotoCompressionSessionStartImageSequence = dlsym(v1, "CMPhotoCompressionSessionStartImageSequence");
    if (!gFunc_CMPhotoCompressionSessionStartImageSequence)
    {
      v28 = dlerror();
      printf("❌  failed to load 'CMPhotoCompressionSessionStartImageSequence' [%s]\n", v28);
      ++v2;
    }

    gFunc_CMPhotoCompressionSupportedForContainerAndCodec = dlsym(v1, "CMPhotoCompressionSupportedForContainerAndCodec");
    if (!gFunc_CMPhotoCompressionSupportedForContainerAndCodec)
    {
      v29 = dlerror();
      printf("❌  failed to load 'CMPhotoCompressionSupportedForContainerAndCodec' [%s]\n", v29);
      ++v2;
    }

    gFunc_CMPhotoDecompressionContainerCopyAuxiliaryImageCGColorSpaceForIndexWithOptions = dlsym(v1, "CMPhotoDecompressionContainerCopyAuxiliaryImageCGColorSpaceForIndexWithOptions");
    if (!gFunc_CMPhotoDecompressionContainerCopyAuxiliaryImageCGColorSpaceForIndexWithOptions)
    {
      v30 = dlerror();
      printf("❌  failed to load 'CMPhotoDecompressionContainerCopyAuxiliaryImageCGColorSpaceForIndexWithOptions' [%s]\n", v30);
      ++v2;
    }

    gFunc_CMPhotoDecompressionContainerCopyCustomMetadataForIndexWithOptions = dlsym(v1, "CMPhotoDecompressionContainerCopyCustomMetadataForIndexWithOptions");
    if (!gFunc_CMPhotoDecompressionContainerCopyCustomMetadataForIndexWithOptions)
    {
      v31 = dlerror();
      printf("❌  failed to load 'CMPhotoDecompressionContainerCopyCustomMetadataForIndexWithOptions' [%s]\n", v31);
      ++v2;
    }

    gFunc_CMPhotoDecompressionContainerCopyDebugMetadataForIndexWithOptions = dlsym(v1, "CMPhotoDecompressionContainerCopyDebugMetadataForIndexWithOptions");
    if (!gFunc_CMPhotoDecompressionContainerCopyDebugMetadataForIndexWithOptions)
    {
      v32 = dlerror();
      printf("❌  failed to load 'CMPhotoDecompressionContainerCopyDebugMetadataForIndexWithOptions' [%s]\n", v32);
      ++v2;
    }

    gFunc_CMPhotoDecompressionContainerCopyExifForIndexWithOptions = dlsym(v1, "CMPhotoDecompressionContainerCopyExifForIndexWithOptions");
    if (!gFunc_CMPhotoDecompressionContainerCopyExifForIndexWithOptions)
    {
      v33 = dlerror();
      printf("❌  failed to load 'CMPhotoDecompressionContainerCopyExifForIndexWithOptions' [%s]\n", v33);
      ++v2;
    }

    gFunc_CMPhotoDecompressionContainerCopyFormatDescriptionForIndexWithOptions = dlsym(v1, "CMPhotoDecompressionContainerCopyFormatDescriptionForIndexWithOptions");
    if (!gFunc_CMPhotoDecompressionContainerCopyFormatDescriptionForIndexWithOptions)
    {
      v34 = dlerror();
      printf("❌  failed to load 'CMPhotoDecompressionContainerCopyFormatDescriptionForIndexWithOptions' [%s]\n", v34);
      ++v2;
    }

    gFunc_CMPhotoDecompressionContainerCopyGroupsDescriptionArray = dlsym(v1, "CMPhotoDecompressionContainerCopyGroupsDescriptionArray");
    if (!gFunc_CMPhotoDecompressionContainerCopyGroupsDescriptionArray)
    {
      v35 = dlerror();
      printf("❌  failed to load 'CMPhotoDecompressionContainerCopyGroupsDescriptionArray' [%s]\n", v35);
      ++v2;
    }

    gFunc_CMPhotoDecompressionContainerCopyHEIFItemPropertiesForIndexWithOptions = dlsym(v1, "CMPhotoDecompressionContainerCopyHEIFItemPropertiesForIndexWithOptions");
    if (!gFunc_CMPhotoDecompressionContainerCopyHEIFItemPropertiesForIndexWithOptions)
    {
      v36 = dlerror();
      printf("❌  failed to load 'CMPhotoDecompressionContainerCopyHEIFItemPropertiesForIndexWithOptions' [%s]\n", v36);
      ++v2;
    }

    gFunc_CMPhotoDecompressionContainerCopyImageBitDepthForIndexWithOptions = dlsym(v1, "CMPhotoDecompressionContainerCopyImageBitDepthForIndexWithOptions");
    if (!gFunc_CMPhotoDecompressionContainerCopyImageBitDepthForIndexWithOptions)
    {
      v37 = dlerror();
      printf("❌  failed to load 'CMPhotoDecompressionContainerCopyImageBitDepthForIndexWithOptions' [%s]\n", v37);
      ++v2;
    }

    gFunc_CMPhotoDecompressionContainerCopyImageSubsamplingForIndexWithOptions = dlsym(v1, "CMPhotoDecompressionContainerCopyImageSubsamplingForIndexWithOptions");
    if (!gFunc_CMPhotoDecompressionContainerCopyImageSubsamplingForIndexWithOptions)
    {
      v38 = dlerror();
      printf("❌  failed to load 'CMPhotoDecompressionContainerCopyImageSubsamplingForIndexWithOptions' [%s]\n", v38);
      ++v2;
    }

    gFunc_CMPhotoDecompressionContainerGetEncoderNativePixelFormatForIndexWithOptions = dlsym(v1, "CMPhotoDecompressionContainerGetEncoderNativePixelFormatForIndexWithOptions");
    if (!gFunc_CMPhotoDecompressionContainerGetEncoderNativePixelFormatForIndexWithOptions)
    {
      v39 = dlerror();
      printf("❌  failed to load 'CMPhotoDecompressionContainerGetEncoderNativePixelFormatForIndexWithOptions' [%s]\n", v39);
      ++v2;
    }

    gFunc_CMPhotoDecompressionContainerCopyImagePropertiesForIndexWithOptions = dlsym(v1, "CMPhotoDecompressionContainerCopyImagePropertiesForIndexWithOptions");
    if (!gFunc_CMPhotoDecompressionContainerCopyImagePropertiesForIndexWithOptions)
    {
      v40 = dlerror();
      printf("❌  failed to load 'CMPhotoDecompressionContainerCopyImagePropertiesForIndexWithOptions' [%s]\n", v40);
      ++v2;
    }

    gFunc_CMPhotoDecompressionContainerCopyStereoMetadataForIndex = dlsym(v1, "CMPhotoDecompressionContainerCopyStereoMetadataForIndex");
    if (!gFunc_CMPhotoDecompressionContainerCopyStereoMetadataForIndex)
    {
      v41 = dlerror();
      printf("❌  failed to load 'CMPhotoDecompressionContainerCopyStereoMetadataForIndex' [%s]\n", v41);
      ++v2;
    }

    gFunc_CMPhotoDecompressionContainerCopyXMPForIndexWithOptions = dlsym(v1, "CMPhotoDecompressionContainerCopyXMPForIndexWithOptions");
    if (!gFunc_CMPhotoDecompressionContainerCopyXMPForIndexWithOptions)
    {
      v42 = dlerror();
      printf("❌  failed to load 'CMPhotoDecompressionContainerCopyXMPForIndexWithOptions' [%s]\n", v42);
      ++v2;
    }

    gFunc_CMPhotoDecompressionContainerCreateAuxiliaryImageDictionaryRepresentation = dlsym(v1, "CMPhotoDecompressionContainerCreateAuxiliaryImageDictionaryRepresentation");
    if (!gFunc_CMPhotoDecompressionContainerCreateAuxiliaryImageDictionaryRepresentation)
    {
      v43 = dlerror();
      printf("❌  failed to load 'CMPhotoDecompressionContainerCreateAuxiliaryImageDictionaryRepresentation' [%s]\n", v43);
      ++v2;
    }

    gFunc_CMPhotoDecompressionContainerCreateAuxiliaryImageForIndex = dlsym(v1, "CMPhotoDecompressionContainerCreateAuxiliaryImageForIndex");
    if (!gFunc_CMPhotoDecompressionContainerCreateAuxiliaryImageForIndex)
    {
      v44 = dlerror();
      printf("❌  failed to load 'CMPhotoDecompressionContainerCreateAuxiliaryImageForIndex' [%s]\n", v44);
      ++v2;
    }

    gFunc_CMPhotoDecompressionContainerCopyAuxiliaryImageMetadataForIndexWithOptions = dlsym(v1, "CMPhotoDecompressionContainerCopyAuxiliaryImageMetadataForIndexWithOptions");
    if (!gFunc_CMPhotoDecompressionContainerCopyAuxiliaryImageMetadataForIndexWithOptions)
    {
      v45 = dlerror();
      printf("❌  failed to load 'CMPhotoDecompressionContainerCopyAuxiliaryImageMetadataForIndexWithOptions' [%s]\n", v45);
      ++v2;
    }

    gFunc_CMPhotoDecompressionContainerFindFirstAuxiliaryOfTypeForIndexWithOptions = dlsym(v1, "CMPhotoDecompressionContainerFindFirstAuxiliaryOfTypeForIndexWithOptions");
    if (!gFunc_CMPhotoDecompressionContainerFindFirstAuxiliaryOfTypeForIndexWithOptions)
    {
      v46 = dlerror();
      printf("❌  failed to load 'CMPhotoDecompressionContainerFindFirstAuxiliaryOfTypeForIndexWithOptions' [%s]\n", v46);
      ++v2;
    }

    gFunc_CMPhotoDecompressionContainerCreateDictionaryDescription = dlsym(v1, "CMPhotoDecompressionContainerCreateDictionaryDescription");
    if (!gFunc_CMPhotoDecompressionContainerCreateDictionaryDescription)
    {
      v47 = dlerror();
      printf("❌  failed to load 'CMPhotoDecompressionContainerCreateDictionaryDescription' [%s]\n", v47);
      ++v2;
    }

    gFunc_CMPhotoDecompressionContainerCreateImageForIndex = dlsym(v1, "CMPhotoDecompressionContainerCreateImageForIndex");
    if (!gFunc_CMPhotoDecompressionContainerCreateImageForIndex)
    {
      v48 = dlerror();
      printf("❌  failed to load 'CMPhotoDecompressionContainerCreateImageForIndex' [%s]\n", v48);
      ++v2;
    }

    gFunc_CMPhotoDecompressionContainerCreateOutputBufferAttributesForImageIndex = dlsym(v1, "CMPhotoDecompressionContainerCreateOutputBufferAttributesForImageIndex");
    if (!gFunc_CMPhotoDecompressionContainerCreateOutputBufferAttributesForImageIndex)
    {
      v49 = dlerror();
      printf("❌  failed to load 'CMPhotoDecompressionContainerCreateOutputBufferAttributesForImageIndex' [%s]\n", v49);
      ++v2;
    }

    gFunc_CMPhotoDecompressionContainerCreateSequenceContainer = dlsym(v1, "CMPhotoDecompressionContainerCreateSequenceContainer");
    if (!gFunc_CMPhotoDecompressionContainerCreateSequenceContainer)
    {
      v50 = dlerror();
      printf("❌  failed to load 'CMPhotoDecompressionContainerCreateSequenceContainer' [%s]\n", v50);
      ++v2;
    }

    gFunc_CMPhotoDecompressionContainerCreateThumbnailImageForIndex = dlsym(v1, "CMPhotoDecompressionContainerCreateThumbnailImageForIndex");
    if (!gFunc_CMPhotoDecompressionContainerCreateThumbnailImageForIndex)
    {
      v51 = dlerror();
      printf("❌  failed to load 'CMPhotoDecompressionContainerCreateThumbnailImageForIndex' [%s]\n", v51);
      ++v2;
    }

    gFunc_CMPhotoDecompressionContainerGetAuxiliaryImageCountForIndexWithOptions = dlsym(v1, "CMPhotoDecompressionContainerGetAuxiliaryImageCountForIndexWithOptions");
    if (!gFunc_CMPhotoDecompressionContainerGetAuxiliaryImageCountForIndexWithOptions)
    {
      v52 = dlerror();
      printf("❌  failed to load 'CMPhotoDecompressionContainerGetAuxiliaryImageCountForIndexWithOptions' [%s]\n", v52);
      ++v2;
    }

    gFunc_CMPhotoDecompressionContainerGetAuxiliaryImageTypeForIndexWithOptions = dlsym(v1, "CMPhotoDecompressionContainerGetAuxiliaryImageTypeForIndexWithOptions");
    if (!gFunc_CMPhotoDecompressionContainerGetAuxiliaryImageTypeForIndexWithOptions)
    {
      v53 = dlerror();
      printf("❌  failed to load 'CMPhotoDecompressionContainerGetAuxiliaryImageTypeForIndexWithOptions' [%s]\n", v53);
      ++v2;
    }

    gFunc_CMPhotoDecompressionContainerGetContainerFormat = dlsym(v1, "CMPhotoDecompressionContainerGetContainerFormat");
    if (!gFunc_CMPhotoDecompressionContainerGetContainerFormat)
    {
      v54 = dlerror();
      printf("❌  failed to load 'CMPhotoDecompressionContainerGetContainerFormat' [%s]\n", v54);
      ++v2;
    }

    gFunc_CMPhotoDecompressionContainerGetCustomMetadataCountForIndexWithOptions = dlsym(v1, "CMPhotoDecompressionContainerGetCustomMetadataCountForIndexWithOptions");
    if (!gFunc_CMPhotoDecompressionContainerGetCustomMetadataCountForIndexWithOptions)
    {
      v55 = dlerror();
      printf("❌  failed to load 'CMPhotoDecompressionContainerGetCustomMetadataCountForIndexWithOptions' [%s]\n", v55);
      ++v2;
    }

    gFunc_CMPhotoDecompressionContainerGetDebugMetadataCountForIndexWithOptions = dlsym(v1, "CMPhotoDecompressionContainerGetDebugMetadataCountForIndexWithOptions");
    if (!gFunc_CMPhotoDecompressionContainerGetDebugMetadataCountForIndexWithOptions)
    {
      v56 = dlerror();
      printf("❌  failed to load 'CMPhotoDecompressionContainerGetDebugMetadataCountForIndexWithOptions' [%s]\n", v56);
      ++v2;
    }

    gFunc_CMPhotoDecompressionContainerGetExifCountForIndexWithOptions = dlsym(v1, "CMPhotoDecompressionContainerGetExifCountForIndexWithOptions");
    if (!gFunc_CMPhotoDecompressionContainerGetExifCountForIndexWithOptions)
    {
      v57 = dlerror();
      printf("❌  failed to load 'CMPhotoDecompressionContainerGetExifCountForIndexWithOptions' [%s]\n", v57);
      ++v2;
    }

    gFunc_CMPhotoDecompressionContainerGetImageCountWithOptions = dlsym(v1, "CMPhotoDecompressionContainerGetImageCountWithOptions");
    if (!gFunc_CMPhotoDecompressionContainerGetImageCountWithOptions)
    {
      v58 = dlerror();
      printf("❌  failed to load 'CMPhotoDecompressionContainerGetImageCountWithOptions' [%s]\n", v58);
      ++v2;
    }

    gFunc_CMPhotoDecompressionContainerGetImageGeometryForIndexWithOptions = dlsym(v1, "CMPhotoDecompressionContainerGetImageGeometryForIndexWithOptions");
    if (!gFunc_CMPhotoDecompressionContainerGetImageGeometryForIndexWithOptions)
    {
      v59 = dlerror();
      printf("❌  failed to load 'CMPhotoDecompressionContainerGetImageGeometryForIndexWithOptions' [%s]\n", v59);
      ++v2;
    }

    gFunc_CMPhotoDecompressionContainerGetSequenceCount = dlsym(v1, "CMPhotoDecompressionContainerGetSequenceCount");
    if (!gFunc_CMPhotoDecompressionContainerGetSequenceCount)
    {
      v60 = dlerror();
      printf("❌  failed to load 'CMPhotoDecompressionContainerGetSequenceCount' [%s]\n", v60);
      ++v2;
    }

    gFunc_CMPhotoDecompressionContainerGetThumbnailCountForIndexWithOptions = dlsym(v1, "CMPhotoDecompressionContainerGetThumbnailCountForIndexWithOptions");
    if (!gFunc_CMPhotoDecompressionContainerGetThumbnailCountForIndexWithOptions)
    {
      v61 = dlerror();
      printf("❌  failed to load 'CMPhotoDecompressionContainerGetThumbnailCountForIndexWithOptions' [%s]\n", v61);
      ++v2;
    }

    gFunc_CMPhotoDecompressionContainerGetThumbnailGeometryForIndexWithOptions = dlsym(v1, "CMPhotoDecompressionContainerGetThumbnailGeometryForIndexWithOptions");
    if (!gFunc_CMPhotoDecompressionContainerGetThumbnailGeometryForIndexWithOptions)
    {
      v62 = dlerror();
      printf("❌  failed to load 'CMPhotoDecompressionContainerGetThumbnailGeometryForIndexWithOptions' [%s]\n", v62);
      ++v2;
    }

    gFunc_CMPhotoDecompressionContainerGetXMPCountForIndexWithOptions = dlsym(v1, "CMPhotoDecompressionContainerGetXMPCountForIndexWithOptions");
    if (!gFunc_CMPhotoDecompressionContainerGetXMPCountForIndexWithOptions)
    {
      v63 = dlerror();
      printf("❌  failed to load 'CMPhotoDecompressionContainerGetXMPCountForIndexWithOptions' [%s]\n", v63);
      ++v2;
    }

    gFunc_CMPhotoDecompressionContainerJFIFTranscode = dlsym(v1, "CMPhotoDecompressionContainerJFIFTranscode");
    if (!gFunc_CMPhotoDecompressionContainerJFIFTranscode)
    {
      v64 = dlerror();
      printf("❌  failed to load 'CMPhotoDecompressionContainerJFIFTranscode' [%s]\n", v64);
      ++v2;
    }

    gFunc_CMPhotoDecompressionDetectContainerFormat = dlsym(v1, "CMPhotoDecompressionDetectContainerFormat");
    if (!gFunc_CMPhotoDecompressionDetectContainerFormat)
    {
      v65 = dlerror();
      printf("❌  failed to load 'CMPhotoDecompressionDetectContainerFormat' [%s]\n", v65);
      ++v2;
    }

    gFunc_CMPhotoDecompressionDetectContainerFormatAndCodec = dlsym(v1, "CMPhotoDecompressionDetectContainerFormatAndCodec");
    if (!gFunc_CMPhotoDecompressionDetectContainerFormatAndCodec)
    {
      v66 = dlerror();
      printf("❌  failed to load 'CMPhotoDecompressionDetectContainerFormatAndCodec' [%s]\n", v66);
      ++v2;
    }

    gFunc_CMPhotoDecompressionSessionCreate = dlsym(v1, "CMPhotoDecompressionSessionCreate");
    if (!gFunc_CMPhotoDecompressionSessionCreate)
    {
      v67 = dlerror();
      printf("❌  failed to load 'CMPhotoDecompressionSessionCreate' [%s]\n", v67);
      ++v2;
    }

    gFunc_CMPhotoDecompressionSessionCreateContainer = dlsym(v1, "CMPhotoDecompressionSessionCreateContainer");
    if (!gFunc_CMPhotoDecompressionSessionCreateContainer)
    {
      v68 = dlerror();
      printf("❌  failed to load 'CMPhotoDecompressionSessionCreateContainer' [%s]\n", v68);
      ++v2;
    }

    gFunc_CMPhotoDecompressionSessionFlushCachedBuffers = dlsym(v1, "CMPhotoDecompressionSessionFlushCachedBuffers");
    if (!gFunc_CMPhotoDecompressionSessionFlushCachedBuffers)
    {
      v69 = dlerror();
      printf("❌  failed to load 'CMPhotoDecompressionSessionFlushCachedBuffers' [%s]\n", v69);
      ++v2;
    }

    gFunc_CMPhotoDecompressionSessionReleaseHardwareResources = dlsym(v1, "CMPhotoDecompressionSessionReleaseHardwareResources");
    if (!gFunc_CMPhotoDecompressionSessionReleaseHardwareResources)
    {
      v70 = dlerror();
      printf("❌  failed to load 'CMPhotoDecompressionSessionReleaseHardwareResources' [%s]\n", v70);
      ++v2;
    }

    gFunc_CMPhotoDecompressionSupportedForContainerAndCodec = dlsym(v1, "CMPhotoDecompressionSupportedForContainerAndCodec");
    if (!gFunc_CMPhotoDecompressionSupportedForContainerAndCodec)
    {
      v71 = dlerror();
      printf("❌  failed to load 'CMPhotoDecompressionSupportedForContainerAndCodec' [%s]\n", v71);
      ++v2;
    }

    gFunc_CMPhotoScaleAndRotateSessionTransformImage = dlsym(v1, "CMPhotoScaleAndRotateSessionTransformImage");
    if (!gFunc_CMPhotoScaleAndRotateSessionTransformImage)
    {
      v72 = dlerror();
      printf("❌  failed to load 'CMPhotoScaleAndRotateSessionTransformImage' [%s]\n", v72);
      ++v2;
    }

    gFunc_CMPhotoDecompressionSessionDetachSurface = dlsym(v1, "CMPhotoDecompressionSessionDetachSurface");
    if (!gFunc_CMPhotoDecompressionSessionDetachSurface)
    {
      v73 = dlerror();
      printf("❌  failed to load 'CMPhotoDecompressionSessionDetachSurface' [%s]\n", v73);
      ++v2;
    }

    gFunc_CMPhotoGetAPIVersion = dlsym(v1, "CMPhotoGetAPIVersion");
    if (!gFunc_CMPhotoGetAPIVersion)
    {
      v74 = dlerror();
      printf("❌  failed to load 'CMPhotoGetAPIVersion' [%s]\n", v74);
      ++v2;
    }

    gFunc_CMPhotoJPEGCreateJPEGFromIOSurface = dlsym(v1, "CMPhotoJPEGCreateJPEGFromIOSurface");
    if (!gFunc_CMPhotoJPEGCreateJPEGFromIOSurface)
    {
      v75 = dlerror();
      printf("❌  failed to load 'CMPhotoJPEGCreateJPEGFromIOSurface' [%s]\n", v75);
      ++v2;
    }

    gFunc_CMPhotoDetermineMIAFCompliantThumbnailMaxPixelSize = dlsym(v1, "CMPhotoDetermineMIAFCompliantThumbnailMaxPixelSize");
    if (!gFunc_CMPhotoDetermineMIAFCompliantThumbnailMaxPixelSize)
    {
      v76 = dlerror();
      printf("❌  failed to load 'CMPhotoDetermineMIAFCompliantThumbnailMaxPixelSize' [%s]\n", v76);
      ++v2;
    }

    gIIO_kCMPhotoCompressionContainerDescription_EXIFMetadata = dlsym(v1, "kCMPhotoCompressionContainerDescription_EXIFMetadata");
    if (!gIIO_kCMPhotoCompressionContainerDescription_EXIFMetadata)
    {
      v77 = dlerror();
      printf("❌  failed to load 'kCMPhotoCompressionContainerDescription_EXIFMetadata' [%s]\n", v77);
      ++v2;
    }

    gIIO_kCMPhotoCompressionContainerDescription_Extrinsics_Position = dlsym(v1, "kCMPhotoCompressionContainerDescription_Extrinsics_Position");
    if (!gIIO_kCMPhotoCompressionContainerDescription_Extrinsics_Position)
    {
      v78 = dlerror();
      printf("❌  failed to load 'kCMPhotoCompressionContainerDescription_Extrinsics_Position' [%s]\n", v78);
      ++v2;
    }

    gIIO_kCMPhotoCompressionContainerDescription_GroupProperty_DisparityAdjustment = dlsym(v1, "kCMPhotoCompressionContainerDescription_GroupProperty_DisparityAdjustment");
    if (!gIIO_kCMPhotoCompressionContainerDescription_GroupProperty_DisparityAdjustment)
    {
      v79 = dlerror();
      printf("❌  failed to load 'kCMPhotoCompressionContainerDescription_GroupProperty_DisparityAdjustment' [%s]\n", v79);
      ++v2;
    }

    gIIO_kCMPhotoCompressionContainerDescription_GroupProperty_StereoAggressors = dlsym(v1, "kCMPhotoCompressionContainerDescription_GroupProperty_StereoAggressors");
    if (!gIIO_kCMPhotoCompressionContainerDescription_GroupProperty_StereoAggressors)
    {
      v80 = dlerror();
      printf("❌  failed to load 'kCMPhotoCompressionContainerDescription_GroupProperty_StereoAggressors' [%s]\n", v80);
      ++v2;
    }

    gIIO_kCMPhotoCompressionContainerDescription_GroupProperty_MonoImageLocation = dlsym(v1, "kCMPhotoCompressionContainerDescription_GroupProperty_MonoImageLocation");
    if (!gIIO_kCMPhotoCompressionContainerDescription_GroupProperty_MonoImageLocation)
    {
      v81 = dlerror();
      printf("❌  failed to load 'kCMPhotoCompressionContainerDescription_GroupProperty_MonoImageLocation' [%s]\n", v81);
      ++v2;
    }

    gIIO_kCMPhotoCompressionContainerDescription_Intrinsics = dlsym(v1, "kCMPhotoCompressionContainerDescription_Intrinsics");
    if (!gIIO_kCMPhotoCompressionContainerDescription_Intrinsics)
    {
      v82 = dlerror();
      printf("❌  failed to load 'kCMPhotoCompressionContainerDescription_Intrinsics' [%s]\n", v82);
      ++v2;
    }

    gIIO_kCMPhotoCompressionContainerDescription_Orientation = dlsym(v1, "kCMPhotoCompressionContainerDescription_Orientation");
    if (!gIIO_kCMPhotoCompressionContainerDescription_Orientation)
    {
      v83 = dlerror();
      printf("❌  failed to load 'kCMPhotoCompressionContainerDescription_Orientation' [%s]\n", v83);
      ++v2;
    }

    gIIO_kCMPhotoCompressionContainerDescription_XMPMetadata = dlsym(v1, "kCMPhotoCompressionContainerDescription_XMPMetadata");
    if (!gIIO_kCMPhotoCompressionContainerDescription_XMPMetadata)
    {
      v84 = dlerror();
      printf("❌  failed to load 'kCMPhotoCompressionContainerDescription_XMPMetadata' [%s]\n", v84);
      ++v2;
    }

    gIIO_kCMPhotoCompressionContainerOption_BackingType = dlsym(v1, "kCMPhotoCompressionContainerOption_BackingType");
    if (!gIIO_kCMPhotoCompressionContainerOption_BackingType)
    {
      v85 = dlerror();
      printf("❌  failed to load 'kCMPhotoCompressionContainerOption_BackingType' [%s]\n", v85);
      ++v2;
    }

    gIIO_kCMPhotoCompressionContainerOption_Format = dlsym(v1, "kCMPhotoCompressionContainerOption_Format");
    if (!gIIO_kCMPhotoCompressionContainerOption_Format)
    {
      v86 = dlerror();
      printf("❌  failed to load 'kCMPhotoCompressionContainerOption_Format' [%s]\n", v86);
      ++v2;
    }

    gIIO_kCMPhotoCompressionContainerOption_StripExistingMetadata = dlsym(v1, "kCMPhotoCompressionContainerOption_StripExistingMetadata");
    if (!gIIO_kCMPhotoCompressionContainerOption_StripExistingMetadata)
    {
      v87 = dlerror();
      printf("❌  failed to load 'kCMPhotoCompressionContainerOption_StripExistingMetadata' [%s]\n", v87);
      ++v2;
    }

    gIIO_kCMPhotoCompressionOption_ApplyTransform = dlsym(v1, "kCMPhotoCompressionOption_ApplyTransform");
    if (!gIIO_kCMPhotoCompressionOption_ApplyTransform)
    {
      v88 = dlerror();
      printf("❌  failed to load 'kCMPhotoCompressionOption_ApplyTransform' [%s]\n", v88);
      ++v2;
    }

    gIIO_kCMPhotoCompressionOption_BitDepth = dlsym(v1, "kCMPhotoCompressionOption_BitDepth");
    if (!gIIO_kCMPhotoCompressionOption_BitDepth)
    {
      v89 = dlerror();
      printf("❌  failed to load 'kCMPhotoCompressionOption_BitDepth' [%s]\n", v89);
      ++v2;
    }

    gIIO_kCMPhotoCompressionOption_CodecType = dlsym(v1, "kCMPhotoCompressionOption_CodecType");
    if (!gIIO_kCMPhotoCompressionOption_CodecType)
    {
      v90 = dlerror();
      printf("❌  failed to load 'kCMPhotoCompressionOption_CodecType' [%s]\n", v90);
      ++v2;
    }

    gIIO_kCMPhotoCompressionOption_ColorSpace = dlsym(v1, "kCMPhotoCompressionOption_ColorSpace");
    if (!gIIO_kCMPhotoCompressionOption_ColorSpace)
    {
      v91 = dlerror();
      printf("❌  failed to load 'kCMPhotoCompressionOption_ColorSpace' [%s]\n", v91);
      ++v2;
    }

    gIIO_kCMPhotoCompressionOption_EnableSoftwareHEVCEncoder = dlsym(v1, "kCMPhotoCompressionOption_EnableSoftwareHEVCEncoder");
    if (!gIIO_kCMPhotoCompressionOption_EnableSoftwareHEVCEncoder)
    {
      v92 = dlerror();
      printf("❌  failed to load 'kCMPhotoCompressionOption_EnableSoftwareHEVCEncoder' [%s]\n", v92);
      ++v2;
    }

    gIIO_kCMPhotoCompressionOption_ForceHighSpeed = dlsym(v1, "kCMPhotoCompressionOption_ForceHighSpeed");
    if (!gIIO_kCMPhotoCompressionOption_ForceHighSpeed)
    {
      v93 = dlerror();
      printf("❌  failed to load 'kCMPhotoCompressionOption_ForceHighSpeed' [%s]\n", v93);
      ++v2;
    }

    gIIO_kCMPhotoCompressionOption_ImageOrientation = dlsym(v1, "kCMPhotoCompressionOption_ImageOrientation");
    if (!gIIO_kCMPhotoCompressionOption_ImageOrientation)
    {
      v94 = dlerror();
      printf("❌  failed to load 'kCMPhotoCompressionOption_ImageOrientation' [%s]\n", v94);
      ++v2;
    }

    gIIO_kCMPhotoCompressionOption_IntrinsicsMatrix = dlsym(v1, "kCMPhotoCompressionOption_IntrinsicsMatrix");
    if (!gIIO_kCMPhotoCompressionOption_IntrinsicsMatrix)
    {
      v95 = dlerror();
      printf("❌  failed to load 'kCMPhotoCompressionOption_IntrinsicsMatrix' [%s]\n", v95);
      ++v2;
    }

    gIIO_kCMPhotoCompressionOption_MaxPixelSize = dlsym(v1, "kCMPhotoCompressionOption_MaxPixelSize");
    if (!gIIO_kCMPhotoCompressionOption_MaxPixelSize)
    {
      v96 = dlerror();
      printf("❌  failed to load 'kCMPhotoCompressionOption_MaxPixelSize' [%s]\n", v96);
      ++v2;
    }

    gIIO_kCMPhotoCompressionOption_PreferSoftwareCodec = dlsym(v1, "kCMPhotoCompressionOption_PreferSoftwareCodec");
    if (!gIIO_kCMPhotoCompressionOption_PreferSoftwareCodec)
    {
      v97 = dlerror();
      printf("❌  failed to load 'kCMPhotoCompressionOption_PreferSoftwareCodec' [%s]\n", v97);
      ++v2;
    }

    gIIO_kCMPhotoCompressionOption_PrimaryImage = dlsym(v1, "kCMPhotoCompressionOption_PrimaryImage");
    if (!gIIO_kCMPhotoCompressionOption_PrimaryImage)
    {
      v98 = dlerror();
      printf("❌  failed to load 'kCMPhotoCompressionOption_PrimaryImage' [%s]\n", v98);
      ++v2;
    }

    gIIO_kCMPhotoCompressionOption_QualityControllerParameters = dlsym(v1, "kCMPhotoCompressionOption_QualityControllerParameters");
    if (!gIIO_kCMPhotoCompressionOption_QualityControllerParameters)
    {
      v99 = dlerror();
      printf("❌  failed to load 'kCMPhotoCompressionOption_QualityControllerParameters' [%s]\n", v99);
      ++v2;
    }

    gIIO_kCMPhotoCompressionOption_QualityControllerType = dlsym(v1, "kCMPhotoCompressionOption_QualityControllerType");
    if (!gIIO_kCMPhotoCompressionOption_QualityControllerType)
    {
      v100 = dlerror();
      printf("❌  failed to load 'kCMPhotoCompressionOption_QualityControllerType' [%s]\n", v100);
      ++v2;
    }

    gIIO_kCMPhotoCompressionOption_RequireHardwareCodec = dlsym(v1, "kCMPhotoCompressionOption_RequireHardwareCodec");
    if (!gIIO_kCMPhotoCompressionOption_RequireHardwareCodec)
    {
      v101 = dlerror();
      printf("❌  failed to load 'kCMPhotoCompressionOption_RequireHardwareCodec' [%s]\n", v101);
      ++v2;
    }

    gIIO_kCMPhotoCompressionOption_RGBToYUVDithering = dlsym(v1, "kCMPhotoCompressionOption_RGBToYUVDithering");
    if (!gIIO_kCMPhotoCompressionOption_RGBToYUVDithering)
    {
      v102 = dlerror();
      printf("❌  failed to load 'kCMPhotoCompressionOption_RGBToYUVDithering' [%s]\n", v102);
      ++v2;
    }

    gIIO_kCMPhotoCompressionOption_Subsampling = dlsym(v1, "kCMPhotoCompressionOption_Subsampling");
    if (!gIIO_kCMPhotoCompressionOption_Subsampling)
    {
      v103 = dlerror();
      printf("❌  failed to load 'kCMPhotoCompressionOption_Subsampling' [%s]\n", v103);
      ++v2;
    }

    gIIO_kCMPhotoCompressionOption_Tiling = dlsym(v1, "kCMPhotoCompressionOption_Tiling");
    if (!gIIO_kCMPhotoCompressionOption_Tiling)
    {
      v104 = dlerror();
      printf("❌  failed to load 'kCMPhotoCompressionOption_Tiling' [%s]\n", v104);
      ++v2;
    }

    gIIO_kCMPhotoCompressionOption_UseVTCompression = dlsym(v1, "kCMPhotoCompressionOption_UseVTCompression");
    if (!gIIO_kCMPhotoCompressionOption_UseVTCompression)
    {
      v105 = dlerror();
      printf("❌  failed to load 'kCMPhotoCompressionOption_UseVTCompression' [%s]\n", v105);
      ++v2;
    }

    gIIO_kCMPhotoCompressionSessionOption_UseCodecSessionPool = dlsym(v1, "kCMPhotoCompressionSessionOption_UseCodecSessionPool");
    if (!gIIO_kCMPhotoCompressionSessionOption_UseCodecSessionPool)
    {
      v106 = dlerror();
      printf("❌  failed to load 'kCMPhotoCompressionSessionOption_UseCodecSessionPool' [%s]\n", v106);
      ++v2;
    }

    gIIO_kCMPhotoCustomMetadata_Data = dlsym(v1, "kCMPhotoCustomMetadata_Data");
    if (!gIIO_kCMPhotoCustomMetadata_Data)
    {
      v107 = dlerror();
      printf("❌  failed to load 'kCMPhotoCustomMetadata_Data' [%s]\n", v107);
      ++v2;
    }

    gIIO_kCMPhotoCustomMetadata_Name = dlsym(v1, "kCMPhotoCustomMetadata_Name");
    if (!gIIO_kCMPhotoCustomMetadata_Name)
    {
      v108 = dlerror();
      printf("❌  failed to load 'kCMPhotoCustomMetadata_Name' [%s]\n", v108);
      ++v2;
    }

    gIIO_kCMPhotoCustomMetadata_URI = dlsym(v1, "kCMPhotoCustomMetadata_URI");
    if (!gIIO_kCMPhotoCustomMetadata_URI)
    {
      v109 = dlerror();
      printf("❌  failed to load 'kCMPhotoCustomMetadata_URI' [%s]\n", v109);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionContainerDescription_AlphaPremultiplication = dlsym(v1, "kCMPhotoDecompressionContainerDescription_AlphaPremultiplication");
    if (!gIIO_kCMPhotoDecompressionContainerDescription_AlphaPremultiplication)
    {
      v110 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionContainerDescription_AlphaPremultiplication' [%s]\n", v110);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionContainerDescription_AlternateImages = dlsym(v1, "kCMPhotoDecompressionContainerDescription_AlternateImages");
    if (!gIIO_kCMPhotoDecompressionContainerDescription_AlternateImages)
    {
      v111 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionContainerDescription_AlternateImages' [%s]\n", v111);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionContainerDescription_AudioTrackCount = dlsym(v1, "kCMPhotoDecompressionContainerDescription_AudioTrackCount");
    if (!gIIO_kCMPhotoDecompressionContainerDescription_AudioTrackCount)
    {
      v112 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionContainerDescription_AudioTrackCount' [%s]\n", v112);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionContainerDescription_AuxiliaryImageCount = dlsym(v1, "kCMPhotoDecompressionContainerDescription_AuxiliaryImageCount");
    if (!gIIO_kCMPhotoDecompressionContainerDescription_AuxiliaryImageCount)
    {
      v113 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionContainerDescription_AuxiliaryImageCount' [%s]\n", v113);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionContainerDescription_AuxiliaryImages = dlsym(v1, "kCMPhotoDecompressionContainerDescription_AuxiliaryImages");
    if (!gIIO_kCMPhotoDecompressionContainerDescription_AuxiliaryImages)
    {
      v114 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionContainerDescription_AuxiliaryImages' [%s]\n", v114);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionContainerDescription_AuxiliaryNativePixelFormat = dlsym(v1, "kCMPhotoDecompressionContainerDescription_AuxiliaryNativePixelFormat");
    if (!gIIO_kCMPhotoDecompressionContainerDescription_AuxiliaryNativePixelFormat)
    {
      v115 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionContainerDescription_AuxiliaryNativePixelFormat' [%s]\n", v115);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionContainerDescription_AuxiliaryType = dlsym(v1, "kCMPhotoDecompressionContainerDescription_AuxiliaryType");
    if (!gIIO_kCMPhotoDecompressionContainerDescription_AuxiliaryType)
    {
      v116 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionContainerDescription_AuxiliaryType' [%s]\n", v116);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionContainerDescription_AuxiliaryTypeURN = dlsym(v1, "kCMPhotoDecompressionContainerDescription_AuxiliaryTypeURN");
    if (!gIIO_kCMPhotoDecompressionContainerDescription_AuxiliaryTypeURN)
    {
      v117 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionContainerDescription_AuxiliaryTypeURN' [%s]\n", v117);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionContainerDescription_BitDepth = dlsym(v1, "kCMPhotoDecompressionContainerDescription_BitDepth");
    if (!gIIO_kCMPhotoDecompressionContainerDescription_BitDepth)
    {
      v118 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionContainerDescription_BitDepth' [%s]\n", v118);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionContainerDescription_CodecType = dlsym(v1, "kCMPhotoDecompressionContainerDescription_CodecType");
    if (!gIIO_kCMPhotoDecompressionContainerDescription_CodecType)
    {
      v119 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionContainerDescription_CodecType' [%s]\n", v119);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionContainerDescription_ColorSpace = dlsym(v1, "kCMPhotoDecompressionContainerDescription_ColorSpace");
    if (!gIIO_kCMPhotoDecompressionContainerDescription_ColorSpace)
    {
      v120 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionContainerDescription_ColorSpace' [%s]\n", v120);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionContainerDescription_CustomMetadataPayloads = dlsym(v1, "kCMPhotoDecompressionContainerDescription_CustomMetadataPayloads");
    if (!gIIO_kCMPhotoDecompressionContainerDescription_CustomMetadataPayloads)
    {
      v121 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionContainerDescription_CustomMetadataPayloads' [%s]\n", v121);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionContainerDescription_DataLength = dlsym(v1, "kCMPhotoDecompressionContainerDescription_DataLength");
    if (!gIIO_kCMPhotoDecompressionContainerDescription_DataLength)
    {
      v122 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionContainerDescription_DataLength' [%s]\n", v122);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionContainerDescription_DataOffset = dlsym(v1, "kCMPhotoDecompressionContainerDescription_DataOffset");
    if (!gIIO_kCMPhotoDecompressionContainerDescription_DataOffset)
    {
      v123 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionContainerDescription_DataOffset' [%s]\n", v123);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionContainerDescription_DebugPayloads = dlsym(v1, "kCMPhotoDecompressionContainerDescription_DebugPayloads");
    if (!gIIO_kCMPhotoDecompressionContainerDescription_DebugPayloads)
    {
      v124 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionContainerDescription_DebugPayloads' [%s]\n", v124);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionContainerDescription_DerivationDetails = dlsym(v1, "kCMPhotoDecompressionContainerDescription_DerivationDetails");
    if (!gIIO_kCMPhotoDecompressionContainerDescription_DerivationDetails)
    {
      v125 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionContainerDescription_DerivationDetails' [%s]\n", v125);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionContainerDescription_DerivationGainMapDimension = dlsym(v1, "kCMPhotoDecompressionContainerDescription_DerivationGainMapDimension");
    if (!gIIO_kCMPhotoDecompressionContainerDescription_DerivationGainMapDimension)
    {
      v126 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionContainerDescription_DerivationGainMapDimension' [%s]\n", v126);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionContainerDescription_DerivationGainMapOrientation = dlsym(v1, "kCMPhotoDecompressionContainerDescription_DerivationGainMapOrientation");
    if (!gIIO_kCMPhotoDecompressionContainerDescription_DerivationGainMapOrientation)
    {
      v127 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionContainerDescription_DerivationGainMapOrientation' [%s]\n", v127);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionContainerDescription_DerivationGainMapPixelFormat = dlsym(v1, "kCMPhotoDecompressionContainerDescription_DerivationGainMapPixelFormat");
    if (!gIIO_kCMPhotoDecompressionContainerDescription_DerivationGainMapPixelFormat)
    {
      v128 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionContainerDescription_DerivationGainMapPixelFormat' [%s]\n", v128);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionContainerDescription_Dimensions = dlsym(v1, "kCMPhotoDecompressionContainerDescription_Dimensions");
    if (!gIIO_kCMPhotoDecompressionContainerDescription_Dimensions)
    {
      v129 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionContainerDescription_Dimensions' [%s]\n", v129);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionContainerDescription_ExifPayloads = dlsym(v1, "kCMPhotoDecompressionContainerDescription_ExifPayloads");
    if (!gIIO_kCMPhotoDecompressionContainerDescription_ExifPayloads)
    {
      v130 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionContainerDescription_ExifPayloads' [%s]\n", v130);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionContainerDescription_Group_PictureIndexList = dlsym(v1, "kCMPhotoDecompressionContainerDescription_Group_PictureIndexList");
    if (!gIIO_kCMPhotoDecompressionContainerDescription_Group_PictureIndexList)
    {
      v131 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionContainerDescription_Group_PictureIndexList' [%s]\n", v131);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionContainerDescription_Group_Type = dlsym(v1, "kCMPhotoDecompressionContainerDescription_Group_Type");
    if (!gIIO_kCMPhotoDecompressionContainerDescription_Group_Type)
    {
      v132 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionContainerDescription_Group_Type' [%s]\n", v132);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionContainerDescription_GroupsList = dlsym(v1, "kCMPhotoDecompressionContainerDescription_GroupsList");
    if (!gIIO_kCMPhotoDecompressionContainerDescription_GroupsList)
    {
      v133 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionContainerDescription_GroupsList' [%s]\n", v133);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionContainerDescription_ImageSequenceCount = dlsym(v1, "kCMPhotoDecompressionContainerDescription_ImageSequenceCount");
    if (!gIIO_kCMPhotoDecompressionContainerDescription_ImageSequenceCount)
    {
      v134 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionContainerDescription_ImageSequenceCount' [%s]\n", v134);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionContainerDescription_ItemID = dlsym(v1, "kCMPhotoDecompressionContainerDescription_ItemID");
    if (!gIIO_kCMPhotoDecompressionContainerDescription_ItemID)
    {
      v135 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionContainerDescription_ItemID' [%s]\n", v135);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionContainerDescription_ItemType = dlsym(v1, "kCMPhotoDecompressionContainerDescription_ItemType");
    if (!gIIO_kCMPhotoDecompressionContainerDescription_ItemType)
    {
      v136 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionContainerDescription_ItemType' [%s]\n", v136);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionContainerDescription_MainImages = dlsym(v1, "kCMPhotoDecompressionContainerDescription_MainImages");
    if (!gIIO_kCMPhotoDecompressionContainerDescription_MainImages)
    {
      v137 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionContainerDescription_MainImages' [%s]\n", v137);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionContainerDescription_LoopCount = dlsym(v1, "kCMPhotoDecompressionContainerDescription_LoopCount");
    if (!gIIO_kCMPhotoDecompressionContainerDescription_LoopCount)
    {
      v138 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionContainerDescription_LoopCount' [%s]\n", v138);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionContainerDescription_MeteorHeadroomFromMakerNote = dlsym(v1, "kCMPhotoDecompressionContainerDescription_MeteorHeadroomFromMakerNote");
    if (!gIIO_kCMPhotoDecompressionContainerDescription_MeteorHeadroomFromMakerNote)
    {
      v139 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionContainerDescription_MeteorHeadroomFromMakerNote' [%s]\n", v139);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionContainerDescription_MeteorHeadroomFromProperties = dlsym(v1, "kCMPhotoDecompressionContainerDescription_MeteorHeadroomFromProperties");
    if (!gIIO_kCMPhotoDecompressionContainerDescription_MeteorHeadroomFromProperties)
    {
      v140 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionContainerDescription_MeteorHeadroomFromProperties' [%s]\n", v140);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionContainerDescription_NamedColorSpace = dlsym(v1, "kCMPhotoDecompressionContainerDescription_NamedColorSpace");
    if (!gIIO_kCMPhotoDecompressionContainerDescription_NamedColorSpace)
    {
      v141 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionContainerDescription_NamedColorSpace' [%s]\n", v141);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionContainerDescription_NclxColor_ColorPrimaries = dlsym(v1, "kCMPhotoDecompressionContainerDescription_NclxColor_ColorPrimaries");
    if (!gIIO_kCMPhotoDecompressionContainerDescription_NclxColor_ColorPrimaries)
    {
      v142 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionContainerDescription_NclxColor_ColorPrimaries' [%s]\n", v142);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionContainerDescription_NclxColor_TransferFunction = dlsym(v1, "kCMPhotoDecompressionContainerDescription_NclxColor_TransferFunction");
    if (!gIIO_kCMPhotoDecompressionContainerDescription_NclxColor_TransferFunction)
    {
      v143 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionContainerDescription_NclxColor_TransferFunction' [%s]\n", v143);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionContainerDescription_NclxColor_YCbCrMatrix = dlsym(v1, "kCMPhotoDecompressionContainerDescription_NclxColor_YCbCrMatrix");
    if (!gIIO_kCMPhotoDecompressionContainerDescription_NclxColor_YCbCrMatrix)
    {
      v144 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionContainerDescription_NclxColor_YCbCrMatrix' [%s]\n", v144);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionContainerDescription_NclxColor = dlsym(v1, "kCMPhotoDecompressionContainerDescription_NclxColor");
    if (!gIIO_kCMPhotoDecompressionContainerDescription_NclxColor)
    {
      v145 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionContainerDescription_NclxColor' [%s]\n", v145);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionContainerDescription_Orientation = dlsym(v1, "kCMPhotoDecompressionContainerDescription_Orientation");
    if (!gIIO_kCMPhotoDecompressionContainerDescription_Orientation)
    {
      v146 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionContainerDescription_Orientation' [%s]\n", v146);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionContainerDescription_PrimaryImageIndex = dlsym(v1, "kCMPhotoDecompressionContainerDescription_PrimaryImageIndex");
    if (!gIIO_kCMPhotoDecompressionContainerDescription_PrimaryImageIndex)
    {
      v147 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionContainerDescription_PrimaryImageIndex' [%s]\n", v147);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionContainerDescription_SequenceSampleDependsOnOthers = dlsym(v1, "kCMPhotoDecompressionContainerDescription_SequenceSampleDependsOnOthers");
    if (!gIIO_kCMPhotoDecompressionContainerDescription_SequenceSampleDependsOnOthers)
    {
      v148 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionContainerDescription_SequenceSampleDependsOnOthers' [%s]\n", v148);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionContainerDescription_SequenceSampleDuration = dlsym(v1, "kCMPhotoDecompressionContainerDescription_SequenceSampleDuration");
    if (!gIIO_kCMPhotoDecompressionContainerDescription_SequenceSampleDuration)
    {
      v149 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionContainerDescription_SequenceSampleDuration' [%s]\n", v149);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionContainerDescription_SequenceSampleIsDependedOnByOthers = dlsym(v1, "kCMPhotoDecompressionContainerDescription_SequenceSampleIsDependedOnByOthers");
    if (!gIIO_kCMPhotoDecompressionContainerDescription_SequenceSampleIsDependedOnByOthers)
    {
      v150 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionContainerDescription_SequenceSampleIsDependedOnByOthers' [%s]\n", v150);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionContainerDescription_SequenceSamplePTS = dlsym(v1, "kCMPhotoDecompressionContainerDescription_SequenceSamplePTS");
    if (!gIIO_kCMPhotoDecompressionContainerDescription_SequenceSamplePTS)
    {
      v151 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionContainerDescription_SequenceSamplePTS' [%s]\n", v151);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionContainerDescription_SequenceTracksDescription = dlsym(v1, "kCMPhotoDecompressionContainerDescription_SequenceTracksDescription");
    if (!gIIO_kCMPhotoDecompressionContainerDescription_SequenceTracksDescription)
    {
      v152 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionContainerDescription_SequenceTracksDescription' [%s]\n", v152);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionContainerDescription_ThumbnailImageCount = dlsym(v1, "kCMPhotoDecompressionContainerDescription_ThumbnailImageCount");
    if (!gIIO_kCMPhotoDecompressionContainerDescription_ThumbnailImageCount)
    {
      v153 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionContainerDescription_ThumbnailImageCount' [%s]\n", v153);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionContainerDescription_ThumbnailImages = dlsym(v1, "kCMPhotoDecompressionContainerDescription_ThumbnailImages");
    if (!gIIO_kCMPhotoDecompressionContainerDescription_ThumbnailImages)
    {
      v154 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionContainerDescription_ThumbnailImages' [%s]\n", v154);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionContainerDescription_TiffOffset = dlsym(v1, "kCMPhotoDecompressionContainerDescription_TiffOffset");
    if (!gIIO_kCMPhotoDecompressionContainerDescription_TiffOffset)
    {
      v155 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionContainerDescription_TiffOffset' [%s]\n", v155);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionContainerDescription_TileDimensions = dlsym(v1, "kCMPhotoDecompressionContainerDescription_TileDimensions");
    if (!gIIO_kCMPhotoDecompressionContainerDescription_TileDimensions)
    {
      v156 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionContainerDescription_TileDimensions' [%s]\n", v156);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionContainerDescription_VideoTrackCount = dlsym(v1, "kCMPhotoDecompressionContainerDescription_VideoTrackCount");
    if (!gIIO_kCMPhotoDecompressionContainerDescription_VideoTrackCount)
    {
      v157 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionContainerDescription_VideoTrackCount' [%s]\n", v157);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionContainerDescription_XMPPayloads = dlsym(v1, "kCMPhotoDecompressionContainerDescription_XMPPayloads");
    if (!gIIO_kCMPhotoDecompressionContainerDescription_XMPPayloads)
    {
      v158 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionContainerDescription_XMPPayloads' [%s]\n", v158);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionOption_AccelerationMode = dlsym(v1, "kCMPhotoDecompressionOption_AccelerationMode");
    if (!gIIO_kCMPhotoDecompressionOption_AccelerationMode)
    {
      v159 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionOption_AccelerationMode' [%s]\n", v159);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionOption_AlternateIndex = dlsym(v1, "kCMPhotoDecompressionOption_AlternateIndex");
    if (!gIIO_kCMPhotoDecompressionOption_AlternateIndex)
    {
      v160 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionOption_AlternateIndex' [%s]\n", v160);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionOption_ApplyTransform = dlsym(v1, "kCMPhotoDecompressionOption_ApplyTransform");
    if (!gIIO_kCMPhotoDecompressionOption_ApplyTransform)
    {
      v161 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionOption_ApplyTransform' [%s]\n", v161);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionOption_BackCGImageWithIOSurface = dlsym(v1, "kCMPhotoDecompressionOption_BackCGImageWithIOSurface");
    if (!gIIO_kCMPhotoDecompressionOption_BackCGImageWithIOSurface)
    {
      v162 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionOption_BackCGImageWithIOSurface' [%s]\n", v162);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionOption_DecodeToHDROutputHeadRoom = dlsym(v1, "kCMPhotoDecompressionOption_DecodeToHDROutputHeadRoom");
    if (!gIIO_kCMPhotoDecompressionOption_DecodeToHDROutputHeadRoom)
    {
      v163 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionOption_DecodeToHDROutputHeadRoom' [%s]\n", v163);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionOption_DecodeToHDROutputMode = dlsym(v1, "kCMPhotoDecompressionOption_DecodeToHDROutputMode");
    if (!gIIO_kCMPhotoDecompressionOption_DecodeToHDROutputMode)
    {
      v164 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionOption_DecodeToHDROutputMode' [%s]\n", v164);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionOption_DecodeToHDROutputDoNotDecodeBaselayer = dlsym(v1, "kCMPhotoDecompressionOption_DecodeToHDROutputDoNotDecodeBaselayer");
    if (!gIIO_kCMPhotoDecompressionOption_DecodeToHDROutputDoNotDecodeBaselayer)
    {
      v165 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionOption_DecodeToHDROutputDoNotDecodeBaselayer' [%s]\n", v165);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionOption_DecodeToHDROutputOptions = dlsym(v1, "kCMPhotoDecompressionOption_DecodeToHDROutputOptions");
    if (!gIIO_kCMPhotoDecompressionOption_DecodeToHDROutputOptions)
    {
      v166 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionOption_DecodeToHDROutputOptions' [%s]\n", v166);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionContainerConstituent_FlexRangeMetadata = dlsym(v1, "kCMPhotoDecompressionContainerConstituent_FlexRangeMetadata");
    if (!gIIO_kCMPhotoDecompressionContainerConstituent_FlexRangeMetadata)
    {
      v167 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionContainerConstituent_FlexRangeMetadata' [%s]\n", v167);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionContainerConstituent_FlexRangeColorSpace = dlsym(v1, "kCMPhotoDecompressionContainerConstituent_FlexRangeColorSpace");
    if (!gIIO_kCMPhotoDecompressionContainerConstituent_FlexRangeColorSpace)
    {
      v168 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionContainerConstituent_FlexRangeColorSpace' [%s]\n", v168);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionContainerConstituent_FlexRangeGainMap = dlsym(v1, "kCMPhotoDecompressionContainerConstituent_FlexRangeGainMap");
    if (!gIIO_kCMPhotoDecompressionContainerConstituent_FlexRangeGainMap)
    {
      v169 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionContainerConstituent_FlexRangeGainMap' [%s]\n", v169);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionOption_ForceHighSpeed = dlsym(v1, "kCMPhotoDecompressionOption_ForceHighSpeed");
    if (!gIIO_kCMPhotoDecompressionOption_ForceHighSpeed)
    {
      v170 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionOption_ForceHighSpeed' [%s]\n", v170);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionOption_MaxPixelSize = dlsym(v1, "kCMPhotoDecompressionOption_MaxPixelSize");
    if (!gIIO_kCMPhotoDecompressionOption_MaxPixelSize)
    {
      v171 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionOption_MaxPixelSize' [%s]\n", v171);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionOption_OutputPixelFormat = dlsym(v1, "kCMPhotoDecompressionOption_OutputPixelFormat");
    if (!gIIO_kCMPhotoDecompressionOption_OutputPixelFormat)
    {
      v172 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionOption_OutputPixelFormat' [%s]\n", v172);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionOption_RestrictedDecoding = dlsym(v1, "kCMPhotoDecompressionOption_RestrictedDecoding");
    if (!gIIO_kCMPhotoDecompressionOption_RestrictedDecoding)
    {
      v173 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionOption_RestrictedDecoding' [%s]\n", v173);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionOption_SourceCropRect = dlsym(v1, "kCMPhotoDecompressionOption_SourceCropRect");
    if (!gIIO_kCMPhotoDecompressionOption_SourceCropRect)
    {
      v174 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionOption_SourceCropRect' [%s]\n", v174);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionOption_TiledDownsampling = dlsym(v1, "kCMPhotoDecompressionOption_TiledDownsampling");
    if (!gIIO_kCMPhotoDecompressionOption_TiledDownsampling)
    {
      v175 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionOption_TiledDownsampling' [%s]\n", v175);
      ++v2;
    }

    gIIO_kCMPhotoDecompressionOption_UseProvidedPixelBuffer = dlsym(v1, "kCMPhotoDecompressionOption_UseProvidedPixelBuffer");
    if (!gIIO_kCMPhotoDecompressionOption_UseProvidedPixelBuffer)
    {
      v176 = dlerror();
      printf("❌  failed to load 'kCMPhotoDecompressionOption_UseProvidedPixelBuffer' [%s]\n", v176);
      ++v2;
    }

    gIIO_kCMPhotoJPEGCustomLumaQuantTable = dlsym(v1, "kCMPhotoJPEGCustomLumaQuantTable");
    if (!gIIO_kCMPhotoJPEGCustomLumaQuantTable)
    {
      v177 = dlerror();
      printf("❌  failed to load 'kCMPhotoJPEGCustomLumaQuantTable' [%s]\n", v177);
      ++v2;
    }

    gIIO_kCMPhotoJPEGCustomChromaQuantTable = dlsym(v1, "kCMPhotoJPEGCustomChromaQuantTable");
    if (!gIIO_kCMPhotoJPEGCustomChromaQuantTable)
    {
      v178 = dlerror();
      printf("❌  failed to load 'kCMPhotoJPEGCustomChromaQuantTable' [%s]\n", v178);
      ++v2;
    }

    gIIO_kCMPhotoJPEGSoftwareEncode = dlsym(v1, "kCMPhotoJPEGSoftwareEncode");
    if (!gIIO_kCMPhotoJPEGSoftwareEncode)
    {
      v179 = dlerror();
      printf("❌  failed to load 'kCMPhotoJPEGSoftwareEncode' [%s]\n", v179);
      ++v2;
    }

    gIIO_kCMPhotoMetadata_TonemapAlternateHDRHeadroom = dlsym(v1, "kCMPhotoMetadata_TonemapAlternateHDRHeadroom");
    if (!gIIO_kCMPhotoMetadata_TonemapAlternateHDRHeadroom)
    {
      v180 = dlerror();
      printf("❌  failed to load 'kCMPhotoMetadata_TonemapAlternateHDRHeadroom' [%s]\n", v180);
      ++v2;
    }

    gIIO_kCMPhotoMetadata_TonemapBaseColorIsWorkingColor = dlsym(v1, "kCMPhotoMetadata_TonemapBaseColorIsWorkingColor");
    if (!gIIO_kCMPhotoMetadata_TonemapBaseColorIsWorkingColor)
    {
      v181 = dlerror();
      printf("❌  failed to load 'kCMPhotoMetadata_TonemapBaseColorIsWorkingColor' [%s]\n", v181);
      ++v2;
    }

    gIIO_kCMPhotoMetadata_TonemapBaseHDRHeadroom = dlsym(v1, "kCMPhotoMetadata_TonemapBaseHDRHeadroom");
    if (!gIIO_kCMPhotoMetadata_TonemapBaseHDRHeadroom)
    {
      v182 = dlerror();
      printf("❌  failed to load 'kCMPhotoMetadata_TonemapBaseHDRHeadroom' [%s]\n", v182);
      ++v2;
    }

    gIIO_kCMPhotoMetadata_TonemapChannelMetadataKeys = dlsym(v1, "kCMPhotoMetadata_TonemapChannelMetadataKeys");
    if (!gIIO_kCMPhotoMetadata_TonemapChannelMetadataKeys)
    {
      v183 = dlerror();
      printf("❌  failed to load 'kCMPhotoMetadata_TonemapChannelMetadataKeys' [%s]\n", v183);
      ++v2;
    }

    gIIO_kCMPhotoMetadataTonemapChannel_AlternateOffset = dlsym(v1, "kCMPhotoMetadataTonemapChannel_AlternateOffset");
    if (!gIIO_kCMPhotoMetadataTonemapChannel_AlternateOffset)
    {
      v184 = dlerror();
      printf("❌  failed to load 'kCMPhotoMetadataTonemapChannel_AlternateOffset' [%s]\n", v184);
      ++v2;
    }

    gIIO_kCMPhotoMetadataTonemapChannel_BaseOffset = dlsym(v1, "kCMPhotoMetadataTonemapChannel_BaseOffset");
    if (!gIIO_kCMPhotoMetadataTonemapChannel_BaseOffset)
    {
      v185 = dlerror();
      printf("❌  failed to load 'kCMPhotoMetadataTonemapChannel_BaseOffset' [%s]\n", v185);
      ++v2;
    }

    gIIO_kCMPhotoMetadataTonemapChannel_GainMapMax = dlsym(v1, "kCMPhotoMetadataTonemapChannel_GainMapMax");
    if (!gIIO_kCMPhotoMetadataTonemapChannel_GainMapMax)
    {
      v186 = dlerror();
      printf("❌  failed to load 'kCMPhotoMetadataTonemapChannel_GainMapMax' [%s]\n", v186);
      ++v2;
    }

    gIIO_kCMPhotoMetadataTonemapChannel_GainMapMin = dlsym(v1, "kCMPhotoMetadataTonemapChannel_GainMapMin");
    if (!gIIO_kCMPhotoMetadataTonemapChannel_GainMapMin)
    {
      v187 = dlerror();
      printf("❌  failed to load 'kCMPhotoMetadataTonemapChannel_GainMapMin' [%s]\n", v187);
      ++v2;
    }

    gIIO_kCMPhotoMetadataTonemapChannel_Gamma = dlsym(v1, "kCMPhotoMetadataTonemapChannel_Gamma");
    if (!gIIO_kCMPhotoMetadataTonemapChannel_Gamma)
    {
      v188 = dlerror();
      printf("❌  failed to load 'kCMPhotoMetadataTonemapChannel_Gamma' [%s]\n", v188);
      ++v2;
    }

    gIIO_kCMPhotoAuxiliaryImageTypeURN_Alpha = dlsym(v1, "kCMPhotoAuxiliaryImageTypeURN_Alpha");
    if (!gIIO_kCMPhotoAuxiliaryImageTypeURN_Alpha)
    {
      v189 = dlerror();
      printf("❌  failed to load 'kCMPhotoAuxiliaryImageTypeURN_Alpha' [%s]\n", v189);
      ++v2;
    }

    gIIO_kCMPhotoAuxiliaryImageTypeURN_MIAF_Alpha = dlsym(v1, "kCMPhotoAuxiliaryImageTypeURN_MIAF_Alpha");
    if (!gIIO_kCMPhotoAuxiliaryImageTypeURN_MIAF_Alpha)
    {
      v190 = dlerror();
      printf("❌  failed to load 'kCMPhotoAuxiliaryImageTypeURN_MIAF_Alpha' [%s]\n", v190);
      ++v2;
    }

    gIIO_kCMPhotoAuxiliaryImageTypeURN_Depth = dlsym(v1, "kCMPhotoAuxiliaryImageTypeURN_Depth");
    if (!gIIO_kCMPhotoAuxiliaryImageTypeURN_Depth)
    {
      v191 = dlerror();
      printf("❌  failed to load 'kCMPhotoAuxiliaryImageTypeURN_Depth' [%s]\n", v191);
      ++v2;
    }

    gIIO_kCMPhotoAuxiliaryImageTypeURN_MIAF_Depth = dlsym(v1, "kCMPhotoAuxiliaryImageTypeURN_MIAF_Depth");
    if (!gIIO_kCMPhotoAuxiliaryImageTypeURN_MIAF_Depth)
    {
      v192 = dlerror();
      printf("❌  failed to load 'kCMPhotoAuxiliaryImageTypeURN_MIAF_Depth' [%s]\n", v192);
      ++v2;
    }

    gIIO_kCMPhotoAuxiliaryImageTypeURN_PortraitEffectsMatte = dlsym(v1, "kCMPhotoAuxiliaryImageTypeURN_PortraitEffectsMatte");
    if (!gIIO_kCMPhotoAuxiliaryImageTypeURN_PortraitEffectsMatte)
    {
      v193 = dlerror();
      printf("❌  failed to load 'kCMPhotoAuxiliaryImageTypeURN_PortraitEffectsMatte' [%s]\n", v193);
      ++v2;
    }

    gIIO_kCMPhotoAuxiliaryImageTypeURN_SemanticHairMatte = dlsym(v1, "kCMPhotoAuxiliaryImageTypeURN_SemanticHairMatte");
    if (!gIIO_kCMPhotoAuxiliaryImageTypeURN_SemanticHairMatte)
    {
      v194 = dlerror();
      printf("❌  failed to load 'kCMPhotoAuxiliaryImageTypeURN_SemanticHairMatte' [%s]\n", v194);
      ++v2;
    }

    gIIO_kCMPhotoAuxiliaryImageTypeURN_SemanticSkinMatte = dlsym(v1, "kCMPhotoAuxiliaryImageTypeURN_SemanticSkinMatte");
    if (!gIIO_kCMPhotoAuxiliaryImageTypeURN_SemanticSkinMatte)
    {
      v195 = dlerror();
      printf("❌  failed to load 'kCMPhotoAuxiliaryImageTypeURN_SemanticSkinMatte' [%s]\n", v195);
      ++v2;
    }

    gIIO_kCMPhotoAuxiliaryImageTypeURN_SemanticTeethMatte = dlsym(v1, "kCMPhotoAuxiliaryImageTypeURN_SemanticTeethMatte");
    if (!gIIO_kCMPhotoAuxiliaryImageTypeURN_SemanticTeethMatte)
    {
      v196 = dlerror();
      printf("❌  failed to load 'kCMPhotoAuxiliaryImageTypeURN_SemanticTeethMatte' [%s]\n", v196);
      ++v2;
    }

    gIIO_kCMPhotoAuxiliaryImageTypeURN_SemanticGlassesMatte = dlsym(v1, "kCMPhotoAuxiliaryImageTypeURN_SemanticGlassesMatte");
    if (!gIIO_kCMPhotoAuxiliaryImageTypeURN_SemanticGlassesMatte)
    {
      v197 = dlerror();
      printf("❌  failed to load 'kCMPhotoAuxiliaryImageTypeURN_SemanticGlassesMatte' [%s]\n", v197);
      ++v2;
    }

    gIIO_kCMPhotoAuxiliaryImageTypeURN_SemanticSkyMatte = dlsym(v1, "kCMPhotoAuxiliaryImageTypeURN_SemanticSkyMatte");
    if (!gIIO_kCMPhotoAuxiliaryImageTypeURN_SemanticSkyMatte)
    {
      v198 = dlerror();
      printf("❌  failed to load 'kCMPhotoAuxiliaryImageTypeURN_SemanticSkyMatte' [%s]\n", v198);
      ++v2;
    }

    gIIO_kCMPhotoAuxiliaryImageTypeURN_HDRGainMap = dlsym(v1, "kCMPhotoAuxiliaryImageTypeURN_HDRGainMap");
    if (!gIIO_kCMPhotoAuxiliaryImageTypeURN_HDRGainMap)
    {
      v199 = dlerror();
      printf("❌  failed to load 'kCMPhotoAuxiliaryImageTypeURN_HDRGainMap' [%s]\n", v199);
      ++v2;
    }

    gIIO_kCMPhotoCompressionOption_AuxiliaryImageCustomTypeURN = dlsym(v1, "kCMPhotoCompressionOption_AuxiliaryImageCustomTypeURN");
    if (!gIIO_kCMPhotoCompressionOption_AuxiliaryImageCustomTypeURN)
    {
      v200 = dlerror();
      printf("❌  failed to load 'kCMPhotoCompressionOption_AuxiliaryImageCustomTypeURN' [%s]\n", v200);
      ++v2;
    }

    gIIO_kCMPhotoQualityControllerParameter_QualityValue = dlsym(v1, "kCMPhotoQualityControllerParameter_QualityValue");
    if (!gIIO_kCMPhotoQualityControllerParameter_QualityValue)
    {
      v201 = dlerror();
      printf("❌  failed to load 'kCMPhotoQualityControllerParameter_QualityValue' [%s]\n", v201);
      ++v2;
    }

    gIIO_kCMPhotoScaleAndRotateOption_DestinationCropRectDictionary = dlsym(v1, "kCMPhotoScaleAndRotateOption_DestinationCropRectDictionary");
    if (!gIIO_kCMPhotoScaleAndRotateOption_DestinationCropRectDictionary)
    {
      v202 = dlerror();
      printf("❌  failed to load 'kCMPhotoScaleAndRotateOption_DestinationCropRectDictionary' [%s]\n", v202);
      ++v2;
    }

    gIIO_kCMPhotoScaleAndRotateOption_DestinationPixelFormat = dlsym(v1, "kCMPhotoScaleAndRotateOption_DestinationPixelFormat");
    if (!gIIO_kCMPhotoScaleAndRotateOption_DestinationPixelFormat)
    {
      v203 = dlerror();
      printf("❌  failed to load 'kCMPhotoScaleAndRotateOption_DestinationPixelFormat' [%s]\n", v203);
      ++v2;
    }

    gIIO_kCMPhotoScaleAndRotateOption_DestinationMaxSideLength = dlsym(v1, "kCMPhotoScaleAndRotateOption_DestinationMaxSideLength");
    if (!gIIO_kCMPhotoScaleAndRotateOption_DestinationMaxSideLength)
    {
      v204 = dlerror();
      printf("❌  failed to load 'kCMPhotoScaleAndRotateOption_DestinationMaxSideLength' [%s]\n", v204);
      ++v2;
    }

    gIIO_kCMPhotoScaleAndRotateOption_SourceCropRectDictionary = dlsym(v1, "kCMPhotoScaleAndRotateOption_SourceCropRectDictionary");
    if (!gIIO_kCMPhotoScaleAndRotateOption_SourceCropRectDictionary)
    {
      v205 = dlerror();
      printf("❌  failed to load 'kCMPhotoScaleAndRotateOption_SourceCropRectDictionary' [%s]\n", v205);
      ++v2;
    }

    gIIO_kCMPhotoScaleAndRotateOption_SourceExifOrientation = dlsym(v1, "kCMPhotoScaleAndRotateOption_SourceExifOrientation");
    if (!gIIO_kCMPhotoScaleAndRotateOption_SourceExifOrientation)
    {
      v206 = dlerror();
      printf("❌  failed to load 'kCMPhotoScaleAndRotateOption_SourceExifOrientation' [%s]\n", v206);
      ++v2;
    }

    gIIO_kCMPhotoTranscodeOption_ApplyAlpha = dlsym(v1, "kCMPhotoTranscodeOption_ApplyAlpha");
    if (!gIIO_kCMPhotoTranscodeOption_ApplyAlpha)
    {
      v207 = dlerror();
      printf("❌  failed to load 'kCMPhotoTranscodeOption_ApplyAlpha' [%s]\n", v207);
      ++v2;
    }

    gIIO_kCMPhotoTranscodeOption_ColorConverter = dlsym(v1, "kCMPhotoTranscodeOption_ColorConverter");
    if (!gIIO_kCMPhotoTranscodeOption_ColorConverter)
    {
      v208 = dlerror();
      printf("❌  failed to load 'kCMPhotoTranscodeOption_ColorConverter' [%s]\n", v208);
      ++v2;
    }

    gIIO_kCMPhotoTranscodeOption_ColorConverterCallback = dlsym(v1, "kCMPhotoTranscodeOption_ColorConverterCallback");
    if (!gIIO_kCMPhotoTranscodeOption_ColorConverterCallback)
    {
      v209 = dlerror();
      printf("❌  failed to load 'kCMPhotoTranscodeOption_ColorConverterCallback' [%s]\n", v209);
      ++v2;
    }

    gIIO_kCMPhotoTranscodeOption_ColorConverterCGColorSpace = dlsym(v1, "kCMPhotoTranscodeOption_ColorConverterCGColorSpace");
    if (!gIIO_kCMPhotoTranscodeOption_ColorConverterCGColorSpace)
    {
      v210 = dlerror();
      printf("❌  failed to load 'kCMPhotoTranscodeOption_ColorConverterCGColorSpace' [%s]\n", v210);
      ++v2;
    }

    gIIO_kCMPhotoTranscodeOption_ColorConverterUserPointer = dlsym(v1, "kCMPhotoTranscodeOption_ColorConverterUserPointer");
    if (!gIIO_kCMPhotoTranscodeOption_ColorConverterUserPointer)
    {
      v211 = dlerror();
      printf("❌  failed to load 'kCMPhotoTranscodeOption_ColorConverterUserPointer' [%s]\n", v211);
      ++v2;
    }

    gIIO_kCMPhotoTranscodeOption_ColorConverterVersion = dlsym(v1, "kCMPhotoTranscodeOption_ColorConverterVersion");
    if (!gIIO_kCMPhotoTranscodeOption_ColorConverterVersion)
    {
      v212 = dlerror();
      printf("❌  failed to load 'kCMPhotoTranscodeOption_ColorConverterVersion' [%s]\n", v212);
      ++v2;
    }

    gIIO_kCMPhotoTranscodeOption_IncludeAuxiliaryImages = dlsym(v1, "kCMPhotoTranscodeOption_IncludeAuxiliaryImages");
    if (!gIIO_kCMPhotoTranscodeOption_IncludeAuxiliaryImages)
    {
      v213 = dlerror();
      printf("❌  failed to load 'kCMPhotoTranscodeOption_IncludeAuxiliaryImages' [%s]\n", v213);
      ++v2;
    }

    gIIO_kCMPhotoTranscodeOption_IncludeMetadata = dlsym(v1, "kCMPhotoTranscodeOption_IncludeMetadata");
    if (!gIIO_kCMPhotoTranscodeOption_IncludeMetadata)
    {
      v214 = dlerror();
      printf("❌  failed to load 'kCMPhotoTranscodeOption_IncludeMetadata' [%s]\n", v214);
      ++v2;
    }

    gIIO_kCMPhotoTranscodeOption_IncludeThumbnail = dlsym(v1, "kCMPhotoTranscodeOption_IncludeThumbnail");
    if (!gIIO_kCMPhotoTranscodeOption_IncludeThumbnail)
    {
      v215 = dlerror();
      printf("❌  failed to load 'kCMPhotoTranscodeOption_IncludeThumbnail' [%s]\n", v215);
      ++v2;
    }

    gIIO_kCMPhotoTranscodeOption_PreferSoftwareEncode = dlsym(v1, "kCMPhotoTranscodeOption_PreferSoftwareEncode");
    if (!gIIO_kCMPhotoTranscodeOption_PreferSoftwareEncode)
    {
      v216 = dlerror();
      printf("❌  failed to load 'kCMPhotoTranscodeOption_PreferSoftwareEncode' [%s]\n", v216);
      ++v2;
    }

    gIIO_kCMPhotoTranscodeOption_PreserveAndModifyGainMap = dlsym(v1, "kCMPhotoTranscodeOption_PreserveAndModifyGainMap");
    if (!gIIO_kCMPhotoTranscodeOption_PreserveAndModifyGainMap)
    {
      v217 = dlerror();
      printf("❌  failed to load 'kCMPhotoTranscodeOption_PreserveAndModifyGainMap' [%s]\n", v217);
      ++v2;
    }

    gIIO_kCMPhotoTranscodeOption_ReplacementImageProperties = dlsym(v1, "kCMPhotoTranscodeOption_ReplacementImageProperties");
    if (!gIIO_kCMPhotoTranscodeOption_ReplacementImageProperties)
    {
      v218 = dlerror();
      printf("❌  failed to load 'kCMPhotoTranscodeOption_ReplacementImageProperties' [%s]\n", v218);
      ++v2;
    }

    gIIO_kCMPhotoTranscodeOption_RestrictedTranscoding = dlsym(v1, "kCMPhotoTranscodeOption_RestrictedTranscoding");
    if (!gIIO_kCMPhotoTranscodeOption_RestrictedTranscoding)
    {
      v219 = dlerror();
      printf("❌  failed to load 'kCMPhotoTranscodeOption_RestrictedTranscoding' [%s]\n", v219);
      ++v2;
    }

    result = dlsym(v1, "kCMPhotoTranscodeOption_Strips");
    gIIO_kCMPhotoTranscodeOption_Strips = result;
    if (!result)
    {
      v220 = dlerror();
      result = printf("❌  failed to load 'kCMPhotoTranscodeOption_Strips' [%s]\n", v220);
      ++v2;
    }

    if (v2)
    {
      gFunc_CMPhotoGetAPIVersion();
      return LogError("IIOLoadCMPhotoSymbols", 811, "❌  ERROR: failed to load %d CMPhoto symbols (APIVersion at compile: %d  -  APIVersion installed: %d)\n");
    }
  }

  else
  {
    dlerror();
    return LogError("IIOLoadCMPhotoSymbols", 807, "❌  Failed to load %s  [%s]\n");
  }

  return result;
}