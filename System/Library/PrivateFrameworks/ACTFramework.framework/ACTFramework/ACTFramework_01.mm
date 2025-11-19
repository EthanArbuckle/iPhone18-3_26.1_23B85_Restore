uint64_t sub_23C4534CC(uint64_t a1)
{
  Storage = sbp_pano_getStorage(a1);
  v5 = *(Storage + 864);
  if (v5)
  {
    RobustPano_invalidate(v5, v1, v2, v3);
    *(Storage + 864) = 0;
  }

  LegacyPano_invalidate(Storage);
  return 0;
}

__CFString *sub_23C453510(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleBufferProcessor_Panorama %p>", a1);
  return Mutable;
}

uint64_t sub_23C453568(uint64_t a1, const void *a2, uint64_t a3, CFNumberRef *a4)
{
  v133 = *MEMORY[0x277D85DE8];
  Storage = sbp_pano_getStorage(a1);
  if (a4)
  {
    v8 = Storage;
    theDict = 0;
    v124 = 0;
    group = 0;
    object = 0;
    LegacyPano_copyProperty(Storage, a2, a3, &v124, &object, &group);
    v9 = *(v8 + 864);
    if (v9)
    {
      RobustPano_copyProperty(v9, a2, a3, &theDict);
      RobustPano_reset(*(v8 + 864), v10, v11, v12);
    }

    if (CFEqual(a2, @"HighResPanorama"))
    {
      cf = 0;
      HostTime = ACT_getHostTime();
      if (*(v8 + 448))
      {
        ACTLogMessageImp(1, "{Finishing|BeginTS:%.3f}\n", HostTime);
      }

      v118 = 0;
      v119 = 0;
      if (*(v8 + 864))
      {
        v14 = CFDictionaryGetValue(theDict, @"Assembly");
        v15 = v14;
        if (!*(v8 + 421))
        {
          v26 = CFDictionaryGetValue(theDict, @"CropRect");
          if (v26)
          {
            BytePtr = CFDataGetBytePtr(v26);
            v18 = *BytePtr;
            v19 = BytePtr[1];
            v17 = BytePtr[2];
            v16 = BytePtr[3];
            if (v15)
            {
              goto LABEL_22;
            }
          }

          else
          {
            v19 = *MEMORY[0x277CBF3A0];
            v18 = *(MEMORY[0x277CBF3A0] + 8);
            v16 = *(MEMORY[0x277CBF3A0] + 16);
            v17 = *(MEMORY[0x277CBF3A0] + 24);
            if (v15)
            {
              goto LABEL_22;
            }
          }

LABEL_43:
          v48 = 0;
          if (!*(v8 + 448))
          {
            v36 = 0;
LABEL_126:
            *a4 = v48;
            *(v8 + 456) = 0;
            *(v8 + 752) = 0;
            *(v8 + 368) = 0;
            *(v8 + 760) = 0u;
            LegacyPano_reset(v8);
            LegacyPano_finishProcessing(v8);
            *(v8 + 199) = 0;
            return v36;
          }

          v28 = 1;
          v15 = 0;
          goto LABEL_45;
        }

        v16 = *(v8 + 312);
        v17 = *(v8 + 336) * 1.1 + -1.0;
        v18 = 0.0;
        v19 = 0.0;
        if (!v14)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (*(v8 + 912) != 1)
        {
          goto LABEL_43;
        }

        v15 = CFDictionaryGetValue(v124, @"Assembly");
        v24 = CFDictionaryGetValue(v124, @"CropRect");
        v25 = CFDataGetBytePtr(v24);
        v19 = *v25;
        v18 = v25[1];
        v16 = v25[2];
        v17 = v25[3];
        if (!v15)
        {
          goto LABEL_43;
        }
      }

LABEL_22:
      v135.origin.x = v19;
      v135.origin.y = v18;
      v135.size.width = v16;
      v135.size.height = v17;
      if (CGRectIsEmpty(v135))
      {
        if (*(v8 + 448))
        {
          v28 = 0;
LABEL_45:
          v49 = ACT_getHostTime();
          ACTLogMessageImp(4, "{Finishing|Error:FinishBlending-FAILED} {Finishing|FinishBlendingEndTS:%.3f}\n", v49);
          v37 = 0;
          Mutable = 0;
          v36 = 0;
          v48 = 0;
          if (v28)
          {
            goto LABEL_126;
          }

          goto LABEL_125;
        }

        v37 = 0;
        Mutable = 0;
LABEL_125:
        CVPixelBufferRelease(v15);
        v36 = v37;
        v48 = Mutable;
        goto LABEL_126;
      }

      v116 = 0;
      v117 = 0;
      v115 = 0;
      valuePtr = 4;
      if (*(v8 + 448))
      {
        v29 = ACT_getHostTime();
        ACTLogMessageImp(1, "{Finishing|FinishBlendingEndTS:%.3f}\n", v29);
      }

      *(v8 + 752) = CMSimpleQueueGetCount(*(v8 + 32));
      v30 = v16;
      v31 = v17;
      if (*(v8 + 448))
      {
        ACTLogMessageImp(1, "=== SUMMARY ====\nreceivedCount: %d processedCount: %d usedCount: %d droppedCount: %d processingQueueMaxDepth: %d \n", *(v8 + 760), *(v8 + 764), *(v8 + 768), *(v8 + 772), *(v8 + 16));
        v32 = *(v8 + 448);
        v33 = v30 & 0xFFFFFFFFFFFFFFFELL;
        v34 = v31 & 0xFFFFFFFFFFFFFFFELL;
        v118 = v34;
        v119 = v33;
        if (v32)
        {
          v35 = ACT_getHostTime();
          ACTLogMessageImp(1, "{Finishing|ACTNoiseReductionEndTS:%.3f}{Finishing|ACTNoiseReductionRect_out:%d,%d,%d,%d}\n", v35, v19, v18, v33, v34);
        }
      }

      else
      {
        v118 = v31 & 0xFFFFFFFFFFFFFFFELL;
        v119 = v30 & 0xFFFFFFFFFFFFFFFELL;
      }

      v39 = *MEMORY[0x277CBECE8];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v40 = ACT_getHostTime();
      v113 = 0;
      v136.origin.x = v19;
      v136.origin.y = v18;
      v136.size.width = v16;
      v136.size.height = v17;
      v37 = 0;
      v110 = v15;
      if (CGRectIsEmpty(v136))
      {
LABEL_57:
        if (v37 || !cf || !v113)
        {
          ACTLogMessageImp(4, "JPEG encode failed: %ld", v37);
        }

        if (*(v8 + 448))
        {
          v60 = ACT_getHostTime();
          ACTLogMessageImp(1, "{Finishing|JPEGTime:%.3f}\n", v60 - v40);
        }

        dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
        dispatch_release(object);
        dispatch_release(group);
        v61 = CFDictionaryGetValue(v124, @"ACTPanoramaPreviewThumbnailBuffer");
        CFDictionaryAddValue(Mutable, @"ACTPanoramaPreviewThumbnailBuffer", v61);
        v62 = *(v8 + 904);
        if (v62)
        {
          ACTThreadMutexLock(v62);
        }

        v63 = *(v8 + 448);
        if (!v63)
        {
          goto LABEL_94;
        }

        v125 = 0;
        fflush(v63);
        fgetpos(*(v8 + 448), &v125);
        fseek(*(v8 + 448), 0, 0);
        v64 = v125;
        v65 = malloc_type_calloc(1uLL, v125, 0x3522B7EDuLL);
        if (v65)
        {
          v66 = v65;
          rewind(*(v8 + 448));
          if (fread(v66, 1uLL, v64, *(v8 + 448)))
          {
            _addFileWithData(*(v8 + 736), "panoLog.txt", v66, v64);
          }

          free(v66);
        }

        v67 = *(v8 + 744);
        if (v67)
        {
          Data = CFPropertyListCreateData(v39, v67, kCFPropertyListXMLFormat_v1_0, 0, 0);
          if (Data)
          {
            v69 = Data;
            v70 = archive_position_compressed();
            if (CFDataGetLength(v69) + v70 < 16510000 || (*(v8 + 444) & 0x20) != 0)
            {
              v73 = *(v8 + 736);
              v74 = CFDataGetBytePtr(v69);
              Length = CFDataGetLength(v69);
              _addFileWithData(v73, "metadataAccumulationLog.plist", v74, Length);
            }

            else
            {
              v71 = archive_position_compressed();
              v72 = CFDataGetLength(v69);
              ACTLogMessageImp(4, "Could not add metadataAccumulationLog.plist to archive due to size constraints %ld %ld", v71, v72);
            }

            CFRelease(v69);
          }

          CFRelease(*(v8 + 744));
          *(v8 + 744) = 0;
        }

        ACTRegistrationCSVLogBuffer = getACTRegistrationCSVLogBuffer(*(v8 + 432));
        if (ACTRegistrationCSVLogBuffer && *(v8 + 444))
        {
          v77 = ACTRegistrationCSVLogBuffer;
          v78 = strlen(ACTRegistrationCSVLogBuffer);
          _addFileWithData(*(v8 + 736), "registrationData.csv", v77, v78);
        }

        archive_write_close();
        archive_write_finish();
        __sprintf_chk(&__p, 0, 0x100uLL, "%s/panoArchive.tar", (v8 + 456));
        v79 = fopen(&__p, "r");
        fseek(v79, 0, 2);
        fgetpos(v79, &v125);
        v80 = v125;
        if (v125 < 16575001)
        {
          v81 = 1;
        }

        else
        {
          fclose(v79);
          fflush(*(v8 + 448));
          fgetpos(*(v8 + 448), &v125);
          fseek(*(v8 + 448), 0, 0);
          rewind(*(v8 + 448));
          v79 = *(v8 + 448);
          *(v8 + 448) = 0;
          v81 = (*(v8 + 444) & 0x20) == 0;
          v80 = v125;
        }

        v82 = malloc_type_calloc(1uLL, v80, 0x8BB70AC7uLL);
        rewind(v79);
        fread(v82, 1uLL, v80, v79);
        v83 = CFDataCreate(v39, v82, v80);
        free(v82);
        fclose(v79);
        if (v81)
        {
          remove(&__p, v84);
          __sprintf_chk(&__p, 0, 0x100uLL, "%s/panoLog.txt", (v8 + 456));
          remove(&__p, v85);
          rmdir((v8 + 456));
        }

        v86 = *(v8 + 448);
        v15 = v110;
        if (v86)
        {
          fclose(v86);
          *(v8 + 448) = 0;
        }

        if (!v83)
        {
          goto LABEL_94;
        }

        if (*(v8 + 420))
        {
          if (!v116)
          {
LABEL_94:
            if (*(v8 + 712))
            {
              v87 = *(v8 + 720);
              v88 = MEMORY[0x277CD3038];
              if (v87)
              {
                v89 = CFDictionaryGetValue(v87, *MEMORY[0x277CD3038]);
                if (v89)
                {
                  CFDictionaryApplyFunction(v89, sub_23C454638, *(v8 + 712));
                }
              }

              LODWORD(__p.__pn_.__r_.__value_.__l.__data_) = 6;
              v90 = CFNumberCreate(v39, kCFNumberSInt32Type, &__p);
              CFDictionarySetValue(*(v8 + 712), *MEMORY[0x277CD3020], v90);
              CFRelease(v90);
              LODWORD(__p.__pn_.__r_.__value_.__l.__data_) = 0;
              v91 = CFNumberCreate(v39, kCFNumberSInt32Type, &__p);
              CFDictionarySetValue(*(v8 + 712), *MEMORY[0x277CD3070], v91);
              CFRelease(v91);
              v92 = CFNumberCreate(v39, kCFNumberCFIndexType, &v119);
              CFDictionarySetValue(*(v8 + 712), *MEMORY[0x277CD3110], v92);
              CFRelease(v92);
              v93 = CFNumberCreate(v39, kCFNumberCFIndexType, &v118);
              CFDictionarySetValue(*(v8 + 712), *MEMORY[0x277CD3118], v93);
              CFRelease(v93);
              v94 = *(v8 + 728);
              if (v94)
              {
                v95 = copyDebugDescrioption(v94);
                CFDictionaryAddValue(*(v8 + 712), *MEMORY[0x277CD3198], v95);
                CFRelease(v95);
                CFRelease(*(v8 + 728));
                *(v8 + 728) = 0;
              }

              v96 = *MEMORY[0x277CD2D38];
              v97 = CFDictionaryGetValue(*(v8 + 712), *MEMORY[0x277CD2D38]);
              if (v97)
              {
                CFDictionaryAddValue(Mutable, v96, v97);
                CFDictionaryRemoveValue(*(v8 + 712), v96);
              }

              if (*(v8 + 420) && v116)
              {
                if (*(v8 + 720))
                {
                  MutableCopy = FigCFDictionaryCreateMutableCopy();
                }

                else
                {
                  MutableCopy = CFDictionaryCreateMutable(v39, 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                }

                v100 = MutableCopy;
                v99 = *v88;
                v101 = CFDictionaryContainsKey(MutableCopy, v99);
                v102 = *(v8 + 712);
                if (v101)
                {
                  CFDictionaryReplaceValue(v100, v99, v102);
                }

                else
                {
                  CFDictionaryAddValue(v100, v99, v102);
                }

                if (v97)
                {
                  CFDictionaryAddValue(v100, v96, v97);
                }

                v37 = CMPhotoCompressionSessionAddMetadataFromImageProperties();
                CFRelease(v100);
                v15 = v110;
              }

              else
              {
                v99 = *v88;
              }

              CFDictionaryAddValue(Mutable, v99, *(v8 + 712));
              CFRelease(*(v8 + 712));
              *(v8 + 712) = 0;
            }

            v103 = *(v8 + 720);
            if (v103)
            {
              CFRelease(v103);
              *(v8 + 720) = 0;
            }

            if (*(v8 + 420))
            {
              if (v116)
              {
                if (CFDictionaryGetValue(Mutable, @"ACTPanoramaPreviewThumbnailBuffer"))
                {
                  v104 = *MEMORY[0x277CF6CF0];
                  __p.__pn_.__r_.__value_.__r.__words[0] = *MEMORY[0x277CF6D20];
                  __p.__pn_.__r_.__value_.__l.__size_ = v104;
                  LODWORD(keys) = 1752589105;
                  v105 = CFNumberCreate(v39, kCFNumberIntType, &keys);
                  LODWORD(values) = 1280;
                  v106 = CFNumberCreate(v39, kCFNumberIntType, &values);
                  v125 = v106;
                  v126 = v105;
                  v107 = CFDictionaryCreate(v39, &__p.__pn_.__r_.__value_.__l.__data_, &v125, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                  CMPhotoCompressionSessionAddThumbnail();
                  CFRelease(v105);
                  CFRelease(v106);
                  v108 = v107;
                  v15 = v110;
                  CFRelease(v108);
                }

                CMPhotoCompressionSessionCloseContainerAndCopyBacking();
                v113 = v115;
                CFRelease(v116);
              }

              else
              {
                v113 = 0;
              }
            }

            if (cf)
            {
              CFDictionaryAddValue(Mutable, @"JPEG", cf);
              CFRelease(cf);
              v109 = CFNumberCreate(v39, kCFNumberSInt32Type, &v113);
              CFDictionarySetValue(Mutable, @"ACTPanoramaJPEGSize", v109);
              CFRelease(v109);
            }

            goto LABEL_125;
          }

          CMPhotoCompressionSessionAddDebugMetadata();
        }

        else
        {
          CFDictionaryAddValue(Mutable, @"iOS_Debug", v83);
        }

        CFRelease(v83);
        goto LABEL_94;
      }

      v137.origin.x = v19;
      v137.origin.y = v18;
      v137.size.width = v16;
      v137.size.height = v17;
      DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v137);
      if (*(v8 + 420))
      {
        v42 = CFNumberCreate(v39, kCFNumberIntType, &valuePtr);
        v43 = CMPhotoCompressionSessionCreate();
        if (v116)
        {
          v44 = *MEMORY[0x277CF6CD8];
          values = v42;
          keys = v44;
          v45 = CFDictionaryCreate(v39, &keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          CMPhotoCompressionSessionOpenEmptyContainer();
          CFRelease(v45);
          value = 0;
          v46 = *(v8 + 720);
          if (v46)
          {
            if (CFDictionaryGetValueIfPresent(v46, *MEMORY[0x277CD34B8], &value))
            {
              v47 = 4;
            }

            else
            {
              v47 = 3;
            }
          }

          else
          {
            v47 = 3;
          }

          v54 = *MEMORY[0x277CF6D50];
          __p.__pn_.__r_.__value_.__r.__words[0] = *MEMORY[0x277CF6D48];
          __p.__pn_.__r_.__value_.__l.__size_ = v54;
          v55 = *MEMORY[0x277CF6D10];
          __p.__pn_.__r_.__value_.__r.__words[2] = *MEMORY[0x277CF6CF0];
          v132 = v55;
          v111 = 1752589105;
          v56 = CFNumberCreate(v39, kCFNumberIntType, &v111);
          v57 = *MEMORY[0x277CBED28];
          v125 = DictionaryRepresentation;
          v126 = v57;
          v127 = v56;
          v128 = value;
          CFRelease(v56);
          v58 = CFDictionaryCreate(v39, &__p.__pn_.__r_.__value_.__l.__data_, &v125, v47, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          v37 = CMPhotoCompressionSessionAddImage();
          CFRelease(v56);
          v59 = v58;
          v15 = v110;
          CFRelease(v59);
          goto LABEL_56;
        }
      }

      else
      {
        v50 = CFNumberCreate(v39, kCFNumberSInt32Type, (v8 + 384));
        v51 = *MEMORY[0x277CF9668];
        __p.__pn_.__r_.__value_.__r.__words[0] = *MEMORY[0x277CF9670];
        __p.__pn_.__r_.__value_.__l.__size_ = v51;
        v125 = DictionaryRepresentation;
        v126 = v50;
        v42 = CFDictionaryCreate(v39, &__p.__pn_.__r_.__value_.__l.__data_, &v125, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        CFRelease(v50);
        IOSurface = CVPixelBufferGetIOSurface(v15);
        v43 = MEMORY[0x23EED2250](IOSurface, v42, &cf, &v113);
      }

      v37 = v43;
LABEL_56:
      CFRelease(v42);
      CFRelease(DictionaryRepresentation);
      goto LABEL_57;
    }

    if (CFEqual(a2, @"writeSlicesToDisc"))
    {
      v21 = *MEMORY[0x277CBECE8];
      p_p = (v8 + 444);
    }

    else
    {
      if (CFEqual(a2, @"ACTPanoramaPreviewScale"))
      {
        v21 = *MEMORY[0x277CBECE8];
        p_p = (v8 + 316);
        v23 = kCFNumberFloatType;
        goto LABEL_32;
      }

      if (CFEqual(a2, @"ACTPanoramaMaxWidth"))
      {
        v21 = *MEMORY[0x277CBECE8];
        p_p = (v8 + 312);
      }

      else
      {
        if (CFEqual(a2, @"ACTPanoramaPreviewWidth"))
        {
          Width = CVPixelBufferGetWidth(*(v8 + 80));
        }

        else
        {
          if (!CFEqual(a2, @"ACTPanoramaPreviewHeight"))
          {
            if (CFEqual(a2, @"ACTPanoramaDefaultDirection"))
            {
              v21 = *MEMORY[0x277CBECE8];
              p_p = (v8 + 160);
            }

            else if (CFEqual(a2, @"ACTPanoramaDefaultRegistrationMethod"))
            {
              v21 = *MEMORY[0x277CBECE8];
              p_p = (v8 + 168);
            }

            else if (CFEqual(a2, @"ACTPanoramaDefaultPredictionMethod"))
            {
              v21 = *MEMORY[0x277CBECE8];
              p_p = (v8 + 172);
            }

            else if (CFEqual(a2, @"ACTPanoramaDefaultFallback"))
            {
              v21 = *MEMORY[0x277CBECE8];
              p_p = (v8 + 176);
            }

            else if (CFEqual(a2, @"ACTPanoramaDefaultPrediction"))
            {
              v21 = *MEMORY[0x277CBECE8];
              p_p = (v8 + 180);
            }

            else
            {
              if (!CFEqual(a2, @"ACTPanoramaDefaultBlendingConfig"))
              {
                return 4294954512;
              }

              v21 = *MEMORY[0x277CBECE8];
              p_p = (v8 + 188);
            }

            goto LABEL_16;
          }

          Width = CVPixelBufferGetHeight(*(v8 + 80));
        }

        LODWORD(__p.__pn_.__r_.__value_.__l.__data_) = Width;
        v21 = *MEMORY[0x277CBECE8];
        p_p = &__p;
      }
    }

LABEL_16:
    v23 = kCFNumberIntType;
LABEL_32:
    v36 = 0;
    *a4 = CFNumberCreate(v21, v23, p_p);
    return v36;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t sub_23C454560(uint64_t a1, const void *a2, const __CFNumber *a3)
{
  Storage = sbp_pano_getStorage(a1);
  if (*(Storage + 197))
  {
    return 0xFFFFFFFFLL;
  }

  v7 = Storage;
  if (*(Storage + 196))
  {
    return 0xFFFFFFFFLL;
  }

  if (CFEqual(a2, @"writeSlicesToDisc"))
  {
    v9 = (v7 + 444);
    v10 = *(v7 + 444);
    CFNumberGetValue(a3, kCFNumberIntType, v9);
    if (!v10)
    {
      if (*v9)
      {
        _createDebugWriteThread(a1);
      }
    }

    return 0;
  }

  result = CFEqual(a2, @"ACTPanoramaDefaultDirection");
  if (result)
  {
    CFNumberGetValue(a3, kCFNumberIntType, (v7 + 160));
    *(v7 + 164) = *(v7 + 160);
    LegacyPano_reset(v7);
    result = *(v7 + 864);
    if (result)
    {
      RobustPano_reset(result, v11, v12, v13);
      return 0;
    }
  }

  return result;
}

void sub_23C454638(void *key, const void *a2, CFDictionaryRef theDict)
{
  if (CFDictionaryContainsKey(theDict, key))
  {

    CFDictionaryReplaceValue(theDict, key, a2);
  }

  else
  {

    CFDictionaryAddValue(theDict, key, a2);
  }
}

uint64_t sub_23C4546C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Storage = sbp_pano_getStorage(a1);
  ACTThreadMutexLock(Storage[112]);
  *Storage = a2;
  Storage[1] = a3;
  ACTThreadMutexUnlock(Storage[112]);
  return 0;
}

uint64_t sub_23C45470C(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  Storage = sbp_pano_getStorage(a1);
  if (CMSampleBufferGetImageBuffer(a2))
  {
    LODWORD(time.value) = -1082130432;
    if (*(Storage + 197))
    {
      v5 = *(Storage + 864);
      if (v5)
      {
        RobustPano_processSampleBuffer(v5, a2, &time);
      }

      v6 = LegacyPano_processSampleBuffer(a1, a2);
      goto LABEL_27;
    }

    if (*(Storage + 196))
    {
      v8 = CMGetAttachment(a2, @"ClientSpecifiedMetadata", 0);
      v9 = *(Storage + 200);
      *(Storage + 200) = v9 + 1;
      if (v8)
      {
        v19.value = 0;
        if (CFDictionaryGetValueIfPresent(v8, *MEMORY[0x277CF6918], &v19))
        {
          Value = CFBooleanGetValue(v19.value);
          v11 = *(Storage + 200);
          if (v11 > 29 || Value)
          {
            if (Value)
            {
LABEL_22:
              ACTLogMessageImp(1, "{Pano|FramesBeforeCaptureActive:%d}\n", v11);
              *(Storage + 196) = 256;
              *(Storage + 200) = 0;
              v13 = *(Storage + 864);
              if (v13)
              {
                RobustPano_processSampleBuffer(v13, a2, &time);
              }

              v6 = LegacyPano_processSampleBuffer(a1, a2);
              LocalCenter = CFNotificationCenterGetLocalCenter();
              CFNotificationCenterPostNotification(LocalCenter, @"kACTPanoramaStatusNotifications", @"kACTPanoramaCaptureBecameActive", 0, 1u);
              goto LABEL_27;
            }

LABEL_21:
            ACTLogMessageImp(4, "Error: Lock Failure \n");
            v11 = *(Storage + 200);
            goto LABEL_22;
          }
        }

        else if (*(Storage + 200) > 29)
        {
          goto LABEL_21;
        }
      }

      else if (v9 > 28)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v12 = *(Storage + 896);
      if (v12 && !ACTThreadIsLocked(v12))
      {
        CFRetain(a2);
        CMSimpleQueueEnqueue(*(Storage + 40), a2);
        ACTThreadWakeup();
      }
    }

    v6 = 0;
LABEL_27:
    if (*&time.value < 0.0 || *(Storage + 276) > (*&time.value * 100.0))
    {
      LODWORD(time.value) = *(Storage + 276);
    }

    v16 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberFloatType, &time);
    CVBufferSetAttachment(*(Storage + 80), @"ACTPanoramaPreviewMotionSpeedScale", v16, kCVAttachmentMode_ShouldPropagate);
    CFRelease(v16);
    return v6;
  }

  if (*(Storage + 448) && *(Storage + 197))
  {
    memset(&v19, 0, sizeof(v19));
    CMSampleBufferGetPresentationTimeStamp(&v19, a2);
    time = v19;
    Seconds = CMTimeGetSeconds(&time);
    ACTLogMessageImp(4, "Frame Drop PTS:%.3f\n", Seconds);
  }

  return 0;
}

void *GaussianScaler_constructor(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_malloc(0x18uLL, 0x1010040A79CA2DEuLL);
  v5 = v4;
  if (v4)
  {
    *v4 = a1 + 4;
    v4[1] = a2;
    v6 = malloc_type_malloc(8 * (a1 + 4), 0x1000040BDFB0063uLL);
    v5[2] = v6;
    if (!v6)
    {
      free(v5);
      return 0;
    }
  }

  return v5;
}

void GaussianScaler_destructor(void *a1)
{
  if (a1)
  {
    v2 = a1[2];
    if (v2)
    {
      free(v2);
    }

    free(a1);
  }
}

unint64_t GaussianScaler_downsample(uint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, unsigned __int8 *a6, unint64_t a7, unint64_t a8, uint64_t a9)
{
  if (a7 >> 1 >= a3)
  {
    v12 = a3;
  }

  else
  {
    v12 = a7 >> 1;
  }

  v13 = a1[2];
  v14 = *a1;
  v15 = &v13[2 * *a1];
  v16 = &v15[2 * *a1];
  v17 = &v16[2 * *a1];
  v198 = a7 + 4;
  v199 = v12;
  v18 = 2 * (a7 + 4);
  bzero(v13, v18);
  bzero(v15, v18);
  bzero(v16, v18);
  bzero(v17, v18);
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = v13 + 4;
  v197 = a7 + 2;
  v24 = -2;
  v25 = &v13[4 * v14 + 4];
  v26 = &v13[2 * v14 + 4];
  do
  {
    v27 = 0;
    v28 = 1;
    v29 = v19;
    v30 = v20;
    v31 = v21;
    v32 = v22;
    do
    {
      v33 = v32;
      v34 = v31;
      v35 = v30;
      v36 = v29;
      v37 = v28;
      v32 = *a6;
      v31 = v33 + v32;
      v30 = v33 + v32 + v34;
      v29 = v30 + v35;
      v38 = v30 + v35 + v36 + *&v13[2 * v27];
      *&v13[2 * v27] = v31 + v34 + v35 + v36;
      v39 = v38 + *&v15[2 * v27];
      *&v15[2 * v27] = v38;
      v40 = v39 + *&v16[2 * v27];
      *&v16[2 * v27] = v39;
      *&v17[2 * v27] = v40;
      v27 = 1;
      v28 = 0;
    }

    while ((v37 & 1) != 0);
    if (v197 < 3)
    {
      v49 = a6;
      v50 = 2;
    }

    else
    {
      v41 = 0;
      do
      {
        v42 = v32;
        v43 = v31;
        v44 = v30;
        v32 = a6[v41];
        v45 = v29;
        v31 = v42 + v32;
        v30 = v42 + v32 + v43;
        v29 = v30 + v44;
        v46 = v30 + v44 + v45 + *&v23[2 * v41];
        *&v23[2 * v41] = v31 + v43 + v44 + v45;
        v47 = v46 + *(v26 + 2 * v41);
        *(v26 + 2 * v41) = v46;
        v48 = v47 + *(v25 + 2 * v41);
        *(v25 + 2 * v41) = v47;
        *&v13[6 * v14 + 4 + 2 * v41++] = v48;
      }

      while (a7 != v41);
      v49 = &a6[v41];
      v50 = (a7 + 2);
    }

    v51 = v198 - v50;
    if (v198 <= v50)
    {
      v22 = v32;
      v21 = v31;
      v20 = v30;
      v19 = v29;
    }

    else
    {
      v52 = &v13[2 * v50];
      do
      {
        v22 = *(v49 - 1);
        v21 = v32 + v22;
        v20 = v32 + v22 + v31;
        v19 = v20 + v30;
        v53 = v20 + v30 + v29;
        v54 = v53 + *v52;
        *v52 = v53;
        v55 = *&v52[2 * v14];
        *&v52[2 * v14] = v54;
        v56 = v54 + v55;
        v57 = v56 + *&v52[4 * v14];
        *&v52[4 * v14] = v56;
        *&v52[6 * v14] = v57;
        v52 += 2;
        v29 = v19;
        v30 = v20;
        v31 = v32 + v22;
        v32 = v22;
        --v51;
      }

      while (v51);
    }
  }

  while (!__CFADD__(v24++, 1));
  result = (v13 + 4);
  v60 = &v13[4 * v14 + 4];
  v61 = 1;
  v62 = &v13[2 * v14 + 4];
  do
  {
    v63 = 0;
    v64 = a6;
    v65 = v61;
    v66 = 1;
    v67 = v19;
    v68 = v20;
    v69 = v21;
    v70 = v22;
    do
    {
      v71 = v70;
      v72 = v69;
      v73 = v68;
      v74 = v67;
      v75 = v66;
      v70 = *v64;
      v69 = v71 + v70;
      v68 = v71 + v70 + v72;
      v67 = v68 + v73;
      v76 = v68 + v73 + v74 + *&v13[2 * v63];
      *&v13[2 * v63] = v69 + v72 + v73 + v74;
      v77 = v76 + *&v15[2 * v63];
      *&v15[2 * v63] = v76;
      v78 = v77 + *&v16[2 * v63];
      *&v16[2 * v63] = v77;
      *&v17[2 * v63] = v78;
      v63 = 1;
      v66 = 0;
    }

    while ((v75 & 1) != 0);
    if (v197 < 3)
    {
      v87 = v64;
      v88 = 2;
    }

    else
    {
      v79 = 0;
      do
      {
        v80 = v70;
        v81 = v69;
        v82 = v68;
        v70 = v64[v79];
        v83 = v67;
        v69 = v80 + v70;
        v68 = v80 + v70 + v81;
        v67 = v68 + v82;
        v84 = v68 + v82 + v83 + *(result + 2 * v79);
        *(result + 2 * v79) = v69 + v81 + v82 + v83;
        v85 = v84 + *(v62 + 2 * v79);
        *(v62 + 2 * v79) = v84;
        v86 = v85 + *(v60 + 2 * v79);
        *(v60 + 2 * v79) = v85;
        *&v13[6 * v14 + 4 + 2 * v79++] = v86;
      }

      while (a7 != v79);
      v87 = &v64[v79];
      v88 = (a7 + 2);
    }

    if (v198 <= v88)
    {
      v22 = v70;
      v21 = v69;
      v20 = v68;
      v19 = v67;
    }

    else
    {
      v89 = &v13[2 * v88];
      v90 = a7 + 4 - v88;
      do
      {
        v22 = *(v87 - 1);
        v21 = v70 + v22;
        v20 = v70 + v22 + v69;
        v19 = v20 + v68;
        v91 = v20 + v68 + v67;
        v92 = v91 + *v89;
        *v89 = v91;
        v93 = *&v89[2 * v14];
        *&v89[2 * v14] = v92;
        v94 = v92 + v93;
        v95 = v94 + *&v89[4 * v14];
        *&v89[4 * v14] = v94;
        *&v89[6 * v14] = v95;
        v89 += 2;
        v67 = v19;
        v68 = v20;
        v69 = v70 + v22;
        v70 = v22;
        --v90;
      }

      while (v90);
    }

    v61 = 0;
    a6 = &v64[a9];
  }

  while ((v65 & 1) != 0);
  v96 = 0;
  v97 = 0;
  if (a8 >> 1 >= a4)
  {
    v98 = a4;
  }

  else
  {
    v98 = a8 >> 1;
  }

  v99 = 1;
  v100 = 2;
  v192 = v98;
  if (a8 >= 3 && v98)
  {
    v196 = 0;
    v96 = 0;
    v97 = 0;
    v101 = v13 + 4;
    v102 = 2;
    v103 = 2 - a7;
    v99 = 1;
    v104 = &v13[4 * v14 + 4];
    v105 = &v13[2 * v14 + 4];
    do
    {
      v106 = 0;
      v64 = a6;
      v107 = 1;
      v108 = v19;
      v109 = v20;
      v110 = v21;
      v111 = v22;
      do
      {
        v112 = v111;
        v113 = v110;
        v114 = v109;
        v115 = v108;
        v116 = v107;
        v111 = *v64;
        v110 = v112 + v111;
        v109 = v112 + v111 + v113;
        v108 = v109 + v114;
        v117 = v109 + v114 + v115 + *&v13[2 * v106];
        *&v13[2 * v106] = v110 + v113 + v114 + v115;
        v118 = v117 + *&v15[2 * v106];
        *&v15[2 * v106] = v117;
        v119 = v118 + *&v16[2 * v106];
        *&v16[2 * v106] = v118;
        *&v17[2 * v106] = v119;
        v106 = 1;
        v107 = 0;
      }

      while ((v116 & 1) != 0);
      for (i = 0; i != 2; ++i)
      {
        v121 = v111;
        v122 = v110;
        v123 = v109;
        v111 = v64[i];
        v124 = v108;
        v110 = v121 + v111;
        v109 = v121 + v111 + v122;
        v108 = v109 + v123;
        v125 = v109 + v123 + v124 + *&v101[2 * i];
        *&v101[2 * i] = v110 + v122 + v123 + v124;
        v126 = v125 + *(v105 + 2 * i);
        *(v105 + 2 * i) = v125;
        v127 = v126 + *(v104 + 2 * i);
        *(v104 + 2 * i) = v126;
        *&v13[6 * v14 + 4 + 2 * i] = v127;
      }

      v128 = v64 + 2;
      if (v99)
      {
        v129 = a2 + a5;
      }

      else
      {
        v129 = a2;
      }

      if (v99)
      {
        v97 = a2;
        v96 = 0;
        v130 = v196 + 1;
      }

      else
      {
        v130 = v196;
      }

      v196 = v130;
      v131 = 1;
      if (v197 < 5)
      {
        v141 = 4;
      }

      else
      {
        v132 = 4;
        while (v199 > v96)
        {
          v133 = *v128;
          v134 = v111 + v133;
          v135 = v111 + v133 + v110;
          v136 = v135 + v109;
          v137 = *&v13[2 * v132];
          *&v13[2 * v132] = v135 + v109 + v108;
          v138 = v135 + v109 + v108 + v137;
          v139 = v138 + *&v15[2 * v132];
          *&v15[2 * v132] = v138;
          v140 = v139 + *&v16[2 * v132];
          *&v16[2 * v132] = v139;
          if (v99 & v131)
          {
            *(v97 + v96++) = (v140 + *&v17[2 * v132] + 128) >> 8;
          }

          *&v17[2 * v132] = v140;
          ++v128;
          v131 ^= 1u;
          ++v132;
          result = v103 + v132;
          v108 = v135 + v109;
          v109 = v135;
          v110 = v134;
          v111 = v133;
          if (v103 + v132 == 4)
          {
            v111 = v133;
            v110 = v134;
            v109 = v135;
            v108 = v136;
            v131 = a7 ^ 1;
            LODWORD(v132) = a7 + 2;
            break;
          }
        }

        v141 = v132;
      }

      if (v198 <= v141)
      {
        v22 = v111;
        v21 = v110;
        v20 = v109;
        v19 = v108;
      }

      else
      {
        while (v199 > v96)
        {
          v22 = *(v128 - 1);
          v21 = v111 + v22;
          v20 = v111 + v22 + v110;
          v19 = v20 + v109;
          v142 = *&v13[2 * v141];
          *&v13[2 * v141] = v20 + v109 + v108;
          v143 = v20 + v109 + v108 + v142;
          v144 = v143 + *&v15[2 * v141];
          *&v15[2 * v141] = v143;
          v145 = v144 + *&v16[2 * v141];
          *&v16[2 * v141] = v144;
          if (v99 & v131)
          {
            *(v97 + v96++) = (v145 + *&v17[2 * v141] + 128) >> 8;
          }

          *&v17[2 * v141] = v145;
          v131 ^= 1u;
          ++v141;
          v108 = v20 + v109;
          v109 = v20;
          v110 = v21;
          v111 = v22;
          result = v198;
          if (v198 <= v141)
          {
            goto LABEL_66;
          }
        }

        v22 = v111;
        v21 = v110;
        v20 = v109;
        v19 = v108;
      }

LABEL_66:
      v99 ^= 1u;
      ++v102;
      v98 = v192;
      if (v102 >= a8)
      {
        break;
      }

      a6 = &v64[a9];
      a2 = v129;
    }

    while (v192 > v196);
    v100 = v102;
  }

  else
  {
    v129 = a2;
    v196 = 0;
  }

  v194 = a8 + 2;
  if (a8 + 2 > v100 && v98 > v196)
  {
    v191 = a7 ^ 1;
    v146 = v13 + 4;
    v147 = &v13[6 * v14 + 4];
    v148 = 2 - a7;
    LODWORD(result) = v196;
    v149 = &v13[4 * v14 + 4];
    v150 = &v13[2 * v14 + 4];
    do
    {
      v151 = 0;
      v152 = 1;
      v153 = v19;
      v154 = v20;
      v155 = v21;
      v156 = v22;
      do
      {
        v157 = v156;
        v158 = v155;
        v159 = v154;
        v160 = v153;
        v161 = v152;
        v156 = *v64;
        v155 = v157 + v156;
        v154 = v157 + v156 + v158;
        v153 = v154 + v159;
        v162 = v154 + v159 + v160 + *&v13[2 * v151];
        *&v13[2 * v151] = v155 + v158 + v159 + v160;
        v163 = v162 + *&v15[2 * v151];
        *&v15[2 * v151] = v162;
        v164 = v163 + *&v16[2 * v151];
        *&v16[2 * v151] = v163;
        *&v17[2 * v151] = v164;
        v151 = 1;
        v152 = 0;
      }

      while ((v161 & 1) != 0);
      for (j = 0; j != 2; ++j)
      {
        v166 = v156;
        v167 = v155;
        v168 = v154;
        v156 = v64[j];
        v169 = v153;
        v155 = v166 + v156;
        v154 = v166 + v156 + v167;
        v153 = v154 + v168;
        v170 = v154 + v168 + v169 + *&v146[2 * j];
        *&v146[2 * j] = v155 + v167 + v168 + v169;
        v171 = v170 + *(v150 + 2 * j);
        *(v150 + 2 * j) = v170;
        v172 = v171 + *(v149 + 2 * j);
        *(v149 + 2 * j) = v171;
        *(v147 + 2 * j) = v172;
      }

      v173 = (v64 + 2);
      if (v99)
      {
        v174 = v129 + a5;
      }

      else
      {
        v174 = v129;
      }

      if (v99)
      {
        v97 = v129;
        v96 = 0;
        result = (result + 1);
      }

      else
      {
        result = result;
      }

      v175 = 1;
      if (v197 < 5)
      {
        v185 = 4;
      }

      else
      {
        v176 = 4;
        while (v199 > v96)
        {
          v177 = *(v173 + v176 - 4);
          v178 = v156 + v177;
          v179 = v156 + v177 + v155;
          v180 = v179 + v154;
          v181 = *&v13[2 * v176];
          *&v13[2 * v176] = v179 + v154 + v153;
          v182 = v179 + v154 + v153 + v181;
          v183 = v182 + *&v15[2 * v176];
          *&v15[2 * v176] = v182;
          v184 = v183 + *&v16[2 * v176];
          *&v16[2 * v176] = v183;
          if (v175 & v99)
          {
            *(v97 + v96++) = (v184 + *&v17[2 * v176] + 128) >> 8;
          }

          *&v17[2 * v176] = v184;
          v175 ^= 1u;
          ++v176;
          v153 = v179 + v154;
          v154 = v179;
          v155 = v178;
          v156 = v177;
          if (v148 + v176 == 4)
          {
            v173 = &v64[v176 - 2];
            v175 = v191;
            LODWORD(v176) = v197;
            v156 = v177;
            v155 = v178;
            v154 = v179;
            v153 = v180;
            goto LABEL_92;
          }
        }

        v173 = &v64[v176 - 2];
LABEL_92:
        v185 = v176;
      }

      if (v198 <= v185)
      {
        v22 = v156;
        v21 = v155;
        v20 = v154;
        v19 = v153;
      }

      else
      {
        while (v199 > v96)
        {
          v22 = *(v173 - 1);
          v21 = v156 + v22;
          v20 = v156 + v22 + v155;
          v19 = v20 + v154;
          v186 = *&v13[2 * v185];
          *&v13[2 * v185] = v20 + v154 + v153;
          v187 = v20 + v154 + v153 + v186;
          v188 = v187 + *&v15[2 * v185];
          *&v15[2 * v185] = v187;
          v189 = v188 + *&v16[2 * v185];
          *&v16[2 * v185] = v188;
          if (v175 & v99)
          {
            *(v97 + v96++) = (v189 + *&v17[2 * v185] + 128) >> 8;
          }

          *&v17[2 * v185] = v189;
          v175 ^= 1u;
          ++v185;
          v153 = v20 + v154;
          v154 = v20;
          v155 = v21;
          v156 = v22;
          if (v198 <= v185)
          {
            goto LABEL_101;
          }
        }

        v22 = v156;
        v21 = v155;
        v20 = v154;
        v19 = v153;
      }

LABEL_101:
      if (v194 <= ++v100)
      {
        break;
      }

      v99 ^= 1u;
      v129 = v174;
    }

    while (v192 > result);
  }

  return result;
}

void *GaussianScaler_uint16_constructor(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_malloc(0x18uLL, 0x1010040A79CA2DEuLL);
  v5 = v4;
  if (v4)
  {
    *v4 = a1 + 4;
    v4[1] = a2;
    v6 = malloc_type_malloc(16 * (a1 + 4), 0x100004052888210uLL);
    v5[2] = v6;
    if (!v6)
    {
      free(v5);
      return 0;
    }
  }

  return v5;
}

void GaussianScaler_uint16_destructor(void *a1)
{
  if (a1)
  {
    v2 = a1[2];
    if (v2)
    {
      free(v2);
    }

    free(a1);
  }
}

uint64_t GaussianScaler_uint16_downsample(uint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unsigned __int16 *a6, unint64_t a7, unint64_t a8, unint64_t a9)
{
  v193 = a9 >> 1;
  v12 = a7 >> 1;
  if (a7 >> 1 >= a3)
  {
    v12 = a3;
  }

  v203 = v12;
  v13 = a1[2];
  v14 = *a1;
  v15 = &v13[4 * *a1];
  v16 = &v15[4 * *a1];
  v17 = &v16[4 * *a1];
  v18 = a7 + 4;
  v19 = 4 * (a7 + 4);
  bzero(v13, v19);
  bzero(v15, v19);
  bzero(v16, v19);
  bzero(v17, v19);
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = v13 + 8;
  v25 = *a6;
  v202 = a7 + 2;
  v26 = -2;
  v27 = &v13[8 * v14 + 8];
  v28 = &v13[4 * v14 + 8];
  do
  {
    v29 = 0;
    v30 = 1;
    do
    {
      v31 = v22;
      v32 = v21;
      v33 = v20;
      v34 = v30;
      v22 = v23 + v25;
      v21 = v23 + v25 + v31;
      v20 = v21 + v32;
      v35 = v21 + v32 + v33 + *&v13[4 * v29];
      *&v13[4 * v29] = v21 + v32 + v33;
      v36 = v35 + *&v15[4 * v29];
      *&v15[4 * v29] = v35;
      v37 = *&v16[4 * v29];
      *&v16[4 * v29] = v36;
      *&v17[4 * v29] = v36 + v37;
      v29 = 1;
      v23 = v25;
      v30 = 0;
    }

    while ((v34 & 1) != 0);
    if (v202 < 3)
    {
      v23 = v25;
      v47 = a6;
      v48 = 2;
    }

    else
    {
      v38 = 0;
      v39 = 0;
      v23 = v25;
      do
      {
        v40 = v23;
        v41 = v22;
        v42 = v21;
        v43 = v20;
        v23 = a6[v39];
        v22 = v40 + v23;
        v21 = v40 + v23 + v41;
        v20 = v21 + v42;
        v44 = v21 + v42 + v43 + *&v24[4 * v39];
        *&v24[4 * v39] = v21 + v42 + v43;
        v45 = v44 + *(v28 + 4 * v39);
        *(v28 + 4 * v39) = v44;
        v46 = *(v27 + 4 * v39);
        *(v27 + 4 * v39) = v45;
        *&v13[12 * v14 + 8 + 4 * v39++] = v45 + v46;
        v38 -= 2;
      }

      while (a7 != v39);
      v47 = &a6[v38 / 0xFFFFFFFFFFFFFFFELL];
      v48 = (a7 + 2);
    }

    v49 = v18 - v48;
    if (v18 > v48)
    {
      v50 = *(v47 - 1);
      v51 = &v13[4 * v48];
      do
      {
        v52 = v22;
        v53 = v21;
        v54 = v20;
        v22 = v23 + v50;
        v21 = v23 + v50 + v52;
        v20 = v21 + v53;
        v55 = v21 + v53 + v54 + *v51;
        *v51 = v21 + v53 + v54;
        v56 = v55 + *&v51[4 * v14];
        *&v51[4 * v14] = v55;
        v57 = *&v51[8 * v14];
        *&v51[8 * v14] = v56;
        *&v51[12 * v14] = v56 + v57;
        v51 += 4;
        v23 = v50;
        --v49;
      }

      while (v49);
      v23 = v50;
    }
  }

  while (!__CFADD__(v26++, 1));
  v197 = v193;
  v59 = &a6[v193];
  v60 = v13 + 8;
  v61 = &v13[8 * v14 + 8];
  v62 = 1;
  v63 = &v13[4 * v14 + 8];
  v201 = v18;
  do
  {
    v64 = 0;
    v65 = v23;
    v66 = v62;
    v67 = v59;
    v68 = a6;
    v23 = *a6;
    v69 = 1;
    do
    {
      v70 = v22;
      v71 = v21;
      v72 = v20;
      v73 = v69;
      v22 = v65 + v23;
      v21 = v65 + v23 + v70;
      v20 = v21 + v71;
      v74 = v21 + v71 + v72 + *&v13[4 * v64];
      *&v13[4 * v64] = v21 + v71 + v72;
      v75 = v74 + *&v15[4 * v64];
      *&v15[4 * v64] = v74;
      v76 = *&v16[4 * v64];
      *&v16[4 * v64] = v75;
      *&v17[4 * v64] = v75 + v76;
      v64 = 1;
      v65 = v23;
      v69 = 0;
    }

    while ((v73 & 1) != 0);
    if (v202 < 3)
    {
      v86 = v68;
      v87 = 2;
    }

    else
    {
      v77 = 0;
      v78 = 0;
      do
      {
        v79 = v23;
        v80 = v22;
        v81 = v21;
        v82 = v20;
        v23 = v68[v78];
        v22 = v79 + v23;
        v21 = v79 + v23 + v80;
        v20 = v21 + v81;
        v83 = v21 + v81 + v82 + *&v60[4 * v78];
        *&v60[4 * v78] = v21 + v81 + v82;
        v84 = v83 + *(v63 + 4 * v78);
        *(v63 + 4 * v78) = v83;
        v85 = *(v61 + 4 * v78);
        *(v61 + 4 * v78) = v84;
        *&v13[12 * v14 + 8 + 4 * v78++] = v84 + v85;
        v77 -= 2;
      }

      while (a7 != v78);
      v86 = &v68[v77 / 0xFFFFFFFFFFFFFFFELL];
      v87 = (a7 + 2);
    }

    if (v201 > v87)
    {
      v88 = *(v86 - 1);
      v89 = &v13[4 * v87];
      v90 = a7 + 4 - v87;
      do
      {
        v91 = v22;
        v92 = v21;
        v93 = v20;
        v22 = v23 + v88;
        v21 = v23 + v88 + v91;
        v20 = v21 + v92;
        v94 = v21 + v92 + v93 + *v89;
        *v89 = v21 + v92 + v93;
        v95 = v94 + *&v89[4 * v14];
        *&v89[4 * v14] = v94;
        v96 = *&v89[8 * v14];
        *&v89[8 * v14] = v95;
        *&v89[12 * v14] = v95 + v96;
        v89 += 4;
        v23 = v88;
        --v90;
      }

      while (v90);
      v23 = v88;
    }

    v62 = 0;
    a6 = &v68[v197];
    v59 = &v67[v197];
  }

  while ((v66 & 1) != 0);
  v97 = 0;
  result = 0;
  v196 = a5 >> 1;
  if (a8 >> 1 >= a4)
  {
    v99 = a4;
  }

  else
  {
    v99 = a8 >> 1;
  }

  v100 = 1;
  v101 = 2;
  v194 = v99;
  if (a8 >= 3 && v99)
  {
    v200 = 0;
    v97 = 0;
    result = 0;
    v102 = v13 + 8;
    v103 = 2;
    v100 = 1;
    v104 = &v13[8 * v14 + 8];
    v105 = &v13[4 * v14 + 8];
    do
    {
      v106 = 0;
      v68 = v67;
      v107 = *v67;
      v108 = 1;
      v109 = v20;
      v110 = v21;
      v111 = v22;
      do
      {
        v112 = v111;
        v113 = v110;
        v114 = v109;
        v115 = v108;
        v111 = v23 + v107;
        v110 = v23 + v107 + v112;
        v109 = v110 + v113;
        v116 = v110 + v113 + v114 + *&v13[4 * v106];
        *&v13[4 * v106] = v110 + v113 + v114;
        v117 = v116 + *&v15[4 * v106];
        *&v15[4 * v106] = v116;
        v118 = *&v16[4 * v106];
        *&v16[4 * v106] = v117;
        *&v17[4 * v106] = v117 + v118;
        v106 = 1;
        v23 = v107;
        v108 = 0;
      }

      while ((v115 & 1) != 0);
      v119 = 0;
      for (i = 0; i != 2; ++i)
      {
        v121 = v107;
        v122 = v111;
        v123 = v110;
        v124 = v109;
        v107 = v68[i];
        v111 = v121 + v107;
        v110 = v121 + v107 + v122;
        v109 = v110 + v123;
        v125 = v110 + v123 + v124 + *&v102[4 * i];
        *&v102[4 * i] = v110 + v123 + v124;
        v126 = v125 + *(v105 + 4 * i);
        *(v105 + 4 * i) = v125;
        v127 = *(v104 + 4 * i);
        *(v104 + 4 * i) = v126;
        *&v13[12 * v14 + 8 + 4 * i] = v126 + v127;
        v119 -= 2;
      }

      v128 = &v68[v119 / 0xFFFFFFFFFFFFFFFELL];
      if (v100)
      {
        v129 = a2 + 2 * v196;
      }

      else
      {
        v129 = a2;
      }

      if (v100)
      {
        result = a2;
        v97 = 0;
        v130 = v200 + 1;
      }

      else
      {
        v130 = v200;
      }

      v200 = v130;
      v131 = 1;
      if (v202 < 5)
      {
        v132 = 4;
      }

      else
      {
        v132 = 4;
        while (v203 > v97)
        {
          v133 = *v128;
          v134 = v107 + v133;
          v135 = v107 + v133 + v111;
          v136 = v135 + v110;
          v137 = *&v13[4 * v132];
          *&v13[4 * v132] = v136 + v109;
          v138 = v136 + v109 + v137;
          v139 = v138 + *&v15[4 * v132];
          *&v15[4 * v132] = v138;
          v140 = v139 + *&v16[4 * v132];
          *&v16[4 * v132] = v139;
          if (v100 & v131)
          {
            *(result + 2 * v97++) = (v140 + *&v17[4 * v132] + 128) >> 8;
          }

          *&v17[4 * v132] = v140;
          ++v128;
          v131 ^= 1u;
          ++v132;
          v109 = v136;
          v110 = v135;
          v111 = v107 + v133;
          v107 = v133;
          if (2 - a7 + v132 == 4)
          {
            v107 = v133;
            v111 = v134;
            v110 = v135;
            v109 = v136;
            v131 = a7 ^ 1;
            LODWORD(v132) = a7 + 2;
            break;
          }
        }

        v132 = v132;
      }

      if (v201 <= v132)
      {
        v23 = v107;
        v22 = v111;
        v21 = v110;
        v20 = v109;
      }

      else
      {
        while (v203 > v97)
        {
          v23 = *(v128 - 1);
          v22 = v107 + v23;
          v21 = v107 + v23 + v111;
          v20 = v21 + v110;
          v141 = *&v13[4 * v132];
          *&v13[4 * v132] = v20 + v109;
          v142 = v20 + v109 + v141;
          v143 = v142 + *&v15[4 * v132];
          *&v15[4 * v132] = v142;
          v144 = v143 + *&v16[4 * v132];
          *&v16[4 * v132] = v143;
          if (v100 & v131)
          {
            *(result + 2 * v97++) = (v144 + *&v17[4 * v132] + 128) >> 8;
          }

          *&v17[4 * v132] = v144;
          v131 ^= 1u;
          ++v132;
          v109 = v20;
          v110 = v21;
          v111 = v107 + v23;
          v107 = v23;
          if (v201 <= v132)
          {
            goto LABEL_63;
          }
        }

        v23 = v107;
        v22 = v111;
        v21 = v110;
        v20 = v109;
      }

LABEL_63:
      v100 ^= 1u;
      ++v103;
      v99 = v194;
      if (v103 >= a8)
      {
        break;
      }

      v67 = &v68[v197];
      a2 = v129;
    }

    while (v194 > v200);
    v101 = v103;
  }

  else
  {
    v129 = a2;
    v200 = 0;
  }

  if (a8 + 2 > v101 && v99 > v200)
  {
    v198 = a7 ^ 1;
    v145 = v13 + 8;
    v146 = &v13[12 * v14 + 8];
    v147 = 2 - a7;
    v148 = v200;
    v149 = &v13[8 * v14 + 8];
    v150 = &v13[4 * v14 + 8];
    do
    {
      v151 = 0;
      v152 = *v68;
      v153 = 1;
      v154 = v20;
      v155 = v21;
      v156 = v22;
      do
      {
        v157 = v156;
        v158 = v155;
        v159 = v154;
        v160 = v153;
        v156 = v23 + v152;
        v155 = v23 + v152 + v157;
        v154 = v155 + v158;
        v161 = v155 + v158 + v159 + *&v13[4 * v151];
        *&v13[4 * v151] = v155 + v158 + v159;
        v162 = v161 + *&v15[4 * v151];
        *&v15[4 * v151] = v161;
        v163 = *&v16[4 * v151];
        *&v16[4 * v151] = v162;
        *&v17[4 * v151] = v162 + v163;
        v151 = 1;
        v23 = v152;
        v153 = 0;
      }

      while ((v160 & 1) != 0);
      v164 = 0;
      for (j = 0; j != 2; ++j)
      {
        v166 = v152;
        v167 = v156;
        v168 = v155;
        v169 = v154;
        v152 = v68[j];
        v156 = v166 + v152;
        v155 = v166 + v152 + v167;
        v154 = v155 + v168;
        v170 = v155 + v168 + v169 + *&v145[4 * j];
        *&v145[4 * j] = v155 + v168 + v169;
        v171 = v170 + *(v150 + 4 * j);
        *(v150 + 4 * j) = v170;
        v172 = *(v149 + 4 * j);
        *(v149 + 4 * j) = v171;
        *(v146 + 4 * j) = v171 + v172;
        v164 -= 2;
      }

      v173 = &v68[v164 / 0xFFFFFFFFFFFFFFFELL];
      v174 = v129 + 2 * v196;
      if (v100)
      {
        result = v129;
      }

      else
      {
        v174 = v129;
      }

      if (v100)
      {
        v97 = 0;
        ++v148;
      }

      v175 = 1;
      if (v202 < 5)
      {
        v186 = 4;
      }

      else
      {
        v176 = 4;
        while (v203 > v97)
        {
          v177 = *v173;
          v178 = v152 + v177;
          v179 = v152 + v177 + v156;
          v180 = v179 + v155;
          v181 = v179 + v155 + v154;
          v182 = *&v13[4 * v176];
          *&v13[4 * v176] = v181;
          v183 = v181 + v182;
          v184 = v183 + *&v15[4 * v176];
          *&v15[4 * v176] = v183;
          v185 = v184 + *&v16[4 * v176];
          *&v16[4 * v176] = v184;
          if (v175 & v100)
          {
            *(result + 2 * v97++) = (v185 + *&v17[4 * v176] + 128) >> 8;
          }

          *&v17[4 * v176] = v185;
          ++v173;
          v175 ^= 1u;
          ++v176;
          v154 = v180;
          v155 = v178 + v156;
          v156 = v152 + v177;
          v152 = v177;
          if (v147 + v176 == 4)
          {
            v152 = v177;
            v156 = v178;
            v155 = v179;
            v154 = v180;
            v175 = v198;
            LODWORD(v176) = v202;
            break;
          }
        }

        v186 = v176;
      }

      if (v201 <= v186)
      {
        v23 = v152;
        v22 = v156;
        v21 = v155;
        v20 = v154;
      }

      else
      {
        while (v203 > v97)
        {
          v23 = *(v173 - 1);
          v22 = v152 + v23;
          v21 = v152 + v23 + v156;
          v20 = v21 + v155;
          v187 = v21 + v155 + v154;
          v188 = *&v13[4 * v186];
          *&v13[4 * v186] = v187;
          v189 = v187 + v188;
          v190 = v189 + *&v15[4 * v186];
          *&v15[4 * v186] = v189;
          v191 = v190 + *&v16[4 * v186];
          *&v16[4 * v186] = v190;
          if (v175 & v100)
          {
            *(result + 2 * v97++) = (v191 + *&v17[4 * v186] + 128) >> 8;
          }

          *&v17[4 * v186] = v191;
          v175 ^= 1u;
          ++v186;
          v154 = v20;
          v155 = v22 + v156;
          v156 = v152 + v23;
          v152 = v23;
          if (v201 <= v186)
          {
            goto LABEL_96;
          }
        }

        v23 = v152;
        v22 = v156;
        v21 = v155;
        v20 = v154;
      }

LABEL_96:
      if (a8 + 2 <= ++v101)
      {
        break;
      }

      v100 ^= 1u;
      v129 = v174;
    }

    while (v194 > v148);
  }

  return result;
}

uint64_t ACTPano_GPUDownscaler_downscale(void *a1, const char *a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v13 = a6;
  v14 = a10;
  v15 = (v13 / v14);
  if (v15 < 3.8 || v15 > 4.2)
  {
    ACTLogMessageImp(2, "GPUDownscaler called with downscale of %f; only 4x supported", v15);
  }

  return objc_msgSend_downsample_to_inputBitDepth_outputBitDepth_(a1, a2, a2, a3, 1, 1);
}

double transformToHomography(double a1, double a2, __n128 a3, float a4, __n128 a5)
{
  v6 = 0;
  v8 = *MEMORY[0x277D860B0];
  v7 = *(MEMORY[0x277D860B0] + 16);
  v5.f32[0] = 1.0 / a5.n128_f32[0];
  a5.n128_u32[1] = HIDWORD(*MEMORY[0x277D860B0]);
  a5.n128_u32[2] = *(MEMORY[0x277D860B0] + 8);
  *&v9 = __PAIR64__(LODWORD(a4), v7.u32[0]);
  DWORD2(v9) = *(MEMORY[0x277D860B0] + 24);
  v5.i32[1] = a5.n128_i32[1];
  v5.i32[2] = a5.n128_i32[2];
  v11 = v7;
  v11.f32[1] = 1.0 / a4;
  v10 = *(MEMORY[0x277D860B0] + 32);
  v11.i32[2] = DWORD2(v9);
  v18 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  do
  {
    *(&v19 + v6 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5, COERCE_FLOAT(v17[v6])), v11, *&v17[v6], 1), v10, v17[v6], 2);
    ++v6;
  }

  while (v6 != 3);
  v12 = 0;
  a5.n128_u32[3] = HIDWORD(v8);
  HIDWORD(v9) = v7.i32[3];
  v13 = v19;
  v14 = v20;
  v15 = v21;
  v17[0] = a5;
  v17[1] = v9;
  v18 = v10;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  do
  {
    *(&v19 + v12 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, COERCE_FLOAT(v17[v12])), v14, *&v17[v12], 1), v15, v17[v12], 2);
    ++v12;
  }

  while (v12 != 3);
  return *v19.i64;
}

uint64_t histogramCalculation(void *a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  bzero(a1, 0x800uLL);
  if (a6 != a2)
  {
    v16 = 0;
    do
    {
      if (a7 != a2)
      {
        v17 = 0;
        v18 = a3;
        do
        {
          ++*(a1 + *(a4 + v18));
          v17 += a2;
          v18 += a8 * a2;
        }

        while (v17 < a7 - a2);
      }

      a4 += a2 * a5;
      v16 += a2;
    }

    while (v16 < a6 - a2);
  }

  return 0;
}

uint64_t getBlackPointOfChannel(uint64_t *a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  bzero(a1, 0x800uLL);
  if (a6 != a2)
  {
    v16 = 0;
    do
    {
      if (a7 != a2)
      {
        v17 = 0;
        v18 = a3;
        do
        {
          ++a1[*(a4 + v18)];
          v17 += a2;
          v18 += a8 * a2;
        }

        while (v17 < a7 - a2);
      }

      a4 += a2 * a5;
      v16 += a2;
    }

    while (v16 < a6 - a2);
  }

  v19 = *a1;
  for (i = 1; i != 256; ++i)
  {
    v19 += a1[i];
    a1[i] = v19;
  }

  v21 = 0;
  do
  {
    v22 = v21;
    v23 = a1[v21++];
  }

  while (v23 <= a1[255] / 0x64uLL);
  return v22;
}

void **FlareDetector_constructor()
{
  v0 = malloc_type_calloc(1uLL, 8uLL, 0x10040436913F5uLL);
  if (!v0 || (v1 = malloc_type_malloc(0x800uLL, 0x100004000313F17uLL), (*v0 = v1) == 0))
  {
    FlareDetector_destructor(v0);
    return 0;
  }

  return v0;
}

void FlareDetector_destructor(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      free(v2);
    }

    free(a1);
  }
}

BOOL FlareDetector_isFlareInBlock(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  BlackPointOfChannel = getBlackPointOfChannel(*a1, 8u, 0, a2, a3, a5, a4, 1u);
  result = 0;
  if (BlackPointOfChannel >= 0xA)
  {
    return ((getBlackPointOfChannel(*a1, 4u, 0, a6, a7, a9, a8, 2u) + (BlackPointOfChannel * 0.45)) + -120.0) > 0;
  }

  return result;
}

uint64_t FlareDetector_isFlare(uint64_t **a1, CVPixelBufferRef pixelBuffer)
{
  CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(pixelBuffer, 0);
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(pixelBuffer, 0);
  v6 = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 1uLL);
  v7 = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 1uLL);
  v8 = CVPixelBufferGetHeightOfPlane(pixelBuffer, 1uLL);
  pixelBuffera = pixelBuffer;
  v20 = CVPixelBufferGetWidthOfPlane(pixelBuffer, 1uLL);
  v9 = 0;
  v10 = HeightOfPlane >> 2;
  v11 = v8 >> 2;
  v12 = BytesPerRowOfPlane;
  v13 = v10 * BytesPerRowOfPlane;
  v14 = v7;
  v15 = (v8 >> 2) * v7;
  v16 = 4;
  while (1)
  {
    v9 += FlareDetector_isFlareInBlock(a1, BaseAddressOfPlane, v12, WidthOfPlane, v10, v6, v14, v20, v11);
    if (v9 > 2)
    {
      break;
    }

    BaseAddressOfPlane += v13;
    v6 += v15;
    if (!--v16)
    {
      v17 = 0;
      goto LABEL_6;
    }
  }

  v17 = 1;
LABEL_6:
  CVPixelBufferUnlockBaseAddress(pixelBuffera, 1uLL);
  return v17;
}

uint64_t FlareDetector_flareProbability(int a1, unsigned int a2, unsigned int a3)
{
  result = 0;
  if ((a1 - 201) >= 0xFFFFFF69 && a2 - a3 - 51 >= 0xFFFFFF9B)
  {
    return KFlareLut[a3 + a2];
  }

  return result;
}

uint64_t FlareDetector_avgFlareProbability(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = a2 + 1;
    do
    {
      if ((v3 & 1) == 0)
      {
        v8 = *a2++;
        v5 = v8;
        v9 = *v7++;
        v4 = v9;
      }

      v10 = 0;
      if (*(a1 + v3) - 201 >= 0xFFFFFF69 && v5 - v4 - 51 >= 0xFFFFFF9B)
      {
        v10 = KFlareLut[v4 + v5];
      }

      v6 += v10;
      ++v3;
    }

    while (a3 != v3);
  }

  else
  {
    v6 = 0;
  }

  if ((v6 / a3) <= 0xF0u)
  {
    return 0;
  }

  else
  {
    return 255;
  }
}

uint64_t Contrast_globalEnhance(__CVBuffer *a1)
{
  v35 = *MEMORY[0x277D85DE8];
  Current = CFAbsoluteTimeGetCurrent();
  CVPixelBufferLockBaseAddress(a1, 0);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
  if (HeightOfPlane)
  {
    v9 = 0;
    v10 = 0;
    v11 = -1;
    v12 = BaseAddressOfPlane;
    do
    {
      if (WidthOfPlane)
      {
        for (i = 0; i != WidthOfPlane; ++i)
        {
          v14 = v12[i];
          if (v14 > v9)
          {
            v9 = v12[i];
          }

          if (v14 < v11)
          {
            v11 = v12[i];
          }
        }
      }

      v12 += BytesPerRowOfPlane;
      ++v10;
    }

    while (v10 != HeightOfPlane);
    v15 = v9;
    v16 = v11;
  }

  else
  {
    v15 = 0.0;
    v16 = 255.0;
  }

  *v7.i32 = v15 - v16;
  if ((v15 - v16) >= 2.0)
  {
    v17 = 0;
    v18 = vdupq_n_s32(0x437F0000u);
    *v7.i32 = 255.0 / *v7.i32;
    *v8.i32 = -(v16 * *v7.i32);
    v19 = vdupq_lane_s32(v7, 0);
    v20 = vdupq_lane_s32(v8, 0);
    v21 = xmmword_23C47A6C0;
    v22 = xmmword_23C47A6D0;
    v23 = xmmword_23C47A6E0;
    v24 = xmmword_23C47A5A0;
    v25.i64[0] = 0x1000000010;
    v25.i64[1] = 0x1000000010;
    do
    {
      v26 = vmlaq_f32(v20, v19, vcvtq_f32_u32(v21));
      v27 = vmlaq_f32(v20, v19, vcvtq_f32_u32(v22));
      v28 = vmlaq_f32(v20, v19, vcvtq_f32_u32(v23));
      v29 = vmlaq_f32(v20, v19, vcvtq_f32_u32(v24));
      *&v34[v17] = vuzp1q_s8(vuzp1q_s16(vcvtq_s32_f32(vbslq_s8(vcgtq_f32(v29, v18), v18, v29)), vcvtq_s32_f32(vbslq_s8(vcgtq_f32(v28, v18), v18, v28))), vuzp1q_s16(vcvtq_s32_f32(vbslq_s8(vcgtq_f32(v27, v18), v18, v27)), vcvtq_s32_f32(vbslq_s8(vcgtq_f32(v26, v18), v18, v26))));
      v17 += 16;
      v24 = vaddq_s32(v24, v25);
      v23 = vaddq_s32(v23, v25);
      v22 = vaddq_s32(v22, v25);
      v21 = vaddq_s32(v21, v25);
    }

    while (v17 != 256);
    if (HeightOfPlane)
    {
      for (j = 0; j != HeightOfPlane; ++j)
      {
        if (WidthOfPlane)
        {
          for (k = 0; k != WidthOfPlane; ++k)
          {
            BaseAddressOfPlane[k] = v34[BaseAddressOfPlane[k]];
          }
        }

        BaseAddressOfPlane += BytesPerRowOfPlane;
      }
    }

    CVPixelBufferUnlockBaseAddress(a1, 0);
    v32 = CFAbsoluteTimeGetCurrent();
    printf("time=%f\n", v32 - Current);
  }

  return 0;
}

uint64_t debugWriteThread()
{
  v21 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = CMSimpleQueueDequeue(*(DerivedStorage + 48));
  if (v1)
  {
    v2 = v1;
    do
    {
      HostTime = ACT_getHostTime();
      valuePtr = 0;
      v4 = *(DerivedStorage + 444);
      if ((v4 & 5) == 1)
      {
        v5 = IOSurfaceCopyValue(v2, @"ID");
        if (v5)
        {
          v6 = v5;
          CFNumberGetValue(v5, kCFNumberIntType, &valuePtr);
          CFRelease(v6);
        }

        ACTLogMessageImp(1, "{DebugWrite%d|BeginTS:%.3f}\n", valuePtr, HostTime);
        __sprintf_chk(v20, 0, 0x100uLL, "slice%3d.jpeg", valuePtr);
        v18 = 0;
        v7 = IOSurfaceCopyValue(v2, @"jpegSize");
        if (v7)
        {
          v8 = v7;
          CFNumberGetValue(v7, kCFNumberIntType, &v18);
          CFRelease(v8);
        }

        if (archive_position_compressed() + v18 < 14000000 || (*(DerivedStorage + 444) & 0x20) != 0)
        {
          IOSurfaceLock(v2, 1u, 0);
          v10 = *(DerivedStorage + 736);
          BaseAddress = IOSurfaceGetBaseAddress(v2);
          _addFileWithData(v10, v20, BaseAddress, v18);
          IOSurfaceUnlock(v2, 1u, 0);
        }

        else
        {
          ACTLogMessageImp(1, "{DebugWrite%d|Slice not written due to size constraint}\n", valuePtr);
        }
      }

      else if ((v4 & 6) == 2)
      {
        Attachment = CVBufferGetAttachment(v2, @"ID", 0);
        if (Attachment)
        {
          CFNumberGetValue(Attachment, kCFNumberIntType, &valuePtr);
        }

        ACTLogMessageImp(1, "{DebugWrite%d|BeginTS:%.3f}\n", valuePtr, HostTime);
        __sprintf_chk(v20, 0, 0x100uLL, "%s/slice%3d.yuvf", (DerivedStorage + 456), valuePtr);
        addCVPixelBufferToPanoArchive(*(DerivedStorage + 736), v20, v2, 0);
      }

      v12 = (ACT_getHostTime() - HostTime) * 1000.0;
      v13 = valuePtr;
      v14 = ACT_getHostTime();
      ACTLogMessageImp(1, "{DebugWrite%d|took:%.3f} {DebugWrite%d|BufferReleaseTS:%.3f}\n", v13, v12, v13, v14);
      v15 = valuePtr;
      v16 = ACT_getHostTime();
      ACTLogMessageImp(1, "{DebugWrite%d|EndTS:%.3f}\n", v15, v16);
      CFRelease(v2);
      v2 = CMSimpleQueueDequeue(*(DerivedStorage + 48));
    }

    while (v2);
  }

  return 0;
}

uint64_t _addFileWithData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  archive_entry_new();
  archive_entry_set_pathname();
  archive_entry_set_size();
  archive_entry_set_filetype();
  archive_entry_set_perm();
  time(0);
  archive_entry_set_mtime();
  if (archive_write_header())
  {
    v6 = "Failed to write archive header for %@ with status %d: %s";
LABEL_6:
    v8 = archive_errno();
    v9 = archive_error_string();
    ACTLogMessageImp(4, v6, a2, v8, v9);
    v7 = 0xFFFFFFFFLL;
    goto LABEL_7;
  }

  if (archive_write_data() != a4)
  {
    v6 = "Failed to write archive data for %@ with status %d: %s";
    goto LABEL_6;
  }

  v7 = 0;
LABEL_7:
  archive_entry_free();
  return v7;
}

uint64_t noiseReductionThread()
{
  v18 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 424);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      v3 = DerivedStorage;
      v15 = 0;
      v16 = 0;
      v13 = 0;
      v14 = 0;
      do
      {
        FigSimpleMutexLock();
        v4 = *(v3 + 928);
        v15 = *(v3 + 936);
        v16 = v4;
        v5 = *(v3 + 944);
        v13 = *(v3 + 952);
        v14 = v5;
        *(v3 + 996) = *(v3 + 992);
        FigSimpleMutexUnlock();
        HostTime = ACT_getHostTime();
        v7 = v2[40];
        v2[40] = v7 + 1;
        __sprintf_chk(v17, 0, 0x20uLL, "NoiseReduction%d", v7);
        ACTLogMessageImp(1, "{%s|inRect:%d,%d,%d,%d} {%s|BeginTS:%.3f}\n", v17, v16, v15, v14, v13, v17, HostTime);
        setACTNoiseReductionCropRect(v2, &v16, &v15, &v14, &v13, *(v3 + 1000));
        TargetContext = getTargetContext(*(v3 + 424));
        ACTNoiseReduction(v2, TargetContext);
        v9 = ACT_getHostTime();
        ACTLogMessageImp(1, "{%s|outRect:%d,%d,%d,%d} {%s|took:%.3f} {%s|EndTS:%.3f}\n", v17, v16, v15, v14, v13, v17, v9 - HostTime, v17, v9);
        FigSimpleMutexLock();
        *(v3 + 960) = v16;
        *(v3 + 968) = v15;
        *(v3 + 976) = v14;
        *(v3 + 984) = v13;
        if (*(v3 + 1000) == 1)
        {
          FigSemaphoreSignal();
          *(v3 + 1000) = 0;
        }

        v10 = *(v3 + 996);
        v11 = *(v3 + 992);
        FigSimpleMutexUnlock();
      }

      while (v10 != v11);
    }
  }

  return 0;
}

uint64_t previewThread()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = CMSimpleQueueDequeue(*(DerivedStorage + 40));
  if (v1)
  {
    v2 = v1;
    v148 = *MEMORY[0x277CF4910];
    v146 = *MEMORY[0x277CF4EC0];
    v145 = *MEMORY[0x277CF49D8];
    v144 = *MEMORY[0x277CF49A8];
    v143 = *MEMORY[0x277CF49B0];
    v142 = *MEMORY[0x277CF49A0];
    v141 = *MEMORY[0x277CF4978];
    v140 = *MEMORY[0x277CF4998];
    v3 = 1.0;
    v147 = *MEMORY[0x277CF5C30];
    cf2 = *MEMORY[0x277CF3D00];
    v4 = *MEMORY[0x277CBECE8];
    v149 = *MEMORY[0x277CBECE8];
    while (1)
    {
      valuePtr = -1;
      v155 = 0;
      v156 = 0;
      v5 = *(DerivedStorage + 197);
      v6 = v5 == 0;
      if (*(DerivedStorage + 198))
      {
        CFRelease(v2);
        return 0;
      }

      HostTime = ACT_getHostTime();
      v8 = CFGetTypeID(v2);
      TypeID = CMSampleBufferGetTypeID();
      if (v8 != TypeID)
      {
        Value = CFDictionaryGetValue(v2, @"ID");
        if (Value)
        {
          CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
        }

        v11 = CFDictionaryGetValue(v2, @"MetadataDictionary");
        v12 = v11;
        if (v11)
        {
          v13 = CFDictionaryGetValue(v11, @"ExposureTime");
          if (v13)
          {
            CFNumberGetValue(v13, kCFNumberFloat32Type, &v155 + 4);
          }
        }

        v14 = CFDictionaryGetValue(v2, @"ACTPreviewAssemblyPositionXMetadataKey");
        if (v14)
        {
          CFNumberGetValue(v14, kCFNumberIntType, &v156 + 4);
          HIDWORD(v156) = vcvts_n_s32_f32(ceilf(*(DerivedStorage + 316) * SHIDWORD(v156)), 2uLL);
        }

        v15 = CFDictionaryGetValue(v2, @"ACTPreviewAssemblyPositionYMetadataKey");
        if (v15)
        {
          CFNumberGetValue(v15, kCFNumberIntType, &v156);
          v16 = v156;
        }

        else
        {
          v16 = *(DerivedStorage + 272);
        }

        LODWORD(v156) = vcvtps_s32_f32(*(DerivedStorage + 320) * v16);
        v22 = *(DerivedStorage + 812);
        if (*(&v155 + 1) >= v22)
        {
          v24 = *(DerivedStorage + 804);
        }

        else
        {
          v23 = *(DerivedStorage + 816);
          if (*(&v155 + 1) <= v23)
          {
            v24 = *(DerivedStorage + 808);
          }

          else
          {
            v24 = *(DerivedStorage + 808) + ((*(DerivedStorage + 804) - *(DerivedStorage + 808)) * ((*(&v155 + 1) - v23) / (v22 - v23)));
          }
        }

        v25 = v24 / *(&v155 + 1);
        if ((*(DerivedStorage + 820) * 30.0) < (v24 / *(&v155 + 1)))
        {
          v25 = *(DerivedStorage + 820) * 30.0;
        }

        *(DerivedStorage + 796) = *(DerivedStorage + 316) * v25;
        v158[0] = 0.033333;
        v26 = CFDictionaryGetValue(v2, @"ACTRegistrationTransformationKey");
        if (v26)
        {
          BytePtr = CFDataGetBytePtr(v26);
          v28 = CFDictionaryGetValue(v2, @"ACTDeltaPTSAttachmentKey");
          if (v28)
          {
            CFNumberGetValue(v28, kCFNumberFloatType, v158);
          }

          v29 = *(BytePtr + 5);
          v30 = v29;
          v31 = fabsf(v30);
          v32 = *(DerivedStorage + 344);
          if (v31 >= v32)
          {
            v33 = 4;
            goto LABEL_39;
          }

          if (v31 > ((v3 - *(DerivedStorage + 828)) * v32))
          {
            v33 = 3;
            goto LABEL_39;
          }

          if (v31 <= ((v3 - *(DerivedStorage + 836)) * v32))
          {
            if (v31 > (v24 / (*(&v155 + 1) * (v3 / v158[0]))))
            {
              LODWORD(v155) = 1;
            }
          }

          else
          {
            v33 = 2;
LABEL_39:
            LODWORD(v155) = v33;
          }

          v35 = *(DerivedStorage + 164);
          if (v35 == 2)
          {
            if (v29 > 0.0)
            {
              goto LABEL_43;
            }
          }

          else if (v35 == 1 && v29 < 0.0)
          {
LABEL_43:
            LODWORD(v155) = ~v155;
          }

          v36 = (v3 - *(DerivedStorage + 836)) * v32;
          if ((v24 / (*(&v155 + 1) * (v3 / v158[0]))) < v36)
          {
            v36 = v24 / (*(&v155 + 1) * (v3 / v158[0]));
          }

          v34 = v31 / v36;
          ModelSpecificName = FigCaptureGetModelSpecificName();
          v38 = CFEqual(ModelSpecificName, @"D84");
          if (v12)
          {
            if (v38)
            {
              v39 = CFDictionaryGetValue(v12, v147);
              if (v39)
              {
                if (CFEqual(v39, cf2))
                {
                  v34 = v34 * 0.8;
                }
              }
            }
          }

          if (*(DerivedStorage + 448))
          {
            ACTLogMessageImp(1, "{Preview%d|previewMotionSpeedScale:%f} {Preview%d|xDeviationCondition:%d} {Preview%d|exposureTime:%f} {Preview%d|deltaPTS:%f} {Preview%d|currentGhostingSpeedScale:%f}\n", valuePtr, v34, valuePtr, v155, valuePtr, *(&v155 + 1), valuePtr, v158[0], valuePtr, v24);
          }
        }

        else
        {
          v34 = 0.0;
        }

        CFRelease(v2);
        v6 = 0;
        goto LABEL_108;
      }

      ImageBuffer = CMSampleBufferGetImageBuffer(v2);
      v18 = ImageBuffer;
      if (*(DerivedStorage + 448) && *(DerivedStorage + 197))
      {
        Attachment = CVBufferGetAttachment(ImageBuffer, @"ID", 0);
        if (Attachment)
        {
          CFNumberGetValue(Attachment, kCFNumberIntType, &valuePtr);
          v21 = v5 == 0;
          v20 = valuePtr;
          v21 = v21 || valuePtr == 0;
          v6 = v21;
        }

        else
        {
          v20 = valuePtr;
        }

        v40 = ACT_getHostTime();
        ACTLogMessageImp(1, "{Preview%d|M2MBeginTS:%.3f}\n", v20, v40);
      }

      Width = CVPixelBufferGetWidth(v18);
      Height = CVPixelBufferGetHeight(v18);
      v43 = CVPixelBufferGetWidth(*(DerivedStorage + 120));
      v44 = CVPixelBufferGetHeight(*(DerivedStorage + 120));
      v45 = 0.0;
      if (v6)
      {
        v46 = 0.0;
      }

      else
      {
        v47 = *(DerivedStorage + 164);
        Height = Height * 0.5;
        v48 = v44 * 0.5;
        v45 = v47 == 1 ? 0.0 : v48;
        v46 = v47 == 1 ? 0.0 : Height;
      }

      v49 = *(DerivedStorage + 856);
      if (v49)
      {
        ACTPano_GPUDownscaler_downscale(v49, v18, *(DerivedStorage + 120), 0.0, v46, Width, Height, 0.0, v45, v43);
      }

      else
      {
        scaleCropAndRotatePixelBuffer(*(DerivedStorage + 56), v18, *(DerivedStorage + 120));
      }

      CVPixelBufferGetWidth(*(DerivedStorage + 128));
      CVPixelBufferGetHeight(*(DerivedStorage + 128));
      scaleCropAndRotatePixelBuffer(*(DerivedStorage + 56), *(DerivedStorage + 120), *(DerivedStorage + 128));
      v3 = 1.0;
      if (valuePtr >= 1)
      {
        v50 = CVBufferGetAttachment(v18, @"MetadataDictionary", 0);
        if (v50)
        {
          v51 = v50;
          v52 = CFDictionaryGetValue(v50, v148);
          if (v52)
          {
            v158[0] = 0.0;
            CFNumberGetValue(v52, kCFNumberIntType, v158);
            v53 = LODWORD(v158[0]);
            v54 = CFDictionaryGetValue(v51, v146);
            v55 = v54 && CFBooleanGetValue(v54) != 0;
            if ((256.0 / v53) != 1.0 || *(DerivedStorage + 792) == 1)
            {
              break;
            }
          }
        }
      }

LABEL_97:
      v65 = CMSampleBufferGetImageBuffer(v2);
      v66 = CMGetAttachment(v65, @"MetadataDictionary", 0);
      if (v66)
      {
        v67 = CFDictionaryGetValue(v66, @"ExposureTime");
        if (v67)
        {
          CFNumberGetValue(v67, kCFNumberFloat32Type, &v155 + 4);
        }
      }

      if (*(DerivedStorage + 448) && *(DerivedStorage + 197))
      {
        v68 = valuePtr;
        v69 = ACT_getHostTime();
        ACTLogMessageImp(1, "{Preview%d|BufferReleaseTS:%.3f}\n", v68, v69);
        v70 = valuePtr;
        v71 = ACT_getHostTime();
        ACTLogMessageImp(1, "{Preview%d|M2MStage1took:%.3f}\n", v70, (v71 - HostTime) * 1000.0);
      }

      HostTime = ACT_getHostTime();
      CVPixelBufferGetWidth(*(DerivedStorage + 136));
      CVPixelBufferGetHeight(*(DerivedStorage + 136));
      scaleAndRotatePixelBuffer(*(DerivedStorage + 72), *(DerivedStorage + 128), *(DerivedStorage + 136));
      if (*(DerivedStorage + 448) && *(DerivedStorage + 197))
      {
        v72 = valuePtr;
        v73 = ACT_getHostTime();
        ACTLogMessageImp(1, "{Preview%d|M2MStage2took:%.3f}\n", v72, (v73 - HostTime) * 1000.0);
      }

      CFRelease(v2);
      if (*(DerivedStorage + 197))
      {
        goto LABEL_204;
      }

      v34 = 0.0;
LABEL_108:
      if (*(DerivedStorage + 448) && *(DerivedStorage + 197))
      {
        ACTLogMessageImp(1, "{Preview%d|BeginTS:%.3f}\n", valuePtr, HostTime);
      }

      v74 = CFNumberCreate(v4, kCFNumberIntType, &v155);
      CVBufferSetAttachment(*(DerivedStorage + 80), @"ACTPanoramaPreviewXDeviation", v74, kCVAttachmentMode_ShouldPropagate);
      CFRelease(v74);
      *(DerivedStorage + 276) = v34;
      BaseAddress = CVPixelBufferGetBaseAddress(*(DerivedStorage + 80));
      BytesPerRow = CVPixelBufferGetBytesPerRow(*(DerivedStorage + 80));
      v77 = CVPixelBufferGetWidth(*(DerivedStorage + 80));
      v78 = CVPixelBufferGetHeight(*(DerivedStorage + 80));
      v79 = CVPixelBufferGetHeight(*(DerivedStorage + 136));
      v80 = *(DerivedStorage + 144);
      if (v8 != TypeID && v80 && !*(DerivedStorage + 160))
      {
        v81 = CVPixelBufferGetBaseAddress(*(DerivedStorage + 80));
        DataSize = CVPixelBufferGetDataSize(*(DerivedStorage + 80));
        bzero(v81, DataSize);
        CVPixelBufferLockBaseAddress(*(DerivedStorage + 144), 1uLL);
        if (*(DerivedStorage + 164) == 1)
        {
          v83 = v156;
          v84 = v78 - v156;
          if (v79 < v84)
          {
            v84 = v79;
          }

          if (v84)
          {
            for (i = 0; i < v86; ++i)
            {
              if (i + v83 >= 0)
              {
                CVPixelBufferGetBaseAddress(*(DerivedStorage + 144));
                v83 = v156;
              }

              v86 = v78 - v83;
              if (v79 < v86)
              {
                v86 = v79;
              }
            }
          }
        }

        else
        {
          v87 = v156;
          v88 = v78 - v156;
          if (v78 - v156 >= v79)
          {
            v88 = v79;
          }

          if (v88 >= 1)
          {
            for (j = 0; j < v90; ++j)
            {
              if (v87 + j >= 0)
              {
                CVPixelBufferGetBaseAddress(*(DerivedStorage + 144));
                v87 = v156;
              }

              v90 = v78 - v87;
              if (v78 - v87 >= v79)
              {
                v90 = v79;
              }
            }
          }
        }

        CVPixelBufferUnlockBaseAddress(*(DerivedStorage + 144), 1uLL);
        CVPixelBufferRelease(*(DerivedStorage + 144));
        v80 = 0;
        *(DerivedStorage + 144) = 0;
      }

      if (v8 != TypeID && valuePtr)
      {
        goto LABEL_142;
      }

      v91 = *(DerivedStorage + 164);
      if (v91 == 2)
      {
        HIDWORD(v156) = 4 * v77;
        if (!v80)
        {
          goto LABEL_141;
        }

        goto LABEL_140;
      }

      if (v91 != 1)
      {
        v121 = CVPixelBufferGetWidth(*(DerivedStorage + 80));
        HIDWORD(v156) = 2 * (v121 - CVPixelBufferGetWidth(*(DerivedStorage + 136)));
        v80 = *(DerivedStorage + 144);
        if (!v80)
        {
          goto LABEL_141;
        }

LABEL_140:
        CVPixelBufferRelease(v80);
        *(DerivedStorage + 144) = 0;
        goto LABEL_141;
      }

      HIDWORD(v156) = 0;
      if (v80)
      {
        goto LABEL_140;
      }

LABEL_141:
      *(DerivedStorage + 144) = CVPixelBufferRetain(*(DerivedStorage + 136));
      v6 = 1;
LABEL_142:
      CVPixelBufferLockBaseAddress(*(DerivedStorage + 136), 1uLL);
      v92 = CVPixelBufferGetWidth(*(DerivedStorage + 136));
      v93 = CVPixelBufferGetHeight(*(DerivedStorage + 136));
      v94 = CVPixelBufferGetBaseAddress(*(DerivedStorage + 136));
      v95 = CVPixelBufferGetBytesPerRow(*(DerivedStorage + 136));
      v96 = *(DerivedStorage + 164);
      if (v96)
      {
        if (v96 == 1)
        {
          if (v6)
          {
            v97 = 0;
            v98 = 4 * v92;
            v99 = SHIDWORD(v156) / 4;
            *(DerivedStorage + 280) = (SHIDWORD(v156) / 4);
            *(DerivedStorage + 296) = v92;
          }

          else
          {
            v110 = vcvtms_u32_f32(vcvts_n_f32_u64(v92, 1uLL));
            v98 = 4 * (v92 - v110);
            v97 = 4 * v110;
            *(DerivedStorage + 280) = 0;
            v111 = *(DerivedStorage + 296);
            v112 = HIDWORD(v156);
            v113 = 4 * v77 - SHIDWORD(v156);
            if (v98 < v113)
            {
              v113 = v98;
            }

            if (v111 <= ((v113 + SHIDWORD(v156)) >> 2))
            {
              v111 = ((v113 + SHIDWORD(v156)) >> 2);
            }

            *(DerivedStorage + 296) = v111;
            v99 = v112 / 4;
          }

          v114 = v77 - v99;
          if (v98 >= 4 * v114)
          {
            v115 = 4 * v114;
          }

          else
          {
            v115 = v98;
          }

          v116 = v156;
          v117 = v78 - v156;
          if (v78 - v156 >= v93)
          {
            v117 = v93;
          }

          if (v117 >= 1)
          {
            v118 = 0;
            v119 = &v94[v97];
            do
            {
              if (((v118 + v116) & 0x80000000) == 0)
              {
                memcpy(&BaseAddress[BytesPerRow * (v118 + v116) + SHIDWORD(v156)], v119, v115);
                v116 = v156;
              }

              ++v118;
              v120 = v78 - v116;
              if (v78 - v116 >= v93)
              {
                v120 = v93;
              }

              v119 += v95;
            }

            while (v118 < v120);
          }
        }

        else
        {
          if (v6)
          {
            v107 = 4 * v92;
            v108 = SHIDWORD(v156);
            *(DerivedStorage + 280) = (SHIDWORD(v156) / 4);
            v109 = v92;
          }

          else
          {
            v122 = vcvtms_u32_f32(vcvts_n_f32_u64(v92, 1uLL));
            v107 = 4 * v122;
            v123 = *(DerivedStorage + 280);
            v108 = SHIDWORD(v156);
            if (v123 >= ((SHIDWORD(v156) - 4 * v122) >> 2))
            {
              v123 = ((SHIDWORD(v156) - 4 * v122) >> 2);
            }

            *(DerivedStorage + 280) = v123;
            v109 = v77 - v123;
          }

          *(DerivedStorage + 296) = v109;
          if (v107 >= v108)
          {
            v124 = v108;
          }

          else
          {
            v124 = v107;
          }

          v125 = v156;
          v126 = v78 - v156;
          if (v78 - v156 >= v93)
          {
            v126 = v93;
          }

          if (v126 >= 1)
          {
            v127 = 0;
            v128 = -v107;
            do
            {
              if (((v127 + v125) & 0x80000000) == 0)
              {
                memcpy(&BaseAddress[BytesPerRow * (v127 + v125) + SHIDWORD(v156) + v128], v94, v124);
                v125 = v156;
              }

              ++v127;
              v129 = v78 - v125;
              if (v78 - v125 >= v93)
              {
                v129 = v93;
              }

              v94 += v95;
            }

            while (v127 < v129);
          }
        }
      }

      else
      {
        v100 = SHIDWORD(v156) / 4;
        v101 = v77 - SHIDWORD(v156) / 4;
        if (4 * v92 >= 4 * v101)
        {
          v102 = 4 * v101;
        }

        else
        {
          v102 = 4 * v92;
        }

        v103 = v156;
        v104 = v78 - v156;
        if (v78 - v156 >= v93)
        {
          v104 = v93;
        }

        if (v104 >= 1)
        {
          v105 = 0;
          do
          {
            if (((v105 + v103) & 0x80000000) == 0)
            {
              memcpy(&BaseAddress[BytesPerRow * (v105 + v103) + SHIDWORD(v156)], v94, v102);
              v103 = v156;
            }

            ++v105;
            v106 = v78 - v103;
            if (v78 - v103 >= v93)
            {
              v106 = v93;
            }

            v94 += v95;
          }

          while (v105 < v106);
          v100 = SHIDWORD(v156) / 4;
        }

        *(DerivedStorage + 280) = v100;
        *(DerivedStorage + 296) = v92;
      }

      CVPixelBufferUnlockBaseAddress(*(DerivedStorage + 136), 1uLL);
      *(DerivedStorage + 288) = 0;
      *(DerivedStorage + 304) = v78;
      v130 = CMBaseObjectGetDerivedStorage();
      LODWORD(v158[0]) = vcvtms_s32_f32(*(v130 + 272));
      DictionaryRepresentation = CGRectCreateDictionaryRepresentation(*(v130 + 280));
      CVBufferSetAttachment(*(v130 + 80), @"ACTPanoramaPreviewCropRect", DictionaryRepresentation, kCVAttachmentMode_ShouldPropagate);
      CFRelease(DictionaryRepresentation);
      v4 = v149;
      v132 = CFNumberCreate(v149, kCFNumberIntType, v158);
      CVBufferSetAttachment(*(v130 + 80), @"ACTPanoramaPreviewYDeviation", v132, kCVAttachmentMode_ShouldPropagate);
      CFRelease(v132);
      v133 = CFNumberCreate(v149, kCFNumberFloatType, (v130 + 796));
      CVBufferSetAttachment(*(v130 + 80), @"ACTPanoramaPreviewIdealAdvancement", v133, kCVAttachmentMode_ShouldPropagate);
      CFRelease(v133);
      v134 = CFNumberCreate(v149, kCFNumberIntType, (v130 + 164));
      CVBufferSetAttachment(*(v130 + 80), @"ACTPanoramaDefaultDirection", v134, kCVAttachmentMode_ShouldPropagate);
      CFRelease(v134);
      if (*v130)
      {
        (*v130)(*(v130 + 8), 0, *(v130 + 88));
      }

      if (*(DerivedStorage + 448) && *(DerivedStorage + 197))
      {
        v135 = (ACT_getHostTime() - HostTime) * 1000.0;
        v136 = valuePtr;
        v137 = ACT_getHostTime();
        ACTLogMessageImp(1, "{Preview%d|took:%.3f} {Preview%d|EndTS:%.3f}\n", v136, v135, v136, v137);
      }

LABEL_204:
      v2 = CMSimpleQueueDequeue(*(DerivedStorage + 40));
      if (!v2)
      {
        return 0;
      }
    }

    v56 = ACT_getHostTime();
    LODWORD(v158[0]) = 1;
    v153 = 1;
    v154 = 1;
    v151 = 1;
    v152 = 1;
    v150 = 1;
    v57 = CFDictionaryGetValue(v51, v145);
    if (v57)
    {
      CFNumberGetValue(v57, kCFNumberIntType, v158);
    }

    v58 = CFDictionaryGetValue(v51, v144);
    if (v58)
    {
      CFNumberGetValue(v58, kCFNumberIntType, &v154);
    }

    else
    {
      v154 = LODWORD(v158[0]);
    }

    v59 = CFDictionaryGetValue(v51, v143);
    if (v59)
    {
      CFNumberGetValue(v59, kCFNumberIntType, &v153);
    }

    v60 = CFDictionaryGetValue(v51, v142);
    if (v60)
    {
      CFNumberGetValue(v60, kCFNumberIntType, &v152);
    }

    else
    {
      v152 = v153;
    }

    v61 = CFDictionaryGetValue(v51, v141);
    if (v61)
    {
      CFNumberGetValue(v61, kCFNumberIntType, &v151);
    }

    v62 = CFDictionaryGetValue(v51, v140);
    if (v62)
    {
      CFNumberGetValue(v62, kCFNumberIntType, &v150);
      if (!v55)
      {
LABEL_96:
        v63 = valuePtr;
        v64 = ACT_getHostTime();
        ACTLogMessageImp(1, "{Preview%d|exposureBlendingTook:%f}", v63, v64 - v56);
        goto LABEL_97;
      }
    }

    else
    {
      v150 = v151;
      if (!v55)
      {
        goto LABEL_96;
      }
    }

    PixelShuffler_yuv420ExposureMap();
    goto LABEL_96;
  }

  return 0;
}

uint64_t assemblyThread()
{
  v25 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = CMSimpleQueueDequeue(*(DerivedStorage + 32));
  if (v1)
  {
    v2 = v1;
    do
    {
      valuePtr = 0;
      HostTime = ACT_getHostTime();
      v4 = CFGetTypeID(v2);
      if (v4 == CMSampleBufferGetTypeID())
      {
        ImageBuffer = CMSampleBufferGetImageBuffer(v2);
        v6 = cropAndRotateBufferForBlending(*(DerivedStorage + 424), ImageBuffer);
        v7 = ACT_getHostTime();
        Attachment = CVBufferGetAttachment(ImageBuffer, @"ID", 0);
        v9 = Attachment;
        if (Attachment)
        {
          CFNumberGetValue(Attachment, kCFNumberIntType, &valuePtr);
        }

        CMSimpleQueueEnqueue(*(DerivedStorage + 40), v2);
        ACTThreadWakeup();
        ACTLogMessageImp(1, "{Blending%d|cropAndRotateBufferForBlendingTook:%.3f}\n", valuePtr, v7 - HostTime);
        v10 = *(DerivedStorage + 444);
        if ((v10 & 2) != 0 && (v10 & 4) == 0 && valuePtr >= 1)
        {
          CVPixelBufferRetain(v6);
          CVBufferSetAttachment(v6, @"ID", v9, kCVAttachmentMode_ShouldNotPropagate);
          CMSimpleQueueEnqueue(*(DerivedStorage + 48), v6);
          ACTThreadWakeup();
        }
      }

      else
      {
        CMSimpleQueueEnqueue(*(DerivedStorage + 40), v2);
        ACTThreadWakeup();
        Value = CFDictionaryGetValue(v2, @"ID");
        v22 = 0;
        if (Value)
        {
          CFNumberGetValue(Value, kCFNumberIntType, &v22);
          v12 = v22;
        }

        else
        {
          v12 = 0;
        }

        ACTLogMessageImp(1, "{Blending%d|BeginTS:%.3f}\n", v12, HostTime);
        if ((*(DerivedStorage + 872) & 1) == 0)
        {
          blendSliceIntoContext(*(DerivedStorage + 424));
          v13 = *(DerivedStorage + 424);
          if (v13[1])
          {
            if (*(DerivedStorage + 920))
            {
              *v24 = 0;
              getCroppingArea(v13);
              v14 = *(DerivedStorage + 344);
              v15 = -v14;
              if (v14)
              {
                v16 = -*v24;
                FigSimpleMutexLock();
                *(DerivedStorage + 928) = 0;
                *(DerivedStorage + 936) = *v24;
                *(DerivedStorage + 944) = v15;
                *(DerivedStorage + 952) = v16;
                FigSimpleMutexUnlock();
              }

              ACTThreadWakeup();
            }
          }
        }

        if (*(DerivedStorage + 448))
        {
          if (v22 < 1)
          {
            __sprintf_chk(v24, 0, 0x40uLL, "BlendingFirstFrame");
          }

          else
          {
            __sprintf_chk(v24, 0, 0x40uLL, "Blending%d");
          }

          v17 = (ACT_getHostTime() - HostTime) * 1000.0;
          v18 = ACT_getHostTime();
          ACTLogMessageImp(1, "{%s|took:%.3f} {%s|BufferReleaseTS:%.3f}\n", v24, v17, v24, v18);
        }

        v19 = v22;
        v20 = ACT_getHostTime();
        ACTLogMessageImp(1, "{Blending%d|EndTS:%.3f}\n", v19, v20);
      }

      v2 = CMSimpleQueueDequeue(*(DerivedStorage + 32));
    }

    while (v2);
  }

  return 0;
}

uint64_t registrationThread(uint64_t a1)
{
  v105 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBufferQueueDequeueAndRetain(*(DerivedStorage + 24));
  if (v3)
  {
    v4 = v3;
    key = *MEMORY[0x277CD3038];
    v5 = *MEMORY[0x277CBECE8];
    v91 = *MEMORY[0x277CD2D38];
    v89 = *MEMORY[0x277CF3CB0];
    v88 = *MEMORY[0x277CF5C30];
    theString2 = *MEMORY[0x277CF3D08];
    v86 = *MEMORY[0x277CF3CF8];
    v93 = *(MEMORY[0x277CBF2C0] + 16);
    v94 = *MEMORY[0x277CBF2C0];
    v92 = *(MEMORY[0x277CBF2C0] + 32);
    do
    {
      ImageBuffer = CMSampleBufferGetImageBuffer(v4);
      v7 = FigSampleBufferRetain();
      buffer = ImageBuffer;
      Attachment = CVBufferGetAttachment(ImageBuffer, @"ID", 0);
      valuePtr = 0;
      if (Attachment)
      {
        CFNumberGetValue(Attachment, kCFNumberIntType, &valuePtr);
        v9 = valuePtr;
      }

      else
      {
        v9 = 0;
      }

      HostTime = ACT_getHostTime();
      ACTLogMessageImp(1, "{Registration%d|BeginTS:%.3f}\n", v9, HostTime);
      if (*(DerivedStorage + 448))
      {
        ++*(DerivedStorage + 764);
      }

      if (!*(DerivedStorage + 712))
      {
        v11 = CMGetAttachment(v4, key, 0);
        if (v11)
        {
          *(DerivedStorage + 712) = CFDictionaryCreateMutableCopy(v5, 0, v11);
        }

        v12 = CMGetAttachment(v4, v91, 0);
        v13 = *(DerivedStorage + 712);
        if (v13 && v12)
        {
          CFDictionaryAddValue(v13, v91, v12);
        }
      }

      if (!*(DerivedStorage + 728))
      {
        v14 = CMGetAttachment(v4, v89, 0);
        *(DerivedStorage + 728) = v14;
        if (v14)
        {
          CFRetain(v14);
        }
      }

      *v101 = v94;
      *&v101[16] = v93;
      v102 = v92;
      v99 = 0;
      v100 = 0;
      v15 = CMBaseObjectGetDerivedStorage();
      v16 = CMSampleBufferGetImageBuffer(v4);
      if (!v16)
      {
        goto LABEL_81;
      }

      v17 = v16;
      getIspTxTy(v4, &v99 + 1, &v99);
      if (*(v15 + 164))
      {
        v18 = v7;
        v19 = a1;
        v20 = v5;
        CFRetain(v4);
        CMSimpleQueueEnqueue(*(v15 + 32), v4);
        ACTThreadWakeup();
        v21 = *(v15 + 96);
        if (v21)
        {
          v22 = CMSampleBufferGetImageBuffer(v21);
        }

        else
        {
          v22 = 0;
        }

        Count = CMSimpleQueueGetCount(*(v15 + 32));
        v24 = ACT_getHostTime();
        v25 = *(v15 + 360);
        v26 = *(v15 + 432);
        if (v22)
        {
          setACTRegistrationCurTxTy(v26, *(&v99 + 1), *&v99);
          v27 = registerSampleBuffers(*(v15 + 432), v22, v25, v17, v25, *(v15 + 344), v101, &v100 + 1, 0);
        }

        else
        {
          v27 = registerSampleBuffers(v26, v17, v25, 0, v25, *(v15 + 344), v101, &v100 + 1, 1u);
        }

        v28 = v27;
        setACTRegistrationPrevTxTy(*(v15 + 432), *(&v99 + 1), *&v99);
        v29 = ACT_getHostTime();
        if (v28 < 0)
        {
          ACTLogMessageImp(1, "{performSliceRegistration|registrationError:%d}\n", v28);
          v5 = v20;
          a1 = v19;
          v7 = v18;
        }

        else
        {
          if (v22 && *(v15 + 448))
          {
            v30 = v29;
            memset(&v103, 0, 32);
            ACTRegistrationMethodUsed = getACTRegistrationMethodUsed(*(v15 + 432));
            getACTRegistrationMethodDescription(ACTRegistrationMethodUsed, &v103);
            v32 = CVBufferGetAttachment(v17, @"ID", 0);
            if (v32)
            {
              CFNumberGetValue(v32, kCFNumberIntType, &v100);
            }

            __sprintf_chk(&v104, 0, 0x40uLL, "Registration%d", v100);
            v33 = v102;
            v34 = *(&v100 + 1);
            Height = CVPixelBufferGetHeight(v17);
            Width = CVPixelBufferGetWidth(v17);
            ACTLogMessageImp(1, "{%s|method:%s} {%s|tx:%.3f} {%s|ty:%.3f} {%s|quality:%.3f} {%s|depth:%ld} {%s|height:%ld} {%s|width:%ld} {%s|took:%.3f}\n", &v104, &v103, &v104, *&v33, &v104, *(&v33 + 1), &v104, v34, &v104, Count, &v104, Height, &v104, Width, &v104, (v30 - v24) * 1000.0);
          }

          v5 = v20;
          a1 = v19;
          v7 = v18;
          if (*(v15 + 198))
          {
            goto LABEL_81;
          }

          if (*(v15 + 392) > Count)
          {
            v37 = *(v15 + 164);
            v38 = *(v15 + 264);
            if (v37 == 2)
            {
              if (v38 == *(v15 + 312))
              {
                v38 = v38 + (*(v15 + 328) * -0.5);
              }
            }

            else if (v37 == 1)
            {
              if (v38 == 0.0)
              {
                v38 = v38 + (*(v15 + 328) * 0.5);
              }

              v39 = *(&v102 + 1) + v38;
              v40 = v39;
              if (v39 <= *(v15 + 268))
              {
                v41 = *(v15 + 268);
              }

              else
              {
                v41 = v39;
              }

LABEL_49:
              *(v15 + 268) = v41;
              *(v15 + 264) = v40;
              v44 = CVBufferGetAttachment(v17, @"MetadataDictionary", 0);
              if (v44)
              {
                Value = CFDictionaryGetValue(v44, v88);
                if (Value)
                {
                  v46 = CFStringCompare(Value, theString2, 0);
                  v47 = *&v102;
                  if (v46)
                  {
                    v47 = -*&v102;
                  }

                  v48 = v47 + *(v15 + 272);
                  *(v15 + 272) = v48;
                }
              }

              v49 = CFNumberCreate(v5, kCFNumberFloatType, (v15 + 264));
              CVBufferSetAttachment(v17, @"ACTPreviewAssemblyPositionXMetadataKey", v49, kCVAttachmentMode_ShouldPropagate);
              CFRelease(v49);
              v50 = CFNumberCreate(v5, kCFNumberFloatType, (v15 + 272));
              CVBufferSetAttachment(v17, @"ACTPreviewAssemblyPositionYMetadataKey", v50, kCVAttachmentMode_ShouldPropagate);
              CFRelease(v50);
              v51 = *(v15 + 96);
              if (v51)
              {
                memset(&v103, 0, sizeof(v103));
                CMSampleBufferGetPresentationTimeStamp(&v103, v51);
                memset(&v98, 0, sizeof(v98));
                CMSampleBufferGetPresentationTimeStamp(&v98, v4);
                time = v98;
                Seconds = CMTimeGetSeconds(&time);
                time = v103;
                v53 = Seconds - CMTimeGetSeconds(&time);
                *&time.value = v53;
                v54 = CFNumberCreate(v5, kCFNumberFloatType, &time);
                CVBufferSetAttachment(v17, @"ACTDeltaPTSAttachmentKey", v54, kCVAttachmentMode_ShouldPropagate);
                CFRelease(v54);
              }

              v55 = *(v15 + 32);
              Attachments = CVBufferGetAttachments(v17, kCVAttachmentMode_ShouldPropagate);
              v57 = CFRetain(Attachments);
              CMSimpleQueueEnqueue(v55, v57);
              ++*(v15 + 768);
              ACTThreadWakeup();
              v58 = *(v15 + 96);
              if (v58)
              {
                CFRelease(v58);
                if (*(v15 + 448))
                {
                  v59 = v100 - 1;
                  v60 = ACT_getHostTime();
                  ACTLogMessageImp(1, "{Registration%d|BufferReleaseTS:%.3f}\n", v59, v60);
                }
              }

              v61 = CMSampleBufferGetImageBuffer(v4);
              v62 = CVBufferGetAttachment(v61, @"MetadataDictionary", 0);
              v63 = 0.0;
              if (v62 && (v64 = CFDictionaryGetValue(v62, v88)) != 0)
              {
                if (CFStringCompare(v64, v86, 0))
                {
                  v65 = 0;
                  v66 = 824;
                }

                else
                {
                  v63 = *(v15 + 840);
                  v65 = *(v15 + 844);
                  v66 = 832;
                }

                *(v15 + 836) = *(v15 + v66);
                setMaxOverlapPercent(*(v15 + 424));
              }

              else
              {
                v65 = 0;
              }

              *(v15 + 848) = v65;
              *(v15 + 96) = FigSampleBufferRetain();
              v67 = *(v15 + 164);
              if (v67 == 2)
              {
                if ((*(v15 + 264) - (v63 + (*(v15 + 328) * 0.5))) > 0.0)
                {
                  goto LABEL_73;
                }
              }

              else if (v67 != 1 || *(v15 + 264) <= (*(v15 + 312) - (v63 + (*(v15 + 328) * 0.5))))
              {
LABEL_73:
                v71 = *(v15 + 268);
                v72 = *(v15 + 264);
                v73 = *(v15 + 156);
                if (vabds_f32(v71, v72) > v73)
                {
                  if (*(v15 + 164) == 1)
                  {
                    if ((v71 - v72) > v73)
                    {
                      LocalCenter = CFNotificationCenterGetLocalCenter();
                      CFNotificationCenterPostNotification(LocalCenter, @"ACTPanoramaErrorNotifications", @"ACTPanoramaUserStopped", 0, 1u);
                      if (*(v15 + 448))
                      {
                        memset(&v103, 0, sizeof(v103));
                        CMSampleBufferGetPresentationTimeStamp(&v103, v4);
                        v98 = v103;
                        CMTimeGetSeconds(&v98);
                        ACT_getHostTime();
                        ACTLogMessageImp(1, "UserStopped triggered with buffer %p, %.2f, at %.2f storage->previewAssemblyPositionMaxX %d storage->previewAssemblyPositionX %.3f \n");
                      }
                    }
                  }

                  else if ((v72 - v71) > v73)
                  {
                    v75 = CFNotificationCenterGetLocalCenter();
                    CFNotificationCenterPostNotification(v75, @"ACTPanoramaErrorNotifications", @"ACTPanoramaUserStopped", 0, 1u);
                    if (*(v15 + 448))
                    {
                      memset(&v103, 0, sizeof(v103));
                      CMSampleBufferGetPresentationTimeStamp(&v103, v4);
                      v98 = v103;
                      CMTimeGetSeconds(&v98);
                      ACT_getHostTime();
                      ACTLogMessageImp(1, "UserStopped triggered with buffer %p, %.2f, at %.2f storage->previewAssemblyPositionMaxX %.3f storage->previewAssemblyPositionX %.3f \n");
                    }
                  }
                }

                goto LABEL_81;
              }

              v68 = CFNotificationCenterGetLocalCenter();
              CFNotificationCenterPostNotification(v68, @"ACTPanoramaErrorNotifications", @"ACTPanoramaMaxSizeReached", 0, 1u);
              *(v15 + 198) = 1;
              if (*(v15 + 448))
              {
                memset(&v103, 0, sizeof(v103));
                CMSampleBufferGetPresentationTimeStamp(&v103, v4);
                v98 = v103;
                v69 = CMTimeGetSeconds(&v98);
                v70 = ACT_getHostTime();
                ACTLogMessageImp(1, "ACTPanoramaMaxSizeReached triggered with buffer %p, %.2f, at %.2f\n", v4, v69, v70);
              }

              goto LABEL_73;
            }

            v43 = *(&v102 + 1) + v38;
            v40 = v43;
            if (v43 >= *(v15 + 268))
            {
              v41 = *(v15 + 268);
            }

            else
            {
              v41 = v43;
            }

            goto LABEL_49;
          }

          v42 = CFNotificationCenterGetLocalCenter();
          CFNotificationCenterPostNotification(v42, @"ACTPanoramaErrorNotifications", @"ACTPanoramaMaxSizeReached", 0, 1u);
          *(v15 + 198) = 1;
          ACTLogMessageImp(4, "assemblyQueue full\n");
        }
      }

      else
      {
        FigSampleBufferRelease();
        *(v15 + 96) = FigSampleBufferRetain();
      }

LABEL_81:
      v76 = *(DerivedStorage + 444);
      if ((v76 & 3) != 0)
      {
        if (*(DerivedStorage + 164) | *(DerivedStorage + 444) & 8)
        {
          if ((*(DerivedStorage + 756) & 1) == 0)
          {
            sub_23C459978(a1, v7, 1);
            *(DerivedStorage + 756) = 1;
          }

          sub_23C459978(a1, v4, 0);
        }
      }

      else if ((v76 & 4) != 0)
      {
        Mutable = CFDictionaryCreateMutable(v5, 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (Mutable)
        {
          v78 = Mutable;
          memset(&v104, 0, sizeof(v104));
          CMSampleBufferGetPresentationTimeStamp(&v104, v4);
          *v101 = v104;
          *v101 = CMTimeGetSeconds(v101);
          v79 = CFNumberCreate(v5, kCFNumberFloat64Type, v101);
          v80 = CVBufferGetAttachment(buffer, @"MetadataDictionary", 0);
          if (v80)
          {
            CFDictionaryAddValue(v78, @"MetadataDictionary", v80);
          }

          v81 = CVBufferGetAttachment(buffer, @"ACTRegistrationTransformationKey", 0);
          if (v81)
          {
            CFDictionaryAddValue(v78, @"ACTRegistrationTransformationKey", v81);
          }

          CFDictionaryAddValue(v78, @"CaptureTimeInSeconds", v79);
          CFRelease(v79);
          v82 = CVBufferGetAttachment(buffer, @"ID", 0);
          if (v82)
          {
            CFDictionaryAddValue(v78, @"ID", v82);
          }

          CFArrayAppendValue(*(DerivedStorage + 744), v78);
          CFRelease(v78);
        }
      }

      FigSampleBufferRelease();
      FigSampleBufferRelease();
      v83 = valuePtr;
      v84 = ACT_getHostTime();
      ACTLogMessageImp(1, "{Registration%d|EndTS:%.3f}\n", v83, v84);
      v4 = CMBufferQueueDequeueAndRetain(*(DerivedStorage + 24));
    }

    while (v4);
  }

  return 0;
}

void sub_23C459978(uint64_t a1, opaqueCMSampleBuffer *a2, int a3)
{
  if (a2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    ImageBuffer = CMSampleBufferGetImageBuffer(a2);
    Attachment = CVBufferGetAttachment(ImageBuffer, @"ID", 0);
    v8 = Attachment;
    valuePtr = 0;
    if (Attachment)
    {
      CFNumberGetValue(Attachment, kCFNumberIntType, &valuePtr);
    }

    v9 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v11 = Mutable;
      memset(&v26, 0, sizeof(v26));
      CMSampleBufferGetPresentationTimeStamp(&v26, a2);
      time = v26;
      time.value = CMTimeGetSeconds(&time);
      v12 = CFNumberCreate(v9, kCFNumberFloat64Type, &time);
      v13 = CVBufferGetAttachment(ImageBuffer, @"MetadataDictionary", 0);
      if (v13)
      {
        CFDictionaryAddValue(v11, @"MetadataDictionary", v13);
      }

      v14 = CVBufferGetAttachment(ImageBuffer, @"ACTRegistrationTransformationKey", 0);
      if (v14)
      {
        CFDictionaryAddValue(v11, @"ACTRegistrationTransformationKey", v14);
      }

      CFDictionaryAddValue(v11, @"CaptureTimeInSeconds", v12);
      CFRelease(v12);
      v15 = *MEMORY[0x277CF3CB0];
      v16 = CMGetAttachment(a2, *MEMORY[0x277CF3CB0], 0);
      if (v16)
      {
        CFDictionaryAddValue(v11, v15, v16);
      }

      if (v8)
      {
        CFDictionaryAddValue(v11, @"ID", v8);
      }

      v24 = *(DerivedStorage + 164);
      v17 = CFNumberCreate(v9, kCFNumberSInt32Type, &v24);
      CFDictionaryAddValue(v11, @"PanoramaDirection", v17);
      CFRelease(v17);
      CFArrayAppendValue(*(DerivedStorage + 744), v11);
      CFRelease(v11);
    }

    HostTime = ACT_getHostTime();
    if ((*(DerivedStorage + 444) & 5) == 1)
    {
      v26.value = 0;
      LODWORD(time.value) = 0;
      IOSurface = CVPixelBufferGetIOSurface(ImageBuffer);
      if (MEMORY[0x23EED2250](IOSurface, 0, &v26, &time) || !v26.value)
      {
        goto LABEL_26;
      }

      v20 = CFNumberCreate(v9, kCFNumberIntType, &time);
      IOSurfaceSetValue(v26.value, @"jpegSize", v20);
      CFRelease(v20);
      IOSurfaceSetValue(v26.value, @"ID", v8);
      if (CMSimpleQueueEnqueue(*(DerivedStorage + 48), v26.value))
      {
        ACTLogMessageImp(4, "Error - Could not enqueue for debug write slice id %d\n", valuePtr);
LABEL_26:
        v22 = valuePtr;
        v23 = ACT_getHostTime();
        ACTLogMessageImp(1, "{DebugWrite%d|sendBufferToDebugWrite:%.3f}\n", v22, v23 - HostTime);
        return;
      }
    }

    else
    {
      if (valuePtr && !a3)
      {
        goto LABEL_26;
      }

      v26.value = 0;
      CVPixelBufferPoolCreatePixelBuffer(v9, *(DerivedStorage + 784), &v26);
      if (*(DerivedStorage + 164) == 1)
      {
        v21 = MEMORY[0x277CBED10];
      }

      else
      {
        v21 = MEMORY[0x277CBED28];
      }

      MEMORY[0x23EED2570](*(DerivedStorage + 64), *MEMORY[0x277CE2808], *v21);
      scaleCropAndRotatePixelBuffer(*(DerivedStorage + 64), ImageBuffer, v26.value);
      CVBufferSetAttachment(v26.value, @"ID", v8, kCVAttachmentMode_ShouldNotPropagate);
      CMSimpleQueueEnqueue(*(DerivedStorage + 48), v26.value);
    }

    ACTThreadWakeup();
    goto LABEL_26;
  }
}

uint64_t LegacyPano_processSampleBuffer(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  HostTime = ACT_getHostTime();
  if (!*(DerivedStorage + 368))
  {
    ACTLogMessageImp(1, "ghosting Speed %.2f scale lowLight %.2f scale brightLight %.2f integrationTime lowLight %.2f integrationTime brightLight %.2f maxOffset %.2f previewScaleX %f previewScaleY %f minGoodOverlap %.2f minRequiredOverlap %.2f\n", *(DerivedStorage + 796), *(DerivedStorage + 804), *(DerivedStorage + 808), 1.0 / *(DerivedStorage + 812), 1.0 / *(DerivedStorage + 816), *(DerivedStorage + 820), *(DerivedStorage + 316), *(DerivedStorage + 320), *(DerivedStorage + 824), *(DerivedStorage + 828));
    ACTLogMessageImp(1, "{BlendingVersion:%d}\n", *(DerivedStorage + 192));
    *(DerivedStorage + 368) = 1;
  }

  v5 = *(DerivedStorage + 24);
  if (v5)
  {
    BufferCount = CMBufferQueueGetBufferCount(v5);
    if (BufferCount >= *(DerivedStorage + 376))
    {
      v7 = CMBufferQueueDequeueAndRetain(*(DerivedStorage + 24));
      ACTLogMessageImp(4, "dropping %p\n", v7);
      if (v7)
      {
        CFRelease(v7);
      }
    }

    v8 = CMGetAttachment(a2, @"ClientSpecifiedMetadata", 0);
    if (v8)
    {
      v9 = v8;
      ImageBuffer = CMSampleBufferGetImageBuffer(a2);
      CVBufferSetAttachment(ImageBuffer, @"MetadataDictionary", v9, kCVAttachmentMode_ShouldPropagate);
    }

    ++*(DerivedStorage + 760);
    if (BufferCount >= *(DerivedStorage + 16))
    {
      if (*(DerivedStorage + 448))
      {
        memset(&v21, 0, sizeof(v21));
        CMSampleBufferGetPresentationTimeStamp(&v21, a2);
        time = v21;
        Seconds = CMTimeGetSeconds(&time);
        v18 = ACT_getHostTime();
        ACTLogMessageImp(4, "Received NOT QUEUED: %p, %.2f, at %.2f QDepth: %ld\n", a2, Seconds, v18, BufferCount);
        ++*(DerivedStorage + 772);
      }
    }

    else
    {
      CMBufferQueueEnqueue(*(DerivedStorage + 24), a2);
      if (*(DerivedStorage + 448))
      {
        v11 = *MEMORY[0x277CBECE8];
        v12 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, (DerivedStorage + 752));
        v13 = CMSampleBufferGetImageBuffer(a2);
        CVBufferSetAttachment(v13, @"ID", v12, kCVAttachmentMode_ShouldPropagate);
        CFRelease(v12);
        memset(&v21, 0, sizeof(v21));
        CMSampleBufferGetPresentationTimeStamp(&v21, a2);
        time = v21;
        v14 = CMTimeGetSeconds(&time);
        *&time.value = v14;
        v15 = CFNumberCreate(v11, kCFNumberFloatType, &time);
        v16 = CMSampleBufferGetImageBuffer(a2);
        CVBufferSetAttachment(v16, @"CaptureTimeInSeconds", v15, kCVAttachmentMode_ShouldNotPropagate);
        CFRelease(v15);
        ACTLogMessageImp(1, "{Received%d|buffer:%p} {Received%d|PTS:%.3f} {Received%d|TS:%.3f} {Received%d|QDepth:%ld}\n", *(DerivedStorage + 752), a2, *(DerivedStorage + 752), *&time.value, *(DerivedStorage + 752), HostTime, *(DerivedStorage + 752), BufferCount);
        ++*(DerivedStorage + 752);
      }

      ACTThreadWakeup();
    }
  }

  return 0;
}

void _createDebugWriteThread(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  valuePtr = 1;
  v3 = *MEMORY[0x277CBECE8];
  values = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
  v4 = MEMORY[0x277CBF138];
  v5 = MEMORY[0x277CBF150];
  v6 = CFDictionaryCreate(v3, MEMORY[0x277CC4E50], &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  Mutable = CFDictionaryCreateMutable(0, 0, v4, v5);
  pixelBufferAttributes = Mutable;
  v8 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v25 = 875704422;
  v9 = CFNumberCreate(0, kCFNumberSInt32Type, &v25);
  CFArrayAppendValue(v8, v9);
  CFRelease(v9);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4E30], v8);
  CFRelease(v8);
  v10 = *(DerivedStorage + 352);
  v23 = *(DerivedStorage + 344);
  v24 = v10;
  v11 = CFNumberCreate(v3, kCFNumberLongType, &v23);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4EC8], v11);
  CFRelease(v11);
  v12 = CFNumberCreate(v3, kCFNumberLongType, &v24);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4DD8], v12);
  CFRelease(v12);
  IOSurfacePropertiesDictionary = createIOSurfacePropertiesDictionary(1);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4DE8], IOSurfacePropertiesDictionary);
  CFRelease(IOSurfacePropertiesDictionary);
  applyWiringAssertionToProperties(&pixelBufferAttributes);
  CVPixelBufferPoolCreate(v3, v6, pixelBufferAttributes, (DerivedStorage + 784));
  CFRelease(v6);
  CFRelease(pixelBufferAttributes);
  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  v32 = 0u;
  v33 = 0u;
  *pixelBufferOut = 0u;
  if (valuePtr >= 1)
  {
    v14 = 0;
    v15 = pixelBufferOut;
    do
    {
      CVPixelBufferPoolCreatePixelBuffer(v3, *(DerivedStorage + 784), v15);
      CVPixelBufferLockBaseAddress(*v15, 0);
      BaseAddress = CVPixelBufferGetBaseAddress(*v15);
      DataSize = CVPixelBufferGetDataSize(*v15);
      bzero(BaseAddress, DataSize);
      v18 = *v15++;
      CVPixelBufferUnlockBaseAddress(v18, 0);
      ++v14;
    }

    while (v14 < valuePtr);
    if (valuePtr >= 1)
    {
        ;
      }
    }
  }

  if (*(DerivedStorage + 904) || (v22 = *(DerivedStorage + 376), v20 = CFNumberCreate(v3, kCFNumberIntType, &v22), keys[0] = @"ACTThreadBufferRingSize", keys[1] = @"ACTThreadIdentifier", v29[0] = v20, v29[1] = @"com.act.debugWrite", v21 = CFDictionaryCreate(v3, keys, v29, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]), *(DerivedStorage + 904) = ACTThreadCreate(debugWriteThread, a1, 10, v21), CFRelease(v21), CFRelease(v20), *(DerivedStorage + 904)))
  {
    if (!*(DerivedStorage + 48))
    {
      CMSimpleQueueCreate(v3, 64, (DerivedStorage + 48));
    }

    *(DerivedStorage + 756) = 0;
  }

  else
  {
    FigSignalErrorAtGM();
  }
}

uint64_t LegacyPano_stopCapture(uint64_t a1)
{
  ACTThreadMutexLock(*(a1 + 880));
  ACTThreadMutexLock(*(a1 + 888));
  ACTThreadMutexLock(*(a1 + 896));
  v2 = *(a1 + 904);
  if (v2)
  {
    ACTThreadMutexLock(v2);
  }

  *(a1 + 196) = 0;
  *(a1 + 198) = 1;
  *(a1 + 164) = *(a1 + 160);
  ACTThreadMutexUnlock(*(a1 + 880));
  ACTThreadMutexUnlock(*(a1 + 888));
  ACTThreadMutexUnlock(*(a1 + 896));
  v3 = *(a1 + 904);
  if (v3)
  {
    ACTThreadMutexUnlock(v3);
  }

  return 0;
}

uint64_t LegacyPano_invalidate(uint64_t a1)
{
  v2 = *(a1 + 880);
  if (v2)
  {
    ACTThreadRelease(v2);
    *(a1 + 880) = 0;
  }

  v3 = *(a1 + 888);
  if (v3)
  {
    ACTThreadRelease(v3);
    *(a1 + 888) = 0;
  }

  v4 = *(a1 + 896);
  if (v4)
  {
    *(a1 + 896) = 0;
    ACTThreadRelease(v4);
  }

  v5 = *(a1 + 920);
  if (v5)
  {
    ACTThreadRelease(v5);
    *(a1 + 920) = 0;
    if (*(a1 + 1008))
    {
      FigSimpleMutexDestroy();
      *(a1 + 1008) = 0;
    }

    if (*(a1 + 1016))
    {
      FigSemaphoreDestroy();
      *(a1 + 1016) = 0;
    }
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 24) = 0;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 32) = 0;
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 40) = 0;
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    VTPixelRotationSessionInvalidate(v9);
    CFRelease(*(a1 + 56));
    *(a1 + 56) = 0;
  }

  v10 = *(a1 + 64);
  if (v10)
  {
    VTPixelRotationSessionInvalidate(v10);
    CFRelease(*(a1 + 64));
    *(a1 + 64) = 0;
  }

  v11 = *(a1 + 72);
  if (v11)
  {
    VTPixelRotationSessionInvalidate(v11);
    CFRelease(*(a1 + 72));
    *(a1 + 72) = 0;
  }

  v12 = *(a1 + 856);
  if (v12)
  {
    *(a1 + 856) = 0;
    ACTPano_GPUDownscaler_destroy(v12);
  }

  LegacyPano_reset(a1);
  v13 = *(a1 + 904);
  if (v13)
  {
    ACTThreadRelease(v13);
    *(a1 + 904) = 0;
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 48) = 0;
  }

  CVPixelBufferUnlockBaseAddress(*(a1 + 80), 0);
  CVPixelBufferRelease(*(a1 + 80));
  *(a1 + 80) = 0;
  FigSampleBufferRelease();
  *(a1 + 88) = 0;
  v15 = *(a1 + 104);
  if (v15)
  {
    CFRelease(v15);
    *(a1 + 104) = 0;
  }

  CVPixelBufferRelease(*(a1 + 120));
  *(a1 + 120) = 0;
  CVPixelBufferRelease(*(a1 + 128));
  *(a1 + 128) = 0;
  CVPixelBufferRelease(*(a1 + 136));
  *(a1 + 136) = 0;
  v16 = *(a1 + 256);
  if (v16)
  {
    PixelShuffler_destructor(v16);
  }

  *(a1 + 256) = 0;
  v17 = *(a1 + 776);
  if (v17)
  {
    CFRelease(v17);
    *(a1 + 776) = 0;
  }

  CVPixelBufferPoolRelease(*(a1 + 784));
  *(a1 + 784) = 0;
  deleteACTRegistrationContext(*(a1 + 432));
  *(a1 + 432) = 0;
  deleteBlendingContext(*(a1 + 424));
  *(a1 + 424) = 0;
  v18 = *(a1 + 720);
  if (v18)
  {
    CFRelease(v18);
    *(a1 + 720) = 0;
  }

  v19 = *(a1 + 712);
  if (v19)
  {
    CFRelease(v19);
    *(a1 + 712) = 0;
  }

  ACTLogReset();
  return 0;
}

uint64_t LegacyPano_reset(uint64_t a1)
{
  sub_23C45A748(a1);
  v2 = *(a1 + 96);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 96) = 0;
  }

  v3 = *(a1 + 432);
  if (v3)
  {
    resetACTRegistrationContext(*(a1 + 352), *(a1 + 344), v3);
    setACTRegistrationInvokeFallback(*(a1 + 432), *(a1 + 176) != 0);
    setACTRegistrationUsePrediction(*(a1 + 432), *(a1 + 180) != 0);
    setACTRegistrationMethod(*(a1 + 432), *(a1 + 168));
    setACTPredictionMethod(*(a1 + 432), *(a1 + 172));
    setACTRegistrationMFDriftCorrectorFlag(*(a1 + 432), *(a1 + 184));
    setACTRegistrationCSVLogLevel(*(a1 + 432), *(a1 + 444) != 0);
  }

  v4 = *(a1 + 424);
  if (v4)
  {
    set_Defaults_ACTBlendingConfig(v4, *(a1 + 188));
  }

  return 0;
}

void sub_23C45A748(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 444) & 0x10) != 0)
  {
    __sprintf_chk(v5, 0, 0x100uLL, "%s/finalPreview.yuvf", (a1 + 456));
    dumpCVPixelBufferToRawFile(*(a1 + 80), v5, 0);
  }

  v2 = *(a1 + 144);
  if (v2)
  {
    CVPixelBufferRelease(v2);
    *(a1 + 144) = 0;
  }

  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 112) = 1;
  BaseAddress = CVPixelBufferGetBaseAddress(*(a1 + 80));
  DataSize = CVPixelBufferGetDataSize(*(a1 + 80));
  bzero(BaseAddress, DataSize);
}

uint64_t LegacyPano_createProcessor(uint64_t a1, const __CFDictionary *a2, double a3, double a4)
{
  v80 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 384) = 959459438;
  Value = CFDictionaryGetValue(a2, @"forceMaxComputation");
  if (Value)
  {
    v10 = CFBooleanGetValue(Value) != 0;
  }

  else
  {
    v10 = 0;
  }

  *(DerivedStorage + 792) = v10;
  *(DerivedStorage + 792) = getCFPreferenceNumber(@"forceMaxComputation", @"com.apple.act", v10) > 0;
  v11 = CFDictionaryGetValue(a2, @"ACTPanoramaBufferRingSize");
  if (v11)
  {
    CFNumberGetValue(v11, kCFNumberCFIndexType, (DerivedStorage + 376));
  }

  else
  {
    *(DerivedStorage + 376) = 64;
  }

  *(DerivedStorage + 392) = 64;
  v12 = CFDictionaryGetValue(a2, @"ACTPanoramaBlendingVersion");
  if (v12)
  {
    CFNumberGetValue(v12, kCFNumberCFIndexType, (DerivedStorage + 192));
    v13 = *(DerivedStorage + 192);
  }

  else
  {
    v13 = 0;
    *(DerivedStorage + 192) = 0;
  }

  *(DerivedStorage + 192) = getCFPreferenceNumber(@"ACTPanoramaBlendingVersion", @"com.apple.act", v13);
  v14 = CFDictionaryGetValue(a2, @"ACTFrameWidth");
  if (!v14)
  {
    return 0;
  }

  CFNumberGetValue(v14, kCFNumberCFIndexType, (DerivedStorage + 336));
  v15 = CFDictionaryGetValue(a2, @"ACTFrameHeight");
  if (!v15)
  {
    return 0;
  }

  CFNumberGetValue(v15, kCFNumberCFIndexType, (DerivedStorage + 328));
  *(DerivedStorage + 344) = getCFPreferenceNumber(@"ACTPanoramaSliceWidth", @"com.apple.act", 240);
  v16 = CFDictionaryGetValue(a2, @"ACTPanoramaSliceWidth");
  if (v16)
  {
    CFNumberGetValue(v16, kCFNumberCFIndexType, (DerivedStorage + 344));
  }

  v17 = CFDictionaryGetValue(a2, @"ACTPanoramaMaxWidth");
  if (v17)
  {
    CFNumberGetValue(v17, kCFNumberIntType, (DerivedStorage + 312));
  }

  *(DerivedStorage + 312) = getCFPreferenceNumber(@"ACTPanoramaMaxWidth", @"com.apple.act", *(DerivedStorage + 312));
  v18 = CFDictionaryGetValue(a2, @"ACTPanoramaMaxFrameRate");
  if (v18)
  {
    CFNumberGetValue(v18, kCFNumberIntType, (DerivedStorage + 416));
  }

  v19 = ((*(DerivedStorage + 328) - *(DerivedStorage + 344)) >> 1) & 0x7FFFFFFFFFFFFFF0;
  *(DerivedStorage + 352) = *(DerivedStorage + 336);
  *(DerivedStorage + 360) = v19;
  v20 = CFDictionaryGetValue(a2, @"ACTPanoramaDefaultDirection");
  if (v20)
  {
    CFNumberGetValue(v20, kCFNumberIntType, (DerivedStorage + 160));
    v21 = *(DerivedStorage + 160);
  }

  else
  {
    v21 = 0;
    *(DerivedStorage + 160) = 0;
  }

  *(DerivedStorage + 164) = v21;
  v23 = CFDictionaryGetValue(a2, @"ACTPanoramaPreviewThumbnailMaxWidth");
  if (v23)
  {
    CFNumberGetValue(v23, kCFNumberCFIndexType, (DerivedStorage + 400));
  }

  else
  {
    *(DerivedStorage + 400) = 0;
  }

  v24 = CFDictionaryGetValue(a2, @"ACTPanoramaPreviewThumbnailMaxHeight");
  if (v24)
  {
    CFNumberGetValue(v24, kCFNumberCFIndexType, (DerivedStorage + 408));
  }

  else
  {
    *(DerivedStorage + 408) = 0;
  }

  v25 = CFDictionaryGetValue(a2, @"kACTPanoramaUseHEIF");
  if (v25)
  {
    LOBYTE(v25) = CFBooleanGetValue(v25);
  }

  *(DerivedStorage + 420) = v25;
  *(DerivedStorage + 168) = getCFPreferenceNumber(@"ACTPanoramaDefaultRegistrationMethod", @"com.apple.act", 1);
  *(DerivedStorage + 172) = getCFPreferenceNumber(@"ACTPanoramaDefaultPredictionMethod", @"com.apple.act", 2);
  *(DerivedStorage + 176) = getCFPreferenceNumber(@"ACTPanoramaDefaultFallback", @"com.apple.act", 1);
  *(DerivedStorage + 180) = getCFPreferenceNumber(@"ACTPanoramaDefaultPrediction", @"com.apple.act", 1);
  *(DerivedStorage + 184) = getCFPreferenceNumber(@"ACTPanoramaDefaultMFDriftCorrectorFlag", @"com.apple.act", 2);
  *(DerivedStorage + 188) = getCFPreferenceNumber(@"ACTPanoramaDefaultBlendingConfig", @"com.apple.act", 0);
  valuePtr = 0;
  IntValue = 0;
  *(DerivedStorage + 444) = getCFPreferenceNumber(@"writeSlicesToDisc", @"com.apple.act", 4);
  *(DerivedStorage + 16) = getCFPreferenceNumber(@"processingQueueMaxDepth", @"com.apple.act", 24);
  *(DerivedStorage + 800) = getCFPreferenceFloat(@"ghostingSpeedScale", @"com.apple.act", 6.4);
  *(DerivedStorage + 804) = getCFPreferenceFloat(@"ghostingSpeedScaleLowLight", @"com.apple.act", 6.4);
  *(DerivedStorage + 808) = getCFPreferenceFloat(@"ghostingSpeedScaleBrightLight", @"com.apple.act", 6.4);
  *(DerivedStorage + 812) = 1.0 / getCFPreferenceFloat(@"ghostingSpeedScaleLowLightIntegrationTime", @"com.apple.act", 100.0);
  *(DerivedStorage + 816) = 1.0 / getCFPreferenceFloat(@"ghostingSpeedScaleBrightLightIntegrationTime", @"com.apple.act", 400.0);
  *(DerivedStorage + 820) = getCFPreferenceFloat(@"ghostingSpeedMaxOffset", @"com.apple.act", 32.0);
  *(DerivedStorage + 824) = getCFPreferenceFloat(@"minGoodOverlap", @"com.apple.act", 0.5);
  *(DerivedStorage + 832) = getCFPreferenceFloat(@"minGoodFovOverlap", @"com.apple.act", 0.95);
  *(DerivedStorage + 828) = getCFPreferenceFloat(@"minRequiredOverlap", @"com.apple.act", 0.33);
  *(DerivedStorage + 836) = *(DerivedStorage + 824);
  *(DerivedStorage + 152) = getCFPreferenceFloat(@"userStoppedBoundary", @"com.apple.act", 48.0);
  *(DerivedStorage + 156) = getCFPreferenceFloat(@"userStoppedThreshold", @"com.apple.act", *(DerivedStorage + 344));
  *(DerivedStorage + 840) = getCFPreferenceNumber(@"fovMargin", @"com.apple.act", 5460);
  *(DerivedStorage + 844) = getCFPreferenceNumber(@"gdcMargin", @"com.apple.act", 40);
  v26 = getCFPreferenceNumber(@"ACTPanoramaGPUDownscale", @"com.apple.act", 0) > 0;
  v27 = CFDictionaryGetValue(a2, @"ACTPanoramaPowerBlurSlope");
  v28 = CFDictionaryGetValue(a2, @"ACTPanoramaPowerBlurBias");
  v29 = 0;
  if (v27 && v28)
  {
    if (CFNumberGetValue(v28, kCFNumberSInt32Type, &valuePtr))
    {
      v29 = CFNumberGetValue(v27, kCFNumberSInt32Type, &valuePtr + 4) != 0;
    }

    else
    {
      v29 = 0;
    }
  }

  v66 = v29;
  v30 = CFDictionaryGetValue(a2, @"ACTPanoramaBPNRMode");
  v31 = v30;
  if (v30)
  {
    v32 = CFGetTypeID(v30);
    if (v32 == CFStringGetTypeID())
    {
      IntValue = CFStringGetIntValue(v31);
    }

    else
    {
      CFNumberGetValue(v31, kCFNumberSInt32Type, &IntValue);
    }
  }

  v33 = CFDictionaryGetValue(a2, @"ACTJPEGPhotoQuality");
  if (v33)
  {
    CFNumberGetValue(v33, kCFNumberSInt32Type, (DerivedStorage + 384));
  }

  v34 = CFDictionaryGetValue(a2, @"ACTPanoramaOptions");
  v35 = v34;
  if (v34)
  {
    CFRetain(v34);
  }

  v36 = CFDictionaryGetValue(a2, @"ghostingSpeedScaleLowLightIntegrationTime");
  if (v36)
  {
    CFNumberGetValue(v36, kCFNumberFloat32Type, (DerivedStorage + 812));
    *(DerivedStorage + 812) = 1.0 / *(DerivedStorage + 812);
  }

  v37 = CFDictionaryGetValue(a2, @"ghostingSpeedScaleBrightLightIntegrationTime");
  if (v37)
  {
    CFNumberGetValue(v37, kCFNumberFloat32Type, (DerivedStorage + 816));
    *(DerivedStorage + 816) = 1.0 / *(DerivedStorage + 816);
  }

  v38 = CFDictionaryGetValue(a2, @"ghostingSpeedScaleLowLight");
  v39 = v26;
  if (v38)
  {
    CFNumberGetValue(v38, kCFNumberFloat32Type, (DerivedStorage + 804));
  }

  v40 = CFDictionaryGetValue(a2, @"ghostingSpeedScaleBrightLight");
  if (v40)
  {
    CFNumberGetValue(v40, kCFNumberFloat32Type, (DerivedStorage + 808));
  }

  v41 = CFDictionaryGetValue(a2, @"fovMargin");
  if (v41)
  {
    CFNumberGetValue(v41, kCFNumberIntType, (DerivedStorage + 840));
  }

  v42 = CFDictionaryGetValue(a2, @"gdcMargin");
  if (v42)
  {
    CFNumberGetValue(v42, kCFNumberIntType, (DerivedStorage + 844));
  }

  v43 = CFDictionaryGetValue(a2, @"ACTPanoramaGPUDownscale");
  if (v43)
  {
    v39 = CFBooleanGetValue(v43) != 0;
  }

  v73 = *(DerivedStorage + 376);
  v44 = *MEMORY[0x277CBECE8];
  v45 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &v73);
  v46 = v45;
  if (!*(DerivedStorage + 880))
  {
    keys = @"ACTThreadBufferRingSize";
    v79 = @"ACTThreadIdentifier";
    values = v45;
    v77 = @"com.act.registration";
    v47 = CFDictionaryCreate(v44, &keys, &values, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(DerivedStorage + 880) = ACTThreadCreate(registrationThread, a1, 14, v47);
    CFRelease(v47);
    if (!*(DerivedStorage + 880))
    {
      goto LABEL_101;
    }
  }

  if (!*(DerivedStorage + 888))
  {
    keys = @"ACTThreadBufferRingSize";
    v79 = @"ACTThreadIdentifier";
    values = v46;
    v77 = @"com.act.assembly";
    v48 = CFDictionaryCreate(v44, &keys, &values, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(DerivedStorage + 888) = ACTThreadCreate(assemblyThread, a1, 14, v48);
    CFRelease(v48);
    if (!*(DerivedStorage + 888))
    {
      goto LABEL_101;
    }
  }

  if (!*(DerivedStorage + 896))
  {
    keys = @"ACTThreadBufferRingSize";
    v79 = @"ACTThreadIdentifier";
    values = v46;
    v77 = @"com.act.preview";
    v49 = CFDictionaryCreate(v44, &keys, &values, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(DerivedStorage + 896) = ACTThreadCreate(previewThread, a1, 14, v49);
    CFRelease(v49);
    if (!*(DerivedStorage + 896))
    {
      goto LABEL_101;
    }
  }

  v50 = (DerivedStorage + 920);
  if (*(DerivedStorage + 920) || (IntValue - 4) >= 5 && IntValue != 1)
  {
    goto LABEL_64;
  }

  keys = @"ACTThreadBufferRingSize";
  v79 = @"ACTThreadIdentifier";
  values = v46;
  v77 = @"com.act.nr";
  v65 = CFDictionaryCreate(v44, &keys, &values, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *v50 = ACTThreadCreate(noiseReductionThread, a1, 7, v65);
  CFRelease(v65);
  if (!*v50)
  {
LABEL_101:
    v52 = FigSignalErrorAtGM();
    goto LABEL_102;
  }

  if (!*(DerivedStorage + 1008))
  {
    *(DerivedStorage + 1008) = FigSimpleMutexCreate();
  }

  *(DerivedStorage + 960) = 0u;
  *(DerivedStorage + 976) = 0u;
  *(DerivedStorage + 985) = 0u;
  if (!*(DerivedStorage + 1016))
  {
    *(DerivedStorage + 1016) = FigSemaphoreCreate();
  }

LABEL_64:
  if (*(DerivedStorage + 24) || (CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers(), v52 = CMBufferQueueCreate(v44, 0, CallbacksForUnsortedSampleBuffers, (DerivedStorage + 24)), !v52))
  {
    if (*(DerivedStorage + 32) || (v52 = CMSimpleQueueCreate(v44, *(DerivedStorage + 392), (DerivedStorage + 32)), !v52))
    {
      if (*(DerivedStorage + 40) || (v52 = CMSimpleQueueCreate(v44, *(DerivedStorage + 392), (DerivedStorage + 40)), !v52))
      {
        FigRegisterIOSurfacePixelTransferCapability();
        if (!*(DerivedStorage + 56))
        {
          keys = 0;
          v52 = VTImageRotationSessionCreate();
          if (v52)
          {
            goto LABEL_102;
          }

          *(DerivedStorage + 56) = keys;
        }

        if (!*(DerivedStorage + 64))
        {
          keys = 0;
          v52 = VTImageRotationSessionCreate();
          if (v52)
          {
            goto LABEL_102;
          }

          *(DerivedStorage + 64) = keys;
        }

        if (*(DerivedStorage + 72))
        {
          goto LABEL_79;
        }

        keys = 0;
        v52 = VTImageRotationSessionCreate();
        if (!v52)
        {
          *(DerivedStorage + 72) = keys;
LABEL_79:
          v81.origin.y = *(DerivedStorage + 360);
          v81.size.width = *(DerivedStorage + 352);
          v81.size.height = *(DerivedStorage + 344);
          v81.origin.x = 0.0;
          cf = CGRectCreateDictionaryRepresentation(v81);
          *(DerivedStorage + 776) = CFDictionaryCreate(v44, MEMORY[0x277CF9670], &cf, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          CFRelease(cf);
          v53 = *(DerivedStorage + 344);
          v54 = *(DerivedStorage + 336);
          v55 = *(DerivedStorage + 312);
          v56 = a3 / v55;
          *(DerivedStorage + 316) = v56;
          v57 = a4 / v54;
          *(DerivedStorage + 320) = v57;
          *(DerivedStorage + 276) = 0;
          *(DerivedStorage + 928) = 0u;
          *(DerivedStorage + 944) = 0u;
          v71 = 0u;
          v58 = *(DerivedStorage + 352);
          v69[2] = 875704422;
          v69[3] = v53;
          v70 = v58;
          v69[0] = v55;
          v69[1] = (ceilf(v58 * 0.1) + v58);
          LODWORD(v71) = *(DerivedStorage + 192);
          BYTE4(v71) = *(DerivedStorage + 872);
          BYTE12(v71) = *(DerivedStorage + 792);
          v59 = IntValue;
          if (!v31)
          {
            v59 = 0;
          }

          DWORD2(v71) = v59;
          BlendingContext = createBlendingContext(v69);
          *(DerivedStorage + 424) = BlendingContext;
          if (v35)
          {
            setBlendingContextOptions(BlendingContext);
            BlendingContext = *(DerivedStorage + 424);
          }

          BlendingContext[2] = v50;
          setBlendingForceMaxComputation(BlendingContext);
          resetBlendingContext(*(DerivedStorage + 424));
          *(DerivedStorage + 756) = 0;
          *(DerivedStorage + 198) = 0;
          if (v66)
          {
            setPowerBlurTuning(*(DerivedStorage + 424), valuePtr, SHIDWORD(valuePtr));
          }

          v68 = 0;
          FigCreatePixelBufferAttributesWithIOSurfaceSupport();
          applyWiringAssertionToProperties(&v68);
          FigCreateIOSurfaceBackedCVPixelBufferWithAttributes();
          FigCreateIOSurfaceBackedCVPixelBufferWithAttributes();
          FigCreateIOSurfaceBackedCVPixelBufferWithAttributes();
          FigCreateIOSurfaceBackedCVPixelBufferWithAttributes();
          CVPixelBufferLockBaseAddress(*(DerivedStorage + 80), 0);
          CFRelease(v68);
          BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(*(DerivedStorage + 128), 0);
          Height = CVPixelBufferGetHeight(*(DerivedStorage + 128));
          *(DerivedStorage + 256) = PixelShuffler_constructor(BytesPerRowOfPlane, Height);
          memset(&sampleTiming, 0, sizeof(sampleTiming));
          CMVideoFormatDescriptionCreateForImageBuffer(v44, *(DerivedStorage + 80), (DerivedStorage + 104));
          CMSampleBufferCreateForImageBuffer(v44, *(DerivedStorage + 80), 1u, 0, 0, *(DerivedStorage + 104), &sampleTiming, (DerivedStorage + 88));
          sub_23C45A748(DerivedStorage);
          ACTLogAddListener(sub_23C45B748, 7, DerivedStorage);
          if (*(DerivedStorage + 444))
          {
            _createDebugWriteThread(a1);
          }

          *(DerivedStorage + 432) = createACTRegistrationContext();
          LegacyPano_reset(DerivedStorage);
          setACTRegistrationForceMaxComputation(*(DerivedStorage + 432), *(DerivedStorage + 792));
          if (v39)
          {
            v63 = ACTPano_GPUDownscaler();
          }

          else
          {
            v63 = 0;
          }

          v22 = 0;
          *(DerivedStorage + 856) = v63;
          *(DerivedStorage + 448) = 0;
          if (!v46)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        }
      }
    }
  }

LABEL_102:
  v22 = v52;
  if (v46)
  {
LABEL_91:
    CFRelease(v46);
  }

LABEL_92:
  if (v35)
  {
    CFRelease(v35);
  }

  return v22;
}

void sub_23C45B748(int a1, uint64_t a2, char *a3)
{
  if (a2)
  {
    if ((a1 - 1) > 1)
    {
      if (a1 == 4)
      {
        v5 = *(a2 + 448);
        if (v5)
        {
          fprintf(v5, "ERROR: %s", a3);
        }

        syslog(3, "ERROR: %s", a3);
      }
    }

    else
    {
      v4 = *(a2 + 448);
      if (v4)
      {

        fputs(a3, v4);
      }
    }
  }
}

uint64_t LegacyPano_copyProperty(uint64_t a1, CFTypeRef cf1, uint64_t a3, __CFDictionary **a4, NSObject **a5, NSObject **a6)
{
  if (CFEqual(cf1, @"HighResPanorama"))
  {
    *(a1 + 199) = 1;
    if (*(a1 + 197) || *(a1 + 196))
    {
      LegacyPano_stopCapture(a1);
    }

    ACTThreadMutexLock(*(a1 + 880));
    ACTThreadMutexLock(*(a1 + 888));
    if (*(a1 + 448))
    {
      HostTime = ACT_getHostTime();
      ACTLogMessageImp(1, "{Finishing|FinishBlendingBeginTS:%.3f}\n", HostTime);
    }

    *(a1 + 912) = finishBlending(*(a1 + 424)) == 0;
    v11 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if ((*(a1 + 872) & 1) == 0)
    {
      v30 = a4;
      v31 = a5;
      TargetContext = getTargetContext(*(a1 + 424));
      CFDictionaryAddValue(Mutable, @"Assembly", TargetContext);
      v43 = 0;
      Height = 0;
      v41 = 0;
      v38 = 0;
      v39 = 0;
      v37 = 0;
      getCroppingArea(*(a1 + 424));
      v14 = *(a1 + 848);
      v15 = (*(a1 + 352) + (*(a1 + 352) * -0.1));
      Height = CVPixelBufferGetHeight(TargetContext);
      v41 = ((Height >> 1) - (v15 >> 1)) & ~(((Height >> 1) - (v15 >> 1)) >> 31);
      v16 = v15;
      v42 = v15;
      if (v41 + v15 <= CVPixelBufferGetHeight(TargetContext))
      {
        v17 = v41;
      }

      else
      {
        v17 = CVPixelBufferGetHeight(TargetContext) - v15;
      }

      v18 = v14 & 0xFFFFFFFFFFFFFFFELL;
      v39 = v18;
      v19 = (1 - v14) & 0xFFFFFFFFFFFFFFFELL;
      if (v19 - v18 >= 0)
      {
        v20 = (v19 - v18);
      }

      else
      {
        v20 = (v18 - v19);
      }

      v43 = v20;
      if (Height - v17 >= v15)
      {
        v16 = Height - v17;
      }

      else
      {
        v21 = ((v17 + Height) >> 1) - (v15 >> 1);
        v41 = v21 & ~(v21 >> 31);
        if (v15 + v41 <= CVPixelBufferGetHeight(TargetContext))
        {
          v17 = v41;
        }

        else
        {
          v17 = CVPixelBufferGetHeight(TargetContext) - v15;
        }
      }

      a4 = v30;
      v22 = v16 & 0xFFFFFFFFFFFFFFFELL;
      v41 = v17 & 0xFFFFFFFFFFFFFFFELL;
      v42 = v22;
      if (*(a1 + 448))
      {
        v23 = ACT_getHostTime();
        ACTLogMessageImp(1, "{Finishing|ACTNoiseReductionBeginTS:%.3f}{Finishing|ACTNoiseReductionRect_in:%d,%d,%d,%d}\n", v23, v18, v41, v20, v22);
      }

      if (*(a1 + 864))
      {
        a5 = v31;
      }

      else
      {
        a5 = v31;
        if (*(a1 + 920))
        {
          if (*(a1 + 164) == 1)
          {
            *bytes = v37 - v38;
            ACTFinalThreadedNoiseReduction((a1 + 920), &v38, &v41, bytes, &v42);
          }

          if (v20 > *(a1 + 312))
          {
            v43 = *(a1 + 312);
          }
        }

        else
        {
          v29 = *(a1 + 424);
          if (v29)
          {
            setACTNoiseReductionCropRect(*(v29 + 8), &v39, &v41, &v43, &v42, 1);
            v18 = v39;
          }
        }
      }

      if (v18 <= v19)
      {
        v24 = v43;
      }

      else
      {
        v39 = v19;
        v43 = 0;
        v24 = 0.0;
        v18 = v19;
      }

      *bytes = v18;
      v34 = v41;
      v35 = v24;
      v36 = v42;
      v25 = CFDataCreate(v11, bytes, 32);
      CFDictionaryAddValue(Mutable, @"CropRect", v25);
      CFRelease(v25);
    }

    ACTThreadMutexLock(*(a1 + 896));
    v26 = dispatch_queue_create("ThumbnailCreation", MEMORY[0x277D85CD8]);
    v27 = dispatch_group_create();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = sub_23C45BBFC;
    block[3] = &unk_278BBD828;
    block[4] = a1;
    block[5] = Mutable;
    dispatch_group_async(v27, v26, block);
    *a4 = Mutable;
    *a5 = v26;
    *a6 = v27;
  }

  return 0;
}

void sub_23C45BBFC(uint64_t a1)
{
  v2 = *(a1 + 32);
  cf = 0;
  pixelBuffer = 0;
  v3 = *(v2 + 296);
  if (floorf(v3) >= CVPixelBufferGetWidth(*(v2 + 80)))
  {
    CVPixelBufferGetWidth(*(v2 + 80));
  }

  Height = CVPixelBufferGetHeight(*(v2 + 80));
  applyWiringAssertionToProperties(&cf);
  IOSurfaceBackedCVPixelBufferWithAttributes = FigCreateIOSurfaceBackedCVPixelBufferWithAttributes();
  if (cf)
  {
    CFRelease(cf);
  }

  v6 = pixelBuffer;
  if (IOSurfaceBackedCVPixelBufferWithAttributes)
  {
    v7 = 1;
  }

  else
  {
    v7 = pixelBuffer == 0;
  }

  if (!v7)
  {
    CVPixelBufferLockBaseAddress(pixelBuffer, 0);
    BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
    v9 = CVPixelBufferGetBytesPerRow(*(v2 + 80));
    BaseAddress = CVPixelBufferGetBaseAddress(*(v2 + 80));
    v11 = *(v2 + 280);
    v12 = CVPixelBufferGetBaseAddress(pixelBuffer);
    if (Height)
    {
      v13 = v12;
      v14 = v11;
      v15 = &BaseAddress[vcvts_n_u32_f32(floorf(v14), 2uLL)];
      do
      {
        memcpy(v13, v15, BytesPerRow);
        v15 += v9;
        v13 += BytesPerRow;
        --Height;
      }

      while (Height);
    }

    CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
    v6 = pixelBuffer;
  }

  if (v6)
  {
    CFDictionaryAddValue(*(a1 + 40), @"ACTPanoramaPreviewThumbnailBuffer", v6);
    CVPixelBufferRelease(v6);
  }
}

uint64_t LegacyPano_finishProcessing(uint64_t a1)
{
  resetBlendingContext(*(a1 + 424));
  *(a1 + 756) = 0;
  *(a1 + 198) = 0;
  *(a1 + 912) = 0;
  if (*(a1 + 736))
  {
    *(a1 + 736) = 0;
  }

  CMBufferQueueReset(*(a1 + 24));
  while (1)
  {
    v2 = CMSimpleQueueDequeue(*(a1 + 32));
    if (!v2)
    {
      break;
    }

    CFRelease(v2);
  }

  while (1)
  {
    v3 = CMSimpleQueueDequeue(*(a1 + 40));
    if (!v3)
    {
      break;
    }

    CFRelease(v3);
  }

  while (1)
  {
    v4 = CMSimpleQueueDequeue(*(a1 + 48));
    if (!v4)
    {
      break;
    }

    CFRelease(v4);
  }

  CMSimpleQueueReset(*(a1 + 32));
  CMSimpleQueueReset(*(a1 + 40));
  CMSimpleQueueReset(*(a1 + 48));
  ACTThreadMutexUnlock(*(a1 + 880));
  ACTThreadMutexUnlock(*(a1 + 888));
  ACTThreadMutexUnlock(*(a1 + 896));
  v5 = *(a1 + 904);
  if (v5)
  {
    ACTThreadMutexUnlock(v5);
  }

  return 0;
}

CFTypeRef sub_23C45C4E8(size_t a1, const char *a2, OSType a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  cf = 0;
  v12 = *MEMORY[0x277CC4DE8];
  v13[0] = MEMORY[0x277CBEC10];
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v13, &v12, 1);
  v7 = CVPixelBufferCreate(0, a1, a2, a3, v6, &cf);
  v8 = cf;
  if (v7)
  {
    v9 = cf == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    CFRelease(cf);
    v8 = 0;
    cf = 0;
  }

  return v8;
}

CFTypeRef sub_23C45F9C4()
{

  return sub_23C45C4E8(v1, v2, 0x32433068u);
}

CFTypeRef sub_23C45F9F4(size_t a1, const char *a2)
{

  return sub_23C45C4E8(a1, a2, 0x32433068u);
}

void sub_23C45FA0C(uint64_t a1)
{
  v4 = *(v1 + 8 * v2);
  *(v1 + 8 * v2) = a1;
}

uint64_t sub_23C45FA3C(void *a1, const char *a2)
{
  v4 = 4 * *(v2 + 2064);

  return objc_msgSend_newBufferWithLength_options_(a1, a2, v4, 0);
}

CFTypeRef sub_23C45FA5C()
{

  return sub_23C45C4E8(v0, v1, 0x52476841u);
}

uint64_t MFRegInitContext(int a1, char a2, char a3, char a4, uint64_t a5)
{
  v9 = (a5 + 4096);
  *(a5 + 4220) = a1;
  *(a5 + 2076) = 0x3F80000000000000;
  *(a5 + 4176) = 0x3F80000000000000;
  MFResetCorrector(a5);
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  v9[128] = a2;
  v9[129] = a3;
  v9[130] = a4;
  return 0;
}

uint64_t MFResetCorrector(uint64_t a1)
{
  *(a1 + 20) = 0;
  *(a1 + 2084) = xmmword_23C47A990;
  *(a1 + 2100) = 2139095039;
  *(a1 + 4184) = xmmword_23C47A990;
  *(a1 + 2120) = 0;
  *(a1 + 2104) = 0;
  *(a1 + 2112) = 0;
  *(a1 + 2116) = 1;
  *(a1 + 4200) = 2139095039;
  *(a1 + 4208) = 0;
  *(a1 + 4216) = 1;
  return 0;
}

uint64_t MFRegDisposeContext(uint64_t a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t MFRegUpdateCorrector(__CVBuffer *a1, uint64_t a2, float a3, float a4, float a5, float a6)
{
  v11 = a2 + 2084;
  v23 = 0;
  valuePtr = 0.0;
  Attachment = CVBufferGetAttachment(a1, @"CaptureTimeInSeconds", 0);
  if (Attachment)
  {
    CFNumberGetValue(Attachment, kCFNumberFloatType, &valuePtr);
  }

  if (*(a2 + 4220))
  {
    v13 = sub_23C461190(a2 + 20, a2 + 2104, &v23, a3, a5);
    if (v13)
    {
      *(a2 + 20) = 0;
      *(a2 + 24) = 0;
      *v11 = xmmword_23C47A990;
      *(v11 + 16) = 2139095039;
      *(a2 + 2108) = 0;
      *(a2 + 2116) = 1;
    }

    else
    {
      v14 = valuePtr;
      *(a2 + 2108) = valuePtr;
      if (*(a2 + 2116))
      {
        *(a2 + 2104) = v14;
        *(a2 + 2116) = 0;
        v15 = v14;
      }

      else
      {
        v15 = *(a2 + 2104);
      }

      if ((v14 - v15) <= 0.66)
      {
        ++*(a2 + 2112);
      }
    }

    if (v23 == 1)
    {
      *(a2 + 2100) = valuePtr;
      *(a2 + 2092) = *(a2 + 2084);
      *(a2 + 2096) = *(a2 + 2088);
    }
  }

  else
  {
    v13 = 0;
  }

  if ((*(a2 + 4220) & 2) != 0)
  {
    v17 = (a2 + 4204);
    v16 = sub_23C461190(a2 + 2120, a2 + 4204, &v23, a4, a6);
    if (v16)
    {
      *(a2 + 2120) = 0;
      *(v11 + 2100) = xmmword_23C47A990;
      *(a2 + 4200) = 2139095039;
      *(a2 + 4208) = 0;
      *(v11 + 2132) = 1;
      v18 = 0.0;
    }

    else
    {
      v19 = valuePtr;
      *(a2 + 4208) = valuePtr;
      if (*(v11 + 2132))
      {
        *v17 = v19;
        *(v11 + 2132) = 0;
        v18 = v19;
      }

      else
      {
        v18 = *v17;
      }

      if ((v19 - v18) <= 0.66)
      {
        ++*(a2 + 4212);
      }
    }

    if (v23 == 1)
    {
      v20 = valuePtr;
      *(a2 + 4200) = valuePtr;
      *(a2 + 4192) = *(a2 + 4184);
      *(a2 + 4208) = v20;
      if (v16)
      {
        *(a2 + 4204) = v20;
        *(v11 + 2132) = 0;
        v18 = v20;
      }

      if ((v20 - v18) <= 0.66)
      {
        ++*(a2 + 4212);
      }
    }
  }

  else
  {
    v16 = 0;
  }

  return 2 * ((v16 | v13) != 0);
}

uint64_t sub_23C461190(uint64_t a1, uint64_t a2, _BYTE *a3, float a4, float a5)
{
  *a3 = 0;
  if (*a1 == 255)
  {
    v7 = 0;
  }

  else
  {
    v7 = *a1 + 1;
  }

  *a1 = v7;
  if (*(a1 + 2064) > a5)
  {
    *(a1 + 2064) = a5;
  }

  if (*(a1 + 2068) < a5)
  {
    *(a1 + 2068) = a5;
  }

  v8 = a1 + 8;
  *(a1 + 8 + 4 * v7) = a4;
  v9 = a1 + 1032;
  *(a1 + 1032 + 4 * v7) = a5;
  v10 = *(a1 + 4);
  if (v10 <= 255)
  {
    *(a1 + 4) = v10 + 1;
  }

  if ((*(a2 + 4) - *a2) < 0.66 || (*(a1 + 2068) - *(a1 + 2064)) < 2.0)
  {
    return 0;
  }

  v12 = *(a2 + 8);
  if (v12 < 1)
  {
    v18 = 0.0;
    v17 = 0.0;
    v15 = 0.0;
    v13 = 0.0;
  }

  else
  {
    v13 = 0.0;
    v14 = *(a2 + 8);
    v15 = 0.0;
    v16 = v7;
    v17 = 0.0;
    v18 = 0.0;
    do
    {
      v19 = *(v8 + 4 * v16);
      v20 = *(v9 + 4 * v16);
      v13 = v13 + (v19 * v20);
      v15 = v15 + (v20 * v20);
      v18 = v18 + v19;
      v17 = v17 + v20;
      v21 = __OFSUB__(v16--, 1);
      if (v16 < 0 != v21)
      {
        v16 = 255;
      }

      --v14;
    }

    while (v14);
  }

  v22 = v12;
  v23 = (v12 * v15) - (v17 * v17);
  if (isZero(v23))
  {
    return 2;
  }

  v24 = ((v22 * v13) - (v18 * v17)) / v23;
  v25 = (v18 - (v24 * v17)) / v22;
  if (v12 >= 1)
  {
    while (vabds_f32(*(v8 + 4 * v7), v25 + (v24 * *(v9 + 4 * v7))) <= 5.0)
    {
      if (v7 >= 1)
      {
        --v7;
      }

      else
      {
        v7 = 255;
      }

      if (!--v12)
      {
        goto LABEL_28;
      }
    }

    return 2;
  }

LABEL_28:
  result = 0;
  *(a1 + 2056) = v25;
  *(a1 + 2060) = v24;
  *a3 = 1;
  return result;
}

uint64_t MFRegDampenCorrector(__CVBuffer *a1, float *a2)
{
  valuePtr = 0.0;
  Attachment = CVBufferGetAttachment(a1, @"CaptureTimeInSeconds", 0);
  if (Attachment)
  {
    CFNumberGetValue(Attachment, kCFNumberFloatType, &valuePtr);
    v4 = valuePtr;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = (v4 - a2[527]) * 0.25;
  if (v5 <= 1.0)
  {
    a2[519] = ((1.0 - v5) * a2[519]) + (v5 * 0.0);
    a2[520] = v5 + ((1.0 - v5) * a2[520]);
  }

  else
  {
    *(a2 + 519) = 0x3F80000000000000;
  }

  v6 = (v4 - a2[1052]) * 0.25;
  if (v6 <= 1.0)
  {
    a2[1044] = ((1.0 - v6) * a2[1044]) + (v6 * 0.0);
    a2[1045] = v6 + ((1.0 - v6) * a2[1045]);
  }

  else
  {
    *(a2 + 522) = 0x3F80000000000000;
  }

  return 0;
}

const __CFDictionary *MFHasMotionFilterTranslation(__CVBuffer *a1, const void **a2, _DWORD *a3)
{
  *a2 = 0;
  attachmentMode = kCVAttachmentMode_ShouldNotPropagate;
  Attachment = CVBufferGetAttachment(a1, @"CaptureTimeInSeconds", &attachmentMode);
  if (Attachment)
  {
    CFNumberGetValue(Attachment, kCFNumberFloatType, a3);
  }

  else
  {
    *a3 = 0;
  }

  result = CVBufferGetAttachment(a1, @"MetadataDictionary", 0);
  if (result)
  {
    v8 = result;
    value = 0;
    result = CFDictionaryGetValueIfPresent(result, @"MotionDataError", &value);
    if (result)
    {
      valuePtr = 0;
      CFNumberGetValue(value, kCFNumberIntType, &valuePtr);
      result = 0;
      if (!valuePtr)
      {
        return (CFDictionaryGetValueIfPresent(v8, @"Translation", a2) != 0);
      }
    }
  }

  return result;
}

const __CFDictionary *MFGetMotionFilterAbsoluteTranslation(__CVBuffer *a1, uint64_t a2, float *a3, float *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  *a3 = 0.0;
  *a4 = 0.0;
  theData = 0;
  v16 = 0;
  v7 = MFHasMotionFilterTranslation(a1, &theData, &v16);
  if (v7)
  {
    v8 = theData;
    v21.length = CFDataGetLength(theData);
    v21.location = 0;
    CFDataGetBytes(v8, v21, buffer);
    if (*(a2 + 16))
    {
      v9 = *buffer;
      v10 = v19;
      *a2 = *buffer;
      *(a2 + 8) = v10;
      *(a2 + 16) = 0;
      v11 = v10;
      v12 = v9;
    }

    else
    {
      v12 = *a2;
      v11 = *(a2 + 8);
      v9 = *buffer;
      v10 = v19;
    }

    v13 = v9 - v12;
    *a3 = v13;
    v14 = v10 - v11;
    *a4 = v14;
  }

  return v7;
}

const __CFDictionary *MFGetMotionFilterIncrementalTranslation(__CVBuffer *a1, __CVBuffer *a2, uint64_t a3, float *a4, float *a5)
{
  *a4 = 0.0;
  *a5 = 0.0;
  v11 = 0;
  v12 = 0;
  result = MFGetMotionFilterAbsoluteTranslation(a1, a3, &v12 + 1, &v12);
  if (result)
  {
    result = MFGetMotionFilterAbsoluteTranslation(a2, a3, &v11 + 1, &v11);
    if (result)
    {
      v10 = *&v12;
      *a4 = *(&v11 + 1) - *(&v12 + 1);
      *a5 = *&v11 - v10;
      return 1;
    }
  }

  return result;
}

uint64_t MFRegRegisterSlices(__CVBuffer *a1, __CVBuffer *a2, uint64_t a3, float *a4, float *a5, _DWORD *a6)
{
  v17 = 0;
  if (MFGetMotionFilterIncrementalTranslation(a1, a2, a3, &v17 + 1, &v17))
  {
    v11 = *(&v17 + 1);
    *a4 = *(&v17 + 1);
    valuePtr = 0.0;
    Attachment = CVBufferGetAttachment(a2, @"CaptureTimeInSeconds", 0);
    if (Attachment)
    {
      CFNumberGetValue(Attachment, kCFNumberFloatType, &valuePtr);
    }

    v13 = *(a3 + 4220);
    if ((v13 & 1) != 0 && (valuePtr - *(a3 + 2100)) < 3.4028e38 && v11 >= *(a3 + 2092) && v11 <= *(a3 + 2096))
    {
      *a4 = *(a3 + 2076) + (*(a3 + 2080) * v11);
    }

    v14 = *&v17;
    *a5 = v17;
    if ((v13 & 2) != 0 && (valuePtr - *(a3 + 4200)) < 3.4028e38 && v14 >= *(a3 + 4192) && v14 <= *(a3 + 4196))
    {
      *a5 = *(a3 + 4176) + (*(a3 + 4180) * v14);
    }

    result = 0;
    *a6 = 1065353216;
  }

  else
  {
    *a6 = 0;
    return 4294967294;
  }

  return result;
}

char *createMultiBandNoiseReductionContext(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0xB0uLL, 0x10E004035FB00AEuLL);
  v3 = v2;
  if (!v2)
  {
    return v3;
  }

  *(v2 + 72) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 2) = *a1;
  *(v2 + 1) = 0;
  v4 = (v2 + 8);
  *v2 = 0;
  v5 = *(a1 + 40);
  if (v5)
  {
    v5 = CFRetain(v5);
  }

  v7 = (v3 + 112);
  v6 = *(v3 + 14);
  *(v3 + 21) = v5;
  v8 = *(a1 + 8);
  v9 = *(a1 + 32);
  *(v3 + 30) = v9;
  *(v3 + 12) = v8;
  *(v3 + 13) = 0;
  if (v6)
  {
    *(v3 + 14) = 0;

    v9 = *(v3 + 30);
  }

  if ((v9 - 7) < 2)
  {
    objc_storeStrong(v3 + 14, *(a1 + 24));
  }

  else if ((v9 - 5) <= 1)
  {
    *(v3 + 13) = *(a1 + 16);
  }

  v10 = CVPixelBufferGetHeight(*a1) + 15;
  v11 = *MEMORY[0x277CBECE8];
  v12 = MEMORY[0x277CBF138];
  v13 = MEMORY[0x277CBF150];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  pixelBufferAttributes = Mutable;
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4F68], *MEMORY[0x277CBED28]);
  valuePtr = 64;
  v15 = CFNumberCreate(v11, kCFNumberSInt32Type, &valuePtr);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4D60], v15);
  CFRelease(v15);
  v16 = CFDictionaryCreateMutable(v11, 0, v12, v13);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CC4DE8], v16);
  CFRelease(v16);
  applyWiringAssertionToProperties(&pixelBufferAttributes);
  CVPixelBufferCreate(v11, 0x200uLL, v10 & 0xFFFFFFFFFFFFFFF0, 0x34323066u, pixelBufferAttributes, v3);
  v17 = *(v3 + 30);
  if (v17 <= 8 && ((1 << v17) & 0x190) != 0)
  {
    CVPixelBufferCreate(v11, 0x200uLL, v10 & 0xFFFFFFFFFFFFFFF0, 0x34323066u, pixelBufferAttributes, v3 + 1);
    v17 = *(v3 + 30);
  }

  if (v17 - 7 > 1 || !*v7)
  {
    goto LABEL_25;
  }

  v18 = *v7;
  v19 = *(v3 + 30);
  if (v19 == 8)
  {
    v20 = @"NRFPrepareDescriptor";
LABEL_19:
    NSClassFromString(&v20->isa);
    v21 = objc_opt_new();
    if (!v21)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  if (v19 == 7)
  {
    v20 = @"UBPrepareDescriptor";
    goto LABEL_19;
  }

  v21 = 0;
LABEL_22:
  Width = CVPixelBufferGetWidth(*v4);
  objc_msgSend_setWidth_(v21, v23, Width, v24);
  Height = CVPixelBufferGetHeight(*v4);
  objc_msgSend_setHeight_(v21, v26, Height, v27);
  objc_msgSend_setPixelFormat_(v21, v28, 875704422, v29);
  objc_msgSend_setAllowModifyingInputBuffers_(v21, v30, 0, v31);
  if (!objc_msgSend_prepareToProcess_prepareDescriptor_(v18, v32, 0, v21))
  {
LABEL_24:

LABEL_25:
    CFRelease(pixelBufferAttributes);
    *(v3 + 20) = CFArrayCreateMutable(v11, 0, MEMORY[0x277CBF128]);
    return v3;
  }

  destroyMultiBandNoiseReductionContext(v3);
  CFRelease(pixelBufferAttributes);

  return 0;
}

void destroyMultiBandNoiseReductionContext(__CVBuffer **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CVPixelBufferRelease(v2);
    }

    v3 = a1[1];
    if (v3)
    {
      CVPixelBufferRelease(v3);
    }

    v4 = a1[20];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = a1[21];
    if (v5)
    {
      CFRelease(v5);
    }

    free(a1);
  }
}

void updateMultiBandNoiseReductionCropRect(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v10 = *(a1 + 72) + *(a1 + 56);
    v11 = a4 + a2 - v10;
    if (a4 + a2 > v10)
    {
      v12 = *MEMORY[0x277CBECE8];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      sub_23C462CF4(Mutable, @"RangeStart", v10);
      sub_23C462CF4(Mutable, @"RangeWidth", v11);
      sub_23C462D64(Mutable, @"agcGain", *(a1 + 132));
      sub_23C462D64(Mutable, @"sensorDGain", *(a1 + 136));
      sub_23C462D64(Mutable, @"ispDGain", *(a1 + 140));
      sub_23C462D64(Mutable, @"awbRGain", *(a1 + 144));
      sub_23C462D64(Mutable, @"awbGGain", *(a1 + 148));
      sub_23C462D64(Mutable, @"awbBGain", *(a1 + 152));
      valuePtr = *(a1 + 128);
      v14 = CFNumberCreate(v12, kCFNumberFloat32Type, &valuePtr);
      if (v14)
      {
        v15 = v14;
        CFDictionaryAddValue(Mutable, @"exposureTime", v14);
        CFRelease(v15);
      }

      CFArrayAppendValue(*(a1 + 160), Mutable);
      CFRelease(Mutable);
    }

    *(a1 + 56) = a2;
    *(a1 + 64) = a3;
    *(a1 + 72) = a4;
    *(a1 + 80) = a5;
    *(a1 + 88) = 1;
  }
}

const __CFDictionary *updateMultiBandNoiseReductionMetadata(const __CFDictionary *result, CFDictionaryRef theDict)
{
  *&v22[14] = *MEMORY[0x277D85DE8];
  if (result && theDict)
  {
    v3 = result;
    Value = CFDictionaryGetValue(theDict, *MEMORY[0x277CF4C58]);
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberFloat32Type, v3 + 128);
    }

    v5 = CFDictionaryGetValue(theDict, *MEMORY[0x277CF4970]);
    if (v5)
    {
      CFNumberGetValue(v5, kCFNumberIntType, v3 + 132);
    }

    v6 = CFDictionaryGetValue(theDict, *MEMORY[0x277CF5360]);
    if (v6)
    {
      CFNumberGetValue(v6, kCFNumberIntType, v3 + 136);
    }

    v7 = CFDictionaryGetValue(theDict, *MEMORY[0x277CF5340]);
    if (v7)
    {
      CFNumberGetValue(v7, kCFNumberIntType, v3 + 140);
    }

    v8 = CFDictionaryGetValue(theDict, *MEMORY[0x277CF49D8]);
    if (v8)
    {
      CFNumberGetValue(v8, kCFNumberIntType, v3 + 144);
    }

    v9 = CFDictionaryGetValue(theDict, *MEMORY[0x277CF49B0]);
    if (v9)
    {
      CFNumberGetValue(v9, kCFNumberIntType, v3 + 148);
    }

    v10 = CFDictionaryGetValue(theDict, *MEMORY[0x277CF4978]);
    if (v10)
    {
      CFNumberGetValue(v10, kCFNumberIntType, v3 + 152);
    }

    v11 = CFDictionaryGetValue(theDict, *MEMORY[0x277CF5C30]);
    result = *(v3 + 21);
    if (result)
    {
      v12 = v11 ? v11 : *MEMORY[0x277CF3CD8];
      result = CFDictionaryGetValue(result, v12);
      if (result)
      {
        CFStringGetCString(result, buffer, 16, 0);
        if (buffer[0] == 48 && buffer[1] == 120)
        {
          v13 = 0;
          v14 = v22;
          v15 = &buffer[strlen(buffer)];
          v16 = MEMORY[0x277D85DE0];
          while (1)
          {
            v17 = *v14;
            result = (v17 & 0x80000000) != 0 ? __maskrune(v17, 0x10000uLL) : (*(v16 + 4 * v17 + 60) & 0x10000);
            if (!result && v14 < v15)
            {
              break;
            }

            v19 = *v14;
            if ((v19 - 97) > 5)
            {
              if ((v19 - 65) > 5)
              {
                v20 = v19 - 48;
                if (v20 > 9)
                {
                  break;
                }

                v20 = v20;
              }

              else
              {
                v20 = v19 - 55;
              }
            }

            else
            {
              v20 = v19 - 87;
            }

            v13 = v20 + 16 * v13;
            ++v14;
          }
        }

        else
        {
          result = atoi(buffer);
          v13 = result;
        }

        *(v3 + 31) = v13;
      }
    }
  }

  return result;
}

void DoMultiBandNoiseReductionComplete(uint64_t a1, int a2)
{
  v2 = a1;
  v3 = *(a1 + 120);
  if (v3 > 8)
  {
    v4 = "Unknown";
  }

  else
  {
    v4 = off_278BBD918[v3];
  }

  ACTLogMessageImp(1, "DoMultiBandNoiseReductionComplete (%s)\n", v4);
  v5 = *(v2 + 72);
  v6 = *(v2 + 40);
  if (v5 != v6)
  {
    allocator = *MEMORY[0x277CBECE8];
    if (a2)
    {
      v7 = 0;
    }

    else
    {
      v7 = -32;
    }

    v108 = v7;
    key = *MEMORY[0x277CF5168];
    v106 = *MEMORY[0x277CF4C58];
    v105 = *MEMORY[0x277CF4970];
    v104 = *MEMORY[0x277CF5360];
    v103 = *MEMORY[0x277CF5340];
    v102 = *MEMORY[0x277CF49D8];
    v101 = *MEMORY[0x277CF49B0];
    v100 = *MEMORY[0x277CF4978];
    v98 = *MEMORY[0x277CF6968];
    v97 = *MEMORY[0x277CF6960];
    v96 = *MEMORY[0x277CBED28];
    v99 = *MEMORY[0x277CF6998];
    v112 = v2;
    do
    {
      if (v6)
      {
        v8 = -32;
      }

      else
      {
        v8 = 0;
      }

      if (v6)
      {
        v5 = v5 - v6 + 32;
      }

      if (!a2)
      {
        v5 -= 288;
      }

      if (v5 <= 511 && a2 == 0)
      {
        break;
      }

      v121 = v8;
      v110 = 32 * (v6 != 0);
      v10 = *(v2 + 24) + v6;
      if (v5 >= 512)
      {
        v11 = 512;
      }

      else
      {
        v11 = v5;
      }

      v123 = v11;
      v125 = v10;
      CVPixelBufferLockBaseAddress(*(v2 + 16), 0);
      CVPixelBufferLockBaseAddress(*v2, 0);
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(*(v2 + 16), 0);
      v13 = CVPixelBufferGetBaseAddressOfPlane(*(v2 + 16), 1uLL);
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(*(v2 + 16), 0);
      v15 = CVPixelBufferGetBytesPerRowOfPlane(*(v2 + 16), 1uLL);
      HeightOfPlane = CVPixelBufferGetHeightOfPlane(*(v2 + 16), 0);
      v17 = CVPixelBufferGetBaseAddressOfPlane(*v2, 0);
      v18 = CVPixelBufferGetBaseAddressOfPlane(*v2, 1uLL);
      v19 = CVPixelBufferGetBytesPerRowOfPlane(*v2, 0);
      v20 = CVPixelBufferGetBytesPerRowOfPlane(*v2, 1uLL);
      if (HeightOfPlane)
      {
        v21 = v20;
        v22 = HeightOfPlane;
        v23 = v125 - v110;
        v24 = &v13[v23 & 0xFFFFFFFFFFFFFFFELL];
        v25 = &BaseAddressOfPlane[v23];
        v119 = v22;
        do
        {
          memcpy(v17, v25, v123);
          v25 += BytesPerRowOfPlane;
          v17 += v19;
          --v22;
        }

        while (v22);
        if (v119 != 1)
        {
          v26 = v119 >> 1;
          do
          {
            memcpy(v18, v24, v123);
            v24 += v15;
            v18 += v21;
            --v26;
          }

          while (v26);
        }
      }

      v27 = v112;
      CVPixelBufferUnlockBaseAddress(*(v112 + 16), 0);
      CVPixelBufferUnlockBaseAddress(*v112, 0);
      formatDescriptionOut = 0;
      memset(&sampleTiming, 0, sizeof(sampleTiming));
      v127 = 0;
      sampleBufferOut = 0;
      CMVideoFormatDescriptionCreateForImageBuffer(allocator, *v112, &formatDescriptionOut);
      CMSampleBufferCreateForImageBuffer(allocator, *v112, 1u, 0, 0, formatDescriptionOut, &sampleTiming, &sampleBufferOut);
      v124 = v121 + v108 + v123;
      v133 = 0;
      v132 = 0;
      v135 = 0;
      v134 = 0;
      if (CFArrayGetCount(*(v112 + 160)) >= 1)
      {
        v120 = 0;
        v117 = 0;
        v118 = 0;
        v116 = 0;
        v28 = 0;
        v122 = 0;
        v29 = 0;
        v30 = 0.0;
        v31 = v125 + v124;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(v27 + 160), v28);
          v33 = sub_23C462DD4(ValueAtIndex, @"RangeStart", 0);
          v34 = sub_23C462DD4(ValueAtIndex, @"RangeWidth", 0);
          v35 = v34 + v33;
          v36 = v31 - v33;
          if (v31 <= v33 || v35 <= v125)
          {
            if (v31 <= v33)
            {
              goto LABEL_69;
            }
          }

          else
          {
            v38 = v35 - v125;
            if (v35 > v31)
            {
              v38 = v124;
            }

            else
            {
              v36 = v34;
            }

            if (v33 >= v125)
            {
              v39 = v36;
            }

            else
            {
              v39 = v38;
            }

            if (v39 > 0)
            {
              v40 = sub_23C462DD4(ValueAtIndex, @"agcGain", 256);
              v41 = sub_23C462DD4(ValueAtIndex, @"sensorDGain", 256);
              v42 = sub_23C462DD4(ValueAtIndex, @"ispDGain", 256);
              v115 = sub_23C462DD4(ValueAtIndex, @"awbRGain", 256);
              v114 = sub_23C462DD4(ValueAtIndex, @"awbGGain", 256);
              v113 = sub_23C462DD4(ValueAtIndex, @"awbBGain", 256);
              Value = CFDictionaryGetValue(ValueAtIndex, @"exposureTime");
              v44 = 1.0;
              if (Value)
              {
                v45 = Value;
                v46 = CFGetTypeID(Value);
                if (v46 == CFNumberGetTypeID())
                {
                  valuePtr[0] = 0.0;
                  CFNumberGetValue(v45, kCFNumberFloat32Type, valuePtr);
                  v44 = valuePtr[0];
                }
              }

              v47 = v117;
              v48 = HIDWORD(v117);
              if (v40 > v117)
              {
                v47 = v40;
              }

              if (v41 > SHIDWORD(v117))
              {
                v48 = v41;
              }

              v49 = v116;
              if (v42 > v116)
              {
                v49 = v42;
              }

              if (v122)
              {
                v50 = v47;
              }

              else
              {
                v50 = v40;
              }

              if (v122)
              {
                v51 = v48;
              }

              else
              {
                v51 = v41;
              }

              v117 = __PAIR64__(v51, v50);
              HIDWORD(v132) = v50;
              LODWORD(v133) = v51;
              if (v122)
              {
                v52 = v49;
              }

              else
              {
                v52 = v42;
              }

              v116 = v52;
              HIDWORD(v133) = v52;
              LODWORD(v134) = v118 + v115 * v39;
              LODWORD(v118) = v134;
              HIDWORD(v118) += v114 * v39;
              v120 += v113 * v39;
              HIDWORD(v134) = HIDWORD(v118);
              v135 = v120;
              v30 = v30 + (v44 * v39);
              *&v132 = v30;
              v122 += v39;
              if (v35 <= v31)
              {
                v27 = v112;
                CFArrayRemoveValueAtIndex(*(v112 + 160), v28);
              }

              else
              {
                ++v29;
                v27 = v112;
              }

              goto LABEL_68;
            }
          }

          ++v29;
LABEL_68:
          v28 = v29;
          if (CFArrayGetCount(*(v27 + 160)) <= v29)
          {
LABEL_69:
            if (v122)
            {
              LODWORD(v134) = (v118 + (v122 >> 1)) / v122;
              HIDWORD(v134) = (HIDWORD(v118) + (v122 >> 1)) / v122;
              v135 = (v120 + (v122 >> 1)) / v122;
              *&v132 = v30 / v122;
            }

            break;
          }
        }
      }

      v131 = *(v27 + 124);
      Mutable = CFDictionaryCreateMutable(allocator, 7, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v54 = CFNumberCreate(allocator, kCFNumberIntType, &v131);
      CFDictionaryAddValue(Mutable, key, v54);
      CFRelease(v54);
      v55 = CFNumberCreate(allocator, kCFNumberFloatType, &v132);
      CFDictionaryAddValue(Mutable, v106, v55);
      CFRelease(v55);
      v56 = CFNumberCreate(allocator, kCFNumberIntType, &v132 + 4);
      CFDictionaryAddValue(Mutable, v105, v56);
      CFRelease(v56);
      v57 = CFNumberCreate(allocator, kCFNumberIntType, &v133);
      CFDictionaryAddValue(Mutable, v104, v57);
      CFRelease(v57);
      v58 = CFNumberCreate(allocator, kCFNumberIntType, &v133 + 4);
      CFDictionaryAddValue(Mutable, v103, v58);
      CFRelease(v58);
      v59 = CFNumberCreate(allocator, kCFNumberIntType, &v134);
      CFDictionaryAddValue(Mutable, v102, v59);
      CFRelease(v59);
      v60 = CFNumberCreate(allocator, kCFNumberIntType, &v134 + 4);
      CFDictionaryAddValue(Mutable, v101, v60);
      CFRelease(v60);
      v61 = CFNumberCreate(allocator, kCFNumberIntType, &v135);
      CFDictionaryAddValue(Mutable, v100, v61);
      CFRelease(v61);
      CMSetAttachment(sampleBufferOut, @"MetadataDictionary", Mutable, 0);
      v62 = *(v27 + 120);
      if ((v62 - 5) >= 2)
      {
        if ((v62 - 7) <= 1)
        {
          v77 = *(v27 + 112);
          if (v77)
          {
            sub_23C474410(&sampleBufferOut, v77, v62, (v27 + 8));
            goto LABEL_90;
          }
        }
      }

      else
      {
        v63 = *(v27 + 104);
        if (v63)
        {
          v64 = sampleBufferOut;
          v65 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v65)
          {
            v65(v63, sub_23C462E40, v27);
          }

          if (*(v27 + 120) == 6)
          {
            v66 = 10;
          }

          else
          {
            v66 = 0;
          }

          v131 = v66;
          v67 = CFNumberCreate(allocator, kCFNumberSInt32Type, &v131);
          FigBaseObject = FigSampleBufferProcessorGetFigBaseObject();
          v69 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v69)
          {
            v70 = v69(FigBaseObject, v98, v67);
            CFRelease(v67);
            if (!v70)
            {
              v71 = *(v27 + 104);
              v72 = *(*(CMBaseObjectGetVTable() + 16) + 16);
              if (v72)
              {
                if (!v72(v71, v64))
                {
                  v73 = FigSampleBufferProcessorGetFigBaseObject();
                  v74 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                  if (v74)
                  {
                    if (!v74(v73, v97, v96))
                    {
                      v75 = *(v27 + 104);
                      v76 = *(*(CMBaseObjectGetVTable() + 16) + 24);
                      if (v76)
                      {
                        v76(v75);
                      }
                    }
                  }
                }
              }
            }

            goto LABEL_90;
          }

          goto LABEL_89;
        }
      }

      CMSampleBufferCreateForImageBuffer(allocator, *(v27 + 8), 1u, 0, 0, formatDescriptionOut, &sampleTiming, &v127);
      v131 = 3;
      v78 = CFNumberCreate(allocator, kCFNumberIntType, &v131);
      CMSetAttachment(sampleBufferOut, v99, v78, 0);
      CFRelease(v78);
      CMSetAttachment(v127, @"MetadataDictionary", Mutable, 0);
      v67 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      noiseReductionInOutWithTuningOptions();
LABEL_89:
      CFRelease(v67);
LABEL_90:
      if (formatDescriptionOut)
      {
        CFRelease(formatDescriptionOut);
      }

      if (sampleBufferOut)
      {
        FigSampleBufferRelease();
      }

      if (v127)
      {
        FigSampleBufferRelease();
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      CVPixelBufferLockBaseAddress(*(v27 + 16), 0);
      CVPixelBufferLockBaseAddress(*(v27 + 8), 0);
      v79 = CVPixelBufferGetBaseAddressOfPlane(*(v27 + 16), 0);
      v80 = CVPixelBufferGetBaseAddressOfPlane(*(v27 + 16), 1uLL);
      v81 = v27;
      v82 = CVPixelBufferGetBytesPerRowOfPlane(*(v27 + 16), 0);
      v83 = CVPixelBufferGetBytesPerRowOfPlane(*(v81 + 16), 1uLL);
      v84 = CVPixelBufferGetHeightOfPlane(*(v81 + 16), 0);
      v85 = CVPixelBufferGetBaseAddressOfPlane(*(v81 + 8), 0);
      v86 = CVPixelBufferGetBaseAddressOfPlane(*(v81 + 8), 1uLL);
      v87 = CVPixelBufferGetBytesPerRowOfPlane(*(v81 + 8), 0);
      v88 = CVPixelBufferGetBytesPerRowOfPlane(*(v81 + 8), 1uLL);
      if (v84)
      {
        v89 = v88;
        v90 = &v80[v125 & 0xFFFFFFFFFFFFFFFELL];
        v91 = &v86[v110];
        v92 = &v85[v110];
        v93 = v84;
        v94 = &v79[v125];
        v126 = v93;
        do
        {
          memcpy(v94, v92, v124);
          v94 += v82;
          v92 += v87;
          --v93;
        }

        while (v93);
        LODWORD(v84) = v126;
        if (v126 != 1)
        {
          v95 = v126 >> 1;
          do
          {
            memcpy(v90, v91, v124);
            v90 += v83;
            v91 += v89;
            --v95;
          }

          while (v95);
        }
      }

      v2 = v112;
      CVPixelBufferUnlockBaseAddress(*(v112 + 16), 0);
      CVPixelBufferUnlockBaseAddress(*(v112 + 8), 0);
      if (*(v112 + 104) && (*(v112 + 120) - 5) <= 1)
      {
        CFRelease(*(v112 + 8));
        *(v112 + 8) = 0;
      }

      v6 = *(v112 + 40) + v124;
      *(v112 + 32) = 0;
      *(v112 + 40) = v6;
      *(v112 + 48) = v84;
      v5 = *(v112 + 72);
    }

    while (v5 != v6);
  }

  *(v2 + 88) = 0;
}

void sub_23C462CF4(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberLongType, &valuePtr);
  if (v5)
  {
    v6 = v5;
    CFDictionaryAddValue(a1, a2, v5);
    CFRelease(v6);
  }
}

void sub_23C462D64(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
  if (v5)
  {
    v6 = v5;
    CFDictionaryAddValue(a1, a2, v5);
    CFRelease(v6);
  }
}

uint64_t sub_23C462DD4(const __CFDictionary *a1, const void *a2, uint64_t a3)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    v5 = Value;
    v6 = CFGetTypeID(Value);
    if (v6 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      CFNumberGetValue(v5, kCFNumberIntType, &valuePtr);
      return valuePtr;
    }
  }

  return a3;
}

CFTypeRef sub_23C462E40(uint64_t a1, int a2, CMSampleBufferRef sbuf)
{
  if (a2)
  {
    *(a1 + 8) = 0;
    return ACTLogMessageImp(4, "GNR failed to process image (err=%d)", a2);
  }

  else
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(sbuf);
    *(a1 + 8) = ImageBuffer;

    return CFRetain(ImageBuffer);
  }
}

void sub_23C463530(uint64_t a1, const char *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (*(v3 + 104) < 4uLL)
  {
    objc_msgSend__setPreviousFrameDroppedFlag_dropped_(v3, a2, *(a1 + 56), *(v3 + 112));
    v5 = *(a1 + 32);
    v6 = *(a1 + 56);
    objc_msgSend_currentAccumulatedHomographyForThread_(v5[6], v7, 1, v8);
    objc_msgSend_addFrameForStitching_withInitialHomography_registrationCallback_(v5, v9, v6, *(a1 + 48));
    *(*(a1 + 32) + 112) = 0;
  }

  else
  {
    *(v3 + 112) = 1;
    ++*(*(a1 + 32) + 496);
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();

    v12 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 40), v10, @"SliceNumber", v11);
    v16 = objc_msgSend_intValue(v12, v13, v14, v15);
    HostTime = ACT_getHostTime();
    CMSampleBufferGetPresentationTimeStamp(&time, *(a1 + 56));
    Seconds = CMTimeGetSeconds(&time);
    panoLog(4, "FrameID:%04d time %.3f: frame dropped PTS:%.3f, total frames dropped %zu\n", v16, HostTime, Seconds, *(*(a1 + 32) + 496));
  }

  v19 = *(a1 + 56);
  if (v19)
  {
    CFRelease(v19);
  }

  --*(*(a1 + 32) + 104);
}

uint64_t sub_23C463B38(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_23C46401C()
{

  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

uint64_t sub_23C46404C()
{

  return _os_log_send_and_compose_impl();
}

BOOL sub_23C4640B4(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int16 a19, char a20, os_log_type_t type, int a22)
{

  return os_log_type_enabled(a1, type);
}

uint64_t panoCloseLogFile()
{
  if (qword_27E1F6580)
  {
    fclose(qword_27E1F6580);
    qword_27E1F6580 = 0;
  }

  return 0;
}

uint64_t panoOpenLogFile(const char *a1)
{
  if (qword_27E1F6580)
  {
    fclose(qword_27E1F6580);
    qword_27E1F6580 = 0;
  }

  if (!a1)
  {
    return 0;
  }

  sub_23C475A74(a1, &v3);
  return v3;
}

uint64_t panoLog(uint64_t a1, char *__format, ...)
{
  va_start(va, __format);
  va_copy(v8, va);
  v3 = vsnprintf(&__str, 1uLL, __format, va);
  if (v3 < 1)
  {
    v5 = 0;
  }

  else
  {
    v4 = (v3 + 1);
    v5 = malloc_type_malloc(v4, 0x60315088uLL);
    vsnprintf(v5, v4, __format, va);
  }

  if (qword_27E1F6580)
  {
    fputs(v5, qword_27E1F6580);
  }

  if (v5)
  {
    free(v5);
  }

  return 0;
}

float getPanningSpeedScalingFactorFromSensorID(int a1)
{
  if (a1 <= 2322)
  {
    if (a1 == 2307)
    {
      return 0.95;
    }

    if (a1 == 2308)
    {
      return 1.27;
    }
  }

  else
  {
    if (a1 == 2323 || a1 == 2419)
    {
      return 3.82;
    }

    if (a1 == 2434)
    {
      return 1.43;
    }
  }

  return -1.0;
}

void getThreadgroupSizeForShader(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = a1;
  v7 = objc_msgSend_threadExecutionWidth(v3, v4, v5, v6);
  v11 = objc_msgSend_maxTotalThreadsPerThreadgroup(v3, v8, v9, v10);

  *a2 = v7;
  a2[1] = v11 / v7;
  a2[2] = 1;
}

void getThreadgroupSizeForShaderDebug(void *a1@<X0>, const char *a2@<X1>, unint64_t *a3@<X8>)
{
  v5 = a1;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v12 = v5;
  getThreadgroupSizeForShader(v5, a3);
  if (a2)
  {
    v10 = *a3;
    v9 = a3[1];
    v11 = objc_msgSend_maxTotalThreadsPerThreadgroup(v12, v6, v7, v8);
    ACTLogMessageImp(1, "%s tg w h: %lu %lu, maxTotalThreadsPerThreadgroup: %lu\n", a2, v10, v9, v11);
  }
}

uint64_t printHomography(__n128 a1, __n128 a2, __n128 a3)
{
  v3 = 0;
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  do
  {
    v4 = 0;
    v6 = v8[v3];
    do
    {
      v7 = v6;
      printf("%f ", *(&v7 & 0xFFFFFFFFFFFFFFF3 | (4 * (v4++ & 3))));
    }

    while (v4 != 3);
    putchar(10);
    ++v3;
  }

  while (v3 != 3);

  return puts("\n");
}

double convertCoordMetalToLKT(float32x4_t a1, float32x4_t a2, float32x4_t a3, float a4, float a5)
{
  v21.columns[2] = *(MEMORY[0x277D860B0] + 32);
  v5.f32[0] = 1.0 / a4;
  v5.i32[1] = HIDWORD(*MEMORY[0x277D860B0]);
  v5.i32[2] = *(MEMORY[0x277D860B0] + 8);
  v5.i32[3] = HIDWORD(*MEMORY[0x277D860B0]);
  v10 = v5;
  v11 = v21.columns[2];
  v21.columns[1].i32[0] = *(MEMORY[0x277D860B0] + 16);
  v21.columns[1].f32[1] = 1.0 / a5;
  v21.columns[1].i64[1] = *(MEMORY[0x277D860B0] + 24);
  v9 = v21.columns[1];
  v21.columns[0] = v5;
  v22 = __invert_f3(v21);
  v6 = 0;
  v15 = v10;
  v16 = v9;
  v17 = v11;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  do
  {
    *(&v18 + v6) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a1, COERCE_FLOAT(*(&v15 + v6))), a2, *&v15.i8[v6], 1), a3, *(&v15 + v6), 2);
    v6 += 16;
  }

  while (v6 != 48);
  v7 = 0;
  v15 = v18;
  v16 = v19;
  v17 = v20;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  do
  {
    *(&v18 + v7) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22.columns[0], COERCE_FLOAT(*(&v15 + v7))), v22.columns[1], *&v15.i8[v7], 1), v22.columns[2], *(&v15 + v7), 2);
    v7 += 16;
  }

  while (v7 != 48);
  *&result = vzip1q_s32(v18, v19).u64[0];
  return result;
}

double convertCoordLKTToMetal(int32x4_t a1, int32x4_t a2, int32x4_t a3, simd_float3 a4, float a5)
{
  a4.i32[1] = HIDWORD(*MEMORY[0x277D860B0]);
  v23.columns[2] = *(MEMORY[0x277D860B0] + 32);
  a4.i32[2] = *(MEMORY[0x277D860B0] + 8);
  a4.i32[3] = HIDWORD(*MEMORY[0x277D860B0]);
  v23.columns[0] = a4;
  v12 = a4;
  v13 = v23.columns[2];
  v23.columns[1].i32[0] = *(MEMORY[0x277D860B0] + 16);
  v23.columns[1].f32[1] = a5;
  v23.columns[1].i64[1] = *(MEMORY[0x277D860B0] + 24);
  v11 = v23.columns[1];
  v24 = __invert_f3(v23);
  v5 = 0;
  v6 = vzip1q_s32(a1, a2);
  v6.i32[2] = a3.i32[0];
  v7 = vzip2q_s32(a1, a2);
  v7.i32[2] = a3.i32[2];
  v8 = vzip2q_s32(vzip1q_s32(a1, a3), vdupq_lane_s32(*a2.i8, 1));
  v17 = v12;
  v18 = v11;
  v19 = v13;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  do
  {
    *(&v20 + v5 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v6, COERCE_FLOAT(*(&v17 + v5 * 4))), v8, *&v17.f32[v5], 1), v7, *(&v17 + v5 * 4), 2);
    v5 += 4;
  }

  while (v5 != 12);
  v9 = 0;
  v17 = v20;
  v18 = v21;
  v19 = v22;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  do
  {
    *(&v20 + v9 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v24.columns[0], COERCE_FLOAT(*(&v17 + v9 * 4))), v24.columns[1], *&v17.f32[v9], 1), v24.columns[2], *(&v17 + v9 * 4), 2);
    v9 += 4;
  }

  while (v9 != 12);
  return *v20.i64;
}

unint64_t *calculateHalfResolution(unint64_t *result, unint64_t *a2)
{
  v2 = *a2;
  v3 = *a2 & 1;
  *result = ((*result & 1) + *result + (((*result & 1) + *result) & 2) + 1) >> 1;
  *a2 = (v3 + *a2 + ((v3 + v2) & 2) + 1) >> 1;
  return result;
}

__n64 calculateHalfResolutionWithVector2(double a1)
{
  v1 = LOBYTE(a1) & 1;
  if (SLODWORD(a1) < 0)
  {
    v1 = -v1;
  }

  v2 = BYTE4(a1) & 1;
  if (a1 < 0.0)
  {
    v2 = -v2;
  }

  v3 = v1 + LODWORD(a1);
  if ((v1 + LODWORD(a1)) / 2 >= 0)
  {
    v4 = (v3 / 2) & 1;
  }

  else
  {
    v4 = -(((v1 + LODWORD(a1)) / 2) & 1);
  }

  v5 = v2 + HIDWORD(a1);
  if ((v2 + HIDWORD(a1)) / 2 >= 0)
  {
    v6 = (v5 / 2) & 1;
  }

  else
  {
    v6 = -(((v2 + HIDWORD(a1)) / 2) & 1);
  }

  result.n64_u32[0] = (v3 + 2 * v4 + 1) / 2;
  result.n64_u32[1] = (v5 + 2 * v6 + 1) / 2;
  return result;
}

uint64_t getLumaMTLPixelFormat(int a1)
{
  if (a1 == 2)
  {
    return 20;
  }

  else
  {
    return 10;
  }
}

uint64_t getChromaMTLPixelFormat(int a1)
{
  if (a1 == 2)
  {
    return 60;
  }

  else
  {
    return 30;
  }
}

uint64_t getCVPixelFormat(int a1)
{
  if (a1 == 2)
  {
    return 2019963440;
  }

  else
  {
    return 875704422;
  }
}

double diffMachTime(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  LODWORD(a4) = dword_27E1F6588;
  LODWORD(a5) = *algn_27E1F658C;
  return (a2 - a1) * *&a4 / *&a5 / 1000000000.0;
}

uint64_t perfInit()
{
  mach_timebase_info(&dword_27E1F6588);
  result = mach_absolute_time();
  qword_27E1F6590 = result;
  return result;
}

double timeElapsedSinceInit()
{
  v0 = qword_27E1F6590;
  if (!qword_27E1F6590)
  {
    mach_timebase_info(&dword_27E1F6588);
    v0 = mach_absolute_time();
    qword_27E1F6590 = v0;
  }

  v1 = mach_absolute_time();
  LODWORD(v2) = dword_27E1F6588;
  LODWORD(v3) = *algn_27E1F658C;
  return (v1 - v0) * v2 / v3 / 1000000000.0;
}

double timestampToSeconds(unint64_t a1, double a2, double a3, double a4)
{
  LODWORD(a3) = dword_27E1F6588;
  LODWORD(a4) = *algn_27E1F658C;
  return a1 * *&a3 / *&a4 / 1000000000.0;
}

__CFDictionary *createIOSurfacePropertiesDictionary(int a1)
{
  IOSurfacePropertiesDictionary = FigCreateIOSurfacePropertiesDictionary();
  if (a1)
  {
    v3 = 1280;
  }

  else
  {
    v3 = 0;
  }

  valuePtr = v3;
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, IOSurfacePropertiesDictionary);
  CFRelease(IOSurfacePropertiesDictionary);
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(MutableCopy, *MEMORY[0x277CD2970], v5);
  CFRelease(v5);
  return MutableCopy;
}

uint64_t CVPixelBufferToJPEG(uint64_t a1, _DWORD *a2)
{
  v9 = 0;
  v7 = 1061997773;
  v8 = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v5 = CFNumberCreate(0, kCFNumberFloatType, &v7);
  CFDictionaryAddValue(Mutable, @"kCGImageDestinationLossyCompressionQuality", v5);
  CFRelease(v5);
  MEMORY[0x23EED2240](a1, Mutable, 0, &v9, &v8);
  if (a2)
  {
    *a2 = v8;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v9;
}

FILE *dumpCVPixelBufferToJPEGFile(uint64_t a1, char *__filename)
{
  LODWORD(__size) = 0;
  result = fopen(__filename, "wb");
  if (result)
  {
    v4 = result;
    v5 = CVPixelBufferToJPEG(a1, &__size);
    if (v5)
    {
      v6 = v5;
      IOSurfaceLock(v5, 1u, 0);
      BaseAddress = IOSurfaceGetBaseAddress(v6);
      fwrite(BaseAddress, __size, 1uLL, v4);
      IOSurfaceUnlock(v6, 1u, 0);
      CFRelease(v6);
    }

    fclose(v4);
    return __size;
  }

  return result;
}

uint64_t dumpCVPixelBufferToRawFile(__CVBuffer *a1, const char *a2, int a3)
{
  PlaneCount = CVPixelBufferGetPlaneCount(a1);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v8 = PixelFormatType;
  v9 = PixelFormatType & 0xFFFFFFEF;
  if (!a3 || ((vaddvq_s32(vandq_s8(vceqq_s32(vdupq_n_s32(PixelFormatType), xmmword_23C47AA10), xmmword_23C47AA20)) & 0xF) == 0 ? (v10 = v9 == 875704422) : (v10 = 1), v10))
  {
    v11 = fopen(a2, "wb");
    if (v11)
    {
      v12 = v11;
      __ptr = CVPixelBufferGetWidth(a1);
      fwrite(&__ptr, 1uLL, 8uLL, v12);
      __ptr = CVPixelBufferGetHeight(a1);
      fwrite(&__ptr, 1uLL, 8uLL, v12);
      if (PlaneCount)
      {
        for (i = 0; i != PlaneCount; ++i)
        {
          __ptr = CVPixelBufferGetBytesPerRowOfPlane(a1, i);
          fwrite(&__ptr, 1uLL, 8uLL, v12);
        }

        v14 = (8 * PlaneCount + 16);
        CVPixelBufferLockBaseAddress(a1, 1uLL);
        if (PlaneCount != 1)
        {
          if (a3 && v9 == 875704422)
          {
            BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
            if (CVPixelBufferGetHeightOfPlane(a1, 0))
            {
              v16 = 0;
              do
              {
                Width = CVPixelBufferGetWidth(a1);
                fwrite(BaseAddressOfPlane, 1uLL, Width, v12);
                v14 = v14 + CVPixelBufferGetWidth(a1);
                BaseAddressOfPlane += CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
                ++v16;
              }

              while (CVPixelBufferGetHeightOfPlane(a1, 0) > v16);
            }

            v18 = CVPixelBufferGetBaseAddressOfPlane(a1, 1uLL);
            if (CVPixelBufferGetHeightOfPlane(a1, 1uLL))
            {
              v19 = 0;
              do
              {
                v20 = CVPixelBufferGetWidth(a1);
                fwrite(v18, 1uLL, v20, v12);
                v14 = v14 + CVPixelBufferGetWidth(a1);
                v18 += CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
                ++v19;
              }

              while (CVPixelBufferGetHeightOfPlane(a1, 1uLL) > v19);
            }
          }

          else
          {
            for (j = 0; j != PlaneCount; ++j)
            {
              v29 = CVPixelBufferGetBaseAddressOfPlane(a1, j);
              BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, j);
              HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, j);
              fwrite(v29, 1uLL, HeightOfPlane * BytesPerRowOfPlane, v12);
              LODWORD(v29) = CVPixelBufferGetBytesPerRowOfPlane(a1, j);
              v14 = v14 + CVPixelBufferGetHeightOfPlane(a1, j) * v29;
            }
          }

          goto LABEL_38;
        }
      }

      else
      {
        CVPixelBufferLockBaseAddress(a1, 1uLL);
        v14 = 16;
      }

      BaseAddress = CVPixelBufferGetBaseAddress(a1);
      if (!a3)
      {
        BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
        Height = CVPixelBufferGetHeight(a1);
        fwrite(BaseAddress, 1uLL, Height * BytesPerRow, v12);
        v25 = CVPixelBufferGetBytesPerRow(a1);
        v14 = v14 + CVPixelBufferGetHeight(a1) * v25;
LABEL_38:
        CVPixelBufferUnlockBaseAddress(a1, 1uLL);
        fclose(v12);
        return v14;
      }

      if (v8 > 2037741157)
      {
        v22 = 2;
        if (v8 == 2037741158 || v8 == 2037741171)
        {
LABEL_32:
          if (CVPixelBufferGetHeight(a1))
          {
            v26 = 0;
            do
            {
              v27 = CVPixelBufferGetWidth(a1);
              fwrite(BaseAddress, 1uLL, v27 * v22, v12);
              v14 = v14 + CVPixelBufferGetWidth(a1) * v22;
              BaseAddress += CVPixelBufferGetBytesPerRow(a1);
              ++v26;
            }

            while (CVPixelBufferGetHeight(a1) > v26);
          }

          goto LABEL_38;
        }
      }

      else if (v8 == 32 || v8 == 1111970369)
      {
        v22 = 4;
        goto LABEL_32;
      }

      v22 = 1;
      goto LABEL_32;
    }
  }

  return 0;
}

uint64_t dumpSurfaceToRawFile(__IOSurface *a1, const char *a2, int a3)
{
  PlaneCount = IOSurfaceGetPlaneCount(a1);
  PixelFormat = IOSurfaceGetPixelFormat(a1);
  v8 = PixelFormat;
  v9 = PixelFormat & 0xFFFFFFEF;
  if (!a3 || ((vaddvq_s32(vandq_s8(vceqq_s32(vdupq_n_s32(PixelFormat), xmmword_23C47AA10), xmmword_23C47AA20)) & 0xF) == 0 ? (v10 = v9 == 875704422) : (v10 = 1), v10))
  {
    v11 = fopen(a2, "wb");
    if (v11)
    {
      v12 = v11;
      IOSurfaceLock(a1, 0, 0);
      if (PlaneCount > 1)
      {
        if (a3 && v9 == 875704422)
        {
          BaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane(a1, 0);
          if (IOSurfaceGetHeightOfPlane(a1, 0))
          {
            v17 = 0;
            LODWORD(v15) = 0;
            do
            {
              Width = IOSurfaceGetWidth(a1);
              fwrite(BaseAddressOfPlane, 1uLL, Width, v12);
              v15 = v15 + IOSurfaceGetWidth(a1);
              BaseAddressOfPlane += IOSurfaceGetBytesPerRowOfPlane(a1, 0);
              ++v17;
            }

            while (IOSurfaceGetHeightOfPlane(a1, 0) > v17);
          }

          else
          {
            v15 = 0;
          }

          v27 = IOSurfaceGetBaseAddressOfPlane(a1, 1uLL);
          if (IOSurfaceGetHeightOfPlane(a1, 1uLL))
          {
            v28 = 0;
            do
            {
              v29 = IOSurfaceGetWidth(a1);
              fwrite(v27, 1uLL, v29, v12);
              v15 = v15 + IOSurfaceGetWidth(a1);
              v27 += IOSurfaceGetBytesPerRowOfPlane(a1, 1uLL);
              ++v28;
            }

            while (IOSurfaceGetHeightOfPlane(a1, 1uLL) > v28);
          }
        }

        else
        {
          v19 = 0;
          LODWORD(v15) = 0;
          do
          {
            v20 = IOSurfaceGetBaseAddressOfPlane(a1, v19);
            BytesPerRowOfPlane = IOSurfaceGetBytesPerRowOfPlane(a1, v19);
            HeightOfPlane = IOSurfaceGetHeightOfPlane(a1, v19);
            fwrite(v20, 1uLL, HeightOfPlane * BytesPerRowOfPlane, v12);
            LODWORD(v20) = IOSurfaceGetBytesPerRowOfPlane(a1, v19);
            v15 = v15 + IOSurfaceGetHeightOfPlane(a1, v19++) * v20;
          }

          while (PlaneCount != v19);
        }

        goto LABEL_37;
      }

      BaseAddress = IOSurfaceGetBaseAddress(a1);
      if (!a3)
      {
        BytesPerRow = IOSurfaceGetBytesPerRow(a1);
        Height = IOSurfaceGetHeight(a1);
        fwrite(BaseAddress, 1uLL, Height * BytesPerRow, v12);
        goto LABEL_32;
      }

      if (v8 > 2037741157)
      {
        v14 = 2;
        if (v8 == 2037741158 || v8 == 2037741171)
        {
LABEL_28:
          if (IOSurfaceGetHeight(a1))
          {
            v25 = 0;
            LODWORD(v15) = 0;
            do
            {
              v26 = IOSurfaceGetWidth(a1);
              fwrite(BaseAddress, 1uLL, v26 * v14, v12);
              v15 = v15 + IOSurfaceGetWidth(a1) * v14;
              BaseAddress += IOSurfaceGetBytesPerRow(a1);
              ++v25;
            }

            while (IOSurfaceGetHeight(a1) > v25);
            goto LABEL_37;
          }

LABEL_32:
          v15 = 0;
LABEL_37:
          IOSurfaceUnlock(a1, 0, 0);
          fclose(v12);
          return v15;
        }
      }

      else if (v8 == 32 || v8 == 1111970369)
      {
        v14 = 4;
        goto LABEL_28;
      }

      v14 = 1;
      goto LABEL_28;
    }
  }

  return 0;
}

uint64_t readPlanar420vFrameIntoCVPixelBuffer(int a1, off_t a2, size_t a3, unint64_t a4, CVPixelBufferRef pixelBuffer)
{
  v10 = a4 * a3;
  CVPixelBufferLockBaseAddress(pixelBuffer, 0);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
  v12 = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 1uLL);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
  pixelBuffera = pixelBuffer;
  v14 = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 1uLL);
  v26 = a4;
  __offseta = a2;
  if (BytesPerRowOfPlane == a3)
  {
    v15 = pread(a1, BaseAddressOfPlane, v10, a2);
  }

  else
  {
    v15 = 0;
    if (a4)
    {
      v16 = a4;
      v17 = __offseta;
      do
      {
        v18 = pread(a1, BaseAddressOfPlane, a3, v17);
        v17 += a3;
        BaseAddressOfPlane += BytesPerRowOfPlane;
        v15 += v18;
        --v16;
      }

      while (v16);
    }
  }

  if (v15 != v10)
  {
    v25 = "Read count mismatch for Y plane";
LABEL_17:
    sub_23C475D50(v25);
    goto LABEL_14;
  }

  v19 = v10 + __offseta;
  v20 = v10 >> 1;
  if (v14 == a3 >> 1)
  {
    v21 = pread(a1, v12, v20, v19);
  }

  else if (v26 >= 2)
  {
    v21 = 0;
    v22 = v26 >> 1;
    do
    {
      v23 = pread(a1, v12, a3, v19);
      v19 += a3;
      v12 += v14;
      v21 += v23;
      --v22;
    }

    while (v22);
  }

  else
  {
    v21 = 0;
  }

  if (v21 != v20)
  {
    v25 = "Read count mismatch for Cb plane";
    goto LABEL_17;
  }

LABEL_14:
  CVPixelBufferUnlockBaseAddress(pixelBuffera, 0);
  return 0;
}

uint64_t readPlanary420FrameIntoCVPixelBuffer(int a1, off_t a2, size_t a3, unint64_t a4, CVPixelBufferRef pixelBuffer)
{
  v6 = a4;
  v9 = a4 * a3;
  CVPixelBufferLockBaseAddress(pixelBuffer, 0);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
  v11 = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 1uLL);
  v12 = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 2uLL);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
  v14 = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 1uLL);
  pixelBuffera = pixelBuffer;
  v30 = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 2uLL);
  v31 = v6;
  v33 = v9;
  if (BytesPerRowOfPlane == a3)
  {
    v15 = pread(a1, BaseAddressOfPlane, v9, a2);
  }

  else
  {
    v15 = 0;
    if (v6)
    {
      v16 = a2;
      do
      {
        v17 = pread(a1, BaseAddressOfPlane, a3, v16);
        v16 += a3;
        BaseAddressOfPlane += BytesPerRowOfPlane;
        v15 += v17;
        --v6;
      }

      while (v6);
    }
  }

  v18 = v33;
  if (v15 != v33)
  {
    v29 = "Read count mismatch for Y plane";
LABEL_26:
    sub_23C475D50(v29);
    goto LABEL_22;
  }

  v19 = v33 >> 2;
  v20 = a3 >> 1;
  if (v20 == v14)
  {
    v21 = pread(a1, v11, v33 >> 2, v33 + a2);
    v22 = v31;
  }

  else
  {
    v22 = v31;
    if (v31 >= 2)
    {
      v23 = v31 >> 1;
      v24 = v33 + a2;
      do
      {
        v21 = pread(a1, v11, v20, v24);
        v24 += v20;
        v11 += v14;
        --v23;
      }

      while (v23);
      v18 = v33;
    }

    else
    {
      v21 = 0;
    }
  }

  if (v21 != v19)
  {
    v29 = "Read count mismatch for Cb plane";
    goto LABEL_26;
  }

  v25 = v33 + a2 + (v18 >> 2);
  if (v20 == v30)
  {
    v26 = pread(a1, v12, v19, v25);
  }

  else if (v22 >= 2)
  {
    v27 = v22 >> 1;
    do
    {
      v26 = pread(a1, v12, v20, v25);
      v25 += v20;
      v12 += v30;
      --v27;
    }

    while (v27);
  }

  else
  {
    v26 = 0;
  }

  if (v26 != v19)
  {
    v29 = "Read count mismatch for Cr plane";
    goto LABEL_26;
  }

LABEL_22:
  CVPixelBufferUnlockBaseAddress(pixelBuffera, 0);
  return 0;
}

CVPixelBufferRef createCVPixelBufferFromPlanary420File(int a1, off_t a2)
{
  __buf = 0;
  pixelBufferOut = 0;
  v7 = 0;
  if (pread(a1, &__buf, 8uLL, a2) != 8 || pread(a1, &v7, 8uLL, a2 + 8) != 8)
  {
    return 0;
  }

  v4 = CVPixelBufferCreate(*MEMORY[0x277CBECE8], __buf, v7, 0x34323066u, 0, &pixelBufferOut);
  v5 = pixelBufferOut;
  if (!v4)
  {
    readPlanary420FrameIntoCVPixelBuffer(a1, a2 + 16, __buf, v7, pixelBufferOut);
    return pixelBufferOut;
  }

  return v5;
}

void sub_23C4659B8(int a1, CVBufferRef sourceBuffer)
{

  CVBufferPropagateAttachments(sourceBuffer, v2);
}

void sub_23C4659F8()
{

  JUMPOUT(0x23EED2580);
}

void *PixelShuffler_constructor(size_t a1, uint64_t a2)
{
  v4 = malloc_type_malloc(0x850uLL, 0x1010040B9D6ABF0uLL);
  v5 = v4;
  if (v4)
  {
    *v4 = a1;
    v6 = malloc_type_malloc(a1, 0x100004077774924uLL);
    v5[1] = v6;
    if (v6)
    {
      v5[2] = a1;
      v5[3] = a2;
      v5[4] = a2 * a1;
      v7 = malloc_type_malloc(a2 * a1, 0x100004077774924uLL);
      v5[5] = v7;
      if (v7)
      {
        memcpy(v5 + 8, &unk_23C47AA50, 0x400uLL);
        memcpy(v5 + 136, &unk_23C47AE50, 0x400uLL);
        *(v5 + 132) = xmmword_23C47AA30;
        return v5;
      }

      free(v5[1]);
    }

    free(v5);
    return 0;
  }

  return v5;
}

uint64_t PixelShuffler_init(uint64_t a1, size_t size, unint64_t a3)
{
  if (*a1 >= size)
  {
    goto LABEL_15;
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    free(v6);
  }

  *a1 = size;
  *(a1 + 8) = 0;
  v7 = malloc_type_malloc(size, 0x100004077774924uLL);
  *(a1 + 8) = v7;
  if (v7)
  {
LABEL_15:
    if (*(a1 + 16) >= size && *(a1 + 24) >= a3)
    {
      return 0;
    }

    v8 = *(a1 + 40);
    if (v8)
    {
      free(v8);
    }

    *(a1 + 16) = size;
    *(a1 + 24) = a3;
    *(a1 + 32) = a3 * size;
    *(a1 + 40) = 0;
    v9 = malloc_type_malloc(a3 * size, 0x100004077774924uLL);
    *(a1 + 40) = v9;
    if (v9)
    {
      return 0;
    }

    free(*(a1 + 8));
    *(a1 + 8) = 0;
  }

  return 0xFFFFFFFFLL;
}

void PixelShuffler_reset(uint64_t a1)
{
  bzero(*(a1 + 8), *a1);
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);

  bzero(v2, v3);
}

void PixelShuffler_destructor(void *a1)
{
  if (a1)
  {
    v2 = a1[5];
    if (v2)
    {
      free(v2);
    }

    v3 = a1[1];
    if (v3)
    {
      free(v3);
    }

    free(a1);
  }
}

const __CFNumber *PixelShuffler_setOptions(const __CFNumber *result, CFDictionaryRef theDict)
{
  if (theDict)
  {
    v3 = result;
    Value = CFDictionaryGetValue(theDict, @"PixelShufflerHighlightMappingCurve");
    if (Value)
    {
      v5 = Value;
      v6 = CFGetTypeID(Value);
      if (v6 == CFArrayGetTypeID())
      {
        v7 = 0;
        v8 = v3 + 64;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v5, v7);
          if (ValueAtIndex)
          {
            CFNumberGetValue(ValueAtIndex, kCFNumberFloat32Type, v8);
          }

          ++v7;
          v8 += 4;
        }

        while (v7 != 256);
      }
    }

    v10 = CFDictionaryGetValue(theDict, @"PixelShufflerShadowMappingCurve");
    if (v10)
    {
      v11 = v10;
      v12 = CFGetTypeID(v10);
      if (v12 == CFArrayGetTypeID())
      {
        v13 = 0;
        v14 = v3 + 1088;
        do
        {
          v15 = CFArrayGetValueAtIndex(v11, v13);
          if (v15)
          {
            CFNumberGetValue(v15, kCFNumberFloat32Type, v14);
          }

          ++v13;
          v14 += 4;
        }

        while (v13 != 256);
      }
    }

    v16 = CFDictionaryGetValue(theDict, @"PixelShufflerDesatMappingBasePoint");
    if (v16)
    {
      v17 = v16;
      v18 = CFGetTypeID(v16);
      if (v18 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v17, kCFNumberFloat32Type, v3 + 2112);
      }
    }

    v19 = CFDictionaryGetValue(theDict, @"PixelShufflerDesatScale");
    if (v19)
    {
      v20 = v19;
      v21 = CFGetTypeID(v19);
      if (v21 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v20, kCFNumberFloat32Type, v3 + 2116);
      }
    }

    v22 = CFDictionaryGetValue(theDict, @"PixelShufflerDesatMaxAWBDelta");
    if (v22)
    {
      v23 = v22;
      v24 = CFGetTypeID(v22);
      if (v24 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v23, kCFNumberFloat32Type, v3 + 2120);
      }
    }

    result = CFDictionaryGetValue(theDict, @"PixelShufflerDesatMaxDesatStrength");
    if (result)
    {
      v25 = result;
      v26 = CFGetTypeID(result);
      result = CFNumberGetTypeID();
      if (v26 == result)
      {

        return CFNumberGetValue(v25, kCFNumberFloat32Type, v3 + 2124);
      }
    }
  }

  return result;
}

char *PixelShuffler_imageFlipHorizontally(char *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = 0;
    v5 = (a2 + 1) >> 1;
    v6 = &result[a2 - 1];
    do
    {
      if ((a2 & 1) != v5)
      {
        v7 = 0;
        v8 = result;
        do
        {
          v9 = *v8;
          *v8++ = *(v6 + v7);
          *(v6 + v7--) = v9;
        }

        while ((a2 & 1) - v5 != v7);
      }

      v6 += a4;
      result += a4;
      ++v4;
    }

    while (v4 != a3);
  }

  return result;
}

vImage_Error PixelShuffler_imageFlipHorizontally_uint16(void *a1, vImagePixelCount a2, vImagePixelCount a3, size_t a4)
{
  src.data = a1;
  src.height = a3;
  src.width = a2;
  src.rowBytes = a4;
  dest.data = a1;
  dest.height = a3;
  dest.width = a2;
  dest.rowBytes = a4;
  result = vImageHorizontalReflect_Planar16U(&src, &dest, 2u);
  if (result)
  {
    return printf("ERROR: Y vImage rotate err=%d\n", result);
  }

  return result;
}

void *PixelShuffler_cropRoi(void *result, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, size_t __n, uint64_t a9)
{
  v9 = a9;
  if (a9)
  {
    v12 = 0;
    v13 = result[5];
    v14 = a2 + a7 * a5 + a6;
    do
    {
      result = memcpy((v13 + v12), (v14 + v12), __n);
      v12 += a5;
      --v9;
    }

    while (v9);
  }

  return result;
}

void *PixelShuffler_cropRoi_uint16(void *result, uint64_t a2, int a3, int a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a9;
  if (a9)
  {
    v10 = 0;
    v11 = 2 * a8;
    v12 = result[5];
    v13 = a2 + 2 * (a5 >> 1) * a7 + 2 * a6;
    v14 = 2 * (a5 >> 1);
    do
    {
      result = memcpy((v12 + v10), (v13 + v10), v11);
      v10 += v14;
      --v9;
    }

    while (v9);
  }

  return result;
}

void *PixelShuffler_imageTransposeRoi(void *result, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, size_t a10, unint64_t a11)
{
  v13 = result;
  v14 = a11;
  if (a11)
  {
    v15 = 0;
    v16 = result[5];
    v17 = a3 + a9 * a6 + a8;
    v18 = a11;
    do
    {
      result = memcpy((v16 + v15), (v17 + v15), a10);
      v15 += a6;
      --v18;
    }

    while (v18);
  }

  if ((a10 | a11))
  {
    v28 = a11;
    v19 = a10;
  }

  else
  {
    v19 = a10;
    v20 = a11;
    do
    {
      v45 = v19;
      v19 >>= 1;
      v41 = v20 >> 1;
      if (v14)
      {
        v21 = v20 >> 1;
        if (v41 <= 1)
        {
          v21 = 1;
        }

        v42 = 0;
        v43 = v21;
        v44 = v20;
        do
        {
          if (a10)
          {
            v22 = 0;
            v23 = v19 + v42 * a6;
            v24 = a6 * (v41 + v42);
            do
            {
              if (v20)
              {
                v25 = v13[5] + v22;
                v26 = v43;
                do
                {
                  memcpy(v13[1], (v25 + v23), v19);
                  memcpy((v25 + v23), (v25 + v24), v19);
                  result = memcpy((v25 + v24), v13[1], v19);
                  v25 += a6;
                  --v26;
                }

                while (v26);
              }

              v20 = v44;
              v22 = v22 + v45;
            }

            while (v22 < a10);
          }

          v14 = a11;
          v42 = v42 + v20;
        }

        while (v42 < a11);
      }

      v27 = v45 | v20;
      v28 = v41;
      v20 = v41;
    }

    while ((v27 & 2) == 0);
  }

  v13[6] = v19;
  v13[7] = v28;
  if (v19 == 1 && v28 == 1)
  {
    v29 = v13[5];

    return memcpy(a2, v29, v14 * a6);
  }

  else
  {
    v30 = a2;
    if (v28 && v19 && v28 <= v14)
    {
      v31 = 0;
      v32 = v13[5];
      do
      {
        if (v19 <= a10)
        {
          v33 = 0;
          v34 = v30;
          v35 = v32;
          do
          {
            v36 = 0;
            result = v34;
            v37 = v35;
            do
            {
              v38 = 0;
              v39 = result;
              do
              {
                *v39 = *(v37 + v38);
                v39 += a7;
                ++v38;
              }

              while (v19 != v38);
              v37 += a6;
              result = (result + 1);
              ++v36;
            }

            while (v36 != v28);
            v35 += v19;
            v34 += v28;
            ++v33;
          }

          while (a10 / v19 > v33);
        }

        v32 += v28 * a6;
        v30 += v19 * a7;
        ++v31;
      }

      while (v14 / v28 > v31);
    }
  }

  return result;
}

char *PixelShuffler_imageTransposeRoi_uint16(char *result, char *a2, uint64_t a3, int a4, int a5, unint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, unint64_t a11)
{
  v11 = result;
  v12 = a11;
  v45 = a6 >> 1;
  v13 = 2 * (a6 >> 1);
  if (a11)
  {
    v14 = 0;
    v15 = *(result + 5);
    v16 = a3 + 2 * v45 * a9 + 2 * a8;
    v17 = a11;
    do
    {
      result = memcpy((v15 + v14), (v16 + v14), 2 * a10);
      v14 += v13;
      --v17;
    }

    while (v17);
  }

  v18 = a10;
  if ((a10 | a11))
  {
    v29 = a11;
    v27 = a10;
  }

  else
  {
    v19 = a10;
    v20 = a11;
    do
    {
      v44 = v20 >> 1;
      if (v12)
      {
        v46 = 0;
        if (v44 <= 1)
        {
          v21 = 1;
        }

        else
        {
          v21 = v20 >> 1;
        }

        do
        {
          if (v18)
          {
            v22 = 0;
            v23 = v19 + v13 * v46;
            v24 = v45 * (2 * v44 + 2 * v46);
            do
            {
              if (v20)
              {
                v25 = *(v11 + 40) + 2 * v22;
                v26 = v21;
                do
                {
                  memcpy(*(v11 + 8), (v25 + v23), v19);
                  memcpy((v25 + v23), (v25 + v24), v19);
                  result = memcpy((v25 + v24), *(v11 + 8), v19);
                  v25 += v13;
                  --v26;
                }

                while (v26);
              }

              v22 = v22 + v19;
              v18 = a10;
            }

            while (v22 < a10);
          }

          v12 = a11;
          v46 = v46 + v20;
        }

        while (v46 < a11);
      }

      v27 = v19 >> 1;
      v28 = v19 | v20;
      v19 >>= 1;
      v29 = v20 >> 1;
      v20 >>= 1;
    }

    while ((v28 & 2) == 0);
  }

  *(v11 + 48) = v27;
  *(v11 + 56) = v29;
  if (v27 == 1 && v29 == 1)
  {
    v30 = *(v11 + 40);

    return memcpy(a2, v30, (a6 & 0xFFFFFFFFFFFFFFFELL) * v12);
  }

  else
  {
    v31 = a2;
    if (v29 && v27 && v29 <= v12)
    {
      v32 = 0;
      v33 = *(v11 + 40);
      do
      {
        if (v27 <= v18)
        {
          v34 = 0;
          result = v33;
          v35 = v31;
          do
          {
            v36 = 0;
            v37 = result;
            v38 = v35;
            do
            {
              v39 = 0;
              v40 = v38;
              do
              {
                *v40 = *&v37[2 * v39++];
                v40 += a7 >> 1;
              }

              while (v27 != v39);
              ++v38;
              ++v36;
              v37 += v13;
            }

            while (v36 != v29);
            v35 += v29;
            ++v34;
            result += 2 * v27;
          }

          while (v18 / v27 > v34);
        }

        v31 += 2 * v27 * (a7 >> 1);
        ++v32;
        v33 += 2 * v29 * v45;
      }

      while (v12 / v29 > v32);
    }
  }

  return result;
}

char *PixelShuffler_imageTranspose(uint64_t a1, char *a2, void *__src, size_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a5;
  v36 = a6 * a5;
  result = memcpy(*(a1 + 40), __src, a6 * a5);
  v13 = v9;
  v43 = a4;
  if (((a4 | v9) & 1) == 0)
  {
    v14 = v9;
    v39 = v9;
    do
    {
      v42 = a4;
      a4 >>= 1;
      v38 = v14 >> 1;
      if (v9)
      {
        v15 = v14 >> 1;
        if (v38 <= 1)
        {
          v15 = 1;
        }

        v40 = 0;
        v41 = v15;
        do
        {
          if (v43)
          {
            v16 = 0;
            v17 = a4 + v40 * a6;
            v18 = a6 * (v38 + v40);
            do
            {
              v19 = v14;
              if (v14)
              {
                v20 = *(a1 + 40) + v16;
                v21 = v41;
                do
                {
                  memcpy(*(a1 + 8), (v20 + v17), a4);
                  memcpy((v20 + v17), (v20 + v18), a4);
                  result = memcpy((v20 + v18), *(a1 + 8), a4);
                  v20 += a6;
                  --v21;
                }

                while (v21);
              }

              v16 = v16 + v42;
              v14 = v19;
            }

            while (v16 < v43);
          }

          v9 = v39;
          v40 = v40 + v14;
        }

        while (v40 < v39);
      }

      v22 = v42 | v14;
      v13 = v38;
      v14 = v38;
    }

    while ((v22 & 2) == 0);
  }

  *(a1 + 48) = a4;
  *(a1 + 56) = v13;
  if (a4 == 1 && v13 == 1)
  {
    v23 = *(a1 + 40);

    return memcpy(a2, v23, v36);
  }

  else
  {
    v24 = a2;
    if (v13 <= v9)
    {
      v25 = 0;
      v26 = *(a1 + 40);
      if (a4 <= 1)
      {
        v27 = 1;
      }

      else
      {
        v27 = a4;
      }

      if (v13 <= 1)
      {
        v28 = 1;
      }

      else
      {
        v28 = v13;
      }

      do
      {
        if (a4 <= v43)
        {
          v29 = 0;
          v30 = v24;
          result = v26;
          do
          {
            v31 = 0;
            v32 = v30;
            v33 = result;
            do
            {
              v34 = 0;
              v35 = v32;
              do
              {
                *v35 = v33[v34];
                v35 += a7;
                ++v34;
              }

              while (v27 != v34);
              v33 += a6;
              ++v32;
              ++v31;
            }

            while (v31 != v28);
            result += a4;
            v30 += v13;
            ++v29;
          }

          while (v43 / a4 > v29);
        }

        v26 += v13 * a6;
        v24 += a4 * a7;
        ++v25;
      }

      while (v9 / v13 > v25);
    }
  }

  return result;
}

unint64_t PixelShuffler_imageTranspose_uint16(uint64_t a1, char *a2, void *__src, size_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v7 = a5;
  v41 = a6 >> 1;
  v38 = 2 * a5 * (a6 >> 1);
  result = memcpy(*(a1 + 40), __src, v38);
  v11 = v7;
  __n = a4;
  v12 = a4;
  if (((a4 | v7) & 1) == 0)
  {
    v13 = 2 * v41;
    v14 = a4;
    v15 = v7;
    v42 = v7;
    do
    {
      v40 = v15 >> 1;
      if (v7)
      {
        v43 = 0;
        if (v40 <= 1)
        {
          v16 = 1;
        }

        else
        {
          v16 = v15 >> 1;
        }

        do
        {
          if (__n)
          {
            v17 = 0;
            v18 = v14 + v13 * v43;
            v19 = v41 * (2 * v40 + 2 * v43);
            do
            {
              if (v15)
              {
                v20 = *(a1 + 40) + 2 * v17;
                v21 = v16;
                do
                {
                  memcpy(*(a1 + 8), (v20 + v18), v14);
                  memcpy((v20 + v18), (v20 + v19), v14);
                  result = memcpy((v20 + v19), *(a1 + 8), v14);
                  v20 += v13;
                  --v21;
                }

                while (v21);
              }

              v17 = v17 + v14;
            }

            while (v17 < __n);
          }

          v7 = v42;
          v43 = v43 + v15;
        }

        while (v43 < v42);
      }

      v12 = v14 >> 1;
      v22 = v14 | v15;
      v14 >>= 1;
      v11 = v15 >> 1;
      v15 >>= 1;
    }

    while ((v22 & 2) == 0);
  }

  *(a1 + 48) = v12;
  *(a1 + 56) = v11;
  if (v12 == 1 && v11 == 1)
  {
    v23 = *(a1 + 40);

    return memcpy(a2, v23, v38);
  }

  else
  {
    v24 = a2;
    if (v11 <= v7)
    {
      v25 = 0;
      v26 = *(a1 + 40);
      if (v12 <= 1)
      {
        v27 = 1;
      }

      else
      {
        v27 = v12;
      }

      if (v11 <= 1)
      {
        v28 = 1;
      }

      else
      {
        v28 = v11;
      }

      result = 2 * v41;
      do
      {
        if (v12 <= __n)
        {
          v29 = 0;
          v30 = v26;
          v31 = v24;
          do
          {
            v32 = 0;
            v33 = v30;
            v34 = v31;
            do
            {
              v35 = 0;
              v36 = v34;
              do
              {
                *v36 = *(v33 + 2 * v35++);
                v36 += a7 >> 1;
              }

              while (v27 != v35);
              ++v34;
              ++v32;
              v33 += result;
            }

            while (v32 != v28);
            v31 += v11;
            ++v29;
            v30 += 2 * v12;
          }

          while (__n / v12 > v29);
        }

        v24 += 2 * v12 * (a7 >> 1);
        ++v25;
        v26 += 2 * v11 * v41;
      }

      while (v7 / v11 > v25);
    }
  }

  return result;
}

vImage_Error PixelShuffler_yuv420TransposeAndFlipHorizontally(uint64_t a1, char *a2, char *a3, void *__src, void *a5, size_t a6, unint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, unint64_t a11)
{
  v15 = a2;
  PixelShuffler_imageTranspose(a1, a2, __src, a6, a7, a8, a9);
  if (a6)
  {
    v17 = 0;
    v18 = (a7 + 1) >> 1;
    v19 = &v15[a7 - 1];
    do
    {
      if ((a7 & 1) != v18)
      {
        v20 = 0;
        v21 = v15;
        do
        {
          v22 = *v21;
          *v21++ = *(v19 + v20);
          *(v19 + v20--) = v22;
        }

        while ((a7 & 1) - v18 != v20);
      }

      v19 += a9;
      v15 += a9;
      ++v17;
    }

    while (v17 != a6);
  }

  v23 = a7 >> 1;
  v24 = a6 >> 1;
  PixelShuffler_imageTranspose_uint16(a1, a3, a5, v24, v23, a10, a11);

  return PixelShuffler_imageFlipHorizontally_uint16(a3, v23, v24, a11);
}

vImage_Error PixelShuffler_dirRot90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t a5, size_t a6, uint64_t a7, uint64_t a8, vImagePixelCount a9, vImagePixelCount a10)
{
  src.data = (a2 + a7 + a8 * a6);
  src.height = a10;
  src.width = a9;
  src.rowBytes = a6;
  dest.data = (a1 + a8 + a7 * a5);
  dest.height = a9;
  dest.width = a10;
  dest.rowBytes = a5;
  if (vImageRotate90_Planar8(&src, &dest, 3u, 0, 0))
  {
    printf("ERROR: Y vImage rotate err=%d\n");
  }

  else
  {
    result = vImageHorizontalReflect_Planar8(&dest, &dest, 2u);
    if (!result)
    {
      return result;
    }

    printf("ERROR: Y vImage horizontal reflection err=%d\n");
  }

  return 0xFFFFFFFFLL;
}

vImage_Error PixelShuffler_invRot90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t a5, size_t a6, uint64_t a7, uint64_t a8, vImagePixelCount a9, vImagePixelCount a10)
{
  src.data = (a2 + a8 + a7 * a6);
  src.height = a9;
  src.width = a10;
  src.rowBytes = a6;
  dest.data = (a1 + a7 + a8 * a5);
  dest.height = a10;
  dest.width = a9;
  dest.rowBytes = a5;
  if (vImageRotate90_Planar8(&src, &dest, 3u, 0, 0))
  {
    printf("ERROR: Y vImage rotate err=%d\n");
  }

  else
  {
    result = vImageHorizontalReflect_Planar8(&dest, &dest, 2u);
    if (!result)
    {
      return result;
    }

    printf("ERROR: Y vImage horizontal reflection err=%d\n");
  }

  return 0xFFFFFFFFLL;
}

vImage_Error PixelShuffler_yuv420TransposeAndFlipHorizontallyRoi(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, size_t a8, size_t a9, size_t a10, size_t a11, unint64_t a12, unint64_t a13, vImagePixelCount a14, vImagePixelCount a15)
{
  src.data = (a4 + a12 + a13 * a8);
  src.height = a15;
  src.width = a14;
  src.rowBytes = a8;
  dest.data = a2;
  dest.height = a14;
  dest.width = a15;
  dest.rowBytes = a9;
  v17 = vImageRotate90_Planar8(&src, &dest, 3u, 0, 0);
  if (v17)
  {
    printf("ERROR: Y vImage rotate err=%d\n", v17);
  }

  src.data = (a5 + (a12 >> 1) + (a13 >> 1) * a10);
  src.height = a15 >> 1;
  src.width = a14 >> 1;
  src.rowBytes = a10;
  dest.data = a3;
  dest.height = a14 >> 1;
  dest.width = a15 >> 1;
  dest.rowBytes = a11;
  result = vImageRotate90_Planar16U(&src, &dest, 3u, 0, 0);
  if (result)
  {
    return printf("ERROR: Y vImage rotate err=%d\n", result);
  }

  return result;
}

vImage_Error PixelShuffler_yuv420TransposeRoi(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, size_t a8, size_t a9, size_t a10, size_t a11, unint64_t a12, unint64_t a13, vImagePixelCount a14, vImagePixelCount a15)
{
  src.data = (a4 + a12 + a13 * a8);
  src.height = a15;
  src.width = a14;
  src.rowBytes = a8;
  dest.data = a2;
  dest.height = a14;
  dest.width = a15;
  dest.rowBytes = a9;
  v17 = vImageRotate90_Planar8(&src, &dest, 3u, 0, 0);
  if (v17)
  {
    printf("ERROR: Y vImage rotate err=%d\n", v17);
  }

  v18 = vImageHorizontalReflect_Planar8(&dest, &dest, 2u);
  if (v18)
  {
    printf("ERROR: Y vImage horizontal reflection err=%d\n", v18);
  }

  src.data = (a5 + (a12 >> 1) + (a13 >> 1) * a10);
  src.height = a15 >> 1;
  src.width = a14 >> 1;
  src.rowBytes = a10;
  dest.data = a3;
  dest.height = a14 >> 1;
  dest.width = a15 >> 1;
  dest.rowBytes = a11;
  v19 = vImageRotate90_Planar16U(&src, &dest, 3u, 0, 0);
  if (v19)
  {
    printf("ERROR: Y vImage rotate err=%d\n", v19);
  }

  result = vImageHorizontalReflect_Planar16U(&dest, &dest, 2u);
  if (result)
  {
    return printf("ERROR: Y vImage horizontal reflection err=%d\n", result);
  }

  return result;
}

vImage_Error PixelShuffler_yuv420FlipHorizontally(__CVBuffer *a1, unint64_t *a2, void *a3, unint64_t *a4, unint64_t *a5)
{
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
  v21 = CVPixelBufferGetBaseAddressOfPlane(a1, 1uLL);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
  v11 = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
  v12 = *a5;
  v13 = (*a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
  v14 = *a4 + 1;
  v15 = v14 & 0xFFFFFFFFFFFFFFFELL;
  if (*a3 <= v13)
  {
    v16 = 0;
  }

  else
  {
    v16 = (*a3 - v13 + 1) & 0xFFFFFFFFFFFFFFFELL;
  }

  if (v12 <= v15)
  {
    v17 = 0;
  }

  else
  {
    v17 = (v12 - v15 + 1) & 0xFFFFFFFFFFFFFFFELL;
  }

  *a2 = v13;
  *a3 = v13 + v16 - 1;
  *a4 = v15;
  *a5 = v15 + v17 - 1;
  dest.data = &BaseAddressOfPlane[v13 + v15 * BytesPerRowOfPlane];
  dest.height = v17;
  dest.width = v16;
  dest.rowBytes = BytesPerRowOfPlane;
  v18 = vImageHorizontalReflect_Planar8(&dest, &dest, 2u);
  if (v18)
  {
    printf("ERROR: Y vImage panorama horizontal reflection err=%d\n", v18);
  }

  return PixelShuffler_imageFlipHorizontally_uint16(&v21[v13 + (v14 >> 1) * v11], v16 >> 1, v17 >> 1, v11);
}

uint64_t PixelShuffler_yuv420ExposureMap()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0;
  v283 = *MEMORY[0x277D85DE8];
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(v7, 0);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v8, 0);
  v12 = CVPixelBufferGetBytesPerRowOfPlane(v8, 1uLL);
  CVPixelBufferLockBaseAddress(v8, 0);
  v13 = v2 - v4;
  if (v2 - v4 < 0)
  {
    v13 = v4 - v2;
  }

  v14 = vcvts_n_f32_u32(v13, 0xCuLL);
  v15 = fminf(v9[529] * ((v14 / v9[530]) * (v14 / v9[530])), 1.0);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v8, 0);
  pixelBuffer = v8;
  v17 = CVPixelBufferGetBaseAddressOfPlane(v8, 1uLL);
  v18 = 0;
  v19 = xmmword_23C47A6C0;
  if (v6 >= 1.0)
  {
    v69 = xmmword_23C47A6D0;
    v70 = xmmword_23C47A6E0;
    v71 = xmmword_23C47A5A0;
    v72 = v9 + 16;
    v177 = vdupq_n_s32(0x437F0000u);
    do
    {
      v203 = v71;
      v205 = v70;
      v207 = v69;
      v209 = v19;
      v221 = vcvtq_f32_u32(v71);
      v231 = vcvtq_f32_u32(v70);
      v244 = vcvtq_f32_u32(v69);
      v260 = vcvtq_f32_u32(v19);
      v275 = powf(v260.f32[1], 2.2);
      v73.f32[0] = powf(v260.f32[0], 2.2);
      v73.f32[1] = v275;
      v276 = v73;
      v74 = powf(v260.f32[2], 2.2);
      v75 = v276;
      v75.f32[2] = v74;
      v277 = v75;
      v76 = powf(v260.f32[3], 2.2);
      v77 = v277;
      v77.f32[3] = v76;
      v278 = v77;
      v260.i32[0] = powf(v244.f32[1], 2.2);
      v78.f32[0] = powf(v244.f32[0], 2.2);
      v78.i32[1] = v260.i32[0];
      v261 = v78;
      v79 = powf(v244.f32[2], 2.2);
      v80 = v261;
      v80.f32[2] = v79;
      v262 = v80;
      v81 = powf(v244.f32[3], 2.2);
      v82 = v262;
      v82.f32[3] = v81;
      v263 = v82;
      v244.i32[0] = powf(v231.f32[1], 2.2);
      v83.f32[0] = powf(v231.f32[0], 2.2);
      v83.i32[1] = v244.i32[0];
      v245 = v83;
      v84 = powf(v231.f32[2], 2.2);
      v85 = v245;
      v85.f32[2] = v84;
      v246 = v85;
      v86 = powf(v231.f32[3], 2.2);
      v87 = v246;
      v87.f32[3] = v86;
      v247 = v87;
      v231.i32[0] = powf(v221.f32[1], 2.2);
      v88.f32[0] = powf(v221.f32[0], 2.2);
      v88.i32[1] = v231.i32[0];
      v232 = v88;
      v89 = powf(v221.f32[2], 2.2);
      v90 = v232;
      v90.f32[2] = v89;
      v233 = v90;
      v91 = powf(v221.f32[3], 2.2);
      v92 = v233;
      v92.f32[3] = v91;
      v222 = v72[3];
      v234 = v92;
      v213 = v72[1];
      v215 = v72[2];
      v211 = *v72;
      v201 = powf(v6, COERCE_FLOAT(*v72));
      v199 = powf(v6, *(&v211 + 1));
      v197 = powf(v6, *(&v211 + 2));
      LODWORD(v211) = powf(v6, *(&v211 + 3));
      v195 = powf(v6, *&v213);
      v193 = powf(v6, *(&v213 + 1));
      v191 = powf(v6, *(&v213 + 2));
      LODWORD(v213) = powf(v6, *(&v213 + 3));
      v189 = powf(v6, *&v215);
      v187 = powf(v6, *(&v215 + 1));
      v185 = powf(v6, *(&v215 + 2));
      LODWORD(v215) = powf(v6, *(&v215 + 3));
      v183 = powf(v6, *&v222);
      v181 = powf(v6, *(&v222 + 1));
      v179 = powf(v6, *(&v222 + 2));
      v93 = powf(v6, *(&v222 + 3));
      v94.i64[0] = __PAIR64__(LODWORD(v181), LODWORD(v183));
      v94.i64[1] = __PAIR64__(LODWORD(v93), LODWORD(v179));
      v95 = v94;
      v96.i64[0] = __PAIR64__(LODWORD(v187), LODWORD(v189));
      v96.i64[1] = __PAIR64__(v215, LODWORD(v185));
      v97 = v96;
      v96.i64[0] = __PAIR64__(LODWORD(v193), LODWORD(v195));
      v96.i64[1] = __PAIR64__(v213, LODWORD(v191));
      v94.i64[0] = __PAIR64__(LODWORD(v199), LODWORD(v201));
      v94.i64[1] = __PAIR64__(v211, LODWORD(v197));
      v223 = vmulq_f32(v247, v96);
      v235 = vmulq_f32(v234, v94);
      v248 = vmulq_f32(v263, v97);
      v264 = vmulq_f32(v278, v95);
      v278.i32[0] = powf(v264.f32[1], 0.45455);
      v98.f32[0] = powf(v264.f32[0], 0.45455);
      v98.i32[1] = v278.i32[0];
      v279 = v98;
      v99 = powf(v264.f32[2], 0.45455);
      v100 = v279;
      v100.f32[2] = v99;
      v280 = v100;
      v101 = powf(v264.f32[3], 0.45455);
      v102 = v280;
      v102.f32[3] = v101;
      v281 = v102;
      v264.i32[0] = powf(v248.f32[1], 0.45455);
      v103.f32[0] = powf(v248.f32[0], 0.45455);
      v103.i32[1] = v264.i32[0];
      v265 = v103;
      v104 = powf(v248.f32[2], 0.45455);
      v105 = v265;
      v105.f32[2] = v104;
      v266 = v105;
      v106 = powf(v248.f32[3], 0.45455);
      v107 = v266;
      v107.f32[3] = v106;
      v267 = v107;
      v248.i32[0] = powf(v223.f32[1], 0.45455);
      v108.f32[0] = powf(v223.f32[0], 0.45455);
      v108.i32[1] = v248.i32[0];
      v249 = v108;
      v109 = powf(v223.f32[2], 0.45455);
      v110 = v249;
      v110.f32[2] = v109;
      v250 = v110;
      v111 = powf(v223.f32[3], 0.45455);
      v112 = v250;
      v112.f32[3] = v111;
      v251 = v112;
      v223.i32[0] = powf(v235.f32[1], 0.45455);
      v113.f32[0] = powf(v235.f32[0], 0.45455);
      v113.i32[1] = v223.i32[0];
      v224 = v113;
      v114 = powf(v235.f32[2], 0.45455);
      v115 = v224;
      v115.f32[2] = v114;
      v225 = v115;
      v116 = powf(v235.f32[3], 0.45455);
      v117 = v225;
      v117.f32[3] = v116;
      *&v282[v18 + 0x10000] = vuzp1q_s8(vuzp1q_s16(vcvtq_s32_f32(vbslq_s8(vcgtq_f32(v117, v177), v177, v117)), vcvtq_s32_f32(vbslq_s8(vcgtq_f32(v251, v177), v177, v251))), vuzp1q_s16(vcvtq_s32_f32(vbslq_s8(vcgtq_f32(v267, v177), v177, v267)), vcvtq_s32_f32(vbslq_s8(vcgtq_f32(v281, v177), v177, v281))));
      v18 += 16;
      v118.i64[0] = 0x1000000010;
      v118.i64[1] = 0x1000000010;
      v71 = vaddq_s32(v203, v118);
      v70 = vaddq_s32(v205, v118);
      v69 = vaddq_s32(v207, v118);
      v19 = vaddq_s32(v209, v118);
      v72 += 4;
    }

    while (v18 != 256);
  }

  else
  {
    v20 = v9 + 272;
    v176 = vdupq_n_s32(0x437F0000u);
    v21 = xmmword_23C47A6D0;
    v22 = xmmword_23C47A6E0;
    v23 = xmmword_23C47A5A0;
    do
    {
      v202 = v23;
      v204 = v22;
      v206 = v21;
      v208 = v19;
      v216 = vcvtq_f32_u32(v23);
      v226 = vcvtq_f32_u32(v22);
      v236 = vcvtq_f32_u32(v21);
      v252 = vcvtq_f32_u32(v19);
      v268 = powf(v252.f32[1], 2.2);
      v24.f32[0] = powf(v252.f32[0], 2.2);
      v24.f32[1] = v268;
      v269 = v24;
      v25 = powf(v252.f32[2], 2.2);
      v26 = v269;
      v26.f32[2] = v25;
      v270 = v26;
      v27 = powf(v252.f32[3], 2.2);
      v28 = v270;
      v28.f32[3] = v27;
      v271 = v28;
      v252.i32[0] = powf(v236.f32[1], 2.2);
      v29.f32[0] = powf(v236.f32[0], 2.2);
      v29.i32[1] = v252.i32[0];
      v253 = v29;
      v30 = powf(v236.f32[2], 2.2);
      v31 = v253;
      v31.f32[2] = v30;
      v254 = v31;
      v32 = powf(v236.f32[3], 2.2);
      v33 = v254;
      v33.f32[3] = v32;
      v255 = v33;
      v236.i32[0] = powf(v226.f32[1], 2.2);
      v34.f32[0] = powf(v226.f32[0], 2.2);
      v34.i32[1] = v236.i32[0];
      v237 = v34;
      v35 = powf(v226.f32[2], 2.2);
      v36 = v237;
      v36.f32[2] = v35;
      v238 = v36;
      v37 = powf(v226.f32[3], 2.2);
      v38 = v238;
      v38.f32[3] = v37;
      v239 = v38;
      v226.i32[0] = powf(v216.f32[1], 2.2);
      v39.f32[0] = powf(v216.f32[0], 2.2);
      v39.i32[1] = v226.i32[0];
      v227 = v39;
      v40 = powf(v216.f32[2], 2.2);
      v41 = v227;
      v41.f32[2] = v40;
      v228 = v41;
      v42 = powf(v216.f32[3], 2.2);
      v43 = v228;
      v43.f32[3] = v42;
      v217 = v20[3];
      v229 = v43;
      v212 = v20[1];
      v214 = v20[2];
      v210 = *v20;
      v200 = powf(v6, COERCE_FLOAT(*v20));
      v198 = powf(v6, *(&v210 + 1));
      v196 = powf(v6, *(&v210 + 2));
      LODWORD(v210) = powf(v6, *(&v210 + 3));
      v194 = powf(v6, *&v212);
      v192 = powf(v6, *(&v212 + 1));
      v190 = powf(v6, *(&v212 + 2));
      LODWORD(v212) = powf(v6, *(&v212 + 3));
      v188 = powf(v6, *&v214);
      v186 = powf(v6, *(&v214 + 1));
      v184 = powf(v6, *(&v214 + 2));
      LODWORD(v214) = powf(v6, *(&v214 + 3));
      v182 = powf(v6, *&v217);
      v180 = powf(v6, *(&v217 + 1));
      v178 = powf(v6, *(&v217 + 2));
      v44 = powf(v6, *(&v217 + 3));
      v45.i64[0] = __PAIR64__(LODWORD(v180), LODWORD(v182));
      v45.i64[1] = __PAIR64__(LODWORD(v44), LODWORD(v178));
      v46 = v45;
      v47.i64[0] = __PAIR64__(LODWORD(v186), LODWORD(v188));
      v47.i64[1] = __PAIR64__(v214, LODWORD(v184));
      v48 = v47;
      v47.i64[0] = __PAIR64__(LODWORD(v192), LODWORD(v194));
      v47.i64[1] = __PAIR64__(v212, LODWORD(v190));
      v45.i64[0] = __PAIR64__(LODWORD(v198), LODWORD(v200));
      v45.i64[1] = __PAIR64__(v210, LODWORD(v196));
      v218 = vmulq_f32(v239, v47);
      v230 = vmulq_f32(v229, v45);
      v240 = vmulq_f32(v255, v48);
      v256 = vmulq_f32(v271, v46);
      v271.i32[0] = powf(v256.f32[1], 0.45455);
      v49.f32[0] = powf(v256.f32[0], 0.45455);
      v49.i32[1] = v271.i32[0];
      v272 = v49;
      v50 = powf(v256.f32[2], 0.45455);
      v51 = v272;
      v51.f32[2] = v50;
      v273 = v51;
      v52 = powf(v256.f32[3], 0.45455);
      v53 = v273;
      v53.f32[3] = v52;
      v274 = v53;
      v256.i32[0] = powf(v240.f32[1], 0.45455);
      v54.f32[0] = powf(v240.f32[0], 0.45455);
      v54.i32[1] = v256.i32[0];
      v257 = v54;
      v55 = powf(v240.f32[2], 0.45455);
      v56 = v257;
      v56.f32[2] = v55;
      v258 = v56;
      v57 = powf(v240.f32[3], 0.45455);
      v58 = v258;
      v58.f32[3] = v57;
      v259 = v58;
      v240.i32[0] = powf(v218.f32[1], 0.45455);
      v59.f32[0] = powf(v218.f32[0], 0.45455);
      v59.i32[1] = v240.i32[0];
      v241 = v59;
      v60 = powf(v218.f32[2], 0.45455);
      v61 = v241;
      v61.f32[2] = v60;
      v242 = v61;
      v62 = powf(v218.f32[3], 0.45455);
      v63 = v242;
      v63.f32[3] = v62;
      v243 = v63;
      v218.i32[0] = powf(v230.f32[1], 0.45455);
      v64.f32[0] = powf(v230.f32[0], 0.45455);
      v64.i32[1] = v218.i32[0];
      v219 = v64;
      v65 = powf(v230.f32[2], 0.45455);
      v66 = v219;
      v66.f32[2] = v65;
      v220 = v66;
      v67 = powf(v230.f32[3], 0.45455);
      v68 = v220;
      v68.f32[3] = v67;
      *&v282[v18 + 0x10000] = vuzp1q_s8(vuzp1q_s16(vcvtq_s32_f32(vbslq_s8(vcgtq_f32(v68, v176), v176, v68)), vcvtq_s32_f32(vbslq_s8(vcgtq_f32(v243, v176), v176, v243))), vuzp1q_s16(vcvtq_s32_f32(vbslq_s8(vcgtq_f32(v259, v176), v176, v259)), vcvtq_s32_f32(vbslq_s8(vcgtq_f32(v274, v176), v176, v274))));
      v18 += 16;
      v68.i64[0] = 0x1000000010;
      v68.i64[1] = 0x1000000010;
      v23 = vaddq_s32(v202, v68);
      v22 = vaddq_s32(v204, v68);
      v21 = vaddq_s32(v206, v68);
      v19 = vaddq_s32(v208, v68);
      v20 += 4;
    }

    while (v18 != 256);
    v6 = 1.0 / v6;
  }

  v119 = powf(v6, v15);
  v120 = 0;
  v121 = v9[528];
  v122 = fminf(v119, v9[531]);
  v123 = v282;
  do
  {
    v124 = v120 - v121;
    if (v124 <= 0.0)
    {
      v124 = 0.0;
    }

    v125 = v124 / (255.0 - v121);
    v126 = powf(v122, v125);
    v127.i64[0] = 0x1000000010;
    v127.i64[1] = 0x1000000010;
    v128.i64[0] = 0x4300000043000000;
    v128.i64[1] = 0x4300000043000000;
    v129.i64[0] = 0x7F0000007FLL;
    v129.i64[1] = 0x7F0000007FLL;
    v130 = 0;
    v131 = vdupq_lane_s64(COERCE__INT64(v126), 0);
    v132 = xmmword_23C47A5A0;
    v133 = xmmword_23C47A6E0;
    v134 = xmmword_23C47A6D0;
    v135 = xmmword_23C47A6C0;
    do
    {
      v136 = vaddq_s32(v132, v129);
      v137 = vaddq_s32(v133, v129);
      v138 = vaddq_s32(v134, v129);
      v139 = vaddq_s32(v135, v129);
      v140.i64[0] = v139.i32[0];
      v140.i64[1] = v139.i32[1];
      v141 = vcvtq_f64_s64(v140);
      v140.i64[0] = v139.i32[2];
      v140.i64[1] = v139.i32[3];
      v142 = vcvtq_f64_s64(v140);
      v140.i64[0] = v138.i32[0];
      v140.i64[1] = v138.i32[1];
      v143 = vcvtq_f64_s64(v140);
      v140.i64[0] = v138.i32[2];
      v140.i64[1] = v138.i32[3];
      v144 = vcvtq_f64_s64(v140);
      v140.i64[0] = v137.i32[0];
      v140.i64[1] = v137.i32[1];
      v145 = vcvtq_f64_s64(v140);
      v140.i64[0] = v137.i32[2];
      v140.i64[1] = v137.i32[3];
      v146 = vcvtq_f64_s64(v140);
      v140.i64[0] = v136.i32[0];
      v140.i64[1] = v136.i32[1];
      v147 = vcvtq_f64_s64(v140);
      v140.i64[0] = v136.i32[2];
      v140.i64[1] = v136.i32[3];
      *&v123[v130] = vuzp1q_s8(vuzp1q_s16(vcvtq_s32_f32(vaddq_f32(vrndpq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(v147, v131)), vdivq_f64(vcvtq_f64_s64(v140), v131))), v128)), vcvtq_s32_f32(vaddq_f32(vrndpq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(v145, v131)), vdivq_f64(v146, v131))), v128))), vuzp1q_s16(vcvtq_s32_f32(vaddq_f32(vrndpq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(v143, v131)), vdivq_f64(v144, v131))), v128)), vcvtq_s32_f32(vaddq_f32(vrndpq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(v141, v131)), vdivq_f64(v142, v131))), v128))));
      v130 += 16;
      v132 = vaddq_s32(v132, v127);
      v133 = vaddq_s32(v133, v127);
      v134 = vaddq_s32(v134, v127);
      v135 = vaddq_s32(v135, v127);
    }

    while (v130 != 256);
    ++v120;
    v123 += 256;
  }

  while (v120 != 256);
  if (HeightOfPlane)
  {
    for (i = 0; i < HeightOfPlane; i += 2)
    {
      if (BytesPerRowOfPlane)
      {
        v149 = 0;
        v150 = &v17[v12 * (i >> 1)];
        v151 = &BaseAddressOfPlane[i * BytesPerRowOfPlane];
        do
        {
          v152 = HIBYTE(*v151);
          v153 = *v151;
          v154 = BYTE1(*v151);
          v155 = BYTE2(*v151);
          v156 = BYTE3(*v151);
          v157 = BYTE4(*v151);
          v158 = (WORD2(*v151) >> 8);
          v159 = BYTE6(*v151);
          *v151 = v282[v153 + 0x10000] | (v282[v154 + 0x10000] << 8) | (v282[v155 + 0x10000] << 16) | (v282[v156 + 0x10000] << 24) | (v282[v157 + 0x10000] << 32) | (v282[v158 + 0x10000] << 40) | (v282[v159 + 0x10000] << 48) | (v282[v152 + 0x10000] << 56);
          v160 = *(v151 + BytesPerRowOfPlane);
          v161 = HIBYTE(v160);
          v162 = v160;
          v163 = BYTE1(v160);
          v164 = BYTE2(v160);
          v165 = BYTE3(v160);
          v166 = BYTE4(v160);
          v167 = BYTE5(v160);
          v168 = BYTE6(v160);
          *(v151 + BytesPerRowOfPlane) = v282[v160 + 0x10000] | (v282[BYTE1(v160) + 0x10000] << 8) | (v282[BYTE2(v160) + 0x10000] << 16) | (v282[BYTE3(v160) + 0x10000] << 24) | (v282[BYTE4(v160) + 0x10000] << 32) | (v282[BYTE5(v160) + 0x10000] << 40) | (v282[BYTE6(v160) + 0x10000] << 48) | (v282[HIBYTE(v160) + 0x10000] << 56);
          v169 = &v150[v149];
          v170 = &v282[((v154 + v153 + v162 + v163) << 6) & 0x1FF00];
          *v169 = v170[v150[v149]];
          ++v151;
          v171 = &v282[((v155 + v156 + v165 + v164) << 6) & 0x1FF00];
          LOBYTE(v156) = v171[v150[v149 + 2]];
          v169[1] = v170[v150[v149 + 1]];
          v169[2] = v156;
          v169[3] = v171[v150[v149 + 3]];
          v172 = &v282[((v157 + v158 + v167 + v166) << 6) & 0x1FF00];
          v169[4] = v172[v150[v149 + 4]];
          v169[5] = v172[v150[v149 + 5]];
          v173 = &v282[((v159 + v152 + v161 + v168) << 6) & 0x1FF00];
          v169[6] = v173[v150[v149 + 6]];
          v169[7] = v173[v150[v149 + 7]];
          v149 += 8;
        }

        while (v149 < BytesPerRowOfPlane);
      }
    }
  }

  return CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
}

uint64_t initProjectionContext(int a1, int a2, uint64_t a3)
{
  *a3 = a1;
  *(a3 + 4) = a2;
  if ((a2 & 7) != 0)
  {
    v3 = 4294967291;
    ACTLogMessageImp(4, "Projections error %d @ %s (line %d)", -5, "/Library/Caches/com.apple.xbs/Sources/ACTFramework/LegacyPano/Projections.c", 36);
    return v3;
  }

  if ((a1 & 0xF) != 0)
  {
    v3 = 4294967291;
    ACTLogMessageImp(4, "Projections error %d @ %s (line %d)", -5, "/Library/Caches/com.apple.xbs/Sources/ACTFramework/LegacyPano/Projections.c", 41);
    return v3;
  }

  v5 = a2 / 240;
  if (240 * (a2 / 240) != a2)
  {
    ++v5;
  }

  *(a3 + 24) = v5;
  if (v5 >= 5)
  {
    v3 = 4294967292;
    ACTLogMessageImp(4, "Projections error %d @ %s (line %d)", -4, "/Library/Caches/com.apple.xbs/Sources/ACTFramework/LegacyPano/Projections.c", 52);
    return v3;
  }

  v6 = 0;
  *(a3 + 28) = a1;
  *(a3 + 48) = 0;
  if (v5 > 1)
  {
    v7 = (a3 + 32);
    v8 = (v5 - 1);
    v9 = 240;
    do
    {
      *v7 = 240;
      v7[5] = v9;
      v9 += 240;
      ++v7;
      --v8;
    }

    while (v8);
    v6 = v5 - 1;
  }

  v10 = (a3 + 32);
  *(a3 + 32 + 4 * v6) = a2 - 240 * v6;
  *(a3 + 96) = (2 * a1 + 127) & 0xFFFFFF80;
  if (v5 < 1)
  {
    v17 = 0;
    v18 = 0;
  }

  else
  {
    v11 = 0;
    v12 = -v5;
    v13 = 8;
    v14 = 0;
    do
    {
      v15 = *(a3 + 4 * v13);
      v16 = (4 * v15 + 127) & 0xFFFFFF80;
      v14 += v16 * (a1 | 1);
      *(a3 + 8 * v13) = v16;
      v11 += *(a3 + 96) + *(a3 + 96) * v15;
      ++v13;
    }

    while (v12 + v13 != 8);
    v17 = 2 * v14;
    v18 = 2 * v11;
  }

  v19 = *(a3 + 8);
  if (v19)
  {
    free(v19);
  }

  v20 = malloc_type_malloc(v17, 0x100004052888210uLL);
  *(a3 + 8) = v20;
  if (!v20)
  {
    v32 = 90;
LABEL_30:
    v3 = 4294967293;
    ACTLogMessageImp(4, "Projections error %d @ %s (line %d)", -3, "/Library/Caches/com.apple.xbs/Sources/ACTFramework/LegacyPano/Projections.c", v32);
    return v3;
  }

  v21 = *(a3 + 16);
  if (v21)
  {
    free(v21);
  }

  v22 = malloc_type_malloc(v18, 0x1000040BDFB0063uLL);
  *(a3 + 16) = v22;
  if (!v22)
  {
    v32 = 96;
    goto LABEL_30;
  }

  v23 = *(a3 + 24);
  if (v23 >= 1)
  {
    v24 = *(a3 + 8);
    v25 = *(a3 + 28) + 1;
    v26 = *(a3 + 96);
    v27 = (a3 + 200);
    do
    {
      v28 = *(v27 - 17) * v25;
      *(v27 - 12) = v24;
      v29 = v28 + v24;
      *(v27 - 8) = v29;
      v24 = v29 + v28;
      v30 = *v10++;
      v31 = v26 + v26 * v30;
      *(v27 - 4) = v22;
      *v27++ = &v22[v31];
      v22 += v31 + v31;
      --v23;
    }

    while (v23);
  }

  v3 = 0;
  *(a3 + 232) = 1;
  return v3;
}

uint64_t disposeProjectionContext(uint64_t a1)
{
  if (!a1)
  {
    return 4294967294;
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    free(v2);
    *(a1 + 8) = 0;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    free(v3);
  }

  result = 0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t computeIntegralImages(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21[9] = *MEMORY[0x277D85DE8];
  *(a5 + 232) = *(a5 + 232) == 0;
  if (*(a5 + 24) < 1)
  {
    return 0;
  }

  v7 = 0;
  while (1)
  {
    v8 = *(a5 + 28);
    if ((v8 & 7) != 0)
    {
      v18 = 173;
      goto LABEL_9;
    }

    v9 = a5 + 4 * v7;
    v10 = *(v9 + 32);
    if ((v10 & 0xF) != 0)
    {
      break;
    }

    v11 = a5 + 8 * v7;
    v12 = v11 + 32 * *(a5 + 232);
    v13 = *(v12 + 104);
    v14 = *(v11 + 64);
    v15 = *(v12 + 168);
    v16 = *(a5 + 96);
    v21[8] = 0;
    bzero(v13, 4 * v10);
    bzero(v15, 2 * v8);
    v21[0] = a1;
    v21[1] = &v13[v14];
    v21[2] = &v15[v16];
    v21[3] = v8;
    v21[4] = v10;
    v21[5] = a4;
    v21[6] = v14;
    v21[7] = v16;
    sub_23C443D00(v21);
    a1 += *(v9 + 32) * a4;
    if (++v7 >= *(a5 + 24))
    {
      return 0;
    }
  }

  v18 = 178;
LABEL_9:
  v17 = 4294967291;
  ACTLogMessageImp(4, "Projections error %d @ %s (line %d)", -5, "/Library/Caches/com.apple.xbs/Sources/ACTFramework/LegacyPano/Projections.c", v18);
  ACTLogMessageImp(4, "Projections error %d @ %s (line %d)", -5, "/Library/Caches/com.apple.xbs/Sources/ACTFramework/LegacyPano/Projections.c", 369);
  return v17;
}

uint64_t projectionColsFromIntegralImage(int a1, signed int *a2, signed int a3, int a4, int a5, int a6, uint64_t a7)
{
  v7 = 386;
  if (a3 < 0 || a4 < a3 || *a2 <= a4 || a4 < 0 || *a2 <= a3 || (v7 = 390, a5 < 0) || a6 < a5 || (v8 = a2[1], v8 <= a6) || a6 < 0 || v8 <= a5)
  {
    v27 = 0xFFFFFFFFLL;
    ACTLogMessageImp(4, "Projections error %d @ %s (line %d)", -1, "/Library/Caches/com.apple.xbs/Sources/ACTFramework/LegacyPano/Projections.c", v7);
  }

  else
  {
    LODWORD(v9) = a5 / 0xF0u;
    if (a5 / 0xF0u <= a6 / 0xF0u)
    {
      v10 = 0;
      v11 = 0;
      v12 = a2[58];
      if (!a1)
      {
        v12 = v12 != 1;
      }

      v13 = v12;
      v14 = a3;
      v15 = a2 + 16;
      v16 = (a4 + 1);
      v17 = a2 + 8;
      v9 = v9;
      v18 = &a2[8 * v13 + 26];
      do
      {
        v19 = (a5 - v11) & ~((a5 - v11) >> 31);
        LODWORD(v20) = a6 - v11;
        if (a6 - v11 >= 239)
        {
          v20 = 239;
        }

        else
        {
          v20 = v20;
        }

        if (v19 <= v20)
        {
          v21 = *(v18 + 8 * v9);
          v22 = *&v15[2 * v9];
          v23 = v21 + v22 * v14;
          v24 = v21 + v22 * v16;
          v25 = (a7 + 4 * v10);
          do
          {
            *v25++ = (*(v24 + 4 * v19) - *(v23 + 4 * v19));
            ++v10;
          }

          while (v19++ < v20);
        }

        v11 += v17[v9++];
      }

      while (v9 != a6 / 0xF0u + 1);
    }

    return 0;
  }

  return v27;
}