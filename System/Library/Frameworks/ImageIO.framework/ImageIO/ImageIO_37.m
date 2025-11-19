void sub_186086900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  IIODictionary::~IIODictionary(&a31);
  IIODictionary::~IIODictionary((v31 - 176));
  _Unwind_Resume(a1);
}

uint64_t HEIFReadPlugin::copyImageBlockSetTiles(uint64_t a1, const void *a2, uint64_t a3, const __CFDictionary **a4, unsigned int a5, double a6, double a7, double a8, double a9, uint64_t a10, _DWORD *a11)
{
  v11 = a11;
  v17 = a6;
  v18 = a3;
  v128 = 0;
  *a11 = 0;
  if (a3)
  {
    CGImageProviderGetSize();
    v22 = v21;
    v24 = v23;
    PixelSize = CGImageProviderGetPixelSize();
  }

  else
  {
    LODWORD(a6) = *(a1 + 308);
    v22 = *&a6;
    LODWORD(a6) = *(a1 + 312);
    v24 = *&a6;
    PixelSize = *(a1 + 324);
  }

  v129[0] = 0;
  if ((a5 & 0x1FF) != 0)
  {
    v26 = 512;
  }

  else
  {
    v26 = a5;
  }

  if (!v26)
  {
    v99 = 0;
    v100 = 0;
    v39 = 0;
    if (v18)
    {
      goto LABEL_129;
    }

    goto LABEL_135;
  }

  v27 = (v26 - 1);
  v112 = (v17 / v26);
  v113 = ((a7 + a9 + v27) / v26);
  v117 = ((v17 + a8 + v27) / v26);
  v115 = (a7 / v26);
  *(a1 + 252) = 16 * ((a8 * PixelSize + 15.0) * 0.0625);
  v28 = vmin_u32(vdup_n_s32(v26), *(a1 + 244));
  v109 = (a1 + 308);
  *(a1 + 308) = v28;
  *(a1 + 316) = v28.i32[0] * PixelSize;
  *(a1 + 104) = (v117 - v112) * (v113 - v115);
  v29 = IIOCreateCMPhotoDecompressionSession(&v128);
  if (v29)
  {
    HEIFReadPlugin::copyImageBlockSetTiles(v29);
    v106 = 0;
    v39 = 0;
    v34 = 0;
    goto LABEL_126;
  }

  v127 = 0;
  v126 = 0;
  v125 = 0;
  Size = IIOImageReadSession::getSize(*(a1 + 24));
  v31 = IIOImageReadSession::retainBytePointer(*(a1 + 24), &v125, 1);
  if (!v31)
  {
    HEIFReadPlugin::copyImageBlockSetTiles();
    v34 = 0;
    v106 = 0;
LABEL_131:
    v39 = 0;
    goto LABEL_132;
  }

  v32 = v31;
  v33 = *(a1 + 488);
  v116 = v26;
  if (v33)
  {
    if (*(a1 + 496))
    {
      Size = *(a1 + 496);
    }

    else
    {
      v33 = 0;
    }

    v32 = v31 + v33;
  }

  v34 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v32, Size, *MEMORY[0x1E695E498]);
  if (!v34)
  {
    goto LABEL_121;
  }

  v36 = gFunc_CMPhotoDecompressionSessionCreateContainer(v128, 0, v34, &v126, &v127);
  if (v36)
  {
    v35 = HEIFReadPlugin::copyImageBlockSetTiles(v36);
LABEL_121:
    v39 = 0;
    v106 = 0;
    v97 = 1;
    goto LABEL_122;
  }

  IIOReadPlugin::allocateBlockArray(a1, *(a1 + 104));
  v106 = IIOImageReadSession::mapData(*(a1 + 24));
  v122 = 0;
  v123 = 0;
  v124 = 0;
  IIODictionary::IIODictionary(&v122);
  v121 = 0;
  PixelFormatForBitDepth = HEIFReadPlugin::getPixelFormatForBitDepth(a1, *(a1 + 320), v37);
  HEIFReadPlugin::updateHardwareDecodeOptions(a1, &v122, a4);
  IIONumber::IIONumber(&dest, PixelFormatForBitDepth);
  IIODictionary::setObjectForKey(&v122, &dest.data, *gIIO_kCMPhotoDecompressionOption_OutputPixelFormat);
  IIONumber::~IIONumber(&dest);
  HEIFReadPlugin::updateCreateImageOptions(a1, &v122, *(a1 + 48));
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("    copyImageBlockSetTiles - decoding %d x %d tiles\n", v113 - v115, v117 - v112);
  }

  v103 = a2;
  v104 = v34;
  v107 = v18;
  v105 = v11;
  if (v113 <= v115)
  {
    v39 = 0;
    v114 = 1;
  }

  else
  {
    v39 = 0;
    v40 = 0;
    v108 = HIBYTE(PixelFormatForBitDepth);
    v41 = ((PixelFormatForBitDepth << 8) >> 24);
    *v111 = (PixelFormatForBitDepth >> 8);
    *v110 = PixelFormatForBitDepth;
    v114 = 1;
    do
    {
      v42 = *(a1 + 312);
      v43 = (v42 * v115);
      v44 = v42;
      if (v42 + v43 <= v24)
      {
        v45 = v42;
      }

      else
      {
        v45 = v24 - (v42 * v115);
      }

      if (v117 <= v112)
      {
LABEL_86:
        v88 = 1;
      }

      else
      {
        v46 = v112;
        while (1)
        {
          v118 = v46;
          v47 = (v46 * v116);
          LODWORD(v44) = *(a1 + 308);
          v48 = *&v44;
          if (v47 + v48 <= v22)
          {
            v49 = v48;
          }

          else
          {
            v49 = v22 - (v46 * v116);
          }

          v39 = _ImageIO_Malloc(*(a1 + 316) * *(a1 + 312), *(a1 + 416), v129, kImageMalloc_HEIF_Data[0], 0, 0);
          if (!v39)
          {
            IIODictionary::~IIODictionary(&v122);
            v34 = v104;
            v11 = v105;
            v18 = v107;
            goto LABEL_131;
          }

          v50 = *(a1 + 332);
          v51 = v43 * v50;
          v52 = v49 * v50;
          v53 = v50 >= 2 ? v45 * v50 : v45;
          if (v50 >= 2)
          {
            v54 = v47 * v50;
          }

          else
          {
            v52 = v49;
            v51 = v43;
            v54 = v47;
          }

          DictionaryRepresentation = CGRectCreateDictionaryRepresentation(*(&v51 - 1));
          IIODictionary::setObjectForKey(&v122, DictionaryRepresentation, *gIIO_kCMPhotoDecompressionOption_SourceCropRect);
          CFRelease(DictionaryRepresentation);
          v56 = gFunc_CMPhotoDecompressionContainerCreateImageForIndex(v127, *(a1 + 532), v123, 2, &v121);
          v57 = v56;
          if (v56)
          {
            break;
          }

          gFunc_CVPixelBufferLockBaseAddress(v121, 0);
          IsPlanar = gFunc_CVPixelBufferIsPlanar(v121);
          PixelFormatType = gFunc_CVPixelBufferGetPixelFormatType(v121);
          v60 = PixelFormatType;
          if (IsPlanar)
          {
            v61 = PixelFormatType >> 24;
            if ((PixelFormatType >> 24) <= 0x7F)
            {
              v62 = *(MEMORY[0x1E69E9830] + 4 * v61 + 60) & 0x40000;
            }

            else
            {
              v62 = __maskrune(PixelFormatType >> 24, 0x40000uLL);
            }

            if (v62)
            {
              v76 = v61;
            }

            else
            {
              v76 = 46;
            }

            v77 = (v60 << 8) >> 24;
            if (v77 <= 0x7F)
            {
              v78 = *(MEMORY[0x1E69E9830] + 4 * v77 + 60) & 0x40000;
            }

            else
            {
              v78 = __maskrune((v60 << 8) >> 24, 0x40000uLL);
            }

            if (v78)
            {
              v79 = v77;
            }

            else
            {
              v79 = 46;
            }

            v80 = v60 >> 8;
            if (v80 <= 0x7F)
            {
              v81 = *(MEMORY[0x1E69E9830] + 4 * v80 + 60) & 0x40000;
            }

            else
            {
              v81 = __maskrune(v60 >> 8, 0x40000uLL);
            }

            v60 = v60;
            if (v60 <= 0x7F)
            {
              v82 = *(MEMORY[0x1E69E9830] + 4 * v60 + 60) & 0x40000;
            }

            else
            {
              v82 = __maskrune(v60, 0x40000uLL);
            }

            if (v81)
            {
              v83 = v80;
            }

            else
            {
              v83 = 46;
            }

            if (v82)
            {
              v84 = v60;
            }

            else
            {
              v84 = 46;
            }

            _cg_jpeg_mem_term("copyImageBlockSetTiles", 3200, "*** '%c%c%c%c' request returned planar data - not handled\n", v76, v79, v83, v84);
          }

          else
          {
            BaseAddress = gFunc_CVPixelBufferGetBaseAddress(v121);
            v64 = v40;
            BytesPerRow = gFunc_CVPixelBufferGetBytesPerRow(v121);
            v66 = v41;
            Height = gFunc_CVPixelBufferGetHeight(v121);
            if (Height >= *(a1 + 312))
            {
              v68 = *(a1 + 312);
            }

            else
            {
              v68 = Height;
            }

            if (v68)
            {
              v69 = *(a1 + 316);
              if (BytesPerRow <= v69)
              {
                v70 = BytesPerRow;
              }

              else
              {
                v70 = v69;
              }

              v71 = v39;
              do
              {
                memcpy(v71, BaseAddress, v70);
                v71 += *(a1 + 316);
                BaseAddress += BytesPerRow;
                --v68;
              }

              while (v68);
            }

            v41 = v66;
            v40 = v64;
            if (v60 == 1111970369 && *(a1 + 436) == 1)
            {
              goto LABEL_55;
            }

            v72 = *(a1 + 316);
            v73 = *(a1 + 308);
            if (v72 >= 4 * v73)
            {
              v74 = *(a1 + 312);
              dest.data = v39;
              dest.height = v74;
              dest.width = v73;
              dest.rowBytes = v72;
              *permuteMap = 50331906;
              vImagePermuteChannels_ARGB8888(&dest, &dest, permuteMap, 0);
            }

            if (*(a1 + 436) == 1)
            {
LABEL_55:
              if (*(a1 + 528) == 1 && (*(a1 + 529) & 1) == 0)
              {
                dest.data = v39;
                v75.i64[0] = *v109;
                v75.i64[1] = HIDWORD(*v109);
                *&dest.height = vextq_s8(v75, v75, 8uLL);
                dest.rowBytes = *(a1 + 316);
                vImagePremultiplyData_RGBA8888(&dest, &dest, 0x10u);
              }
            }

            v114 = 1;
          }

          gFunc_CVPixelBufferUnlockBaseAddress(v121, 0);
          gFunc_CVPixelBufferRelease(v121);
          v130.origin.x = v47;
          v130.origin.y = v43;
          v130.size.width = v49;
          v130.size.height = v45;
          *(*(a1 + 96) + 8 * v40) = IIOReadPlugin::createImageBlock(a1, v39, v129[0], v130, *(a1 + 316), 0);
          if (CGRectEqualToRect(*(a1 + 120), *MEMORY[0x1E695F050]))
          {
            v85 = v43;
            v86 = v45;
          }

          else
          {
            v131.origin.x = v47;
            v131.origin.y = v43;
            v131.size.width = v49;
            v131.size.height = v45;
            *&v44 = CGRectUnion(*(a1 + 120), v131);
            v47 = v44;
            v49 = v87;
          }

          *(a1 + 120) = v47;
          *(a1 + 128) = v85;
          *(a1 + 136) = v49;
          *(a1 + 144) = v86;
          ++v40;
          v46 = v118 + 1;
          if (v118 + 1 == v117)
          {
            v39 = 0;
            goto LABEL_86;
          }
        }

        if (v56 == -15470)
        {
          if (v107)
          {
            CGImageProviderSetProperty();
          }

          v88 = 0;
        }

        else
        {
          v88 = 1;
        }

        v89 = IIOCMErrorString(v57);
        _cg_jpeg_mem_term("copyImageBlockSetTiles", 3186, "*** CMPhotoDecompressionContainerCreateImageForIndex  err = %s [%d]\n", v89, v57);
        if ((*(MEMORY[0x1E69E9830] + 4 * v108 + 62) & 4) != 0)
        {
          v90 = v108;
        }

        else
        {
          v90 = 46;
        }

        if (v41 <= 0x7F)
        {
          v91 = *(MEMORY[0x1E69E9830] + 4 * v41 + 60) & 0x40000;
        }

        else
        {
          v91 = __maskrune(v41, 0x40000uLL);
        }

        if (v91)
        {
          v92 = v41;
        }

        else
        {
          v92 = 46;
        }

        if (v111[0] <= 0x7Fu)
        {
          v93 = *(MEMORY[0x1E69E9830] + 4 * *v111 + 60) & 0x40000;
        }

        else
        {
          v93 = __maskrune(v111[0], 0x40000uLL);
        }

        if (v110[0] <= 0x7Fu)
        {
          LODWORD(v95) = v110[0];
          v94 = *(MEMORY[0x1E69E9830] + 4 * *v110 + 60) & 0x40000;
        }

        else
        {
          v94 = __maskrune(v110[0], 0x40000uLL);
          LODWORD(v95) = v110[0];
        }

        if (v93)
        {
          v96 = v111[0];
        }

        else
        {
          v96 = 46;
        }

        if (v94)
        {
          v95 = v95;
        }

        else
        {
          v95 = 46;
        }

        _cg_jpeg_mem_term("copyImageBlockSetTiles", 3187, "    outputPixelFormat: %c%c%c%c\n", v90, v92, v96, v95);
        ImageIODebugOptionsDictionary(v123);
        v114 = 0;
      }

      ++v115;
    }

    while (v115 < v113 && (v88 & 1) != 0);
  }

  CFRelease(v127);
  v34 = v104;
  v11 = v105;
  v18 = v107;
  a2 = v103;
  IIODictionary::~IIODictionary(&v122);
  v97 = v114;
LABEL_122:
  gFunc_CMPhotoDecompressionSessionFlushCachedBuffers(v128, 0, 0, v35);
  CFRelease(v128);
  if (v125)
  {
    v98 = *(a1 + 24);
    if (v98)
    {
      IIOImageReadSession::releaseBytePointer(v98, v125);
    }
  }

  if (v97)
  {
LABEL_126:
    v99 = IIOReadPlugin::imageBlockSetCreate(a1, v18, *(a1 + 104), *(a1 + 136), *(a1 + 144), *(a1 + 120), *(a1 + 128), *(a1 + 136), *(a1 + 144), *(a1 + 96), a2);
    if (!v34)
    {
      goto LABEL_128;
    }

    goto LABEL_127;
  }

LABEL_132:
  v99 = 0;
  if (v34)
  {
LABEL_127:
    CFRelease(v34);
  }

LABEL_128:
  v100 = v106;
  if (v18)
  {
LABEL_129:
    IIOReadPlugin::freeBlockArray(a1);
    goto LABEL_137;
  }

LABEL_135:
  if (*(a1 + 104))
  {
    *v11 = 1;
  }

LABEL_137:
  if (v100)
  {
    v101 = *(a1 + 24);
    if (v101)
    {
      IIOImageReadSession::unmapData(v101);
    }
  }

  if (v39)
  {
    _ImageIO_Free(v39, v129[0]);
  }

  return v99;
}

void sub_186087438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  IIONumber::~IIONumber(&a27);
  IIODictionary::~IIODictionary(&a32);
  _Unwind_Resume(a1);
}

uint64_t HEIFReadPlugin::copyImageBlockSetSingleTile(uint64_t a1, const void *a2, uint64_t a3, const __CFDictionary **a4, _DWORD *a5, double x, double y, double width, double a9)
{
  v86 = 0;
  *a5 = 0;
  if (a3)
  {
    PixelSize = CGImageProviderGetPixelSize();
  }

  else
  {
    PixelSize = *(a1 + 324);
  }

  v87[0] = 0;
  *(a1 + 104) = 1;
  IIOReadPlugin::allocateBlockArray(a1, 1uLL);
  v17 = IIOImageReadSession::mapData(*(a1 + 24));
  *(a1 + 308) = width;
  *(a1 + 312) = a9;
  v18 = width * PixelSize;
  *(a1 + 316) = v18;
  v19 = _ImageIO_Malloc(v18 * a9, *(a1 + 416), v87, kImageMalloc_HEIF_Data[0], 0, 0);
  if (v19)
  {
    v20 = IIOCreateCMPhotoDecompressionSession(&v86);
    if (v20)
    {
      HEIFReadPlugin::copyImageBlockSetSingleTile(v20);
    }

    else
    {
      v76 = v17;
      cf = 0;
      v84 = 0;
      v83 = 0;
      Size = IIOImageReadSession::getSize(*(a1 + 24));
      v22 = IIOImageReadSession::retainBytePointer(*(a1 + 24), &v83, 1);
      v23 = v22;
      v24 = *(a1 + 488);
      if (v24)
      {
        if (*(a1 + 496))
        {
          Size = *(a1 + 496);
        }

        else
        {
          v24 = 0;
        }

        v23 = v22 + v24;
      }

      if (v23)
      {
        v25 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v23, Size, *MEMORY[0x1E695E498]);
        if (v25)
        {
          v26 = v25;
          v27 = gFunc_CMPhotoDecompressionSessionCreateContainer(v86, 0, v25, &v84, &cf);
          if (v27)
          {
            v28 = v27;
            v29 = IIOCMErrorString(v27);
            _cg_jpeg_mem_term("copyImageBlockSetSingleTile", 2844, "*** CMPhotoDecompressionSessionCreateContainer  err = %s [%d]\n", v29, v28);
            v30 = 0;
          }

          else
          {
            v80 = 0;
            v81 = 0;
            v82 = 0;
            IIODictionary::IIODictionary(&v80);
            v79 = 0;
            PixelFormatForBitDepth = HEIFReadPlugin::getPixelFormatForBitDepth(a1, *(a1 + 320), v31);
            if (CGImageProviderGetComponentType() == 6)
            {
              v33 = 1815162994;
            }

            else
            {
              v33 = PixelFormatForBitDepth;
            }

            HEIFReadPlugin::updateHardwareDecodeOptions(a1, &v80, a4);
            IIONumber::IIONumber(&dest, v33);
            IIODictionary::setObjectForKey(&v80, &dest.data, *gIIO_kCMPhotoDecompressionOption_OutputPixelFormat);
            IIONumber::~IIONumber(&dest);
            HEIFReadPlugin::updateCreateImageOptions(a1, &v80, *(a1 + 48));
            v34 = a9;
            v35 = width;
            v36 = y;
            v37 = x;
            if (*(a1 + 332))
            {
              IIONumber::IIONumber(&dest, *(a1 + 508));
              IIODictionary::setObjectForKey(&v80, &dest.data, *gIIO_kCMPhotoDecompressionOption_TiledDownsampling);
              IIONumber::~IIONumber(&dest);
              v38 = *(a1 + 308) <= *(a1 + 312) ? *(a1 + 312) : *(a1 + 308);
              IIONumber::IIONumber(&dest, v38);
              IIODictionary::setObjectForKey(&v80, &dest.data, *gIIO_kCMPhotoDecompressionOption_MaxPixelSize);
              IIONumber::~IIONumber(&dest);
              v34 = a9;
              v39 = *(a1 + 332);
              v35 = width;
              v36 = y;
              v37 = x;
              if (v39 >= 2)
              {
                v37 = x * v39;
                v36 = y * v39;
                v35 = width * v39;
                v34 = a9 * v39;
              }
            }

            DictionaryRepresentation = CGRectCreateDictionaryRepresentation(*&v37);
            IIODictionary::setObjectForKey(&v80, DictionaryRepresentation, *gIIO_kCMPhotoDecompressionOption_SourceCropRect);
            CFRelease(DictionaryRepresentation);
            v41 = gFunc_CMPhotoDecompressionContainerCreateImageForIndex(cf, *(a1 + 532), v81, 2, &v79);
            v42 = v41;
            if (v41)
            {
              v43 = IIOCMErrorString(v41);
              _cg_jpeg_mem_term("copyImageBlockSetSingleTile", 2891, "*** CMPhotoDecompressionContainerCreateImageForIndex  err = %s [%d]\n", v43, v42);
              v44 = MEMORY[0x1E69E9830];
              if ((*(MEMORY[0x1E69E9830] + 4 * HIBYTE(v33) + 60) & 0x40000) != 0)
              {
                v45 = HIBYTE(v33);
              }

              else
              {
                v45 = 46;
              }

              v46 = (v33 << 8) >> 24;
              if (v46 <= 0x7F)
              {
                v47 = *(MEMORY[0x1E69E9830] + 4 * v46 + 60) & 0x40000;
              }

              else
              {
                v47 = __maskrune((v33 << 8) >> 24, 0x40000uLL);
              }

              if (v47)
              {
                v50 = v46;
              }

              else
              {
                v50 = 46;
              }

              v51 = v33 >> 8;
              if (v51 <= 0x7F)
              {
                v52 = *(v44 + 4 * v51 + 60) & 0x40000;
              }

              else
              {
                v52 = __maskrune(v33 >> 8, 0x40000uLL);
              }

              v33 = v33;
              if (v33 <= 0x7F)
              {
                v53 = *(v44 + 4 * v33 + 60) & 0x40000;
              }

              else
              {
                v53 = __maskrune(v33, 0x40000uLL);
              }

              if (v52)
              {
                v54 = v51;
              }

              else
              {
                v54 = 46;
              }

              if (v53)
              {
                v55 = v33;
              }

              else
              {
                v55 = 46;
              }

              _cg_jpeg_mem_term("copyImageBlockSetSingleTile", 2892, "    outputPixelFormat: %c%c%c%c\n", v45, v50, v54, v55);
              ImageIODebugOptionsDictionary(v81);
              v30 = 0;
            }

            else
            {
              gFunc_CVPixelBufferLockBaseAddress(v79, 0);
              IsPlanar = gFunc_CVPixelBufferIsPlanar(v79);
              PixelFormatType = gFunc_CVPixelBufferGetPixelFormatType(v79);
              v30 = IsPlanar == 0;
              if (IsPlanar)
              {
                _cg_jpeg_mem_term("copyImageBlockSetSingleTile", 2903, "*** 'BGRA' request returned planar data - not handled\n");
              }

              else
              {
                v56 = PixelFormatType;
                BaseAddress = gFunc_CVPixelBufferGetBaseAddress(v79);
                BytesPerRow = gFunc_CVPixelBufferGetBytesPerRow(v79);
                v73 = v56;
                Height = gFunc_CVPixelBufferGetHeight(v79);
                if (Height >= *(a1 + 312))
                {
                  v60 = *(a1 + 312);
                }

                else
                {
                  v60 = Height;
                }

                if (v60)
                {
                  v61 = *(a1 + 316);
                  if (BytesPerRow <= v61)
                  {
                    v62 = BytesPerRow;
                  }

                  else
                  {
                    v62 = v61;
                  }

                  v63 = v19;
                  do
                  {
                    memcpy(v63, BaseAddress, v62);
                    v63 += *(a1 + 316);
                    BaseAddress += BytesPerRow;
                    --v60;
                  }

                  while (v60);
                }

                if (v73 == 1111970369 && *(a1 + 436) != 1)
                {
                  v64 = *(a1 + 316);
                  v65 = *(a1 + 308);
                  if (v64 >= 4 * v65)
                  {
                    v66 = *(a1 + 312);
                    dest.data = v19;
                    dest.height = v66;
                    dest.width = v65;
                    dest.rowBytes = v64;
                    *permuteMap = 50331906;
                    vImagePermuteChannels_ARGB8888(&dest, &dest, permuteMap, 0x10u);
                  }
                }

                if (*(a1 + 436) == 1 && *(a1 + 528) == 1 && (*(a1 + 529) & 1) == 0)
                {
                  dest.data = v19;
                  v67 = *(a1 + 308);
                  v68.i64[0] = v67;
                  v68.i64[1] = HIDWORD(v67);
                  *&dest.height = vextq_s8(v68, v68, 8uLL);
                  dest.rowBytes = *(a1 + 316);
                  vImagePremultiplyData_RGBA8888(&dest, &dest, 0x10u);
                }
              }

              gFunc_CVPixelBufferUnlockBaseAddress(v79, 0);
              gFunc_CVPixelBufferRelease(v79);
            }

            CFRelease(cf);
            IIODictionary::~IIODictionary(&v80);
          }

          CFRelease(v86);
          CFRelease(v26);
        }

        else
        {
          CFRelease(v86);
          v30 = 0;
        }

        v17 = v76;
        if (v83)
        {
          v69 = *(a1 + 24);
          if (v69)
          {
            IIOImageReadSession::releaseBytePointer(v69, v83);
          }
        }

        if (v30)
        {
          v88.origin.x = x;
          v88.origin.y = y;
          v88.size.width = width;
          v88.size.height = a9;
          **(a1 + 96) = IIOReadPlugin::createImageBlock(a1, v19, v87[0], v88, *(a1 + 316), *(a1 + 371));
          if (!CGRectEqualToRect(*(a1 + 120), *MEMORY[0x1E695F050]))
          {
            v90.origin.x = x;
            v90.origin.y = y;
            v90.size.width = width;
            v90.size.height = a9;
            v89 = CGRectUnion(*(a1 + 120), v90);
            x = v89.origin.x;
            y = v89.origin.y;
            width = v89.size.width;
            a9 = v89.size.height;
          }

          *(a1 + 120) = x;
          *(a1 + 128) = y;
          *(a1 + 136) = width;
          *(a1 + 144) = a9;
          if (a3)
          {
            v70 = IIOReadPlugin::imageBlockSetCreate(a1, a3, *(a1 + 104), width, a9, x, y, width, a9, *(a1 + 96), a2);
            v19 = 0;
            goto LABEL_83;
          }

          v19 = 0;
          goto LABEL_85;
        }
      }

      else
      {
        LogError("copyImageBlockSetSingleTile", 2834, "*** ERROR: retainBytePointer failed\n");
      }
    }
  }

  if (a3)
  {
    v70 = 0;
LABEL_83:
    IIOReadPlugin::freeBlockArray(a1);
    if (!v17)
    {
      goto LABEL_91;
    }

    goto LABEL_89;
  }

LABEL_85:
  if (*(a1 + 104))
  {
    v70 = 0;
    *a5 = 1;
    if (!v17)
    {
      goto LABEL_91;
    }
  }

  else
  {
    v70 = 0;
    if (!v17)
    {
      goto LABEL_91;
    }
  }

LABEL_89:
  v71 = *(a1 + 24);
  if (v71)
  {
    IIOImageReadSession::unmapData(v71);
  }

LABEL_91:
  if (v19)
  {
    _ImageIO_Free(v19, v87[0]);
  }

  return v70;
}

void sub_186087C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

uint64_t HEIFReadPlugin::createPixelBufferWithGainMapApplied(uint64_t a1, uint64_t a2, uint64_t a3, GlobalHEIFInfo *a4, uint64_t a5)
{
  v36 = 0;
  v37 = 0;
  v38 = 0;
  IIODictionary::IIODictionary(&v36);
  v34 = 0;
  cf = 0;
  space = 0;
  value = 0;
  Current = CFAbsoluteTimeGetCurrent();
  if ((gIIODebugFlags & 0x300000) != 0)
  {
    ImageIOLog("☀️  %s\n", "createPixelBufferWithGainMapApplied");
  }

  if (IIORestrictedDecodingEnabledFlag())
  {
    IIODictionary::setObjectForKey(&v36, *MEMORY[0x1E695E4D0], *gIIO_kCMPhotoDecompressionOption_RestrictedDecoding);
  }

  if (*(a1 + 523) == 1)
  {
    v11 = HEIFReadPlugin::copyISOGainMapDictionary(a1, a2, v10, &v36);
  }

  else
  {
    v11 = HEIFReadPlugin::copyHDRGainMapDictionary(a1, a2, a4, &v36);
  }

  v12 = v11;
  if (!v11)
  {
    v17 = 0;
    goto LABEL_37;
  }

  CFDictionaryGetValueIfPresent(v11, *gIIO_kCMPhotoDecompressionContainerConstituent_FlexRangeGainMap, &value);
  CFDictionaryGetValueIfPresent(v12, *gIIO_kCMPhotoDecompressionContainerConstituent_FlexRangeMetadata, &cf);
  CFDictionaryGetValueIfPresent(v12, *gIIO_kCMPhotoDecompressionContainerConstituent_FlexRangeColorSpace, &space);
  if (value)
  {
    Width = gFunc_CVPixelBufferGetWidth(a5);
    Height = gFunc_CVPixelBufferGetHeight(a5);
    v15 = *(a1 + 464);
    v16 = *(a1 + 544);
    memset(v31, 0, sizeof(v31));
    IIODictionary::IIODictionary(v31);
    v17 = IIOCreatePixelBuffer(Width, Height, v15, v31);
    Alpha = IIOPixelBufferGetAlpha(a5);
    IIOPixelBufferSetAlpha(v17, Alpha);
    if (*(a1 + 524) == 1 && CGColorSpaceContainsFlexGTCInfo())
    {
      v19 = CGColorSpaceRetain(*(a1 + 160));
    }

    else
    {
      v20 = CGColorSpaceCreateWithName(v16);
      if (v20 || (v20 = CGColorSpaceRetain(space)) != 0)
      {
LABEL_18:
        IIOPixelBufferSetColorSpace(v17, v20);
        CGColorSpaceRelease(v20);
        v21 = *(a1 + 476);
        if (v21 > 0.0)
        {
          IIONumber::IIONumber(v30, v21);
          IIODictionary::setObjectForKey(&v36, v30, @"kCGTargetHeadroom");
          IIONumber::~IIONumber(v30);
        }

        v22 = *(a1 + 480);
        if (v22 > 0.0)
        {
          IIONumber::IIONumber(v30, v22);
          IIODictionary::setObjectForKey(&v36, v30, @"kCGFallbackHDRGain");
          IIONumber::~IIONumber(v30);
        }

        IIONumber::IIONumber(v30, *(a1 + 525));
        IIODictionary::setObjectForKey(&v36, v30, @"kCGDisableMetal");
        IIONumber::~IIONumber(v30);
        IIONumber::IIONumber(v30, *(a1 + 524));
        IIODictionary::setObjectForKey(&v36, v30, @"kCGGenerateFlexGTC");
        IIONumber::~IIONumber(v30);
        IIONumber::IIONumber(v30, *(a1 + 192));
        IIODictionary::setObjectForKey(&v36, v30, @"kCGComputeHDRStats");
        IIONumber::~IIONumber(v30);
        IIONumber::IIONumber(v30, *(a1 + 504));
        IIODictionary::setObjectForKey(&v36, v30, @"Orientation");
        IIONumber::~IIONumber(v30);
        if (!cf)
        {
          goto LABEL_31;
        }

        v23 = CFGetTypeID(cf);
        if (v23 == CFDictionaryGetTypeID())
        {
          FlexRangeMetadata = CGImageCreateFlexRangeMetadata(cf, &v34);
          if (FlexRangeMetadata)
          {
            _cg_jpeg_mem_term("createPixelBufferWithGainMapApplied", 4154, "*** ERROR: CGImageCreateFlexRangeMetadata failed to create gainmapdata (err=%d)\n", FlexRangeMetadata);
          }

          v25 = v34;
          if (!v34)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v25 = CFRetain(cf);
          v34 = v25;
          if (!v25)
          {
LABEL_31:
            ObjectForKey = IIODictionary::getObjectForKey(*(a1 + 56), @"{MakerApple}");
            IIODictionary::setObjectForKey(&v36, ObjectForKey, @"{MakerApple}");
            IIODictionary::setObjectForKey(&v36, space, @"kCGFlexRangeAlternateColorSpace");
            if ((gIIODebugFlags & 0x300000) != 0)
            {
              ImageIOLog("☀️  'IIOCallApplyHDRGainmap'\n");
            }

            v27 = IIOApplyHDRGainMap(a5, value, v17, v37);
            if (v27)
            {
              _cg_jpeg_mem_term("createPixelBufferWithGainMapApplied", 4176, "*** ERROR: IIOCallApplyHDRGainmap retuned %d\n", v27);
            }

            IIODictionary::~IIODictionary(v31);
            goto LABEL_36;
          }
        }

        IIODictionary::setObjectForKey(&v36, v25, @"kCGImageAuxiliaryDataInfoMetadata");
        CFRelease(v34);
        goto LABEL_31;
      }

      v19 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F178]);
    }

    v20 = v19;
    goto LABEL_18;
  }

  v17 = 0;
LABEL_36:
  CFRelease(v12);
LABEL_37:
  if ((gIIODebugFlags & 0x300000) != 0)
  {
    v28 = CFAbsoluteTimeGetCurrent();
    ImageIOLog("☀️  <<< %s [%g ms]\n", "createPixelBufferWithGainMapApplied", (v28 - Current) * 1000.0);
  }

  IIODictionary::~IIODictionary(&v36);
  return v17;
}

void sub_1860881CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  IIONumber::~IIONumber(va);
  IIODictionary::~IIODictionary(va1);
  IIODictionary::~IIODictionary(va2);
  _Unwind_Resume(a1);
}

__IOSurface *HEIFReadPlugin::createSurfaceWithGainMapApplied(uint64_t a1, uint64_t a2, uint64_t a3, GlobalHEIFInfo *a4, __IOSurface *a5)
{
  v42 = 0;
  v43 = 0;
  v44 = 0;
  IIODictionary::IIODictionary(&v42);
  v40 = 0;
  cf = 0;
  space = 0;
  value = 0;
  Current = CFAbsoluteTimeGetCurrent();
  if ((gIIODebugFlags & 0x300000) != 0)
  {
    ImageIOLog("☀️  %s\n", "createSurfaceWithGainMapApplied");
  }

  if (*(a1 + 523) == 1)
  {
    v11 = HEIFReadPlugin::copyISOGainMapDictionary(a1, a2, v9, &v42);
  }

  else
  {
    v11 = HEIFReadPlugin::copyHDRGainMapDictionary(a1, a2, a4, &v42);
  }

  v12 = v11;
  if (!v11)
  {
    v22 = 0;
    goto LABEL_43;
  }

  CFDictionaryGetValueIfPresent(v11, *gIIO_kCMPhotoDecompressionContainerConstituent_FlexRangeGainMap, &value);
  CFDictionaryGetValueIfPresent(v12, *gIIO_kCMPhotoDecompressionContainerConstituent_FlexRangeMetadata, &cf);
  CFDictionaryGetValueIfPresent(v12, *gIIO_kCMPhotoDecompressionContainerConstituent_FlexRangeColorSpace, &space);
  if (!value)
  {
    goto LABEL_41;
  }

  Width = IOSurfaceGetWidth(a5);
  Height = IOSurfaceGetHeight(a5);
  v15 = *(a1 + 544);
  v16 = *(a1 + 468);
  v17 = *(a1 + 472);
  IOSurfaceWithFormat = IIO_CreateIOSurfaceWithFormat(Width, Height, 0, *(a1 + 464), 0, v18, v19, v20);
  v22 = IOSurfaceWithFormat;
  if ((gIIODebugFlags & 0x2000000) != 0)
  {
    LogSurfaceFormat(IOSurfaceWithFormat, "outputSurface", "createSurfaceWithGainMapApplied", 4226);
  }

  Alpha = IIO_IOSurfaceGetAlpha(a5);
  IIO_IOSurfaceSetAlpha(v22, Alpha);
  if (*(a1 + 524) == 1 && CGColorSpaceContainsFlexGTCInfo())
  {
    v24 = CGColorSpaceRetain(*(a1 + 160));
LABEL_17:
    v25 = v24;
    goto LABEL_18;
  }

  v25 = CGColorSpaceCreateWithName(v15);
  if (!v25)
  {
    v25 = CGColorSpaceRetain(space);
    if (!v25)
    {
      v24 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F178]);
      goto LABEL_17;
    }
  }

LABEL_18:
  v26 = CGColorSpaceCopyPropertyList(v25);
  if (v26)
  {
    IOSurfaceSetValue(v22, *MEMORY[0x1E696CEE0], v26);
    CFRelease(v26);
  }

  CGColorSpaceRelease(v25);
  if ((v16 - 1) <= 2)
  {
    IOSurfaceSetYCbCrMatrix();
  }

  if (v17 > 0.0)
  {
    IIONumber::IIONumber(v37, v17);
    IOSurfaceSetValue(v22, @"IOSurfaceContentHeadroom", v37[2]);
    IIONumber::~IIONumber(v37);
  }

  v27 = *(a1 + 476);
  if (v27 > 0.0)
  {
    IIONumber::IIONumber(v37, v27);
    IIODictionary::setObjectForKey(&v42, v37, @"kCGTargetHeadroom");
    IIONumber::~IIONumber(v37);
  }

  v28 = *(a1 + 480);
  if (v28 > 0.0)
  {
    IIONumber::IIONumber(v37, v28);
    IIODictionary::setObjectForKey(&v42, v37, @"kCGFallbackHDRGain");
    IIONumber::~IIONumber(v37);
  }

  IIONumber::IIONumber(v37, *(a1 + 525));
  IIODictionary::setObjectForKey(&v42, v37, @"kCGDisableMetal");
  IIONumber::~IIONumber(v37);
  IIONumber::IIONumber(v37, *(a1 + 524));
  IIODictionary::setObjectForKey(&v42, v37, @"kCGGenerateFlexGTC");
  IIONumber::~IIONumber(v37);
  IIONumber::IIONumber(v37, *(a1 + 192));
  IIODictionary::setObjectForKey(&v42, v37, @"kCGComputeHDRStats");
  IIONumber::~IIONumber(v37);
  IIONumber::IIONumber(v37, *(a1 + 504));
  IIODictionary::setObjectForKey(&v42, v37, @"Orientation");
  IIONumber::~IIONumber(v37);
  if (!cf)
  {
    goto LABEL_36;
  }

  v29 = CFGetTypeID(cf);
  if (v29 == CFDictionaryGetTypeID())
  {
    FlexRangeMetadata = CGImageCreateFlexRangeMetadata(cf, &v40);
    if (FlexRangeMetadata)
    {
      _cg_jpeg_mem_term("createSurfaceWithGainMapApplied", 4287, "*** ERROR: CGImageCreateFlexRangeMetadata failed to create gainmapdata (err=%d)\n", FlexRangeMetadata);
    }

    v31 = v40;
    if (!v40)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  v31 = CFRetain(cf);
  v40 = v31;
  if (v31)
  {
LABEL_35:
    IIODictionary::setObjectForKey(&v42, v31, @"kCGImageAuxiliaryDataInfoMetadata");
    CFRelease(v40);
  }

LABEL_36:
  ObjectForKey = IIODictionary::getObjectForKey(*(a1 + 56), @"{MakerApple}");
  IIODictionary::setObjectForKey(&v42, ObjectForKey, @"{MakerApple}");
  IIODictionary::setObjectForKey(&v42, space, @"kCGFlexRangeAlternateColorSpace");
  if ((gIIODebugFlags & 0x300000) != 0)
  {
    ImageIOLog("☀️  'IIOCallApplyHDRGainmap'\n");
  }

  v33 = IIOCallApplyHDRGainmap(a5, value, v22, v43);
  if (!v33)
  {
    goto LABEL_42;
  }

  _cg_jpeg_mem_term("createSurfaceWithGainMapApplied", 4309, "*** ERROR: IIOCallApplyHDRGainmap retuned %d\n", v33);
  if (!v22)
  {
    goto LABEL_42;
  }

  CFRelease(v22);
LABEL_41:
  v22 = 0;
LABEL_42:
  CFRelease(v12);
LABEL_43:
  v34 = gIIODebugFlags;
  if ((gIIODebugFlags & 0x300000) != 0)
  {
    v35 = CFAbsoluteTimeGetCurrent();
    ImageIOLog("☀️  %s [%g ms]\n", "createSurfaceWithGainMapApplied", (v35 - Current) * 1000.0);
    v34 = gIIODebugFlags;
  }

  if ((v34 & 0x2000000) != 0)
  {
    LogSurfaceFormat(v22, "outputSurface", "createSurfaceWithGainMapApplied", 4318);
  }

  IIODictionary::~IIODictionary(&v42);
  return v22;
}

void sub_1860887A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  IIONumber::~IIONumber(va);
  IIODictionary::~IIODictionary(va1);
  _Unwind_Resume(a1);
}

uint64_t HEIFReadPlugin::createPixelBufferWithToneMapApplied(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const __CFString *a7, int a8)
{
  Current = CFAbsoluteTimeGetCurrent();
  v22 = 0;
  v23 = 0;
  v24 = 0;
  IIODictionary::IIODictionary(&v22);
  v13 = MEMORY[0x1E695E4D0];
  if (!a8)
  {
    v13 = MEMORY[0x1E695E4C0];
  }

  IIODictionary::setObjectForKey(&v22, *v13, @"kCGDisableMetal");
  if ((gIIODebugFlags & 0x300000) != 0)
  {
    ImageIOLog("☀️  %s\n", "createPixelBufferWithToneMapApplied");
  }

  Width = gFunc_CVPixelBufferGetWidth(a5);
  Height = gFunc_CVPixelBufferGetHeight(a5);
  memset(v21, 0, sizeof(v21));
  IIODictionary::IIODictionary(v21);
  v16 = IIOCreatePixelBuffer(Width, Height, a6, v21);
  v17 = CGColorSpaceCreateWithName(a7);
  IIOPixelBufferSetColorSpace(v16, v17);
  CGColorSpaceRelease(v17);
  if ((gIIODebugFlags & 0x300000) != 0)
  {
    ImageIOLog("☀️  'IIOCallConvertHDRData'\n");
  }

  v18 = IIOConvertHDRData(a5, v16, v23);
  if (v18)
  {
    _cg_jpeg_mem_term("createPixelBufferWithToneMapApplied", 4352, "*** ERROR: IIOCallConvertHDRData retuned %d\n", v18);
    if (v16)
    {
      gFunc_CVPixelBufferRelease(v16);
      v16 = 0;
    }
  }

  if ((gIIODebugFlags & 0x300000) != 0)
  {
    v19 = CFAbsoluteTimeGetCurrent();
    ImageIOLog("☀️  %s [%g ms]\n", "createPixelBufferWithToneMapApplied", (v19 - Current) * 1000.0);
  }

  IIODictionary::~IIODictionary(v21);
  IIODictionary::~IIODictionary(&v22);
  return v16;
}

void sub_186088A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  IIODictionary::~IIODictionary(va);
  IIODictionary::~IIODictionary(va1);
  _Unwind_Resume(a1);
}

__IOSurface *HEIFReadPlugin::createSurfaceWithToneMapApplied(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __IOSurface *a5, int a6, const __CFString *a7, int a8)
{
  Current = CFAbsoluteTimeGetCurrent();
  v26 = 0;
  v27 = 0;
  v28 = 0;
  IIODictionary::IIODictionary(&v26);
  v13 = MEMORY[0x1E695E4D0];
  if (!a8)
  {
    v13 = MEMORY[0x1E695E4C0];
  }

  IIODictionary::setObjectForKey(&v26, *v13, @"kCGDisableMetal");
  if ((gIIODebugFlags & 0x300000) != 0)
  {
    ImageIOLog("☀️  %s\n", "createSurfaceWithToneMapApplied");
  }

  Width = IOSurfaceGetWidth(a5);
  Height = IOSurfaceGetHeight(a5);
  IOSurfaceWithFormat = IIO_CreateIOSurfaceWithFormat(Width, Height, 0, a6, 0, v16, v17, v18);
  v20 = IOSurfaceWithFormat;
  if ((gIIODebugFlags & 0x2000000) != 0)
  {
    LogSurfaceFormat(IOSurfaceWithFormat, "outputSurface", "createSurfaceWithToneMapApplied", 4383);
  }

  v21 = CGColorSpaceCreateWithName(a7);
  v22 = CGColorSpaceCopyPropertyList(v21);
  if (v22)
  {
    IOSurfaceSetValue(v20, *MEMORY[0x1E696CEE0], v22);
    CFRelease(v22);
  }

  CGColorSpaceRelease(v21);
  if ((gIIODebugFlags & 0x300000) != 0)
  {
    ImageIOLog("☀️  'IIOCallConvertHDRData'\n");
  }

  v23 = IIOCallConvertHDRData(a5, v20, v27);
  if (v23)
  {
    _cg_jpeg_mem_term("createSurfaceWithToneMapApplied", 4397, "*** ERROR: IIOCallConvertHDRData retuned %d\n", v23);
    if (v20)
    {
      CFRelease(v20);
      v20 = 0;
    }
  }

  if ((gIIODebugFlags & 0x300000) != 0)
  {
    v24 = CFAbsoluteTimeGetCurrent();
    ImageIOLog("☀️  %s [%g ms]\n", "createSurfaceWithToneMapApplied", (v24 - Current) * 1000.0);
  }

  IIODictionary::~IIODictionary(&v26);
  return v20;
}

void sub_186088C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

uint64_t HEIFReadPlugin::decodeImageImp(IIOReadPlugin *this, IIODecodeParameter *a2, int a3, __IOSurface **a4, uint64_t a5, uint64_t *a6)
{
  *(this + 56) = *(a2 + 9);
  *(this + 371) = 0;
  *(this + 440) = 1;
  *(this + 26) = 1;
  if ((gIIODebugFlags & 0x20000) != 0)
  {
    v11 = *(this + 55);
    v12 = v11 >> 24;
    v13 = MEMORY[0x1E69E9830];
    if ((v11 >> 24) <= 0x7F)
    {
      v14 = *(MEMORY[0x1E69E9830] + 4 * v12 + 60) & 0x40000;
    }

    else
    {
      v14 = __maskrune(v12, 0x40000uLL);
      v11 = *(this + 55);
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
      v11 = *(this + 55);
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
      v11 = *(this + 55);
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
        goto LABEL_22;
      }
    }

    else if (__maskrune(v11, 0x40000uLL))
    {
LABEL_22:
      v22 = *(this + 220);
LABEL_25:
      ImageIOLog("♦️  '%c%c%c%c' [%s] %s\n", v15, v18, v21, v22, iioTypeStr[a3], "virtual OSStatus HEIFReadPlugin::decodeImageImp(IIODecodeParameter *, IIOImageType, IOSurfaceRef *, CVPixelBufferRef *, CGImageBlockSetRef *)");
      goto LABEL_26;
    }

    v22 = 46;
    goto LABEL_25;
  }

LABEL_26:
  IIOReadPlugin::debugDecodeImage(this, a2);
  v23 = IIOImageReadSession::globalInfoForType(*(this + 3), 1212500294);
  if (!v23)
  {
    HEIFReadPlugin::decodeImageImp();
    return 4294967246;
  }

  *(this + 133) = GlobalHEIFInfo::resolvedIndexForIndex(v23, *(this + 56));
  if (a3 == 3)
  {
    v25 = *(a2 + 1);
    v26 = *(a2 + 2);
    v27 = *(a2 + 3);
    v28 = *(a2 + 4);
    v29 = *(a2 + 5);
    v30 = *(a2 + 6);
    v31 = *(a2 + 7);
    v32 = *(a2 + 8);
    XmpData = _APP1XMP::getXmpData(a2);
    v34 = (*(*this + 208))(this, v25, v26, XmpData, v27, v28, v29, v30, v31, v32);
    if (a6)
    {
      v24 = 0;
      *a6 = v34;
      return v24;
    }

    return 4294967246;
  }

  if (a3 != 1 || !a4)
  {
    return 4294967246;
  }

  if (*a4)
  {
    v24 = HEIFReadPlugin::decodeIntoIOSurface(this, a2, *a4);
    if ((gIIODebugFlags & 0x2000000) != 0)
    {
      LogSurfaceFormat(*a4, "*ioSurface", "decodeImageImp", 3326);
    }

    if (v24)
    {
      _cg_jpeg_mem_term("decodeImageImp", 3328, "*** decodeIntoIOSurface - err = %d\n", v24);
    }
  }

  else
  {
    v35 = *(a2 + 2);
    v36 = _APP1XMP::getXmpData(a2);
    v24 = (*(*this + 224))(this, v35, v36, a4, 0);
    if ((gIIODebugFlags & 0x2000000) != 0)
    {
      LogSurfaceFormat(*a4, "*ioSurface", "decodeImageImp", 3335);
    }
  }

  return v24;
}

uint64_t HEIFReadPlugin::decodeIntoIOSurface(HEIFReadPlugin *this, IIODecodeParameter *a2, __IOSurface *a3)
{
  memset(v59, 0, sizeof(v59));
  XmpData = _APP1XMP::getXmpData(a2);
  IIODictionary::IIODictionary(v59, XmpData);
  v7 = *(a2 + 2);
  v58 = 0;
  v8 = *(this + 3);
  if (!v8)
  {
LABEL_6:
    v9 = 4294967246;
    goto LABEL_7;
  }

  if ((*(this + 520) & 1) != 0 || *(this + 521) == 1)
  {
    if ((gIIODebugFlags & 0x300000) != 0)
    {
      ImageIOLog("☀️  ***ERROR: cannot applyGainMap / applyToneMap into a caller-provided IOSurface\n");
    }

    goto LABEL_6;
  }

  v11 = IIOImageReadSession::mapData(v8);
  v57 = 0;
  if (!gFunc_CMPhotoDecompressionSessionCreate)
  {
    _cg_jpeg_mem_term("decodeIntoIOSurface", 3380, "*** CMPhotoDecompressionSessionCreate symbol not found\n");
  }

  v12 = IIOCreateCMPhotoDecompressionSession(&v57);
  v9 = v12;
  if (v12)
  {
    v13 = IIOCMErrorString(v12);
    _cg_jpeg_mem_term("decodeIntoIOSurface", 3387, "*** CMPhotoDecompressionSessionCreate  err = %s [%d]\n", v13, v9);
    goto LABEL_12;
  }

  cf = 0;
  v56 = 0;
  v54 = 0;
  v53 = 0;
  Size = IIOImageReadSession::getSize(*(this + 3));
  v16 = IIOImageReadSession::retainBytePointer(*(this + 3), &v53, 1);
  v17 = v16;
  if (v16)
  {
    v18 = *(this + 61);
    if (v18)
    {
      if (*(this + 62))
      {
        Size = *(this + 62);
      }

      else
      {
        v18 = 0;
      }

      v17 = v16 + v18;
    }

    v19 = *MEMORY[0x1E695E480];
    v20 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v17, Size, *MEMORY[0x1E695E498]);
    if (v20)
    {
      v22 = gFunc_CMPhotoDecompressionSessionCreateContainer(v57, 0, v20, &v54, &v56);
      v9 = v22;
      if (!v22 && v56)
      {
        v50 = 0;
        v51 = 0;
        v52 = 0;
        IIODictionary::IIODictionary(&v50);
        v23 = gFunc_CVPixelBufferCreateWithIOSurface(v19, a3, 0, &v58);
        v24 = v23;
        if (v23)
        {
          v25 = IIOCMErrorString(v23);
          _cg_jpeg_mem_term("decodeIntoIOSurface", 3431, "*** CVPixelBufferCreateWithIOSurface  err = %s [%d]\n", v25, v24);
        }

        PixelFormat = IOSurfaceGetPixelFormat(a3);
        v27 = IIOImageReadSession::globalInfoForType(*(this + 3), 1212500294);
        GlobalHEIFInfo::getHEIFMainImageAtIndex(v27, *(this + 133));
        if (GlobalHEIFInfo::hasHEIFSequence(v27))
        {
          v28 = GlobalHEIFInfo::useHEIFSequence(v27);
        }

        else
        {
          v28 = 0;
        }

        HEIFReadPlugin::updateHardwareDecodeOptions(this, &v50, v59);
        IIONumber::IIONumber(v49, PixelFormat);
        IIODictionary::setObjectForKey(&v50, v49, *gIIO_kCMPhotoDecompressionOption_OutputPixelFormat);
        IIONumber::~IIONumber(v49);
        IIODictionary::setObjectForKey(&v50, v58, *gIIO_kCMPhotoDecompressionOption_UseProvidedPixelBuffer);
        HEIFReadPlugin::updateCreateImageOptions(this, &v50, *(this + 6));
        if (v28)
        {
          v30 = gFunc_CMPhotoDecompressionContainerCreateSequenceContainer(v56, 0, 0, &cf);
          v31 = v30;
          if (v30)
          {
            v32 = IIOCMErrorString(v30);
            _cg_jpeg_mem_term("decodeIntoIOSurface", 3450, "*** CMPhotoDecompressionSessionCreateContainer[sequence] err = %s [%d]\n", v32, v31);
          }

          if (*(this + 232) >= 2u)
          {
            p_cf = &cf;
            if (*(this + 526))
            {
              goto LABEL_44;
            }

LABEL_41:
            ThumbnailImageForIndex = gFunc_CMPhotoDecompressionContainerCreateThumbnailImageForIndex(*p_cf, *(this + 133), 0, v51, 2, 0);
LABEL_45:
            v9 = ThumbnailImageForIndex;
            if (ThumbnailImageForIndex)
            {
              if (ThumbnailImageForIndex == -15470 && v7)
              {
                CGImageProviderSetProperty();
              }

              v35 = IIOCMErrorString(v9);
              _cg_jpeg_mem_term("decodeIntoIOSurface", 3491, "*** CMPhotoDecompressionContainerCreateImageForIndex  err = %s [%d]\n", v35, v9);
              v36 = PixelFormat >> 24;
              if ((PixelFormat >> 24) <= 0x7F)
              {
                v37 = *(MEMORY[0x1E69E9830] + 4 * v36 + 60) & 0x40000;
              }

              else
              {
                v37 = __maskrune(PixelFormat >> 24, 0x40000uLL);
              }

              if (v37)
              {
                v38 = v36;
              }

              else
              {
                v38 = 46;
              }

              v39 = PixelFormat << 8 >> 24;
              if (v39 <= 0x7F)
              {
                v40 = *(MEMORY[0x1E69E9830] + 4 * v39 + 60) & 0x40000;
              }

              else
              {
                v40 = __maskrune(PixelFormat << 8 >> 24, 0x40000uLL);
              }

              if (v40)
              {
                v41 = v39;
              }

              else
              {
                v41 = 46;
              }

              v42 = PixelFormat >> 8;
              if (v42 <= 0x7F)
              {
                v43 = *(MEMORY[0x1E69E9830] + 4 * v42 + 60) & 0x40000;
              }

              else
              {
                v43 = __maskrune(PixelFormat >> 8, 0x40000uLL);
              }

              PixelFormat = PixelFormat;
              if (PixelFormat <= 0x7F)
              {
                v44 = *(MEMORY[0x1E69E9830] + 4 * PixelFormat + 60) & 0x40000;
              }

              else
              {
                v44 = __maskrune(PixelFormat, 0x40000uLL);
              }

              if (v43)
              {
                v45 = v42;
              }

              else
              {
                v45 = 46;
              }

              if (v44)
              {
                v46 = PixelFormat;
              }

              else
              {
                v46 = 46;
              }

              _cg_jpeg_mem_term("decodeIntoIOSurface", 3492, "    outputPixelFormat: %c%c%c%c\n", v38, v41, v45, v46);
              ImageIODebugOptionsDictionary(v51);
            }

            else
            {
              if (gFunc_CMPhotoDecompressionSessionDetachSurface)
              {
                v9 = gFunc_CMPhotoDecompressionSessionDetachSurface(v57, a3);
              }

              else
              {
                v9 = 0;
              }

              if ((gIIODebugFlags & 0x2000000) != 0)
              {
                LogSurfaceFormat(a3, "surface", "decodeIntoIOSurface", 3502);
              }

              if (v9)
              {
                v47 = IIOCMErrorString(v9);
                _cg_jpeg_mem_term("decodeIntoIOSurface", 3505, "*** CMPhotoDecompressionSessionDetachSurface  err = %s [%d]\n", v47, v9);
              }
            }

            if (cf)
            {
              CFRelease(cf);
            }

            CFRelease(v56);
            IIODictionary::~IIODictionary(&v50);
            goto LABEL_84;
          }

          p_cf = &cf;
        }

        else if (*(this + 232) == 2)
        {
          p_cf = &v56;
          if ((*(this + 526) & 1) == 0)
          {
            goto LABEL_41;
          }
        }

        else
        {
          p_cf = &v56;
        }

LABEL_44:
        ThumbnailImageForIndex = gFunc_CMPhotoDecompressionContainerCreateImageForIndex(*p_cf, *(this + 133), v51, 2, 0);
        goto LABEL_45;
      }

      v29 = IIOCMErrorString(v22);
      v21 = _cg_jpeg_mem_term("decodeIntoIOSurface", 3419, "*** CMPhotoDecompressionSessionCreateContainer  err = %s [%d]\n", v29, v9);
    }

    else
    {
      v9 = 0;
    }

LABEL_84:
    gFunc_CMPhotoDecompressionSessionFlushCachedBuffers(v57, 0, 0, v21);
    CFRelease(v57);
    if (v20)
    {
      CFRelease(v20);
    }

    if (v53)
    {
      v48 = *(this + 3);
      if (v48)
      {
        IIOImageReadSession::releaseBytePointer(v48, v53);
      }
    }

    goto LABEL_12;
  }

  LogError("decodeIntoIOSurface", 3402, "*** ERROR: retainBytePointer failed\n");
  v9 = 0;
LABEL_12:
  if (v11)
  {
    v14 = *(this + 3);
    if (v14)
    {
      IIOImageReadSession::unmapData(v14);
    }
  }

  if (v58)
  {
    gFunc_CVPixelBufferRelease(v58);
  }

LABEL_7:
  IIODictionary::~IIODictionary(v59);
  return v9;
}

void sub_186089654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  IIONumber::~IIONumber(va);
  IIODictionary::~IIODictionary(va1);
  IIODictionary::~IIODictionary((v6 - 104));
  _Unwind_Resume(a1);
}

uint64_t HEIFReadPlugin::copyPixelBufferImp(uint64_t a1, uint64_t a2, __CFDictionary *a3, CFTypeRef *a4, uint64_t *a5)
{
  v69 = 0;
  v70[0] = 0;
  v67 = 0;
  v68 = 0;
  IIODictionary::IIODictionary(&v67, a3);
  IIO_LoadHEIFSymbols();
  v9 = *(a1 + 24);
  if (!v9)
  {
    v12 = 4294967246;
    goto LABEL_12;
  }

  v10 = IIOImageReadSession::mapData(v9);
  v66 = 0;
  if (!gFunc_CMPhotoDecompressionSessionCreate)
  {
    _cg_jpeg_mem_term("copyPixelBufferImp", 3558, "*** CMPhotoDecompressionSessionCreate symbol not found\n");
  }

  v11 = IIOCreateCMPhotoDecompressionSession(&v66);
  v12 = v11;
  if (v11)
  {
    v13 = IIOCMErrorString(v11);
    _cg_jpeg_mem_term("copyPixelBufferImp", 3565, "*** CMPhotoDecompressionSessionCreate  err = %s [%d]\n", v13, v12);
    goto LABEL_6;
  }

  cf = 0;
  v65 = 0;
  v63 = 0;
  v62 = 0;
  Size = IIOImageReadSession::getSize(*(a1 + 24));
  v17 = IIOImageReadSession::retainBytePointer(*(a1 + 24), &v62, 1);
  v18 = v17;
  if (!v17)
  {
    LogError("copyPixelBufferImp", 3580, "*** ERROR: retainBytePointer failed\n");
    v12 = 4294967277;
    goto LABEL_6;
  }

  v19 = *(a1 + 488);
  if (v19)
  {
    if (*(a1 + 496))
    {
      Size = *(a1 + 496);
    }

    else
    {
      v19 = 0;
    }

    v18 = v17 + v19;
  }

  v20 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v18, Size, *MEMORY[0x1E695E498]);
  if (!v20)
  {
    v12 = 0;
LABEL_82:
    CFRelease(v66);
    if (v20)
    {
      CFRelease(v20);
    }

    if (v62)
    {
      v49 = *(a1 + 24);
      if (v49)
      {
        IIOImageReadSession::releaseBytePointer(v49, v62);
      }
    }

    goto LABEL_6;
  }

  v21 = gFunc_CMPhotoDecompressionSessionCreateContainer(v66, 0, v20, &v63, &v65);
  v22 = v21;
  if (v21 || !v65)
  {
    v24 = IIOCMErrorString(v21);
    _cg_jpeg_mem_term("copyPixelBufferImp", 3596, "*** CMPhotoDecompressionSessionCreateContainer  err = %s [%d]\n", v24, v22);
    if (v22)
    {
      v12 = v22;
    }

    else
    {
      v12 = 4294967246;
    }

    goto LABEL_82;
  }

  v59 = 0;
  v60 = 0;
  v61 = 0;
  IIODictionary::IIODictionary(&v59);
  v54 = IIOImageReadSession::globalInfoForType(*(a1 + 24), 1212500294);
  if (GlobalHEIFInfo::hasHEIFSequence(v54))
  {
    v23 = GlobalHEIFInfo::useHEIFSequence(v54);
  }

  else
  {
    v23 = 0;
  }

  HEIFMainImageAtIndex = GlobalHEIFInfo::getHEIFMainImageAtIndex(v54, *(a1 + 532));
  if (HEIFMainImageAtIndex)
  {
    v58 = 0;
    if ((*(a1 + 528) & 1) != 0 || (gFunc_CMPhotoDecompressionContainerGetEncoderNativePixelFormatForIndexWithOptions(v65, *(a1 + 532), 0, &v58), (DecodePixelFormatForBitDepth = v58) == 0))
    {
      v27 = HEIFMainImage::bitDepth(HEIFMainImageAtIndex);
      DecodePixelFormatForBitDepth = HEIFReadPlugin::getDecodePixelFormatForBitDepth(a1, v27);
    }

    HEIFReadPlugin::updateHardwareDecodeOptions(a1, &v59, *(a1 + 48));
    IIONumber::IIONumber(v57, DecodePixelFormatForBitDepth);
    IIODictionary::setObjectForKey(&v59, v57, *gIIO_kCMPhotoDecompressionOption_OutputPixelFormat);
    IIONumber::~IIONumber(v57);
    HEIFReadPlugin::updateCreateImageOptions(a1, &v59, *(a1 + 48));
    if (IIODictionary::containsKey(&v67, @"kCGImageSurfaceFormatRequest") && (*(a1 + 520) & 1) == 0 && (*(a1 + 521) & 1) == 0)
    {
      DecodePixelFormatForBitDepth = IIODictionary::getUint32ForKey(&v67, @"kCGImageSurfaceFormatRequest");
      IIONumber::IIONumber(v57, DecodePixelFormatForBitDepth);
      IIODictionary::setObjectForKey(&v59, v57, *gIIO_kCMPhotoDecompressionOption_OutputPixelFormat);
      IIONumber::~IIONumber(v57);
    }

    if (v23)
    {
      v28 = gFunc_CMPhotoDecompressionContainerCreateSequenceContainer(v65, 0, 0, &cf);
      v12 = v28;
      if (v28)
      {
        v29 = IIOCMErrorString(v28);
        *&v34 = _cg_jpeg_mem_term("copyPixelBufferImp", 3637, "*** CMPhotoDecompressionSessionCreateContainer[sequence] err = %s [%d]\n", v29, v12).n128_u64[0];
        goto LABEL_45;
      }

      if (*(a1 + 232) < 2u)
      {
        p_cf = &cf;
      }

      else
      {
        p_cf = &cf;
        if ((*(a1 + 526) & 1) == 0)
        {
          goto LABEL_96;
        }
      }
    }

    else if (*(a1 + 232) == 2 && (*(a1 + 526) & 1) == 0)
    {
      p_cf = &v65;
      if (!*(a1 + 488))
      {
LABEL_96:
        ThumbnailImageForIndex = gFunc_CMPhotoDecompressionContainerCreateThumbnailImageForIndex(*p_cf, *(a1 + 532), 0, v60, 2, v70);
        goto LABEL_44;
      }
    }

    else
    {
      p_cf = &v65;
    }

    ThumbnailImageForIndex = gFunc_CMPhotoDecompressionContainerCreateImageForIndex(*p_cf, *(a1 + 532), v60, 2, v70);
LABEL_44:
    v12 = ThumbnailImageForIndex;
LABEL_45:
    if (v12)
    {
      if (v12 == -15470 && a2)
      {
        CGImageProviderSetProperty();
      }

      v36 = IIOCMErrorString(v12);
      _cg_jpeg_mem_term("copyPixelBufferImp", 3682, "*** CMPhotoDecompressionContainerCreateImageForIndex  err = %s [%d]\n", v36, v12);
      v37 = DecodePixelFormatForBitDepth >> 24;
      if ((DecodePixelFormatForBitDepth >> 24) <= 0x7F)
      {
        v38 = *(MEMORY[0x1E69E9830] + 4 * v37 + 60) & 0x40000;
      }

      else
      {
        v38 = __maskrune(DecodePixelFormatForBitDepth >> 24, 0x40000uLL);
      }

      if (v38)
      {
        v40 = v37;
      }

      else
      {
        v40 = 46;
      }

      v55 = v40;
      v41 = DecodePixelFormatForBitDepth << 8 >> 24;
      if (v41 <= 0x7F)
      {
        v42 = *(MEMORY[0x1E69E9830] + 4 * v41 + 60) & 0x40000;
      }

      else
      {
        v42 = __maskrune(DecodePixelFormatForBitDepth << 8 >> 24, 0x40000uLL);
      }

      if (v42)
      {
        v43 = v41;
      }

      else
      {
        v43 = 46;
      }

      v44 = DecodePixelFormatForBitDepth >> 8;
      if (v44 <= 0x7F)
      {
        v45 = *(MEMORY[0x1E69E9830] + 4 * v44 + 60) & 0x40000;
      }

      else
      {
        v45 = __maskrune(DecodePixelFormatForBitDepth >> 8, 0x40000uLL);
      }

      if (DecodePixelFormatForBitDepth <= 0x7F)
      {
        v46 = *(MEMORY[0x1E69E9830] + 4 * DecodePixelFormatForBitDepth + 60) & 0x40000;
      }

      else
      {
        v46 = __maskrune(DecodePixelFormatForBitDepth, 0x40000uLL);
      }

      if (v45)
      {
        v47 = v44;
      }

      else
      {
        v47 = 46;
      }

      if (v46)
      {
        v48 = DecodePixelFormatForBitDepth;
      }

      else
      {
        v48 = 46;
      }

      _cg_jpeg_mem_term("copyPixelBufferImp", 3683, "    outputPixelFormat: %c%c%c%c\n", v55, v43, v47, v48);
      ImageIODebugOptionsDictionary(v60);
      goto LABEL_79;
    }

    if (*(a1 + 520) == 1)
    {
      if ((gIIODebugFlags & 0x300000) != 0)
      {
        ImageIOLog("☀️  _requestedApplyGainMap --> createSurfaceWithGainMapApplied\n", v34);
      }

      PixelBufferWithGainMapApplied = HEIFReadPlugin::createPixelBufferWithGainMapApplied(a1, v65, v32, v54, v70[0]);
      if (PixelBufferWithGainMapApplied)
      {
LABEL_94:
        CFRelease(v70[0]);
        v70[0] = PixelBufferWithGainMapApplied;
      }
    }

    else if (*(a1 + 521) == 1)
    {
      if ((gIIODebugFlags & 0x300000) != 0)
      {
        ThumbnailImageForIndex = ImageIOLog("☀️  _requestedApplyToneMap --> createSurfaceWithToneMapApplied\n", v34);
      }

      PixelBufferWithGainMapApplied = HEIFReadPlugin::createPixelBufferWithToneMapApplied(ThumbnailImageForIndex, v31, v32, v33, v70[0], *(a1 + 464), *(a1 + 544), *(a1 + 525));
      if (PixelBufferWithGainMapApplied)
      {
        goto LABEL_94;
      }
    }

    else if ((*(a1 + 192) & 1) == 0 && (gIIODebugFlags & 0x300000) != 0)
    {
      ImageIOLog("☀️  no apply / no tone mapping / no compute stats [%p]\n", a1);
    }

    if (*(a1 + 192) == 1)
    {
      v50 = *(a1 + 352);
      v51 = gIIODebugFlags & 0x300000;
      if (v50 == 0.0)
      {
        if (v51)
        {
          ImageIOLog("☀️  _computeHDRStats --> IIOCallComputeHDRStats\n");
        }

        v56 = 0;
        IIONumber::IIONumber(v57, *(a1 + 525));
        IIODictionary::setObjectForKey(&v67, v57, @"kCGDisableMetal");
        IIONumber::~IIONumber(v57);
        v12 = CGImageComputeHDRImageStatistics(v70[0], 0, &v56, v68);
        if (!v12)
        {
          *(a1 + 360) = 1;
        }

        memset(v57, 0, sizeof(v57));
        IIODictionary::IIODictionary(v57, v56);
        *(a1 + 352) = IIODictionary::getFloatForKey(v57, @"kCGContentBrightness");
        FloatForKey = IIODictionary::getFloatForKey(v57, @"kCGContentHeadroom");
        *(a1 + 356) = FloatForKey;
        if ((gIIODebugFlags & 0x300000) != 0)
        {
          ImageIOLog("☀️  HDR Stats: headroom=%g brightness=%g  (%g)", FloatForKey, *(a1 + 352), *(a1 + 352) * 203.0);
        }

        IIODictionary::~IIODictionary(v57);
      }

      else
      {
        if (v51)
        {
          ImageIOLog("☀️  HDR Stats(cached): headroom=%g brightness=%g  (%g)", *(a1 + 356), v50, v50 * 203.0);
        }

        v12 = 0;
      }

      if (!CGImageProviderGetContentAverageLightLevelNits())
      {
        CGImageProviderSetContentAverageLightLevelNits();
      }
    }

    else
    {
      v12 = 0;
    }

    if (!a5)
    {
      goto LABEL_79;
    }

    if (*(a1 + 523) == 1)
    {
      v53 = HEIFReadPlugin::copyISOGainMapDictionary(a1, v65, v32, &v67);
    }

    else
    {
      if (*(a1 + 522) != 1)
      {
LABEL_79:
        if (cf)
        {
          CFRelease(cf);
        }

        CFRelease(v65);
        IIODictionary::~IIODictionary(&v59);
        goto LABEL_82;
      }

      v53 = HEIFReadPlugin::copyHDRGainMapDictionary(a1, v65, v54, &v67);
    }

    *a5 = v53;
    goto LABEL_79;
  }

  LogError("copyPixelBufferImp", 3608, "*** ERROR: failed to get mainImage [#%d]\n", *(a1 + 532));
  IIODictionary::~IIODictionary(&v59);
  v12 = 4294967246;
LABEL_6:
  if (v10)
  {
    v14 = *(a1 + 24);
    if (v14)
    {
      IIOImageReadSession::unmapData(v14);
    }
  }

  if (a4)
  {
    *a4 = v70[0];
  }

LABEL_12:
  IIODictionary::~IIODictionary(&v67);
  return v12;
}

void sub_186089FA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  IIODictionary::~IIODictionary(va);
  IIODictionary::~IIODictionary((v12 - 120));
  _Unwind_Resume(a1);
}

uint64_t HEIFReadPlugin::copyIOSurfaceImp(uint64_t a1, uint64_t a2, __CFDictionary *a3, __IOSurface **a4, uint64_t *a5)
{
  v72 = 0;
  v73[0] = 0;
  v70 = 0;
  v71 = 0;
  IIODictionary::IIODictionary(&v70, a3);
  IIO_LoadHEIFSymbols();
  v9 = *(a1 + 24);
  if (!v9)
  {
    updated = 4294967246;
    goto LABEL_12;
  }

  v10 = IIOImageReadSession::mapData(v9);
  v69 = 0;
  if (!gFunc_CMPhotoDecompressionSessionCreate)
  {
    _cg_jpeg_mem_term("copyIOSurfaceImp", 3806, "*** CMPhotoDecompressionSessionCreate symbol not found\n");
  }

  v11 = IIOCreateCMPhotoDecompressionSession(&v69);
  updated = v11;
  if (v11)
  {
    v13 = IIOCMErrorString(v11);
    _cg_jpeg_mem_term("copyIOSurfaceImp", 3813, "*** CMPhotoDecompressionSessionCreate  err = %s [%d]\n", v13, updated);
    goto LABEL_6;
  }

  v67 = 0;
  v68 = 0;
  v66 = 0;
  v65 = 0;
  Size = IIOImageReadSession::getSize(*(a1 + 24));
  v17 = IIOImageReadSession::retainBytePointer(*(a1 + 24), &v65, 1);
  v18 = v17;
  if (!v17)
  {
    LogError("copyIOSurfaceImp", 3828, "*** ERROR: retainBytePointer failed\n");
    updated = 4294967277;
    goto LABEL_6;
  }

  v19 = *(a1 + 488);
  if (v19)
  {
    if (*(a1 + 496))
    {
      Size = *(a1 + 496);
    }

    else
    {
      v19 = 0;
    }

    v18 = v17 + v19;
  }

  v58 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v18, Size, *MEMORY[0x1E695E498]);
  if (!v58)
  {
    updated = 0;
LABEL_127:
    CFRelease(v69);
    if (v58)
    {
      CFRelease(v58);
    }

    if (v65)
    {
      v57 = *(a1 + 24);
      if (v57)
      {
        IIOImageReadSession::releaseBytePointer(v57, v65);
      }
    }

    goto LABEL_6;
  }

  v20 = gFunc_CMPhotoDecompressionSessionCreateContainer(v69, 0, v58, &v66, &v68);
  v21 = v20;
  if (v20 || !v68)
  {
    v24 = IIOCMErrorString(v20);
    _cg_jpeg_mem_term("copyIOSurfaceImp", 3844, "*** CMPhotoDecompressionSessionCreateContainer  err = %s [%d]\n", v24, v21);
    if (v21)
    {
      updated = v21;
    }

    else
    {
      updated = 4294967246;
    }

    goto LABEL_127;
  }

  v62 = 0;
  v63 = 0;
  v64 = 0;
  IIODictionary::IIODictionary(&v62);
  v22 = IIOImageReadSession::globalInfoForType(*(a1 + 24), 1212500294);
  if (GlobalHEIFInfo::hasHEIFSequence(v22))
  {
    v23 = GlobalHEIFInfo::useHEIFSequence(v22);
  }

  else
  {
    v23 = 0;
  }

  HEIFMainImageAtIndex = GlobalHEIFInfo::getHEIFMainImageAtIndex(v22, *(a1 + 532));
  if (HEIFMainImageAtIndex)
  {
    v61 = 0;
    if ((*(a1 + 528) & 1) != 0 || (gFunc_CMPhotoDecompressionContainerGetEncoderNativePixelFormatForIndexWithOptions(v68, *(a1 + 532), 0, &v61), (DecodePixelFormatForBitDepth = v61) == 0))
    {
      v27 = HEIFMainImage::bitDepth(HEIFMainImageAtIndex);
      DecodePixelFormatForBitDepth = HEIFReadPlugin::getDecodePixelFormatForBitDepth(a1, v27);
    }

    HEIFReadPlugin::updateHardwareDecodeOptions(a1, &v62, *(a1 + 48));
    IIONumber::IIONumber(v60, DecodePixelFormatForBitDepth);
    IIODictionary::setObjectForKey(&v62, v60, *gIIO_kCMPhotoDecompressionOption_OutputPixelFormat);
    IIONumber::~IIONumber(v60);
    HEIFReadPlugin::updateCreateImageOptions(a1, &v62, *(a1 + 48));
    if (IIODictionary::containsKey(&v70, @"kCGImageSurfaceFormatRequest") && (*(a1 + 520) & 1) == 0 && (*(a1 + 521) & 1) == 0)
    {
      DecodePixelFormatForBitDepth = IIODictionary::getUint32ForKey(&v70, @"kCGImageSurfaceFormatRequest");
      IIONumber::IIONumber(v60, DecodePixelFormatForBitDepth);
      IIODictionary::setObjectForKey(&v62, v60, *gIIO_kCMPhotoDecompressionOption_OutputPixelFormat);
      IIONumber::~IIONumber(v60);
    }

    if (v23)
    {
      v28 = gFunc_CMPhotoDecompressionContainerCreateSequenceContainer(v68, 0, 0, &v67);
      updated = v28;
      if (v28)
      {
        v29 = IIOCMErrorString(v28);
        _cg_jpeg_mem_term("copyIOSurfaceImp", 3887, "*** CMPhotoDecompressionSessionCreateContainer[sequence] err = %s [%d]\n", v29, updated);
      }

      else
      {
        if (*(a1 + 232) < 2u || (*(a1 + 526) & 1) != 0)
        {
          ImageForIndex = gFunc_CMPhotoDecompressionContainerCreateImageForIndex(v67, *(a1 + 532), v63, 1, v73);
        }

        else
        {
          ImageForIndex = gFunc_CMPhotoDecompressionContainerCreateThumbnailImageForIndex(v67, *(a1 + 532), 0, v63, 1, v73);
        }

        updated = ImageForIndex;
        v30 = IIO_IOSurfaceLogAlphaInfo(v73[0], "HEIFSequence");
      }
    }

    else
    {
      if (*(a1 + 232) != 2 || (*(a1 + 526) & 1) != 0 || *(a1 + 488))
      {
        ThumbnailImageForIndex = gFunc_CMPhotoDecompressionContainerCreateImageForIndex(v68, *(a1 + 532), v63, 1, v73);
      }

      else
      {
        ThumbnailImageForIndex = gFunc_CMPhotoDecompressionContainerCreateThumbnailImageForIndex(v68, *(a1 + 532), 0, v63, 1, v73);
      }

      updated = ThumbnailImageForIndex;
      v30 = IIO_IOSurfaceLogAlphaInfo(v73[0], "HEIF decode");
    }

    if (updated)
    {
      if (updated == -15470 && a2)
      {
        CGImageProviderSetProperty();
      }

      v36 = IIOCMErrorString(updated);
      _cg_jpeg_mem_term("copyIOSurfaceImp", 3934, "*** CMPhotoDecompressionContainerCreateImageForIndex  err = %s [%d]\n", v36, updated);
      v37 = DecodePixelFormatForBitDepth >> 24;
      if ((DecodePixelFormatForBitDepth >> 24) <= 0x7F)
      {
        v38 = *(MEMORY[0x1E69E9830] + 4 * v37 + 60) & 0x40000;
      }

      else
      {
        v38 = __maskrune(DecodePixelFormatForBitDepth >> 24, 0x40000uLL);
      }

      if (v38)
      {
        v39 = v37;
      }

      else
      {
        v39 = 46;
      }

      v40 = DecodePixelFormatForBitDepth << 8 >> 24;
      if (v40 <= 0x7F)
      {
        v41 = *(MEMORY[0x1E69E9830] + 4 * v40 + 60) & 0x40000;
      }

      else
      {
        v41 = __maskrune(DecodePixelFormatForBitDepth << 8 >> 24, 0x40000uLL);
      }

      if (v41)
      {
        v42 = v40;
      }

      else
      {
        v42 = 46;
      }

      v43 = DecodePixelFormatForBitDepth >> 8;
      if (v43 <= 0x7F)
      {
        v44 = *(MEMORY[0x1E69E9830] + 4 * v43 + 60) & 0x40000;
      }

      else
      {
        v44 = __maskrune(DecodePixelFormatForBitDepth >> 8, 0x40000uLL);
      }

      if (DecodePixelFormatForBitDepth <= 0x7F)
      {
        v45 = *(MEMORY[0x1E69E9830] + 4 * DecodePixelFormatForBitDepth + 60) & 0x40000;
      }

      else
      {
        v45 = __maskrune(DecodePixelFormatForBitDepth, 0x40000uLL);
      }

      if (v44)
      {
        v46 = v43;
      }

      else
      {
        v46 = 46;
      }

      if (v45)
      {
        v47 = DecodePixelFormatForBitDepth;
      }

      else
      {
        v47 = 46;
      }

      _cg_jpeg_mem_term("copyIOSurfaceImp", 3935, "    outputPixelFormat: %c%c%c%c\n", v39, v42, v46, v47);
      ImageIODebugOptionsDictionary(v63);
      goto LABEL_124;
    }

    if (gFunc_CMPhotoDecompressionSessionDetachSurface)
    {
      v30 = gFunc_CMPhotoDecompressionSessionDetachSurface(v69, v73[0]);
      updated = v30;
    }

    else
    {
      updated = 0;
    }

    if (*(a1 + 520) == 1)
    {
      if ((gIIODebugFlags & 0x300000) != 0)
      {
        ImageIOLog("☀️  _requestedApplyGainMap --> createSurfaceWithGainMapApplied\n");
      }

      SurfaceWithGainMapApplied = HEIFReadPlugin::createSurfaceWithGainMapApplied(a1, v68, v32, v22, v73[0]);
      v49 = SurfaceWithGainMapApplied;
      if ((gIIODebugFlags & 0x2000000) != 0)
      {
        LogSurfaceFormat(SurfaceWithGainMapApplied, "outputSurface", "copyIOSurfaceImp", 3949);
      }

      if (v49)
      {
LABEL_96:
        CFRelease(v73[0]);
        v73[0] = v49;
      }
    }

    else if (*(a1 + 521) == 1)
    {
      if ((gIIODebugFlags & 0x300000) != 0)
      {
        v30 = ImageIOLog("☀️  _requestedApplyToneMap --> createSurfaceWithToneMapApplied\n");
      }

      SurfaceWithToneMapApplied = HEIFReadPlugin::createSurfaceWithToneMapApplied(v30, v31, v32, v33, v73[0], *(a1 + 464), *(a1 + 544), *(a1 + 525));
      v49 = SurfaceWithToneMapApplied;
      if ((gIIODebugFlags & 0x2000000) != 0)
      {
        LogSurfaceFormat(SurfaceWithToneMapApplied, "outputSurface", "copyIOSurfaceImp", 3960);
      }

      if (v49)
      {
        goto LABEL_96;
      }
    }

    else if ((*(a1 + 192) & 1) == 0 && (gIIODebugFlags & 0x300000) != 0)
    {
      ImageIOLog("☀️  no apply / no tone mapping / no compute stats [%p]\n", a1);
    }

    if (*(a1 + 192) != 1)
    {
      goto LABEL_114;
    }

    v51 = *(a1 + 352);
    v52 = gIIODebugFlags & 0x300000;
    if (v51 == 0.0)
    {
      if (v52)
      {
        ImageIOLog("☀️  _computeHDRStats --> IIOCallComputeHDRStats\n");
      }

      cf = 0;
      IIONumber::IIONumber(v60, *(a1 + 525));
      IIODictionary::setObjectForKey(&v70, v60, @"kCGDisableMetal");
      IIONumber::~IIONumber(v60);
      updated = IIOCallComputeHDRStats(v73[0], 0, 0, &cf, v71);
      if (!updated)
      {
        *(a1 + 360) = 1;
      }

      memset(v60, 0, sizeof(v60));
      IIODictionary::IIODictionary(v60, cf);
      *(a1 + 352) = IIODictionary::getFloatForKey(v60, @"kCGContentBrightness");
      FloatForKey = IIODictionary::getFloatForKey(v60, @"kCGContentHeadroom");
      *(a1 + 356) = FloatForKey;
      if ((gIIODebugFlags & 0x300000) != 0)
      {
        ImageIOLog("☀️  HDR Stats: headroom=%g brightness=%g  (%g)", FloatForKey, *(a1 + 352), *(a1 + 352) * 203.0);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      IIODictionary::~IIODictionary(v60);
    }

    else if (v52)
    {
      ImageIOLog("☀️  HDR Stats(cached): headroom=%g brightness=%g  (%g)", *(a1 + 356), v51, v51 * 203.0);
    }

    if (!CGImageProviderGetContentAverageLightLevelNits())
    {
      CGImageProviderSetContentAverageLightLevelNits();
      v54 = v22;
    }

    else
    {
LABEL_114:
      v54 = v22;
    }

    if (!a5)
    {
      goto LABEL_121;
    }

    if (*(a1 + 523) == 1)
    {
      v55 = HEIFReadPlugin::copyISOGainMapDictionary(a1, v68, v54, &v70);
    }

    else
    {
      if (*(a1 + 522) != 1)
      {
        goto LABEL_121;
      }

      v55 = HEIFReadPlugin::copyHDRGainMapDictionary(a1, v68, v54, &v70);
    }

    *a5 = v55;
LABEL_121:
    if (updated)
    {
      v56 = IIOCMErrorString(updated);
      _cg_jpeg_mem_term("copyIOSurfaceImp", 4018, "*** CMPhotoDecompressionSessionDetachSurface  err = %s [%d]\n", v56, updated);
    }

    else
    {
      updated = IIO_UpdateIOSurfaceOwnershipIdentity();
    }

LABEL_124:
    if (v67)
    {
      CFRelease(v67);
    }

    CFRelease(v68);
    IIODictionary::~IIODictionary(&v62);
    goto LABEL_127;
  }

  LogError("copyIOSurfaceImp", 3858, "*** ERROR: failed to get mainImage [#%d]\n", *(a1 + 532));
  IIODictionary::~IIODictionary(&v62);
  updated = 4294967246;
LABEL_6:
  if (v10)
  {
    v14 = *(a1 + 24);
    if (v14)
    {
      IIOImageReadSession::unmapData(v14);
    }
  }

  if (a4)
  {
    *a4 = v73[0];
  }

LABEL_12:
  IIODictionary::~IIODictionary(&v70);
  return updated;
}

void sub_18608AA40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  IIODictionary::~IIODictionary(va);
  IIODictionary::~IIODictionary((v12 - 120));
  _Unwind_Resume(a1);
}

uint64_t AppleJPEGReadPlugin::loadDataFromXPCObject(AppleJPEGReadPlugin *this, void *a2)
{
  DataFromXPCObject = JPEGReadPlugin::loadDataFromXPCObject(this, a2);
  if (!DataFromXPCObject)
  {
    length = 0;
    data = xpc_dictionary_get_data(a2, "iio_xpc_plugin_data_applejpeg", &length);
    if (length == 184)
    {
      DataFromXPCObject = 0;
      v6 = *data;
      v7 = data[1];
      v8 = data[3];
      *(this + 35) = data[2];
      *(this + 36) = v8;
      *(this + 33) = v6;
      *(this + 34) = v7;
      v9 = data[4];
      v10 = data[5];
      v11 = data[7];
      *(this + 39) = data[6];
      *(this + 40) = v11;
      *(this + 37) = v9;
      *(this + 38) = v10;
      v12 = data[8];
      v13 = data[9];
      v14 = data[10];
      *(this + 88) = *(data + 22);
      *(this + 42) = v13;
      *(this + 43) = v14;
      *(this + 41) = v12;
    }

    else
    {
      DataFromXPCObject = 4294967246;
    }

    *(this + 86) = 0;
    *(this + 42) = 0u;
    *(this + 33) = 0u;
    *(this + 34) = 0u;
    *(this + 35) = 0u;
    *(this + 36) = 0u;
    *(this + 37) = 0u;
    *(this + 38) = 0u;
    *(this + 39) = 0u;
    *(this + 40) = 0u;
    *(this + 82) = 0;
    IIOImageReadSession::seek(*(this + 3), *(this + 60), 0);
  }

  return DataFromXPCObject;
}

uint64_t AppleJPEGReadPlugin::saveDataToXPCObject(AppleJPEGReadPlugin *this, void *a2)
{
  v4 = JPEGReadPlugin::saveDataToXPCObject(this, a2);
  if (!v4)
  {
    iio_xpc_dictionary_add_databuffer(a2, "iio_xpc_plugin_data_applejpeg", this + 528, 0xB8uLL);
  }

  return v4;
}

const char *AppleJPEGReadPlugin::appleJPEGErrorString(AppleJPEGReadPlugin *this, int a2)
{
  if ((a2 + 2) > 0xE)
  {
    return "";
  }

  else
  {
    return off_1E6F0B638[a2 + 2];
  }
}

__n128 AppleJPEGReadPlugin::create_or_restoreIndexTable(uint64_t a1)
{
  if (*(a1 + 656) && *(a1 + 664))
  {
    v1 = applejpeg_decode_set_ra_table();
    if (v1)
    {
      AppleJPEGReadPlugin::appleJPEGErrorString(v1, v1);
      return _cg_jpeg_mem_term("create_or_restoreIndexTable", 251, "    applejpeg_decode_set_ra_table err = %d '%s'\n");
    }
  }

  else
  {
    v3 = applejpeg_decode_set_option_buildindex();
    if (v3)
    {
      AppleJPEGReadPlugin::appleJPEGErrorString(v3, v3);
      return _cg_jpeg_mem_term("create_or_restoreIndexTable", 258, "    applejpeg_decode_set_option_buildindex err = %d '%s'\n");
    }
  }

  return result;
}

__n128 AppleJPEGReadPlugin::save_index_table(AppleJPEGReadPlugin *this)
{
  if (!*(this + 82))
  {
    ra_table_sz = applejpeg_decode_get_ra_table_sz();
    *(this + 83) = ra_table_sz;
    if (ra_table_sz)
    {
      *(this + 82) = malloc_type_malloc(ra_table_sz, 0x100004077774924uLL);
      v4 = applejpeg_decode_dump_ra_table();
      if (v4)
      {
        v5 = v4;
        v6 = AppleJPEGReadPlugin::appleJPEGErrorString(v4, v4);
        return _cg_jpeg_mem_term("save_index_table", 276, "err = %d '%s'\n", v5, v6);
      }
    }
  }

  return result;
}

void AppleJPEGReadPlugin::readQualityPropertiesFromJPEG(uint64_t a1, uint64_t a2, IIODictionary *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 4, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v4 = Mutable;
      v5 = 0;
      v6 = *MEMORY[0x1E695E738];
      do
      {
        CFArraySetValueAtIndex(v4, v5++, v6);
      }

      while (v5 != 4);
      memset(v20, 0, 64);
      memset(v19, 0, sizeof(v19));
      memset(v18, 0, sizeof(v18));
      memset(v17, 0, sizeof(v17));
      v13 = v17;
      v14 = v18;
      v15 = v19;
      v16 = v20;
      v11 = 0;
      v12 = 0;
      if (!applejpeg_decode_get_qtables())
      {
        IIODictionary::setObjectForKeyGroup(a3, v4, @"Quantization", @"{JPEG}");
      }

      CFRelease(v4);
    }

    chroma_subsampling = applejpeg_decode_get_chroma_subsampling();
    *(a1 + 700) = chroma_subsampling;
    if (chroma_subsampling <= 3)
    {
      v8 = dword_186225A70[chroma_subsampling];
      IIONumber::IIONumber(v17, dword_186225A60[chroma_subsampling]);
      IIODictionary::setObjectForKeyGroup(a3, v17, @"ChromaSubsamplingX", @"{JPEG}");
      IIONumber::~IIONumber(v17);
      IIONumber::IIONumber(v17, v8);
      IIODictionary::setObjectForKeyGroup(a3, v17, @"ChromaSubsamplingY", @"{JPEG}");
      IIONumber::~IIONumber(v17);
    }
  }
}

uint64_t AppleJPEGReadPlugin::copyImageBlockSetSingleTile(uint64_t a1, const void *a2, const void *a3, double a4, double a5, double a6, double a7, double a8, double a9, uint64_t a10, _DWORD *a11)
{
  v47 = *MEMORY[0x1E69E9840];
  v42 = 0;
  *a11 = 0;
  if (a3)
  {
    PixelSize = CGImageProviderGetPixelSize();
  }

  else
  {
    PixelSize = *(a1 + 324);
    if (PixelSize == 3)
    {
      if (*(a1 + 326))
      {
        PixelSize = 4;
      }

      else
      {
        PixelSize = 3;
      }
    }
  }

  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("    %s:%d: Entering\n", "copyImageBlockSetSingleTile", 2286);
  }

  *(a1 + 308) = a6;
  *(a1 + 312) = a7;
  *(a1 + 316) = (a6 * PixelSize);
  *(a1 + 104) = 1;
  IIOReadPlugin::debugCopyBlockSet(a1, a3, a4, a5, a6, a7, a8, a9);
  IIOReadPlugin::allocateBlockArray(a1, *(a1 + 104));
  applejpeg_decode_clear_options();
  v22 = applejpeg_decode_set_option_outformat();
  if (v22)
  {
    _cg_jpeg_mem_term("copyImageBlockSetSingleTile", 2329, "err = %d\n", v22);
  }

  v23 = applejpeg_decode_set_option_outsize();
  if (v23)
  {
    _cg_jpeg_mem_term("copyImageBlockSetSingleTile", 2342, "err = %d\n", v23);
  }

  v43 = *(a1 + 316);
  v44 = v43;
  v45 = v43;
  v46 = v43;
  v24 = applejpeg_decode_set_option_stride();
  if (v24)
  {
    _cg_jpeg_mem_term("copyImageBlockSetSingleTile", 2350, "err = %d\n", v24);
  }

  if (*(a1 + 369) == 1)
  {
    AppleJPEGReadPlugin::create_or_restoreIndexTable(a1);
  }

  v25 = applejpeg_decode_set_option_mosquito_spray();
  if (v25)
  {
    _cg_jpeg_mem_term("copyImageBlockSetSingleTile", 2382, "applejpeg_decode_set_option_mosquito_spray err = %d\n", v25);
  }

  v26 = applejpeg_decode_set_option_multithread();
  if (v26)
  {
    _cg_jpeg_mem_term("copyImageBlockSetSingleTile", 2389, "applejpeg_decode_set_option_multithread err = %d\n", v26);
  }

  v27 = applejpeg_decode_set_option_crop();
  if (v27)
  {
    _cg_jpeg_mem_term("copyImageBlockSetSingleTile", 2421, "err = %d\n", v27);
  }

  applejpeg_decode_set_option_error_fill();
  output_dimensions = applejpeg_decode_get_output_dimensions();
  if (output_dimensions)
  {
    v29 = output_dimensions;
    v30 = AppleJPEGReadPlugin::appleJPEGErrorString(output_dimensions, output_dimensions);
    _cg_jpeg_mem_term("copyImageBlockSetSingleTile", 2434, "*** ERROR: applejpeg_decode_get_output_dimensions - error %d (%s)\n", v29, v30);
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("    %s:%d: Options error %d\n", "copyImageBlockSetSingleTile", 2435, v29);
    }

    v31 = 0;
  }

  else
  {
    applejpeg_decode_get_output_buffer_size();
    if (*(a1 + 316))
    {
      _cg_jpeg_mem_term("copyImageBlockSetSingleTile", 2444, "*** ERROR: get_output_buffer_size rb=%d  blockGeo.rb=%d\n", 0, *(a1 + 316));
    }

    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("    %s:%d: applejpeg_decode_get_output_buffer_size:%ld rowB:%ld size:%ldx%ld\n", "copyImageBlockSetSingleTile", 2446, 0, 0, 0, 0);
    }

    v31 = _ImageIO_Malloc(0, *(a1 + 416), &v42, kImageMalloc_APPLEJPEG_Data[0], 0, 0);
    if (v31)
    {
      if ((gIIODebugFlags & 0x30000) != 0)
      {
        ImageIOLog("    %s:%d: Got outbuf\n", "copyImageBlockSetSingleTile", 2455);
      }

      v33 = applejpeg_decode_image_all();
      if (!v33)
      {
        goto LABEL_60;
      }

      v34 = v33;
      if ((gIIODebugFlags & 0x30000) != 0)
      {
        ImageIOLog("    %s:%d: Decode error %d\n", "copyImageBlockSetSingleTile", 2462, v33);
      }

      if (v34 == 9 || v34 == -1)
      {
LABEL_60:
        if ((gIIODebugFlags & 0x30000) != 0)
        {
          ImageIOLog("    %s:%d: Decoded image\n", "copyImageBlockSetSingleTile", 2469);
        }

        v48.origin.x = a4;
        v48.origin.y = a5;
        v48.size.width = a6;
        v48.size.height = a7;
        **(a1 + 96) = IIOReadPlugin::createImageBlock(a1, v31, v42, v48, *(a1 + 316), 0);
        v35 = CGRectEqualToRect(*(a1 + 120), *MEMORY[0x1E695F050]);
        v36 = a6;
        v37 = a7;
        if (!v35)
        {
          v49.origin.x = a4;
          v49.origin.y = a5;
          v49.size.width = a6;
          v49.size.height = a7;
          *(&v36 - 2) = CGRectUnion(*(a1 + 120), v49);
          a4 = v38;
          a5 = v39;
        }

        *(a1 + 120) = a4;
        *(a1 + 128) = a5;
        *(a1 + 136) = v36;
        *(a1 + 144) = v37;
        if (*(a1 + 369) == 1)
        {
          AppleJPEGReadPlugin::save_index_table(a1);
        }

        v31 = 0;
        if (a3)
        {
          v40 = *(a1 + 104);
          if (v40)
          {
            v32 = IIOReadPlugin::imageBlockSetCreate(a1, a3, v40, a6, a7, *(a1 + 120), *(a1 + 128), *(a1 + 136), *(a1 + 144), *(a1 + 96), a2);
            v31 = 0;
LABEL_29:
            IIOReadPlugin::freeBlockArray(a1);
            if (!v31)
            {
              return v32;
            }

            goto LABEL_54;
          }
        }
      }
    }
  }

  if (a3)
  {
    v32 = 0;
    goto LABEL_29;
  }

  if (!*(a1 + 104))
  {
    v32 = 0;
    if (!v31)
    {
      return v32;
    }

    goto LABEL_54;
  }

  v32 = 0;
  *a11 = 1;
  if (v31)
  {
LABEL_54:
    _ImageIO_Free(v31, v42);
  }

  return v32;
}

uint64_t AppleJPEGReadPlugin::copyImageBlockSetTiles(uint64_t a1, const void *a2, const void *a3, unint64_t a4, _DWORD *a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v11 = a3;
  v17 = a6;
  v81 = *MEMORY[0x1E69E9840];
  v76 = 0;
  *a5 = 0;
  if (a3)
  {
    CGImageProviderGetSize();
    v21 = v20;
    v23 = v22;
    PixelSize = CGImageProviderGetPixelSize();
  }

  else
  {
    LODWORD(a6) = *(a1 + 308);
    v21 = *&a6;
    LODWORD(a6) = *(a1 + 312);
    v23 = *&a6;
    PixelSize = *(a1 + 324);
    if (PixelSize == 3)
    {
      if (*(a1 + 326))
      {
        PixelSize = 4;
      }

      else
      {
        PixelSize = 3;
      }
    }
  }

  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("    %s:%d: Entering\n", "copyImageBlockSetTiles", 2549);
  }

  IIOReadPlugin::debugCopyBlockSet(a1, v11, v17, a7, a8, a9, a10, a11);
  v25 = (v17 / a4);
  v26 = (a4 - 1);
  v27 = ((v17 + a8 + v26) / a4);
  v28 = (a7 / a4);
  v73 = ((a7 + a9 + v26) / a4);
  *(a1 + 252) = 16 * ((a8 * PixelSize + 15.0) * 0.0625);
  v29 = *(a1 + 244);
  v30.i64[0] = v29.u32[0];
  v30.i64[1] = v29.u32[1];
  v31 = vbsl_s8(vmovn_s64(vcgtq_u64(v30, vdupq_n_s64(a4))), vdup_n_s32(a4), v29);
  *(a1 + 308) = v31;
  *(a1 + 316) = v31.i32[0] * PixelSize;
  v70 = v27 - v25;
  v32 = ((v27 - v25) * (v73 - v28));
  *(a1 + 104) = v32;
  IIOReadPlugin::allocateBlockArray(a1, v32);
  applejpeg_decode_clear_options();
  v33 = applejpeg_decode_set_option_outformat();
  if (v33)
  {
    _cg_jpeg_mem_term("copyImageBlockSetTiles", 2599, "err = %d\n", v33);
  }

  if (*(a1 + 332) <= 1u)
  {
    v34 = 1;
  }

  else
  {
    v34 = *(a1 + 332);
  }

  v35 = applejpeg_decode_set_option_outsize();
  if (v35)
  {
    _cg_jpeg_mem_term("copyImageBlockSetTiles", 2612, "err = %d\n", v35);
  }

  v77 = *(a1 + 316);
  v78 = v77;
  v79 = v77;
  v80 = v77;
  v36 = applejpeg_decode_set_option_stride();
  if (v36)
  {
    _cg_jpeg_mem_term("copyImageBlockSetTiles", 2620, "err = %d\n", v36);
  }

  if (*(a1 + 369) == 1)
  {
    AppleJPEGReadPlugin::create_or_restoreIndexTable(a1);
  }

  if (*(a1 + 701) != -1)
  {
    applejpeg_decode_set_option_force_app14();
  }

  applejpeg_decode_set_option_error_fill();
  v37 = applejpeg_decode_set_option_mosquito_spray();
  if (v37)
  {
    _cg_jpeg_mem_term("copyImageBlockSetTiles", 2668, "applejpeg_decode_set_option_mosquito_spray err = %d\n", v37);
  }

  v38 = applejpeg_decode_set_option_multithread();
  if (v38)
  {
    _cg_jpeg_mem_term("copyImageBlockSetTiles", 2675, "err = %d\n", v38);
  }

  if (v73 > v28)
  {
    v39 = (a7 / a4);
    v74 = 0;
    v71 = 0;
    if (v25 <= v27)
    {
      v40 = v27;
    }

    else
    {
      v40 = (v17 / a4);
    }

    v41 = v34;
    v42 = 8 * v40 - 8 * v25;
    v68 = v25 * a4;
    v43 = MEMORY[0x1E695F050];
    v69 = v11;
    v65 = (v17 / a4);
    v66 = a2;
    v63 = v42;
    v64 = v27;
    while (1)
    {
      v44 = *(a1 + 312);
      v72 = v39;
      v45 = v39 * v44;
      v46 = v45;
      v47 = v44 + v45 <= v23 ? v44 : v23 - v45;
      if (v27 > v25)
      {
        break;
      }

LABEL_63:
      v39 = v72 + 1;
      v74 += v42;
      if (v72 + 1 == v73)
      {
        goto LABEL_64;
      }
    }

    v48 = v47 * v41;
    v49 = v70;
    v71 += v70;
    v50 = v68;
    v51 = v74;
    while (1)
    {
      v52 = v50;
      LODWORD(v48) = *(a1 + 308);
      v53 = *&v48;
      if (v50 + v53 <= v21)
      {
        v54 = v53;
      }

      else
      {
        v54 = v21 - v50;
      }

      if (!*(a1 + 332) && v38)
      {
        _cg_jpeg_mem_term("copyImageBlockSetTiles", 2719, "err = %d\n", v38);
      }

      v55 = applejpeg_decode_set_option_crop();
      if (v55)
      {
        _cg_jpeg_mem_term("copyImageBlockSetTiles", 2723, "err = %d\n", v55);
      }

      applejpeg_decode_get_output_buffer_size();
      if (*(a1 + 316))
      {
        _cg_jpeg_mem_term("copyImageBlockSetTiles", 2730, "*** ERROR: get_output_buffer_size rb=%d  blockGeo.rb=%d\n", 0, *(a1 + 316));
      }

      if ((gIIODebugFlags & 0x30000) != 0)
      {
        ImageIOLog("    %s:%d: applejpeg_decode_get_output_buffer_size:%ld rowB:%ld size:%ldx%ld\n", "copyImageBlockSetTiles", 2732, 0, 0, *(a1 + 308), *(a1 + 312));
      }

      v56 = _ImageIO_Malloc(0, *(a1 + 416), &v76, kImageMalloc_APPLEJPEG_Data[0], 0, 0);
      if (!v56)
      {
        break;
      }

      if ((gIIODebugFlags & 0x30000) != 0)
      {
        ImageIOLog("    %s:%d: Got outbuf\n", "copyImageBlockSetTiles", 2742);
      }

      v57 = applejpeg_decode_image_all();
      v38 = v57;
      if (v57)
      {
        if ((gIIODebugFlags & 0x30000) != 0)
        {
          ImageIOLog("    %s:%d: Decode error %d\n", "copyImageBlockSetTiles", 2749, v57);
        }

        if (v38 != 9 && v38 != -1)
        {
          break;
        }
      }

      if ((gIIODebugFlags & 0x30000) != 0)
      {
        ImageIOLog("    %s:%d: Decoded image\n", "copyImageBlockSetTiles", 2756);
      }

      v82.origin.x = v50;
      v82.origin.y = v46;
      v82.size.width = v54;
      v82.size.height = v47;
      *(*(a1 + 96) + v51) = IIOReadPlugin::createImageBlock(a1, v56, v76, v82, *(a1 + 316), 0);
      if (CGRectEqualToRect(*(a1 + 120), *v43))
      {
        v58 = v46;
        v59 = v47;
      }

      else
      {
        v83.origin.x = v50;
        v83.origin.y = v46;
        v83.size.width = v54;
        v83.size.height = v47;
        *&v48 = CGRectUnion(*(a1 + 120), v83);
        v52 = v48;
        v54 = v60;
      }

      *(a1 + 120) = v52;
      *(a1 + 128) = v58;
      v51 += 8;
      v50 += a4;
      *(a1 + 136) = v54;
      *(a1 + 144) = v59;
      if (!--v49)
      {
        v11 = v69;
        v25 = v65;
        a2 = v66;
        v42 = v63;
        v27 = v64;
        goto LABEL_63;
      }
    }

    v61 = 0;
    if (!v69)
    {
      goto LABEL_69;
    }

LABEL_67:
    IIOReadPlugin::freeBlockArray(a1);
    goto LABEL_71;
  }

LABEL_64:
  if (*(a1 + 369) == 1)
  {
    AppleJPEGReadPlugin::save_index_table(a1);
  }

  v61 = IIOReadPlugin::imageBlockSetCreate(a1, v11, *(a1 + 104), v21, v23, *(a1 + 120), *(a1 + 128), *(a1 + 136), *(a1 + 144), *(a1 + 96), a2);
  v56 = 0;
  if (v11)
  {
    goto LABEL_67;
  }

LABEL_69:
  if (*(a1 + 104))
  {
    *a5 = 1;
  }

LABEL_71:
  if (v56)
  {
    _ImageIO_Free(v56, v76);
  }

  return v61;
}

uint64_t AppleJPEGReadPlugin::decodeIntoIOSurface(AppleJPEGReadPlugin *this, IIODecodeParameter *a2, __IOSurface *a3)
{
  memset(v5, 0, sizeof(v5));
  XmpData = _APP1XMP::getXmpData(a2);
  IIODictionary::IIODictionary(v5, XmpData);
  IIODictionary::~IIODictionary(v5);
  return 4294967246;
}

uint64_t AppleJPEGReadPlugin::copyIOSurfaceSet(_BYTE *a1)
{
  v2 = (*(*a1 + 240))(a1);
  if (v2)
  {
    v3 = v2;
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9C0]);
    CFArrayAppendValue(Mutable, v3);
    v5 = CGImageIOSurfaceSetCreate();
    IIO_IOSurfaceRelease(v3);
  }

  else
  {
    v5 = 0;
    a1[704] = 1;
    a1[520] = 0;
  }

  return v5;
}

__n128 ___ZN19AppleJPEGReadPlugin29createImageBlockFromIOSurfaceEP11__IOSurfaceP7InfoRecP15CGImageProvider_block_invoke()
{
  pixelRange = *ymmword_1862259F0;
  *&matrix.Yp = xmmword_186225A10;
  matrix.Cb_B = 1.772;
  v0 = vImageConvert_YpCbCrToARGB_GenerateConversion(&matrix, &pixelRange, &AppleJPEGReadPlugin::createImageBlockFromIOSurface(__IOSurface *,InfoRec *,CGImageProvider *)::conversion, kvImage422YpCbYpCr8, kvImageARGB8888, 0);
  if (v0)
  {
    v2 = v0;
    v3 = IIO_vImageErrorString(v0);
    return _cg_jpeg_mem_term("createImageBlockFromIOSurface_block_invoke", 4028, "*** ERROR: vImageConvert_YpCbCrToARGB_GenerateConversion returned %ld (%s)\n", v2, v3);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_11()
{

  return kdebug_trace();
}

void ICNSWritePlugin::~ICNSWritePlugin(ICNSWritePlugin *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

uint64_t ICNSWritePlugin::writeOneICNS(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, _DWORD *a6)
{
  AlphaInfo = IIOImagePixelDataProvider::getAlphaInfo(*a2);
  v11 = *(a2 + 50);
  v12 = *(a2 + 56);
  v13 = *(a2 + 75);
  v65 = AlphaInfo;
  v14 = 3;
  if (AlphaInfo)
  {
    v14 = 4;
  }

  size = *(a2 + 48);
  v15 = v14 * size;
  BytesPerRow = IIOImagePixelDataProvider::getBytesPerRow(*a2);
  if (BytesPerRow < v15)
  {
    return 4294967246;
  }

  v17 = BytesPerRow;
  IIOImagePixelDataProvider::rewind(*a2);
  if (v13 >= 2)
  {
    if (CFDataCreateMutable(*MEMORY[0x1E695E480], 0))
    {
      operator new();
    }

    return 0;
  }

  v18 = size;
  v69 = malloc_type_calloc(v17, size, 0x100004077774924uLL);
  if (!v69)
  {
    return 4294967246;
  }

  v66 = a6;
  if (v17 == v15)
  {
    if (IIOImagePixelDataProvider::getBytes(*a2, v69) != v15 * v11)
    {
      goto LABEL_10;
    }
  }

  else if (v11)
  {
    v20 = v69;
    while (IIOImagePixelDataProvider::getBytes(*a2, v20) == v17)
    {
      v20 += v15;
      if (!--v11)
      {
        goto LABEL_15;
      }
    }

LABEL_10:
    v19 = 4294967246;
    goto LABEL_61;
  }

LABEL_15:
  v21 = v15 * size;
  v22 = bswap32(v12);
  *(a3 + *a5) = v22;
  *a5 += 4;
  v64 = v66 + 1;
  v66[2 * *v66 + 1] = v22;
  appleflags = _cg_png_get_appleflags(*a2);
  Error = _cg_GifLastError(*a2);
  v72 = malloc_type_calloc(v21 + (v21 >> 2), 1uLL, 0x100004077774924uLL);
  if (!v72)
  {
    goto LABEL_52;
  }

  v62 = a3;
  v63 = a5;
  v25 = malloc_type_calloc(0x8CuLL, 1uLL, 0x100004077774924uLL);
  if (!v25)
  {
    goto LABEL_51;
  }

  v26 = v25;
  v27 = 0;
  v28 = appleflags / Error;
  v29 = v21 / (appleflags / Error);
  v30 = 4 * (size == 128);
  v68 = v29 & 0xFFFFFFFE;
  v31 = v25 + 2;
  v32 = v29;
  v71 = (v25 + 2);
  do
  {
    v33 = &v69[v27];
    *v26 = v69[v27];
    if (!v68)
    {
      v36 = 1;
      goto LABEL_48;
    }

    v70 = v27;
    v34 = 0;
    v35 = 1;
    v36 = 1;
    do
    {
      v37 = v33[(v28 * v35)];
      v38 = v36;
      v39 = v36 - 1;
      if (v36 <= 1u)
      {
        ++v36;
        v40 = &v26[v38];
        goto LABEL_43;
      }

      v41 = v36 - 2;
      if (v38 == 2)
      {
        if (v37 == v26[1] && v37 == *v26)
        {
LABEL_31:
          v36 = 3;
          v34 = 1;
        }

        else
        {
          v34 = 0;
          v36 = 3;
        }

        v40 = v31;
        goto LABEL_43;
      }

      if ((v38 & 0x80) != 0 || v34)
      {
        if (v38 <= 0x81 && v34 == 1)
        {
          v40 = &v26[v38];
          if (v37 == *(v40 - 1) && v37 == *(v40 - 2))
          {
            v36 = v38 + 1;
            v34 = 1;
            goto LABEL_43;
          }

LABEL_41:
          v34 = 0;
          v72[v30] = v38 + 125;
          v72[v30 + 1] = *v26;
          v30 += 2;
        }

        else
        {
          if (v34)
          {
            goto LABEL_41;
          }

          v72[v30] = v39;
          v43 = v30 + 1;
          memcpy(&v72[v43], v26, v38);
          v31 = v71;
          v34 = 0;
          v30 = v43 + v38;
        }

        v36 = 1;
        v40 = v26;
        goto LABEL_43;
      }

      v40 = &v26[v38];
      if (v37 == *(v40 - 1) && v37 == v26[v41])
      {
        v72[v30] = v38 - 3;
        v42 = v30 + 1;
        memcpy(&v72[v42], v26, (v38 - 2));
        v31 = v71;
        v30 = v42 + v41;
        *v26 = v26[v41];
        v26[1] = *(v40 - 1);
        goto LABEL_31;
      }

      v34 = 0;
      v36 = v38 + 1;
LABEL_43:
      *v40 = v37;
      ++v35;
    }

    while (v35 < v32);
    if (v34)
    {
      v72[v30] = v36 + 125;
      v72[v30 + 1] = *v26;
      v30 += 2;
      v27 = v70;
      goto LABEL_49;
    }

    v27 = v70;
LABEL_48:
    v72[v30] = v36 - 1;
    v44 = v30 + 1;
    memcpy(&v72[v44], v26, v36);
    v30 = v44 + v36;
    v31 = v71;
LABEL_49:
    ++v27;
  }

  while (v27 != 3);
  v45 = bswap32(v30 + 8);
  v46 = *v63;
  *(v62 + v46) = v45;
  v46 += 4;
  *v63 = v46;
  v47 = *v66;
  v64[2 * v47 + 1] = v45;
  *v66 = v47 + 1;
  memcpy((v62 + v46), v72, v30);
  *v63 += v30;
  free(v26);
  v18 = size;
LABEL_51:
  free(v72);
  a3 = v62;
  a5 = v63;
LABEL_52:
  HIDWORD(v49) = v18 - 16;
  LODWORD(v49) = v18 - 16;
  v48 = v49 >> 4;
  if (v48 > 2)
  {
    v51 = 1949855083;
    LODWORD(v50) = 0x4000;
  }

  else
  {
    LODWORD(v50) = dword_186225A94[v48];
    v51 = dword_186225AA0[v48];
  }

  v52 = bswap32(v51);
  *(a3 + *a5) = v52;
  v53 = *a5 + 4;
  *a5 = v53;
  v64[2 * *v66] = v52;
  v54 = bswap32(v50 | 8);
  *(a3 + v53) = v54;
  v55 = *a5 + 4;
  *a5 = v55;
  v56 = *v66;
  v64[2 * v56 + 1] = v54;
  *v66 = v56 + 1;
  if ((v65 - 1) > 3)
  {
    v59 = v50;
    memset((a3 + v55), 255, v50);
  }

  else
  {
    v57 = v69 + 3;
    v58 = (a3 + v55);
    v59 = v50;
    v50 = v50;
    do
    {
      v60 = *v57;
      v57 += 4;
      *v58++ = v60;
      --v50;
    }

    while (v50);
  }

  v19 = 0;
  *a5 += v59;
LABEL_61:
  free(v69);
  return v19;
}

uint64_t ICNSWritePlugin::writeAll(IIOImageDestination **this)
{
  *&v41[1461] = *MEMORY[0x1E69E9840];
  bzero(v40, 0x600uLL);
  ImageCount = IIOWritePlugin::getImageCount(this);
  if (ImageCount >= 0x10)
  {
    v3 = 16;
  }

  else
  {
    v3 = ImageCount;
  }

  v37 = v3;
  if (!ImageCount)
  {
    goto LABEL_35;
  }

  v4 = 0;
  v36 = 0;
  v5 = 0;
  v6 = 72;
  Uint32ForKey = 72;
  do
  {
    PixelDataProviderAtIndex = IIOWritePlugin::getPixelDataProviderAtIndex(this, v4);
    PropertiesAtIndex = IIOWritePlugin::getPropertiesAtIndex(this, v4);
    v10 = &v40[96 * v5];
    *v10 = PixelDataProviderAtIndex;
    *(v10 + 2) = PropertiesAtIndex;
    v11 = IIOImageSource::count(PixelDataProviderAtIndex);
    v12 = IIO_Reader::testHeaderSize(PixelDataProviderAtIndex);
    if (IIODictionary::containsKey(PropertiesAtIndex, @"DPIWidth"))
    {
      Uint32ForKey = IIODictionary::getUint32ForKey(PropertiesAtIndex, @"DPIWidth");
    }

    if (IIODictionary::containsKey(PropertiesAtIndex, @"DPIHeight"))
    {
      v6 = IIODictionary::getUint32ForKey(PropertiesAtIndex, @"DPIHeight");
    }

    if (Uint32ForKey != v6)
    {
      Uint32ForKey = 72;
      v6 = 72;
    }

    if (Uint32ForKey == 144)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    ICNSInfoTable = GetICNSInfoTable();
    v15 = *ICNSInfoTable;
    if (v15 == 0xFFFF)
    {
LABEL_23:
      LogError("writeAll", 576, "unsupported ICNS image size (%d x %d) - scaling factor: %d  dpi: %d x %d\n", v11, v12, v13, Uint32ForKey, v6);
    }

    else
    {
      v16 = ICNSInfoTable + 28;
      while ((v15 & 0x8000) != 0 || *(v16 - 16) != v11 || *(v16 - 15) != v12 || v13 != *(v16 - 7) || *(v16 - 4) != 1)
      {
        v17 = *v16;
        v16 += 28;
        LOWORD(v15) = v17;
        if (v17 == 0xFFFF)
        {
          goto LABEL_23;
        }
      }

      *(v10 + 24) = *(v16 - 28);
      *(v10 + 40) = *(v16 - 20);
      *(v10 + 56) = *(v16 - 12);
      *(v10 + 9) = *(v16 - 1);
      ++v5;
      v36 += (4 * v11 * v12);
    }

    ++v4;
  }

  while (v4 != v37);
  if (v5)
  {
    v18 = v41;
    v19 = v5;
    v20 = v5;
    do
    {
      v21 = *v18;
      v18 += 96;
      if (v21 < 2)
      {
        ++v20;
      }

      --v19;
    }

    while (v19);
    v22 = (8 * v20 + 8);
    v23 = malloc_type_calloc((v36 >> 2) + v36 + v22, 1uLL, 0x100004077774924uLL);
    *v23 = 1936614249;
    v23[2] = 541282132;
    v23[3] = bswap32(v22);
    __nitems = v22 + 8;
    v25 = malloc_type_calloc((8 * v20) | 4, 1uLL, 0x100004052888210uLL);
    v26 = v40;
    do
    {
      v27 = v26[3];
      v38[2] = v26[2];
      v38[3] = v27;
      v28 = v26[5];
      v38[4] = v26[4];
      v38[5] = v28;
      v29 = *v26;
      v30 = v26[1];
      v26 += 6;
      v38[0] = v29;
      v38[1] = v30;
      ICNSWritePlugin::writeOneICNS(this, v38, v23, v24, &__nitems, v25);
      --v5;
    }

    while (v5);
    memcpy(v23 + 4, v25 + 1, (8 * *v25));
    free(v25);
    v31 = __nitems;
    v23[1] = bswap32(__nitems);
    IIOImageWriteSession::putBytes(this[2], v23, v31);
    v32 = 0;
  }

  else
  {
LABEL_35:
    v23 = 0;
    v32 = 4294967246;
  }

  for (i = 88; i != 1624; i += 96)
  {
    v34 = *&v40[i];
    if (v34)
    {
      free(v34);
    }
  }

  if (v23)
  {
    free(v23);
  }

  return v32;
}

uint64_t ICNSWritePlugin::WriteProc(ICNSWritePlugin *this, IIOImageDestination *a2, void *a3, void *a4, void *a5)
{
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "ICNSWritePlugin::WriteProc", 0, 0, -1, 0);
  }

  v12 = 0;
  memset(v11, 0, sizeof(v11));
  IIOWritePlugin::IIOWritePlugin(v11, this, a2, 1229147731);
  *&v11[0] = &unk_1EF4DBF68;
  v7 = ICNSWritePlugin::writeAll(v11);
  _cg_jpeg_mem_term(v11, v8, v9);
  return v7;
}

void sub_18608CCD8(void *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  _cg_jpeg_mem_term(&a9, a2, a3);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18608CCC0);
}

uint64_t TIFFInitThunderScan(void *a1)
{
  a1[120] = ThunderSetupDecode;
  a1[126] = ThunderDecodeRow;
  a1[128] = ThunderDecodeRow;
  return 1;
}

uint64_t ThunderSetupDecode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 116);
  if (v8 == 4)
  {
    return 1;
  }

  TIFFErrorExtR(a1, "ThunderSetupDecode", "Wrong bitspersample value (%d), Thunder decoder only supports 4bits per sample.", a4, a5, a6, a7, a8, v8);
  return 0;
}

uint64_t ThunderDecodeRow(uint64_t a1, char *__b, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 % *(a1 + 1104))
  {
    TIFFErrorExtR(a1, "ThunderDecodeRow", "Fractional scanlines cannot be read", a4, a5, a6, a7, a8, v49);
    return 0;
  }

  if (a3 < 1)
  {
    return 1;
  }

  v10 = *(a1 + 1152);
  v11 = *(a1 + 1160);
  while (1)
  {
    v12 = *(a1 + 88);
    v13 = *(a1 + 88) != 0;
    v14 = 0;
    if (v12)
    {
      v15 = v11 < 1;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      v17 = 0;
      v18 = __b;
      v19 = v11;
      v50 = a3;
      v51 = __b;
      while (1)
      {
        v21 = *v10++;
        v20 = v21;
        v22 = v21 >> 6;
        if (v21 >> 6 > 1)
        {
          if (v22 != 2)
          {
            v17 = v20 & 0xF;
            v24 = v14 + 1;
            if (v14)
            {
              *v18++ |= v17;
            }

            else
            {
              *v18 = 16 * v20;
            }

            goto LABEL_59;
          }

          v23 = (v20 >> 3) & 7;
          if (v23 == 4)
          {
            v24 = v14;
          }

          else
          {
            v29 = threebitdeltas[v23] + v17;
            v17 = v29 & 0xF;
            if (v14)
            {
              v31 = v18 + 1;
              v30 = *v18 | v17;
            }

            else
            {
              v30 = 16 * v29;
              v31 = v18;
            }

            v24 = v14 + 1;
            *v18 = v30;
            v18 = v31;
          }

          if ((v20 & 7) == 4)
          {
            goto LABEL_59;
          }

          v41 = threebitdeltas[v20 & 7];
        }

        else
        {
          if (!v22)
          {
            if (v20)
            {
              if (v14)
              {
                v32 = *v18 | v17;
                v17 = v32;
                *v18++ = v32;
                ++v14;
                LODWORD(v20) = v20 - 1;
              }

              else
              {
                v17 |= 16 * v17;
              }

              v14 += v20;
              if (v14 <= v12)
              {
                if (v20 >= 1)
                {
                  v33 = v20 - 2;
                  if (v20 < 2)
                  {
                    v33 = 0;
                  }

                  v34 = v33 + 1;
                  v35 = ((v33 + 1) >> 1) + 1;
                  memset(v18, v17, v35);
                  v18 += v35;
                  if (v20 - (v34 & 0x7FFFFFFE) == 1)
                  {
                    v36 = *--v18;
                    *v18 = v36 & 0xF0;
                  }

                  a3 = v50;
                  __b = v51;
                }

                v17 &= 0xFu;
              }
            }

            goto LABEL_60;
          }

          v25 = (v20 >> 4) & 3;
          if (v25 != 2)
          {
            v26 = twobitdeltas[v25] + v17;
            v17 = v26 & 0xF;
            if (v14)
            {
              v28 = v18 + 1;
              v27 = *v18 | v17;
            }

            else
            {
              v27 = 16 * v26;
              v28 = v18;
            }

            ++v14;
            *v18 = v27;
            v18 = v28;
          }

          v37 = (v20 >> 2) & 3;
          if (v37 == 2 || (v38 = twobitdeltas[v37] + v17, v17 = v38 & 0xF, v14 >= v12))
          {
            v24 = v14;
          }

          else
          {
            if (v14)
            {
              v40 = v18 + 1;
              v39 = *v18 | v17;
            }

            else
            {
              v39 = 16 * v38;
              v40 = v18;
            }

            v24 = v14 + 1;
            *v18 = v39;
            v18 = v40;
          }

          if ((v20 & 3) == 2)
          {
            goto LABEL_59;
          }

          v41 = twobitdeltas[v20 & 3];
        }

        v42 = v41 + v17;
        v17 = v42 & 0xF;
        if (v24 < v12)
        {
          v14 = v24 + 1;
          if (v24)
          {
            *v18++ |= v17;
          }

          else
          {
            *v18 = 16 * v42;
          }

          goto LABEL_60;
        }

LABEL_59:
        v14 = v24;
LABEL_60:
        v13 = v14 < v12;
        v11 = v19 - 1;
        if (v19 >= 2)
        {
          --v19;
          if (v14 < v12)
          {
            continue;
          }
        }

        goto LABEL_12;
      }
    }

    v18 = __b;
LABEL_12:
    *(a1 + 1152) = v10;
    *(a1 + 1160) = v11;
    if (v14 != v12)
    {
      break;
    }

    v16 = *(a1 + 1104);
    __b += v16;
    v15 = a3 <= v16;
    a3 -= v16;
    if (v15)
    {
      return 1;
    }
  }

  bzero(v18, &__b[(v12 + 1) >> 1] - v18);
  v48 = "Too much";
  if (v13)
  {
    v48 = "Not enough";
  }

  TIFFErrorExtR(a1, "ThunderDecode", "%s data at scanline %lu (%llu != %llu)", v43, v44, v45, v46, v47, v48);
  return 0;
}

__CFString *IIOSurfaceInfo(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 1024);
  v3 = CFCopyDescription(a1);
  CFStringAppendFormat(Mutable, 0, @"%@\n", v3);
  CFRelease(v3);
  Width = IOSurfaceGetWidth(a1);
  Height = IOSurfaceGetHeight(a1);
  BytesPerRow = IOSurfaceGetBytesPerRow(a1);
  CFStringAppendFormat(Mutable, 0, @"    surface:  %ldx%ld  rb:%ld\n", Width, Height, BytesPerRow);
  if (IOSurfaceGetPlaneCount(a1) >= 2 && IOSurfaceGetPlaneCount(a1))
  {
    v7 = 0;
    do
    {
      WidthOfPlane = IOSurfaceGetWidthOfPlane(a1, v7);
      HeightOfPlane = IOSurfaceGetHeightOfPlane(a1, v7);
      BytesPerRowOfPlane = IOSurfaceGetBytesPerRowOfPlane(a1, v7);
      CFStringAppendFormat(Mutable, 0, @"    plane[%ld]: %ldx%ld  rb:%ld\n", v7++, WidthOfPlane, HeightOfPlane, BytesPerRowOfPlane);
    }

    while (v7 < IOSurfaceGetPlaneCount(a1));
  }

  PixelFormat = IOSurfaceGetPixelFormat(a1);
  v12 = PixelFormat;
  v13 = PixelFormat >> 24;
  v14 = MEMORY[0x1E69E9830];
  if ((PixelFormat >> 24) <= 0x7F)
  {
    v15 = *(MEMORY[0x1E69E9830] + 4 * v13 + 60) & 0x40000;
  }

  else
  {
    v15 = __maskrune(PixelFormat >> 24, 0x40000uLL);
  }

  if (v15)
  {
    v16 = v13;
  }

  else
  {
    v16 = 46;
  }

  v17 = (v12 << 8) >> 24;
  if (v17 <= 0x7F)
  {
    v18 = *(v14 + 4 * v17 + 60) & 0x40000;
  }

  else
  {
    v18 = __maskrune((v12 << 8) >> 24, 0x40000uLL);
  }

  if (v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = 46;
  }

  LODWORD(v20) = v12 >> 8;
  if (v20 <= 0x7F)
  {
    v21 = *(v14 + 4 * v20 + 60) & 0x40000;
  }

  else
  {
    v21 = __maskrune(v12 >> 8, 0x40000uLL);
  }

  if (v21)
  {
    v20 = v20;
  }

  else
  {
    v20 = 46;
  }

  v12 = v12;
  if (v12 <= 0x7F)
  {
    v22 = *(v14 + 4 * v12 + 60) & 0x40000;
  }

  else
  {
    v22 = __maskrune(v12, 0x40000uLL);
  }

  if (v22)
  {
    v23 = v12;
  }

  else
  {
    v23 = 46;
  }

  CFStringAppendFormat(Mutable, 0, @"    PixelFormat: %c%c%c%c\n", v16, v19, v20, v23);
  CFStringAppend(Mutable, @"    ColorSpace:\n");
  v24 = CGColorSpaceCopyFromIOSurface();
  ColorSpaceFromAttachments = v24;
  if (v24)
  {
    CFStringAppendFormat(Mutable, 0, @"      CGColorSpaceCopyFromIOSurface:%@\n", v24);
    CGColorSpaceRelease(ColorSpaceFromAttachments);
  }

  else
  {
    CFStringAppend(Mutable, @"      CGColorSpaceCopyFromIOSurface: (null)\n");
  }

  v26 = IOSurfaceCopyValue(a1, *MEMORY[0x1E696CEE0]);
  if (v26)
  {
    v27 = v26;
    ColorSpaceFromAttachments = CGColorSpaceCreateWithPropertyList(v26);
    CFStringAppendFormat(Mutable, 0, @"      kIOSurfaceColorSpace:%@\n", ColorSpaceFromAttachments);
    CGColorSpaceRelease(ColorSpaceFromAttachments);
    CFRelease(v27);
  }

  else
  {
    CFStringAppend(Mutable, @"      kIOSurfaceColorSpace: (null)\n");
  }

  v28 = IOSurfaceCopyValue(a1, *MEMORY[0x1E696CF60]);
  if (v28)
  {
    v29 = v28;
    ColorSpaceFromAttachments = CGColorSpaceCreateWithICCData(v28);
    CFStringAppendFormat(Mutable, 0, @"      kIOSurfaceICCProfile:%@\n", ColorSpaceFromAttachments);
    CFRelease(v29);
    CGColorSpaceRelease(ColorSpaceFromAttachments);
  }

  else
  {
    CFStringAppend(Mutable, @"      kIOSurfaceICCProfile: (null)\n");
  }

  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v49 = 0u;
  memset(v48, 0, sizeof(v48));
  v47 = 132;
  BulkAttachments = IOSurfaceGetBulkAttachments();
  v31 = 0;
  v32 = 132;
  v33 = 0;
  v34 = 0;
  if (!BulkAttachments)
  {
    IIO_LoadHEIFSymbols();
    v44 = 0;
    v45 = 0;
    v46 = 0;
    IIODictionary::IIODictionary(&v44);
    IIO_UpdateAttachmentsDictionaryFromIOSurfaceStruct(&v44, v48);
    if (IIODictionary::getCount(&v44))
    {
      ColorSpaceFromAttachments = gFunc_CVImageBufferCreateColorSpaceFromAttachments(v45);
    }

    CGColorSpaceRelease(ColorSpaceFromAttachments);
    v33 = WORD5(v51);
    v34 = BYTE12(v49);
    v31 = BYTE11(v49);
    IIODictionary::~IIODictionary(&v44);
    v32 = v47;
  }

  if (v32 == 132)
  {
    v35 = IOSurfaceCopyAllValues(a1);
    v44 = 0;
    v45 = 0;
    v46 = 0;
    IIODictionary::IIODictionary(&v44, v35);
    v36 = BYTE4(v52);
    if (IIODictionary::containsKey(&v44, *gIIO_kCVImageBufferAlphaChannelIsOpaque))
    {
      if (IIODictionary::getBoolForKey(&v44, *gIIO_kCVImageBufferAlphaChannelIsOpaque))
      {
        v37 = 5;
      }

      else
      {
        v37 = 0;
      }
    }

    else
    {
      v37 = 0;
    }

    if (IIODictionary::containsKey(&v44, *gIIO_kCVImageBufferAlphaChannelModeKey))
    {
      ObjectForKey = IIODictionary::getObjectForKey(&v44, *gIIO_kCVImageBufferAlphaChannelModeKey);
      if (CFStringCompare(ObjectForKey, *gIIO_kCVImageBufferAlphaChannelMode_PremultipliedAlpha, 0))
      {
        if (CFStringCompare(ObjectForKey, *gIIO_kCVImageBufferAlphaChannelMode_StraightAlpha, 0) == kCFCompareEqualTo)
        {
          if (v36 != 1)
          {
            LogError("IIOSurfaceInfo", 455, "*** ERROR: IOSurface kCVImageBufferAlphaChannelMode_StraightAlpha, but keys.premultipliedAlpha = %d\n", BYTE4(v52));
          }

          v37 = 3;
        }
      }

      else
      {
        if (v36 != 2)
        {
          LogError("IIOSurfaceInfo", 449, "*** ERROR: IOSurface kCVImageBufferAlphaChannelMode_PremultipliedAlpha, but keys.premultipliedAlpha = %d\n", BYTE4(v52));
        }

        v37 = 1;
      }
    }

    CFStringAppendFormat(Mutable, 0, @"    Alpha: %s\n", off_1E6F0B6C8[v37]);
    IIODictionary::~IIODictionary(&v44);
  }

  else
  {
    v35 = 0;
  }

  v39 = "???";
  if (v31 > 8)
  {
    if (v31 > 11)
    {
      if (v31 == 12)
      {
        v39 = "P3_D65";
      }

      else if (v31 == 22)
      {
        v39 = "JEDEC_P22";
      }
    }

    else if (v31 == 9)
    {
      v39 = "ITU_R_2020";
    }

    else if (v31 == 11)
    {
      v39 = "DCI_P3";
    }
  }

  else if (v31 > 4)
  {
    if (v31 == 5)
    {
      v39 = "EBU_3213";
    }

    else if (v31 == 6)
    {
      v39 = "SMPTE_C";
    }
  }

  else if (v31 == 1)
  {
    v39 = "ITU_R_709_2";
  }

  else if (v31 == 2)
  {
    v39 = "Unknown";
  }

  CFStringAppendFormat(Mutable, 0, @"    ColorPrimaries: %s [%d]\n", v39, v31);
  if ((v34 + 1) > 0x13u)
  {
    v40 = "???";
  }

  else
  {
    v40 = off_1E6F0B788[(v34 + 1)];
  }

  CFStringAppendFormat(Mutable, 0, @"    TransferFunction: %s [%d]\n", v40, v34);
  v41 = IOSurfaceCopyValue(a1, @"IOSurfaceContentHeadroom");
  if (v41)
  {
    v42 = v41;
    CFStringAppendFormat(Mutable, 0, @"    Headroom: %@\n", v41);
    CFRelease(v42);
  }

  else
  {
    CFStringAppendFormat(Mutable, 0, @"    Headroom: n/a\n");
  }

  CFStringAppendFormat(Mutable, 0, @"    ContentAverageLightLevel: %d\n", v33);
  if (v35)
  {
    CFRelease(v35);
  }

  if (Mutable)
  {
    CFAutorelease(Mutable);
  }

  return Mutable;
}

void sub_18608D818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

const char *IIO_AlphaInfoString(char a1)
{
  if ((a1 & 0x1Fu) > 7)
  {
    return "";
  }

  else
  {
    return off_1E6F0B6C8[a1 & 0x1F];
  }
}

char *IIO_BitmapInfoString(unsigned int a1)
{
  if ((a1 & 0x1F) > 7)
  {
    v2 = "";
  }

  else
  {
    v2 = off_1E6F0B6C8[a1 & 0x1F];
  }

  v3 = strlen(v2);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:fe200100]();
  }

  v4 = v3;
  memset(&__dst, 0, sizeof(__dst));
  if (v3 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v3;
  if (v3)
  {
    memmove(&__dst, v2, v3);
  }

  __dst.__r_.__value_.__s.__data_[v4] = 0;
  v5 = (a1 >> 12) & 7;
  if (v5 >= 5)
  {
    v6 = "| unknown-ByteOrder";
  }

  else
  {
    v6 = off_1E6F0B828[v5];
  }

  std::string::append(&__dst, v6);
  v7 = HIWORD(a1) & 0xF;
  if (v7 > 4)
  {
    v8 = "| unknown-PixelFormat";
  }

  else
  {
    v8 = off_1E6F0B850[v7];
  }

  std::string::append(&__dst, v8);
  if ((a1 & 0xF00) == 0x100)
  {
    std::string::append(&__dst, "| FloatComponents");
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    v9 = __dst.__r_.__value_.__r.__words[0];
    strncpy(IIO_BitmapInfoString::str, __dst.__r_.__value_.__l.__data_, 0x80uLL);
    operator delete(v9);
  }

  else
  {
    strncpy(IIO_BitmapInfoString::str, &__dst, 0x80uLL);
  }

  return IIO_BitmapInfoString::str;
}

void sub_18608D9FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *IIO_BitmapInfoStringSmall(unsigned int a1)
{
  memset(&v9, 0, sizeof(v9));
  if ((a1 & 0x1F) > 7)
  {
    v2 = "";
  }

  else
  {
    v2 = off_1E6F0B708[a1 & 0x1F];
  }

  MEMORY[0x186602520](&v9, v2);
  v3 = (a1 >> 12) & 7;
  if (v3 >= 5)
  {
    v4 = "| unknown ";
  }

  else
  {
    v4 = off_1E6F0B878[v3];
  }

  std::string::append(&v9, v4);
  v5 = HIWORD(a1) & 0xF;
  if (v5 > 4)
  {
    v6 = "| unknown  ";
  }

  else
  {
    v6 = off_1E6F0B8A0[v5];
  }

  std::string::append(&v9, v6);
  if ((a1 & 0xF00) == 0x100)
  {
    std::string::append(&v9, "| Float");
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    v7 = v9.__r_.__value_.__r.__words[0];
    strncpy(IIO_BitmapInfoStringSmall::str, v9.__r_.__value_.__l.__data_, 0x80uLL);
    operator delete(v7);
  }

  else
  {
    strncpy(IIO_BitmapInfoStringSmall::str, &v9, 0x80uLL);
  }

  return IIO_BitmapInfoStringSmall::str;
}

void sub_18608DB30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const char *IIO_ColorModelString(int a1)
{
  if (a1 > 6)
  {
    return "";
  }

  else
  {
    return off_1E6F0B748[a1 + 1];
  }
}

void IIODumpMemory(uint64_t a1, unint64_t a2)
{
  v2 = IIOCreateMemoryString(a1, a2);
  if (v2)
  {
    v3 = v2;
    ImageIOLog("%s\n", v2);

    free(v3);
  }
}

char *IIOCreateMemoryString(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  memset(&__p, 0, sizeof(__p));
  if (!a1)
  {
    v27 = "(NULL)";
LABEL_55:
    MEMORY[0x186602520](&__p, v27);
    goto LABEL_56;
  }

  if (!a2)
  {
    v27 = "(zero size)";
    goto LABEL_55;
  }

  v44 = 0;
  *v38 = 0;
  v39 = 0;
  *&v3 = 0x2020202020202020;
  *(&v3 + 1) = 0x2020202020202020;
  __s = v3;
  *v42 = v3;
  *&v42[15] = v3;
  v43 = 0;
  v40 = 0;
  if (((a2 + 15) & 0xFFFFFFFFFFFFFFF0) != 0)
  {
    v5 = 0;
    v6 = 0;
    v31 = (a2 + 15) & 0xFFFFFFFFFFFFFFF0;
    do
    {
      v7 = 0;
      v8 = &__s + 1;
      do
      {
        if (v6 < a2)
        {
          v9 = *(a1 + v6);
          *(v8 - 1) = byte_186225B10[*(a1 + v6) >> 4];
          *v8 = byte_186225B10[v9 & 0xF];
          if ((v9 & 0x80000000) != 0)
          {
            v10 = __maskrune(v9, 0x40000uLL);
          }

          else
          {
            v10 = *(MEMORY[0x1E69E9830] + 4 * v9 + 60) & 0x40000;
          }

          ++v6;
          if (v10)
          {
            v11 = v9;
          }

          else
          {
            v11 = 46;
          }

          v38[v7] = v11;
        }

        ++v7;
        v8 += 3;
      }

      while (v7 != 16);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      memset(&v32, 0, sizeof(v32));
      std::string::basic_string[abi:fe200100](&v32, size + 5);
      if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = &v32;
      }

      else
      {
        v13 = v32.__r_.__value_.__r.__words[0];
      }

      if (size)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        memmove(v13, p_p, size);
      }

      strcpy(v13 + size, "    |");
      v15 = std::string::append(&v32, &__s);
      v16 = *&v15->__r_.__value_.__l.__data_;
      v33.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
      *&v33.__r_.__value_.__l.__data_ = v16;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      v17 = std::string::append(&v33, "|  |");
      v18 = *&v17->__r_.__value_.__l.__data_;
      v34.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
      *&v34.__r_.__value_.__l.__data_ = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      v19 = std::string::append(&v34, v38);
      v20 = *&v19->__r_.__value_.__l.__data_;
      v35.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
      *&v35.__r_.__value_.__l.__data_ = v20;
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      v21 = std::string::append(&v35, "|");
      v22 = v21->__r_.__value_.__r.__words[0];
      v37[0] = v21->__r_.__value_.__l.__size_;
      *(v37 + 7) = *(&v21->__r_.__value_.__r.__words[1] + 7);
      v23 = HIBYTE(v21->__r_.__value_.__r.__words[2]);
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p.__r_.__value_.__r.__words[0] = v22;
      __p.__r_.__value_.__l.__size_ = v37[0];
      *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v37 + 7);
      *(&__p.__r_.__value_.__s + 23) = v23;
      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v35.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }

      if (v5 + 17 < v31)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v24 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v24 = __p.__r_.__value_.__l.__size_;
        }

        memset(&v35, 0, sizeof(v35));
        std::string::basic_string[abi:fe200100](&v35, v24 + 1);
        if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v25 = &v35;
        }

        else
        {
          v25 = v35.__r_.__value_.__r.__words[0];
        }

        if (v24)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v26 = &__p;
          }

          else
          {
            v26 = __p.__r_.__value_.__r.__words[0];
          }

          memmove(v25, v26, v24);
        }

        *(&v25->__r_.__value_.__l.__data_ + v24) = 10;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        __p = v35;
      }

      v5 += 16;
    }

    while (v5 < v31);
  }

LABEL_56:
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    return strdup(&__p);
  }

  v29 = __p.__r_.__value_.__r.__words[0];
  v28 = strdup(__p.__r_.__value_.__l.__data_);
  operator delete(v29);
  return v28;
}

void sub_18608DFA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a44 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const char *IIO_dump@char *a1, const __CFString *cf
{
  v25 = *MEMORY[0x1E69E9840];
  if (cf)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    *buffer = 0u;
    v10 = 0u;
    v4 = CFGetTypeID(cf);
    if (v4 == CFStringGetTypeID())
    {
      CFStringGetCString(cf, buffer, 255, 0x8000100u);
    }

    else
    {
      v6 = CFCopyDescription(cf);
      if (v6)
      {
        v7 = v6;
        CFStringGetCString(v6, buffer, 255, 0x8000100u);
        CFRelease(v7);
      }
    }

    v5 = buffer;
  }

  else
  {
    v5 = "(null)";
  }

  return ImageIOLog(a1, v5);
}

void IIO_CFShow(const __CFDictionary *a1, uint64_t a2, const char *a3)
{
  while (1)
  {
    v67 = *MEMORY[0x1E69E9840];
    if (!a1)
    {
      break;
    }

    v3 = a3;
    v4 = a2;
    v5 = a1;
    v6 = CFGetTypeID(a1);
    memset(v66, 0, sizeof(v66));
    v65 = 0u;
    v64 = 0u;
    v63 = 0u;
    v62 = 0u;
    v61 = 0u;
    v60 = 0u;
    v59 = 0u;
    v58 = 0u;
    v57 = 0u;
    v56 = 0u;
    v55 = 0u;
    v54 = 0u;
    v53 = 0u;
    v52 = 0u;
    buffer = 63;
    if (v4 >= 1)
    {
      v7 = v4;
      do
      {
        ImageIOLog("    ");
        --v7;
      }

      while (v7);
    }

    if (v3)
    {
      ImageIOLog("%s = ", v3);
    }

    if (v6 == CFDictionaryGetTypeID())
    {
      Count = CFDictionaryGetCount(v5);
      v9 = MEMORY[0x1E69E9848];
      v10 = *MEMORY[0x1E69E9848];
      if (Count)
      {
        v11 = Count;
        fwrite("dict(\n", 6uLL, 1uLL, v10);
        v12 = malloc_type_malloc(8 * v11, 0x6004044C4A2DFuLL);
        CFDictionaryGetKeysAndValues(v5, v12, 0);
        qsort(v12, v11, 8uLL, keySort);
        if (v11 >= 1)
        {
          v13 = v12;
          do
          {
            CFStringGetCString(*v13, &buffer, 255, 0x8000100u);
            v14 = *v13++;
            Value = CFDictionaryGetValue(v5, v14);
            IIO_CFShow(Value, v4 + 1, &buffer);
            --v11;
          }

          while (v11);
        }

        free(v12);
        if (v4 >= 1)
        {
          do
          {
            ImageIOLog("    ");
            --v4;
          }

          while (v4);
        }

        v16 = *v9;
LABEL_26:
        fwrite(")\n", 2uLL, 1uLL, v16);
        return;
      }

      v29 = "dict()\n";
      v30 = 7;
      goto LABEL_60;
    }

    if (v6 == CFArrayGetTypeID())
    {
      v17 = CFArrayGetCount(v5);
      v18 = MEMORY[0x1E69E9848];
      v10 = *MEMORY[0x1E69E9848];
      if (v17)
      {
        v19 = v17;
        fwrite("array(\n", 7uLL, 1uLL, v10);
        if (v19 >= 1)
        {
          for (i = 0; i != v19; ++i)
          {
            v21 = strlen(&buffer);
            snprintf(&buffer, 256 - v21, "#%2ld", i);
            ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
            IIO_CFShow(ValueAtIndex, v4 + 1, &buffer);
          }
        }

        if (v4 >= 1)
        {
          do
          {
            ImageIOLog("    ");
            --v4;
          }

          while (v4);
        }

        v16 = *v18;
        goto LABEL_26;
      }

      v29 = "array()\n";
      v30 = 8;
      goto LABEL_60;
    }

    if (v6 == CFBagGetTypeID())
    {
      v23 = MEMORY[0x186600600](v5);
      v24 = MEMORY[0x1E69E9848];
      v10 = *MEMORY[0x1E69E9848];
      if (v23)
      {
        v25 = v23;
        fwrite("bag(\n", 5uLL, 1uLL, v10);
        v26 = malloc_type_malloc(8 * v25, 0xC0040B8AA526DuLL);
        CFBagGetValues(v5, v26);
        if (v25 >= 1)
        {
          v27 = v26;
          do
          {
            v28 = *v27++;
            IIO_CFShow(v28, v4 + 1, 0);
            --v25;
          }

          while (v25);
        }

        free(v26);
        if (v4 >= 1)
        {
          do
          {
            ImageIOLog("    ");
            --v4;
          }

          while (v4);
        }

        goto LABEL_44;
      }

      v29 = "bag()\n";
LABEL_59:
      v30 = 6;
      goto LABEL_60;
    }

    if (v6 == CFSetGetTypeID())
    {
      v31 = CFSetGetCount(v5);
      v24 = MEMORY[0x1E69E9848];
      v10 = *MEMORY[0x1E69E9848];
      if (!v31)
      {
        v29 = "set()\n";
        goto LABEL_59;
      }

      v32 = v31;
      fwrite("set(\n", 5uLL, 1uLL, v10);
      v33 = malloc_type_malloc(8 * v32, 0xC0040B8AA526DuLL);
      CFSetGetValues(v5, v33);
      if (v32 >= 1)
      {
        v34 = v33;
        do
        {
          v35 = *v34++;
          IIO_CFShow(v35, v4 + 1, 0);
          --v32;
        }

        while (v32);
      }

      free(v33);
      if (v4 >= 1)
      {
        do
        {
          ImageIOLog("    ");
          --v4;
        }

        while (v4);
      }

LABEL_44:
      v10 = *v24;
      v29 = ")\n";
      v30 = 2;
LABEL_60:

      fwrite(v29, v30, 1uLL, v10);
      return;
    }

    if (v6 == CFStringGetTypeID())
    {

      IIO_dump@"%s\n", v5;
      return;
    }

    if (v6 == CFBooleanGetTypeID())
    {
      v36 = *MEMORY[0x1E69E9848];
      if (*MEMORY[0x1E695E4D0] == v5)
      {
        v37 = "true\n";
      }

      else
      {
        v37 = "false\n";
      }

      fprintf(v36, v37);
      return;
    }

    if (v6 == CFNumberGetTypeID())
    {
      valuePtr = 0.0;
      CFNumberGetValue(v5, kCFNumberDoubleType, &valuePtr);
      v38 = *MEMORY[0x1E69E9848];
      if (valuePtr == valuePtr)
      {
        fprintf(v38, "%d\n", valuePtr);
      }

      else
      {
        fprintf(v38, "%f\n", valuePtr);
      }

      return;
    }

    if (v6 == CGImageMetadataPropertyGetTypeID())
    {
      if (v4 < 1)
      {
        Schema = CGImageMetadataPropertyGetSchema(v5);
        IIO_dump@"   schema: %s\n", Schema;
      }

      else
      {
        v39 = v4;
        do
        {
          ImageIOLog("    ");
          --v39;
        }

        while (v39);
        v40 = CGImageMetadataPropertyGetSchema(v5);
        IIO_dump@"   schema: %s\n", v40;
        v41 = v4;
        do
        {
          ImageIOLog("    ");
          --v41;
        }

        while (v41);
      }

      SuggestedPrefix = CGImageMetadataPropertyGetSuggestedPrefix(v5);
      IIO_dump@"            prefix: %s\n", SuggestedPrefix;
      if (v4 < 1)
      {
        PropertyName = CGImageMetadataPropertyGetPropertyName(v5);
        IIO_dump@"          property: %s\n", PropertyName;
      }

      else
      {
        v46 = v4;
        do
        {
          ImageIOLog("    ");
          --v46;
        }

        while (v46);
        v48 = CGImageMetadataPropertyGetPropertyName(v5);
        IIO_dump@"          property: %s\n", v48;
        v49 = v4;
        do
        {
          ImageIOLog("    ");
          --v49;
        }

        while (v49);
      }

      fwrite("             value: \n", 0x15uLL, 1uLL, *MEMORY[0x1E69E9848]);
      a1 = CGImageMetadataPropertyGetValue(v5);
      a2 = v4 + 1;
    }

    else
    {
      if (v6 != CGImageMetadataValueGetTypeID())
      {
        if (v6)
        {
          v42 = CFCopyDescription(v5);
          if (v42)
          {
            v43 = v42;
            IIO_dump@"%s\n", v42;

            CFRelease(v43);
          }
        }

        else
        {
          ImageIOLog("*** valueType is 0\n");
          ImageIOLog("    value: %p\n", v5);
        }

        return;
      }

      a1 = CGImageMetadataValueGetValue(v5);
      a2 = v4 - 2;
    }

    a3 = 0;
  }

  ImageIOLog("(null)\n");
}

CFComparisonResult keySort(CFTypeRef *a1, CFStringRef *a2)
{
  v4 = CFGetTypeID(*a1);
  if (v4 == CFStringGetTypeID() && (v5 = CFGetTypeID(*a2), v5 == CFStringGetTypeID()))
  {
    return CFStringCompare(*a1, *a2, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t std::string::basic_string[abi:fe200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:fe200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

void IIOMetadata_Tag::setName(IIOMetadata_Tag *this, const __CFString *a2)
{
  v2 = *(this + 4);
  *(this + 4) = CFStringCreateCopy(*MEMORY[0x1E695E480], a2);
  if (v2)
  {

    CFRelease(v2);
  }
}

CFStringRef IIOMetadata_Tag::createPathWithChildPath(IIOMetadata_Tag *this, const __CFString *a2)
{
  v4 = *MEMORY[0x1E695E480];
  result = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@:%@", *(this + 3), *(this + 4));
  if (result)
  {
    v6 = result;
    CharacterAtIndex = CFStringGetCharacterAtIndex(a2, 0);
    v8 = @"%@.%@";
    if (CharacterAtIndex == 46 || CharacterAtIndex == 63)
    {
      v8 = @"%@%@";
    }

    if (*(this + 10) == 6)
    {
      v10 = CFStringCreateWithFormat(v4, 0, v8, v6, a2);
    }

    else
    {
      v10 = CFStringCreateWithFormat(v4, 0, @"%@%@", v6, a2);
    }

    v11 = v10;
    CFRelease(v6);
    return v11;
  }

  return result;
}

void CGImageMetadataTagSetName(uint64_t a1, const __CFString *a2)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      IIOMetadata_Tag::setName(v2, a2);
    }
  }
}

uint64_t CGImageMetadataTagSetValueType(uint64_t result, int a2)
{
  if (result)
  {
    v2 = *(result + 24);
    if (v2)
    {
      *(v2 + 40) = a2;
    }
  }

  return result;
}

uint64_t CGImageMetadataTagGetNamespace(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 24);
    if (v1)
    {
      return *(v1 + 16);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CGImageMetadataType CGImageMetadataTagGetType(CGImageMetadataTagRef tag)
{
  IIOInitDebugFlags();
  if ((~gIIODebugFlags & 0x3000) == 0)
  {
    ImageIODebugOptions(3, "A", "CGImageMetadataTagGetType", 0, 0, -1, 0);
  }

  if (tag && (v2 = *(tag + 3)) != 0)
  {
    return *(v2 + 40);
  }

  else
  {
    return -1;
  }
}

uint64_t CGImageMetadataTagGetPrefix(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 24);
    if (v1)
    {
      return *(v1 + 24);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CFArrayRef CGImageMetadataTagCopyQualifiers(CGImageMetadataTagRef tag)
{
  IIOInitDebugFlags();
  if ((~gIIODebugFlags & 0x3000) == 0)
  {
    ImageIODebugOptions(3, "A", "CGImageMetadataTagCopyQualifiers", 0, 0, -1, 0);
  }

  if (!tag)
  {
    return 0;
  }

  v2 = *(tag + 3);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 56);
  if (!v3)
  {
    return 0;
  }

  v4 = *MEMORY[0x1E695E480];

  return CFArrayCreateCopy(v4, v3);
}

uint64_t CGImageMetadataTagCreateFromImageProperty(const void *a1, const void *a2, uint64_t a3)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  if (a1)
  {
    v6 = CFGetTypeID(a1);
    TypeID = CFStringGetTypeID();
    if (a2)
    {
      if (v6 == TypeID)
      {
        v8 = CFGetTypeID(a2);
        v9 = CFStringGetTypeID();
        if (a3)
        {
          if (v8 == v9)
          {
            v12[0] = MEMORY[0x1E69E9820];
            v12[1] = 0x40000000;
            v12[2] = __CGImageMetadataTagCreateFromImageProperty_block_invoke;
            v12[3] = &unk_1E6F0B8D0;
            v12[4] = &v13;
            v12[5] = a1;
            v12[6] = a2;
            v12[7] = a3;
            XMPMappingIterateUsingBlock(v12);
          }
        }
      }
    }
  }

  v10 = v14[3];
  _Block_object_dispose(&v13, 8);
  return v10;
}

void sub_18608EEE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CGImageMetadataTagCreateFromImageProperty_block_invoke(uint64_t a1, CFStringRef **a2, _BYTE *a3)
{
  result = CFStringCompare(*(a1 + 40), **a2, 0);
  if (!result)
  {
    result = CFStringCompare(*(a1 + 48), *a2[1], 0);
    if (!result)
    {
      result = CGImageMetadataTagCreate(*a2[3], 0, *a2[4], kCGImageMetadataTypeDefault, *(a1 + 56));
      *(*(*(a1 + 32) + 8) + 24) = result;
      *a3 = 1;
    }
  }

  return result;
}

CGImageMetadataTagRef CGImageMetadataTagCopy(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 24);
  v2 = *(v1 + 40);
  if ((v2 - 2) >= 4)
  {
    if (v2 == 6)
    {
      v3 = *MEMORY[0x1E695E480];
      Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], *(v1 + 48));
    }

    else
    {
      if (v2 != 1)
      {
        return 0;
      }

      v3 = *MEMORY[0x1E695E480];
      Copy = CFStringCreateCopy(*MEMORY[0x1E695E480], *(v1 + 48));
    }
  }

  else
  {
    v3 = *MEMORY[0x1E695E480];
    Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], *(v1 + 48));
  }

  v5 = Copy;
  if (!Copy)
  {
    return 0;
  }

  v6 = CGImageMetadataTagCreate(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), Copy);
  CFRelease(v5);
  if (v6)
  {
    v7 = *(v1 + 56);
    if (v7)
    {
      v8 = *(v6 + 3);
      *(v8 + 56) = CFArrayCreateMutableCopy(v3, 0, v7);
    }
  }

  return v6;
}

CFStringRef _CGImageMetadataTagCopyFormattingDescription(CFTypeRef cf, const __CFDictionary *a2)
{
  if (!cf || *MEMORY[0x1E695E738] == cf)
  {
    return 0;
  }

  v3 = CFGetTypeID(cf);
  if (CGImageMetadataTagGetTypeID::once != -1)
  {
    IIOMetadata_Tag::copyTagValue();
  }

  if (v3 != CGImageMetadataTagGetTypeID::id)
  {
    return 0;
  }

  v4 = *(cf + 3);
  v5 = v4[3];
  v6 = v4[4];
  v7 = v4[6];
  v8 = !v5 || v6 == 0;
  if (v8 || v7 == 0)
  {
    return 0;
  }

  v11 = v4[7];
  v12 = *MEMORY[0x1E695E480];
  if (v11)
  {
    return CFStringCreateWithFormat(v12, 0, @"%@:%@ = %@, Qualifiers = %@", v5, v6, v7, v11);
  }

  else
  {
    return CFStringCreateWithFormat(v12, 0, @"%@:%@ = %@", v5, v6, v7);
  }
}

CFStringRef _CGImageMetadataTagCopyDescription(CFTypeRef cf)
{
  if (!cf || *MEMORY[0x1E695E738] == cf)
  {
    return 0;
  }

  v2 = CFGetTypeID(cf);
  if (CGImageMetadataTagGetTypeID::once != -1)
  {
    IIOMetadata_Tag::copyTagValue();
  }

  if (v2 != CGImageMetadataTagGetTypeID::id)
  {
    return 0;
  }

  v3 = *(cf + 3);
  v4 = v3[3];
  v5 = v3[4];
  v6 = v3[6];
  v7 = !v4 || v5 == 0;
  if (v7 || v6 == 0)
  {
    return 0;
  }

  v10 = v3[7];
  v11 = *MEMORY[0x1E695E480];
  if (v10)
  {
    return CFStringCreateWithFormat(v11, 0, @"<CGImageMetadataTag %p> %@:%@ = %@, Qualifiers = %@", cf, v4, v5, v6, v10);
  }

  else
  {
    return CFStringCreateWithFormat(v11, 0, @"<CGImageMetadataTag %p> %@:%@ = %@", cf, v4, v5, v6);
  }
}

void __CGInitializeImageIO_block_invoke_3()
{
  if (*&gFirstCallTime == 0.0)
  {
    ImageIOLogInternal("⏹️   ImageIO: not launching XPCService (no ImageIO call within first 8 sec)...\n", *&gFirstCallTime);
    IIONumber::IIONumber(v0, -2.0);
    CFPreferencesSetAppValue(@"IIO_LaunchInfo", value, *MEMORY[0x1E695E8A8]);
    IIONumber::~IIONumber(v0);
  }
}

void sub_18608F2A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

void __CGInitializeImageIO_block_invoke_4()
{
  ImageIOLogInternal("✳️   ImageIO: launching XPCService: %g\n", *&gSavedFirstCallTime);
  if (IIOXPCClient::GetIIOXPCClient(void)::xpcClientCreate != -1)
  {
    __CGInitializeImageIO_block_invoke_2_cold_1();
  }

  v0 = IIOXPCClient::GetIIOXPCClient(void)::gIIOXPCClient;
  if (IIOIsOOPEnabled(0))
  {

    IIOXPCClient::wakeup_xpc_service(v0);
  }
}

void IIOXPCClient::wakeup_xpc_service(IIOXPCClient *this)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN12IIOXPCClient18wakeup_xpc_serviceEv_block_invoke;
  block[3] = &__block_descriptor_tmp_84;
  block[4] = this;
  if (IIOXPCClient::wakeup_xpc_service(void)::onceToken != -1)
  {
    dispatch_once(&IIOXPCClient::wakeup_xpc_service(void)::onceToken, block);
  }
}

void IIOXPCClient::~IIOXPCClient(IIOXPCClient *this)
{
  *this = &unk_1EF4DC120;
  pthread_mutex_destroy((this + 32));
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }
}

{
  IIOXPCClient::~IIOXPCClient(this);

  JUMPOUT(0x186602850);
}

void IIOXPCClient::connection_set_event_handler(IIOXPCClient *this, _xpc_connection_s *a2, dispatch_queue_s *a3)
{
  if (!a2)
  {
    IIOXPCClient::connection_set_event_handler();
  }

  IIOXPCLog("connection_set_event_handler %p\n", a2);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 0x40000000;
  handler[2] = ___ZN12IIOXPCClient28connection_set_event_handlerEP17_xpc_connection_sP16dispatch_queue_s_block_invoke;
  handler[3] = &__block_descriptor_tmp_40_0;
  handler[4] = this;
  handler[5] = a2;
  xpc_connection_set_event_handler(a2, handler);
  xpc_connection_resume(a2);
}

void ___ZN12IIOXPCClient28connection_set_event_handlerEP17_xpc_connection_sP16dispatch_queue_s_block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  name = xpc_connection_get_name(*(a1 + 40));
  IIOXPCLog("xpc connection  event handler called for %s\n", name);
  if (MEMORY[0x186604600](a2) == MEMORY[0x1E69E9E98])
  {
    v6 = *MEMORY[0x1E69E9E28];
    string = xpc_dictionary_get_string(a2, *MEMORY[0x1E69E9E28]);
    if (a2 == MEMORY[0x1E69E9E18])
    {
      v10 = string;
      v11 = xpc_connection_get_name(*(a1 + 40));
      ImageIOLog("❌ ImageIOXPC: connection interrupted: %s (%s)\n", v11, v10);
      kdebug_trace();
      *(v4 + 103) = 0;
    }

    else
    {
      v8 = MEMORY[0x1E69E9E20];
      v9 = xpc_connection_get_name(*(a1 + 40));
      if (a2 == v8)
      {
        ImageIOLog("❌ XPC_ERROR_CONNECTION_INVALID: %s\n", v9);

        kdebug_trace();
      }

      else
      {
        xpc_dictionary_get_string(a2, v6);
        IIOXPCLog("❌ ImageIOXPC: connection %s received unexpected error event: %s\n");
      }
    }
  }

  else
  {
    xpc_connection_get_name(*(a1 + 40));
    IIOXPCLog("❌ ImageIOXPC: received unexpected event in connection handler for service %s\n");
  }
}

double iio_xpc_get_CGRect_from_xpcObj(void *a1)
{
  if (xpc_dictionary_get_count(a1) != 4)
  {
    return 0.0;
  }

  v2 = xpc_dictionary_get_double(a1, "origin_x");
  xpc_dictionary_get_double(a1, "origin_y");
  xpc_dictionary_get_double(a1, "size_width");
  xpc_dictionary_get_double(a1, "size_height");
  return v2;
}

void iio_xpc_get_CGSize_from_xpcObj(void *a1)
{
  if (xpc_dictionary_get_count(a1) == 2)
  {
    xpc_dictionary_get_double(a1, "size_width");
    xpc_dictionary_get_double(a1, "size_height");
  }
}

void IIOXPCClient::addProcInfo(IIOXPCClient *this, void *a2)
{
  v3 = getpid();
  xpc_dictionary_set_uint64(a2, "iio_xpc_msg_pid", v3);
  v4 = getprogname();

  xpc_dictionary_set_string(a2, "iio_xpc_msg_name", v4);
}

uint64_t ___ZN12IIOXPCClient18wakeup_xpc_serviceEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  kdebug_trace();
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2)
  {
    v3 = v2;
    if ((*(v1 + 101) & 1) == 0)
    {
      xpc_dictionary_set_uint64(v2, "iio_xpc_message_id", 8uLL);
      xpc_dictionary_set_uint64(v3, "iio_xpc_msg_debugflags", gIIODebugFlags);
      IIOXPCClient::addProcInfo(v4, v3);
      v5 = dispatch_queue_create("com.apple.iio.queue", MEMORY[0x1E69E96A8]);
      if (!v5)
      {
        ___ZN12IIOXPCClient18wakeup_xpc_serviceEv_block_invoke_cold_1();
      }

      v6 = v5;
      v7 = IIOXPCClient::xpc_service_connection(v1);
      xpc_connection_send_message_with_reply(v7, v3, v6, &__block_literal_global_83);
      dispatch_release(v6);
    }

    xpc_release(v3);
  }

  return kdebug_trace();
}

xpc_object_t IIOXPCClient::send_message_with_reply(IIOXPCClient *this, _xpc_connection_s *a2, dispatch_queue_s *a3, xpc_object_t xdict)
{
  atomic_fetch_add(&IIOXPCClient::send_message_with_reply(_xpc_connection_s *,dispatch_queue_s *,void *)::gTransactionID, 1uLL);
  v7 = atomic_load(&IIOXPCClient::send_message_with_reply(_xpc_connection_s *,dispatch_queue_s *,void *)::gTransactionID);
  xpc_dictionary_set_uint64(xdict, "iio_xpc_transacion_id", v7);
  v9 = atomic_load(&IIOXPCClient::send_message_with_reply(_xpc_connection_s *,dispatch_queue_s *,void *)::gTransactionID);
  if (v9 == 1)
  {
    gFirstCallTime = CFAbsoluteTimeGetCurrent();
    ImageIOLogInternal("⏹️   ImageIO: first ImageIO call after %g seconds [previously: %g]...\n", *&gFirstCallTime - *&gWakeupTime, *&gSavedFirstCallTime);
    v10 = *&gFirstCallTime - *&gWakeupTime;
    if (*&gSavedFirstCallTime >= 0.0)
    {
      if (*&gSavedFirstCallTime - v10 <= 0.01)
      {
LABEL_9:
        v8 = kdebug_trace();
        goto LABEL_10;
      }

      *&gSavedFirstCallTime = *&gFirstCallTime - *&gWakeupTime;
      ImageIOLogInternal("⏹️   ImageIO: updating first IIO ImageIO to %g\n", v10);
      IIONumber::IIONumber(v20, *&gSavedFirstCallTime);
      CFPreferencesSetAppValue(@"IIO_LaunchInfo", value, *MEMORY[0x1E695E8A8]);
    }

    else
    {
      if (v10 > 8.0)
      {
        v10 = 8.0;
      }

      gSavedFirstCallTime = *&v10;
      ImageIOLogInternal("⏹️   ImageIO: updating first ImageIO call to %g\n", v10);
      IIONumber::IIONumber(v20, *&gSavedFirstCallTime);
      CFPreferencesSetAppValue(@"IIO_LaunchInfo", value, *MEMORY[0x1E695E8A8]);
    }

    IIONumber::~IIONumber(v20);
    goto LABEL_9;
  }

LABEL_10:
  IIOXPCClient::addProcInfo(v8, xdict);
  if (IIO_CreateIdentityToken())
  {
    xpc_dictionary_set_mach_send();
  }

  IIOSavePermissionsToXPCObject(xdict);
  IIOSaveAllowedTypesToXPCObject(xdict);
  *(this + 101) = 1;
  v11 = xpc_connection_send_message_with_reply_sync(a2, xdict);
  empty = v11;
  if (v11)
  {
    v13 = MEMORY[0x186604600](v11);
    if (v13 == MEMORY[0x1E69E9E98])
    {
      kdebug_trace();
      string = xpc_dictionary_get_string(empty, *MEMORY[0x1E69E9E28]);
      LogFault("send_message_with_reply", 669, "❌ Error: ImageIOXPCService send message error: %s\n", string);
      xpc_release(empty);
      empty = xpc_dictionary_create_empty();
      v14 = iio_xpc_add_message_dict(empty);
      if (!v14)
      {
LABEL_20:
        uint64 = xpc_dictionary_get_uint64(xdict, "iio_xpc_message_id");
        xpc_dictionary_set_uint64(empty, "iio_xpc_message_id", uint64);
        v18 = xpc_dictionary_get_uint64(xdict, "iio_xpc_transacion_id");
        xpc_dictionary_set_uint64(empty, "iio_xpc_transacion_id", v18);
        return empty;
      }

      v15 = 0x70000000FFFFFA88;
    }

    else
    {
      if (IIOXPCClient::replyIsValid(v13, empty))
      {
        goto LABEL_20;
      }

      xpc_release(empty);
      empty = xpc_dictionary_create_empty();
      v14 = iio_xpc_add_message_dict(empty);
      if (!v14)
      {
        goto LABEL_20;
      }

      v15 = 0x70000000FFFFFA87;
    }

    xpc_dictionary_set_int64(v14, "iio_xpc_msg_error", v15);
    goto LABEL_20;
  }

  return empty;
}

void sub_18608FC4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

xpc_object_t iio_xpc_add_message_dict(void *a1)
{
  dictionary = xpc_dictionary_get_dictionary(a1, "iio_xpc_msg");
  if (!dictionary)
  {
    dictionary = xpc_dictionary_create_empty();
    xpc_dictionary_set_value(a1, "iio_xpc_msg", dictionary);
    xpc_release(dictionary);
  }

  return dictionary;
}

void iio_xpc_dictionary_set_error_code(void *a1, unsigned int a2)
{
  if (a1)
  {
    xpc_dictionary_set_int64(a1, "iio_xpc_msg_error", a2 | 0x7000000000000000);
  }
}

uint64_t IIOXPCClient::replyIsValid(IIOXPCClient *this, void *a2)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 1;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  if (MEMORY[0x186604600](a2) == MEMORY[0x1E69E9E80])
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = ___ZN12IIOXPCClient12replyIsValidEPv_block_invoke;
    v6[3] = &unk_1E6F0BA38;
    v6[4] = &v7;
    v6[5] = &v11;
    xpc_dictionary_apply(a2, v6);
    v3 = v12;
    if (*(v8 + 6) <= 1u)
    {
      v4 = *(v12 + 24);
      goto LABEL_6;
    }

    v4 = 0;
  }

  else
  {
    v4 = 0;
    v3 = v12;
  }

  *(v3 + 24) = 0;
LABEL_6:
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
  return v4 & 1;
}

void sub_18608FDF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN12IIOXPCClient12replyIsValidEPv_block_invoke(uint64_t a1, char *__s)
{
  v4 = strspn(__s, "abcdefghijklmnopqrstuvwxyz0123456789_");
  v5 = strlen(__s);
  v6 = v4 == v5 && v5 >= 9;
  if (v6 && !strncmp("iio_xpc_", __s, 8uLL))
  {
    if (!strncmp(__s, "iio_xpc_plugin_data", 0x13uLL))
    {
      ++*(*(*(a1 + 32) + 8) + 24);
    }

    if (strncmp("iio_xpc_message_id", __s, 0x12uLL) && strncmp("iio_xpc_transacion_id", __s, 0x15uLL))
    {
      return 1;
    }
  }

  result = 0;
  *(*(*(a1 + 40) + 8) + 24) = 0;
  return result;
}

dispatch_queue_t IIOXPCClient::xpc_service_queue(IIOXPCClient *this)
{
  if (*(this + 102) == 1)
  {
    return *(this + 2);
  }

  *(this + 102) = 1;
  IIOXPCLog("create xpc service queue\n");
  result = dispatch_queue_create("com.apple.ImageIOXPCService.queue", 0);
  *(this + 2) = result;
  return result;
}

uint64_t IIOXPCClient::xpc_service_connection(IIOXPCClient *this)
{
  pthread_mutex_lock((this + 32));
  if ((*(this + 103) & 1) == 0)
  {
    *(this + 103) = 1;
    IIOXPCLog("create xpc service connection (_connection: %p)\n", *(this + 3));
    v2 = xpc_connection_create("com.apple.ImageIOXPCService", 0);
    *(this + 3) = v2;
    IIOXPCClient::connection_set_event_handler(this, v2, v3);
  }

  pthread_mutex_unlock((this + 32));
  return *(this + 3);
}

BOOL iio_xpc_dictionary_add_databuffer(void *a1, const char *a2, void *buffer, size_t size)
{
  v6 = dispatch_data_create(buffer, size, 0, 0);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = xpc_data_create_with_dispatch_data(v6);
  v9 = v8 != 0;
  if (v8)
  {
    v10 = v8;
    xpc_dictionary_set_value(a1, a2, v8);
    xpc_release(v10);
  }

  dispatch_release(v7);
  return v9;
}

BOOL iio_xpc_dictionary_add_CFData(void *a1, const char *a2, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);

  return iio_xpc_dictionary_add_databuffer(a1, a2, BytePtr, Length);
}

uint64_t iio_xpc_get_IIOHeaderOptions_from_xpcObj(void *a1, const char *a2, uint64_t a3)
{
  length = 0;
  data = xpc_dictionary_get_data(a1, a2, &length);
  if (data && length == 24)
  {
    v5 = *data;
    *(a3 + 16) = data[2];
    *a3 = v5;
  }

  return 1;
}

void *iio_xpc_add_xpcObj_from_CGRect(double a1, double a2, double a3, double a4)
{
  empty = xpc_dictionary_create_empty();
  v9 = empty;
  if (empty)
  {
    xpc_dictionary_set_double(empty, "origin_x", a1);
    xpc_dictionary_set_double(v9, "origin_y", a2);
    xpc_dictionary_set_double(v9, "size_width", a3);
    xpc_dictionary_set_double(v9, "size_height", a4);
  }

  return v9;
}

void *iio_xpc_add_xpcObj_from_CGSize(double a1, double a2)
{
  empty = xpc_dictionary_create_empty();
  v5 = empty;
  if (empty)
  {
    xpc_dictionary_set_double(empty, "size_width", a1);
    xpc_dictionary_set_double(v5, "size_height", a2);
  }

  return v5;
}

void iio_xpc_dictionary_addCGRect(void *a1, const char *a2, double a3, double a4, double a5, double a6)
{
  v8 = iio_xpc_add_xpcObj_from_CGRect(a3, a4, a5, a6);
  if (v8)
  {
    v9 = v8;
    xpc_dictionary_set_value(a1, a2, v8);

    xpc_release(v9);
  }
}

double iio_xpc_dictionary_get_CGRect(void *a1, const char *a2)
{
  value = xpc_dictionary_get_value(a1, a2);

  return iio_xpc_get_CGRect_from_xpcObj(value);
}

void iio_xpc_dictionary_addCGSize(void *a1, const char *a2, double a3, double a4)
{
  v6 = iio_xpc_add_xpcObj_from_CGSize(a3, a4);
  if (v6)
  {
    v7 = v6;
    xpc_dictionary_set_value(a1, a2, v6);

    xpc_release(v7);
  }
}

void iio_xpc_dictionary_get_CGSize(void *a1, const char *a2)
{
  value = xpc_dictionary_get_value(a1, a2);

  iio_xpc_get_CGSize_from_xpcObj(value);
}

void iio_xpc_dictionary_add_GlobalInfo(void *a1, const __CFData *a2, unsigned int a3)
{
  if (a2)
  {
    empty = xpc_dictionary_create_empty();
    iio_xpc_dictionary_add_CFData(empty, "iio_xpc_plugin_global_info_data", a2);
    Length = CFDataGetLength(a2);
    xpc_dictionary_set_uint64(empty, "iio_xpc_plugin_global_info_data_size", Length);
    xpc_dictionary_set_uint64(empty, "iio_xpc_plugin_global_info_ostype", a3);
    xpc_dictionary_set_value(a1, "iio_xpc_plugin_global_info", empty);

    xpc_release(empty);
  }
}

xpc_object_t iio_xpc_dictionary_get_GlobalInfo(void *a1, uint64_t *a2)
{
  length = 0;
  result = xpc_dictionary_get_dictionary(a1, "iio_xpc_plugin_global_info");
  if (!result)
  {
    v7 = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_9;
  }

  v4 = result;
  data = xpc_dictionary_get_data(result, "iio_xpc_plugin_global_info_data", &length);
  uint64 = xpc_dictionary_get_uint64(v4, "iio_xpc_plugin_global_info_data_size");
  if (uint64 == length)
  {
    v7 = uint64;
  }

  else
  {
    v7 = 0;
  }

  if (uint64 == length)
  {
    result = data;
  }

  else
  {
    result = 0;
  }

  if (a2)
  {
LABEL_9:
    *a2 = v7;
  }

  return result;
}

xpc_object_t iio_xpc_dictionary_copy_CFDictionary(void *a1, const char *a2)
{
  result = xpc_dictionary_get_dictionary(a1, a2);
  if (result)
  {

    return _CFXPCCreateCFObjectFromXPCObject();
  }

  return result;
}

uint64_t iio_xpc_dictionary_add_CFDictionary(void *a1, const char *a2)
{
  v4 = _CFXPCCreateXPCObjectFromCFObject();
  if (!v4)
  {
    return 4294967246;
  }

  v5 = v4;
  xpc_dictionary_set_value(a1, a2, v4);
  xpc_release(v5);
  return 0;
}

uint64_t iio_xpc_dictionary_get_error_code(void *a1)
{
  v1 = 4294965895;
  if (a1)
  {
    int64 = xpc_dictionary_get_int64(a1, "iio_xpc_msg_error");
    if ((~int64 & 0x7000000000000000) != 0)
    {
      return 4294965895;
    }

    else
    {
      return int64;
    }
  }

  return v1;
}

xpc_object_t iio_xpc_add_source_dict(void *a1)
{
  dictionary = xpc_dictionary_get_dictionary(a1, "iio_xpc_src");
  if (!dictionary)
  {
    dictionary = xpc_dictionary_create_empty();
    xpc_dictionary_set_value(a1, "iio_xpc_src", dictionary);
    xpc_release(dictionary);
  }

  return dictionary;
}

xpc_object_t iio_xpc_add_plugin_dict(void *a1)
{
  dictionary = xpc_dictionary_get_dictionary(a1, "iio_xpc_plugin");
  if (!dictionary)
  {
    dictionary = xpc_dictionary_create_empty();
    xpc_dictionary_set_value(a1, "iio_xpc_plugin", dictionary);
    xpc_release(dictionary);
  }

  return dictionary;
}

xpc_object_t iio_xpc_add_callback_dict(void *a1)
{
  dictionary = xpc_dictionary_get_dictionary(a1, "iio_xpc_cb");
  if (!dictionary)
  {
    dictionary = xpc_dictionary_create_empty();
    xpc_dictionary_set_value(a1, "iio_xpc_cb", dictionary);
    xpc_release(dictionary);
  }

  return dictionary;
}

xpc_object_t iio_xpc_add_permission_dict(void *a1)
{
  dictionary = xpc_dictionary_get_dictionary(a1, "iio_xpc_permission");
  if (!dictionary)
  {
    dictionary = xpc_dictionary_create_empty();
    xpc_dictionary_set_value(a1, "iio_xpc_permission", dictionary);
    xpc_release(dictionary);
  }

  return dictionary;
}

uint64_t _cg_png_set_palette_to_rgb(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 80);
    if ((v1 & 0x40) != 0)
    {
      return png_app_error(result, "invalid after png_start_read_image or png_read_update_info");
    }

    else
    {
      *(result + 80) = v1 | 0x4000;
      *(result + 88) |= 0x2001000u;
    }
  }

  return result;
}

unsigned int *png_do_gray_to_rgb(unsigned int *result, unint64_t a2, unint64_t a3)
{
  v3 = *(result + 17);
  if (v3 >= 8)
  {
    v4 = *(result + 16);
    if ((v4 & 2) == 0)
    {
      v5 = *result;
      v6 = *result;
      if (v4 == 4)
      {
        if (v3 == 8)
        {
          if (v6)
          {
            v15 = (a2 + 2 * v5 - 1);
            v16 = &v15[2 * v5];
            while (v15 < a3)
            {
              if (v15 < a2)
              {
                break;
              }

              if (v16 >= a3)
              {
                break;
              }

              if (v16 < a2)
              {
                break;
              }

              v18 = *v15;
              v17 = v15 - 1;
              *v16 = v18;
              if (v17 >= a3)
              {
                break;
              }

              if (v17 < a2)
              {
                break;
              }

              v19 = v16 - 1;
              if (v19 >= a3)
              {
                break;
              }

              if (v19 < a2)
              {
                break;
              }

              v20 = *v17;
              *v19 = *v17;
              v21 = v19 - 1;
              if (v21 >= a3)
              {
                break;
              }

              if (v21 < a2)
              {
                break;
              }

              *v21 = v20;
              v22 = v21 - 1;
              if (v22 >= a3 || v22 < a2)
              {
                break;
              }

              v23 = *v17;
              v15 = v17 - 1;
              *v22 = v23;
              v16 = v22 - 1;
              if (!--v6)
              {
                goto LABEL_88;
              }
            }

            goto LABEL_92;
          }
        }

        else if (v6)
        {
          v34 = (a2 + 4 * v5 - 1);
          v35 = &v34[4 * v5];
          while (v34 < a3)
          {
            if (v34 < a2)
            {
              break;
            }

            if (v35 >= a3)
            {
              break;
            }

            if (v35 < a2)
            {
              break;
            }

            v37 = *v34;
            v36 = v34 - 1;
            *v35 = v37;
            if (v36 >= a3)
            {
              break;
            }

            if (v36 < a2)
            {
              break;
            }

            v38 = v35 - 1;
            if (v38 >= a3)
            {
              break;
            }

            if (v38 < a2)
            {
              break;
            }

            v40 = *v36;
            v39 = v36 - 1;
            *v38 = v40;
            if (v39 >= a3)
            {
              break;
            }

            if (v39 < a2)
            {
              break;
            }

            v41 = v38 - 1;
            if (v41 >= a3)
            {
              break;
            }

            if (v41 < a2)
            {
              break;
            }

            v43 = *v39;
            v42 = v39 - 1;
            *v41 = v43;
            if (v42 >= a3)
            {
              break;
            }

            if (v42 < a2)
            {
              break;
            }

            v44 = v41 - 1;
            if (v44 >= a3)
            {
              break;
            }

            if (v44 < a2)
            {
              break;
            }

            *v44 = *v42;
            v45 = v44 - 1;
            if (v45 >= a3)
            {
              break;
            }

            if (v45 < a2)
            {
              break;
            }

            *v45 = v42[1];
            v46 = v45 - 1;
            if (v46 >= a3)
            {
              break;
            }

            if (v46 < a2)
            {
              break;
            }

            *v46 = *v42;
            v47 = v46 - 1;
            if (v47 >= a3)
            {
              break;
            }

            if (v47 < a2)
            {
              break;
            }

            *v47 = v42[1];
            v48 = v47 - 1;
            if (v48 >= a3 || v48 < a2)
            {
              break;
            }

            v49 = *v42;
            v34 = v42 - 1;
            *v48 = v49;
            v35 = v48 - 1;
            if (!--v6)
            {
              goto LABEL_88;
            }
          }

          goto LABEL_92;
        }
      }

      else if (!*(result + 16))
      {
        if (v3 == 8)
        {
          if (v6)
          {
            v7 = (a2 + v5 - 1);
            v8 = &v7[2 * v5];
            while (v7 < a3 && v7 >= a2 && v8 < a3 && v8 >= a2)
            {
              v9 = *v7;
              *v8 = *v7;
              v10 = v8 - 1;
              if (v10 >= a3 || v10 < a2)
              {
                break;
              }

              *v10 = v9;
              v12 = v10 - 1;
              if (v12 >= a3 || v12 < a2)
              {
                break;
              }

              v14 = *v7--;
              *v12 = v14;
              v8 = v12 - 1;
              if (!--v6)
              {
                goto LABEL_88;
              }
            }

LABEL_92:
            __break(0x5519u);
            return result;
          }
        }

        else if (v6)
        {
          v24 = (a2 + 2 * v5 - 1);
          v25 = &v24[4 * v5];
          while (v24 < a3)
          {
            if (v24 < a2)
            {
              break;
            }

            if (v25 >= a3)
            {
              break;
            }

            if (v25 < a2)
            {
              break;
            }

            v27 = *v24;
            v26 = v24 - 1;
            *v25 = v27;
            if (v26 >= a3)
            {
              break;
            }

            if (v26 < a2)
            {
              break;
            }

            v28 = v25 - 1;
            if (v28 >= a3)
            {
              break;
            }

            if (v28 < a2)
            {
              break;
            }

            *v28 = *v26;
            v29 = v28 - 1;
            if (v29 >= a3)
            {
              break;
            }

            if (v29 < a2)
            {
              break;
            }

            *v29 = v26[1];
            v30 = v29 - 1;
            if (v30 >= a3)
            {
              break;
            }

            if (v30 < a2)
            {
              break;
            }

            *v30 = *v26;
            v31 = v30 - 1;
            if (v31 >= a3)
            {
              break;
            }

            if (v31 < a2)
            {
              break;
            }

            *v31 = v26[1];
            v32 = v31 - 1;
            if (v32 >= a3 || v32 < a2)
            {
              break;
            }

            v33 = *v26;
            v24 = v26 - 1;
            *v32 = v33;
            v25 = v32 - 1;
            if (!--v6)
            {
              goto LABEL_88;
            }
          }

          goto LABEL_92;
        }
      }

LABEL_88:
      v50 = *(result + 18) + 2;
      *(result + 18) = v50;
      *(result + 16) |= 2u;
      v51 = *(result + 17) * v50;
      *(result + 19) = v51;
      v52 = (v51 * v5 + 7) >> 3;
      v53 = v5 * (v51 >> 3);
      if (v51 < 8u)
      {
        v53 = v52;
      }

      *(result + 1) = v53;
    }
  }

  return result;
}

void yyerror(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  __s1[0] = 0;
  __s1[1] = &a9;
  vasprintf(__s1, a2, &a9);
  v10 = __s1[0];
  if (__s1[0])
  {
    if (a1 && (v11 = *(a1 + 16)) != 0)
    {
      if (!*(v11 + 16))
      {
        *(v11 + 16) = strdup(__s1[0]);
      }
    }

    else
    {
      fputs(__s1[0], *MEMORY[0x1E69E9848]);
      v10 = __s1[0];
    }

    free(v10);
  }
}

void IIO_Reader_OpenEXR::createReadPlugin()
{
  operator new();
}

{
  operator new();
}

BOOL IIO_Reader_OpenEXR::testHeader(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = AppleEXREnabled();
  if (result)
  {
    return gFunc_axr_introspect_data(a2, a3, 0) == 0;
  }

  return result;
}

uint64_t IIO_Reader_OpenEXR::getImageCount(IIO_Reader_OpenEXR *this, IIOImageReadSession *a2, IIODictionary *a3, CGImageSourceStatus *a4, unsigned int *a5)
{
  if (!AppleEXREnabled())
  {
    part_count = 1;
    if (!a5)
    {
      return 0;
    }

    goto LABEL_10;
  }

  v14 = 0;
  v7 = IIOImageReadSession::retainBytePointer(a2, &v14, 1);
  Size = IIOImageReadSession::getSize(a2);
  v13 = 0;
  v9 = gFunc_axr_data_create(v7, Size, &v13, 0, 0);
  if (v13)
  {
    name = gFunc_axr_error_get_name();
    LogError("getImageCount", 85, "*** axr_data_create failed: %s (%d)\n", name, v13);
  }

  if (v9)
  {
    part_count = gFunc_axr_data_get_part_count(v9);
    os_release(v9);
  }

  else
  {
    part_count = 0;
  }

  IIOImageReadSession::releaseBytePointer(a2, v14);
  if (a5)
  {
LABEL_10:
    *a5 = part_count;
  }

  return 0;
}

uint64_t IIO_Reader_OpenEXR::UpdateImageInfo(uint64_t a1, uint64_t *a2)
{
  view_count = gFunc_axr_logical_image_list_get_view_count();
  v17 = view_count;
  if (!view_count)
  {
    IIO_Reader_OpenEXR::UpdateImageInfo();
    return 4294967246;
  }

  v5 = 0;
  while (2)
  {
    memset(v27, 0, 72);
    v25 = 0u;
    *__p = 0u;
    *v23 = 0u;
    *v24 = 0u;
    memset(v22, 0, sizeof(v22));
    DWORD1(v22[0]) = v5;
    view_name = gFunc_axr_logical_image_list_get_view_name(a1, v5);
    MEMORY[0x186602520](v23, view_name);
    image_count = gFunc_axr_logical_image_list_get_image_count(a1, v5);
    v8 = image_count;
    if (!image_count)
    {
LABEL_23:
      v10 = 0;
      v15 = 0;
      goto LABEL_24;
    }

    v9 = 0;
    v10 = 1;
    while (1)
    {
      DWORD2(v22[0]) = v9;
      image_name = gFunc_axr_logical_image_list_get_image_name(a1, v5, v9);
      MEMORY[0x186602520](&v24[1], image_name);
      gFunc_axr_logical_image_list_get_image_info(&v18, a1, v5, v9, 1);
      *(&v27[3] + 8) = v21;
      *(&v27[2] + 8) = v20;
      *(&v27[1] + 8) = v19;
      *(v27 + 8) = v18;
      if (!v19)
      {
        goto LABEL_8;
      }

      if (v19 != 1)
      {
        break;
      }

      LOWORD(v22[0]) = 16;
LABEL_10:
      MEMORY[0x186602520](__p, "");
      for (i = 32; i != -1; --i)
      {
        if ((*(&v27[0] + 1) >> i))
        {
          v13 = "";
          if (i <= 0x11)
          {
            v13 = off_1E6F0BA58[i];
          }

          std::string::append(__p, v13);
        }
      }

      if (LODWORD(v27[3]) <= 3)
      {
        memset(&v27[3] + 4 * LODWORD(v27[3]) + 4, 255, (16 - 4 * LODWORD(v27[3])));
      }

      v14 = BYTE7(v27[0]);
      if (SBYTE7(v27[0]) < 0)
      {
        v14 = __p[1];
      }

      if (v14)
      {
        std::string::append(__p, " ");
      }

      std::vector<EXRPluginData>::push_back[abi:fe200100](a2, v22);
      v10 = ++v9 < v8;
      if (v9 == v8)
      {
        goto LABEL_23;
      }
    }

    if (v19 == 2)
    {
LABEL_8:
      LOWORD(v22[0]) = 32;
      goto LABEL_10;
    }

    LogError("UpdateImageInfo", 156, "*** ERROR: unexpected imageInfo.type: %d\n", DWORD2(v27[1]));
    v15 = 4294967246;
LABEL_24:
    if (SBYTE7(v27[0]) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24[1]);
    }

    if (SHIBYTE(v24[0]) < 0)
    {
      operator delete(v23[0]);
    }

    if (!v10)
    {
      if (++v5 == v17)
      {
        if (a2[1] == *a2)
        {
          return 4294967246;
        }

        else
        {
          return v15;
        }
      }

      continue;
    }

    return v15;
  }
}

void sub_186091094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  EXRPluginData::~EXRPluginData(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<EXRPluginData>::push_back[abi:fe200100](uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<EXRPluginData>::__emplace_back_slow_path<EXRPluginData const&>(a1, a2);
  }

  else
  {
    std::vector<EXRPluginData>::__construct_one_at_end[abi:fe200100]<EXRPluginData const&>(a1, a2);
    result = v3 + 168;
  }

  a1[1] = result;
  return result;
}

void EXRPluginData::~EXRPluginData(void **this)
{
  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }
}

uint64_t IIO_Reader_OpenEXR::updatePartInfo(IIO_Reader_OpenEXR *this, IIODictionary *a2, axr_data *a3, EXRPluginData *a4)
{
  gFunc_axr_data_get_part_info(&v29, a3, *(a4 + 31), 1);
  v5 = v29;
  v6 = HIDWORD(v29);
  v7 = v30;
  v8 = HIDWORD(v30);
  v10 = v31;
  v9 = HIDWORD(v31);
  v11 = v32;
  v20 = v34;
  v21 = v33;
  v13 = v35;
  v12 = v36;
  v14 = v37;
  v15 = v38;
  v17 = v39;
  v16 = v40;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  IIOArray::IIOArray(&v29);
  IIONumber::IIONumber(&v26, v5);
  IIOArray::addObject(&v29, &v26);
  IIONumber::~IIONumber(&v26);
  IIONumber::IIONumber(&v26, v7);
  IIOArray::addObject(&v29, &v26);
  IIONumber::~IIONumber(&v26);
  IIONumber::IIONumber(&v26, v6);
  IIOArray::addObject(&v29, &v26);
  IIONumber::~IIONumber(&v26);
  IIONumber::IIONumber(&v26, v8);
  IIOArray::addObject(&v29, &v26);
  IIONumber::~IIONumber(&v26);
  IIODictionary::setObjectForKey(a2, v30, "dataWindow");
  v26 = 0;
  v27 = 0;
  v28 = 0;
  IIOArray::IIOArray(&v26);
  IIONumber::IIONumber(&v23, v10);
  IIOArray::addObject(&v26, &v23);
  IIONumber::~IIONumber(&v23);
  IIONumber::IIONumber(&v23, v11);
  IIOArray::addObject(&v26, &v23);
  IIONumber::~IIONumber(&v23);
  IIONumber::IIONumber(&v23, v9);
  IIOArray::addObject(&v26, &v23);
  IIONumber::~IIONumber(&v23);
  IIONumber::IIONumber(&v23, v21);
  IIOArray::addObject(&v26, &v23);
  IIONumber::~IIONumber(&v23);
  IIODictionary::setObjectForKey(a2, v27, "displayWindow");
  name = gFunc_axr_compression_get_name(v20);
  IIOString::IIOString(&v23, name);
  IIODictionary::setObjectForKey(a2, v25, "compression");
  IIOString::~IIOString(&v23);
  if (v17 && *v17)
  {
    IIOString::IIOString(&v23, v17);
    IIODictionary::setObjectForKey(a2, v25, "name");
    IIOString::~IIOString(&v23);
  }

  if (v16 && *v16)
  {
    IIOString::IIOString(&v23, v16);
    IIODictionary::setObjectForKey(a2, v25, "view");
    IIOString::~IIOString(&v23);
  }

  IIONumber::IIONumber(&v23, v13);
  IIODictionary::setObjectForKey(a2, &v23, "AspectRatio");
  IIONumber::~IIONumber(&v23);
  IIONumber::IIONumber(&v23, v15);
  IIODictionary::setObjectForKey(a2, &v23, "screenWindowWidth");
  IIONumber::~IIONumber(&v23);
  v23 = 0;
  v24 = 0;
  v25 = 0;
  IIOArray::IIOArray(&v23);
  IIONumber::IIONumber(v22, v12);
  IIOArray::addObject(&v23, v22);
  IIONumber::~IIONumber(v22);
  IIONumber::IIONumber(v22, v14);
  IIOArray::addObject(&v23, v22);
  IIONumber::~IIONumber(v22);
  IIODictionary::setObjectForKey(a2, v24, "screenWindowCenter");
  IIOArray::~IIOArray(&v23);
  IIOArray::~IIOArray(&v26);
  IIOArray::~IIOArray(&v29);
  return 0;
}

void sub_1860914A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  IIOString::~IIOString(va);
  IIOArray::~IIOArray(va1);
  IIOArray::~IIOArray(va2);
  _Unwind_Resume(a1);
}

uint64_t IIO_Reader_OpenEXR::updatePropertyInfo(IIO_Reader_OpenEXR *this, IIODictionary *a2, axr_data *a3, EXRPluginData *a4)
{
  v5 = *(a4 + 31);
  property_count = gFunc_axr_data_get_property_count(a3, v5);
  v7 = property_count;
  if (property_count)
  {
    v8 = 0;
    do
    {
      gFunc_axr_data_get_property(v10, a3, v5, v8++, 1);
    }

    while (v7 != v8);
  }

  return 0;
}

uint64_t IIO_Reader_OpenEXR::updateChannelInfo(IIO_Reader_OpenEXR *this, IIODictionary *a2, axr_data *a3, EXRPluginData *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = *(a4 + 31);
  v8 = 0;
  v9 = 0;
  v10 = 0;
  IIOArray::IIOArray(&v8);
  if (gFunc_axr_data_get_channel_count(a3, v6))
  {
    gFunc_axr_data_get_channel_info(&__p, a3, v6, 0, 1);
    memcpy(__dst, v12 + 4, sizeof(__dst));
    __p = 0;
    v12[0] = 0uLL;
    operator new();
  }

  IIODictionary::setObjectForKey(a2, v9, "channels");
  IIOArray::~IIOArray(&v8);
  return 0;
}

uint64_t IIO_Reader_OpenEXR::updateSourceProperties(IIO_Reader_OpenEXR *this, IIOImageReadSession *a2, IIODictionary *a3, IIODictionary *a4, IIODictionary *a5, CGImageSourceStatus *a6)
{
  if (!AppleEXREnabled())
  {
    return 0;
  }

  v48 = 0;
  v9 = IIOImageReadSession::retainBytePointer(a2, &v48, 1);
  Size = IIOImageReadSession::getSize(a2);
  v47 = 0;
  v11 = gFunc_axr_data_create(v9, Size, &v47, 0, 0);
  if (v47)
  {
    name = gFunc_axr_error_get_name();
    LogError("updateSourceProperties", 315, "*** axr_data_create failed: %s (%d)\n", name, v47);
  }

  if (v11)
  {
    logical_image_list = gFunc_axr_data_create_logical_image_list(v11);
    if (logical_image_list)
    {
      v14 = logical_image_list;
      v44 = 0;
      v45 = 0;
      v46 = 0;
      updated = IIO_Reader_OpenEXR::UpdateImageInfo(logical_image_list, &v44);
      if (!updated)
      {
        v41 = 0;
        v42 = 0;
        v43 = 0;
        IIODictionary::IIODictionary(&v41);
        IIONumber::IIONumber(v33, 1022611261 * ((v45 - v44) >> 3));
        IIODictionary::setObjectForKey(&v41, v33, "ImageCount");
        v29 = v14;
        IIONumber::~IIONumber(v33);
        v38 = 0;
        v39 = 0;
        v40 = 0;
        IIOArray::IIOArray(&v38);
        v16 = v44;
        if (v45 != v44)
        {
          v17 = 0;
          v18 = 1;
          do
          {
            *__p = 0u;
            memset(v37, 0, sizeof(v37));
            memset(v35, 0, sizeof(v35));
            *&v33[16] = 0u;
            *v34 = 0u;
            *v33 = 0u;
            v19 = v16 + 168 * v17;
            v20 = *v19;
            *&v33[10] = *(v19 + 10);
            *v33 = v20;
            if (*(v19 + 55) < 0)
            {
              std::string::__init_copy_ctor_external(v34, *(v19 + 32), *(v19 + 40));
            }

            else
            {
              v21 = *(v19 + 32);
              v35[0] = *(v19 + 48);
              *v34 = v21;
            }

            if (*(v19 + 79) < 0)
            {
              std::string::__init_copy_ctor_external(&v35[1], *(v19 + 56), *(v19 + 64));
            }

            else
            {
              v22 = *(v19 + 56);
              v35[3] = *(v19 + 72);
              *&v35[1] = v22;
            }

            if (*(v19 + 103) < 0)
            {
              std::string::__init_copy_ctor_external(__p, *(v19 + 80), *(v19 + 88));
            }

            else
            {
              v23 = *(v19 + 80);
              *v37 = *(v19 + 96);
              *__p = v23;
            }

            v24 = *(v19 + 104);
            v25 = *(v19 + 120);
            v26 = *(v19 + 136);
            *&v37[56] = *(v19 + 152);
            *&v37[40] = v26;
            *&v37[24] = v25;
            *&v37[8] = v24;
            v30 = 0;
            v31 = 0;
            v32 = 0;
            IIODictionary::IIODictionary(&v30);
            (*(*this + 272))(this, &v30, v11, v33);
            (*(*this + 280))(this, &v30, v11, v33);
            (*(*this + 288))(this, &v30, v11, v33);
            IIOArray::addObject(&v38, v31);
            IIODictionary::~IIODictionary(&v30);
            if ((v37[7] & 0x80000000) != 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v35[3]) < 0)
            {
              operator delete(v35[1]);
            }

            if (SHIBYTE(v35[0]) < 0)
            {
              operator delete(v34[0]);
            }

            v17 = v18;
            v16 = v44;
          }

          while (0xCF3CF3CF3CF3CF3DLL * ((v45 - v44) >> 3) > v18++);
        }

        IIODictionary::setObjectForKey(&v41, v39, "Images");
        IIODictionary::setObjectForKey(a3, v42, "{FileContents}");
        IIOArray::~IIOArray(&v38);
        IIODictionary::~IIODictionary(&v41);
        v14 = v29;
      }

      os_release(v14);
      *v33 = &v44;
      std::vector<EXRPluginData>::__destroy_vector::operator()[abi:fe200100](v33);
    }

    else
    {
      updated = 0;
    }

    os_release(v11);
  }

  else
  {
    updated = 0;
  }

  IIOImageReadSession::releaseBytePointer(a2, v48);
  return updated;
}

void sub_186091D70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  IIODictionary::~IIODictionary((v32 - 160));
  a17 = v32 - 136;
  std::vector<EXRPluginData>::__destroy_vector::operator()[abi:fe200100](&a17);
  _Unwind_Resume(a1);
}

uint64_t IIO_Reader_OpenEXR::compareOptions(IIO_Reader_OpenEXR *this, const __CFDictionary *a2, const __CFDictionary *a3)
{
  memset(v7, 0, sizeof(v7));
  IIODictionary::IIODictionary(v7, a2);
  memset(v6, 0, sizeof(v6));
  IIODictionary::IIODictionary(v6, a3);
  BoolForKey = IIODictionary::getBoolForKey(v7, @"kCGImageSourceShouldAllowFloat");
  LODWORD(a3) = BoolForKey ^ IIODictionary::getBoolForKey(v6, @"kCGImageSourceShouldAllowFloat");
  IIODictionary::~IIODictionary(v6);
  IIODictionary::~IIODictionary(v7);
  return a3 ^ 1;
}

void sub_186091EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

__n128 std::vector<EXRPluginData>::__construct_one_at_end[abi:fe200100]<EXRPluginData const&>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  *(v4 + 10) = *(a2 + 10);
  *v4 = v5;
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((v4 + 32), *(a2 + 4), *(a2 + 5));
  }

  else
  {
    v6 = a2[2];
    *(v4 + 48) = *(a2 + 6);
    *(v4 + 32) = v6;
  }

  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((v4 + 56), *(a2 + 7), *(a2 + 8));
  }

  else
  {
    v7 = *(a2 + 56);
    *(v4 + 72) = *(a2 + 9);
    *(v4 + 56) = v7;
  }

  if (*(a2 + 103) < 0)
  {
    std::string::__init_copy_ctor_external((v4 + 80), *(a2 + 10), *(a2 + 11));
  }

  else
  {
    v8 = a2[5];
    *(v4 + 96) = *(a2 + 12);
    *(v4 + 80) = v8;
  }

  result = *(a2 + 104);
  v10 = *(a2 + 120);
  v11 = *(a2 + 136);
  *(v4 + 152) = *(a2 + 152);
  *(v4 + 136) = v11;
  *(v4 + 120) = v10;
  *(v4 + 104) = result;
  *(a1 + 8) = v4 + 168;
  return result;
}

void sub_186091FC0(_Unwind_Exception *exception_object)
{
  if (*(v2 + 79) < 0)
  {
    operator delete(*(v2 + 56));
  }

  if (*(v2 + 55) < 0)
  {
    operator delete(*(v2 + 32));
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t std::vector<EXRPluginData>::__emplace_back_slow_path<EXRPluginData const&>(uint64_t *a1, __int128 *a2)
{
  v2 = 0xCF3CF3CF3CF3CF3DLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x186186186186186)
  {
    std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
  }

  if (0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCF3CF3CF3CF3CF3DLL * ((a1[2] - *a1) >> 3) >= 0xC30C30C30C30C3)
  {
    v6 = 0x186186186186186;
  }

  else
  {
    v6 = v3;
  }

  v24 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:fe200100]<std::allocator<EXRPluginData>>(a1, v6);
  }

  v7 = 168 * v2;
  v21 = 0;
  v22 = v7;
  v23 = v7;
  v8 = *a2;
  *(v7 + 10) = *(a2 + 10);
  *v7 = v8;
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((v7 + 32), *(a2 + 4), *(a2 + 5));
  }

  else
  {
    v9 = a2[2];
    *(v7 + 48) = *(a2 + 6);
    *(v7 + 32) = v9;
  }

  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((v7 + 56), *(a2 + 7), *(a2 + 8));
  }

  else
  {
    v10 = *(a2 + 56);
    *(v7 + 72) = *(a2 + 9);
    *(v7 + 56) = v10;
  }

  if (*(a2 + 103) < 0)
  {
    std::string::__init_copy_ctor_external((v7 + 80), *(a2 + 10), *(a2 + 11));
  }

  else
  {
    v11 = a2[5];
    *(v7 + 96) = *(a2 + 12);
    *(v7 + 80) = v11;
  }

  v12 = *(a2 + 136);
  v13 = *(a2 + 152);
  v14 = *(a2 + 104);
  *(v7 + 120) = *(a2 + 120);
  *(v7 + 104) = v14;
  *(v7 + 152) = v13;
  *(v7 + 136) = v12;
  *&v23 = v23 + 168;
  v15 = a1[1];
  v16 = v22 + *a1 - v15;
  std::__uninitialized_allocator_relocate[abi:fe200100]<std::allocator<EXRPluginData>,EXRPluginData*>(a1, *a1, v15, v16);
  v17 = *a1;
  *a1 = v16;
  v18 = a1[2];
  v20 = v23;
  *(a1 + 1) = v23;
  *&v23 = v17;
  *(&v23 + 1) = v18;
  v21 = v17;
  v22 = v17;
  std::__split_buffer<EXRPluginData>::~__split_buffer(&v21);
  return v20;
}

void sub_1860921D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (*(v4 + 79) < 0)
  {
    operator delete(*(v4 + 56));
  }

  if (*(v4 + 55) < 0)
  {
    operator delete(*(v4 + 32));
  }

  std::__split_buffer<EXRPluginData>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<EXRPluginData>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x186186186186187)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:fe200100]<std::allocator<EXRPluginData>,EXRPluginData*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v19 = a4;
  v16[0] = a1;
  v16[1] = &v18;
  v16[2] = &v19;
  v17 = 0;
  if (a2 == a3)
  {
    LOBYTE(v17) = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 10) = *(v7 + 10);
      *a4 = v8;
      v9 = *(v7 + 32);
      *(a4 + 48) = *(v7 + 48);
      *(a4 + 32) = v9;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 32) = 0;
      v10 = *(v7 + 56);
      *(a4 + 72) = *(v7 + 72);
      *(a4 + 56) = v10;
      *(v7 + 64) = 0;
      *(v7 + 72) = 0;
      *(v7 + 56) = 0;
      v11 = *(v7 + 80);
      *(a4 + 96) = *(v7 + 96);
      *(a4 + 80) = v11;
      *(v7 + 80) = 0;
      *(v7 + 88) = 0;
      *(v7 + 96) = 0;
      v12 = *(v7 + 104);
      v13 = *(v7 + 120);
      v14 = *(v7 + 136);
      *(a4 + 152) = *(v7 + 152);
      *(a4 + 136) = v14;
      *(a4 + 120) = v13;
      *(a4 + 104) = v12;
      v7 += 168;
      a4 += 168;
    }

    while (v7 != a3);
    v19 = a4;
    LOBYTE(v17) = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<EXRPluginData>>::destroy[abi:fe200100]<EXRPluginData,0>(a1, v5);
      v5 += 168;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<EXRPluginData>,EXRPluginData*>>::~__exception_guard_exceptions[abi:fe200100](v16);
}

void std::allocator_traits<std::allocator<EXRPluginData>>::destroy[abi:fe200100]<EXRPluginData,0>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 103) < 0)
  {
    operator delete(*(a2 + 80));
  }

  if (*(a2 + 79) < 0)
  {
    operator delete(*(a2 + 56));
  }

  if (*(a2 + 55) < 0)
  {
    v3 = *(a2 + 32);

    operator delete(v3);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<EXRPluginData>,EXRPluginData*>>::~__exception_guard_exceptions[abi:fe200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<EXRPluginData>,EXRPluginData*>::operator()[abi:fe200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<EXRPluginData>,EXRPluginData*>::operator()[abi:fe200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 168;
      std::allocator_traits<std::allocator<EXRPluginData>>::destroy[abi:fe200100]<EXRPluginData,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<EXRPluginData>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<EXRPluginData>::__destruct_at_end[abi:fe200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<EXRPluginData>::__destruct_at_end[abi:fe200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 168;
    std::allocator_traits<std::allocator<EXRPluginData>>::destroy[abi:fe200100]<EXRPluginData,0>(v5, v4 - 168);
  }
}

void std::vector<EXRPluginData>::__destroy_vector::operator()[abi:fe200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<EXRPluginData>::__base_destruct_at_end[abi:fe200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<EXRPluginData>::__base_destruct_at_end[abi:fe200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<EXRPluginData>>::destroy[abi:fe200100]<EXRPluginData,0>(a1, i))
  {
    i -= 168;
  }

  *(a1 + 8) = a2;
}

void IIO_Writer_PDF::~IIO_Writer_PDF(IIO_Writer_PDF *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

uint64_t IIO_Writer_PDF::write(IIO_Writer_PDF *this, IIOImageWriteSession *a2, IIOImageDestination *a3)
{
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "IIO_Writer_PDF::write", 0, 0, -1, 0);
  }

  memset(v7, 0, sizeof(v7));
  PDFWritePlugin::PDFWritePlugin(v7, a2, a3);
  PDFWritePlugin::setup(v7);
  v5 = IIOWritePlugin::writeAll(v7);
  PDFWritePlugin::done(v7);
  PDFWritePlugin::~PDFWritePlugin(v7);
  return v5;
}

void sub_1860926A4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x186092690);
}

uint64_t _cg_png_set_swap(uint64_t result)
{
  if (result)
  {
    if (*(result + 432) == 16)
    {
      *(result + 88) |= 0x10u;
    }
  }

  return result;
}

uint64_t png_do_invert(uint64_t result, _BYTE *a2, unint64_t a3)
{
  if (*(result + 16) == 4)
  {
    v5 = *(result + 17);
    if (v5 == 16)
    {
      v8 = *(result + 8);
      if (v8)
      {
        v9 = 0;
        v10 = a2;
        while (v10 < a3)
        {
          *v10 = ~*v10;
          v11 = v10 + 1;
          if (v11 >= a3 || v11 < a2)
          {
            break;
          }

          *v11 = ~*v11;
          v10 = v11 + 3;
          v9 += 4;
          if (v9 >= v8)
          {
            return result;
          }
        }

        goto LABEL_26;
      }
    }

    else if (v5 == 8)
    {
      v6 = *(result + 8);
      if (v6)
      {
        v7 = 0;
        while (a2 < a3)
        {
          *a2 = ~*a2;
          a2 += 2;
          v7 += 2;
          if (v7 >= v6)
          {
            return result;
          }
        }

        goto LABEL_26;
      }
    }
  }

  else if (!*(result + 16))
  {
    v3 = *(result + 8);
    if (v3)
    {
      v4 = a3 - a2;
      if (a3 < a2)
      {
        v4 = 0;
      }

      while (v4)
      {
        *a2 = ~*a2;
        ++a2;
        --v4;
        if (!--v3)
        {
          return result;
        }
      }

LABEL_26:
      __break(0x5519u);
    }
  }

  return result;
}

uint64_t png_do_swap(uint64_t result, unint64_t a2, unint64_t a3)
{
  if (*(result + 17) == 16)
  {
    v3 = *result * *(result + 18);
    if (v3)
    {
      v4 = a2;
      while (v4 < a3)
      {
        if (v4 < a2)
        {
          break;
        }

        v5 = v4 + 1;
        if (v5 >= a3 || v5 < a2)
        {
          break;
        }

        v6 = *(v5 - 1);
        *(v5 - 1) = *v5;
        *v5 = v6;
        v4 = v5 + 1;
        if (!--v3)
        {
          return result;
        }
      }

      __break(0x5519u);
    }
  }

  return result;
}

int *png_do_bgr(int *result, unint64_t a2, unint64_t a3)
{
  v3 = *(result + 16);
  if ((v3 & 2) != 0)
  {
    v4 = *result;
    v5 = *(result + 17);
    if (v5 == 16)
    {
      if (v3 == 2)
      {
        if (v4)
        {
          v19 = a2;
          while (v19 < a3)
          {
            if (v19 < a2)
            {
              break;
            }

            v20 = v19 + 4;
            if (v20 >= a3)
            {
              break;
            }

            if (v20 < a2)
            {
              break;
            }

            v21 = *(v20 - 4);
            *(v20 - 4) = *v20;
            *v20 = v21;
            v22 = v20 - 3;
            if (v22 >= a3)
            {
              break;
            }

            if (v22 < a2)
            {
              break;
            }

            v23 = v22 + 4;
            if (v23 >= a3 || v23 < a2)
            {
              break;
            }

            v24 = *(v23 - 4);
            *(v23 - 4) = *v23;
            *v23 = v24;
            v19 = v23 + 1;
            if (!--v4)
            {
              return result;
            }
          }

          goto LABEL_50;
        }
      }

      else if (v3 == 6 && v4 != 0)
      {
        v10 = a2;
        while (v10 < a3)
        {
          if (v10 < a2)
          {
            break;
          }

          v11 = v10 + 4;
          if (v11 >= a3)
          {
            break;
          }

          if (v11 < a2)
          {
            break;
          }

          v12 = *(v11 - 4);
          *(v11 - 4) = *v11;
          *v11 = v12;
          v13 = v11 - 3;
          if (v13 >= a3)
          {
            break;
          }

          if (v13 < a2)
          {
            break;
          }

          v14 = v13 + 4;
          if (v14 >= a3 || v14 < a2)
          {
            break;
          }

          v15 = *(v14 - 4);
          *(v14 - 4) = *v14;
          *v14 = v15;
          v10 = v14 + 3;
          if (!--v4)
          {
            return result;
          }
        }

        goto LABEL_50;
      }
    }

    else if (v5 == 8)
    {
      if (v3 == 2)
      {
        if (v4)
        {
          v16 = a2;
          while (v16 < a3)
          {
            if (v16 < a2)
            {
              break;
            }

            v17 = v16 + 2;
            if (v17 >= a3 || v17 < a2)
            {
              break;
            }

            v18 = *(v17 - 2);
            *(v17 - 2) = *v17;
            *v17 = v18;
            v16 = v17 + 1;
            if (!--v4)
            {
              return result;
            }
          }

          goto LABEL_50;
        }
      }

      else if (v3 == 6 && v4)
      {
        v6 = a2;
        while (v6 < a3)
        {
          if (v6 < a2)
          {
            break;
          }

          v7 = v6 + 2;
          if (v7 >= a3 || v7 < a2)
          {
            break;
          }

          v8 = *(v7 - 2);
          *(v7 - 2) = *v7;
          *v7 = v8;
          v6 = v7 + 2;
          if (!--v4)
          {
            return result;
          }
        }

LABEL_50:
        __break(0x5519u);
      }
    }
  }

  return result;
}

uint64_t png_do_check_palette_indexes(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 17);
  if (*(result + 416))
  {
    v3 = 1 << v2 <= *(result + 416);
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v4 = -(*a2 * *(a2 + 19)) & 7;
    v5 = *(result + 336);
    v6 = *(result + 344);
    v7 = (v5 + *(a2 + 8));
    if (*(a2 + 17) > 3u)
    {
      if (v2 == 4)
      {
        while (v7 > v5)
        {
          if (v7 >= v6)
          {
            goto LABEL_63;
          }

          v21 = *v7 >> v4;
          v22 = v21 & 0xF;
          v23 = *(result + 420);
          v24 = v22 <= v23;
          if (v22 <= v23)
          {
            v22 = *(result + 420);
          }

          v25 = v21 >> 4;
          if (!v24 || v25 > v22)
          {
            if (v25 > v22)
            {
              v22 = v25;
            }

            *(result + 420) = v22;
          }

          LOBYTE(v4) = 0;
          --v7;
        }
      }

      else if (v2 == 8)
      {
        while (v7 > v5)
        {
          if (v7 >= v6)
          {
            goto LABEL_63;
          }

          v20 = *v7;
          if (*(result + 420) < v20)
          {
            *(result + 420) = v20;
          }

          --v7;
        }
      }
    }

    else if (v2 == 1)
    {
      if (v7 > v5)
      {
        while (v7 < v6)
        {
          if (*v7 >> v4)
          {
            *(result + 420) = 1;
          }

          LOBYTE(v4) = 0;
          if (--v7 <= v5)
          {
            return result;
          }
        }

LABEL_63:
        __break(0x5519u);
      }
    }

    else if (v2 == 2)
    {
      while (v7 > v5)
      {
        if (v7 >= v6)
        {
          goto LABEL_63;
        }

        v8 = *v7 >> v4;
        v9 = v8 & 3;
        v10 = *(result + 420);
        if (v9 <= v10)
        {
          v11 = *(result + 420);
        }

        else
        {
          v11 = v8 & 3;
        }

        v12 = (v8 >> 2) & 3;
        if (v12 <= v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = (v8 >> 2) & 3;
        }

        v14 = (v8 >> 4) & 3;
        if (v14 <= v13)
        {
          v15 = v13;
        }

        else
        {
          v15 = (v8 >> 4) & 3;
        }

        v16 = v8 >> 6;
        if (v9 > v10 || v12 > v11 || v14 > v13 || v16 > v15)
        {
          if (v16 > v15)
          {
            v15 = v16;
          }

          *(result + 420) = v15;
        }

        LOBYTE(v4) = 0;
        --v7;
      }
    }
  }

  return result;
}

uint64_t _cg_png_get_current_row_number(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 308);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t mj2_video_source::get_stream_idx(mj2_video_source *this, int a2)
{
  v2 = *(this + 1);
  v3 = v2[170];
  if (v3 < 0)
  {
    v8 = *(*v2 + 8);
    if (!v8)
    {
      return 0xFFFFFFFFLL;
    }

    v9 = *(v8 + 104);
    if (!v9)
    {
      return 0xFFFFFFFFLL;
    }

    v10 = 0;
    do
    {
      v11 = *(v9 + 40);
      if (v11 && (*(v11 + 680) & 0x80000000) != 0)
      {
        *(v11 + 680) = v10;
        v10 += *(v11 + 676);
      }

      v9 = *(v9 + 24);
    }

    while (v9);
    v3 = v2[170];
    if (v3 < 0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  result = 0xFFFFFFFFLL;
  if ((a2 & 0x80000000) == 0)
  {
    v5 = v2[22];
    if (v5 < v2[16])
    {
      v6 = v2[17];
      if (v6 > a2)
      {
        v7 = a2 + v6 * v5;
        if (v7 >= v2[169])
        {
          mj2_video_source::get_stream_idx();
        }

        return (v7 + v3);
      }
    }
  }

  return result;
}

uint64_t mj2_source::count_codestreams(mj2_source *this, int *a2)
{
  *a2 = 0;
  if (*this)
  {
    v2 = *(*this + 104);
    if (v2)
    {
      v3 = 0;
      do
      {
        v4 = *(v2 + 40);
        if (v4 && (*(v4 + 680) & 0x80000000) != 0)
        {
          *(v4 + 680) = v3;
          v3 = *a2 + *(v4 + 676);
          *a2 = v3;
        }

        v2 = *(v2 + 24);
      }

      while (v2);
    }
  }

  return 1;
}

BOOL mj2_video_source::can_open_stream(mj2_video_source *this, int a2)
{
  result = 0;
  if ((a2 & 0x80000000) == 0)
  {
    v4 = *(this + 1);
    if (v4[22] < v4[16])
    {
      return v4[17] > a2;
    }
  }

  return result;
}

uint64_t mj2_source::get_track_type(mj2_source *this, int a2)
{
  if (!*this)
  {
    mj2_source::get_track_type();
  }

  v2 = *(*this + 104);
  if (!v2)
  {
    return 0;
  }

  while (*(v2 + 16) != a2)
  {
    v2 = *(v2 + 24);
    if (!v2)
    {
      return 0;
    }
  }

  if (*(v2 + 40))
  {
    return 1;
  }

  else
  {
    return 1000;
  }
}

uint64_t mj2_source::access_video_track(mj2_source *this, int a2)
{
  if (!*this)
  {
    mj2_source::access_video_track();
  }

  v2 = *(*this + 104);
  if (!v2)
  {
    return 0;
  }

  while (*(v2 + 16) != a2)
  {
    v2 = *(v2 + 24);
    if (!v2)
    {
      return 0;
    }
  }

  v3 = *(v2 + 40);
  if (v3)
  {
    return *(v3 + 56);
  }

  else
  {
    return 0;
  }
}

uint64_t mj2_source::find_stream(mj2_source *this, int a2, unsigned int *a3, int *a4, int *a5)
{
  if (!*this)
  {
    return 1;
  }

  v19 = 0;
  mj2_source::count_codestreams(this, &v19);
  v10 = *(*this + 104);
  if (v10)
  {
    while (1)
    {
      v11 = *(v10 + 40);
      if (v11)
      {
        v12 = v11[170];
        if (v12 < 0)
        {
          return 0;
        }

        v13 = a2 - v12;
        if (v13 >= 0 && v13 < v11[169])
        {
          break;
        }
      }

      v10 = *(v10 + 24);
      if (!v10)
      {
        goto LABEL_8;
      }
    }

    *a3 = *(v10 + 16);
    v15 = v11[168];
    v16 = v15 == 0;
    v17 = v13 & 1;
    v18 = v13 >> (v15 != 0);
    if (v16)
    {
      v17 = 0;
    }

    *a4 = v18;
    *a5 = v17;
    return 1;
  }

  else
  {
LABEL_8:
    *a3 = 0;
    *a5 = 0;
    result = 1;
    *a4 = 0;
  }

  return result;
}

void IIO_Reader_ATX::~IIO_Reader_ATX(IIO_Reader_ATX *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

CGMutableImageMetadataRef CGImageMetadataCreateFromXPCObj(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v3 = iio_xpc_dictionary_copy_CFDictionary(a1, IIO_METADATA_OBJ);
  if (v3)
  {
    v4 = v3;
    memset(v18, 0, sizeof(v18));
    IIODictionary::IIODictionary(v18, v3);
    Mutable = CGImageMetadataCreateMutable();
    memset(v17, 0, sizeof(v17));
    ObjectForKey = IIODictionary::getObjectForKey(v18, @"tags");
    IIOArray::IIOArray(v17, ObjectForKey);
    v19 = MEMORY[0x1E69E9820];
    cf = 0x40000000;
    v21 = ___ZL24IIOXPCDecodeMetadataTagsP8IIOArrayP15CGImageMetadata_block_invoke;
    v22 = &__block_descriptor_tmp_43;
    v23 = Mutable;
    IIOArray::enumerate(v17, &v19);
    if (IIODictionary::containsKey(v18, @"makerNoteProps"))
    {
      v6 = IIODictionary::getObjectForKey(v18, @"makerNoteProps");
      *(Mutable + 6) = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v6);
    }

    if (IIODictionary::containsKey(v18, @"NStoPrefix"))
    {
      v7 = IIODictionary::getObjectForKey(v18, @"NStoPrefix");
      *(Mutable + 4) = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v7);
    }

    if (IIODictionary::containsKey(v18, @"prefixToNS"))
    {
      v8 = IIODictionary::getObjectForKey(v18, @"prefixToNS");
      *(Mutable + 5) = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v8);
    }

    if (IIODictionary::containsKey(v18, @"iptcComputedDigest"))
    {
      v9 = IIODictionary::getObjectForKey(v18, @"iptcComputedDigest");
      *(Mutable + 7) = CFRetain(v9);
    }

    if (IIODictionary::containsKey(v18, @"iptcPSIRDigest"))
    {
      v10 = IIODictionary::getObjectForKey(v18, @"iptcPSIRDigest");
      *(Mutable + 8) = CFRetain(v10);
    }

    *(Mutable + 16) = IIODictionary::getBoolForKey(v18, @"mutable");
    CFRelease(v4);
    IIOArray::~IIOArray(v17);
    IIODictionary::~IIODictionary(v18);
  }

  else
  {
    _cg_jpeg_mem_term("CGImageMetadataCreateFromXPCObj", 286, "*** NOTE: failed to get metadata-dictionary from xpc_object_t - decoding XMPData...\n");
    v12 = xpc_dictionary_get_BOOL(a1, IIO_METADATA_MUTABLE);
    if (!xpc_dictionary_get_value(a1, IIO_METADATA_OBJ_ORIG))
    {
      return 0;
    }

    v13 = _CFXPCCreateCFObjectFromXPCObject();
    if (!v13)
    {
      return 0;
    }

    v14 = v13;
    Mutable = CGImageMetadataCreateFromXMPData(v13);
    if (Mutable)
    {
      v15 = iio_xpc_dictionary_copy_CFDictionary(a1, IIO_METADATA_MAKER_ORIG);
      if (v15)
      {
        v16 = v15;
        v19 = 0;
        cf = 0;
        v21 = 0;
        IIODictionary::IIODictionary(&v19, v15, 1);
        *(Mutable + 6) = CFRetain(cf);
        CFRelease(v16);
        IIODictionary::~IIODictionary(&v19);
      }

      *(Mutable + 16) = v12;
    }

    CFRelease(v14);
  }

  return Mutable;
}

void sub_186093234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

xpc_object_t CGImageMetadataCreateXPCObj(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (v2 != CGImageMetadataGetTypeID())
  {
    return 0;
  }

  empty = xpc_dictionary_create_empty();
  if (empty)
  {
    memset(v15, 0, sizeof(v15));
    IIODictionary::IIODictionary(v15);
    v4 = MEMORY[0x1E695E4D0];
    if (!*(a1 + 16))
    {
      v4 = MEMORY[0x1E695E4C0];
    }

    IIODictionary::setObjectForKey(v15, *v4, @"mutable");
    v12 = 0;
    value = 0;
    v14 = 0;
    IIOArray::IIOArray(&v12);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZL24IIOXPCEncodeMetadataTagsPK15CGImageMetadataP8IIOArray_block_invoke;
    block[3] = &__block_descriptor_tmp_316;
    block[4] = &v12;
    CGImageMetadataEnumerateTagsUsingBlock(a1, 0, 0, block);
    IIODictionary::setObjectForKey(v15, value, @"tags");
    v5 = *(a1 + 32);
    if (v5)
    {
      IIODictionary::setObjectForKey(v15, v5, @"NStoPrefix");
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      IIODictionary::setObjectForKey(v15, v6, @"prefixToNS");
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      IIODictionary::setObjectForKey(v15, v7, @"makerNoteProps");
    }

    v8 = *(a1 + 56);
    if (v8)
    {
      IIODictionary::setObjectForKey(v15, v8, @"iptcComputedDigest");
    }

    v9 = *(a1 + 64);
    if (v9)
    {
      IIODictionary::setObjectForKey(v15, v9, @"iptcPSIRDigest");
    }

    if (iio_xpc_dictionary_add_CFDictionary(empty, IIO_METADATA_OBJ))
    {
      _cg_jpeg_mem_term("CGImageMetadataCreateXPCObj", 353, "*** NOTE: failed to add metadata-dictionary to xpc_object_t - sending XMPData...\n");
      xpc_dictionary_set_BOOL(empty, IIO_METADATA_MUTABLE, *(a1 + 16));
      XMPData = CGImageMetadataCreateXMPData(a1, 0);
      if (XMPData)
      {
        iio_xpc_dictionary_add_CFData(empty, IIO_METADATA_OBJ_ORIG, XMPData);
        CFRelease(XMPData);
      }

      if (*(a1 + 48))
      {
        iio_xpc_dictionary_add_CFDictionary(empty, IIO_METADATA_MAKER_ORIG);
      }
    }

    IIOArray::~IIOArray(&v12);
    IIODictionary::~IIODictionary(v15);
  }

  return empty;
}

void sub_1860934A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  IIOArray::~IIOArray(va);
  IIODictionary::~IIODictionary(va1);
  _Unwind_Resume(a1);
}

BOOL CGImageMetadataTagAppendQualifier(CGImageMetadata *a1, uint64_t a2, const void *a3)
{
  v4 = a2;
  Source = CGImageSourceGetSource(a2);
  v7 = CGImageSourceGetSource(a3);
  if (!v4)
  {
    return v4;
  }

  v9 = v7;
  v10 = CFGetTypeID(v4);
  TypeID = CGImageMetadataTagGetTypeID();
  v4 = 0;
  if (!a3)
  {
    return v4;
  }

  if (v10 != TypeID)
  {
    return v4;
  }

  v12 = CFGetTypeID(a3);
  v4 = 0;
  if (v12 != CGImageMetadataTagGetTypeID() || !Source || !v9)
  {
    return v4;
  }

  if (*(Source + 40) != 1)
  {
    v16 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"Failed to add qualifier '%@:%@' to tag '%@:%@'. Qualifiers may only be added to string tags - not arrays or structures.", *(v9 + 24), *(v9 + 32), *(Source + 24), *(Source + 32));
    if (v16)
    {
      v22 = v16;
      IIOString::IIOString(err, v16);
      UTF8String = IIOString::createUTF8String(err);
      CGImageMetadataTagAppendQualifier_cold_1(err, UTF8String, v22);
    }

    return 0;
  }

  v13 = *(Source + 56);
  if (!v13 || (v14 = CFGetTypeID(*(Source + 56)), v14 != CFArrayGetTypeID()))
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v13 = Mutable;
      *(Source + 56) = Mutable;
      goto LABEL_13;
    }

    return 0;
  }

LABEL_13:
  err[0] = 0;
  v4 = CGImageMetadataRegisterNamespaceForPrefix(a1, *(v9 + 16), *(v9 + 24), err);
  if (v4)
  {
    CFArrayAppendValue(v13, a3);
  }

  else
  {
    CStringPtr = CFStringGetCStringPtr(*(v9 + 24), 0);
    v18 = CFStringGetCStringPtr(*(v9 + 16), 0);
    LogMetadata("CGImageMetadataTagAppendQualifier", 417, "An error occurred while registering prefix '%s' for namespace '%s'\n", CStringPtr, v18);
    if (err[0])
    {
      v19 = CFErrorCopyFailureReason(err[0]);
      if (v19)
      {
        v20 = v19;
        v21 = CFStringGetCStringPtr(v19, 0);
        LogMetadata("CGImageMetadataTagAppendQualifier", 423, "Failure Reason: %s\n", v21);
        CFRelease(v20);
      }
    }
  }

  return v4;
}

void sub_1860936DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

CFStringRef CreateEXIFDataTimeStringWithXMPDateTimeString(const __CFString *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  *__str = 0;
  v5 = 0;
  v6 = 0;
  memset(&v3, 0, sizeof(v3));
  DateTimeStructFromXMPDateTimeString = GetDateTimeStructFromXMPDateTimeString(a1, &v3, 0, 0);
  result = 0;
  if (DateTimeStructFromXMPDateTimeString)
  {
    snprintf(__str, 0x14uLL, "%04d:%02d:%02d %02d:%02d:%02d", v3.tm_year + 1900, v3.tm_mon + 1, v3.tm_mday, v3.tm_hour, v3.tm_min, v3.tm_sec);
    return CFStringCreateWithCString(*MEMORY[0x1E695E480], __str, 0x600u);
  }

  return result;
}

const __CFData *CGImageMetadataCreateXMPWithEXIFFiltered(const CGImageMetadata *a1)
{
  kdebug_trace();
  v2 = CGImageMetadataCreateWithEXIFFiltered(a1, 0);
  if (v2)
  {
    v3 = v2;
    XMPData = CGImageMetadataCreateXMPData(v2, 0);
    CFRelease(v3);
    if (XMPData)
    {
      CFDataGetLength(XMPData);
    }
  }

  else
  {
    XMPData = 0;
  }

  kdebug_trace();
  return XMPData;
}

CFDictionaryRef *CGImageMetadataCreateWithEXIFFiltered(const CGImageMetadata *a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = CFGetTypeID(a1);
  if (v4 != CGImageMetadataGetTypeID())
  {
    return 0;
  }

  MutableCopy = CGImageMetadataCreateMutableCopy(a1);
  v6 = MutableCopy;
  if (MutableCopy)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZL37CGImageMetadataCreateWithEXIFFilteredPK15CGImageMetadatab_block_invoke;
    block[3] = &__block_descriptor_tmp_322;
    block[4] = MutableCopy;
    CGImageMetadataEnumerateTagsUsingBlock(a1, 0, 0, block);
    v7 = CGImageMetadataCopyTagWithPath(v6, 0, @"dc:description");
    v8 = CGImageMetadataCopyTagWithPath(v6, 0, @"dc:rights");
    v9 = CGImageMetadataCopyTagWithPath(v6, 0, @"dc:creator");
    v10 = CGImageMetadataCopyTagWithPath(v6, 0, @"xmp:CreatorTool");
    v11 = CGImageMetadataCopyTagWithPath(v6, 0, @"photoshop:DateCreated");
    v12 = CGImageMetadataCopyTagWithPath(v6, 0, @"xmp:CreateDate");
    v13 = CGImageMetadataCopyTagWithPath(v6, 0, @"xmp:ModifyDate");
    Source = CGImageSourceGetSource(v7);
    v30 = CGImageSourceGetSource(v8);
    if (v7)
    {
      CGImageMetadataRemoveTagWithPath(v6, 0, @"dc:description");
    }

    if (v8)
    {
      CGImageMetadataRemoveTagWithPath(v6, 0, @"dc:rights");
    }

    if (v9)
    {
      CGImageMetadataRemoveTagWithPath(v6, 0, @"dc:creator");
    }

    if (v10)
    {
      CGImageMetadataRemoveTagWithPath(v6, 0, @"xmp:CreatorTool");
    }

    if (v11)
    {
      CGImageMetadataRemoveTagWithPath(v6, 0, @"photoshop:DateCreated");
    }

    if (v12)
    {
      CGImageMetadataRemoveTagWithPath(v6, 0, @"xmp:CreateDate");
    }

    if (v13)
    {
      CGImageMetadataRemoveTagWithPath(v6, 0, @"xmp:ModifyDate");
    }

    if (v7 && (v15 = *(Source + 48)) != 0)
    {
      v28 = v12;
      v16 = v11;
      v17 = v10;
      v18 = v9;
      v19 = CFGetTypeID(v15);
      v20 = v19 != CFArrayGetTypeID() || CFArrayGetCount(*(Source + 48)) < 2;
      v9 = v18;
      v10 = v17;
      v11 = v16;
      v12 = v28;
      if (v8)
      {
LABEL_28:
        v22 = *(v30 + 48);
        if (v22)
        {
          v29 = v12;
          v23 = v11;
          v24 = v10;
          v25 = v9;
          v26 = CFGetTypeID(v22);
          if (v26 == CFArrayGetTypeID())
          {
            v20 &= CFArrayGetCount(*(v30 + 48)) < 2;
          }

          v9 = v25;
          v10 = v24;
          v11 = v23;
          v12 = v29;
        }
      }
    }

    else
    {
      v20 = 1;
      if (v8)
      {
        goto LABEL_28;
      }
    }

    v27 = (CFDictionaryGetCount(v6[3]) < 1) & v20;
    if (a2)
    {
      v27 &= (v7 | v8 | v9 | v10 | v11 | v12 | v13) == 0;
    }

    if (v27)
    {
      CFRelease(v6);
      v6 = 0;
    }

    else
    {
      if (v7)
      {
        CGImageMetadataSetTagWithPath(v6, 0, @"dc:description", v7);
      }

      if (v8)
      {
        CGImageMetadataSetTagWithPath(v6, 0, @"dc:rights", v8);
      }

      if (v9)
      {
        CGImageMetadataSetTagWithPath(v6, 0, @"dc:creator", v9);
      }

      if (v10)
      {
        CGImageMetadataSetTagWithPath(v6, 0, @"xmp:CreatorTool", v10);
      }

      if (v11)
      {
        CGImageMetadataSetTagWithPath(v6, 0, @"photoshop:DateCreated", v11);
      }

      if (v12)
      {
        CGImageMetadataSetTagWithPath(v6, 0, @"xmp:CreateDate", v12);
      }

      if (v13)
      {
        CGImageMetadataSetTagWithPath(v6, 0, @"xmp:ModifyDate", v13);
      }
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

    if (v10)
    {
      CFRelease(v10);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    if (v12)
    {
      CFRelease(v12);
    }

    if (v13)
    {
      CFRelease(v13);
    }
  }

  return v6;
}

char *CGImageMetadataCreateExtendedXMPWithEXIFFiltered(const CGImageMetadata *a1, CFDataRef *a2, CFDataRef *a3, CFDataRef *a4, int a5, int a6)
{
  result = CGImageMetadataCreateWithEXIFFiltered(a1, a6);
  if (result)
  {
    v11 = result;
    SerializedDataAndExtendedData = CGImageMetadataCreateSerializedDataAndExtendedData(result, a2, a3, a4, a5);
    CFRelease(v11);
    return SerializedDataAndExtendedData;
  }

  return result;
}

void CGImageMetadataRemoveGPS(uint64_t a1)
{
  v2 = 0;
  v3[31] = *MEMORY[0x1E69E9840];
  v3[0] = @"GPSAltitude";
  v3[1] = @"GPSAltitudeRef";
  v3[2] = @"GPSAreaInformation";
  v3[3] = @"GPSDestBearing";
  v3[4] = @"GPSDestBearingRef";
  v3[5] = @"GPSDestDistance";
  v3[6] = @"GPSDestDistanceRef";
  v3[7] = @"GPSDestLatitude";
  v3[8] = @"GPSDestLatitudeRef";
  v3[9] = @"GPSDestLongitude";
  v3[10] = @"GPSDestLongitudeRef";
  v3[11] = @"GPSDifferential";
  v3[12] = @"GPSHPositioningError";
  v3[13] = @"GPSDOP";
  v3[14] = @"GPSImgDirection";
  v3[15] = @"GPSImgDirectionRef";
  v3[16] = @"GPSLatitude";
  v3[17] = @"GPSLatitudeRef";
  v3[18] = @"GPSLongitude";
  v3[19] = @"GPSLongitudeRef";
  v3[20] = @"GPSMapDatum";
  v3[21] = @"GPSMeasureMode";
  v3[22] = @"GPSProcessingMethod";
  v3[23] = @"GPSSatellites";
  v3[24] = @"GPSSpeed";
  v3[25] = @"GPSSpeedRef";
  v3[26] = @"GPSStatus";
  v3[27] = @"GPSTimeStamp";
  v3[28] = @"GPSTrack";
  v3[29] = @"GPSTrackRef";
  v3[30] = @"GPSVersionID";
  do
  {
    CGImageMetadataRemoveTopLevelTag(a1, @"http://ns.adobe.com/exif/1.0/", v3[v2++]);
  }

  while (v2 != 31);
}

void CGImageMetadataRemoveTopLevelTag(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a2)
  {
    if (a3)
    {
      key[1] = a3;
      key[2] = 0;
      key[0] = a2;
      CFDictionaryRemoveValue(*(a1 + 24), key);
    }
  }
}

CFArrayRef CreateGPSVersionArrayFromString(const __CFString *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  *values = 0u;
  v22 = 0u;
  if (!a1 || (v2 = CFGetTypeID(a1), v2 != CFStringGetTypeID()) || (v3 = *MEMORY[0x1E695E480], (ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], a1, @".")) == 0))
  {
LABEL_24:
    v11 = 0;
    goto LABEL_25;
  }

  v5 = ArrayBySeparatingStrings;
  Count = CFArrayGetCount(ArrayBySeparatingStrings);
  v7 = Count;
  if (Count >= 2)
  {
    v8 = 0;
    while (1)
    {
      if (v7 <= v8)
      {
        valuePtr[0] = 0;
      }

      else
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, v8);
        valuePtr[0] = CFStringGetIntValue(ValueAtIndex);
      }

      v10 = CFNumberCreate(v3, kCFNumberIntType, valuePtr);
      values[v8] = v10;
      if (!v10)
      {
        goto LABEL_24;
      }

      if (++v8 == 4)
      {
        v11 = CFArrayCreate(v3, values, 4, MEMORY[0x1E695E9C0]);
        goto LABEL_31;
      }
    }
  }

  if (Count == 1)
  {
    IIOString::IIOString(valuePtr, a1);
    UTF8String = IIOString::createUTF8String(valuePtr);
    IIOString::~IIOString(valuePtr);
    Length = CFStringGetLength(a1);
    if (UTF8String)
    {
      v14 = Length;
      v15 = 0;
      while (1)
      {
        if (v14 <= v15)
        {
          valuePtr[0] = 0;
          v16 = CFNumberCreate(v3, kCFNumberIntType, valuePtr);
        }

        else
        {
          if (UTF8String[v15] - 48 >= 0xA)
          {
            v16 = values[v15];
            goto LABEL_21;
          }

          valuePtr[0] = UTF8String[v15] - 48;
          v16 = CFNumberCreate(v3, kCFNumberIntType, valuePtr);
        }

        values[v15] = v16;
LABEL_21:
        if (!v16)
        {
          goto LABEL_24;
        }

        if (++v15 == 4)
        {
          v11 = CFArrayCreate(v3, values, 4, MEMORY[0x1E695E9C0]);
          free(UTF8String);
          goto LABEL_31;
        }
      }
    }
  }

  v11 = 0;
LABEL_31:
  CFRelease(v5);
LABEL_25:
  for (i = 0; i != 4; ++i)
  {
    v18 = values[i];
    if (v18)
    {
      CFRelease(v18);
    }
  }

  return v11;
}

void sub_186094204(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

uint64_t CreateIntFromXMPFlashStruct(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (v2 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, @"Fired");
  DefaultString = CGImageMetadataGetDefaultString(Value);
  if (DefaultString)
  {
    v5 = CFStringCompare(DefaultString, @"True", 1uLL) == kCFCompareEqualTo;
  }

  else
  {
    v5 = 0;
  }

  v6 = CFDictionaryGetValue(a1, @"Return");
  v7 = CGImageMetadataGetDefaultString(v6);
  if (v7)
  {
    v5 = v5 & 0xFFFFFFF9 | (2 * (CFStringGetIntValue(v7) & 3u));
  }

  v8 = CFDictionaryGetValue(a1, @"Mode");
  v9 = CGImageMetadataGetDefaultString(v8);
  if (v9)
  {
    v5 = v5 & 0xFFFFFFE7 | (8 * (CFStringGetIntValue(v9) & 3u));
  }

  v10 = CFDictionaryGetValue(a1, @"Function");
  v11 = CGImageMetadataGetDefaultString(v10);
  if (v11)
  {
    if (CFStringCompare(v11, @"True", 1uLL))
    {
      v5 = v5;
    }

    else
    {
      v5 = v5 | 0x20;
    }
  }

  v12 = CFDictionaryGetValue(a1, @"RedEyeMode");
  v13 = CGImageMetadataGetDefaultString(v12);
  if (v13)
  {
    if (CFStringCompare(v13, @"True", 1uLL))
    {
      return v5;
    }

    else
    {
      return v5 | 0x40;
    }
  }

  return v5;
}