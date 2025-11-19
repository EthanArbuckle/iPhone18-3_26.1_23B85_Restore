void sub_1860B2D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

uint64_t GIFReadPlugin::decodeIndexedColorFrame(uint64_t a1, IIOScanner *a2, GlobalGIFInfo *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v83 = *MEMORY[0x1E69E9840];
  memset(__c, 0, sizeof(__c));
  *v73 = 0;
  *(a6 + 80) = 0;
  _cg_DGifOpen(a2, gifReadWithScanner, &__c[1]);
  v72 = v9;
  if (v9)
  {
    GlobalGIFInfo::getFrameInfoAtIndex(a3, *a6, v75);
    v10 = *v75;
    v11 = v76;
    v68 = v77;
    count = v78;
    v65 = v79;
    v12 = v82;
    if ((v82 & 2) != 0)
    {
      __c[0] = v80;
    }

    else if (!v81)
    {
      v13 = *(a3 + 22);
      if (v13)
      {
        bzero(v75, 0x400uLL);
        IIOColorMap::copyToRGBX(v13, v75, 0x400uLL, 0);
        if (**(a3 + 22) > 0x100u)
        {
          goto LABEL_103;
        }

        if (!IIOColorMap::indexForColor(0xFFFFFFFFLL, v75, **(a3 + 22), __c, v14))
        {
          __c[0] = 0;
        }
      }
    }

    IIOScanner::seek(a2, v10, 0);
    if (_cg_DGifGetImageDesc(v72))
    {
      GlobalGIFInfo::getSize(a3, &v73[1], v73);
      LODWORD(v16) = v73[1];
      v84.size.width = v16;
      LODWORD(v16) = v73[0];
      v84.size.height = v16;
      v17 = v11;
      v99.origin.y = v68;
      v99.size.width = count;
      v99.size.height = v65;
      v84.origin.x = 0.0;
      v84.origin.y = 0.0;
      v99.origin.x = v11;
      v85 = CGRectIntersection(v84, v99);
      x = v85.origin.x;
      y = v85.origin.y;
      width = v85.size.width;
      height = v85.size.height;
      if (CGRectIsEmpty(v85))
      {
        if (!*a6)
        {
          bzero(*(a6 + 40), *(a6 + 56));
        }

        v15 = 0;
        goto LABEL_100;
      }

      v86.origin.x = x;
      v86.origin.y = y;
      v86.size.width = width;
      v86.size.height = height;
      v22 = CGRectGetWidth(v86);
      v87.origin.x = v11;
      v87.size.width = count;
      v87.origin.y = v68;
      v87.size.height = v65;
      v23 = CGRectGetWidth(v87);
      v88.origin.x = v11;
      v88.size.width = count;
      v88.origin.y = v68;
      v88.size.height = v65;
      MinY = CGRectGetMinY(v88);
      v89.origin.x = x;
      v89.origin.y = y;
      v89.size.width = width;
      v89.size.height = height;
      v66 = CGRectGetMinY(v89);
      v90.origin.x = x;
      v90.origin.y = y;
      v90.size.width = width;
      v90.size.height = height;
      v24 = CGRectGetWidth(v90);
      v91.origin.x = x;
      v91.origin.y = y;
      v91.size.width = width;
      v91.size.height = height;
      v25 = v24;
      v26 = CGRectGetHeight(v91);
      if (*(a6 + 56) >= (v26 * v25))
      {
        if (v22 >= v23 && MinY >= v66)
        {
          v67 = 0;
          v27 = 0;
          goto LABEL_23;
        }

        v27 = malloc_type_calloc(count, 1uLL, 0x100004077774924uLL);
        if (v27)
        {
          if (x <= v17)
          {
            v67 = 0;
          }

          else
          {
            v67 = (x - v17);
          }

LABEL_23:
          v71 = v27;
          if ((v12 & 4) != 0)
          {
            v39 = 0;
            v40 = 0;
            v41 = -1;
            while (2)
            {
              for (i = gInterlacedOffset[v40]; i < v26; i += gInterlacedJumps[v40])
              {
                v96.origin.x = v17;
                v96.size.width = count;
                v96.origin.y = v68;
                v96.size.height = v65;
                v43 = CGRectGetMinY(v96);
                v44 = *(a6 + 40);
                v97.origin.x = x;
                v97.origin.y = y;
                v97.size.width = width;
                v97.size.height = height;
                v45 = (v44 + i * v25);
                v46 = (v43 + i);
                if (CGRectGetMinY(v97) > v46 || (v98.origin.x = x, v98.origin.y = y, v98.size.width = width, v98.size.height = height, CGRectGetMaxY(v98) <= v46))
                {
                  v48 = 0;
                  v47 = v71;
                }

                else
                {
                  if (v22 >= v23)
                  {
                    v47 = (v44 + i * v25);
                  }

                  else
                  {
                    v47 = v71;
                  }

                  v48 = 1;
                }

                if (!_cg_DGifGetLine(v72, v47, count))
                {
                  if (v41 >= 0xFFFFFFFFLL)
                  {
                    v15 = 0xFFFFFFFFLL;
                  }

                  else
                  {
                    v15 = v41;
                  }

                  if (v41 == -1)
                  {
                    v15 = -1;
                  }

                  else
                  {
                    if (i < v26)
                    {
                      v56 = gInterlacedJumps[v40];
                      v57 = v25 * i;
                      do
                      {
                        memset((*(a6 + 40) + v57), __c[0], v25);
                        i += v56;
                        v57 += v56 * v25;
                      }

                      while (i < v26);
                    }

                    if (v40 <= 2)
                    {
                      do
                      {
                        v58 = gInterlacedOffset[++v40];
                        if (v58 < v26)
                        {
                          v59 = gInterlacedJumps[v40];
                          v60 = v25 * v58;
                          do
                          {
                            memset((*(a6 + 40) + v60), __c[0], v25);
                            v58 += v59;
                            v60 += v25 * v59;
                          }

                          while (v58 < v26);
                        }
                      }

                      while (v40 != 3);
                    }
                  }

                  goto LABEL_97;
                }

                if (v22 < v23)
                {
                  v49 = v48;
                }

                else
                {
                  v49 = 0;
                }

                if (v49 == 1)
                {
                  memcpy(v45, &v71[v67], v25);
                }

                v50 = i + v68;
                if (v41 > i + v68)
                {
                  v50 = v41;
                }

                ++v39;
                v53 = v40 != 3 && v50 == v26 - 1 && v26 > 1;
                v41 = v50 - v53;
              }

              if (++v40 != 4)
              {
                continue;
              }

              break;
            }

            if (v39)
            {
              v54 = v65 == 1;
            }

            else
            {
              v54 = 0;
            }

            if (v54 && v41 == 0)
            {
              v15 = v39;
            }

            else
            {
              v15 = v41;
            }
          }

          else
          {
            v28 = *(a6 + 40);
            v92.origin.x = x;
            v92.origin.y = y;
            v92.size.width = width;
            v92.size.height = height;
            v29 = CGRectGetMinY(v92);
            v93.origin.x = v11;
            v93.size.width = count;
            v93.origin.y = v68;
            v93.size.height = v65;
            v30 = CGRectGetMinY(v93);
            v94.origin.x = x;
            v94.origin.y = y;
            v94.size.width = width;
            v94.size.height = height;
            if (CGRectGetMaxY(v94) > v30)
            {
              v31 = 0;
              v32 = v29;
              v33 = v30;
              while (1)
              {
                v34 = v33 + v31;
                v35 = v22 >= v23 ? v28 : v71;
                v36 = v34 < v32 ? v71 : v35;
                if (!_cg_DGifGetLine(v72, v36, count))
                {
                  break;
                }

                if (v34 >= v32 && v22 < v23)
                {
                  memcpy(v28, &v71[v67], v25);
                }

                v95.origin.x = x;
                v95.origin.y = y;
                v95.size.width = width;
                v95.size.height = height;
                MaxY = CGRectGetMaxY(v95);
                v28 += v25;
                v38 = (v33 + v31++ + 1);
                if (MaxY <= v38)
                {
                  v15 = v31 - 1;
                  goto LABEL_90;
                }
              }

              v61 = v33 - v32 + v31;
              v15 = v61 & ~(v61 >> 63);
              if (v15 < v26)
              {
                v62 = v61 & ~(v61 >> 63);
                v63 = v71;
                do
                {
                  memset(v28, __c[0], v25);
                  v28 += v25;
                  ++v62;
                }

                while (v62 < v26);
LABEL_98:
                if (v63)
                {
                  free(v63);
                }

                goto LABEL_100;
              }

LABEL_97:
              v63 = v71;
              goto LABEL_98;
            }

            v15 = -1;
          }

LABEL_90:
          if (*(v72 + 48))
          {
            operator new();
          }

          goto LABEL_97;
        }
      }
    }

    else
    {
      GIFReadPlugin::decodeIndexedColorFrame();
    }

LABEL_103:
    v15 = -1;
LABEL_100:
    _cg_DGifCloseFile(v72, 0);
    return v15;
  }

  return -1;
}

void GIFReadPlugin::decodeIndexedColorFrames(uint64_t a1, IIOImageRead *this, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v16 = 0;
  v12 = IIOImageRead::retainBytePointer(this, &v16, 1);
  Size = IIOImageRead::getSize(this);
  v14 = (a6[1] - *a6) >> 3;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 0x40000000;
  v15[2] = ___ZN13GIFReadPlugin24decodeIndexedColorFramesEP12IIOImageReadP13GlobalGIFInfoRK14ReadPluginDataRK13GIFPluginDataRNSt3__16vectorI20IIODecodeFrameParamsNSA_9allocatorISC_EEEE_block_invoke;
  v15[3] = &__block_descriptor_tmp_51;
  v15[4] = a1;
  v15[5] = a6;
  v15[6] = v12;
  v15[7] = Size;
  v15[8] = a3;
  v15[9] = a4;
  v15[10] = a5;
  dispatch_apply(0x2E8BA2E8BA2E8BA3 * v14, 0, v15);
  if (this)
  {
    if (v16)
    {
      IIOImageRead::releaseBytePointer(this, v16);
    }
  }
}

void ___ZN13GIFReadPlugin24decodeIndexedColorFramesEP12IIOImageReadP13GlobalGIFInfoRK14ReadPluginDataRK13GIFPluginDataRNSt3__16vectorI20IIODecodeFrameParamsNSA_9allocatorISC_EEEE_block_invoke(uint64_t a1, unint64_t a2)
{
  v2 = **(a1 + 40);
  if (0x2E8BA2E8BA2E8BA3 * ((*(*(a1 + 40) + 8) - v2) >> 3) <= a2)
  {
    __break(1u);
  }

  else
  {
    v4 = v2 + 88 * a2;
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    v5 = IIOScanner::IIOScanner(v8, *(a1 + 48), *(a1 + 56), 1);
    *(v4 + 64) = GIFReadPlugin::decodeIndexedColorFrame(v5, v8, *(a1 + 64), v6, v7, v4);
    IIOScanner::~IIOScanner(v8);
  }
}

void GIFReadPlugin::createFrameBufferAtIndex(IIO_ReaderHandler *a1, CGRect *a2, uint64_t a3, IIO_Reader *a4, GlobalGIFInfo *a5, uint64_t a6, uint64_t a7)
{
  ReaderHandler = IIO_ReaderHandler::GetReaderHandler(a1);
  IIO_ReaderHandler::readerForType(ReaderHandler, 1195984416);
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v15 = IIO_Reader::testHeaderSize(a4);
  if (!v15)
  {
    goto LABEL_15;
  }

  v41 = 0;
  v40 = 0;
  *length = 0u;
  v39 = 0u;
  GlobalGIFInfo::getFrameInfoAtIndex(a5, a3, length);
  LOWORD(v16) = length[1];
  v46.origin.x = v16;
  LOWORD(v16) = WORD1(length[1]);
  v46.origin.y = v16;
  LOWORD(v16) = WORD2(length[1]);
  v46.size.width = v16;
  LOWORD(v16) = HIWORD(length[1]);
  v46.size.height = v16;
  v45 = CGRectIntersection(*a2, v46);
  x = v45.origin.x;
  y = v45.origin.y;
  width = v45.size.width;
  height = v45.size.height;
  v21 = v45.size.width;
  if (CGRectIsEmpty(v45))
  {
    v22 = 0;
    goto LABEL_6;
  }

  if (!is_mul_ok(v21, height) || (v22 = _ImageIO_Malloc(v21 * height, *(a6 + 216), &v41, kImageMalloc_GIF_Data[0], 0, 0)) == 0)
  {
LABEL_15:
    *&v29 = &v42;
    std::vector<IIODecodeFrameParams>::__destroy_vector::operator()[abi:fe200100](&v29);
    return;
  }

LABEL_6:
  *&v29 = a3;
  *(&v29 + 1) = x;
  *&v30 = y;
  *(&v30 + 1) = width;
  v31 = height;
  v32 = v22;
  v33 = width;
  v34 = v41;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  std::vector<IIODecodeFrameParams>::push_back[abi:fe200100](&v42, &v29);
  IIODecodeFrameParams::~IIODecodeFrameParams(&v29);
  GIFReadPlugin::decodeIndexedColorFrames(a1, v15, a5, a6, a7, &v42);
  v23 = v42;
  if (v43 != v42)
  {
    v31 = 0.0;
    v29 = 0u;
    v30 = 0u;
    GlobalGIFInfo::getFrameInfoAtIndex(a5, *v42, &v29);
    if (WORD1(v30))
    {
      v24 = WORD1(v30) / 100.0;
    }

    else
    {
      v24 = 0.0333333333;
    }

    v25 = IIOFrameBufferCreateForBuffer(v23[5], v23[7], HIWORD(v29) * WORD6(v29), *v23, v24);
    IIOGIFFrameSetNumRowsDecoded(v25, v23[8]);
    v26 = v23[10];
    if (v26)
    {
      length[0] = 0;
      SerializedData = IIOColorMap::createSerializedData(v26, length);
      if (SerializedData)
      {
        v28 = CFDataCreate(*MEMORY[0x1E695E480], SerializedData, length[0]);
        if (v28)
        {
          IIOFrameBufferSetColorTable(v25, v28);
          CFRelease(v28);
        }

        free(SerializedData);
      }
    }

    goto LABEL_15;
  }

  __break(1u);
}

void sub_1860B38A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  a9 = (v9 - 120);
  std::vector<IIODecodeFrameParams>::__destroy_vector::operator()[abi:fe200100](&a9);
  _Unwind_Resume(a1);
}

void sub_1860B3A38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<IIODecodeFrameParams>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t GIFReadPlugin::doDecodeImageData(IIO_ReaderHandler *a1, IIO_Reader *this, GlobalGIFInfo *a3, uint64_t a4, uint64_t a5, char *a6, size_t a7, uint64_t *a8, uint64_t *a9)
{
  v115 = *MEMORY[0x1E69E9840];
  if (!this || (v14 = IIO_Reader::testHeaderSize(this)) == 0)
  {
    v44 = 0;
    v93 = 0;
    NumRowsDecoded = -1;
    goto LABEL_112;
  }

  v15 = v14;
  v95 = this;
  bzero(v114, 0x400uLL);
  v16 = *a5;
  v17 = *(a4 + 112);
  v18 = *(a4 + 116);
  v108 = a4;
  *v112 = 0;
  v103 = a3;
  GlobalGIFInfo::getSize(a3, &v112[1], v112);
  LODWORD(v19) = v112[1];
  LODWORD(v20) = v112[0];
  v113.origin = 0uLL;
  v113.size.width = v19;
  v113.size.height = v20;
  v21 = *a8;
  if (!*a8)
  {
    v30 = 0;
    v23 = a4;
    goto LABEL_26;
  }

  v22 = *(v21 + 8);
  v23 = a4;
  if (!v22)
  {
    goto LABEL_25;
  }

  v24 = *(a4 + 24);
  if (!v24)
  {
    goto LABEL_25;
  }

  v25 = *(v21 + 20);
  if (v25 == v24 - 1)
  {
    GlobalGIFInfo::getFrameInfoAtIndex(a3, v25, __p);
    if (LOWORD(__p[2]) >= 2u)
    {
      v23 = a4;
      if (LOWORD(__p[2]) == 2 && (BYTE4(__p[4]) & 1) != 0)
      {
        v30 = 0;
        v16 = *(a4 + 24) - 1;
        goto LABEL_26;
      }
    }

    else
    {
      v26 = *a8;
      v23 = a4;
      if (*(*a8 + 36) == *(a4 + 236))
      {
        v27 = *(a4 + 116);
        if (v27 == *(v26 + 24))
        {
          v28 = *(v26 + 32) * v27;
          if (v28 >= a7)
          {
            v29 = a7;
          }

          else
          {
            v29 = v28;
          }

          memcpy(a6, *(v26 + 8), v29);
          v30 = 1;
          goto LABEL_26;
        }
      }
    }

LABEL_25:
    v30 = 0;
    goto LABEL_26;
  }

  v30 = 0;
  if (v25 < v16 || v25 >= v24)
  {
    goto LABEL_26;
  }

  if (*(v21 + 36) != *(a4 + 236))
  {
    goto LABEL_25;
  }

  v31 = *(a4 + 116);
  if (v31 != *(v21 + 24))
  {
    goto LABEL_25;
  }

  v32 = *(v21 + 32) * v31;
  if (v32 >= a7)
  {
    v33 = a7;
  }

  else
  {
    v33 = v32;
  }

  memcpy(a6, v22, v33);
  v30 = 0;
  v16 = *(*a8 + 20);
LABEL_26:
  if (*(a5 + 4) == 1)
  {
    v111 = 0;
    v110 = 0;
    std::string::basic_string[abi:fe200100]<0>(__p, kFrameBufferQueueKey);
    ClientValueForKey = IIOImageRead::getClientValueForKey(v15, __p, &v110);
    v23 = a4;
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    v97 = v110;
    if (!v110)
    {
      ReaderHandler = IIO_ReaderHandler::GetReaderHandler(ClientValueForKey);
      IIO_ReaderHandler::readerForType(ReaderHandler, 1195984416);
      memcpy(__p, a4, sizeof(__p));
      operator new();
    }

    if (v111)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v111);
    }
  }

  else
  {
    v97 = 0;
  }

  v107 = &a6[v18 * v17];
  if (v30 & 1) != 0 || (*(a5 + 5))
  {
    NumRowsDecoded = -1;
    v36 = v103;
    goto LABEL_37;
  }

  v36 = v103;
  if (v16 < *(v23 + 24))
  {
    NumRowsDecoded = -1;
    Buffer = 0;
    v61 = v16;
    v62 = 255;
    while (1)
    {
      v106 = v61;
      GlobalGIFInfo::getFrameInfoAtIndex(v36, v61, __p);
      v63 = LOWORD(__p[1]);
      v64 = WORD1(__p[1]);
      v65 = WORD2(__p[1]);
      v100 = HIWORD(__p[1]);
      v66 = LOWORD(__p[2]);
      v67 = SWORD2(__p[2]);
      v68 = BYTE4(__p[4]);
      if (LOWORD(__p[2]) == 2)
      {
        break;
      }

      if (LOWORD(__p[2]) != 3)
      {
        if (v97)
        {
          v104 = IIOFrameBufferQueue::getAndRetainBufferAtIndex(v97, v106);
        }

        else
        {
          GIFReadPlugin::createFrameBufferAtIndex(a1, &v113, v106, v95, v103, v108, a5);
          v104 = v70;
        }

        if (!v104)
        {
          _cg_jpeg_mem_term("doDecodeImageData", 1142, "*** IIOFrameBufferQueue returned NULL for buffer at index: %ld\n", v106);
          goto LABEL_120;
        }

        Buffer = IIOFrameBufferGetBuffer(v104);
        ColorTable = IIOFrameBufferGetColorTable(v104);
        v72 = ColorTable;
        if (ColorTable)
        {
          memset(__p, 0, 24);
          BytePtr = CFDataGetBytePtr(ColorTable);
          Length = CFDataGetLength(v72);
          IIOColorMap::IIOColorMap(__p, BytePtr, Length);
          LOWORD(v75) = __p[0];
          IIOColorMap::copyToRGBX(__p, v114, 0x400uLL, *(v108 + 237) == 0);
          v76 = __p[2];
          __p[2] = 0;
          v77 = v104;
          if (v76)
          {
            MEMORY[0x186602830](v76, 0x1000C8033FC2DF1);
          }
        }

        else
        {
          v78 = *(v103 + 22);
          if (!v78)
          {
            bzero(a6, (*(v108 + 116) * *(v108 + 112)));
LABEL_116:
            v44 = v104;
            goto LABEL_111;
          }

          v75 = *v78;
          IIOColorMap::copyToRGBX(v78, v114, 0x400uLL, *(v108 + 237) == 0);
          v77 = v104;
        }

        NumRowsDecoded = IIOGIFFrameGetNumRowsDecoded(v77);
        if (NumRowsDecoded < 0)
        {
          goto LABEL_116;
        }

        if (v67 > v75)
        {
          v79 = v67 + 1;
        }

        else
        {
          v79 = v75;
        }

        if (v79 >= 0xFFu)
        {
          v62 = 255;
        }

        else
        {
          v62 = v79;
        }

        goto LABEL_88;
      }

      if (!v106)
      {
        bzero(a6, (*(v108 + 116) * *(v108 + 112)));
      }

      v69 = 0;
LABEL_108:
      IIOFrameBufferRelease(v69);
      v61 = v106 + 1;
      v23 = v108;
      v36 = v103;
      if (v106 + 1 >= *(v108 + 24))
      {
        goto LABEL_37;
      }
    }

    v104 = 0;
LABEL_88:
    v119.origin.x = v63;
    v119.origin.y = v64;
    v119.size.width = v65;
    v119.size.height = v100;
    x = v113.origin.x;
    v117 = CGRectIntersection(v113, v119);
    height = v117.size.height;
    if (v117.size.height)
    {
      v82 = 0;
      width = v117.size.width;
      y = v117.origin.y;
      v85 = &a6[4 * (v117.origin.x - x)];
      v86 = 4 * v117.size.width;
      do
      {
        v87 = &v85[(v82 + y) * *(v108 + 116)];
        if (v87 > v107 || &v87[v86] > v107)
        {
          break;
        }

        if (v66 < 2)
        {
          if (width)
          {
            v89 = (Buffer + v82 * width);
            v90 = width;
            do
            {
              v92 = *v89++;
              v91 = v92;
              if (v92 > v62)
              {
                v91 = 0;
              }

              if ((v68 & 2) == 0 || v91 != v67)
              {
                *v87 = v114[v91];
              }

              v87 += 4;
              --v90;
            }

            while (v90);
          }
        }

        else if (v66 == 2 && width)
        {
          bzero(v87, v86);
        }

        ++v82;
      }

      while (v82 != height);
    }

    v69 = v104;
    goto LABEL_108;
  }

  NumRowsDecoded = -1;
LABEL_37:
  v37 = (v23 + 24);
  GlobalGIFInfo::getFrameInfoAtIndex(v36, *(v23 + 24), __p);
  v38 = LOWORD(__p[1]);
  v39 = WORD1(__p[1]);
  v40 = WORD2(__p[1]);
  v105 = HIWORD(__p[1]);
  v41 = SWORD2(__p[2]);
  v42 = BYTE4(__p[4]);
  if (v97)
  {
    v43 = IIOFrameBufferQueue::getAndRetainBufferAtIndex(v97, *v37);
  }

  else
  {
    GIFReadPlugin::createFrameBufferAtIndex(a1, &v113, *v37, v95, v103, v108, a5);
  }

  v44 = v43;
  if (!v43)
  {
    GIFReadPlugin::doDecodeImageData(v37);
LABEL_120:
    v44 = 0;
    goto LABEL_111;
  }

  v45 = IIOFrameBufferGetBuffer(v43);
  v46 = IIOFrameBufferGetColorTable(v44);
  v47 = v46;
  if (v46)
  {
    memset(__p, 0, 24);
    v48 = CFDataGetBytePtr(v46);
    v49 = CFDataGetLength(v47);
    IIOColorMap::IIOColorMap(__p, v48, v49);
    LOWORD(v50) = __p[0];
    IIOColorMap::copyToRGBX(__p, v114, 0x400uLL, *(v108 + 237) == 0);
    GIFReadPlugin::doDecodeImageData(__p);
    goto LABEL_45;
  }

  v51 = *(v103 + 22);
  if (v51)
  {
    v50 = *v51;
    IIOColorMap::copyToRGBX(v51, v114, 0x400uLL, *(v108 + 237) == 0);
LABEL_45:
    NumRowsDecoded = IIOGIFFrameGetNumRowsDecoded(v44);
    if ((NumRowsDecoded & 0x8000000000000000) == 0)
    {
      if (v41 > v50)
      {
        LOWORD(v50) = v41 + 1;
      }

      v118.origin.x = v38;
      v118.origin.y = v39;
      v118.size.width = v40;
      v118.size.height = v105;
      v52 = v113.origin.x;
      v116 = CGRectIntersection(v113, v118);
      if (v116.size.height)
      {
        v53 = 0;
        v54 = v116.size.width;
        do
        {
          v55 = &a6[4 * (v116.origin.x - v52) + (v53 + v116.origin.y) * *(v108 + 116)];
          if (v55 > v107 || &v55[4 * v116.size.width] > v107)
          {
            break;
          }

          if (v54)
          {
            v57 = (v45 + v53 * v54);
            v58 = v116.size.width;
            do
            {
              v60 = *v57++;
              v59 = v60;
              if (v60 > v50)
              {
                v59 = 0;
              }

              if ((v42 & 2) == 0 || v59 != v41)
              {
                *v55 = v114[v59];
              }

              v55 += 4;
              --v58;
            }

            while (v58);
          }

          ++v53;
        }

        while (v53 != v116.size.height);
      }
    }

    goto LABEL_111;
  }

  bzero(a6, (*(v108 + 116) * *(v108 + 112)));
LABEL_111:
  v93 = 1;
LABEL_112:
  IIOFrameBufferRelease(v44);
  *a9 = NumRowsDecoded;
  return v93;
}

void sub_1860B43D0(_Unwind_Exception *a1)
{
  if (STACK[0x310])
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](STACK[0x310]);
  }

  _Unwind_Resume(a1);
}

__CFArray *___ZN13GIFReadPlugin17doDecodeImageDataEP19IIOImageReadSessionP13GlobalGIFInfoRK14ReadPluginDataRK13GIFPluginDataPhmNSt3__110shared_ptrI13GIFBufferInfoEEPl_block_invoke(uint64_t a1, uint64_t a2)
{
  v26 = *(a1 + 32);
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v6 = 0;
  for (i = a2; i < GlobalGIFInfo::frameCount(*(a1 + 40)); ++i)
  {
    v39 = 0;
    v38 = 0;
    *length = 0u;
    v37 = 0u;
    GlobalGIFInfo::getFrameInfoAtIndex(*(a1 + 40), i, length);
    LOWORD(v8) = length[1];
    v44.origin.x = v8;
    LOWORD(v8) = WORD1(length[1]);
    v44.origin.y = v8;
    LOWORD(v8) = WORD2(length[1]);
    v44.size.width = v8;
    LOWORD(v8) = HIWORD(length[1]);
    v44.size.height = v8;
    v43 = CGRectIntersection(*(a1 + 48), v44);
    x = v43.origin.x;
    y = v43.origin.y;
    width = v43.size.width;
    height = v43.size.height;
    v13 = v43.size.width;
    if (CGRectIsEmpty(v43))
    {
      v14 = 0;
    }

    else
    {
      v15 = height;
      if (!is_mul_ok(v13, height))
      {
        goto LABEL_25;
      }

      v16 = v13 * v15;
      v14 = _ImageIO_Malloc(v13 * v15, *(a1 + 296), &v39, kImageMalloc_GIF_Data[0], 0, 0);
      if (!v14)
      {
        goto LABEL_25;
      }

      v6 += v16;
    }

    *&v27 = i;
    *(&v27 + 1) = x;
    *&v28 = y;
    *(&v28 + 1) = width;
    v29 = height;
    v30 = v14;
    v31 = width;
    v32 = v39;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    std::vector<IIODecodeFrameParams>::push_back[abi:fe200100](&v40, &v27);
    IIODecodeFrameParams::~IIODecodeFrameParams(&v27);
    v17 = (v6 & 0xFFFFFFFFFFFF0000) != 0 && (0x2E8BA2E8BA2E8BA3 * (v41 - v40)) > 2;
    if (v17 || v6 >> 20)
    {
      break;
    }
  }

  if ((gIIODebugFlags & 0x1000000000000) != 0)
  {
    ImageIOLog("    Asking for frames at indexes: (%ld, %ld), %ld bytes\n", a2, 0x2E8BA2E8BA2E8BA3 * (v41 - v40), v6);
  }

  GIFReadPlugin::decodeIndexedColorFrames(v26, *(a1 + 344), *(a1 + 40), a1 + 80, a1 + 352, &v40);
  v18 = v40;
  for (j = v41; v18 != j; v18 += 11)
  {
    v29 = 0.0;
    v27 = 0u;
    v28 = 0u;
    GlobalGIFInfo::getFrameInfoAtIndex(*(a1 + 40), *v18, &v27);
    v20 = 0.0333333333;
    if (WORD1(v28))
    {
      v20 = WORD1(v28) / 100.0;
    }

    v21 = IIOFrameBufferCreateForBuffer(v18[5], v18[7], HIWORD(v27) * WORD6(v27), *v18, v20);
    IIOGIFFrameSetNumRowsDecoded(v21, v18[8]);
    v22 = v18[10];
    if (v22)
    {
      length[0] = 0;
      SerializedData = IIOColorMap::createSerializedData(v22, length);
      if (SerializedData)
      {
        v24 = CFDataCreate(v4, SerializedData, length[0]);
        if (v24)
        {
          IIOFrameBufferSetColorTable(v21, v24);
          CFRelease(v24);
        }

        free(SerializedData);
      }
    }

    CFArrayAppendValue(Mutable, v21);
    IIOFrameBufferRelease(v21);
  }

LABEL_25:
  *&v27 = &v40;
  std::vector<IIODecodeFrameParams>::__destroy_vector::operator()[abi:fe200100](&v27);
  return Mutable;
}

void sub_1860B479C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = (v13 - 144);
  std::vector<IIODecodeFrameParams>::__destroy_vector::operator()[abi:fe200100](&a13);
  _Unwind_Resume(a1);
}

const void *GIFReadPlugin::copyImageBlockSetImp(IIOReadPlugin *this, const void *a2, const void *a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v15 = a3;
  __dst = 0;
  if (a3)
  {
    CGImageProviderGetSize();
  }

  v60 = 0;
  if (!*(this + 3))
  {
    goto LABEL_51;
  }

  if (!*(this + 53))
  {
    *(this + 53) = 16;
  }

  *(this + 79) = (4 * *(this + 61) + 15) & 0xFFFFFFF0;
  IIOReadPlugin::allocateBlockArray(this, *(this + 26));
  CachedBlocks = IIOReadPlugin::getCachedBlocks(this);
  IIOReadPlugin::debugCopyBlockSet(this, v15, a4, a5, a6, a7, a8, a9);
  if (CachedBlocks)
  {
    v19 = IIOImageReadSession::globalInfoForType(*(this + 3), 1195984416);
    if (v19)
    {
      v20 = v19;
      if (GlobalGIFInfo::frameCount(v19) > *(this + 56))
      {
        v58 = 0;
        v59 = 0;
        GlobalGIFInfo::getCachedFrameBuffer(v20, &v58);
        v21 = *(this + 79) * *(this + 78);
        v22 = _ImageIO_Malloc(v21, *(this + 52), &v60, kImageMalloc_GIF_Data[0], 0, 0);
        __dst = v22;
        if (v22)
        {
          if (v58)
          {
            v23 = *(v58 + 8);
            if (v23)
            {
              v24 = *(v58 + 24);
              v25 = v24 * *(v58 + 32);
              if (v25)
              {
                v26 = *(v58 + 20);
                if (v26 == *(this + 56) && v24 == *(this + 79) && v25 == *(this + 78) * v24)
                {
                  if ((gIIODebugFlags & 0x30000) != 0)
                  {
                    ImageIOLog("    frame#%d found in current-cache\n", v26);
                    v22 = __dst;
                    v23 = *(v58 + 8);
                    v25 = *(v58 + 24) * *(v58 + 32);
                  }

                  memcpy(v22, v23, v25);
                  if (*(v58 + 36) != *(this + 436))
                  {
                    *permuteMap = 50331906;
                    dest.data = __dst;
                    v28 = *(this + 308);
                    v29.i64[0] = v28;
                    v29.i64[1] = HIDWORD(v28);
                    *&dest.height = vextq_s8(v29, v29, 8uLL);
                    dest.rowBytes = *(this + 79);
                    vImagePermuteChannels_ARGB8888(&dest, &dest, permuteMap, 0x10u);
                  }

                  LODWORD(v27) = *(this + 77);
                  v30 = v27;
                  LODWORD(v27) = *(this + 78);
                  v31 = v27;
                  v62.origin.x = 0.0;
                  v62.origin.y = 0.0;
                  v62.size.width = v30;
                  v62.size.height = v31;
                  **(this + 12) = IIOReadPlugin::createImageBlock(this, __dst, v60, v62, *(this + 79), *(this + 371));
                  v63.origin.x = 0.0;
                  v63.origin.y = 0.0;
                  v63.size.width = v30;
                  v63.size.height = v31;
                  AddSubRect((this + 120), v63);
                  CachedBlocks = 0;
                  v32 = 1;
                  *(this + 26) = 1;
                  v33 = 1;
LABEL_43:
                  if (v59)
                  {
                    std::__shared_weak_count::__release_shared[abi:fe200100](v59);
                  }

                  if ((v33 & 1) == 0)
                  {
                    goto LABEL_52;
                  }

                  goto LABEL_46;
                }
              }
            }
          }

          v57 = 0;
          memset(&dest, 0, sizeof(dest));
          GlobalGIFInfo::getFrameInfoAtIndex(v20, *(this + 56), &dest);
          v55 = 0;
          v34 = *(this + 3);
          if (v34)
          {
            CachedBlocks = IIOImageReadSession::mapData(v34);
            v34 = *(this + 3);
          }

          else
          {
            CachedBlocks = 0;
          }

          IIOImageReadSession::rewind(v34);
          v35 = *(this + 3);
          v37 = v60;
          v36 = __dst;
          v38 = v59;
          v54[0] = v58;
          v54[1] = v59;
          if (v59)
          {
            atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v32 = GIFReadPlugin::doDecodeImageData(this, v35, v20, this + 200, this + 464, v36, v37, v54, &v55);
          if (v38)
          {
            std::__shared_weak_count::__release_shared[abi:fe200100](v38);
          }

          if (LOWORD(dest.width) <= 1u)
          {
            *permuteMap = 0;
            v53 = 0;
            std::allocate_shared[abi:fe200100]<GIFBufferInfo,std::allocator<GIFBufferInfo>,unsigned char *&,BOOL,unsigned int &,unsigned int &,unsigned int,0>();
          }

          if ((v55 & 0x8000000000000000) == 0)
          {
            LODWORD(v39) = *(this + 77);
            v40 = v39;
            LODWORD(v39) = *(this + 78);
            v41 = v39;
            if (v55 >= HIWORD(dest.height) - 1)
            {
              v42 = *(this + 371);
            }

            else
            {
              v42 = 0;
              *(this + 371) = 0;
            }

            v64.origin.x = 0.0;
            v64.origin.y = 0.0;
            v64.size.width = v40;
            v64.size.height = v41;
            **(this + 12) = IIOReadPlugin::createImageBlock(this, __dst, v60, v64, *(this + 79), v42 & 1);
            v44 = CGRectEqualToRect(*(this + 120), *MEMORY[0x1E695F050]);
            v45 = 0;
            if (v44)
            {
              v46 = 0;
            }

            else
            {
              v65.origin.x = 0.0;
              v65.origin.y = 0.0;
              v65.size.width = v40;
              v65.size.height = v41;
              *&v45 = CGRectUnion(*(this + 120), v65);
              v40 = v47;
              v41 = v48;
            }

            *(this + 15) = v45;
            *(this + 16) = v46;
            v33 = 1;
            *(this + 17) = v40;
            *(this + 18) = v41;
            goto LABEL_43;
          }

          v43 = *(this + 26);
          if (v43)
          {
            *(this + 26) = v43 - 1;
          }

          _ImageIO_Free(__dst, v60);
        }

        else
        {
          _cg_jpeg_mem_term("copyImageBlockSetImp", 1453, "*** ImageIO_Malloc failed to alloc %ld bytes\n", v21);
          CachedBlocks = 0;
          v32 = 0;
        }

        v33 = 0;
        goto LABEL_43;
      }
    }

LABEL_51:
    CachedBlocks = 0;
    goto LABEL_52;
  }

  v32 = 1;
LABEL_46:
  if (v32)
  {
    v49 = *(this + 26);
    if (v49)
    {
      if (v15)
      {
        v15 = IIOReadPlugin::imageBlockSetCreate(this, v15, v49, *(this + 17), *(this + 18), *(this + 15), *(this + 16), *(this + 17), *(this + 18), *(this + 12), a2);
        IIOReadPlugin::freeBlockArray(this);
        if ((CachedBlocks & 1) == 0)
        {
          return v15;
        }

        goto LABEL_56;
      }
    }
  }

LABEL_52:
  if (v15)
  {
    IIOReadPlugin::freeBlockArray(this);
    v15 = 0;
    if ((CachedBlocks & 1) == 0)
    {
      return v15;
    }
  }

  else if (!CachedBlocks)
  {
    return v15;
  }

LABEL_56:
  v50 = *(this + 3);
  if (v50)
  {
    IIOImageReadSession::unmapData(v50);
  }

  return v15;
}

void sub_1860B4D4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GIFReadPlugin::decodeImageImp(IIOReadPlugin *this, IIODecodeParameter *a2, int a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  seed = 0;
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
      ImageIOLog("♦️  '%c%c%c%c' [%s] %s\n", v15, v18, v21, v22, iioTypeStr[a3], "virtual OSStatus GIFReadPlugin::decodeImageImp(IIODecodeParameter *, IIOImageType, IOSurfaceRef *, CVPixelBufferRef *, CGImageBlockSetRef *)");
      goto LABEL_26;
    }

    v22 = 46;
    goto LABEL_25;
  }

LABEL_26:
  IIOReadPlugin::debugDecodeImage(this, a2);
  *(this + 56) = *(a2 + 9);
  *(this + 26) = 1;
  *(this + 14) = 0x100000000;
  v23 = *(a2 + 1);
  v24 = *(a2 + 2);
  v25 = *(a2 + 3);
  v26 = *(a2 + 4);
  v27 = *(a2 + 5);
  v28 = *(a2 + 6);
  v29 = *(a2 + 7);
  v30 = *(a2 + 8);
  XmpData = _APP1XMP::getXmpData(a2);
  v32 = (*(*this + 208))(this, v23, v24, XmpData, v25, v26, v27, v28, v29, v30);
  v33 = v32;
  if (a3 == 1)
  {
    if (v32 && CGImageBlockSetGetCount() == 1 || *(this + 26) == 1)
    {
      if (!a4)
      {
        goto LABEL_39;
      }

      if (!*a4)
      {
        goto LABEL_51;
      }

      if (!IOSurfaceLock(*a4, 0, &seed))
      {
        BaseAddress = IOSurfaceGetBaseAddress(*a4);
        IOSurfaceGetWidth(*a4);
        Height = IOSurfaceGetHeight(*a4);
        BytesPerRow = IOSurfaceGetBytesPerRow(*a4);
        if (v33)
        {
          CGImageBlockSetGetImageBlock();
        }

        CGImageBlockGetRect();
        v39 = v38;
        v40 = CGImageBlockGetBytesPerRow();
        Data = CGImageBlockGetData();
        if (BytesPerRow == v40 && Height == v39)
        {
          memcpy(BaseAddress, Data, BytesPerRow * Height);
        }

        else
        {
          if (v40 >= BytesPerRow)
          {
            v42 = BytesPerRow;
          }

          else
          {
            v42 = v40;
          }

          for (; v39; --v39)
          {
            memcpy(BaseAddress, Data, v42);
            BaseAddress += BytesPerRow;
            Data += v40;
          }
        }

        IOSurfaceUnlock(*a4, 0, &seed);
LABEL_51:
        a4 = 0;
        if (!v33)
        {
          return a4;
        }

        goto LABEL_40;
      }
    }

    a4 = 4294967246;
  }

  else
  {
    a4 = 4294967246;
    if (a3 == 3 && a6)
    {
      a4 = 0;
      *a6 = v32;
      return a4;
    }
  }

LABEL_39:
  if (v33)
  {
LABEL_40:
    CGImageBlockSetRelease();
  }

  return a4;
}

void *std::__shared_ptr_emplace<GIFBufferInfo>::__shared_ptr_emplace[abi:fe200100]<unsigned char *&,BOOL,unsigned int &,unsigned int &,unsigned int,std::allocator<GIFBufferInfo>,0>(void *a1, unsigned __int8 **a2, BOOL *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1EF4DC730;
  GIFBufferInfo::GIFBufferInfo((a1 + 3), *a2, *a3, *a4, *a5, *a6);
  return a1;
}

int8x16_t *png_write_filter_row_none_neon(int8x16_t *result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  if (a2 >= result && a2 - result >= a5 && a4 >= a3 && a4 - a3 >= a5)
  {
    v5 = 0uLL;
    v6 = result;
    if (a5 >= 0x40)
    {
      v7 = 0uLL;
      v8 = 0uLL;
      v9 = 0uLL;
      do
      {
        v10 = *v6;
        v11 = v6[1];
        v12 = v6[2];
        v13 = v6[3];
        v6 += 4;
        v5 = vpadalq_u16(v5, vpaddlq_u8(vabsq_s8(v10)));
        v7 = vpadalq_u16(v7, vpaddlq_u8(vabsq_s8(v11)));
        v8 = vpadalq_u16(v8, vpaddlq_u8(vabsq_s8(v12)));
        v9 = vpadalq_u16(v9, vpaddlq_u8(vabsq_s8(v13)));
        a5 -= 64;
      }

      while (a5 > 0x3F);
      v5 = vaddq_s32(vaddq_s32(v8, v9), vaddq_s32(v7, v5));
    }

    if (a5 >= 0x10)
    {
      do
      {
        v14 = *v6++;
        v5 = vpadalq_u16(v5, vpaddlq_u8(vabsq_s8(v14)));
        a5 -= 16;
      }

      while (a5 > 0xF);
    }

    v15 = vpadalq_u32(vdupq_laneq_s64(vpaddlq_u32(v5), 1), v5).u32[0];
    if (a5 < 4)
    {
      return v15;
    }

    while (v6 < a2)
    {
      if (v6 < result)
      {
        break;
      }

      v18 = v6->u8[0];
      v16 = &v6->u8[1];
      v17 = v18;
      if (v16 >= a2)
      {
        break;
      }

      if (v16 < result)
      {
        break;
      }

      v21 = *v16;
      v19 = v16 + 1;
      v20 = v21;
      if (v19 >= a2)
      {
        break;
      }

      if (v19 < result)
      {
        break;
      }

      v22 = v19 + 1;
      if (v22 >= a2 || v22 < result)
      {
        break;
      }

      v23 = *(v22 - 1);
      v25 = *v22;
      v6 = (v22 + 1);
      v24 = v25;
      v26 = v25;
      if ((v17 & 0x80u) != 0)
      {
        v17 = 256 - v17;
      }

      if ((v20 & 0x80u) != 0)
      {
        v20 = 256 - v20;
      }

      v27 = 256 - v23;
      if ((v23 & 0x80u) == 0)
      {
        v27 = v23;
      }

      v28 = 256 - v24;
      if (v26 >= 0)
      {
        v28 = v24;
      }

      v15 = (v17 + v15 + v20 + v27 + v28);
      a5 -= 4;
      if (a5 <= 3)
      {
        return v15;
      }
    }
  }

  __break(0x5519u);
  return result;
}

unsigned __int8 *png_write_filter_row_sub_neon(unsigned __int8 *result, unint64_t a2, int8x16_t *a3, unint64_t a4, unint64_t a5)
{
  if (a2 >= result && a2 - result >= a5 && a2 > result && a4 >= a3 && a4 - a3 >= a5)
  {
    v5 = *result;
    if ((result + 1) < a2 && result + 1 >= result && (result + 2) < a2 && result + 2 >= result && (result + 3) < a2 && result + 3 >= result && a4 > a3)
    {
      v6 = result[1];
      v7 = result[2];
      v8 = result[3];
      a3->i8[0] = v5;
      if (a3->u64 + 1 < a4 && &a3->i8[1] >= a3)
      {
        a3->i8[1] = v6;
        if (a3->u64 + 2 < a4 && &a3->i16[1] >= a3)
        {
          a3->i8[2] = v7;
          if (a3->u64 + 3 < a4 && (a3->i32 + 3) >= a3)
          {
            v9 = result + 4;
            a3->i8[3] = v8;
            v10 = (a3->i64 + 4);
            if ((v5 & 0x80u) != 0)
            {
              v5 = 256 - v5;
            }

            if ((v6 & 0x80u) != 0)
            {
              v6 = 256 - v6;
            }

            if ((v7 & 0x80u) != 0)
            {
              v7 = 256 - v7;
            }

            if ((v8 & 0x80u) != 0)
            {
              v8 = 256 - v8;
            }

            v11 = v6 + v5;
            v12 = v7 + v8;
            v13 = a5 - 4;
            v14 = 0uLL;
            if (a5 - 4 < 0x40)
            {
              v23 = result;
            }

            else
            {
              v15 = 0uLL;
              v16 = 0uLL;
              v17 = 0uLL;
              do
              {
                v18 = v9 + 64;
                v19 = vsubq_s8(*v9, *(v9 - 4));
                v20 = vsubq_s8(*(v9 + 1), *(v9 + 12));
                v21 = vsubq_s8(*(v9 + 2), *(v9 + 28));
                v22 = vsubq_s8(*(v9 + 3), *(v9 + 44));
                *v10 = v19;
                v10[1] = v20;
                v10[2] = v21;
                v10[3] = v22;
                v10 += 4;
                v14 = vpadalq_u16(v14, vpaddlq_u8(vabsq_s8(v19)));
                v15 = vpadalq_u16(v15, vpaddlq_u8(vabsq_s8(v20)));
                v16 = vpadalq_u16(v16, vpaddlq_u8(vabsq_s8(v21)));
                v17 = vpadalq_u16(v17, vpaddlq_u8(vabsq_s8(v22)));
                v13 -= 64;
                v9 += 64;
              }

              while (v13 > 0x3F);
              v14 = vaddq_s32(vaddq_s32(v16, v17), vaddq_s32(v15, v14));
              v23 = (v18 - 4);
              v9 = v18;
            }

            v24 = v11 + v12;
            if (v13 >= 0x10)
            {
              do
              {
                v25 = *v9;
                v9 += 16;
                v26 = v25;
                v27 = *v23++;
                v28 = vsubq_s8(v26, v27);
                *v10++ = v28;
                v14 = vpadalq_u16(v14, vpaddlq_u8(vabsq_s8(v28)));
                v13 -= 16;
              }

              while (v13 > 0xF);
            }

            v29 = v24 + vpadalq_u32(vdupq_laneq_s64(vpaddlq_u32(v14), 1), v14).u32[0];
            if (v13 < 4)
            {
              return v29;
            }

            while (v9 < a2)
            {
              if (v9 < result)
              {
                break;
              }

              v32 = *v9;
              v30 = v9 + 1;
              v31 = v32;
              if (v30 >= a2)
              {
                break;
              }

              if (v30 < result)
              {
                break;
              }

              v35 = *v30;
              v33 = v30 + 1;
              v34 = v35;
              if (v33 >= a2)
              {
                break;
              }

              if (v33 < result)
              {
                break;
              }

              v38 = *v33;
              v36 = v33 + 1;
              v37 = v38;
              if (v36 >= a2)
              {
                break;
              }

              if (v36 < result)
              {
                break;
              }

              if (v23 >= a2)
              {
                break;
              }

              if (v23 < result)
              {
                break;
              }

              v41 = v23->i8[0];
              v40 = &v23->u8[1];
              v39 = v41;
              if (v40 >= a2)
              {
                break;
              }

              if (v40 < result)
              {
                break;
              }

              v44 = *v40;
              v43 = v40 + 1;
              v42 = v44;
              if (v43 >= a2)
              {
                break;
              }

              if (v43 < result)
              {
                break;
              }

              v45 = v43 + 1;
              if (v45 >= a2)
              {
                break;
              }

              if (v45 < result)
              {
                break;
              }

              if (v10 >= a4)
              {
                break;
              }

              if (v10 < a3)
              {
                break;
              }

              v46 = *v36;
              v47 = *(v45 - 1);
              v48 = *v45;
              v49 = (v31 - v39);
              v10->i8[0] = v49;
              v50 = &v10->i8[1];
              if (v50 >= a4)
              {
                break;
              }

              if (v50 < a3)
              {
                break;
              }

              v51 = (v34 - v42);
              v50->i8[0] = v51;
              v52 = &v50->i8[1];
              if (v52 >= a4)
              {
                break;
              }

              if (v52 < a3)
              {
                break;
              }

              v53 = (v37 - v47);
              v52->i8[0] = v53;
              v54 = &v52->i8[1];
              if (v54 >= a4 || v54 < a3)
              {
                break;
              }

              v55 = (v46 - v48);
              v54->i8[0] = v55;
              v10 = &v54->i8[1];
              if (v49 >= 0)
              {
                v49 = v49;
              }

              else
              {
                v49 = 256 - v49;
              }

              if (v51 >= 0)
              {
                v51 = v51;
              }

              else
              {
                v51 = 256 - v51;
              }

              if (v53 >= 0)
              {
                v53 = v53;
              }

              else
              {
                v53 = 256 - v53;
              }

              if (v55 >= 0)
              {
                v55 = v55;
              }

              else
              {
                v55 = 256 - v55;
              }

              v29 = (v49 + v29 + v51 + v53 + v55);
              v13 -= 4;
              v9 = v36 + 1;
              v23 = (v45 + 1);
              if (v13 <= 3)
              {
                return v29;
              }
            }
          }
        }
      }
    }
  }

  __break(0x5519u);
  return result;
}

int8x16_t *png_write_filter_row_up_neon(int8x16_t *result, unint64_t a2, int8x16_t *a3, unint64_t a4, int8x16_t *a5, unint64_t a6, unint64_t a7)
{
  if (a2 >= result && a2 - result >= a7 && a4 >= a3 && a4 - a3 >= a7 && a6 >= a5 && a6 - a5 >= a7)
  {
    v7 = 0uLL;
    if (a7 < 0x40)
    {
      v10 = a5;
      v9 = a3;
      v8 = result;
    }

    else
    {
      v8 = result;
      v9 = a3;
      v10 = a5;
      v11 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
      do
      {
        v14 = *v8;
        v15 = v8[1];
        v16 = v8[2];
        v17 = v8[3];
        v8 += 4;
        v18 = *v10;
        v19 = v10[1];
        v20 = v10[2];
        v21 = v10[3];
        v10 += 4;
        v22 = vsubq_s8(v14, v18);
        v23 = vsubq_s8(v15, v19);
        v24 = vsubq_s8(v16, v20);
        v25 = vsubq_s8(v17, v21);
        *v9 = v22;
        v9[1] = v23;
        v9[2] = v24;
        v9[3] = v25;
        v9 += 4;
        v7 = vpadalq_u16(v7, vpaddlq_u8(vabsq_s8(v22)));
        v11 = vpadalq_u16(v11, vpaddlq_u8(vabsq_s8(v23)));
        v12 = vpadalq_u16(v12, vpaddlq_u8(vabsq_s8(v24)));
        v13 = vpadalq_u16(v13, vpaddlq_u8(vabsq_s8(v25)));
        a7 -= 64;
      }

      while (a7 > 0x3F);
      v7 = vaddq_s32(vaddq_s32(v12, v13), vaddq_s32(v11, v7));
    }

    if (a7 >= 0x10)
    {
      do
      {
        v26 = *v8++;
        v27 = v26;
        v28 = *v10++;
        v29 = vsubq_s8(v27, v28);
        *v9++ = v29;
        v7 = vpadalq_u16(v7, vpaddlq_u8(vabsq_s8(v29)));
        a7 -= 16;
      }

      while (a7 > 0xF);
    }

    v30 = vpadalq_u32(vdupq_laneq_s64(vpaddlq_u32(v7), 1), v7).u32[0];
    if (a7 < 4)
    {
      return v30;
    }

    while (v8 < a2)
    {
      if (v8 < result)
      {
        break;
      }

      v33 = v8->i8[0];
      v31 = &v8->i8[1];
      v32 = v33;
      if (v31 >= a2)
      {
        break;
      }

      if (v31 < result)
      {
        break;
      }

      v36 = v31->i8[0];
      v34 = &v31->i8[1];
      v35 = v36;
      if (v34 >= a2)
      {
        break;
      }

      if (v34 < result)
      {
        break;
      }

      v39 = v34->i8[0];
      v37 = &v34->i8[1];
      v38 = v39;
      if (v37 >= a2)
      {
        break;
      }

      if (v37 < result)
      {
        break;
      }

      if (v10 >= a6)
      {
        break;
      }

      if (v10 < a5)
      {
        break;
      }

      v42 = v10->i8[0];
      v41 = &v10->i8[1];
      v40 = v42;
      if (v41 >= a6)
      {
        break;
      }

      if (v41 < a5)
      {
        break;
      }

      v45 = v41->i8[0];
      v43 = &v41->i8[1];
      v44 = v45;
      if (v43 >= a6)
      {
        break;
      }

      if (v43 < a5)
      {
        break;
      }

      v46 = &v43->i8[1];
      if (v46 >= a6)
      {
        break;
      }

      if (v46 < a5)
      {
        break;
      }

      if (v9 >= a4)
      {
        break;
      }

      if (v9 < a3)
      {
        break;
      }

      v47 = v37->i8[0];
      v48 = v46[-1].i8[15];
      v49 = v46->i8[0];
      v50 = (v32 - v40);
      v9->i8[0] = v50;
      v51 = &v9->i8[1];
      if (v51 >= a4)
      {
        break;
      }

      if (v51 < a3)
      {
        break;
      }

      v52 = (v35 - v44);
      v51->i8[0] = v52;
      v53 = &v51->i8[1];
      if (v53 >= a4)
      {
        break;
      }

      if (v53 < a3)
      {
        break;
      }

      v54 = (v38 - v48);
      v53->i8[0] = v54;
      v55 = &v53->i8[1];
      if (v55 >= a4 || v55 < a3)
      {
        break;
      }

      v56 = (v47 - v49);
      v55->i8[0] = v56;
      v9 = &v55->i8[1];
      if (v50 >= 0)
      {
        v50 = v50;
      }

      else
      {
        v50 = 256 - v50;
      }

      if (v52 >= 0)
      {
        v52 = v52;
      }

      else
      {
        v52 = 256 - v52;
      }

      if (v54 >= 0)
      {
        v54 = v54;
      }

      else
      {
        v54 = 256 - v54;
      }

      if (v56 >= 0)
      {
        v56 = v56;
      }

      else
      {
        v56 = 256 - v56;
      }

      v30 = (v50 + v30 + v52 + v54 + v56);
      a7 -= 4;
      v8 = &v37->i8[1];
      v10 = &v46->i8[1];
      if (a7 <= 3)
      {
        return v30;
      }
    }
  }

  __break(0x5519u);
  return result;
}

int8x16_t *png_write_filter_row_avg_neon(int8x16_t *result, unint64_t a2, int8x16_t *a3, unint64_t a4, unsigned __int8 *a5, unint64_t a6, unint64_t a7)
{
  if (a2 >= result && a2 - result >= a7 && a4 >= a3 && a4 - a3 >= a7 && a6 >= a5 && a6 - a5 >= a7 && a2 > result && a6 > a5 && result->u64 + 1 < a2 && &result->i8[1] >= result)
  {
    v7 = a5 + 1;
    if ((a5 + 1) < a6 && v7 >= a5 && result->u64 + 2 < a2 && &result->i16[1] >= result)
    {
      v8 = a5 + 2;
      if ((a5 + 2) < a6 && v8 >= a5 && result->u64 + 3 < a2 && (result->i32 + 3) >= result && (a5 + 3) < a6 && a5 + 3 >= a5 && a4 > a3)
      {
        v9 = (result->i8[0] - (*a5 >> 1));
        v10 = result->i8[1];
        v11 = *v7;
        v12 = result->i8[2];
        v13 = *v8;
        v14 = result->i8[3];
        v15 = a5[3];
        a3->i8[0] = v9;
        if (a3->u64 + 1 < a4 && &a3->i8[1] >= a3)
        {
          v16 = (v10 - (v11 >> 1));
          a3->i8[1] = v10 - (v11 >> 1);
          if (a3->u64 + 2 < a4 && &a3->i16[1] >= a3)
          {
            v17 = (v12 - (v13 >> 1));
            a3->i8[2] = v17;
            if (a3->u64 + 3 < a4 && (a3->i32 + 3) >= a3)
            {
              v18 = (v14 - (v15 >> 1));
              v19 = (a5 + 4);
              a3->i8[3] = v18;
              v20 = (a3->i64 + 4);
              if (v9 >= 0)
              {
                v9 = v9;
              }

              else
              {
                v9 = 256 - v9;
              }

              if (v16 >= 0)
              {
                v21 = (v10 - (v11 >> 1));
              }

              else
              {
                v21 = 256 - v16;
              }

              if (v17 >= 0)
              {
                v17 = v17;
              }

              else
              {
                v17 = 256 - v17;
              }

              if (v18 >= 0)
              {
                v18 = v18;
              }

              else
              {
                v18 = 256 - v18;
              }

              v22 = v21 + v9;
              v23 = v17 + v18;
              v24 = a7 - 4;
              if (a7 - 4 < 0x40)
              {
                v37 = (result->i64 + 4);
                v35 = 0uLL;
                v36 = result;
              }

              else
              {
                v25 = 0;
                v26 = 0uLL;
                v27 = 0uLL;
                v28 = 0uLL;
                v29 = 0uLL;
                do
                {
                  v30 = &v20[v25];
                  v31 = vsubq_s8(*(&result[v25] + 4), vhaddq_u8(result[v25], v19[v25]));
                  v32 = vsubq_s8(*(&result[v25 + 1] + 4), vhaddq_u8(result[v25 + 1], v19[v25 + 1]));
                  v33 = vsubq_s8(*(&result[v25 + 2] + 4), vhaddq_u8(result[v25 + 2], v19[v25 + 2]));
                  v34 = vsubq_s8(*(&result[v25 + 3] + 4), vhaddq_u8(result[v25 + 3], v19[v25 + 3]));
                  *v30 = v31;
                  v30[1] = v32;
                  v30[2] = v33;
                  v30[3] = v34;
                  v26 = vpadalq_u16(v26, vpaddlq_u8(vabsq_s8(v31)));
                  v27 = vpadalq_u16(v27, vpaddlq_u8(vabsq_s8(v32)));
                  v28 = vpadalq_u16(v28, vpaddlq_u8(vabsq_s8(v33)));
                  v29 = vpadalq_u16(v29, vpaddlq_u8(vabsq_s8(v34)));
                  v24 -= 64;
                  v25 += 4;
                }

                while (v24 > 0x3F);
                v35 = vaddq_s32(vaddq_s32(v28, v29), vaddq_s32(v27, v26));
                v36 = &result[v25];
                v37 = (result[v25].i64 + 4);
                v19 = (v19 + v25 * 16);
                v20 = (v20 + v25 * 16);
              }

              v38 = v22 + v23;
              if (v24 >= 0x10)
              {
                do
                {
                  v39 = *v37++;
                  v40 = v39;
                  v41 = *v36++;
                  v42 = v41;
                  v43 = *v19++;
                  v44 = vsubq_s8(v40, vhaddq_u8(v42, v43));
                  *v20++ = v44;
                  v35 = vpadalq_u16(v35, vpaddlq_u8(vabsq_s8(v44)));
                  v24 -= 16;
                }

                while (v24 > 0xF);
              }

              v45 = v38 + vpadalq_u32(vdupq_laneq_s64(vpaddlq_u32(v35), 1), v35).u32[0];
              if (v24 < 4)
              {
                return v45;
              }

              while (v37 < a2)
              {
                if (v37 < result)
                {
                  break;
                }

                v48 = v37->i8[0];
                v46 = &v37->i8[1];
                v47 = v48;
                if (v46 >= a2)
                {
                  break;
                }

                if (v46 < result)
                {
                  break;
                }

                v51 = v46->i8[0];
                v49 = &v46->i8[1];
                v50 = v51;
                if (v49 >= a2)
                {
                  break;
                }

                if (v49 < result)
                {
                  break;
                }

                v54 = v49->i8[0];
                v52 = &v49->i8[1];
                v53 = v54;
                if (v52 >= a2)
                {
                  break;
                }

                if (v52 < result)
                {
                  break;
                }

                if (v36 >= a2)
                {
                  break;
                }

                if (v36 < result)
                {
                  break;
                }

                v57 = v36->u8[0];
                v55 = &v36->i8[1];
                v56 = v57;
                if (v55 >= a2)
                {
                  break;
                }

                if (v55 < result)
                {
                  break;
                }

                v60 = v55->u8[0];
                v59 = &v55->i8[1];
                v58 = v60;
                if (v59 >= a2)
                {
                  break;
                }

                if (v59 < result)
                {
                  break;
                }

                v63 = v59->u8[0];
                v62 = &v59->i8[1];
                v61 = v63;
                if (v62 >= a2)
                {
                  break;
                }

                if (v62 < result)
                {
                  break;
                }

                if (v19 >= a6)
                {
                  break;
                }

                if (v19 < a5)
                {
                  break;
                }

                v66 = v19->u8[0];
                v64 = &v19->u8[1];
                v65 = v66;
                if (v64 >= a6)
                {
                  break;
                }

                if (v64 < a5)
                {
                  break;
                }

                v69 = *v64;
                v67 = v64 + 1;
                v68 = v69;
                if (v67 >= a6)
                {
                  break;
                }

                if (v67 < a5)
                {
                  break;
                }

                v70 = v67 + 1;
                if (v70 >= a6)
                {
                  break;
                }

                if (v70 < a5)
                {
                  break;
                }

                if (v20 >= a4)
                {
                  break;
                }

                if (v20 < a3)
                {
                  break;
                }

                v71 = v52->i8[0];
                v72 = v62->u8[0];
                v73 = *(v70 - 1);
                v74 = *v70;
                v75 = (v47 - ((v65 + v56) >> 1));
                v20->i8[0] = v75;
                v76 = &v20->i8[1];
                if (v76 >= a4)
                {
                  break;
                }

                if (v76 < a3)
                {
                  break;
                }

                v77 = (v50 - ((v68 + v58) >> 1));
                v76->i8[0] = v77;
                v78 = &v76->i8[1];
                if (v78 >= a4)
                {
                  break;
                }

                if (v78 < a3)
                {
                  break;
                }

                v79 = (v53 - ((v73 + v61) >> 1));
                v78->i8[0] = v79;
                v80 = &v78->i8[1];
                if (v80 >= a4 || v80 < a3)
                {
                  break;
                }

                v81 = (v71 - ((v74 + v72) >> 1));
                v80->i8[0] = v71 - ((v74 + v72) >> 1);
                v20 = &v80->i8[1];
                v82 = v75 < 0;
                v75 = v75;
                if (v82)
                {
                  v75 = 256 - v75;
                }

                if (v77 >= 0)
                {
                  v77 = v77;
                }

                else
                {
                  v77 = 256 - v77;
                }

                if (v79 >= 0)
                {
                  v79 = v79;
                }

                else
                {
                  v79 = 256 - v79;
                }

                if (v81 >= 0)
                {
                  v83 = (v71 - ((v74 + v72) >> 1));
                }

                else
                {
                  v83 = 256 - v81;
                }

                v45 = (v75 + v45 + v77 + v79 + v83);
                v24 -= 4;
                v37 = &v52->i8[1];
                v36 = &v62->i8[1];
                v19 = (v70 + 1);
                if (v24 <= 3)
                {
                  return v45;
                }
              }
            }
          }
        }
      }
    }
  }

  __break(0x5519u);
  return result;
}

unint64_t png_write_filter_row_paeth_neon(unint64_t result, unint64_t a2, int8x16_t *a3, unint64_t a4, int8x16_t *a5, unint64_t a6, unint64_t a7)
{
  v161 = result;
  if (a2 >= result && a2 - result >= a7 && a4 >= a3 && a4 - a3 >= a7 && a2 > result && a6 >= a5 && a6 - a5 >= a7 && result + 1 < a2 && result + 1 >= result && result + 2 < a2 && result + 2 >= result && result + 3 < a2 && result + 3 >= result && a6 > a5 && a5->u64 + 1 < a6 && &a5->i8[1] >= a5 && a5->u64 + 2 < a6 && &a5->i16[1] >= a5 && a5->u64 + 3 < a6 && (a5->i32 + 3) >= a5 && a4 > a3)
  {
    v7 = *(result + 1);
    v8 = *(result + 2);
    v9 = *(result + 3);
    v10 = a5->i8[1];
    v11 = a5->i8[2];
    v12 = a5->i8[3];
    v13 = (*result - a5->i8[0]);
    a3->i8[0] = v13;
    if (a3->u64 + 1 < a4 && &a3->i8[1] >= a3)
    {
      v14 = (v7 - v10);
      a3->i8[1] = v7 - v10;
      if (a3->u64 + 2 < a4 && &a3->i16[1] >= a3)
      {
        v15 = (v8 - v11);
        a3->i8[2] = v15;
        if (a3->u64 + 3 < a4 && (a3->i32 + 3) >= a3)
        {
          v16 = (v9 - v12);
          a3->i8[3] = v16;
          v17 = (a3->i64 + 4);
          if (v13 >= 0)
          {
            v13 = v13;
          }

          else
          {
            v13 = 256 - v13;
          }

          if (v14 >= 0)
          {
            v18 = (v7 - v10);
          }

          else
          {
            v18 = 256 - v14;
          }

          if (v15 >= 0)
          {
            v15 = v15;
          }

          else
          {
            v15 = 256 - v15;
          }

          if (v16 >= 0)
          {
            v16 = v16;
          }

          else
          {
            v16 = 256 - v16;
          }

          v19 = v18 + v13;
          v20 = v15 + v16;
          v21 = a7 - 4;
          if (a7 - 4 < 0x20)
          {
            v45 = result;
            v46 = (result + 4);
            v48 = (a5->i64 + 4);
            v44 = 0uLL;
            v47 = a5;
          }

          else
          {
            v22 = 0;
            v23 = 0uLL;
            v24 = 0uLL;
            do
            {
              v25 = &v17[v22];
              v27 = *(result + v22 * 16);
              v26 = *(result + v22 * 16 + 16);
              v28 = *(&a5[v22] + 4);
              v29 = *(&a5[v22 + 1] + 4);
              v31 = a5[v22];
              v30 = a5[v22 + 1];
              *v32.i8 = vabd_u8(*v28.i8, *v31.i8);
              *v33.i8 = vabd_u8(*v27.i8, *v31.i8);
              *v34.i8 = vabd_u8(*v29.i8, *v30.i8);
              *v35.i8 = vabd_u8(*v26.i8, *v30.i8);
              v36 = vabdq_u16(vaddl_u8(*v28.i8, *v27.i8), vshll_n_u8(*v31.i8, 1uLL));
              v37 = vabdq_u16(vaddl_u8(*v29.i8, *v26.i8), vshll_n_u8(*v30.i8, 1uLL));
              v38 = vextq_s8(v31, v31, 8uLL).u64[0];
              v39 = vabdq_u16(vaddl_high_u8(v28, v27), vshll_high_n_u8(v31, 1uLL));
              v40 = vextq_s8(v30, v30, 8uLL).u64[0];
              v32.u64[1] = vabd_u8(*&vextq_s8(v28, v28, 8uLL), v38);
              v41 = vabdq_u16(vaddl_high_u8(v29, v26), vshll_high_n_u8(v30, 1uLL));
              v33.u64[1] = vabd_u8(*&vextq_s8(v27, v27, 8uLL), v38);
              v34.u64[1] = vabd_u8(*&vextq_s8(v29, v29, 8uLL), v40);
              v35.u64[1] = vabd_u8(*&vextq_s8(v26, v26, 8uLL), v40);
              v42 = vsubq_s8(*(result + v22 * 16 + 4), vbslq_s8(vandq_s8(vuzp1q_s8(vcgeq_u16(v36, vabdl_u8(*v28.i8, *v31.i8)), vcgeq_u16(v39, vabdl_high_u8(v28, v31))), vcgeq_u8(v33, v32)), v27, vbslq_s8(vuzp1q_s8(vcgtq_u16(vabdl_u8(*v27.i8, *v31.i8), v36), vcgtq_u16(vabdl_high_u8(v27, v31), v39)), v31, v28)));
              v43 = vsubq_s8(*(result + v22 * 16 + 20), vbslq_s8(vandq_s8(vuzp1q_s8(vcgeq_u16(v37, vabdl_u8(*v29.i8, *v30.i8)), vcgeq_u16(v41, vabdl_high_u8(v29, v30))), vcgeq_u8(v35, v34)), v26, vbslq_s8(vuzp1q_s8(vcgtq_u16(vabdl_u8(*v26.i8, *v30.i8), v37), vcgtq_u16(vabdl_high_u8(v26, v30), v41)), v30, v29)));
              *v25 = v42;
              v25[1] = v43;
              v23 = vpadalq_u16(v23, vpaddlq_u8(vabsq_s8(v42)));
              v24 = vpadalq_u16(v24, vpaddlq_u8(vabsq_s8(v43)));
              v21 -= 32;
              v22 += 2;
            }

            while (v21 > 0x1F);
            v44 = vaddq_s32(v23, v24);
            v45 = (result + v22 * 16);
            v46 = (result + v22 * 16 + 4);
            v47 = &a5[v22];
            v48 = (a5[v22].i64 + 4);
            v17 = (v17 + v22 * 16);
          }

          v49 = v19 + v20;
          if (v21 >= 0x10)
          {
            do
            {
              v50 = *v46++;
              v51 = v50;
              v52 = *v45++;
              v53 = v52;
              v54 = *v48++;
              v55 = v54;
              v56 = *v47++;
              *v57.i8 = vabd_u8(*v55.i8, *v56.i8);
              *v58.i8 = vabd_u8(*v53.i8, *v56.i8);
              v59 = vabdq_u16(vaddl_u8(*v55.i8, *v53.i8), vshll_n_u8(*v56.i8, 1uLL));
              v60 = vextq_s8(v56, v56, 8uLL).u64[0];
              v61 = vabdq_u16(vaddl_high_u8(v55, v53), vshll_high_n_u8(v56, 1uLL));
              v57.u64[1] = vabd_u8(*&vextq_s8(v55, v55, 8uLL), v60);
              v58.u64[1] = vabd_u8(*&vextq_s8(v53, v53, 8uLL), v60);
              v62 = vsubq_s8(v51, vbslq_s8(vandq_s8(vuzp1q_s8(vcgeq_u16(v59, vabdl_u8(*v55.i8, *v56.i8)), vcgeq_u16(v61, vabdl_high_u8(v55, v56))), vcgeq_u8(v58, v57)), v53, vbslq_s8(vuzp1q_s8(vcgtq_u16(vabdl_u8(*v53.i8, *v56.i8), v59), vcgtq_u16(vabdl_high_u8(v53, v56), v61)), v56, v55)));
              *v17++ = v62;
              v44 = vpadalq_u16(v44, vpaddlq_u8(vabsq_s8(v62)));
              v21 -= 16;
            }

            while (v21 > 0xF);
          }

          v63 = v49 + vpadalq_u32(vdupq_laneq_s64(vpaddlq_u32(v44), 1), v44).u32[0];
          if (v21 < 4)
          {
            return v63;
          }

          v149 = a5;
          v147 = a2;
          while (v46 < a2)
          {
            if (v46 < v161)
            {
              break;
            }

            v66 = v46->i8[0];
            v64 = &v46->i8[1];
            v65 = v66;
            if (v64 >= a2)
            {
              break;
            }

            if (v64 < v161)
            {
              break;
            }

            v69 = *v64;
            v67 = v64 + 1;
            v68 = v69;
            if (v67 >= a2)
            {
              break;
            }

            if (v67 < v161)
            {
              break;
            }

            v72 = *v67;
            v70 = v67 + 1;
            v71 = v72;
            if (v70 >= a2)
            {
              break;
            }

            if (v70 < v161)
            {
              break;
            }

            if (v45 >= a2)
            {
              break;
            }

            if (v45 < v161)
            {
              break;
            }

            v75 = v45->u8[0];
            v74 = &v45->u8[1];
            v73 = v75;
            if (v74 >= a2)
            {
              break;
            }

            if (v74 < v161)
            {
              break;
            }

            v78 = *v74;
            v77 = v74 + 1;
            v76 = v78;
            if (v77 >= a2)
            {
              break;
            }

            if (v77 < v161)
            {
              break;
            }

            v81 = *v77;
            v79 = (v77 + 1);
            v80 = v81;
            if (v79 >= a2)
            {
              break;
            }

            if (v79 < v161)
            {
              break;
            }

            if (v48 >= a6)
            {
              break;
            }

            if (v48 < a5)
            {
              break;
            }

            v84 = v48->u8[0];
            v83 = &v48->i8[1];
            v82 = v84;
            if (v83 >= a6)
            {
              break;
            }

            if (v83 < a5)
            {
              break;
            }

            v87 = v83->u8[0];
            v85 = &v83->i8[1];
            v86 = v87;
            if (v85 >= a6)
            {
              break;
            }

            if (v85 < a5)
            {
              break;
            }

            v90 = v85->u8[0];
            v88 = &v85->i8[1];
            v89 = v90;
            if (v88 >= a6)
            {
              break;
            }

            if (v88 < a5)
            {
              break;
            }

            if (v47 >= a6)
            {
              break;
            }

            if (v47 < a5)
            {
              break;
            }

            v93 = v47->u8[0];
            v91 = &v47->i8[1];
            v92 = v93;
            if (v91 >= a6)
            {
              break;
            }

            if (v91 < a5)
            {
              break;
            }

            v96 = v91->u8[0];
            v94 = &v91->i8[1];
            v95 = v96;
            if (v94 >= a6)
            {
              break;
            }

            if (v94 < a5)
            {
              break;
            }

            v97 = &v94->i8[1];
            if (v94->u64 + 1 >= a6 || v97 < a5)
            {
              break;
            }

            v155 = *v79;
            v156 = v88->u8[0];
            v98 = v94->u8[0];
            v99 = v97->u8[0];
            v158 = v68;
            v159 = v71;
            v101 = v82 - v92;
            v100 = (v82 - v92) < 0;
            v102 = a4;
            v103 = v86 - v95;
            v153 = v82;
            v154 = v89;
            v104 = v89 - v98;
            v105 = v156 - v99;
            v106 = v73 - v92;
            v107 = a6;
            v108 = v76 - v95;
            v109 = v80 - v98;
            v110 = v155 - v99;
            if (v100)
            {
              v111 = -v101;
            }

            else
            {
              v111 = v101;
            }

            v157 = v65;
            if (v103 >= 0)
            {
              v112 = v86 - v95;
            }

            else
            {
              v112 = v95 - v86;
            }

            v150 = v73;
            v151 = v76;
            if (v104 >= 0)
            {
              v113 = v104;
            }

            else
            {
              v113 = -v104;
            }

            if (v105 >= 0)
            {
              v114 = v156 - v99;
            }

            else
            {
              v114 = v99 - v156;
            }

            v152 = v80;
            if (v106 >= 0)
            {
              v115 = v106;
            }

            else
            {
              v115 = -v106;
            }

            v116 = v86;
            if (v108 >= 0)
            {
              v117 = v108;
            }

            else
            {
              v117 = -v108;
            }

            if (v109 >= 0)
            {
              v118 = v109;
            }

            else
            {
              v118 = -v109;
            }

            v160 = v21;
            if (v110 >= 0)
            {
              v119 = v155 - v99;
            }

            else
            {
              v119 = v99 - v155;
            }

            v120 = v101 + v106;
            if (v120 < 0)
            {
              v120 = -v120;
            }

            v121 = v103 + v108;
            v100 = v103 + v108 < 0;
            a4 = v102;
            a6 = v107;
            if (v100)
            {
              v121 = -v121;
            }

            v122 = v104 + v109;
            if (v122 < 0)
            {
              v122 = -v122;
            }

            v123 = v105 + v110;
            if (v105 + v110 < 0)
            {
              v123 = -v123;
            }

            if (v115 <= v120)
            {
              result = v153;
            }

            else
            {
              result = v92;
            }

            v124 = v111 > v120 || v111 > v115;
            a5 = v149;
            if (v124)
            {
              v125 = result;
            }

            else
            {
              v125 = v150;
            }

            if (v117 <= v121)
            {
              v126 = v116;
            }

            else
            {
              v126 = v95;
            }

            v124 = v112 > v121;
            a2 = v147;
            if (v124 || v112 > v117)
            {
              v128 = v126;
            }

            else
            {
              v128 = v151;
            }

            if (v118 <= v122)
            {
              v129 = v154;
            }

            else
            {
              v129 = v97[-1].i8[15];
            }

            if (v113 > v122 || v113 > v118)
            {
              v131 = v129;
            }

            else
            {
              v131 = v152;
            }

            v132 = v88->i8[0];
            if (v119 > v123)
            {
              v132 = v97->i8[0];
            }

            v133 = v114 > v123 || v114 > v119;
            v134 = v133 ? v132 : *v79;
            if (v17 >= a4)
            {
              break;
            }

            if (v17 < a3)
            {
              break;
            }

            v135 = *v70;
            v136 = (v157 - v125);
            v17->i8[0] = v157 - v125;
            v137 = &v17->i8[1];
            if (v137 >= a4)
            {
              break;
            }

            if (v137 < a3)
            {
              break;
            }

            v138 = (v158 - v128);
            v137->i8[0] = v158 - v128;
            v139 = &v137->i8[1];
            if (v139 >= a4)
            {
              break;
            }

            if (v139 < a3)
            {
              break;
            }

            v140 = (v159 - v131);
            v139->i8[0] = v159 - v131;
            v141 = &v139->i8[1];
            if (v141 >= a4 || v141 < a3)
            {
              break;
            }

            v142 = (v135 - v134);
            v141->i8[0] = v135 - v134;
            v17 = &v141->i8[1];
            v143 = (v157 - v125);
            result = 256;
            if (v136 < 0)
            {
              v143 = 256 - v136;
            }

            v144 = (v158 - v128);
            if (v138 < 0)
            {
              v144 = 256 - v138;
            }

            if (v140 >= 0)
            {
              v145 = (v159 - v131);
            }

            else
            {
              v145 = 256 - v140;
            }

            if (v142 >= 0)
            {
              v146 = (v135 - v134);
            }

            else
            {
              v146 = 256 - v142;
            }

            v63 = (v143 + v63 + v144 + v145 + v146);
            v21 = v160 - 4;
            v46 = (v70 + 1);
            v45 = (v79 + 1);
            v48 = &v88->i8[1];
            v47 = &v97->i8[1];
            if (v160 - 4 <= 3)
            {
              return v63;
            }
          }
        }
      }
    }
  }

  __break(0x5519u);
  return result;
}

void IIO_LoadJPEGSymbols()
{
  if (gLoadCoreVideoSymbolsInitOnce != -1)
  {
    IIO_LoadJPEGSymbols_cold_1();
  }
}

void IIO_LoadCoreMediaSymbols()
{
  if (gLoadCoreMediaSymbolsInitOnce != -1)
  {
    IIO_LoadCoreMediaSymbols_cold_1();
  }
}

OSStatus CGAnimateImageAtURLWithBlock(CFURLRef url, CFDictionaryRef options, CGImageSourceAnimationBlock block)
{
  kdebug_trace();
  IIOInitDebugFlags();
  v5 = (gIIODebugFlags >> 12) & 3;
  if (v5)
  {
    ImageIODebugOptions(v5, "A", "CGAnimateImageAtURLWithBlock", url, 0, -1, 0);
  }

  if (url)
  {
    v6 = CFGetTypeID(url);
    if (v6 == CFURLGetTypeID())
    {
      if (options)
      {
        v7 = CFGetTypeID(options);
        if (v7 != CFDictionaryGetTypeID())
        {
          LogError("CGAnimateImageAtURLWithBlock", 127, "*** ERROR: CGAnimateImageAtURLWithBlock: options parameter is not a CFDictionaryRef - ignoring\n");
          options = 0;
        }
      }

      memset(v9, 0, sizeof(v9));
      IIODictionary::IIODictionary(v9, options);
      operator new();
    }

    CGAnimateImageAtURLWithBlock_cold_1();
  }

  else
  {
    CGAnimateImageAtURLWithBlock_cold_2();
  }

  kdebug_trace();
  return -50;
}

void sub_1860B6920(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x186602850](v2, 0x10E1C4080364B91);
  IIODictionary::~IIODictionary(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1860B68D8);
}

OSStatus CGAnimateImageDataWithBlock(CFDataRef data, CFDictionaryRef options, CGImageSourceAnimationBlock block)
{
  kdebug_trace();
  IIOInitDebugFlags();
  v5 = (gIIODebugFlags >> 12) & 3;
  if (v5)
  {
    ImageIODebugOptions(v5, "A", "CGAnimateImageDataWithBlock", data, 0, -1, 0);
  }

  if (data)
  {
    v6 = CFGetTypeID(data);
    if (v6 == CFDataGetTypeID())
    {
      if (options)
      {
        v7 = CFGetTypeID(options);
        if (v7 != CFDictionaryGetTypeID())
        {
          LogError("CGAnimateImageDataWithBlock", 181, "*** ERROR: CGImageSourceCreateWithData: options parameter is not a CFDictionaryRef - ignoring\n");
          options = 0;
        }
      }

      memset(v9, 0, sizeof(v9));
      IIODictionary::IIODictionary(v9, options);
      operator new();
    }

    CGAnimateImageDataWithBlock_cold_1();
  }

  else
  {
    CGAnimateImageDataWithBlock_cold_2();
  }

  kdebug_trace();
  return -50;
}

void sub_1860B6B20(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x186602850](v2, 0x10E1C4080364B91);
  IIODictionary::~IIODictionary(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1860B6AD8);
}

uint64_t IIODecodeParameter::saveDataToXPCObject(IIODecodeParameter *this, void *a2)
{
  v4 = iio_xpc_add_source_dict(a2);
  v5 = iio_xpc_add_callback_dict(a2);
  iio_xpc_dictionary_addCGRect(v5, "iio_xpc_cb_blockset_cgrect", *(this + 3), *(this + 4), *(this + 5), *(this + 6));
  iio_xpc_dictionary_addCGSize(v5, "iio_xpc_cb_blockset_dest_cgsize", *(this + 7), *(this + 8));
  xpc_dictionary_set_uint64(v4, "iio_xpc_src_image_index", *(this + 9));
  iio_xpc_dictionary_add_CFDictionary(v5, "iio_xpc_cb_blockset_options");
  return 0;
}

void IIO_Writer_TGA::~IIO_Writer_TGA(IIO_Writer_TGA *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

uint64_t IIO_Writer_TGA::write(IIO_Writer_TGA *this, IIOImageWriteSession *a2, IIOImageDestination *a3)
{
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "IIO_Writer_TGA::write", 0, 0, -1, 0);
  }

  v8 = 0;
  memset(v7, 0, sizeof(v7));
  TGAWritePlugin::TGAWritePlugin(v7, a2, a3);
  v5 = IIOWritePlugin::writeAll(v7);
  TGAWritePlugin::~TGAWritePlugin(v7);
  return v5;
}

void sub_1860B6D14(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  TGAWritePlugin::~TGAWritePlugin(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1860B6D00);
}

uint64_t _cg_TIFFComputeTile(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, int a5)
{
  v5 = *(a1 + 100);
  v6 = *(a1 + 104);
  v7 = *(a1 + 96);
  if (v7 == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = a4;
  }

  if (v5 == -1)
  {
    v5 = *(a1 + 88);
  }

  if (v6 == -1)
  {
    v6 = *(a1 + 92);
  }

  if (*(a1 + 108) == -1)
  {
    v9 = *(a1 + 96);
  }

  else
  {
    v9 = *(a1 + 108);
  }

  if (v5)
  {
    v10 = v6 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10 || v9 == 0)
  {
    return 1;
  }

  v13 = 0;
  v14 = *(a1 + 88);
  if (v14 < -v5)
  {
    v13 = (v5 + v14 - 1) / v5;
  }

  v15 = 0;
  v16 = *(a1 + 92);
  if (v16 < -v6)
  {
    v15 = (v6 + v16 - 1) / v6;
  }

  v17 = 0;
  if (v7 < -v9)
  {
    v17 = (v7 + v9 - 1) / v9;
  }

  v18 = v8 / v9;
  v19 = a3 / v6;
  if (*(a1 + 170) == 2)
  {
    v18 += v17 * a5;
  }

  return a2 / v5 + (v19 + v18 * v15) * v13;
}

uint64_t TIFFCheckTile(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 88) <= a2)
  {
    TIFFErrorExtR(a1, *a1, "%lu: Col out of range, max %lu", a4, a5, a6, a7, a8, a2);
  }

  else if (*(a1 + 92) <= a3)
  {
    TIFFErrorExtR(a1, *a1, "%lu: Row out of range, max %lu", a4, a5, a6, a7, a8, a3);
  }

  else if (*(a1 + 96) <= a4)
  {
    TIFFErrorExtR(a1, *a1, "%lu: Depth out of range, max %lu", a4, a5, a6, a7, a8, a4);
  }

  else
  {
    if (*(a1 + 170) != 2 || *(a1 + 130) > a5)
    {
      return 1;
    }

    TIFFErrorExtR(a1, *a1, "%lu: Sample out of range, max %lu", a4, a5, a6, a7, a8, a5);
  }

  return 0;
}

uint64_t _cg_TIFFNumberOfTiles(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 100);
  v9 = *(a1 + 104);
  if (v10 == -1)
  {
    v10 = *(a1 + 88);
  }

  v11 = *(a1 + 108);
  if (v9 == -1)
  {
    v9 = *(a1 + 92);
  }

  if (v11 == -1)
  {
    v11 = *(a1 + 96);
  }

  v12 = 0;
  if (v10 && v9 && v11)
  {
    v13 = 0;
    v14 = *(a1 + 88);
    if (v14 < -v10)
    {
      v13 = (v10 + v14 - 1) / v10;
    }

    v15 = 0;
    v16 = *(a1 + 92);
    if (v16 < -v9)
    {
      v15 = (v9 + v16 - 1) / v9;
    }

    v17 = _TIFFMultiply32(a1, v13, v15, "TIFFNumberOfTiles", a5, a6, a7, a8);
    v22 = 0;
    v23 = *(a1 + 96);
    if (v23 < -v11)
    {
      v22 = (v11 + v23 - 1) / v11;
    }

    v12 = _TIFFMultiply32(a1, v17, v22, "TIFFNumberOfTiles", v18, v19, v20, v21);
  }

  if (*(a1 + 170) != 2)
  {
    return v12;
  }

  v24 = *(a1 + 130);

  return _TIFFMultiply32(a1, v12, v24, "TIFFNumberOfTiles", a5, a6, a7, a8);
}

uint64_t _cg_TIFFTileRowSize64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(a1 + 104))
  {
    v12 = "Tile length is zero";
    goto LABEL_14;
  }

  v9 = *(a1 + 100);
  if (!v9)
  {
    v12 = "Tile width is zero";
    goto LABEL_14;
  }

  v10 = _TIFFMultiply64(a1, *(a1 + 116), v9, "TIFFTileRowSize", a5, a6, a7, a8);
  if (*(a1 + 170) == 1)
  {
    if (!*(a1 + 130))
    {
      v12 = "Samples per pixel is zero";
      goto LABEL_14;
    }

    v10 = _TIFFMultiply64(a1, v10, *(a1 + 130), "TIFFTileRowSize", a5, a6, a7, a8);
  }

  if ((v10 & 7) != 0)
  {
    result = (v10 >> 3) + 1;
  }

  else
  {
    result = v10 >> 3;
  }

  if (!result)
  {
    v12 = "Computed tile row size is zero";
LABEL_14:
    TIFFErrorExtR(a1, "TIFFTileRowSize64", v12, a4, a5, a6, a7, a8, v13);
    return 0;
  }

  return result;
}

uint64_t _cg_TIFFTileRowSize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = _cg_TIFFTileRowSize64(a1, a2, a3, a4, a5, a6, a7, a8);

  return _TIFFCastUInt64ToSSize(a1, v9, "TIFFTileRowSize", v10, v11, v12, v13, v14);
}

unint64_t TIFFVTileSize64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(a1 + 104) || !*(a1 + 100) || !*(a1 + 108))
  {
    return 0;
  }

  v9 = a2;
  if (*(a1 + 170) == 1 && *(a1 + 122) == 6 && *(a1 + 130) == 3 && (*(a1 + 17) & 0x40) == 0)
  {
    v41 = 0;
    _cg_TIFFGetFieldDefaulted(a1, 530, a3, a4, a5, a6, a7, a8, &v41);
    if (v41 <= 4u && ((1 << v41) & 0x16) != 0 && HIWORD(v41) <= 4u && ((1 << SBYTE2(v41)) & 0x16) != 0)
    {
      v15 = *(a1 + 100);
      if (v15 >= -v41)
      {
        v16 = 0;
      }

      else
      {
        v16 = (v41 + v15 - 1) / v41;
      }

      if (-HIWORD(v41) > v9)
      {
        v24 = (v9 + HIWORD(v41) - 1) / HIWORD(v41);
      }

      else
      {
        v24 = 0;
      }

      v25 = _TIFFMultiply64(a1, v16, (HIWORD(v41) * v41 + 2), "TIFFVTileSize64", v11, v12, v13, v14);
      v30 = _TIFFMultiply64(a1, v25, *(a1 + 116), "TIFFVTileSize64", v26, v27, v28, v29);
      v35 = _TIFFMultiply64(a1, v25, *(a1 + 116), "TIFFVTileSize64", v31, v32, v33, v34);
      if ((v30 & 7) != 0)
      {
        v40 = (v35 >> 3) + 1;
      }

      else
      {
        v40 = v35 >> 3;
      }

      return _TIFFMultiply64(a1, v40, v24, "TIFFVTileSize64", v36, v37, v38, v39);
    }

    TIFFErrorExtR(a1, "TIFFVTileSize64", "Invalid YCbCr subsampling (%dx%d)", v10, v11, v12, v13, v14, v41);
    return 0;
  }

  v17 = a2;
  v18 = _cg_TIFFTileRowSize64(a1, a2, a3, a4, a5, a6, a7, a8);

  return _TIFFMultiply64(a1, v17, v18, "TIFFVTileSize64", v19, v20, v21, v22);
}

uint64_t _cg_TIFFTileSize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = TIFFVTileSize64(a1, *(a1 + 104), a3, a4, a5, a6, a7, a8);

  return _TIFFCastUInt64ToSSize(a1, v9, "TIFFTileSize", v10, v11, v12, v13, v14);
}

void _TIFFDefaultTileSize(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v3 = *a2;
  if (*a2 <= 0)
  {
    v3 = 256;
    *a2 = 256;
  }

  v4 = *a3;
  if (*a3 <= 0)
  {
    v4 = 256;
    *a3 = 256;
    v3 = *a2;
  }

  if ((v3 & 0xF) != 0)
  {
    if (v3 >= 0xFFFFFFF0)
    {
      v5 = 0;
    }

    else
    {
      v5 = (v3 + 15) & 0xFFFFFFF0;
    }

    *a2 = v5;
    v4 = *a3;
  }

  if ((v4 & 0xF) != 0)
  {
    v6 = (v4 + 15) & 0xFFFFFFF0;
    if (v4 >= 0xFFFFFFF0)
    {
      v6 = 0;
    }

    *a3 = v6;
  }
}

void EXRWritePlugin::EXRWritePlugin(EXRWritePlugin *this, IIOImageWriteSession *a2, IIOImageDestination *a3)
{
  IIOWritePlugin::IIOWritePlugin(this, a2, a3, 1163416096);
  *v4 = &unk_1EF4DD2E0;
  AppleEXREnabled();
  *(this + 5) = 0;
}

void EXRWritePlugin::~EXRWritePlugin(EXRWritePlugin *this, uint64_t a2, const char *a3)
{
  *this = &unk_1EF4DD2E0;
  v4 = *(this + 5);
  if (v4)
  {
    os_release(v4);
  }

  _cg_jpeg_mem_term(this, a2, a3);
}

{
  EXRWritePlugin::~EXRWritePlugin(this, a2, a3);

  JUMPOUT(0x186602850);
}

uint64_t EXRWritePlugin::writeAll(IIOImageDestination **this)
{
  ImageCount = IIOWritePlugin::getImageCount(this);
  v3 = gFunc_axr_encoder_create(0);
  this[5] = v3;
  if (ImageCount)
  {
    IIOWritePlugin::getSourceImageAtIndex(this, 0);
    IIOWritePlugin::getPropertiesAtIndex(this, 0);
    operator new();
  }

  return gFunc_axr_encoder_compress(v3, this, EXRWritePlugin::WriteCallback, 0, EXRWritePlugin::DestroyCallback, 0);
}

uint64_t EXRWritePlugin::WriteProc(EXRWritePlugin *this, IIOImageDestination *a2, void *a3, void *a4, void *a5)
{
  if (!AppleEXREnabled())
  {
    return 4294967246;
  }

  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "EXRWritePlugin::WriteProc", 0, 0, -1, 0);
  }

  memset(v11, 0, sizeof(v11));
  EXRWritePlugin::EXRWritePlugin(v11, this, a2);
  v7 = EXRWritePlugin::writeAll(v11);
  EXRWritePlugin::~EXRWritePlugin(v11, v8, v9);
  return v7;
}

void EXRWritePluginInput::EXRWritePluginInput(EXRWritePluginInput *this, axr_encoder *a2, CGImageRef image, IIODictionary *a4)
{
  v37 = *MEMORY[0x1E69E9840];
  *this = &unk_1EF4DD368;
  *(this + 1) = a2;
  *(this + 2) = image;
  *(this + 3) = a4;
  v36 = 0uLL;
  v34 = 0u;
  v35 = 0u;
  ColorSpace = CGImageGetColorSpace(image);
  HasRealAlphaChannel = _ImageHasRealAlphaChannel(image);
  *(this + 12) = 0;
  *(this + 4) = 0;
  *(this + 27) = 0;
  if ((CGImageGetBitmapInfo(image) & 0x100) != 0)
  {
    v9 = 16;
  }

  else
  {
    v9 = 10;
  }

  BitsPerComponent = CGImageGetBitsPerComponent(image);
  if (BitsPerComponent <= v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  *(this + 26) = v11;
  if (BitsPerComponent <= v9)
  {
    v12 = 16;
  }

  else
  {
    v12 = 32;
  }

  *(this + 28) = v12;
  v13 = &v35 + 8;
  while (1)
  {
    Model = CGColorSpaceGetModel(ColorSpace);
    if (Model != kCGColorSpaceModelIndexed)
    {
      break;
    }

    ColorSpace = CGColorSpaceGetBaseColorSpace(ColorSpace);
  }

  if (Model > kCGColorSpaceModelRGB)
  {
    if (Model != kCGColorSpaceModelCMYK)
    {
      if (Model != kCGColorSpaceModelXYZ)
      {
LABEL_21:
        EXRWritePluginInput::EXRWritePluginInput(Model);
        return;
      }

      *(this + 27) = 4;
      v36 = xmmword_186227140;
      *&v34 = "X";
      *(&v34 + 1) = "Y";
      *&v35 = "Z";
      v15 = 7;
      goto LABEL_29;
    }
  }

  else
  {
    if (Model == kCGColorSpaceModelMonochrome)
    {
      v15 = 0;
      if (HasRealAlphaChannel)
      {
        v16 = 2;
      }

      else
      {
        v16 = 1;
      }

      *(this + 27) = v16;
      if (HasRealAlphaChannel)
      {
        v17 = 4;
      }

      else
      {
        v17 = -1;
      }

      LODWORD(v36) = 10;
      DWORD1(v36) = v17;
      *&v34 = "Y";
      *(&v36 + 1) = -1;
      v13 = &v34 + 8;
      goto LABEL_29;
    }

    if (Model != kCGColorSpaceModelRGB)
    {
      goto LABEL_21;
    }
  }

  *(this + 27) = 4;
  v36 = xmmword_186224EF0;
  *&v34 = "R";
  *(&v34 + 1) = "G";
  *&v35 = "B";
  v15 = 1;
LABEL_29:
  *v13 = "A";
  v18 = *(this + 3);
  if (!v18)
  {
    goto LABEL_37;
  }

  v19 = IIODictionary::containsKey(v18, @"Compression");
  v20 = *(this + 3);
  if (v19)
  {
    Uint32ForKey = IIODictionary::getUint32ForKey(v20, @"Compression");
    goto LABEL_34;
  }

  if (!IIODictionary::containsKeyGroup(v20, @"Compression", @"{EXR}"))
  {
LABEL_37:
    v22 = 4;
    goto LABEL_38;
  }

  Uint32ForKey = IIODictionary::getUint32ForKeyGroup(*(this + 3), @"Compression", @"{EXR}");
LABEL_34:
  if (Uint32ForKey <= 7)
  {
    v22 = Uint32ForKey;
  }

  else
  {
    v22 = 4;
  }

LABEL_38:
  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  appended = gFunc_axr_encoder_append_part(a2, "part name", 0, v22, (Width - 1) << 32, (Height << 32) - 0x100000000, (Width - 1) << 32, (Height << 32) - 0x100000000, 1.0, vcvts_n_f32_s32(Width - 1, 1uLL), vcvts_n_f32_s32(((Height << 32) - 0x100000000) >> 32, 1uLL), Width, 72.0, 0, 0);
  if (appended)
  {
    v26 = appended;
    ObjectForKeyGroup = IIODictionary::getObjectForKeyGroup(*(this + 3), @"Chromaticities", @"{EXR}");
    memset(v31, 0, sizeof(v31));
    IIOArray::IIOArray(v31, ObjectForKeyGroup);
    if (IIOArray::getCount(v31) == 8)
    {
      v28 = 0;
      v29 = 0;
      v33[0] = 0;
      v33[1] = 0;
      v32[0] = 0;
      v32[1] = 0;
      do
      {
        *(v33 + v28) = IIOArray::getFloatAtIndex(v31, v29);
        v30 = v29 + 1;
        *(v32 + v28) = IIOArray::getFloatAtIndex(v31, v30);
        v28 += 4;
        v29 = v30 + 1;
      }

      while (v28 != 16);
      gFunc_axr_part_set_chromaticities(v26, v15, v33, v32, 1.0);
    }

    else
    {
      gFunc_axr_part_set_chromaticities(v26, v15, 0, 0, 1.0);
    }

    IIOArray::~IIOArray(v31);
    *(this + 17) = gFunc_axr_part_create_colorspace(v26, 2, 0);
    gFunc_axr_part_append_channels(v26, 0, *(this + 26), 1, 1, 0, &v36, &v34, *(this + 27), EXRWritePluginInput::ReadCallback, EXRWritePluginInput::ReleaseCallback, this);
  }
}

void sub_1860B7B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  IIOArray::~IIOArray(va);
  _Unwind_Resume(a1);
}

uint64_t EXRWritePluginInput::ReleaseCallback(uint64_t this)
{
  if (this)
  {
    return (*(*this + 8))();
  }

  return this;
}

void EXRWritePluginInput::~EXRWritePluginInput(EXRWritePluginInput *this)
{
  EXRWritePluginInput::~EXRWritePluginInput(this);

  JUMPOUT(0x186602850);
}

{
  *this = &unk_1EF4DD368;
  v2 = *(this + 4);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 17);
  if (v3)
  {
    CGColorSpaceRelease(v3);
  }
}

uint64_t EXRWritePluginInput::readCB(EXRWritePluginInput *this, const CGFloat *a2, unint64_t a3, unint64_t a4, axr_size_t a5)
{
  v5 = a3;
  v8 = *(this + 4);
  if (!v8)
  {
    v11 = *(this + 27) * *(this + 28);
    v19.bitsPerComponent = *(this + 28);
    v19.bitsPerPixel = v11;
    v19.colorSpace = *(this + 17);
    memset(&v19.bitmapInfo, 0, 24);
    if (CGColorSpaceGetModel(v19.colorSpace) || (CGImageHasAlpha() & 1) != 0)
    {
      v12 = *(this + 28) == 32;
      v13 = 4355;
      v14 = 8451;
    }

    else
    {
      v12 = *(this + 28) == 32;
      v13 = 4352;
      v14 = 8448;
    }

    if (v12)
    {
      v13 = v14;
    }

    v19.bitmapInfo = v13;
    *&v19.version = 0uLL;
    operator new();
  }

  v10 = *(this + 10);
  v9 = *(this + 11);
  v15 = a3 / v10;
  *&v19.bitsPerComponent = 0;
  v19.colorSpace = &v19;
  *&v19.bitmapInfo = 0x2000000000;
  v19.decode = a2;
  if (v9 + a3 / v10 >= *(this + 9))
  {
    v16 = *(this + 9);
  }

  else
  {
    LODWORD(v16) = v9 + v15;
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 0x40000000;
  v18[2] = ___ZN19EXRWritePluginInput6readCBEPvmm10axr_size_t_block_invoke;
  v18[3] = &unk_1E6F41B30;
  v18[4] = &v19;
  if (IIOPixelProvider::iterateOverImage(v8, v9, v16, v15, v18))
  {
    v5 = -12;
  }

  else
  {
    *(this + 11) += v15;
  }

  _Block_object_dispose(&v19, 8);
  return v5;
}

void *___ZN19EXRWritePluginInput6readCBEPvmm10axr_size_t_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = memcpy(*(*(*(a1 + 32) + 8) + 24), *a3, *(a3 + 8) * *(a3 + 24));
  *(*(*(a1 + 32) + 8) + 24) += *(a3 + 24);
  return result;
}

void IIO_Reader_BC::createReadPlugin()
{
  operator new();
}

{
  operator new();
}

uint64_t IIO_Reader_BC::getImageCount(IIO_Reader_BC *this, IIOImageReadSession *a2, IIODictionary *a3, CGImageSourceStatus *a4, unsigned int *a5)
{
  if (a5)
  {
    *a5 = 1;
  }

  return 0;
}

double _cg_png_reset_write(uint64_t a1)
{
  png_free(a1, *(a1 + 320));
  png_free(a1, *(a1 + 352));
  png_free(a1, *(a1 + 368));
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  result = 0.0;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  return result;
}

unint64_t png_read_filter_row_paeth4_apple(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, double a6, double a7, double a8, double a9, int8x8_t a10)
{
  v10 = 0;
  v11 = *(result + 8);
  while (1)
  {
    v12 = (a2 + v10);
    v13 = (a4 + v10);
    if (a2 + v10 >= a3 || v13 >= a5)
    {
      break;
    }

    v15 = *v12 + *v13;
    *v12 = v15;
    if (++v10 == 4)
    {
      v16 = (a4 + v10);
      v17 = a4 + v10 - 4;
      if (v17 < a5 && v17 >= a4)
      {
        v18 = a2 + v10 - 4;
        if (v18 < a3 && v18 >= a2 && v16 < a5 && a2 + v10 < a3)
        {
          v19 = a4 + v10 - 3;
          if (v19 < a5 && v19 >= a4)
          {
            v20 = a2 + v10 - 3;
            if (v20 < a3 && v20 >= a2)
            {
              v21 = a4 + v10 + 1;
              if (v21 < a5 && v21 >= a4)
              {
                v22 = a2 + v10 + 1;
                if (v22 < a3 && v22 >= a2)
                {
                  v23 = a4 + v10 - 2;
                  if (v23 < a5 && v23 >= a4)
                  {
                    v24 = a2 + v10 - 2;
                    if (v24 < a3 && v24 >= a2)
                    {
                      v25 = a4 + v10 + 2;
                      if (v25 < a5 && v25 >= a4)
                      {
                        v26 = a2 + v10 + 2;
                        if (v26 < a3 && v26 >= a2)
                        {
                          v27 = a4 + v10 + 3;
                          if (v27 < a5 && v27 >= a4)
                          {
                            v28 = a2 + v10 + 3;
                            if (v28 < a3 && v28 >= a2)
                            {
                              if (v11 < 5)
                              {
                                return result;
                              }

                              v29 = 0;
                              result = *(v16 - 4);
                              v30 = *(a2 + v10 - 4);
                              v35.i32[0] = *(a2 + v10 - 2);
                              v31 = *v16;
                              v32 = *(a4 + v10 - 3);
                              v33 = *(a2 + v10 - 3);
                              v34 = *(a4 + v10 + 1);
                              v35.i32[1] = v15;
                              v36.i32[0] = *(a4 + v10 - 2);
                              v36.i32[1] = *(v16 - 1);
                              a10.i32[0] = *(a4 + v10 + 2);
                              v37 = a2 + v10;
                              v38 = a4 + v10;
                              a10.i8[4] = *(a4 + v10 + 3);
                              while (1)
                              {
                                v39 = v34;
                                v40 = v37 + v29;
                                if (v37 + v29 >= a3 || v40 < a2)
                                {
                                  break;
                                }

                                v42 = v31;
                                v43 = v31 - result;
                                v44 = v30 - result;
                                v45 = v30 - result + v43;
                                if (v45 < 0)
                                {
                                  v45 = -v45;
                                }

                                if (v44 < 0)
                                {
                                  v44 = result - v30;
                                }

                                if (v43 < 0)
                                {
                                  v43 = -v43;
                                }

                                if (v44 < v43)
                                {
                                  v43 = v44;
                                  LOBYTE(v30) = v42;
                                }

                                if (v45 < v43)
                                {
                                  LOBYTE(v30) = result;
                                }

                                result = v40 + 1;
                                if (v40 + 1 >= a3 || result < a2)
                                {
                                  break;
                                }

                                v46 = v39 - v32;
                                v47 = v33 - v32;
                                v48 = v33 - v32 + v39 - v32;
                                if (v48 < 0)
                                {
                                  v48 = -v48;
                                }

                                if (v47 < 0)
                                {
                                  v47 = v32 - v33;
                                }

                                if (v46 < 0)
                                {
                                  v46 = v32 - v39;
                                }

                                if (v47 < v46)
                                {
                                  v46 = v47;
                                  LOBYTE(v33) = v39;
                                }

                                if (v48 < v46)
                                {
                                  LOBYTE(v33) = v32;
                                }

                                result = v37 + v29 + 2;
                                if (result >= a3)
                                {
                                  break;
                                }

                                if (result < a2)
                                {
                                  break;
                                }

                                result = v37 + v29 + 3;
                                if (result >= a3)
                                {
                                  break;
                                }

                                if (result < a2)
                                {
                                  break;
                                }

                                v49 = vand_s8(a10, 0xFF000000FFLL);
                                LOBYTE(v30) = v30 + *(v37 + v29);
                                LOBYTE(v33) = v33 + *(v40 + 1);
                                v50 = vabd_s32(v35, v36);
                                v51 = vabd_s32(v49, v36);
                                v52 = vbsl_s8(vcgt_u32(vmin_u32(v50, v51), vabs_s32(vadd_s32(vsub_s32(v35, v36), vsub_s32(v49, v36)))), v36, vbsl_s8(vcgt_u32(v51, v50), v49, v35));
                                v53 = a2 + v29 + v10;
                                v54 = (v53 + 2);
                                v55.i32[0] = *(v53 + 2);
                                v55.i32[1] = *(v53 + 3);
                                v56 = vadd_s32(v52, v55);
                                *(v37 + v29) = v30;
                                result = v37 + v29;
                                *(v37 + v29 + 1) = v33;
                                *v54 = v56.i8[0];
                                *(a2 + v29 + v10 + 3) = v56.i8[4];
                                v57 = v38 + v29 + 4;
                                if (v57 >= a5)
                                {
                                  break;
                                }

                                if (v57 < a4)
                                {
                                  break;
                                }

                                v58 = v38 + v29 + 5;
                                if (v58 >= a5)
                                {
                                  break;
                                }

                                if (v58 < a4)
                                {
                                  break;
                                }

                                v59 = v38 + v29 + 6;
                                if (v59 >= a5)
                                {
                                  break;
                                }

                                if (v59 < a4)
                                {
                                  break;
                                }

                                v60 = v38 + v29 + 7;
                                if (v60 >= a5)
                                {
                                  break;
                                }

                                if (v60 < a4)
                                {
                                  break;
                                }

                                v61 = v37 + v29 + 4;
                                if (v61 >= a3)
                                {
                                  break;
                                }

                                if (v61 < a2)
                                {
                                  break;
                                }

                                v62 = v37 + v29 + 5;
                                if (v62 >= a3)
                                {
                                  break;
                                }

                                if (v62 < a2)
                                {
                                  break;
                                }

                                v63 = v37 + v29 + 6;
                                if (v63 >= a3)
                                {
                                  break;
                                }

                                if (v63 < a2)
                                {
                                  break;
                                }

                                v64 = v37 + v29 + 7;
                                if (v64 >= a3 || v64 < a2)
                                {
                                  break;
                                }

                                v30 = v30;
                                v33 = v33;
                                v35 = vand_s8(v56, 0xFF000000FFLL);
                                v31 = *(a4 + v29 + v10 + 4);
                                v34 = *(a4 + v29 + v10 + 5);
                                v65 = *(a4 + v29 + v10 + 7);
                                a10.i32[0] = *(a4 + v29 + v10 + 6);
                                v29 += 4;
                                a10.i32[1] = v65;
                                result = v42;
                                v32 = v39;
                                v36 = v49;
                                if (v29 + 4 >= v11)
                                {
                                  return result;
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

      break;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t CGImageCreateDataFromMetadata(const __CFDictionary *a1, uint64_t a2, CGImage *a3, CFDataRef *a4, CFDataRef *a5, CFDataRef *a6, const __CFDictionary *a7)
{
  if (a2)
  {
    v13 = *(a2 + 24);
    if (v13)
    {
      CFDictionaryGetCount(v13);
    }
  }

  v41 = a5;
  kdebug_trace();
  IIOInitDebugFlags();
  if ((~gIIODebugFlags & 0xC000) == 0)
  {
    ImageIODebugOptions(3, "S", "CGImageCreateDataFromMetadata", 0, 0, -1, 0);
  }

  memset(v43, 0, sizeof(v43));
  IIODictionary::IIODictionary(v43, a1, 1);
  v40 = a6;
  if (IIODictionary::containsKeyGroup(v43, @"{ExifAux}", @"{Exif}"))
  {
    ObjectForKeyGroup = IIODictionary::getObjectForKeyGroup(v43, @"{ExifAux}", @"{Exif}");
    IIODictionary::setObjectForKey(v43, ObjectForKeyGroup, @"{ExifAux}");
    IIODictionary::removeObjectForKeyGroup(v43, @"{ExifAux}", @"{Exif}");
  }

  v15 = IIODictionary::getObjectForKeyGroup(v43, @"Caption/Abstract", @"{IPTC}");
  v16 = IIODictionary::getObjectForKeyGroup(v43, @"ImageDescription", @"{TIFF}");
  if (v16)
  {
    if (!v15 || CFEqual(v15, v16))
    {
      goto LABEL_15;
    }
  }

  else if (!v15)
  {
    goto LABEL_15;
  }

  TypeID = CFStringGetTypeID();
  if (TypeID == CFGetTypeID(v15))
  {
    IIODictionary::setObjectForKeyGroup(v43, v15, @"ImageDescription", @"{TIFF}");
  }

LABEL_15:
  v18 = CGImageMetadataCreateFromLegacyProps(v43);
  CGImageMetadataMerge(v18, a2, 0);
  if (!a4)
  {
    goto LABEL_45;
  }

  v46 = 0;
  __n = 0;
  v44 = 0;
  v45 = 0;
  IIODictionary::IIODictionary(&v44, a7);
  if (IIODictionary::containsKey(&v44, @"kCGDataFromMetadataAddExifApp1Marker"))
  {
    BoolForKey = IIODictionary::getBoolForKey(&v44, @"kCGDataFromMetadataAddExifApp1Marker");
  }

  else
  {
    BoolForKey = 0;
  }

  if (IIODictionary::containsKey(v43, "{ExifThumbnail}"))
  {
    v20 = IIODictionary::getObjectForKeyGroup(v43, "JPEGThumbnailData", "{ExifThumbnail}");
    JPEGDataFromImage = v20;
    if (v20)
    {
      CFRetain(v20);
    }

    if (!a3)
    {
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  if (IIODictionary::getBoolForKey(v43, @"kCGImageDestinationEmbedThumbnail"))
  {
    if (a3)
    {
      Thumb = CGImageCreateThumb(a3, 0xA0uLL);
      JPEGDataFromImage = AppleJPEGReadPlugin::CreateJPEGDataFromImage(0, v43, Thumb, v23);
LABEL_29:
      Width = CGImageGetWidth(a3);
      Height = CGImageGetHeight(a3);
      ColorSpace = CGImageGetColorSpace(a3);
      goto LABEL_32;
    }

    LogError("IIOCreateExifFromMetadata", 277, "*** ERROR: no image provided - cannot embed thumbnail\n");
    JPEGDataFromImage = 0;
  }

  else
  {
    JPEGDataFromImage = 0;
    if (a3)
    {
LABEL_28:
      Thumb = 0;
      goto LABEL_29;
    }
  }

LABEL_31:
  Width = IIODictionary::getUint32ForKey(&v44, @"PixelXDimension");
  Height = IIODictionary::getUint32ForKey(&v44, @"PixelYDimension");
  Thumb = 0;
  ColorSpace = 0;
LABEL_32:
  IIODebugOrientation("IIOCreateExifFromMetadata", 302, v43);
  v27 = CreateExifBufferFromPropertiesJPEG(v43, Width, Height, ColorSpace, JPEGDataFromImage, @"public.jpeg", &__n);
  if (v27 && (v28 = BoolForKey, v29 = __n, __n))
  {
    if (v28)
    {
      v30 = malloc_type_malloc((__n + 4), 0x100004077774924uLL);
      *v30 = -7681;
      v30[2] = (v29 + 2) >> 8;
      v30[3] = v29 + 2;
      memcpy(v30 + 4, v27, __n);
      v31 = CFDataCreate(*MEMORY[0x1E695E480], v30, (v29 + 4));
    }

    else
    {
      v30 = malloc_type_malloc(__n, 0x100004077774924uLL);
      memcpy(v30, v27, __n);
      v31 = CFDataCreate(*MEMORY[0x1E695E480], v30, __n);
    }

    *a4 = v31;
    free(v30);
  }

  else
  {
    _cg_jpeg_mem_term("IIOCreateExifFromMetadata", 305, "*** WARNING: CreateExifBufferFromPropertiesJPEG returned NULL\n", v40);
  }

  if (JPEGDataFromImage)
  {
    CFRelease(JPEGDataFromImage);
  }

  if (Thumb)
  {
    CGImageRelease(Thumb);
  }

  if (v27)
  {
    free(v27);
  }

  IIODictionary::~IIODictionary(&v44);
LABEL_45:
  if (v41)
  {
    v44 = 0;
    ObjectForKey = IIODictionary::getObjectForKey(v43, @"{IPTC}");
    if (ObjectForKey)
    {
      v33 = CFGetTypeID(ObjectForKey);
      if (v33 == CFDictionaryGetTypeID())
      {
        operator new();
      }
    }

    if (IIODictionary::getCount(v43))
    {
      v34 = IIODictionary::containsKeyGroup(v43, @"ColorSpace", @"{Exif}");
      if (v34)
      {
        LOBYTE(v34) = IIODictionary::getUint32ForKeyGroup(v43, @"ColorSpace", @"{Exif}") == 1;
      }

      v35 = CreateIPTCDataFromProperties(v34, 0, &v44);
      if (v35)
      {
        v36 = v44;
        if (v44)
        {
          v37 = malloc_type_malloc((v44 + 4), 0x100004077774924uLL);
          *v37 = -4609;
          v37[2] = (v36 + 2) >> 8;
          v37[3] = v36 + 2;
          memcpy(v37 + 4, v35, v44);
          *v41 = CFDataCreate(*MEMORY[0x1E695E480], v37, (v36 + 4));
          free(v37);
          free(v35);
        }
      }
    }
  }

  if (v40)
  {
    v44 = 0;
    v45 = 0;
    v46 = 0;
    IIODictionary::IIODictionary(&v44, a7);
    if (IIODictionary::containsKey(&v44, @"kCGDataFromMetadataStripExifFromXMP") && !IIODictionary::getBoolForKey(&v44, @"kCGDataFromMetadataStripExifFromXMP"))
    {
      XMPData = CGImageMetadataCreateXMPData(v18, 0);
    }

    else
    {
      XMPData = CGImageMetadataCreateXMPWithEXIFFiltered(v18);
    }

    *v40 = XMPData;
    IIODictionary::~IIODictionary(&v44);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  kdebug_trace();
  IIODictionary::~IIODictionary(v43);
  return 0;
}

void sub_1860B8B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MEMORY[0x186602850](v4, 0x10A1C4047070A01);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

uint64_t CGImageCreateMetadataFromData(const __CFData *a1, const __CFData *a2, const __CFData *a3, const __CFData *a4, CFDictionaryRef *a5, CGMutableImageMetadataRef *a6)
{
  kdebug_trace();
  IIOInitDebugFlags();
  if ((~gIIODebugFlags & 0xC000) == 0)
  {
    ImageIODebugOptions(3, "S", "CGImageCreateMetadataFromData", 0, 0, -1, 0);
  }

  if (!a5)
  {
    v11 = a6;
    if (!a6)
    {
      LogError("CGImageCreateMetadataFromData", 452, "*** ERROR: imageProperties or imageMetadata have to be non-nil\n");
LABEL_39:
      v27 = 4294967246;
      goto LABEL_115;
    }

    goto LABEL_7;
  }

  *a5 = 0;
  v11 = a6;
  if (a6)
  {
LABEL_7:
    v66 = 0;
    *v11 = 0;
    goto LABEL_8;
  }

  v66 = 1;
LABEL_8:
  Mutable = CGImageMetadataCreateMutable();
  if (!a1)
  {
    goto LABEL_13;
  }

  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  if (Length < 0x11)
  {
    goto LABEL_13;
  }

  if (!strncmp(BytePtr, "Exif", 5uLL))
  {
    v15 = 6;
  }

  else
  {
    if (strncmp(BytePtr + 4, "Exif", 5uLL))
    {
      LogError("CGImageCreateMetadataFromData", 495, "*** ERROR: exifData not recognized (does not start with 'Exif");
LABEL_13:
      v15 = 0;
      goto LABEL_14;
    }

    v15 = 10;
  }

  MetadataFromDatabuffer = CreateMetadataFromDatabuffer(&BytePtr[v15], Length - v15);
  if (MetadataFromDatabuffer)
  {
    CGImageMetadataMerge(Mutable, MetadataFromDatabuffer, 0);
    CFRelease(MetadataFromDatabuffer);
    v16 = 0;
    if (!a3)
    {
      goto LABEL_30;
    }

    goto LABEL_15;
  }

LABEL_14:
  v16 = 1;
  if (!a3)
  {
LABEL_30:
    v22 = 1;
    goto LABEL_31;
  }

LABEL_15:
  v17 = CFDataGetBytePtr(a3);
  v18 = CFDataGetLength(a3);
  if (v18 < 0x29)
  {
    goto LABEL_30;
  }

  v19 = 29;
  if (strncmp(v17, kMainXMPSignatureString[0], 0x1DuLL))
  {
    if (strncmp(v17, kMainXMPPlainString[0], 0x21uLL))
    {
      if (!strncmp(v17, "http://ns.adobe.com/xmp/extension/", 0x23uLL))
      {
        LogError("CGImageCreateMetadataFromData", 534, "*** ERROR: XMP exention blocks not handled yet!\n");
      }

      goto LABEL_30;
    }

    v19 = 0;
  }

  MetadataFromXMPBuffer = CreateMetadataFromXMPBuffer(&v17[v19], v18 - v19);
  if (!MetadataFromXMPBuffer)
  {
    LogError("CGImageCreateMetadataFromData", 529, "*** ERROR: XMP not recognized (does not start with 'http://ns.adobe.com/xap/1.0/'\n");
    goto LABEL_30;
  }

  CGImageMetadataMerge(Mutable, MetadataFromXMPBuffer, 0);
  CFRelease(MetadataFromXMPBuffer);
  v22 = 0;
LABEL_31:
  cf = Mutable;
  v65 = v15;
  if (a2)
  {
    v23 = CFDataGetBytePtr(a2);
    v24 = CFDataGetLength(a2);
    if (v24 >= 0x15)
    {
      if (!strncmp(v23, "Photoshop 3.0", 0xEuLL) || !strncmp(v23 + 4, "Photoshop 3.0", 0xEuLL))
      {
        v28 = CGImageMetadataCreateMutable();
        ReadPhotoshopImageResource(v28, (v23 + 14), v24 - 14);
        CGImageMetadataMerge(Mutable, v28, 0);
        CFRelease(v28);
        v26 = a4 == 0;
        v25 = 1;
        goto LABEL_41;
      }

      LogError("CGImageCreateMetadataFromData", 566, "*** ERROR: IPTC not recognized (does not start with 'Photoshop 3.0'\n");
    }
  }

  v25 = 0;
  v26 = a4 == 0;
  if (!a4 && (v16 & v22 & 1) != 0)
  {
    CFRelease(cf);
    goto LABEL_39;
  }

LABEL_41:
  if (!a5)
  {
    goto LABEL_112;
  }

  v29 = CGImagePropertiesCreateFromMetadata(cf);
  v30 = v29;
  if (v29)
  {
    v31 = 1;
  }

  else
  {
    v31 = v26;
  }

  if ((v31 & 1) == 0)
  {
    operator new();
  }

  if (!v29)
  {
    goto LABEL_112;
  }

  IIONumber::IIONumber(v73, 8);
  IIODictionary::setObjectForKey(v30, v73, @"Depth");
  IIONumber::~IIONumber(v73);
  ObjectForKeyGroup = IIODictionary::getObjectForKeyGroup(v30, @"XResolution", @"{TIFF}");
  if (ObjectForKeyGroup)
  {
    IIODictionary::setObjectForKey(v30, ObjectForKeyGroup, @"DPIHeight");
  }

  else
  {
    IIONumber::IIONumber(v73, 72);
    IIODictionary::setObjectForKey(v30, v73, @"DPIHeight");
    IIONumber::~IIONumber(v73);
  }

  v33 = IIODictionary::getObjectForKeyGroup(v30, @"YResolution", @"{TIFF}");
  if (v33)
  {
    IIODictionary::setObjectForKey(v30, v33, @"DPIWidth");
  }

  else
  {
    IIONumber::IIONumber(v73, 72);
    IIODictionary::setObjectForKey(v30, v73, @"DPIWidth");
    IIONumber::~IIONumber(v73);
  }

  v34 = IIODictionary::getObjectForKeyGroup(v30, @"Orientation", @"{TIFF}");
  if (v34)
  {
    IIODictionary::setObjectForKey(v30, v34, @"Orientation");
  }

  else
  {
    IIONumber::IIONumber(v73, 1);
    IIODictionary::setObjectForKey(v30, v73, @"Orientation");
    IIONumber::~IIONumber(v73);
  }

  v35 = IIODictionary::getObjectForKeyGroup(v30, @"PixelYDimension", @"{Exif}");
  if (v35)
  {
    IIODictionary::setObjectForKey(v30, v35, @"PixelHeight");
  }

  v36 = IIODictionary::getObjectForKeyGroup(v30, @"PixelXDimension", @"{Exif}");
  if (v36)
  {
    IIODictionary::setObjectForKey(v30, v36, @"PixelWidth");
  }

  if (!v26)
  {
    v48 = CFDataGetBytePtr(a4);
    v49 = CFDataGetLength(a4);
    if (v49 < 0xC9)
    {
      goto LABEL_76;
    }

    v50 = bswap32(*(v48 + 4));
    if (v50 > 1281450527)
    {
      if (v50 == 1281450528)
      {
        v51 = &kCGImagePropertyColorModelLab;
      }

      else
      {
        if (v50 != 1380401696)
        {
          goto LABEL_89;
        }

        v51 = &kCGImagePropertyColorModelRGB;
      }
    }

    else if (v50 == 1129142603)
    {
      v51 = &kCGImagePropertyColorModelCMYK;
    }

    else
    {
      if (v50 != 1196573017)
      {
        goto LABEL_89;
      }

      v51 = &kCGImagePropertyColorModelGray;
    }

    IIODictionary::setObjectForKey(v30, *v51, @"ColorModel");
LABEL_89:
    v77 = 0;
    *__p = 0u;
    v76 = 0u;
    *v73 = 0u;
    v74 = 0u;
    IIOScanner::IIOScanner(v73, v48, v49, 0);
    IIOScanner::seek(v73, 0x80uLL);
    Val32 = IIOScanner::getVal32(v73);
    if (Val32)
    {
      while (IIOScanner::getVal32(v73) != 1684370275)
      {
        IIOScanner::skip(v73, 8uLL);
        if (!--Val32)
        {
          goto LABEL_95;
        }
      }

      v55 = IIOScanner::getVal32(v73);
      IIOScanner::getVal32(v73);
      IIOScanner::seek(v73, v55);
      if (IIOScanner::getVal32(v73) == 1684370275)
      {
        IIOScanner::skip(v73, 4uLL);
        IIOScanner::getVal32(v73);
        v70 = 0;
        v71 = 0;
        value = 0;
        IIOString::IIOString(&v70, &v48[*(&v74 + 1)]);
        IIODictionary::setObjectForKey(v30, value, @"ProfileName");
        IIOString::~IIOString(&v70);
      }
    }

LABEL_95:
    IIOScanner::~IIOScanner(v73);
    if (v25)
    {
      goto LABEL_101;
    }

    goto LABEL_77;
  }

  if (IIODictionary::containsKeyGroup(v30, @"PrimaryChromaticities", @"{TIFF}") && IIODictionary::containsKeyGroup(v30, @"WhitePoint", @"{TIFF}") && IIODictionary::containsKeyGroup(v30, @"Gamma", @"{Exif}"))
  {
    IIODictionary::setObjectForKey(v30, @"RGB", @"ColorModel");
    FloatForKeyGroup = IIODictionary::getFloatForKeyGroup(v30, @"Gamma", @"{Exif}");
    v37 = IIODictionary::getObjectForKeyGroup(v30, @"WhitePoint", @"{TIFF}");
    v73[0] = 0;
    v73[1] = 0;
    *&v74 = 0;
    IIOArray::IIOArray(v73, v37);
    FloatAtIndex = IIOArray::getFloatAtIndex(v73, 0);
    v39 = IIOArray::getFloatAtIndex(v73, 1);
    v40 = IIODictionary::getObjectForKeyGroup(v30, @"PrimaryChromaticities", @"{TIFF}");
    v70 = 0;
    v71 = 0;
    value = 0;
    IIOArray::IIOArray(&v70, v40);
    v41 = IIOArray::getFloatAtIndex(&v70, 0);
    v42 = IIOArray::getFloatAtIndex(&v70, 1);
    v43 = IIOArray::getFloatAtIndex(&v70, 2);
    v44 = IIOArray::getFloatAtIndex(&v70, 3);
    v45 = IIOArray::getFloatAtIndex(&v70, 4);
    v46 = IIOArray::getFloatAtIndex(&v70, 5);
    if (IIOChromaticitiesMatchAdobeRGB(FloatAtIndex, v39, v41, v42, v43, v44, v45, v46, FloatForKeyGroup))
    {
      v47 = @"Adobe RGB (1998)";
    }

    else
    {
      if (!IIOChromaticitiesMatchSRGB(FloatAtIndex, v39, v41, v42, v43, v44, v45, v46, FloatForKeyGroup))
      {
        goto LABEL_100;
      }

      v47 = @"sRGB IEC61966-2.1";
    }

    IIODictionary::setObjectForKey(v30, v47, @"ProfileName");
LABEL_100:
    IIOArray::~IIOArray(&v70);
    IIOArray::~IIOArray(v73);
    if (v25)
    {
      goto LABEL_101;
    }

LABEL_77:
    if (IIODictionary::containsKey(v30, @"{IPTC}"))
    {
      _cg_jpeg_mem_term("CGImageCreateMetadataFromData", 611, "*** NOTE: metadata contains {IPTC} - but IPTCData was not requested...\n");
      ObjectForKey = IIODictionary::getObjectForKey(v30, @"{IPTC}");
      v70 = 0;
      v71 = 0;
      value = 0;
      IIODictionary::IIODictionary(&v70, ObjectForKey);
      v73[0] = 0;
      v73[1] = v73;
      *&v74 = 0x4002000000;
      *(&v74 + 1) = __Block_byref_object_copy__1;
      __p[0] = __Block_byref_object_dispose__1;
      __p[1] = 0;
      v76 = 0uLL;
      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 0x40000000;
      v69[2] = __CGImageCreateMetadataFromData_block_invoke;
      v69[3] = &unk_1E6F41B58;
      v69[4] = v73;
      IIODictionary::enumerate(&v70, v69);
      v53 = v73[1] + 40;
      if (*(v73[1] + 63) < 0)
      {
        v53 = *v53;
      }

      _cg_jpeg_mem_term("CGImageCreateMetadataFromData", 619, "    returning with Exif: '%s'\n", v53);
      kdebug_trace();
      _Block_object_dispose(v73, 8);
      if (SHIBYTE(v76) < 0)
      {
        operator delete(__p[1]);
      }

      IIODictionary::~IIODictionary(&v70);
    }

    goto LABEL_101;
  }

  if (IIODictionary::containsKeyGroup(v30, @"ColorSpace", @"{Exif}") && IIODictionary::getUint32ForKeyGroup(v30, @"ColorSpace", @"{Exif}") == 1)
  {
    IIODictionary::setObjectForKey(v30, @"sRGB IEC61966-2.1", @"ProfileName");
  }

LABEL_76:
  if ((v25 & 1) == 0)
  {
    goto LABEL_77;
  }

LABEL_101:
  if (IIODictionary::containsKeyGroup(v30, @"JPEGInterchangeFormatLength", @"{Exif}"))
  {
    Uint32ForKeyGroup = IIODictionary::getUint32ForKeyGroup(v30, @"JPEGInterchangeFormatLength", @"{Exif}");
    v57 = IIODictionary::getUint32ForKeyGroup(v30, @"JPEGInterchangeFormat", @"{Exif}");
    v58 = IIODictionary::getUint32ForKeyGroup(v30, @"JPEGInterchangeFormatWidth", @"{Exif}");
    v59 = IIODictionary::getUint32ForKeyGroup(v30, @"JPEGInterchangeFormatHeight", @"{Exif}");
    if (v58)
    {
      v60 = v59;
      if (v59)
      {
        if (v57 && Uint32ForKeyGroup)
        {
          v73[0] = 0;
          v73[1] = 0;
          *&v74 = 0;
          IIODictionary::IIODictionary(v73);
          IIODictionary::setObjectForKey(v30, v73[1], @"{ExifThumbnail}");
          IIONumber::IIONumber(&v70, v58);
          IIODictionary::setObjectForKey(v73, value, @"JPEGInterchangeFormatWidth");
          IIONumber::~IIONumber(&v70);
          IIONumber::IIONumber(&v70, v60);
          IIODictionary::setObjectForKey(v73, value, @"JPEGInterchangeFormatHeight");
          IIONumber::~IIONumber(&v70);
          v61 = CFDataGetBytePtr(a1);
          if (CFDataGetLength(a1) > Uint32ForKeyGroup - v65 + v57)
          {
            v62 = CFDataCreate(*MEMORY[0x1E695E480], &v61[v57 - v65], Uint32ForKeyGroup);
            if (v62)
            {
              IIODictionary::setObjectForKey(v73, v62, @"JPEGThumbnailData");
              CFRelease(v62);
            }
          }

          IIODictionary::~IIODictionary(v73);
        }
      }
    }

    IIODictionary::removeObjectForKeyGroup(v30, @"JPEGInterchangeFormatLength", @"{Exif}");
    IIODictionary::removeObjectForKeyGroup(v30, @"JPEGInterchangeFormat", @"{Exif}");
    IIODictionary::removeObjectForKeyGroup(v30, @"JPEGInterchangeFormatWidth", @"{Exif}");
    IIODictionary::removeObjectForKeyGroup(v30, @"JPEGInterchangeFormatHeight", @"{Exif}");
  }

  *a5 = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], v30[1]);
  (*(*v30 + 1))(v30);
LABEL_112:
  if (v66)
  {
    CFRelease(cf);
    v27 = 0;
  }

  else
  {
    v27 = 0;
    *a6 = cf;
  }

LABEL_115:
  kdebug_trace();
  return v27;
}

void sub_1860B9940(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  IIOString::~IIOString(&a20);
  IIOScanner::~IIOScanner(&a23);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1860B98ECLL);
}

__n128 __Block_byref_object_copy__1(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__1(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

std::string *__CGImageCreateMetadataFromData_block_invoke(uint64_t a1, const void *a2)
{
  IIOString::IIOString(v5, a2);
  v3 = IIOString::utf8String(v5);
  std::string::append((*(*(a1 + 32) + 8) + 40), v3);
  IIOString::~IIOString(v5);
  return std::string::append((*(*(a1 + 32) + 8) + 40), "  ");
}

void sub_1860B9B44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

uint64_t CGImageCreateMetadataFromDataArray(const __CFArray *a1, CFDictionaryRef *a2, CGMutableImageMetadataRef *a3)
{
  kdebug_trace();
  IIOInitDebugFlags();
  if ((~gIIODebugFlags & 0xC000) == 0)
  {
    ImageIODebugOptions(3, "S", "CGImageCreateMetadataFromDataArray", 0, 0, -1, 0);
  }

  if (!a1)
  {
    CGImageCreateMetadataFromDataArray_cold_1();
    MetadataFromData = 4294967246;
    goto LABEL_39;
  }

  if (CFArrayGetCount(a1) <= 0)
  {
    MetadataFromData = CGImageCreateMetadataFromData(0, 0, 0, 0, a2, a3);
    goto LABEL_39;
  }

  v19 = a2;
  v6 = 0;
  v7 = 0;
  v20 = 0;
  v21 = 0;
  v8 = 0;
  allocator = *MEMORY[0x1E695E480];
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v6);
    v10 = CFGetTypeID(ValueAtIndex);
    if (v10 != CFDataGetTypeID())
    {
      LogError("CGImageCreateMetadataFromDataArray", 701, "*** ERROR: dataArray does not contain CFData\n");
      goto LABEL_15;
    }

    BytePtr = CFDataGetBytePtr(ValueAtIndex);
    Length = CFDataGetLength(ValueAtIndex);
    if (Length < 0x11)
    {
      goto LABEL_15;
    }

    if (!strncmp(BytePtr, "Exif", 5uLL))
    {
      v8 = ValueAtIndex;
      goto LABEL_15;
    }

    if (Length < 0x1F)
    {
      if (Length < 0x15)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (!strncmp(BytePtr, kMainXMPSignatureString[0], 0x1DuLL))
      {
        v20 = ValueAtIndex;
        goto LABEL_15;
      }

      if (Length >= 0x29 && !strncmp(BytePtr, "http://ns.adobe.com/xmp/extension/", 0x23uLL))
      {
        LogError("CGImageCreateMetadataFromDataArray", 718, "*** ERROR: XMP exention blocks not handled yet!\n");
        goto LABEL_15;
      }
    }

    if (!strncmp(BytePtr, "Photoshop 3.0", 0xEuLL))
    {
      v21 = ValueAtIndex;
      goto LABEL_15;
    }

    if (Length < 0x81)
    {
      goto LABEL_15;
    }

    if (!strncmp(BytePtr, "ICC_PROFILE", 0xCuLL))
    {
      if (v7)
      {
        CFRelease(v7);
      }

      v13 = Length - 14;
      v15 = BytePtr + 14;
      v14 = allocator;
      goto LABEL_34;
    }

    if (BytePtr[36] == 97 && BytePtr[37] == 99 && BytePtr[38] == 115 && BytePtr[39] == 112)
    {
      if (v7)
      {
        CFRelease(v7);
      }

      v13 = Length;
      v14 = allocator;
      v15 = BytePtr;
LABEL_34:
      v7 = CFDataCreate(v14, v15, v13);
    }

LABEL_15:
    ++v6;
  }

  while (v6 < CFArrayGetCount(a1));
  MetadataFromData = CGImageCreateMetadataFromData(v8, v21, v20, v7, v19, a3);
  if (v7)
  {
    CFRelease(v7);
  }

LABEL_39:
  kdebug_trace();
  return MetadataFromData;
}

uint64_t CGImageCreateCombinedXMPData(const void *a1, const void *a2, CFDataRef *a3, CGMutableImageMetadataRef *a4)
{
  v62 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v51 = "is NULL";
LABEL_79:
    CGImageCreateCombinedXMPData_cold_3(v51);
    return 4294967246;
  }

  v8 = CFGetTypeID(a1);
  if (v8 != CFDataGetTypeID())
  {
    v51 = "is not a CFDataRef";
    goto LABEL_79;
  }

  if (!a2)
  {
    v18 = a3 != 0;
    v19 = a4 != 0;
    if (a3 | a4)
    {
LABEL_51:
      if (v18)
      {
        *a3 = CFRetain(a1);
      }

      if (v19)
      {
        memset(v61, 0, 24);
        IIOArray::IIOArray(v61);
        IIOArray::addObject(v61, a1);
        MetadataFromDataArray = CGImageCreateMetadataFromDataArray(*&v61[8], 0, a4);
        IIOArray::~IIOArray(v61);
        return MetadataFromDataArray;
      }

      return 4294967246;
    }

LABEL_80:
    CGImageCreateCombinedXMPData_cold_2();
    return 4294967246;
  }

  v9 = CFGetTypeID(a2);
  TypeID = CFArrayGetTypeID();
  if (v9 != TypeID)
  {
    CGImageCreateCombinedXMPData_cold_1(TypeID, v11, v12, v13, v14, v15, v16, v17, v53);
    return 4294967246;
  }

  v18 = a3 != 0;
  v19 = a4 != 0;
  if (!(a3 | a4))
  {
    goto LABEL_80;
  }

  if (CFArrayGetCount(a2) < 1)
  {
    goto LABEL_51;
  }

  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  if (Length >= 0x1E && (*BytePtr == 0x6E2F2F3A70747468 ? (v22 = *(BytePtr + 1) == 0x2E65626F64612E73) : (v22 = 0), v22 ? (v23 = *(BytePtr + 2) == 0x2F7061782F6D6F63) : (v23 = 0), v23))
  {
    v49 = BytePtr[29];
    v48 = (BytePtr + 29);
    v50 = v49 == 60;
    if (v49 == 60)
    {
      v24 = Length - 29;
    }

    else
    {
      v24 = 0;
    }

    if (v50)
    {
      v25 = v48;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  memset(v61, 0, sizeof(v61));
  if (CFArrayGetCount(a2) < 1)
  {
    v45 = 0;
    v26 = 0;
LABEL_64:
    MetadataFromXMPBuffer = 0;
    if (v24 && v25)
    {
      MetadataFromXMPBuffer = CreateMetadataFromXMPBuffer(v25, v24);
    }

    if (!v45)
    {
      goto LABEL_69;
    }

    goto LABEL_68;
  }

  v54 = v24;
  v55 = v25;
  v56 = a3;
  v57 = a4;
  v58 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, v29);
    v31 = CFDataGetBytePtr(ValueAtIndex);
    v32 = CFDataGetLength(ValueAtIndex);
    if (v32 >= 0x4C)
    {
      v33 = v32;
      if (!strcmp(v31, "http://ns.adobe.com/xmp/extension/"))
      {
        v59 = *(v31 + 35);
        v60 = *(v31 + 51);
        v34 = bswap32(*(v31 + 67));
        v35 = *(v31 + 71);
        if ((v28 & 1) == 0)
        {
          v36 = *(v31 + 51);
          *v61 = *(v31 + 35);
          *&v61[16] = v36;
          v37 = malloc_type_calloc(1uLL, v34, 0x100004077774924uLL);
          if (!v37)
          {
            return 4294967246;
          }

          v26 = v37;
          v27 = v34;
        }

        if (*v61 == v59 && *&v61[8] == *(&v59 + 1) && *&v61[16] == v60 && *&v61[24] == *(&v60 + 1) && v34 == v27)
        {
          v43 = bswap32(v35);
          v44 = v33 - 75;
          if (v44 + v43 > v34)
          {
            return 4294967246;
          }

          memcpy(&v26[v43], v31 + 75, v44);
          v58 += v44;
        }

        v28 = 1;
      }
    }

    ++v29;
  }

  while (v29 < CFArrayGetCount(a2));
  v45 = v26 != 0;
  a3 = v56;
  v24 = v54;
  if (!v26)
  {
    a4 = v57;
    v25 = v55;
    goto LABEL_64;
  }

  v25 = v55;
  if (!v27 || (v45 = 1, !v54) || !v55 || v58 != v27)
  {
    a4 = v57;
    goto LABEL_64;
  }

  MetadataFromXMPBuffer = CreateMetadataFromExtendedXMPData(v55, v54, v26);
  a4 = v57;
LABEL_68:
  free(v26);
LABEL_69:
  if (a3 && MetadataFromXMPBuffer)
  {
    CGImageMetadataCreateExtendedXMPWithEXIFFiltered(MetadataFromXMPBuffer, a3, 0, 0, 0, 0);
  }

  if (a4)
  {
    MetadataFromDataArray = 0;
    *a4 = MetadataFromXMPBuffer;
  }

  else
  {
    if (MetadataFromXMPBuffer)
    {
      CFRelease(MetadataFromXMPBuffer);
    }

    return 0;
  }

  return MetadataFromDataArray;
}

uint64_t EXRReadPlugin::EXRReadPlugin(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v6 = IIOReadPlugin::IIOReadPlugin(a1, a2, a3, a4, a5);
  *v6 = &unk_1EF4DD4D0;
  *(v6 + 464) = 0u;
  *(v6 + 480) = 0u;
  *(v6 + 496) = 0u;
  *(v6 + 512) = 0u;
  *(v6 + 528) = 0u;
  *(v6 + 544) = 0u;
  *(v6 + 560) = 0u;
  *(v6 + 576) = 0u;
  *(v6 + 592) = 0u;
  *(v6 + 608) = 0u;
  *(v6 + 624) = 0;
  AppleEXREnabled();
  return a1;
}

void sub_1860BA31C(_Unwind_Exception *a1)
{
  EXRPluginData::~EXRPluginData(v1 + 58);
  IIOReadPlugin::~IIOReadPlugin(v1);
  _Unwind_Resume(a1);
}

void sub_1860BA3A0(_Unwind_Exception *a1)
{
  EXRPluginData::~EXRPluginData(v1 + 58);
  IIOReadPlugin::~IIOReadPlugin(v1);
  _Unwind_Resume(a1);
}

void EXRReadPlugin::~EXRReadPlugin(EXRReadPlugin *this)
{
  *this = &unk_1EF4DD4D0;
  *(this + 29) = 0u;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  *(this + 37) = 0u;
  *(this + 38) = 0u;
  *(this + 78) = 0;
  IIOReadPlugin::~IIOReadPlugin(this);
}

{
  *this = &unk_1EF4DD4D0;
  *(this + 29) = 0u;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  *(this + 37) = 0u;
  *(this + 38) = 0u;
  *(this + 78) = 0;
  IIOReadPlugin::~IIOReadPlugin(this);

  JUMPOUT(0x186602850);
}

uint64_t EXRReadPlugin::initialize(EXRReadPlugin *this, IIODictionary *a2)
{
  if (!AppleEXREnabled())
  {
    updated = 4294967246;
LABEL_48:
    kdebug_trace();
    return updated;
  }

  v63 = 0;
  v3 = IIOImageReadSession::retainBytePointer(*(this + 3), &v63, 1);
  Size = IIOImageReadSession::getSize(*(this + 3));
  v62 = 0;
  v5 = gFunc_axr_data_create(v3, Size, &v62, 0, 0);
  logical_image_list = gFunc_axr_data_create_logical_image_list(v5);
  v59 = 0;
  v60 = 0;
  v61 = 0;
  updated = IIO_Reader_OpenEXR::UpdateImageInfo(logical_image_list, &v59);
  if (updated)
  {
    _cg_jpeg_mem_term("initialize", 89, "*** ERROR: IIO_Reader_OpenEXR::UpdateImageInfo failed: %d\n", updated);
    goto LABEL_41;
  }

  v8 = *(this + 56);
  if (0xCF3CF3CF3CF3CF3DLL * ((v60 - v59) >> 3) <= v8)
  {
    LogError("initialize", 91, "*** IIO_Reader_OpenEXR::UpdateImageInfo read past end of imageInfo\n");
    goto LABEL_41;
  }

  v9 = (v59 + 168 * v8);
  v10 = *v9;
  *(this + 474) = *(v9 + 10);
  *(this + 29) = v10;
  std::string::operator=((this + 496), (v9 + 2));
  std::string::operator=((this + 520), (v9 + 56));
  std::string::operator=((this + 544), (v9 + 5));
  v11 = *(v9 + 104);
  v12 = *(v9 + 120);
  v13 = *(v9 + 152);
  *(this + 600) = *(v9 + 136);
  *(this + 616) = v13;
  *(this + 568) = v11;
  *(this + 584) = v12;
  if (v62)
  {
    name = gFunc_axr_error_get_name();
    LogError("initialize", 93, "*** axr_data_create failed: %s (%d)\n", name, v62);
    goto LABEL_41;
  }

  decoder = gFunc_axr_logical_image_list_create_decoder(logical_image_list, v5, *(this + 117), *(this + 118), 0, 0, 0, 1.0);
  v15 = decoder;
  if (!decoder)
  {
    LogError("initialize", 97, "*** axr_logical_image_list_create_decoder returned NULL\n");
    goto LABEL_41;
  }

  channel_count = gFunc_axr_decoder_get_channel_count(decoder);
  v17 = channel_count;
  *(this + 152) = channel_count;
  v18 = NAN;
  if ((channel_count & 1) == 0)
  {
    v18 = 1.0;
  }

  *(this + 60) = v18;
  *(this + 489) = *(this + 382);
  gFunc_axr_data_get_part_info(v49, v5, *(this + 147), 1);
  v20 = v51;
  v19 = v52;
  v22 = v53;
  v21 = v54;
  v24 = v55;
  v23 = v56;
  v26 = v57;
  v25 = v58;
  v46 = 0;
  value = 0;
  v48 = 0;
  IIODictionary::IIODictionary(&v46);
  IIODictionary::setObjectForKey(*(this + 7), value, @"{EXR}");
  v43 = 0;
  v44 = 0;
  v45 = 0;
  IIOArray::IIOArray(&v43);
  IIODictionary::setObjectForKey(&v46, v44, @"Chromaticities");
  IIONumber::IIONumber(v49, v20);
  IIOArray::addObject(&v43, v50);
  IIONumber::~IIONumber(v49);
  IIONumber::IIONumber(v49, v24);
  IIOArray::addObject(&v43, v50);
  IIONumber::~IIONumber(v49);
  IIONumber::IIONumber(v49, v19);
  IIOArray::addObject(&v43, v50);
  IIONumber::~IIONumber(v49);
  IIONumber::IIONumber(v49, v23);
  IIOArray::addObject(&v43, v50);
  IIONumber::~IIONumber(v49);
  IIONumber::IIONumber(v49, v22);
  IIOArray::addObject(&v43, v50);
  IIONumber::~IIONumber(v49);
  IIONumber::IIONumber(v49, v26);
  IIOArray::addObject(&v43, v50);
  IIONumber::~IIONumber(v49);
  IIONumber::IIONumber(v49, v21);
  IIOArray::addObject(&v43, v50);
  IIONumber::~IIONumber(v49);
  IIONumber::IIONumber(v49, v25);
  IIOArray::addObject(&v43, v50);
  IIONumber::~IIONumber(v49);
  v27 = *(this + 149);
  v29 = v27 != 1 && v27 != 7;
  *(this + 488) = v29;
  colorspace = gFunc_axr_decoder_create_colorspace(v15, 0, 0);
  *(this + 20) = colorspace;
  if (colorspace)
  {
    if (*(this + 489) != 1)
    {
      goto LABEL_26;
    }

    if (CGColorSpaceGetModel(colorspace) == kCGColorSpaceModelRGB)
    {
      CGColorSpaceRelease(*(this + 20));
      v31 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
      *(this + 20) = v31;
      if (v31)
      {
        goto LABEL_26;
      }
    }

    else
    {
      *(this + 489) = 0;
      if (*(this + 20))
      {
        goto LABEL_26;
      }
    }
  }

  if ((*(this + 152) - 1) > 1)
  {
    v32 = MEMORY[0x1E695F0B8];
    if (!*(this + 489))
    {
      v32 = MEMORY[0x1E695F108];
    }

    *(this + 20) = CGColorSpaceCreateWithName(*v32);
  }

  else
  {
    *(this + 20) = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0F8]);
    *(this + 489) = 0;
  }

LABEL_26:
  if (*(this + 488) == 1)
  {
    gFunc_axr_decoder_get_read_pixels_info(v49, v15, 0, 1);
  }

  else
  {
    gFunc_axr_decoder_get_read_rgba_pixels_info(v49, v15, 0, 1, *(this + 60));
  }

  Model = CGColorSpaceGetModel(*(this + 20));
  if (Model == kCGColorSpaceModelMonochrome)
  {
    v34 = 1196573017;
    goto LABEL_33;
  }

  if (Model == kCGColorSpaceModelRGB)
  {
    v34 = 1380401696;
LABEL_33:
    *(this + 85) = v34;
  }

  os_release(v15);
  IIOArray::~IIOArray(&v43);
  IIODictionary::~IIODictionary(&v46);
  v35 = *(this + 72);
  *(this + 244) = v35;
  v36 = *(this + 152);
  *(this + 130) = v36;
  v37 = *(this + 489);
  if (v37)
  {
    v38 = 16;
  }

  else
  {
    v38 = *(this + 232);
  }

  *(this + 128) = v38;
  v39 = v38 * v36;
  *(this + 129) = v39;
  if (v17)
  {
    v40 = 5;
  }

  else
  {
    v40 = 3;
  }

  *(this + 262) = v40;
  *(this + 63) = v35 * (v39 >> 3);
  *(this + 26) = 0;
  *(this + 372) = 0;
  *(this + 374) = 0;
  *(this + 204) = 1;
  *(this + 373) = v37 ^ 1;
LABEL_41:
  if (v5)
  {
    os_release(v5);
  }

  if (logical_image_list)
  {
    os_release(logical_image_list);
  }

  if (v63)
  {
    IIOImageReadSession::releaseBytePointer(*(this + 3), v63);
  }

  v49[0] = &v59;
  std::vector<EXRPluginData>::__destroy_vector::operator()[abi:fe200100](v49);
  if (updated)
  {
    goto LABEL_48;
  }

  return updated;
}

void sub_1860BAA98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void **a17)
{
  IIOArray::~IIOArray(&a11);
  IIODictionary::~IIODictionary(&a14);
  a17 = (v17 - 168);
  std::vector<EXRPluginData>::__destroy_vector::operator()[abi:fe200100](&a17);
  _Unwind_Resume(a1);
}

uint64_t EXRReadPlugin::setupCallback(uint64_t a1, CFDictionaryRef *a2)
{
  v2 = *(a1 + 408);
  if (v2 == 12)
  {
    return IIOReadPlugin::setupImageProviderCallbackV2(a1, a2);
  }

  if (v2 == 1)
  {
    return IIOReadPlugin::setupCallback(a1, a2);
  }

  return 4294967246;
}

uint64_t EXRReadPlugin::loadDataFromXPCObject(EXRReadPlugin *this, void *a2)
{
  result = IIOReadPlugin::loadDataFromXPCObject(this, a2);
  if (!result)
  {
    length = 0;
    data = xpc_dictionary_get_data(a2, "iio_xpc_plugin_data_exr", &length);
    if (length == 168)
    {
      v6 = data;
      result = 0;
      v7 = *v6;
      v8 = v6[2];
      *(this + 30) = v6[1];
      *(this + 31) = v8;
      *(this + 29) = v7;
      v9 = v6[3];
      v10 = v6[4];
      v11 = v6[6];
      *(this + 34) = v6[5];
      *(this + 35) = v11;
      *(this + 32) = v9;
      *(this + 33) = v10;
      v12 = v6[7];
      v13 = v6[8];
      v14 = v6[9];
      *(this + 78) = *(v6 + 20);
      *(this + 37) = v13;
      *(this + 38) = v14;
      *(this + 36) = v12;
    }

    else
    {
      return 4294967246;
    }
  }

  return result;
}

uint64_t EXRReadPlugin::saveDataToXPCObject(EXRReadPlugin *this, void *a2)
{
  v4 = IIOReadPlugin::saveDataToXPCObject(this, a2);
  if (!v4)
  {
    iio_xpc_dictionary_add_databuffer(a2, "iio_xpc_plugin_data_exr", this + 464, 0xA8uLL);
  }

  return v4;
}

uint64_t EXRReadPlugin::decodeBlockAppleEXR(EXRReadPlugin *this, char *a2, size_t a3)
{
  if (!AppleEXREnabled())
  {
    return 4294967246;
  }

  v6 = *(this + 70);
  v38 = 0;
  v7 = IIOImageReadSession::retainBytePointer(*(this + 3), &v38, 1);
  Size = IIOImageReadSession::getSize(*(this + 3));
  v37 = 0;
  v9 = gFunc_axr_data_create(v7, Size, &v37, 0, 0);
  if (!v37)
  {
    logical_image_list = gFunc_axr_data_create_logical_image_list(v9);
    decoder = gFunc_axr_logical_image_list_create_decoder(logical_image_list, v9, *(this + 117), *(this + 118), 0, 0, 0, *(this + 60));
    if (decoder)
    {
      if (*(this + 489) == 1 && *(this + 232) == 32)
      {
        v12 = 4 * *(this + 152) * *(this + 61);
        a3 = v12 * *(this + 78);
        v13 = malloc_type_malloc(a3, 0xFE4B78AEuLL);
        v14 = v13;
      }

      else
      {
        v14 = 0;
        v12 = *(this + 79);
        v13 = a2;
      }

      if (*(this + 488) == 1)
      {
        gFunc_axr_decoder_get_read_pixels_info(v36, decoder, 0, 1);
        pixels = gFunc_axr_decoder_read_pixels(decoder, v13, v12, 2);
      }

      else
      {
        gFunc_axr_decoder_get_read_rgba_pixels_info(v36, decoder, 0, 1, *(this + 60));
        pixels = gFunc_axr_decoder_read_rgba_pixels(decoder, v13, v12, 2, 1.0);
      }

      v37 = pixels;
      if (pixels)
      {
        EXRReadPlugin::decodeBlockAppleEXR(pixels, &v37);
        v15 = 4294967246;
      }

      else
      {
        if (*(this + 78) == v6)
        {
          v15 = 0;
        }

        else
        {
          v15 = 4294967246;
        }

        if (*(this + 489) == 1 && *(this + 85) == 1380401696)
        {
          memset(v36, 0, 24);
          IIODictionary::IIODictionary(v36);
          if (*(this + 232) == 16)
          {
            v17 = 1380411457;
          }

          else
          {
            v17 = 1380410945;
          }

          v18 = IIOCreatePixelBufferWithBuffer(*(this + 77), *(this + 78), v12, v17, v13, a3, v36);
          if (v18)
          {
            v34 = 0;
            v35 = 0;
            IIOColorSpace::IIOColorSpace(&v34, *MEMORY[0x1E695F108]);
            IIOPixelBufferSetColorSpace(v18, v35);
            v19 = IIOCreatePixelBuffer(*(this + 77), *(this + 78), 1815491698, v36);
            v32 = 0;
            v33 = 0;
            IIOColorSpace::IIOColorSpace(&v32, *MEMORY[0x1E695F0B8]);
            IIOPixelBufferSetColorSpace(v19, v33);
            v29 = 0;
            v30 = 0;
            v31 = 0;
            IIODictionary::IIODictionary(&v29);
            IIODictionary::setObjectForKey(&v29, *MEMORY[0x1E695E4D0], @"kCGDisableMetal");
            v15 = IIOConvertHDRData(v18, v19, v30);
            IIODictionary::~IIODictionary(&v29);
            IIOColorSpace::~IIOColorSpace(&v32);
            IIOColorSpace::~IIOColorSpace(&v34);
          }

          else
          {
            v19 = 0;
          }

          object = logical_image_list;
          free(v14);
          if (!v15 && v19)
          {
            gFunc_CVPixelBufferLockBaseAddress(v19, 1);
            Width = gFunc_CVPixelBufferGetWidth(v19);
            v27 = v18;
            BytesPerRow = gFunc_CVPixelBufferGetBytesPerRow(v19);
            BaseAddress = gFunc_CVPixelBufferGetBaseAddress(v19);
            if (*(this + 78))
            {
              v23 = BaseAddress;
              v24 = 0;
              v25 = 8 * Width;
              do
              {
                memcpy(a2, v23, v25);
                a2 += *(this + 79);
                v23 += BytesPerRow;
                ++v24;
              }

              while (v24 < *(this + 78));
            }

            gFunc_CVPixelBufferUnlockBaseAddress(v19, 1);
            v18 = v27;
          }

          IIODictionary::~IIODictionary(v36);
          if (v18)
          {
            gFunc_CVPixelBufferRelease(v18);
          }

          if (v19)
          {
            gFunc_CVPixelBufferRelease(v19);
          }

          logical_image_list = object;
          goto LABEL_40;
        }
      }

      if (v14)
      {
        free(v14);
      }

      goto LABEL_40;
    }

    EXRReadPlugin::decodeBlockAppleEXR();
    v15 = 4294967246;
LABEL_40:
    if (logical_image_list)
    {
      os_release(logical_image_list);
    }

    if (decoder)
    {
      os_release(decoder);
    }

    goto LABEL_44;
  }

  EXRReadPlugin::decodeBlockAppleEXR(v37, &v37);
  v15 = 4294967246;
LABEL_44:
  if (v9)
  {
    os_release(v9);
  }

  if (v38)
  {
    IIOImageReadSession::releaseBytePointer(*(this + 3), v38);
  }

  return v15;
}

void sub_1860BB124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

double TGAReadPlugin::TGAReadPlugin(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v5 = IIOReadPlugin::IIOReadPlugin(a1, a2, a3, a4, a5);
  *v5 = &unk_1EF4DD618;
  result = 0.0;
  *(v5 + 464) = 0u;
  *(v5 + 480) = 0u;
  *(v5 + 496) = 0;
  return result;
}

void TGAReadPlugin::~TGAReadPlugin(TGAReadPlugin *this)
{
  IIOReadPlugin::~IIOReadPlugin(this);

  JUMPOUT(0x186602850);
}

uint64_t TGAReadPlugin::loadDataFromXPCObject(TGAReadPlugin *this, void *a2)
{
  result = IIOReadPlugin::loadDataFromXPCObject(this, a2);
  if (!result)
  {
    length = 0;
    data = xpc_dictionary_get_data(a2, "iio_xpc_plugin_data_tga", &length);
    if (length == 40)
    {
      v6 = data;
      result = 0;
      v7 = *v6;
      v8 = v6[1];
      *(this + 62) = *(v6 + 4);
      *(this + 29) = v7;
      *(this + 30) = v8;
    }

    else
    {
      return 4294967246;
    }
  }

  return result;
}

uint64_t TGAReadPlugin::saveDataToXPCObject(TGAReadPlugin *this, void *a2)
{
  v4 = IIOReadPlugin::saveDataToXPCObject(this, a2);
  if (!v4)
  {
    iio_xpc_dictionary_add_databuffer(a2, "iio_xpc_plugin_data_tga", this + 464, 0x28uLL);
  }

  return v4;
}

uint64_t TGAReadPlugin::readHeader(TGAReadPlugin *this)
{
  result = IIOImageReadSession::getBytesAtOffset(*(this + 3), this + 464, 0, 18);
  if (result != 18)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -36;
  }

  return result;
}

const char *TGAReadPlugin::debugHeader(TGAReadPlugin *this)
{
  v2 = (this + 467);
  ImageIOLog("    TGA:\n");
  ImageIOLog("                  sizeOfImageID:  %d\n", *(this + 464));
  ImageIOLog("                     hasPalette:  %d\n", *(this + 465));
  v3 = *(this + 466);
  v4 = "Compressed";
  if ((v3 & 8) == 0)
  {
    v4 = "Uncompressed";
  }

  ImageIOLog("                      imageType:  %d = %s+%s\n", v3, off_1E6F41B78[v3 & 3], v4);
  ImageIOLog("                       palStart:  %d\n", *v2);
  ImageIOLog("                        palSize:  %d\n", v2[1]);
  ImageIOLog("                palBitsPerPixel:  %d\n", *(this + 471));
  ImageIOLog("                        xOffset:  %d\n", *(this + 236));
  ImageIOLog("                        yOffset:  %d\n", *(this + 237));
  ImageIOLog("                          width:  %d\n", *(this + 238));
  ImageIOLog("                         height:  %d\n", *(this + 239));
  ImageIOLog("                   bitsPerPixel:  %d\n", *(this + 480));
  return ImageIOLog("                       attrBits:  0x%.2X = %d alphabits + %d origin\n", *(this + 481), *(this + 481) & 0xF, (*(this + 481) >> 4) & 3);
}

uint64_t TGAReadPlugin::initialize(TGAReadPlugin *this, IIODictionary *a2)
{
  if (*(this + 369) == 1)
  {
    TGAReadPlugin::readHeader(this);
    if (*(this + 194) == 1)
    {
      TGAReadPlugin::debugHeader(this);
    }

    if (*(this + 465) >= 2u)
    {
      _cg_jpeg_mem_term("initialize", 141, "*** ERROR: _tga._tgaHeader.hasPalette: %d\n", *(this + 465));
    }

    else
    {
      v3 = *(this + 466);
      if (v3 <= 0xB && ((0xE0Fu >> v3) & 1) != 0)
      {
        if (TGAReadPlugin::sanityCheck(this, (0x202u >> v3) & 1, (0xE00u >> v3) & 1))
        {
          v10 = 0;
          v11 = 0;
          v12 = 0;
          IIODictionary::IIODictionary(&v10);
          IIONumber::IIONumber(v8, *(this + 466) > 3u);
          IIODictionary::setObjectForKey(&v10, value, @"Compression");
          IIONumber::~IIONumber(v8);
          IIODictionary::setObjectForKey(*(this + 7), v11, @"{TGA}");
          IIODictionary::~IIODictionary(&v10);
          v4 = TGAReadPlugin::setupGeometry(this) + *(this + 464) + 18;
          *(this + 26) = v4;
          v5 = *(this + 129);
          *(this + 63) = (*(this + 129) * *(this + 238) + 7) >> 3;
          *(this + 49) = 1;
          *(this + 130) = v5 / *(this + 128);
          if (v4 < IIOImageReadSession::getSize(*(this + 3)))
          {
            Size = IIOImageReadSession::getSize(*(this + 3));
            result = 0;
            *(this + 61) = Size - *(this + 26);
            *(this + 496) = (*(this + 466) & 8) != 0;
            *(this + 497) = ~(*(this + 481) >> 5) & 1;
            *(this + 204) = 1;
            return result;
          }

          TGAReadPlugin::initialize(this + 26, this + 3);
        }

        else
        {
          TGAReadPlugin::initialize();
        }
      }
    }
  }

  kdebug_trace();
  return 4294967246;
}

void sub_1860BB6C0(void *a1)
{
  __cxa_begin_catch(a1);
  _cg_jpeg_mem_term("initialize", 186, "*** ERROR: setupGeometry failed\n");
  __cxa_end_catch();
  JUMPOUT(0x1860BB670);
}

uint64_t TGAReadPlugin::sanityCheck(TGAReadPlugin *this, char a2, char a3)
{
  v6 = *(this + 466);
  if (*(this + 465))
  {
    if ((((*(this + 471) - 8) >> 3) | (32 * (*(this + 471) - 8))) >= 4u)
    {
      _cg_jpeg_mem_term("sanityCheck", 463, "*** invalid paletteBitsPerPixel (%d)\n");
      return 0;
    }

    if ((v6 & 0xFFFFFFF7) != 1)
    {
      _cg_jpeg_mem_term("sanityCheck", 464, "*** ERROR: unexpected image type (%d) with color palette\n");
      return 0;
    }

    if (*(this + 469) - 4097 <= 0xFFFFEFFF)
    {
      _cg_jpeg_mem_term("sanityCheck", 465, "*** invalid paletteSize (%d)\n");
      return 0;
    }

    if (*(this + 467))
    {
      _cg_jpeg_mem_term("sanityCheck", 466, "*** unhandled paletteStart (%d)\n");
      return 0;
    }
  }

  else if (*(this + 467))
  {
    _cg_jpeg_mem_term("sanityCheck", 470, "*** true-color (no palette) has paletteStart and paletteSize set (%d and %d)\n");
    return 0;
  }

  if (!*(this + 238))
  {
    TGAReadPlugin::sanityCheck();
    return 0;
  }

  if (!*(this + 239))
  {
    TGAReadPlugin::sanityCheck();
    return 0;
  }

  if (*(this + 481) >= 0x40u)
  {
    _cg_jpeg_mem_term("sanityCheck", 475, "*** invalid attrBits [%X]\n");
    return 0;
  }

  v7 = v6 & 3;
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v8 = *(this + 480);
      if (v8 > 0x20 || ((1 << v8) & 0x101018000) == 0)
      {
        _cg_jpeg_mem_term("sanityCheck", 482, "*** RGB - invalid bitsPerPixel [%d]\n");
        return 0;
      }
    }

    else
    {
      v9 = *(this + 480);
      if (v9 != 8 && v9 != 16)
      {
        _cg_jpeg_mem_term("sanityCheck", 480, "*** Gray - invalid bitsPerPixel [%d]\n");
        return 0;
      }
    }
  }

  else if (v7 && *(this + 480) != 8)
  {
    _cg_jpeg_mem_term("sanityCheck", 478, "*** Indexed - invalid bitsPerPixel [%d]\n");
    return 0;
  }

  Size = IIOImageReadSession::getSize(*(this + 3));
  v11 = *(this + 239) * *(this + 238);
  if (a3)
  {
    if (100 * Size < v11)
    {
      return 0;
    }
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      v11 = v11 * (*(this + 480) >> 3);
    }

    if (Size < v11)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t TGAReadPlugin::setupGeometry(TGAReadPlugin *this)
{
  v2 = *(this + 466) & 3;
  v3 = *(this + 238);
  v4 = *(this + 239);
  *(this + 61) = v3;
  *(this + 62) = v4;
  v5 = *(this + 480);
  *(this + 129) = v5;
  *(this + 128) = 8;
  if (v5 == 32)
  {
    v6 = 3;
  }

  else
  {
    v6 = 0;
  }

  *(this + 262) = v6;
  *(this + 20) = 0;
  if (v2 == 3)
  {
    v7 = 1196573017;
  }

  else
  {
    v7 = 1380401696;
  }

  *(this + 85) = v7;
  if (*(this + 465))
  {
    v8 = (*(this + 471) * *(this + 469)) >> 3;
  }

  else
  {
    v8 = 0;
  }

  switch(v2)
  {
    case 2:
      if (v5 - 15 >= 2)
      {
        if (v5 != 24)
        {
          if (v5 <= 8 && !v8)
          {
            goto LABEL_28;
          }

          *(this + 294) = v6;
          if (v5 != 32)
          {
            break;
          }

LABEL_22:
          *(this + 146) = 4;
          *(this + 72) = 2097160;
          *(this + 295) = 0;
          break;
        }
      }

      else
      {
        *(this + 128) = 5;
      }

      *(this + 294) = 5;
      goto LABEL_22;
    case 1:
      if (TGAReadPlugin::createIndexedColorSpace(this, v8) && *(this + 129) <= 8u)
      {
        v3 = *(this + 61);
        break;
      }

LABEL_28:
      exception = __cxa_allocate_exception(4uLL);
      *exception = -50;
    case 3:
      *(this + 294) = v6;
      if (v5 == 16)
      {
        *(this + 72) = 1048584;
        *(this + 294) = 3;
      }

      break;
  }

  v9 = *(this + 296);
  v10 = *(this + 295);
  v11 = *(this + 297) != 0;
  *(this + 326) = *(this + 294) & 0x1F;
  *(this + 327) = v10 & 7;
  *(this + 328) = v9 & 0xF | (v10 >> 4);
  *(this + 329) = v11;
  *(this + 378) = 1;
  *(this + 71) = ((*(this + 145) + 7) >> 3) * v3;
  *(this + 372) = 0;
  *(this + 374) = 0;
  return v8;
}

uint64_t TGAReadPlugin::setupCallback(uint64_t a1, CFDictionaryRef *a2)
{
  v2 = *(a1 + 408);
  if (v2 == 12)
  {
    return IIOReadPlugin::setupImageProviderCallbackV2(a1, a2);
  }

  if (v2 == 1)
  {
    return IIOReadPlugin::setupCallback(a1, a2);
  }

  return 4294967246;
}

BOOL TGAReadPlugin::createIndexedColorSpace(TGAReadPlugin *this, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](this, a2);
  *&v31[16382] = *MEMORY[0x1E69E9840];
  if (!v3)
  {
    return 0;
  }

  v4 = v2;
  v5 = *(v2 + 464);
  v6 = *(v2 + 469);
  if (v6 >= 0x100)
  {
    v7 = 256;
  }

  else
  {
    v7 = *(v2 + 469);
  }

  v8 = *(v2 + 471);
  v9 = malloc_type_calloc(v7, 3uLL, 0x100004077774924uLL);
  if (!v9)
  {
    return *(v4 + 160) != 0;
  }

  v10 = v9;
  v11 = (v7 * v8) >> 3;
  v12 = (((*(v4 + 471) - 8) >> 3) | (32 * (*(v4 + 471) - 8)));
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      if (IIOImageReadSession::getBytesAtOffset(*(v4 + 24), v9, v5 + 18, v11) == v11)
      {
        if (v6)
        {
          v25 = v7;
          v26 = v10;
          do
          {
            v27 = *v26;
            *v26 = v26[2];
            v26[2] = v27;
            v26 += 3;
            --v25;
          }

          while (v25);
        }

        goto LABEL_30;
      }
    }

    else
    {
      if (v12 != 3)
      {
        goto LABEL_30;
      }

      bzero(v30, 0x4000uLL);
      if (IIOImageReadSession::getBytesAtOffset(*(v4 + 24), v30, v5 + 18, v11) == v11)
      {
        if (v6)
        {
          v17 = v10 + 2;
          v18 = v31;
          v19 = v7;
          do
          {
            *(v17 - 2) = *(v18 - 2);
            *(v17 - 1) = *(v18 - 1);
            v20 = *v18;
            v18 += 4;
            *v17 = v20;
            v17 += 3;
            --v19;
          }

          while (v19);
        }

        goto LABEL_30;
      }
    }
  }

  else
  {
    if (((*(v4 + 471) - 8) >> 3) | (32 * (*(v4 + 471) - 8)))
    {
      if (v12 == 1)
      {
        bzero(v30, 0x2000uLL);
        if (IIOImageReadSession::getBytesAtOffset(*(v4 + 24), v30, v5 + 18, v11) == v11)
        {
          if (v6)
          {
            v13 = v10 + 2;
            v14 = v30;
            v15 = v7;
            do
            {
              v16 = *v14;
              v14 += 2;
              *(v13 - 2) = ((v16 & 0x7C00) >> 7) & 0xF8 | (v16 >> 12) & 7;
              *(v13 - 1) = ((v16 & 0x3E0) >> 2) & 0xF8 | (v16 >> 7) & 7;
              *v13 = (8 * v16) | (v16 >> 2) & 7;
              v13 += 3;
              --v15;
            }

            while (v15);
          }

          goto LABEL_30;
        }

        goto LABEL_32;
      }

LABEL_30:
      v28 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
      *(v4 + 160) = CGColorSpaceCreateIndexed(v28, (v7 - 1), v10);
      CGColorSpaceRelease(v28);
      free(v10);
      return *(v4 + 160) != 0;
    }

    bzero(v30, 0x1000uLL);
    if (IIOImageReadSession::getBytesAtOffset(*(v4 + 24), v30, v5 + 18, v11) == v11)
    {
      if (v6)
      {
        v21 = v10 + 2;
        v22 = v30;
        v23 = v7;
        do
        {
          v24 = *v22++;
          *v21 = v24;
          *(v21 - 1) = v24;
          *(v21 - 2) = v24;
          v21 += 3;
          --v23;
        }

        while (v23);
      }

      goto LABEL_30;
    }
  }

LABEL_32:
  free(v10);
  return 0;
}

unsigned int *TGAReadPlugin::adjustAlphaIfNeeded(unsigned int *this, char *a2)
{
  v2 = this[78];
  if (v2)
  {
    v3 = 0;
    v4 = this[77];
    v5 = this[79];
    v6 = a2 + 3;
    while (!v4)
    {
LABEL_7:
      ++v3;
      v6 += v5;
      if (v3 == v2)
      {
        v10 = 0;
        while (!v4)
        {
LABEL_13:
          if (++v10 >= v2)
          {
            return this;
          }
        }

        v11 = &a2[v10 * v5];
        v12 = this[77];
        while (!*v11)
        {
          v11 += 4;
          if (!--v12)
          {
            goto LABEL_13;
          }
        }

        v13 = 0;
        v14 = (v4 + 15) & 0x1FFFFFFF0;
        v15 = vdupq_n_s64(v4 - 1);
        v16 = a2 + 31;
        do
        {
          v17 = 0;
          v18 = v16;
          do
          {
            v19 = vdupq_n_s64(v17);
            v20 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_186205EC0)));
            if (vuzp1_s8(vuzp1_s16(v20, *v15.i8), *v15.i8).u8[0])
            {
              *(v18 - 28) = -1;
            }

            if (vuzp1_s8(vuzp1_s16(v20, *&v15), *&v15).i8[1])
            {
              *(v18 - 24) = -1;
            }

            if (vuzp1_s8(vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_186205EB0)))), *&v15).i8[2])
            {
              *(v18 - 20) = -1;
              *(v18 - 16) = -1;
            }

            v21 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_186205EA0)));
            if (vuzp1_s8(*&v15, vuzp1_s16(v21, *&v15)).i32[1])
            {
              *(v18 - 12) = -1;
            }

            if (vuzp1_s8(*&v15, vuzp1_s16(v21, *&v15)).i8[5])
            {
              *(v18 - 8) = -1;
            }

            if (vuzp1_s8(*&v15, vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_186205E90))))).i8[6])
            {
              *(v18 - 4) = -1;
              *v18 = -1;
            }

            v22 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_186205E80)));
            if (vuzp1_s8(vuzp1_s16(v22, *v15.i8), *v15.i8).u8[0])
            {
              v18[4] = -1;
            }

            if (vuzp1_s8(vuzp1_s16(v22, *&v15), *&v15).i8[1])
            {
              v18[8] = -1;
            }

            if (vuzp1_s8(vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_186205E70)))), *&v15).i8[2])
            {
              v18[12] = -1;
              v18[16] = -1;
            }

            v23 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_186205E60)));
            if (vuzp1_s8(*&v15, vuzp1_s16(v23, *&v15)).i32[1])
            {
              v18[20] = -1;
            }

            if (vuzp1_s8(*&v15, vuzp1_s16(v23, *&v15)).i8[5])
            {
              v18[24] = -1;
            }

            if (vuzp1_s8(*&v15, vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_186205E50))))).i8[6])
            {
              v18[28] = -1;
              v18[32] = -1;
            }

            v17 += 16;
            v18 += 64;
          }

          while (v14 != v17);
          ++v13;
          v16 += v5;
        }

        while (v13 != v2);
        return this;
      }
    }

    v7 = v6;
    v8 = this[77];
    while (1)
    {
      v9 = *v7;
      v7 += 4;
      if (v9)
      {
        break;
      }

      if (!--v8)
      {
        goto LABEL_7;
      }
    }
  }

  return this;
}

uint64_t TGAReadPlugin::decodeImageImp(IIOReadPlugin *this, IIODecodeParameter *a2, int a3, IOSurfaceRef *a4)
{
  v44 = 0;
  seed = 0;
  if ((gIIODebugFlags & 0x20000) != 0)
  {
    v8 = *(this + 55);
    v9 = v8 >> 24;
    v10 = MEMORY[0x1E69E9830];
    if ((v8 >> 24) <= 0x7F)
    {
      v11 = *(MEMORY[0x1E69E9830] + 4 * v9 + 60) & 0x40000;
    }

    else
    {
      v11 = __maskrune(v9, 0x40000uLL);
      v8 = *(this + 55);
    }

    if (v11)
    {
      v12 = (v8 >> 24);
    }

    else
    {
      v12 = 46;
    }

    v13 = v8 << 8 >> 24;
    if (v13 <= 0x7F)
    {
      v14 = *(v10 + 4 * v13 + 60) & 0x40000;
    }

    else
    {
      v14 = __maskrune(v13, 0x40000uLL);
      v8 = *(this + 55);
    }

    if (v14)
    {
      v15 = (v8 << 8 >> 24);
    }

    else
    {
      v15 = 46;
    }

    v16 = v8 >> 8;
    if (v16 <= 0x7F)
    {
      v17 = *(v10 + 4 * v16 + 60) & 0x40000;
    }

    else
    {
      v17 = __maskrune(v16, 0x40000uLL);
      v8 = *(this + 55);
    }

    if (v17)
    {
      v18 = (v8 >> 8);
    }

    else
    {
      v18 = 46;
    }

    if (v8 <= 0x7F)
    {
      if ((*(v10 + 4 * v8 + 60) & 0x40000) != 0)
      {
        goto LABEL_22;
      }
    }

    else if (__maskrune(v8, 0x40000uLL))
    {
LABEL_22:
      v19 = *(this + 220);
LABEL_25:
      ImageIOLog("♦️  '%c%c%c%c' [%s] %s\n", v12, v15, v18, v19, iioTypeStr[a3], "virtual OSStatus TGAReadPlugin::decodeImageImp(IIODecodeParameter *, IIOImageType, IOSurfaceRef *, CVPixelBufferRef *, CGImageBlockSetRef *)");
      goto LABEL_26;
    }

    v19 = 46;
    goto LABEL_25;
  }

LABEL_26:
  IIOReadPlugin::debugDecodeImage(this, a2);
  if (*(this + 446) != 1)
  {
    return 4294967115;
  }

  v20 = *(this + 3);
  if (v20)
  {
    v21 = IIOImageReadSession::mapData(v20);
  }

  else
  {
    v21 = 0;
  }

  if (a3 == 3)
  {
    BlockArray = IIOReadPlugin::allocateBlockArray(this, *(this + 26));
    LODWORD(v29) = *(this + 77);
    v28 = v29;
    v30 = *(this + 78);
    v26 = v30;
    v25 = *(this + 79) * v30;
    BaseAddress = _ImageIO_Malloc(v25, *(this + 52), &v44, kImageMalloc_TGA_Data[0], 0, 0);
    v27 = 0;
  }

  else
  {
    if (a3 != 1 || !a4 || !*a4)
    {
      BlockArray = 0;
      goto LABEL_65;
    }

    IOSurfaceLock(*a4, 0, &seed);
    BaseAddress = IOSurfaceGetBaseAddress(*a4);
    Height = IOSurfaceGetHeight(*a4);
    BlockArray = 0;
    v25 = IOSurfaceGetBytesPerRow(*a4) * Height;
    v44 = v25;
    v26 = 0.0;
    v27 = 1;
    v28 = 0.0;
  }

  if (!BaseAddress)
  {
LABEL_56:
    if (!v27)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

  memset(BaseAddress, 255, v25);
  if (*(this + 496) == 1)
  {
    v31 = TGAReadPlugin::decodeRLE(this, BaseAddress);
  }

  else
  {
    v31 = TGAReadPlugin::decodeUncompressed(this, BaseAddress);
  }

  BlockArray = v31;
  if (v31)
  {
    *(this + 26) = 0;
    if ((v27 & 1) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

  if (*(this + 161) == 32 && *(this + 160) == 8)
  {
    v32 = *(this + 78);
    dest.data = BaseAddress;
    dest.height = v32;
    v33 = *(this + 79);
    dest.width = *(this + 77);
    dest.rowBytes = v33;
    if (*(this + 437))
    {
      *permuteMap = 50331906;
      vImagePermuteChannels_ARGB8888(&dest, &dest, permuteMap, 0x10u);
    }

    if ((*(this + 445) & 1) == 0 && !*(this + 437))
    {
      vImagePremultiplyData_RGBA8888(&dest, &dest, 0x10u);
    }
  }

  if (a3 != 3)
  {
    BlockArray = 0;
    goto LABEL_56;
  }

  v34 = 0;
  v45.origin.x = 0.0;
  v45.origin.y = 0.0;
  v45.size.width = v28;
  v45.size.height = v26;
  **(this + 12) = IIOReadPlugin::createImageBlock(this, BaseAddress, v25, v45, *(this + 79), *(this + 371));
  if (CGRectEqualToRect(*(this + 120), *MEMORY[0x1E695F050]))
  {
    v35 = 0;
  }

  else
  {
    v46.origin.x = 0.0;
    v46.origin.y = 0.0;
    v46.size.width = v28;
    v46.size.height = v26;
    *(&v35 - 1) = CGRectUnion(*(this + 120), v46);
    v34 = v36;
    v28 = v37;
    v26 = v38;
  }

  BlockArray = 0;
  *(this + 15) = v34;
  *(this + 16) = v35;
  *(this + 17) = v28;
  *(this + 18) = v26;
  if (v27)
  {
    BaseAddress = 0;
LABEL_61:
    IOSurfaceUnlock(*a4, 0, &seed);
LABEL_62:
    if (a3 == 3 && BaseAddress)
    {
      _ImageIO_Free(BaseAddress, v44);
    }
  }

LABEL_65:
  if (v21)
  {
    v39 = *(this + 3);
    if (v39)
    {
      IIOImageReadSession::unmapData(v39);
    }
  }

  return BlockArray;
}

void HDRFlexGTC_curveFit(uint64_t a1, uint64_t a2, char a3, uint64_t a4, _DWORD *a5)
{
  v8 = 0;
  v64 = *MEMORY[0x1E69E9840];
  v44 = 0.0;
  memset(v63, 0, 128);
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  *v47 = 0u;
  v48 = 0u;
  v46 = 0u;
  v10 = -1.0;
  memset(v45, 0, sizeof(v45));
  v43 = 0.0;
  do
  {
    v63[v8] = (v8 + 0.5) * 0.03125;
    v11 = binY(a1, v8, *(&a2 + 1));
    v12 = fmaxf(v11, v10);
    if (a3)
    {
      v10 = v12;
    }

    else
    {
      v10 = v11;
    }

    *(&v55 + v8++) = v10;
  }

  while (v8 != 32);
  v13 = 0;
  do
  {
    v14 = v13++;
    v15 = 2;
    do
    {
      LODWORD(v16) = v14 - v15;
      if (v14 >= v15)
      {
        v16 = v16;
      }

      else
      {
        v16 = 0;
      }

      if (v14 >= 31 - v15)
      {
        v17 = 32;
      }

      else
      {
        v17 = (v15 + v13);
      }

      v18 = v17 - v16;
      if (v17 <= v16)
      {
        v23 = 1;
      }

      else
      {
        v19 = 0;
        v20 = (a1 + 140 * v16);
        v21 = v16;
        do
        {
          v22 = *v20;
          v20 += 35;
          v19 += v22;
          ++v21;
        }

        while (v21 < v17);
        v23 = v19 < 201;
      }

      if (v15 > 0xE)
      {
        break;
      }

      ++v15;
    }

    while (v23);
    linearRegression(&v63[v16], &v55 + v16, v18, &v44, &v43);
    v24 = v43;
    v25 = v44 + (v43 * v63[v14]);
    v47[v14] = v25;
    *(v45 + v14) = v24;
    if (v25 > 1.0)
    {
      v47[v14] = 1.0;
      *(v45 + v14) = 0;
    }
  }

  while (v13 != 32);
  v26 = 0;
  v59 = v51;
  v60 = v52;
  v61 = v53;
  v62 = v54;
  v55 = *v47;
  v56 = v48;
  v57 = v49;
  v58 = v50;
  *a4 = 0;
  v27 = v45[0];
  *(a4 + 4) = fminf(fmaxf(v47[0] + (*v45 * -0.015625), 0.0), 1.0);
  *(a4 + 8) = v27;
  v28 = a4 + 28;
  v29 = 1;
  do
  {
    v30 = v29;
    v31 = v28;
    LODWORD(v32) = v26 + 2;
    if (v26 <= 29)
    {
      v32 = v26 + 2;
      v33 = 3;
      do
      {
        *(a4 + 28) = (v32 + 0.5) * 0.03125;
        *(a4 + 32) = v47[v32];
        *(a4 + 36) = *(v45 + v32);
        computeCubic(a4);
        v34 = 0.0;
        if (v32 >= v26)
        {
          v34 = 0.0;
          v35 = v26;
          v36 = &v55 + v26;
          v37 = v33;
          do
          {
            v38 = *v36++;
            v39 = *(a4 + 24) + (*(a4 + 20) + (*(a4 + 16) + *(a4 + 12) * ((v35 + 0.5) * 0.03125)) * ((v35 + 0.5) * 0.03125)) * ((v35 + 0.5) * 0.03125);
            v34 = v34 + ((v38 - v39) * (v38 - v39));
            ++v35;
            --v37;
          }

          while (v37);
        }

        if (sqrtf(v34 / (v32 - v26 + 1)) > *&a2)
        {
          break;
        }

        ++v32;
        ++v33;
      }

      while (v32 != 32);
    }

    if (v32 >= 32)
    {
      v26 = 32;
    }

    else
    {
      v26 = v32;
    }

    v40 = v26 - 1;
    *(a4 + 28) = (v40 + 0.5) * 0.03125;
    *(a4 + 32) = v47[v40];
    *(a4 + 36) = *(v45 + v40);
    computeCubic(a4);
    if (v32 > 31)
    {
      break;
    }

    v29 = v30 + 1;
    v28 = v31 + 28;
    a4 = v31;
  }

  while (v30 < 0x1E);
  *(v31 + 28) = 1065353216;
  v41 = HIDWORD(v46);
  *(v31 + 32) = fminf(fmaxf(*(&v54 + 3) + (*(&v46 + 3) * 0.015625), 0.0), 1.0);
  *(v31 + 36) = v41;
  computeCubic(v31);
  *a5 = v30 + 2;
}

float HDRFlexGTC_fillTable(float *a1, int a2, uint64_t a3, int a4, float result)
{
  v7 = a1;
  v8 = a2 - 1;
  if (a2 > 1)
  {
    v9 = (a2 - 1);
    v10 = a1;
    do
    {
      result = computeCubic(v10);
      v10 += 28;
      --v9;
    }

    while (v9);
  }

  if (a4 >= 1)
  {
    v11 = 0;
    v12 = &v7[7 * v8];
    v13 = v7[7];
    result = (a4 - 1);
    do
    {
      v14 = v11 / result;
      v15 = v14 > v13;
      if (v14 > v13 && (v7 + 7) < v12)
      {
        v17 = v7 + 14;
        v18 = v7 + 14;
        do
        {
          v19 = *v18;
          v18 += 7;
          v13 = v19;
          v15 = v14 > v19;
          v20 = v14 <= v19 || v17 >= v12;
          v17 = v18;
        }

        while (!v20);
        v7 = v18 - 14;
      }

      if (v15)
      {
        v14 = v13;
      }

      v21 = v7[6] + (v7[5] + (v7[4] + v7[3] * v14) * v14) * v14;
      *(a3 + 4 * v11++) = v21;
    }

    while (v11 != a4);
  }

  return result;
}

float computeCubic(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 4);
  v3 = *(a1 + 8);
  v4 = *(a1 + 28);
  v5 = *(a1 + 36);
  v6 = (v3 + v5 - (*(a1 + 32) - v2 + *(a1 + 32) - v2) / (v4 - v1)) / ((v1 - v4) * (v1 - v4));
  v7 = (v5 - v3) / (v4 - v1 + v4 - v1) + (v1 + v4) * -1.5 * v6;
  v8 = v3 + v1 * -3.0 * v1 * v6 + v1 * -2.0 * v7;
  v9 = v2 + -(v1 * v1) * v1 * v6 + -(v1 * v1) * v7 - v1 * v8;
  *&v2 = v6;
  *&v7 = v7;
  *(a1 + 12) = LODWORD(v2);
  *(a1 + 16) = LODWORD(v7);
  *&v2 = v8;
  result = v9;
  *(a1 + 20) = LODWORD(v2);
  *(a1 + 24) = result;
  return result;
}

BOOL HDRFlexGTC_fillGaps(uint64_t a1, uint64_t a2, char a3)
{
  LOBYTE(v4) = 0;
  v50 = *MEMORY[0x1E69E9840];
  v47 = 0;
  v48 = 0;
  v5 = *(&a2 + 1);
  v46 = 0;
  v6 = v49;
  v7 = -1;
  v8 = a1;
  memset(v49, 0, sizeof(v49));
  do
  {
    v9 = *v8;
    if (v4)
    {
      if (v9)
      {
        v4 = 0;
        *(v6 + 1) = v7;
        v6 += 8;
        goto LABEL_10;
      }
    }

    else
    {
      if (v9)
      {
        v4 = 0;
        goto LABEL_10;
      }

      if (v6 - v49 >= 121)
      {
        puts("too many gaps");
        LODWORD(v10) = 16;
LABEL_16:
        v11 = 0;
        v12 = 0;
        v44 = a1 + 12;
        for (i = v49; ; i += 2)
        {
          v14 = *i;
          v15 = i[1];
          v16 = v15 + 1;
          v17 = *i - 1;
          if (*i < 1)
          {
            if (v15 > 30)
            {
              puts("no gain samples");
              return v11;
            }

            if (!slopeScan(a1, v16, 1, &v48 + 1, &v48))
            {
              return v11;
            }

            multiBinLinearRegression(a1, SHIDWORD(v48), v48, &v47 + 1, &v47, &v46, a3 & 1, v5);
            v25 = *i;
            v26 = i[1];
            if (*i <= v26)
            {
              v27 = v47;
              v28 = v44 + 140 * v25;
              v29 = v26 + 1;
              v30 = v46;
              do
              {
                v31 = *(&v27 + 1) + (*&v27 * ((v25 + 0.5) * 0.03125));
                v32 = vcvtms_s32_f32(v31 * 32.0);
                *(v28 - 12) = 1;
                if (v32 >= 31)
                {
                  v32 = 31;
                }

                *(v28 - 8) = v31;
                *(v28 - 4) = v30;
                *(v28 + 4 * (v32 & ~(v32 >> 31))) = 1;
                ++v25;
                v28 += 140;
              }

              while (v29 != v25);
            }
          }

          else if (v15 > 30)
          {
            if (!slopeScan(a1, v14 - 1, -1, &v48 + 1, &v48))
            {
              return v11;
            }

            multiBinLinearRegression(a1, SHIDWORD(v48), v48, &v47 + 1, &v47, &v46, a3 & 1, v5);
            v33 = (v17 + 0.5) * 0.03125;
            v34 = *(&v47 + 1);
            v35 = *&v47;
            if ((*(&v47 + 1) + *&v47) <= 1.0)
            {
              if (*&v47 < 0.0)
              {
                v34 = *(&v47 + 1) + (*&v47 * v33);
                *(&v47 + 1) = v34;
                LODWORD(v47) = 0;
                v35 = 0.0;
              }
            }

            else
            {
              v35 = fmaxf((1.0 - (*(&v47 + 1) + (*&v47 * v33))) / (1.0 - v33), 0.0);
              v34 = 1.0 - v35;
              *&v47 = v35;
              *(&v47 + 1) = 1.0 - v35;
            }

            v36 = *i;
            v37 = i[1];
            if (*i <= v37)
            {
              v38 = v46;
              v39 = v44 + 140 * v36;
              v40 = v37 + 1;
              do
              {
                v41 = v34 + (v35 * ((v36 + 0.5) * 0.03125));
                v42 = vcvtms_s32_f32(v41 * 32.0);
                *(v39 - 12) = 50;
                if (v42 >= 31)
                {
                  v42 = 31;
                }

                *(v39 - 8) = v41;
                *(v39 - 4) = v38;
                *(v39 + 4 * (v42 & ~(v42 >> 31))) = 1;
                ++v36;
                v39 += 140;
              }

              while (v40 != v36);
            }
          }

          else if (v14 <= v15)
          {
            v18 = *(a1 + 140 * v17 + 4);
            v19 = vsub_f32(*(a1 + 140 * v16 + 4), v18);
            v20 = v44 + 140 * v14;
            v21 = v15 - v14 + 1;
            v22 = 1;
            do
            {
              v23 = vmla_n_f32(v18, v19, v22 / (v16 - v17));
              v24 = vcvtms_s32_f32(32.0 * v23.f32[0]);
              if (v24 >= 31)
              {
                v24 = 31;
              }

              *(v20 - 8) = v23;
              *(v20 - 12) = 1;
              *(v20 + 4 * (v24 & ~(v24 >> 31))) = 1;
              v20 += 140;
              ++v22;
              --v21;
            }

            while (v21);
          }

          v11 = ++v12 >= v10;
          if (v12 == v10)
          {
            return v11;
          }
        }
      }

      *v6 = v7 + 1;
    }

    v4 = 1;
LABEL_10:
    v8 += 35;
    ++v7;
  }

  while (v7 != 31);
  if (v4)
  {
    *(v6 + 1) = 31;
    v6 += 8;
  }

  v10 = (v6 - v49) >> 3;
  if (v10 >= 1)
  {
    goto LABEL_16;
  }

  return 1;
}

float binY(uint64_t a1, int a2, float a3)
{
  v3 = (a1 + 140 * a2);
  v5 = *v3;
  v4 = v3 + 3;
  v6 = (a3 / 100.0) * v5;
  v7 = 0;
  if (v6 == 0.0)
  {
    while (!v4[v7])
    {
      if (++v7 == 32)
      {
        return 0.0;
      }
    }

    return vcvts_n_f32_u32(v7, 5uLL);
  }

  else
  {
    v8 = 0;
    do
    {
      v9 = v4[v7];
      if (v6 >= v8 && v6 <= (v9 + v8))
      {
        return (((v6 - v8) / v9) + v7) * 0.03125;
      }

      ++v7;
      v8 += v9;
    }

    while (v7 != 32);
    return 0.0;
  }
}

float linearRegression(float *a1, float *a2, int a3, float *a4, float *a5)
{
  if (a3 <= 0)
  {
    v15 = 0.0;
    v16 = 0.0 / a3;
    v13 = v16;
    v14 = 0.0;
  }

  else
  {
    v5 = a3;
    v6 = 0.0;
    v7 = a3;
    v8 = a2;
    v9 = a1;
    v10 = 0.0;
    do
    {
      v11 = *v8++;
      v10 = v10 + v11;
      v12 = *v9++;
      v6 = v6 + v12;
      --v7;
    }

    while (v7);
    v13 = v10 / a3;
    v14 = 0.0;
    v15 = 0.0;
    v16 = v6 / a3;
    do
    {
      v17 = *a1++;
      v18 = v17 - v16;
      v14 = v14 + (v18 * v18);
      v19 = *a2++;
      v15 = v15 + ((v19 - v13) * v18);
      --v5;
    }

    while (v5);
  }

  v20 = v15 / v14;
  v21 = v14 == 0.0;
  v22 = 0.0;
  if (!v21)
  {
    v22 = v20;
  }

  result = v13 - (v22 * v16);
  *a4 = result;
  *a5 = v22;
  return result;
}

uint64_t slopeScan(uint64_t a1, int a2, int a3, _DWORD *a4, _DWORD *a5)
{
  if (a3 == 1)
  {
    v5 = 32;
  }

  else
  {
    v5 = -1;
  }

  v6 = *(a1 + 140 * a2);
  v7 = a3 + a2;
  v8 = a3 + a2;
  v9 = v5 - v8;
  v10 = (a1 + 140 * v8);
  v11 = 1;
  do
  {
    v12 = v7;
    if (!v9)
    {
      break;
    }

    if (*v10 > 0)
    {
      ++v11;
    }

    v6 += *v10;
    v7 += a3;
    v9 -= a3;
    v10 += 35 * a3;
  }

  while (v6 < 200 || v11 < 5);
  v14 = v6 <= 199 || v11 <= 4;
  v15 = !v14;
  if (v14)
  {
    puts("too few samples");
  }

  else
  {
    if (a3 <= 0)
    {
      v16 = v12;
    }

    else
    {
      v16 = a2;
    }

    *a4 = v16;
    if (a3 <= 0)
    {
      v17 = a2;
    }

    else
    {
      v17 = v12;
    }

    *a5 = v17;
  }

  return v15;
}

void multiBinLinearRegression(uint64_t a1, int a2, int a3, _DWORD *a4, _DWORD *a5, float *a6, int a7, float a8)
{
  v11 = 0;
  v34 = *MEMORY[0x1E69E9840];
  v31 = 0;
  memset(v33, 0, 128);
  memset(v32, 0, sizeof(v32));
  if (a2 <= a3)
  {
    v13 = a2;
    v11 = 0;
    v15 = a3 + 1;
    v16 = 140 * a2;
    v17 = -1.0;
    v18 = v33;
    v19 = v32;
    do
    {
      if (*(a1 + v16))
      {
        *v18++ = (v13 + 0.5) * 0.03125;
        v20 = binY(a1, v13, a8);
        v21 = fmaxf(v20, v17);
        if (a7)
        {
          v17 = v21;
        }

        else
        {
          v17 = v20;
        }

        *v19++ = v17;
        ++v11;
      }

      ++v13;
      v16 += 140;
    }

    while (v15 != v13);
  }

  linearRegression(v33, v32, v11, &v31 + 1, &v31);
  v22 = v31;
  *a4 = HIDWORD(v31);
  *a5 = v22;
  if (v11 < 1)
  {
    v24 = 0.0;
  }

  else
  {
    v23 = v11;
    v24 = 0.0;
    v25 = v32;
    v26 = v33;
    do
    {
      v27 = *v26++;
      v28 = *(&v22 + 1) + (*&v22 * v27);
      v29 = *v25++;
      v24 = v24 + ((v29 - v28) * (v29 - v28));
      --v23;
    }

    while (v23);
  }

  *a6 = sqrtf(v24 / v11);
}

uint64_t _TIFFMultiply32(uint64_t a1, unsigned int a2, unsigned int a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a3 || ((a3 * a2) & 0xFFFFFFFF00000000) == 0)
  {
    return a3 * a2;
  }

  TIFFErrorExtR(a1, a4, "Integer overflow in %s", a4, a5, a6, a7, a8, a4);
  return 0;
}

unint64_t _TIFFMultiply64(uint64_t a1, unint64_t a2, unint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a3 || is_mul_ok(a3, a2))
  {
    return a3 * a2;
  }

  TIFFErrorExtR(a1, a4, "Integer overflow in %s", a4, a5, a6, a7, a8, a4);
  return 0;
}

uint64_t _TIFFMultiplySSize(uint64_t a1, int64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 < 1 || a3 <= 0)
  {
    v8 = 0;
    if (a1 && a4)
    {
      TIFFErrorExtR(a1, a4, "Invalid argument to _TIFFMultiplySSize() in %s", a4, a5, a6, a7, a8, a4);
      return 0;
    }
  }

  else
  {
    if (0x7FFFFFFFFFFFFFFFuLL / a3 >= a2)
    {
      return a3 * a2;
    }

    v8 = 0;
    if (a1 && a4)
    {
      TIFFErrorExtR(a1, a4, "Integer overflow in %s", a4, a5, a6, a7, a8, a4);
      return 0;
    }
  }

  return v8;
}

uint64_t _TIFFCastUInt64ToSSize(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 < 0)
  {
    a2 = 0;
    if (a1)
    {
      if (a3)
      {
        TIFFErrorExtR(a1, a3, "Integer overflow", a4, a5, a6, a7, a8, vars0);
        return 0;
      }
    }
  }

  return a2;
}

void *_TIFFCheckRealloc(const char **a1, void *ptr, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  if (a3 < 1 || a4 < 1 || 0x7FFFFFFFFFFFFFFFuLL / a4 < a3 || (result = malloc_type_realloc(ptr, a4 * a3, 0xE952D191uLL)) == 0)
  {
    TIFFErrorExtR(a1, *a1, "Failed to allocate memory for %s (%lld elements of %lld bytes each)", a4, a5, a6, a7, a8, v8);
    return 0;
  }

  return result;
}

uint64_t TIFFVGetFieldDefaulted(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v31 = a3;
  result = TIFFVGetField(a1, a2, a3);
  if (result)
  {
    return 1;
  }

  if (v3 <= 317)
  {
    if (v3 <= 277)
    {
      if (v3 > 265)
      {
        switch(v3)
        {
          case 266:
            LOWORD(v13) = *(a1 + 126);
            break;
          case 274:
            LOWORD(v13) = *(a1 + 128);
            break;
          case 277:
            LOWORD(v13) = *(a1 + 130);
            break;
          default:
            return result;
        }

        goto LABEL_82;
      }

      if (v3 != 254)
      {
        if (v3 == 258)
        {
          LOWORD(v13) = *(a1 + 116);
        }

        else
        {
          if (v3 != 263)
          {
            return result;
          }

          LOWORD(v13) = *(a1 + 124);
        }

        goto LABEL_82;
      }

      v19 = *(a1 + 112);
    }

    else
    {
      if (v3 > 283)
      {
        if (v3 > 300)
        {
          if (v3 == 301)
          {
            v20 = *(a1 + 344);
            if (!v20)
            {
              if (!TIFFDefaultTransferFunction(a1 + 72))
              {
                TIFFErrorExtR(a1, *a1, "No space for TransferFunction tag", v21, v22, v23, v24, v25, v30);
                return 0;
              }

              v20 = *(a1 + 344);
            }

            v26 = v31;
            v32 = v31 + 1;
            **v26 = v20;
            if (*(a1 + 130) - *(a1 + 212) < 2)
            {
              return 1;
            }

            v27 = v32;
            v31 = v32 + 1;
            **v27 = *(a1 + 352);
            v12 = *(a1 + 360);
            goto LABEL_67;
          }

          if (v3 != 317)
          {
            return result;
          }

          v16 = *(a1 + 1096);
          if (!v16)
          {
            TIFFErrorExtR(a1, *a1, "Cannot get Predictor tag as plugin is not configured", v6, v7, v8, v9, v10, v30);
            result = 0;
            **v31 = 0;
            return result;
          }

          v13 = *v16;
        }

        else if (v3 == 284)
        {
          LOWORD(v13) = *(a1 + 170);
        }

        else
        {
          if (v3 != 296)
          {
            return result;
          }

          LOWORD(v13) = *(a1 + 168);
        }

        goto LABEL_82;
      }

      if (v3 != 278)
      {
        if (v3 == 280)
        {
          LOWORD(v13) = *(a1 + 136);
        }

        else
        {
          if (v3 != 281)
          {
            return result;
          }

          v14 = *(a1 + 116);
          if (v14 <= 0x10)
          {
            v15 = ~(-1 << v14);
          }

          else
          {
            LOWORD(v15) = -1;
          }

          if (*(a1 + 116))
          {
            LOWORD(v13) = v15;
          }

          else
          {
            LOWORD(v13) = 0;
          }
        }

        goto LABEL_82;
      }

      v19 = *(a1 + 132);
    }

    goto LABEL_77;
  }

  if (v3 > 529)
  {
    if (v3 <= 32994)
    {
      switch(v3)
      {
        case 530:
          v29 = v31++;
          **v29 = *(a1 + 336);
          LOWORD(v13) = *(a1 + 338);
          break;
        case 531:
          LOWORD(v13) = *(a1 + 340);
          break;
        case 532:
          v12 = *(a1 + 368);
          if (!v12)
          {
            result = TIFFDefaultRefBlackWhite(a1 + 72);
            if (!result)
            {
              return result;
            }

            v12 = *(a1 + 368);
          }

          goto LABEL_67;
        default:
          return result;
      }

LABEL_82:
      **v31 = v13;
      return 1;
    }

    if (v3 <= 32996)
    {
      if (v3 == 32995)
      {
        LOWORD(v13) = *(a1 + 212) == 1 && **(a1 + 216) == 1;
      }

      else
      {
        LOWORD(v13) = *(a1 + 118) - 1;
      }

      goto LABEL_82;
    }

    if (v3 == 32997)
    {
      v19 = *(a1 + 96);
    }

    else
    {
      if (v3 != 32998)
      {
        return result;
      }

      v19 = *(a1 + 108);
    }

LABEL_77:
    **v31 = v19;
    return 1;
  }

  if (v3 > 335)
  {
    if (v3 <= 338)
    {
      if (v3 != 336)
      {
        if (v3 != 338)
        {
          return result;
        }

        v11 = v31++;
        **v11 = *(a1 + 212);
        v12 = *(a1 + 216);
LABEL_67:
        **v31 = v12;
        return 1;
      }

      v28 = v31++;
      **v28 = 0;
      v13 = ~(-1 << *(a1 + 116));
      goto LABEL_82;
    }

    if (v3 == 339)
    {
      LOWORD(v13) = *(a1 + 118);
      goto LABEL_82;
    }

    if (v3 != 529)
    {
      return result;
    }

    v17 = *v31;
    v18 = &TIFFVGetFieldDefaulted_ycbcrcoeffs;
LABEL_79:
    *v17 = v18;
    return 1;
  }

  switch(v3)
  {
    case 318:
      v17 = *v31;
      v18 = &TIFFVGetFieldDefaulted_whitepoint;
      goto LABEL_79;
    case 332:
      result = 1;
      **v31 = 1;
      return result;
    case 334:
      **v31 = 4;
      return 1;
  }

  return result;
}

uint64_t TIFFDefaultTransferFunction(uint64_t a1)
{
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  v1 = *(a1 + 44);
  if (v1 > 0x3D)
  {
    return 0;
  }

  v4 = 2 << v1;
  result = malloc_type_malloc(2 << v1, 0x1000040BDFB0063uLL);
  *(a1 + 272) = result;
  if (result)
  {
    v5 = result;
    *result = 0;
    if (v1)
    {
      v6 = 0;
      v7 = 1 << v1;
      v8 = (1 << v1);
      if ((1 << v1) <= 2)
      {
        v7 = 2;
      }

      v9 = vdupq_n_s64(v7 - 2);
      v10 = (v7 + 6) & 0xFFFFFFFFFFFFFFF8;
      v33 = vdupq_lane_s64(COERCE__INT64(v8 + -1.0), 0);
      v34 = vdupq_n_s64(0x40EFFFE000000000uLL);
      __asm { FMOV            V5.2D, #0.5 }

      v35 = v9;
      v32 = _Q5;
      do
      {
        v46 = vdupq_n_s64(v6);
        v16 = vcgeq_u64(v9, vorrq_s8(v46, xmmword_186205EC0));
        v17 = vmovn_s64(v16);
        *v16.i8 = vuzp1_s16(v17, *v16.i8);
        v38 = vuzp1_s8(*v16.i8, *v16.i8).u8[0];
        v47 = vaddq_s64(v46, xmmword_1862272A0);
        v45 = vaddq_s64(v46, xmmword_186227290);
        v41 = vaddq_s64(v46, xmmword_186227280);
        v39 = vaddq_s64(v46, xmmword_186227270);
        v50 = vdivq_f64(vcvtq_f64_u64(v41), v33);
        v52 = vdivq_f64(vcvtq_f64_u64(v39), v33);
        v48 = vdivq_f64(vcvtq_f64_u64(v45), v33);
        v42 = vdivq_f64(vcvtq_f64_u64(v47), v33);
        v44 = pow(v42.f64[1], 2.2);
        v43 = pow(v42.f64[0], 2.2);
        v40 = pow(v48.f64[1], 2.2);
        v49 = pow(v48.f64[0], 2.2);
        v37 = pow(v50.f64[1], 2.2);
        v51 = pow(v50.f64[0], 2.2);
        v36 = pow(v52.f64[1], 2.2);
        v18.f64[0] = pow(v52.f64[0], 2.2);
        v18.f64[1] = v36;
        v19 = vrndmq_f64(vmlaq_f64(v32, v34, v18));
        if (v38)
        {
          *(v5 + 2 * v39.i64[0]) = v19.f64[0];
        }

        if (vuzp1_s8(vuzp1_s16(v17, *&v19), *&v19).i8[1])
        {
          *(v5 + 2 * v39.i64[1]) = v19.f64[1];
        }

        v20.f64[0] = v51;
        v20.f64[1] = v37;
        v21 = vrndmq_f64(vmlaq_f64(v32, v34, v20));
        v9 = v35;
        if (vuzp1_s8(vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v35, vorrq_s8(*&v46, xmmword_186205EB0)))), *&v21).i8[2])
        {
          *(v5 + 2 * v41.i64[0]) = v21.f64[0];
          *(v5 + 2 * v41.i64[1]) = v21.f64[1];
        }

        v22.f64[0] = v49;
        v22.f64[1] = v40;
        v23 = vrndmq_f64(vmlaq_f64(v32, v34, v22));
        v24 = vmovn_s64(vcgeq_u64(v35, vorrq_s8(v46, xmmword_186205EA0)));
        if (vuzp1_s8(*&v23, vuzp1_s16(v24, *&v23)).i32[1])
        {
          *(v5 + 2 * v45.i64[0]) = v23.f64[0];
        }

        if (vuzp1_s8(*&v23, vuzp1_s16(v24, *&v23)).i8[5])
        {
          *(v5 + 2 * v45.i64[1]) = v23.f64[1];
        }

        v25.f64[0] = v43;
        v25.f64[1] = v44;
        v26 = vrndmq_f64(vmlaq_f64(v32, v34, v25));
        if (vuzp1_s8(*&v26, vuzp1_s16(*&v26, vmovn_s64(vcgeq_u64(v35, vorrq_s8(*&v46, xmmword_186205E90))))).i8[6])
        {
          *(v5 + 2 * v47.i64[0]) = v26.f64[0];
          *(v5 + 2 * v47.i64[1]) = v26.f64[1];
        }

        v6 += 8;
      }

      while (v10 != v6);
    }

    if (*(a1 + 58) - *(a1 + 140) < 2)
    {
      return 1;
    }

    v27 = malloc_type_malloc(v4, 0x1000040BDFB0063uLL);
    *(a1 + 280) = v27;
    if (v27)
    {
      _TIFFmemcpy(v27, *(a1 + 272), v4);
      v28 = malloc_type_malloc(v4, 0x1000040BDFB0063uLL);
      *(a1 + 288) = v28;
      if (v28)
      {
        _TIFFmemcpy(v28, *(a1 + 272), v4);
        return 1;
      }
    }

    v29 = *(a1 + 272);
    if (v29)
    {
      free(v29);
    }

    v30 = *(a1 + 280);
    if (v30)
    {
      free(v30);
    }

    v31 = *(a1 + 288);
    if (v31)
    {
      free(v31);
    }

    result = 0;
    *(a1 + 272) = 0;
    *(a1 + 280) = 0;
    *(a1 + 288) = 0;
  }

  return result;
}

uint64_t TIFFDefaultRefBlackWhite(uint64_t a1)
{
  result = malloc_type_malloc(0x18uLL, 0x100004052888210uLL);
  *(a1 + 296) = result;
  if (result)
  {
    if (*(a1 + 50) == 6)
    {
      *(result + 16) = 0x437F000043000000;
      *result = xmmword_1862272B0;
    }

    else
    {
      v3 = ~(-1 << *(a1 + 44));
      *result = 0;
      *(result + 4) = v3;
      *(result + 8) = 0;
      *(result + 12) = v3;
      *(result + 16) = 0;
      *(result + 20) = v3;
    }

    return 1;
  }

  return result;
}

float _TIFFClampDoubleToFloat(double a1)
{
  if (a1 > 3.40282347e38)
  {
    return 3.4028e38;
  }

  if (a1 < -3.40282347e38)
  {
    return -3.4028e38;
  }

  return a1;
}

void ASTCReadPlugin::~ASTCReadPlugin(ASTCReadPlugin *this)
{
  *this = &unk_1EF4DD770;
  CommonASTCReadPlugin::~CommonASTCReadPlugin(this);
}

{
  *this = &unk_1EF4DD770;
  CommonASTCReadPlugin::~CommonASTCReadPlugin(this);

  JUMPOUT(0x186602850);
}

uint64_t ASTCReadPlugin::loadDataFromXPCObject(ASTCReadPlugin *this, void *a2)
{
  DataFromXPCObject = CommonASTCReadPlugin::loadDataFromXPCObject(this, a2);
  if (!DataFromXPCObject)
  {
    length = 0;
    data = xpc_dictionary_get_data(a2, "iio_xpc_plugin_data_astc", &length);
    if (length == 22)
    {
      DataFromXPCObject = 0;
      v6 = *data;
      *(this + 526) = *(data + 14);
      *(this + 32) = v6;
    }

    else
    {
      DataFromXPCObject = 4294967246;
    }

    v7 = *(this + 62);
    if (v7)
    {
      (*(*v7 + 16))(v7, a2);
    }
  }

  return DataFromXPCObject;
}

uint64_t ASTCReadPlugin::saveDataToXPCObject(ASTCReadPlugin *this, void *a2)
{
  v4 = CommonASTCReadPlugin::saveDataToXPCObject(this, a2);
  if (!v4)
  {
    iio_xpc_dictionary_add_databuffer(a2, "iio_xpc_plugin_data_astc", this + 512, 0x16uLL);
    v5 = *(this + 62);
    if (v5)
    {
      (*(*v5 + 24))(v5, a2);
    }
  }

  return v4;
}

void ASTCReadPlugin::addImageTypeIdentifier(ASTCReadPlugin *this, CGImage *a2, const __CFString *a3, int a4)
{
  if (*(this + 528) == 1)
  {
    CGImageSetProperty();
    IIOString::IIOString(v6, 0x4B545820u);
  }

  else
  {
    CGImageSetProperty();
    IIOString::IIOString(v6, *(this + 55));
  }

  CGImageSetProperty();
  IIOString::~IIOString(v6);
  IIONumber::IIONumber(v6, a4);
  CGImageSetProperty();
  IIONumber::~IIONumber(v6);
}

void sub_1860BE274(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

uint64_t ASTCReadPlugin::extractMetadata(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 60);
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  IIOScanner::IIOScanner(&v21, *(a1 + 24));
  if (v3 + 64 < v22)
  {
    v4 = *(&v21 + 1) + 64;
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    IIOScanner::IIOScanner(&v16, (*(&v21 + 1) + 64), v3, *(a1 + 372));
    while (1)
    {
      if (*(&v17 + 1) + 4 >= v3 || (Val32 = IIOScanner::getVal32(&v16), v6 = *(&v17 + 1), v3 - *(&v17 + 1) <= Val32) || (v7 = (Val32 + 3) & 0xFFFFFFFC, v8 = *(&v17 + 1) + v7, *(&v17 + 1) + v7 > v3) || *(a1 + 200) <= v7)
      {
LABEL_37:
        v14 = 1;
        IIOScanner::~IIOScanner(&v16);
        goto LABEL_38;
      }

      if (!strncmp((v4 + *(&v17 + 1)), "KTXorientation", v7))
      {
        IIOScanner::skip(&v16, 0xFuLL);
        v10 = *(&v17 + 1);
        v11 = v3 - *(&v17 + 1);
        if (v3 - *(&v17 + 1) < 7)
        {
          goto LABEL_33;
        }

        if (!strncmp((v4 + *(&v17 + 1)), "S=r,T=d", v7))
        {
LABEL_21:
          v12 = 1;
LABEL_32:
          *(a1 + 533) = v12;
          goto LABEL_33;
        }

        if (!strncmp((v4 + v10), "S=r,T=u", v7))
        {
          v12 = 4;
          goto LABEL_32;
        }

        if (v11 >= 0xC && (!strncmp((v4 + v10), "S=r,T=d,R=i", v7) || !strncmp((v4 + v10), "S=r,T=u,R=o", v7)))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (!strncmp((v4 + v6), "ColorSpace_APPLE", v7))
        {
          IIOScanner::skip(&v16, 0x11uLL);
          Val8 = IIOScanner::getVal8(&v16);
        }

        else
        {
          if (!strncmp((v4 + v6), "Compression_APPLE", v7))
          {
            IIOScanner::skip(&v16, 0x12uLL);
LABEL_26:
            *(a1 + 532) = 1;
            goto LABEL_33;
          }

          if (!strncmp((v4 + v6), "AlphaInfo_APPLE", v7))
          {
            IIOScanner::skip(&v16, 0x10uLL);
            v9 = IIOScanner::getVal8(&v16);
LABEL_28:
            if ((v9 & 0xF8) == 0x30)
            {
              *(a1 + 531) = v9 - 48;
            }

            goto LABEL_33;
          }

          if (strncmp((v4 + v6), "ColorSpace", v7))
          {
            if (!strncmp((v4 + v6), "Compression", v7))
            {
              IIOScanner::skip(&v16, 0xCuLL);
              goto LABEL_26;
            }

            if (strncmp((v4 + v6), "AlphaInfo", v7))
            {
              goto LABEL_33;
            }

            IIOScanner::skip(&v16, 0xAuLL);
            v9 = IIOScanner::getVal8(&v16);
            goto LABEL_28;
          }

          IIOScanner::skip(&v16, 0xBuLL);
          Val8 = IIOScanner::getVal8(&v16);
        }

        if ((Val8 - 48) <= 4)
        {
          *(a1 + 530) = Val8 - 48;
        }
      }

LABEL_33:
      if (v8 >= v3)
      {
        goto LABEL_37;
      }

      IIOScanner::seek(&v16, v8);
    }
  }

  _cg_jpeg_mem_term("extractMetadata", 153, "*** invalid KTX file: KTXHeader: %d  metadatSize: %d    fileSize: %d\n", 64, v3, v22);
  v14 = 0;
LABEL_38:
  IIOScanner::~IIOScanner(&v21);
  return v14;
}

void sub_1860BE5D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  IIOScanner::~IIOScanner(va);
  _Unwind_Resume(a1);
}

void sub_1860BE5F0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1860BE5A4);
}

void sub_1860BE620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  IIOScanner::~IIOScanner(va);
  JUMPOUT(0x1860BE5E0);
}

unint64_t ASTCReadPlugin::calculateKTXOffsetToRequestedImage(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = *(a1 + 334);
  v10 = 0;
  v6 = *(a2 + 48);
  if (v5)
  {
    if (v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = *(a2 + 52);
    }

    do
    {
      IIOImageReadSession::seek(*(a1 + 24), a3, 0);
      IIOImageReadSession::getBytes(*(a1 + 24), &v10, 4);
      a3 += v10 * v7 + 4;
      --v5;
    }

    while (v5);
  }

  IIOImageReadSession::seek(*(a1 + 24), a3, 0);
  IIOImageReadSession::getBytes(*(a1 + 24), &v10, 4);
  v8 = v10;
  if (v6)
  {
    v8 = v10 / v6;
  }

  return a3 + (*(a1 + 224) * v8) + 4;
}

uint64_t ASTCReadPlugin::initialize(ASTCReadPlugin *this, IIODictionary *a2)
{
  v115 = *MEMORY[0x1E69E9840];
  v3 = *(this + 62);
  if (v3)
  {
  }

  else
  {
    v4 = 0;
  }

  v105 = 0;
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  IIOScanner::IIOScanner(&v101, *(this + 3));
  if ((*(this + 369) & 1) == 0)
  {
    goto LABEL_132;
  }

  v5 = v102;
  if (IIOScanner::getBytesAtOffset(&v101, this + 512, *(this + 26), 0x10uLL) != 16)
  {
    goto LABEL_132;
  }

  if (*(this + 128) == 1554098963)
  {
    *(this + 264) = 0;
    v9 = *(this + 516);
    v10 = *(this + 517) | (v9 << 8);
    if (v10 > 2055)
    {
      if (v10 <= 2567)
      {
        switch(v10)
        {
          case 2056:
            v11 = 212;
            goto LABEL_94;
          case 2565:
            v11 = 213;
            goto LABEL_94;
          case 2566:
            v11 = 214;
            goto LABEL_94;
        }
      }

      else if (v10 > 3081)
      {
        if (v10 == 3082)
        {
          v11 = 217;
          goto LABEL_94;
        }

        if (v10 == 3084)
        {
          v11 = 218;
          goto LABEL_94;
        }
      }

      else
      {
        if (v10 == 2568)
        {
          v11 = 215;
          goto LABEL_94;
        }

        if (v10 == 2570)
        {
          v11 = 216;
          goto LABEL_94;
        }
      }
    }

    else if (v10 <= 1540)
    {
      switch(v10)
      {
        case 1028:
          v11 = 204;
          goto LABEL_94;
        case 1284:
          v11 = 205;
          goto LABEL_94;
        case 1285:
          v11 = 206;
          goto LABEL_94;
      }
    }

    else if (v10 > 2052)
    {
      if (v10 == 2053)
      {
        v11 = 210;
        goto LABEL_94;
      }

      if (v10 == 2054)
      {
        v11 = 211;
        goto LABEL_94;
      }
    }

    else
    {
      if (v10 == 1541)
      {
        v11 = 207;
        goto LABEL_94;
      }

      if (v10 == 1542)
      {
        v11 = 208;
LABEL_94:
        *(this + 119) = v11;
        *(this + 26) = 16;
        ASTCTextureImp::setTextureBaseOffset(v4, 16);
        v39 = *(this + 519) | (*(this + 521) << 16);
        *(this + 116) = v39;
        v40 = *(this + 261) | (*(this + 524) << 16);
        *(this + 117) = v40;
        *(this + 118) = *(this + 525) | (*(this + 527) << 16);
        v41 = *(this + 516);
        v42 = (v39 + v41 - 1) / v41;
        *(this + 120) = v42;
        v43 = *(this + 517);
        v44 = (v40 + v43 - 1) / v43;
        *(this + 121) = v44;
        v45 = 16 * v42 * v44;
        if (*(this + 25) < (*(this + 26) + v45))
        {
          _cg_jpeg_mem_term("initialize", 364, "*** bad ASTC %dx%d data [%d x %d] vs. %ld bytes - expected %ld bytes\n", v41, v43, v39, v40, *(this + 25), v45);
          goto LABEL_132;
        }

        v46 = *(this + 7);
        IIONumber::IIONumber(v106, 4);
        IIODictionary::setObjectForKey(v46, v106, @"Orientation");
        IIONumber::~IIONumber(v106);
        goto LABEL_97;
      }
    }

    LogError("initialize", 343, "*** can't handle ASTC image with block dimension (%d/%d/%d)\n", v9, *(this + 517), *(this + 518));
    goto LABEL_132;
  }

  v113 = 0u;
  v114 = 0u;
  __dst = 0u;
  v112 = 0u;
  if (IIOScanner::getBytesAtOffset(&v101, &__dst, *(this + 26), 0x40uLL) != 64)
  {
LABEL_132:
    kdebug_trace();
    v62 = 4294967246;
    goto LABEL_133;
  }

  if (!IsKTXHeader(&__dst))
  {
    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    *v106 = 0u;
    if (IIOScanner::getBytesAtOffset(&v101, v106, *(this + 26), 0x50uLL) != 80 || !IsKTX2Header(v106))
    {
      goto LABEL_132;
    }

    if (v102 <= v108)
    {
      _cg_jpeg_mem_term("initialize", 497, "*** ERROR: Invalid numberOfArrayElements (%d).");
      goto LABEL_132;
    }

    if (v102 <= v109)
    {
      _cg_jpeg_mem_term("initialize", 498, "*** ERROR: Invalid dfdOffset (%d).");
      goto LABEL_132;
    }

    if (v102 <= DWORD1(v109))
    {
      _cg_jpeg_mem_term("initialize", 499, "*** ERROR: Invalid dfdLength (%d).");
      goto LABEL_132;
    }

    if (v102 <= DWORD2(v109))
    {
      _cg_jpeg_mem_term("initialize", 500, "*** ERROR: Invalid kvdOffset (%d).");
      goto LABEL_132;
    }

    if (v102 <= HIDWORD(v109))
    {
      _cg_jpeg_mem_term("initialize", 501, "*** ERROR: Invalid kvdLength (%d).");
      goto LABEL_132;
    }

    if (v110 >= v102)
    {
      _cg_jpeg_mem_term("initialize", 502, "*** ERROR: Invalid scgdOffset (%d).");
      goto LABEL_132;
    }

    if (*(&v110 + 1) >= v102)
    {
      _cg_jpeg_mem_term("initialize", 503, "*** ERROR: Invalid scgdLength (%d).");
      goto LABEL_132;
    }

    *(this + 264) = 256;
    if (v5 <= DWORD1(v107) || v5 <= DWORD2(v107) || DWORD2(v108) > 0x10)
    {
      goto LABEL_132;
    }

    v12 = ASTCTextureImp::MetalFormatForVulkanFormat(HIDWORD(v106[1]));
    *(this + 119) = v12;
    if ((v12 - 222) <= 0xE)
    {
      ASTCTextureImp::set_needs_hdr(v4, 1);
      v12 = *(this + 119);
    }

    *(this + 372) = 0;
    v15 = DWORD1(v107);
    v14 = DWORD2(v107);
    *(this + 116) = DWORD1(v107);
    *(this + 117) = v14;
    *(this + 118) = 1;
    v16 = *(this + 56);
    LOBYTE(v99) = 0;
    v100 = 0;
    ASTCTextureImp::GetXYdimFromMetalFormat(v12, &v99, &v100, v13);
    v17 = v99;
    if (!v99)
    {
      goto LABEL_132;
    }

    *(this + 516) = v99;
    v18 = v100;
    *(this + 517) = v100;
    *(this + 518) = 1;
    *(this + 519) = v15 >> v16;
    *(this + 521) = v15 >> v16 >> 16;
    *(this + 261) = v14 >> v16;
    *(this + 524) = v14 >> v16 >> 16;
    *(this + 525) = 1;
    *(this + 527) = 0;
    v19 = (v17 + *(this + 116) - 1) / v17;
    *(this + 120) = v19;
    v20 = (v18 + *(this + 117) - 1) / v18;
    *(this + 121) = v20;
    if (v5 < v19 || v5 < v20)
    {
      goto LABEL_132;
    }

    goto LABEL_97;
  }

  *(this + 264) = 1;
  SwapKTXHeader(&__dst);
  *(this + 167) = 0;
  v6 = IIODictionary::containsKey(*(this + 6), @"kCGImageSourceMipmapLevel");
  v7 = *(this + 6);
  if (v6)
  {
    LOWORD(Uint32ForKey) = IIODictionary::getUint32ForKey(v7, @"kCGImageSourceMipmapLevel");
LABEL_51:
    *(this + 167) = Uint32ForKey;
    goto LABEL_59;
  }

  if (IIODictionary::containsKey(v7, @"kCGImageSourceSubsampleFactor"))
  {
    Uint32ForKey = IIODictionary::getUint32ForKey(*(this + 6), @"kCGImageSourceSubsampleFactor");
    if (Uint32ForKey)
    {
      Uint32ForKey = log2(Uint32ForKey);
    }

    goto LABEL_51;
  }

  LOWORD(Uint32ForKey) = *(this + 167);
LABEL_59:
  v21 = DWORD2(v114);
  if (DWORD2(v114) <= Uint32ForKey)
  {
    v22 = WORD4(v114) - 1;
    if (!DWORD2(v114))
    {
      v22 = 0;
    }

    *(this + 167) = v22;
  }

  else
  {
    LOBYTE(v22) = Uint32ForKey;
  }

  v23 = (DWORD1(v113) >> v22);
  LODWORD(v24) = DWORD2(v113) >> v22;
  if (v24)
  {
    v25 = 1;
  }

  else
  {
    v25 = v23 == 0;
  }

  if (v25)
  {
    v24 = v24;
  }

  else
  {
    v24 = 1;
  }

  *(this + 61) = v23;
  *(this + 62) = v24;
  if (v5 <= v23 || v21 > 0x10 || v5 <= v24)
  {
    goto LABEL_132;
  }

  if (DWORD1(v114) != 1 && DWORD1(v114) != 6)
  {
    _cg_jpeg_mem_term("initialize", 414, "*** Error: invalid numberOfFaces (%ld)", DWORD1(v114));
    goto LABEL_132;
  }

  if (HIDWORD(v113) > 0x1F)
  {
    goto LABEL_132;
  }

  v26 = ASTCTextureImp::MetalFormatForGLFormat(HIDWORD(v112));
  *(this + 119) = v26;
  *(this + 372) = __dst.i32[3] == 67305985;
  v28 = *(this + 61);
  v27 = *(this + 62);
  *(this + 116) = v28;
  *(this + 117) = v27;
  *(this + 118) = 1;
  LOBYTE(v99) = 0;
  v100 = 0;
  ASTCTextureImp::GetXYdimFromMetalFormat(v26, &v99, &v100, v29);
  v30 = v99;
  if (!v99)
  {
    goto LABEL_132;
  }

  *(this + 516) = v99;
  v31 = v100;
  *(this + 517) = v100;
  *(this + 518) = 1;
  *(this + 519) = v28;
  *(this + 521) = BYTE2(v28);
  *(this + 261) = v27;
  *(this + 524) = BYTE2(v27);
  *(this + 525) = 1;
  *(this + 527) = 0;
  v32 = (v30 + *(this + 116) - 1) / v30;
  *(this + 120) = v32;
  v33 = (v31 + *(this + 117) - 1) / v31;
  *(this + 121) = v33;
  if (v5 < v32 || v5 < v33 || !ASTCReadPlugin::extractMetadata(this, &__dst))
  {
    goto LABEL_132;
  }

  v34 = *(this + 533);
  if (v34 != 255)
  {
    v35 = *(this + 7);
    IIONumber::IIONumber(v106, v34);
    IIODictionary::setObjectForKey(v35, v106, @"Orientation");
    IIONumber::~IIONumber(v106);
  }

  v36 = HIDWORD(v114) + 64;
  *(this + 26) = v36;
  v37 = ASTCReadPlugin::calculateKTXOffsetToRequestedImage(this, &__dst, v36);
  *(this + 26) = v37;
  ASTCTextureImp::setTextureBaseOffset(v4, v37);
  if (!*(this + 532))
  {
    v38 = (16 * *(this + 120) * *(this + 121));
    if (*(this + 25) < (*(this + 26) + v38))
    {
      _cg_jpeg_mem_term("initialize", 481, "*** bad KTX/ASTC %dx%d data [%d x %d] vs. %ld bytes - expected %ld bytes\n", *(this + 516), *(this + 517), *(this + 116), *(this + 117), *(this + 25), v38);
      goto LABEL_132;
    }
  }

LABEL_97:
  ASTCTextureImp::setTextureDimension(v4, *(this + 116), *(this + 117));
  ASTCTextureImp::setMetalFormat(v4, *(this + 119));
  ASTCTextureImp::setDim(v4, *(this + 516), *(this + 517));
  ASTCTextureImp::setBlocks(v4, *(this + 120), *(this + 121));
  if (*(this + 528) == 1)
  {
    IIOScanner::seek(&v101, *(this + 26));
    if (IIOScanner::getVal32(&v101) == 1397119564)
    {
      v47 = *(this + 26);
    }

    else
    {
      IIOScanner::getVal32(&v101);
      v47 = *(this + 26) + 4;
    }

    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("    KTX with LZFSE compressed ASTC data\n");
      if ((gIIODebugFlags & 0x30000) != 0)
      {
        ImageIOLog("                    lzfseOffset: %d\n", v47);
        if ((gIIODebugFlags & 0x30000) != 0)
        {
          ImageIOLog("                        _rpd._offset: %d\n", *(this + 26));
        }
      }
    }
  }

  else
  {
    v47 = 16;
  }

  if ((*(this + 529) & 1) == 0)
  {
    IIOScanner::seek(&v101, v47);
    if (IIOScanner::getVal32(&v101) == 1397119564)
    {
      ASTCTextureImp::setInputIsLZFSECompressed(v4, 1);
      LODWORD(v106[0]) = 0;
      v48 = v47 + 4;
      IIOScanner::getBytesAtOffset(&v101, v106, v47 + 4, 4uLL);
      ASTCTextureImp::setCompressedLZFSESize(v4, v106[0]);
      v49 = v47 + 8;
      ASTCTextureImp::setCompressedLZFSEDataOffset(v4, v49);
      if ((gIIODebugFlags & 0x30000) != 0)
      {
        ImageIOLog("                      lzfseSize: %d\n", LODWORD(v106[0]));
        if ((gIIODebugFlags & 0x30000) != 0)
        {
          ImageIOLog("                lzfseDataOffset: %d\n", v49);
        }
      }

      if (LODWORD(v106[0]) >= 9)
      {
        __dst.i32[0] = 0;
        v99 = 0;
        IIOScanner::getBytesAtOffset(&v101, &__dst, v49, 4uLL);
        IIOScanner::getBytesAtOffset(&v101, &v99, v48 + LODWORD(v106[0]), 4uLL);
        v50 = __dst.i32[0];
        if (__dst.i32[0] != 846755426 || v99 != 611874402)
        {
          v64 = __dst.i32[0] >> 24;
          if ((__dst.i32[0] >> 24) <= 0x7F)
          {
            v65 = *(MEMORY[0x1E69E9830] + 4 * v64 + 60) & 0x40000;
          }

          else
          {
            v65 = __maskrune(v64, 0x40000uLL);
            v50 = __dst.i32[0];
            v64 = __dst.i32[0] >> 24;
          }

          if (v65)
          {
            v68 = v64;
          }

          else
          {
            v68 = 46;
          }

          v69 = v50 << 8 >> 24;
          if (v69 <= 0x7F)
          {
            v70 = *(MEMORY[0x1E69E9830] + 4 * v69 + 60) & 0x40000;
          }

          else
          {
            v70 = __maskrune(v69, 0x40000uLL);
            LOWORD(v50) = __dst.i16[0];
            v69 = __dst.i32[0] << 8 >> 24;
          }

          if (v70)
          {
            v71 = v69;
          }

          else
          {
            v71 = 46;
          }

          v72 = v50 >> 8;
          if (v72 <= 0x7F)
          {
            v73 = *(MEMORY[0x1E69E9830] + 4 * v72 + 60) & 0x40000;
          }

          else
          {
            v73 = __maskrune(v72, 0x40000uLL);
            LOBYTE(v50) = __dst.i8[0];
            v72 = __dst.i16[0] >> 8;
          }

          if (v73)
          {
            v74 = v72;
          }

          else
          {
            v74 = 46;
          }

          v75 = v50;
          if (v50 <= 0x7F)
          {
            v76 = *(MEMORY[0x1E69E9830] + 4 * v50 + 60) & 0x40000;
          }

          else
          {
            v76 = __maskrune(v50, 0x40000uLL);
            v75 = __dst.i8[0];
          }

          if (v76)
          {
            v77 = v75;
          }

          else
          {
            v77 = 46;
          }

          v78 = v99;
          v79 = v99 >> 24;
          if ((v99 >> 24) <= 0x7F)
          {
            v80 = *(MEMORY[0x1E69E9830] + 4 * v79 + 60) & 0x40000;
          }

          else
          {
            v80 = __maskrune(v79, 0x40000uLL);
            v78 = v99;
            v79 = v99 >> 24;
          }

          if (v80)
          {
            v81 = v79;
          }

          else
          {
            v81 = 46;
          }

          v82 = v78 << 8 >> 24;
          if (v82 <= 0x7F)
          {
            v83 = *(MEMORY[0x1E69E9830] + 4 * v82 + 60) & 0x40000;
          }

          else
          {
            v83 = __maskrune(v82, 0x40000uLL);
            LOWORD(v78) = v99;
            v82 = v99 << 8 >> 24;
          }

          if (v83)
          {
            v84 = v82;
          }

          else
          {
            v84 = 46;
          }

          v85 = v78 >> 8;
          if (v85 <= 0x7F)
          {
            v86 = *(MEMORY[0x1E69E9830] + 4 * v85 + 60) & 0x40000;
          }

          else
          {
            v86 = __maskrune(v85, 0x40000uLL);
            LOWORD(v78) = v99;
          }

          v87 = v78;
          if (v78 <= 0x7F)
          {
            v88 = *(MEMORY[0x1E69E9830] + 4 * v78 + 60) & 0x40000;
          }

          else
          {
            v88 = __maskrune(v78, 0x40000uLL);
            v87 = v99;
          }

          LODWORD(v89) = v78 >> 8;
          if (v86)
          {
            v89 = v89;
          }

          else
          {
            v89 = 46;
          }

          if (v88)
          {
            v90 = v87;
          }

          else
          {
            v90 = 46;
          }

          _cg_jpeg_mem_term("initialize", 630, "    ERROR: bad LZFSE data (does not start/end with 'bvx2'/'bvx$'  [%c%c%c%c][%c%c%c%c])\n", v68, v71, v74, v77, v81, v84, v89, v90);
          goto LABEL_132;
        }
      }
    }
  }

  v51 = *(this + 516);
  v52 = *(this + 517);
  v53 = *(this + 518);
  if ((v51 - 13) < 0xFFFFFFF6 || (v52 - 13) < 0xFFFFFFF6 || (v53 < 3 ? (v54 = v53 == 1) : (v54 = 1), v54 ? (v55 = 0) : (v55 = 1), v53 > 0xC || v55))
  {
    _cg_jpeg_mem_term("initialize", 647, "xyz-dim not supported:  xdim:%d  ydim:%d  zdim:%d\n", v51, *(this + 517), v53);
    goto LABEL_132;
  }

  v56 = v102 - *(this + 26);
  if (v56 < 0)
  {
    _cg_jpeg_mem_term("initialize", 655, "bad file _offset: %ld  fileSize: %ld\n", *(this + 26), v102);
    goto LABEL_132;
  }

  v57 = *(this + 116);
  v58 = *(this + 117);
  isInputLZFSECompressed = ASTCTextureImp::isInputLZFSECompressed(v4);
  v60 = 16 * (v51 + v57 - 1) / v51 * ((v52 + v58 - 1) / v52);
  if (v60 <= v56)
  {
    v61 = 1;
  }

  else
  {
    v61 = isInputLZFSECompressed;
  }

  if ((v61 & 1) == 0)
  {
    _cg_jpeg_mem_term("initialize", 668, "bad file size:  xdim:%d  ydim:%d  zdim:%d  size:%dx%d  dataSize:%d  expected:%d\n", v51, v52, v53, *(this + 116), *(this + 117), v56, v60);
    goto LABEL_132;
  }

  if ((*(this + 525) | (*(this + 527) << 16)) >= 2u)
  {
    _cg_jpeg_mem_term("initialize", 681, "zsize '%d' not supported\n", *(this + 525) | (*(this + 527) << 16));
    goto LABEL_132;
  }

  v66 = *(this + 519) | (*(this + 521) << 16);
  v67 = *(this + 261) | (*(this + 524) << 16);
  if (v66 && ((v66 * v67) & 0xFFFFFFFF00000000) != 0)
  {
    _cg_jpeg_mem_term("initialize", 687, "overflow: xsize: %d    ysize: %d\n", *(this + 519) | (*(this + 521) << 16), v67);
    goto LABEL_132;
  }

  *(this + 61) = v66;
  *(this + 62) = v67;
  *(this + 64) = 2097160;
  *(this + 130) = 4;
  *(this + 85) = 1380401696;
  v91 = *(this + 531);
  if (v91 == 255)
  {
    v92 = 3;
  }

  else
  {
    v92 = v91 & 0x1F;
  }

  *(this + 262) = v92;
  *(this + 20) = 0;
  v93 = *(this + 530);
  if (v93 <= 4)
  {
    *(this + 20) = CGColorSpaceCreateWithName(**(&unk_1E6F41B98 + v93));
  }

  *(this + 63) = 4 * v66;
  *(this + 374) = 0;
  if (*(this + 3))
  {
    if ((ASTCTextureImp::isInputLZFSECompressed(v4) & 1) == 0 && (ASTCTextureImp::isInputPreTwiddled(v4) & 1) == 0 && *(this + 531) == 255 && *(this + 530) == 255 && (*(this + 529) & 1) == 0)
    {
      v106[0] = 0;
      v106[1] = 0;
      v94 = *(this + 3);
      v95 = ASTCTextureImp::textureBaseOffset(v4);
      if (IIOImageReadSession::getBytesAtOffset(v94, v106, v95, 16) == 16)
      {
        if ((v106[0] & 0x1FF) == 0x1FC)
        {
          ASTCTextureImp::set_needs_hdr(v4, (v106[0] & 0x200) != 0);
        }

        else
        {
          v96 = (LODWORD(v106[0]) >> 13) & 0xF;
          if ((v106[0] & 0x1800) != 0)
          {
            v96 = (LODWORD(v106[0]) >> 23) & 0x3F;
          }

          if ((v96 & 0x3E) == 0xE || v96 == 11 || v96 == 7 || (v96 & 0x3E) == 2)
          {
            ASTCTextureImp::set_needs_hdr(v4, 1);
          }
        }
      }
    }
  }

  if (ASTCTextureImp::needs_hdr(v4))
  {
    *(this + 373) = 1;
    *(this + 63) = 8 * v66;
    *(this + 64) = 4194320;
    *(this + 263) = 1;
    if (!*(this + 20))
    {
      *(this + 20) = CGColorSpaceCreateWithName(*MEMORY[0x1E695F108]);
    }
  }

  v97 = getenv("IIO_useV3");
  if (v97 && !atoi(v97))
  {
    v98 = 1;
  }

  else
  {
    v98 = 13;
  }

  v62 = 0;
  *(this + 204) = v98;
LABEL_133:
  IIOScanner::~IIOScanner(&v101);
  return v62;
}

void sub_1860BF718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  IIOScanner::~IIOScanner(va);
  _Unwind_Resume(a1);
}

uint64_t ASTCReadPlugin::setupCallback(uint64_t a1, CFDictionaryRef *a2)
{
  v2 = *(a1 + 408);
  if (v2 == 13)
  {
    return IIOReadPlugin::setupImageProviderCallbackV3(a1, a2);
  }

  if (v2 == 1)
  {
    return IIOReadPlugin::setupCallback(a1, a2);
  }

  return 4294967246;
}

uint64_t ASTCReadPlugin::decodeImageData(ASTCReadPlugin *this, unsigned __int8 *a2)
{
  v4 = *(this + 62);
  if (v4)
  {
  }

  v5 = *(this + 69);
  v6 = *(this + 70);
  v7 = *(this + 79);
  v10.data = a2;
  v10.height = v6;
  v10.width = v5;
  v10.rowBytes = v7;
  v8 = *(this + 3);
  if (v8)
  {
    return ASTCTextureImp::decodeASTCtoRGBX(v4, v8, &v10, *(this + 326), *(this + 437) == 0);
  }

  else
  {
    return 0;
  }
}