uint64_t VideoMentorCopyPerformanceDictionary(uint64_t a1, CFMutableDictionaryRef *a2)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v4 = Mutable;
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    result = 0;
    *a2 = v4;
  }

  else
  {
    VideoMentorCopyPerformanceDictionary_cold_1(&v6);
    return v6;
  }

  return result;
}

__CFString *videoMentorDebugCopyKnownNodes(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = *(a1 + 8);
  Count = CFDictionaryGetCount(v3);
  CFStringAppendFormat(Mutable, 0, @"Known nodes: %p (%d)\n", v3, Count);
  CFDictionaryApplyFunction(*(a1 + 8), videoMentorDebugCopyKnownNodesApplier, Mutable);
  return Mutable;
}

void videoMentorDebugCopyKnownNodesApplier(uint64_t a1, uint64_t a2, __CFString *a3)
{
  v4 = FigCFCopyCompactDescription();
  CFStringAppendFormat(a3, 0, @"\t%@\n", v4);

  CFRelease(v4);
}

void videoMentorDebugDumpGraphNode(FILE *a1, __CFSet *a2, const __CFDictionary *a3, uint64_t a4)
{
  if (!CFSetContainsValue(a2, a4))
  {
    CFSetSetValue(a2, a4);
    time.value = 0;
    asprintf(&time, "node_%p", a4);
    value = time.value;
    time = *(a4 + 104);
    Seconds = CMTimeGetSeconds(&time);
    time = *(a4 + 128);
    v10 = CMTimeGetSeconds(&time);
    fprintf(a1, "%s [ label = PTS %1.6f OPTS %1.6f\\n", value, Seconds, v10);
    v11 = " Sync";
    v12 = "";
    if (!*(a4 + 158))
    {
      v11 = "";
    }

    if (*(a4 + 159))
    {
      v13 = " Partial sync";
    }

    else
    {
      v13 = "";
    }

    v14 = "  Open GOP";
    if (!*(a4 + 160))
    {
      v14 = "";
    }

    if (*(a4 + 161))
    {
      v15 = " droppable";
    }

    else
    {
      v15 = "";
    }

    if (*(a4 + 162))
    {
      v16 = " leading";
    }

    else
    {
      v16 = "";
    }

    if (*(a4 + 157))
    {
      v17 = " STSA";
    }

    else
    {
      v17 = "";
    }

    if (*(a4 + 156))
    {
      v12 = " TSA";
    }

    fprintf(a1, "T%d%s%s%s%s%s%s%s", *(a4 + 152), v11, v13, v14, v15, v16, v17, v12);
    v18 = *(a4 + 56);
    if (v18)
    {
      time = *(v18 + 16);
      v19 = CMTimeGetSeconds(&time);
      fprintf(a1, " RG%1.6f", v19);
      v20 = *(a4 + 56);
      if (*(v20 + 58))
      {
        fwrite("(catchup)", 9uLL, 1uLL, a1);
        v20 = *(a4 + 56);
      }

      if (!*(v20 + 56))
      {
        fwrite("(undetermined)", 0xEuLL, 1uLL, a1);
      }
    }

    if ((*(a4 + 92) & 0x1D) == 1)
    {
      time = *(a4 + 80);
      v21 = CMTimeGetSeconds(&time);
      fprintf(a1, "\\nadjusted to %1.6f", v21);
    }

    fprintf(a1, "\\nnode %p", a4);
    v22 = *(a4 + 72);
    if (v22)
    {
      if (v22 == 1)
      {
        v23 = "NO";
      }

      else if (v22 == 2)
      {
        v23 = "YES";
      }

      else
      {
        v23 = "??";
      }
    }

    else
    {
      v23 = "UNK";
    }

    v24 = *(a4 + 68);
    if (v24)
    {
      if (v24 == 1)
      {
        v25 = "NO";
      }

      else if (v24 == 2)
      {
        v25 = "YES";
      }

      else
      {
        v25 = "??";
      }
    }

    else
    {
      v25 = "UNK";
    }

    v26 = *(a4 + 76);
    v27 = "undetermined";
    if (v26 == 2)
    {
      v27 = "selected";
    }

    if (v26 == 1)
    {
      v28 = "dropped";
    }

    else
    {
      v28 = v27;
    }

    fprintf(a1, "\\nR: %s L: %s S: %s", v23, v25, v28);
    fputc(34, a1);
    v29 = *(a4 + 56);
    if (v29)
    {
      v30 = CFDictionaryGetValue(a3, v29);
      if (!v30)
      {
        v30 = &videoMentorDebugDumpGraphNode_colorStrings[3 * videoMentorDebugDumpGraphNode_nextColorIndex];
        videoMentorDebugDumpGraphNode_nextColorIndex = (videoMentorDebugDumpGraphNode_nextColorIndex + 1) & 3;
        CFDictionarySetValue(a3, *(a4 + 56), v30);
      }

      v31 = *(a4 + 76);
      v32 = 1;
      if (v31 != 2)
      {
        v32 = 2;
      }

      if (v31)
      {
        v33 = v32;
      }

      else
      {
        v33 = 0;
      }

      fprintf(a1, ", color = %s", v30[v33]);
    }

    fwrite("]\n", 2uLL, 1uLL, a1);
    Count = CFArrayGetCount(*(a4 + 24));
    if (Count >= 1)
    {
      v35 = Count;
      for (i = 0; i != v35; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a4 + 24), i);
        time.value = 0;
        asprintf(&time, "node_%p", ValueAtIndex);
        v38 = time.value;
        fprintf(a1, "%s -> %s\n", value, time.value);
        free(v38);
      }
    }

    if (*(a4 + 64))
    {
      fprintf(a1, "%s -> UnknownDepFor%s\n", value, value);
    }

    v39 = CFArrayGetCount(*(a4 + 40));
    if (v39 >= 1)
    {
      v40 = v39;
      for (j = 0; j != v40; ++j)
      {
        v42 = CFArrayGetValueAtIndex(*(a4 + 40), j);
        time.value = 0;
        asprintf(&time, "node_%p", v42);
        v43 = time.value;
        fprintf(a1, "%s -> %s [style = dotted]\n", value, time.value);
        free(v43);
      }
    }

    v44 = CFArrayGetCount(*(a4 + 24));
    if (v44 >= 1)
    {
      v45 = v44;
      for (k = 0; k != v45; ++k)
      {
        v47 = CFArrayGetValueAtIndex(*(a4 + 24), k);
        videoMentorDebugDumpGraphNode(a1, a2, a3, v47);
      }
    }

    v48 = CFArrayGetCount(*(a4 + 40));
    if (v48 >= 1)
    {
      v49 = v48;
      for (m = 0; m != v49; ++m)
      {
        v51 = CFArrayGetValueAtIndex(*(a4 + 40), m);
        videoMentorDebugDumpGraphNode(a1, a2, a3, v51);
      }
    }

    free(value);
  }
}

double videoMentorFrameNodeInit(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void videoMentorFrameNodeFinalize(void *a1)
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
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[5];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[6];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[7];
  if (v7)
  {

    CFRelease(v7);
  }
}

__CFString *videoMentorFrameNodeCopyDebugDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = CFCopyDescription(*(a1 + 16));
  time = *(a1 + 104);
  Seconds = CMTimeGetSeconds(&time);
  time = *(a1 + 128);
  v6 = CMTimeGetSeconds(&time);
  v7 = *(a1 + 92);
  v8 = *(a1 + 24);
  if (v8)
  {
    Count = CFArrayGetCount(v8);
  }

  else
  {
    Count = 0;
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = CFArrayGetCount(v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    v13 = CFArrayGetCount(v12);
  }

  else
  {
    v13 = 0;
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    v15 = CFArrayGetCount(v14);
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a1 + 56);
  if (v16)
  {
    time = *(v16 + 16);
    v17 = CMTimeGetSeconds(&time);
  }

  else
  {
    v17 = NAN;
  }

  v18 = *(a1 + 68);
  if (v18)
  {
    if (v18 == 1)
    {
      v19 = "NO";
    }

    else if (v18 == 2)
    {
      v19 = "YES";
    }

    else
    {
      v19 = "??";
    }
  }

  else
  {
    v19 = "UNK";
  }

  v20 = *(a1 + 72);
  if (v20)
  {
    if (v20 == 1)
    {
      v21 = "NO";
    }

    else if (v20 == 2)
    {
      v21 = "YES";
    }

    else
    {
      v21 = "??";
    }
  }

  else
  {
    v21 = "UNK";
  }

  v22 = *(a1 + 76);
  v23 = "undetermined";
  if (v22 == 2)
  {
    v23 = "selected";
  }

  if (v22 == 1)
  {
    v24 = "dropped";
  }

  else
  {
    v24 = v23;
  }

  if (*(a1 + 64))
  {
    v25 = ", hasUnknownDependents";
  }

  else
  {
    v25 = "";
  }

  v26 = "(with adjustment)";
  if ((v7 & 1) == 0)
  {
    v26 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"<VideoMentorFrameNode: %p, sampleCursor: %@ %1.6f/%1.6f%s, %d dependents (%d dropped), %d parents (%d dropped), refreshGroup: %p (%1.6f)%s, isLeaf: %s, isRoot: %s, state: %s>", a1, v4, *&Seconds, *&v6, v26, Count, v11, v13, v15, v16, *&v17, v25, v19, v21, v24);
  if (v4)
  {
    CFRelease(v4);
  }

  return Mutable;
}

double refreshGroupInit(uint64_t a1)
{
  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void refreshGroupFinalize(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[8];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[9];
  if (v5)
  {

    CFRelease(v5);
  }
}

__CFString *refreshGroupCopyDebugDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = FigCFCopyCompactDescription();
  time = *(a1 + 16);
  Seconds = CMTimeGetSeconds(&time);
  if (*(a1 + 58))
  {
    v6 = "(catchup)";
  }

  else
  {
    v6 = "";
  }

  Count = CFArrayGetCount(*(a1 + 40));
  if (*(a1 + 56))
  {
    v8 = ", groupIsProcessed";
  }

  else
  {
    v8 = "";
  }

  if (*(a1 + 57))
  {
    v9 = ", commonParentNodesHaveBeenSelected";
  }

  else
  {
    v9 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"<VideoMentorRefreshGroup: %p targetOPTS: %1.6f%s, %d nodes%s%s>", a1, *&Seconds, v6, Count, v8, v9);
  if (v4)
  {
    CFRelease(v4);
  }

  return Mutable;
}

void videoMentorThreadReversePlayback(uint64_t a1, const void *a2, CMTime *a3, const void *a4, CMTime *a5, int a6, int a7, int a8, int a9, char a10, unsigned __int8 a11, unsigned __int8 a12, unsigned __int8 a13, CFArrayRef *a14, const void *a15, CFTypeRef cf)
{
  v257 = *MEMORY[0x1E69E9840];
  v242 = a2;
  v241 = a4;
  v240 = 0;
  v239 = 0;
  v238 = 0;
  v237 = 0;
  v236 = 0;
  v235 = 0;
  v233 = 0;
  v220 = *MEMORY[0x1E6960C70];
  *&start.value = *MEMORY[0x1E6960C70];
  v218 = *(MEMORY[0x1E6960C70] + 16);
  start.epoch = v218;
  ++*(a1 + 932);
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  *(a1 + 524) = 0;
  *(a1 + 492) = *(a1 + 488) != 0;
  *(a1 + 500) = 2;
  if (a8)
  {
    v21 = a8;
  }

  else
  {
    v21 = 2;
  }

  *(a1 + 496) = v21;
  v22 = *(a1 + 512);
  *(a1 + 512) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v23 = a9;
  if (v22)
  {
    CFRelease(v22);
  }

  Mutable = 0;
  theArray = 0;
  v224 = a15;
  *&v234.value = 0uLL;
  if (a9 == 2)
  {
    v23 = 1;
  }

  v234.epoch = 0;
  if (a2)
  {
    goto LABEL_13;
  }

  memset(time1, 0, 24);
  *&time2.start.value = *&a3->value;
  time2.start.epoch = a3->epoch;
  CursorForPresentationTimeStamp = videoMentorCreateCursorForPresentationTimeStamp(a1, a11, &time2.start.value, &v242);
  if (CursorForPresentationTimeStamp)
  {
LABEL_77:
    v27 = 0;
    v28 = 0;
    Mutable = 0;
    v58 = 0;
    v29 = 0;
    v30 = 0;
    v31 = MEMORY[0x1E695FF58];
    goto LABEL_83;
  }

  v53 = v242;
  v54 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v54)
  {
    CursorForPresentationTimeStamp = -12782;
    goto LABEL_76;
  }

  CursorForPresentationTimeStamp = v54(v53, time1);
  if (CursorForPresentationTimeStamp)
  {
LABEL_76:
    FigSignalErrorAtGM();
    goto LABEL_77;
  }

  if ((time1[0].flags & 0x1D) != 1)
  {
    CursorForPresentationTimeStamp = FigSignalErrorAtGM();
    goto LABEL_77;
  }

  time2.start = time1[0];
  lhs = *a3;
  if (!CMTimeCompare(&time2.start, &lhs))
  {
    v63 = FigSampleCursorStepInPresentationOrderAndReportStepsTaken(v242, -1, 0);
    if (v63)
    {
      CursorForPresentationTimeStamp = v63;
      goto LABEL_76;
    }
  }

  start = *a3;
  if (*a14 && CFArrayGetCount(*a14) >= 1 && !FigSampleCursorCopy(v242, &v240))
  {
    Mutable = 0;
    theArray = 0;
    rhs.value = 0;
    allocatora = *MEMORY[0x1E695E480];
    do
    {
      valuea = videoMentorGetCachedVideoFrameForCursor(a1, v240, *a14, cf);
      if (!valuea)
      {
        break;
      }

      *&time2.start.value = v220;
      time2.start.epoch = v218;
      v93 = v240;
      v94 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v94 || v94(v93, &rhs) || FigSampleCursorGetPresentationTimeStamp(v240, &time2) || FigSampleCursorStepInPresentationOrderAndReportStepsTaken(v240, -1, &v233) || v233 != -1 || FigSampleCursorCopy(v240, &v238))
      {
        break;
      }

      if (!Mutable)
      {
        Mutable = CFArrayCreateMutable(allocatora, 0, MEMORY[0x1E695E9C0]);
      }

      v95 = theArray;
      if (!theArray)
      {
        v95 = CFArrayCreateMutable(allocatora, 0, MEMORY[0x1E695E9C0]);
      }

      CFArrayAppendValue(Mutable, valuea);
      theArray = v95;
      CFArrayAppendValue(v95, rhs.value);
      if (rhs.value)
      {
        CFRelease(rhs.value);
        rhs.value = 0;
      }

      start = time2.start;
      if (v242)
      {
        CFRelease(v242);
      }

      v242 = v238;
      v238 = 0;
      time2.start = start;
      lhs = *a5;
    }

    while (CMTimeCompare(&time2.start, &lhs) > 0);
    if (rhs.value)
    {
      CFRelease(rhs.value);
      rhs.value = 0;
    }

    if (v240)
    {
      CFRelease(v240);
      v240 = 0;
    }

    if (v238)
    {
      CFRelease(v238);
      v238 = 0;
    }
  }

  else
  {
    Mutable = 0;
    theArray = 0;
  }

LABEL_13:
  if (*a14)
  {
    CFRelease(*a14);
    *a14 = 0;
  }

  time1[0] = *a5;
  *&time2.start.value = *&a5->value;
  time2.start.epoch = a5->epoch;
  lhs = *a3;
  videoMentorThrottlingStateStartNewOrder(a1 + 584, &time1[0].value, &time2, &lhs, v242);
  if (v241 || (a5->flags & 0x1D) != 1)
  {
    v32 = 0;
    value = 0;
  }

  else
  {
    time1[0] = *a5;
    v25 = videoMentorCreateCursorForPresentationTimeStamp(a1, a11, &time1[0].value, &v241);
    if (v25)
    {
      CursorForPresentationTimeStamp = v25;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = MEMORY[0x1E695FF58];
      goto LABEL_82;
    }

    v32 = 1;
    value = 1;
  }

  if ((a3->flags & 0x1D) != 1)
  {
    v55 = v242;
    v56 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (!v56)
    {
      CursorForPresentationTimeStamp = -12782;
      goto LABEL_79;
    }

    CursorForPresentationTimeStamp = v56(v55, a3);
    if (CursorForPresentationTimeStamp)
    {
      goto LABEL_79;
    }

    if ((a3->flags & 0x1D) != 1)
    {
      goto LABEL_134;
    }
  }

  v33 = v241;
  if (v241 && (a5->flags & 0x1D) != 1)
  {
    v57 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (!v57)
    {
      CursorForPresentationTimeStamp = -12782;
      goto LABEL_79;
    }

    CursorForPresentationTimeStamp = v57(v33, a5);
    if (CursorForPresentationTimeStamp)
    {
      goto LABEL_79;
    }

    if ((a5->flags & 0x1D) != 1)
    {
LABEL_134:
      CursorForPresentationTimeStamp = FigSignalErrorAtGM();
      goto LABEL_80;
    }
  }

  v34 = v242;
  v35 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v35)
  {
    CursorForPresentationTimeStamp = -12782;
    goto LABEL_79;
  }

  CursorForPresentationTimeStamp = v35(v34, &v240);
  if (CursorForPresentationTimeStamp)
  {
    goto LABEL_79;
  }

  allocator = v23;
  while (1)
  {
    v36 = v240;
    v37 = *(*(CMBaseObjectGetVTable() + 16) + 168);
    if (!v37)
    {
      CursorForPresentationTimeStamp = -12782;
      goto LABEL_79;
    }

    v38 = v37(v36, 1, &v233);
    if (v38)
    {
      CursorForPresentationTimeStamp = v38;
      goto LABEL_79;
    }

    if (v233 != 1)
    {
      break;
    }

    v39 = v240;
    v40 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (!v40)
    {
      CursorForPresentationTimeStamp = -12782;
      goto LABEL_79;
    }

    v41 = v40(v39, &v234);
    if (v41)
    {
      CursorForPresentationTimeStamp = v41;
      goto LABEL_79;
    }

    if ((v234.flags & 0x1D) != 1)
    {
      goto LABEL_134;
    }

    time1[0] = v234;
    time2.start = start;
    if (CMTimeCompare(time1, &time2.start) < 0)
    {
      if (!v241 || (time1[0] = *a5, time2.start = v234, CMTimeCompare(time1, &time2.start) <= 0))
      {
        if (v238)
        {
          CFRelease(v238);
          v238 = 0;
        }

        v42 = v240;
        v43 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (!v43)
        {
          CursorForPresentationTimeStamp = -12782;
          goto LABEL_79;
        }

        v44 = v43(v42, &v238);
        if (v44)
        {
          CursorForPresentationTimeStamp = v44;
          goto LABEL_79;
        }
      }
    }

    if (!*(*(CMBaseObjectGetVTable() + 16) + 80))
    {
      break;
    }

    v45 = v240;
    v46 = v242;
    v47 = *(CMBaseObjectGetVTable() + 16);
    if (v47)
    {
      v48 = v47;
      if (!v46)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v48 = 0;
      if (!v46)
      {
LABEL_44:
        v49 = 0;
        goto LABEL_45;
      }
    }

    v49 = *(CMBaseObjectGetVTable() + 16);
LABEL_45:
    if (v48 == v49)
    {
      v50 = *(v48 + 80);
      if (v50)
      {
        if (v50(v45, v46, 1))
        {
          break;
        }
      }
    }

    CursorForPresentationTimeStamp = -1;
    if (*(a1 + 116))
    {
      goto LABEL_80;
    }
  }

  v51 = v241;
  if (v241)
  {
    v52 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v52)
    {
      CursorForPresentationTimeStamp = v52(v51, &v239);
      if (!CursorForPresentationTimeStamp)
      {
        while (1)
        {
          v74 = v239;
          v75 = *(*(CMBaseObjectGetVTable() + 16) + 168);
          if (!v75)
          {
            break;
          }

          v64 = v75(v74, -1, &v233);
          if (v64)
          {
            CursorForPresentationTimeStamp = v64;
            goto LABEL_471;
          }

          if (v233 != -1)
          {
            goto LABEL_160;
          }

          v65 = v239;
          v66 = *(*(CMBaseObjectGetVTable() + 16) + 40);
          if (!v66)
          {
            CursorForPresentationTimeStamp = -12782;
            goto LABEL_473;
          }

          v67 = v66(v65, &v234);
          if (v67)
          {
            CursorForPresentationTimeStamp = v67;
LABEL_473:
            v31 = MEMORY[0x1E695FF58];
            v30 = value;
            v58 = theArray;
LABEL_474:
            FigSignalErrorAtGM();
LABEL_475:
            v27 = 0;
            v28 = 0;
            v29 = 0;
            goto LABEL_83;
          }

          if ((v234.flags & 0x1D) != 1)
          {
            goto LABEL_134;
          }

          time1[0] = v234;
          time2.start = start;
          if (CMTimeCompare(time1, &time2.start) < 0)
          {
            time1[0] = *a5;
            time2.start = v234;
            if (CMTimeCompare(time1, &time2.start) <= 0)
            {
              if (v237)
              {
                CFRelease(v237);
                v237 = 0;
              }

              v68 = FigSampleCursorCopy(v239, &v237);
              if (v68)
              {
                CursorForPresentationTimeStamp = v68;
                goto LABEL_79;
              }
            }
          }

          if (!*(*(CMBaseObjectGetVTable() + 16) + 80))
          {
            goto LABEL_160;
          }

          v69 = v241;
          v206 = v239;
          v70 = *(CMBaseObjectGetVTable() + 16);
          v71 = v70 ? v70 : 0;
          v72 = v69 ? *(CMBaseObjectGetVTable() + 16) : 0;
          if (v71 == v72)
          {
            v73 = *(v71 + 80);
            if (v73)
            {
              if (v73(v206, v69, 0))
              {
                goto LABEL_160;
              }
            }
          }

          CursorForPresentationTimeStamp = -1;
          if (*(a1 + 116))
          {
            goto LABEL_80;
          }
        }

        CursorForPresentationTimeStamp = -12782;
LABEL_471:
        v31 = MEMORY[0x1E695FF58];
        v30 = value;
        v58 = theArray;
        goto LABEL_474;
      }
    }

    else
    {
      CursorForPresentationTimeStamp = -12782;
    }

LABEL_79:
    FigSignalErrorAtGM();
LABEL_80:
    v27 = 0;
    v28 = 0;
    v29 = 0;
    goto LABEL_81;
  }

LABEL_160:
  v76 = v238;
  if (v238)
  {
    if (!a2 && v242)
    {
      CFRelease(v242);
      v76 = v238;
    }

    v242 = v76;
    v238 = 0;
  }

  v77 = v237;
  if (v237)
  {
    if (v241)
    {
      v78 = v32;
    }

    else
    {
      v78 = 0;
    }

    if (v78 == 1)
    {
      CFRelease(v241);
      v77 = v237;
    }

    v241 = v77;
    v237 = 0;
    value = 1;
  }

  videoMentorResetSavedListAndEnqueueMarker(a1);
  if (!v241)
  {
    v81 = allocator != 0;
    if (a10)
    {
      LOBYTE(v243.value) = 0;
      v80 = -1;
      goto LABEL_180;
    }

    v230 = v220;
    v231 = v218;
    v80 = -1;
    goto LABEL_238;
  }

  v79 = FigSampleCursorCompareInDecodeOrder_0(v241, v242);
  v80 = v79;
  v81 = allocator != 0;
  if (!a10)
  {
    v230 = v220;
    v231 = v218;
    if (v79 == 1)
    {
      v28 = 0;
      v29 = 0;
      v96 = Mutable;
      v97 = theArray;
LABEL_231:
      CursorForPresentationTimeStamp = 0;
      Mutable = v96;
      v58 = v97;
      v31 = MEMORY[0x1E695FF58];
      v30 = value;
      goto LABEL_232;
    }

LABEL_238:
    v187 = v80;
    v192 = v81;
    v189 = 0;
    v29 = 0;
    v28 = 0;
    v98 = a1 + 320;
    v99 = (a1 + 344);
    v193 = (a1 + 560);
    v199 = *(MEMORY[0x1E6960C98] + 16);
    v200 = *MEMORY[0x1E6960C98];
    v198 = *(MEMORY[0x1E6960C98] + 32);
    while (1)
    {
      *&v228.value = v220;
      v228.epoch = v218;
      FigSimpleMutexLock();
      v254 = *v98;
      v255 = *(v98 + 8);
      v191 = *(a1 + 332);
      v190 = *(a1 + 336);
      v229 = *v99;
      FigSimpleMutexUnlock();
      v100 = v242;
      v227 = start;
      v253 = 0;
      *&time1[0].value = v200;
      *&time1[0].epoch = v199;
      *&time1[1].timescale = v198;
      v248 = 0;
      v236 = 0;
      v252 = 0;
      v251 = 0;
      v250 = 0;
      v101 = *(a1 + 536);
      if (v101)
      {
        videoMentorGetCursorPTSRange(v101, time1);
      }

      time2 = *&time1[0].value;
      lhs = start;
      CMTimeRangeContainsTime(&time2, &lhs);
      v102 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v102)
      {
        CursorForPresentationTimeStamp = -12782;
        goto LABEL_493;
      }

      v207 = v100;
      v103 = v102(v100, &v253);
      if (v103)
      {
        CursorForPresentationTimeStamp = v103;
        goto LABEL_493;
      }

      v188 = 0;
      v205 = 0;
      v194 = 0;
      v195 = 0;
      v104 = 0;
      v105 = 3;
      for (i = 1; ; ++i)
      {
        v208 = v105;
        if (*(*(CMBaseObjectGetVTable() + 16) + 72))
        {
          v107 = v253;
          v108 = *(*(CMBaseObjectGetVTable() + 16) + 72);
          if (!v108)
          {
            CursorForPresentationTimeStamp = -12782;
            goto LABEL_493;
          }

          v109 = v108(v107, &v252 + 1, &v252, 0);
          if (v109)
          {
            CursorForPresentationTimeStamp = v109;
            goto LABEL_493;
          }

          v110 = HIBYTE(v252);
          v111 = HIBYTE(v252) - 66;
          if (v111 > 0xE || ((1 << v111) & 0x4081) == 0)
          {
            v161 = FigSignalErrorAtGM();
            v27 = v253;
            if (!v161)
            {
              counta = 0;
              if (Mutable)
              {
                goto LABEL_356;
              }

              goto LABEL_363;
            }

LABEL_501:
            CursorForPresentationTimeStamp = v161;
LABEL_81:
            v31 = MEMORY[0x1E695FF58];
            v30 = value;
LABEL_82:
            v58 = theArray;
            goto LABEL_83;
          }

          if (v208 != 3)
          {
            v135 = HIBYTE(v252) == 73;
            goto LABEL_308;
          }

          if (HIBYTE(v252) == 73)
          {
            if (v252)
            {
              if (v236)
              {
                v135 = 0;
                v134 = 1;
                goto LABEL_304;
              }

              v136 = v253;
              v137 = *(*(CMBaseObjectGetVTable() + 16) + 8);
              if (!v137)
              {
                CursorForPresentationTimeStamp = -12782;
                goto LABEL_493;
              }

              v138 = v137(v136, &v236);
              if (v138)
              {
                CursorForPresentationTimeStamp = v138;
                goto LABEL_493;
              }

              v135 = 0;
              v110 = HIBYTE(v252);
LABEL_308:
              v134 = 1;
            }

            else
            {
              v135 = 1;
              v134 = 3;
LABEL_304:
              v110 = 73;
            }
          }

          else
          {
            v135 = 0;
            v134 = 3;
          }

          v208 = v134;
          v250 = v110 == 66;
          goto LABEL_310;
        }

        v245 = 0;
        v112 = v253;
        v113 = *(*(CMBaseObjectGetVTable() + 16) + 64);
        if (!v113)
        {
          CursorForPresentationTimeStamp = -12782;
LABEL_483:
          v31 = MEMORY[0x1E695FF58];
          v30 = value;
          v58 = theArray;
          goto LABEL_484;
        }

        v114 = v113(v112, &v251 + 1, &v251, &v245, &v250);
        if (v114)
        {
          CursorForPresentationTimeStamp = v114;
          goto LABEL_483;
        }

        if (i == 1)
        {
          v104 = v245;
        }

        else if (v104 >= 1 && !v195 && v104 <= v245)
        {
          v104 = v245;
        }

        if (!HIBYTE(v251))
        {
          goto LABEL_289;
        }

        if (!videoMentorSyncFrameIsOpenGOP(v253))
        {
          if (HIBYTE(v251))
          {
            v135 = 1;
            goto LABEL_310;
          }

LABEL_289:
          v135 = 0;
          if (v251 && v104 >= 1)
          {
            if (!v236)
            {
              v133 = FigSampleCursorCopy(v253, &v236);
              if (v133)
              {
                CursorForPresentationTimeStamp = v133;
                videoMentorThreadReversePlayback_cold_1();
                goto LABEL_494;
              }
            }

            v135 = ++v194 >= v104;
            v195 = 1;
          }

          goto LABEL_310;
        }

        *&time2.start.value = v220;
        time2.start.epoch = v218;
        *&lhs.value = v220;
        lhs.epoch = v218;
        v115 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (!v115)
        {
          goto LABEL_460;
        }

        v116 = v115(v207, &time2);
        if (v116)
        {
LABEL_520:
          CursorForPresentationTimeStamp = v116;
          goto LABEL_494;
        }

        v117 = v253;
        v118 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (!v118)
        {
LABEL_460:
          CursorForPresentationTimeStamp = -12782;
          goto LABEL_494;
        }

        v116 = v118(v117, &lhs);
        if (v116)
        {
          goto LABEL_520;
        }

        rhs = time2.start;
        v256 = lhs;
        v119 = CMTimeCompare(&rhs, &v256);
        v135 = 0;
        if ((v119 & 0x80000000) == 0 && !v236)
        {
          rhs = lhs;
          v120 = v253;
          v121 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (!v121)
          {
            CursorForPresentationTimeStamp = -12782;
            goto LABEL_493;
          }

          v201 = v104;
          v122 = i;
          v123 = v121(v120, &v236);
          if (v123)
          {
            CursorForPresentationTimeStamp = v123;
            goto LABEL_493;
          }

          v196 = 0;
          while (1)
          {
            v256 = rhs;
            v243 = lhs;
            if (CMTimeCompare(&v256, &v243) > 0)
            {
              break;
            }

            v124 = v236;
            v125 = *(CMBaseObjectGetVTable() + 16);
            v126 = v125 ? v125 : 0;
            if (v207 && (v127 = *(CMBaseObjectGetVTable() + 16)) != 0)
            {
              v128 = v127;
            }

            else
            {
              v128 = 0;
            }

            if (v126 != v128 || !*(v126 + 32) || (*(v128 + 32))(v124, v207) != -1)
            {
              break;
            }

            v129 = v236;
            v130 = *(*(CMBaseObjectGetVTable() + 16) + 168);
            if (!v130)
            {
              goto LABEL_460;
            }

            v116 = v130(v129, 1, &v248);
            if (v116)
            {
              goto LABEL_520;
            }

            if (v248 != 1)
            {
              break;
            }

            v131 = v236;
            v132 = *(*(CMBaseObjectGetVTable() + 16) + 40);
            if (!v132)
            {
              goto LABEL_460;
            }

            v116 = v132(v131, &rhs);
            ++v196;
            if (v116)
            {
              goto LABEL_520;
            }
          }

          if (v196 <= 1 && v236)
          {
            CFRelease(v236);
            v236 = 0;
          }

          v135 = 1;
          i = v122;
          v104 = v201;
        }

LABEL_310:
        v139 = *(a1 + 528);
        if (v139)
        {
          v197 = v135;
          v202 = v104;
          count = i;
          v140 = v253;
          v141 = *(CMBaseObjectGetVTable() + 16);
          if (v141)
          {
            v142 = v141;
          }

          else
          {
            v142 = 0;
          }

          if (v140 && (v143 = *(CMBaseObjectGetVTable() + 16)) != 0)
          {
            v144 = v143;
          }

          else
          {
            v144 = 0;
          }

          if (v142 != v144 || !*(v142 + 32) || !(*(v144 + 32))(v139, v140))
          {
            v145 = *(a1 + 528);
            v146 = *(CMBaseObjectGetVTable() + 16);
            v147 = v146 ? v146 : 0;
            if (v207 && (v148 = *(CMBaseObjectGetVTable() + 16)) != 0)
            {
              v149 = v148;
            }

            else
            {
              v149 = 0;
            }

            if (v147 == v149 && *(v147 + 32) && (*(v149 + 32))(v145, v207))
            {
              v188 = 1;
            }
          }

          i = count;
          v104 = v202;
          v135 = v197;
        }

        if (v135)
        {
          goto LABEL_343;
        }

        v150 = v253;
        v151 = *(*(CMBaseObjectGetVTable() + 16) + 168);
        if (!v151)
        {
          CursorForPresentationTimeStamp = -12782;
          goto LABEL_478;
        }

        v152 = v151(v150, -1, &v248);
        if (v152)
        {
          CursorForPresentationTimeStamp = v152;
LABEL_478:
          v31 = MEMORY[0x1E695FF58];
          v30 = value;
          v58 = theArray;
LABEL_484:
          FigSignalErrorAtGM();
LABEL_495:
          v27 = v253;
          goto LABEL_83;
        }

        if (v248 != -1)
        {
          break;
        }

        v105 = v208;
        if (*(a1 + 116))
        {
          CursorForPresentationTimeStamp = -1;
          goto LABEL_494;
        }

        v153 = v205;
        if (!v250)
        {
          v153 = v205 + 1;
        }

        v205 = v153;
      }

      FigSignalErrorAtGM();
LABEL_343:
      counta = i;
      if (allocator)
      {
        if (allocator == 1)
        {
          v154 = *(a1 + 24);
          v155 = *(*(CMBaseObjectGetVTable() + 16) + 72);
          if (v155)
          {
            v155(v154);
          }

          videoMentorResetSavedListAndEnqueueMarker(a1);
          *(a1 + 544) = -2;
          v156 = *(a1 + 528);
          if (v156)
          {
            CFRelease(v156);
            *(a1 + 528) = 0;
          }

          v157 = *(a1 + 536);
          if (v157)
          {
            CFRelease(v157);
            *(a1 + 536) = 0;
          }

          *v193 = v220;
          *(a1 + 576) = v218;
        }

        goto LABEL_355;
      }

      if (!v188)
      {
        goto LABEL_355;
      }

      if (v253)
      {
        CFRelease(v253);
        v253 = 0;
      }

      v181 = *(a1 + 528);
      v182 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v182)
      {
        CursorForPresentationTimeStamp = -12782;
        goto LABEL_493;
      }

      v183 = v182(v181, &v253);
      if (v183)
      {
        CursorForPresentationTimeStamp = v183;
        goto LABEL_493;
      }

      v184 = v253;
      v185 = *(*(CMBaseObjectGetVTable() + 16) + 168);
      if (!v185)
      {
        CursorForPresentationTimeStamp = -12782;
        goto LABEL_493;
      }

      v186 = v185(v184, 1, &v248);
      if (v186)
      {
        CursorForPresentationTimeStamp = v186;
LABEL_493:
        FigSignalErrorAtGM();
LABEL_494:
        v31 = MEMORY[0x1E695FF58];
        v30 = value;
        v58 = theArray;
        goto LABEL_495;
      }

      if (v248 != 1 && v253)
      {
        CFRelease(v253);
        v253 = 0;
      }

LABEL_355:
      v27 = v253;
      if (Mutable)
      {
LABEL_356:
        if (CFArrayGetCount(Mutable) >= 1)
        {
          lhs = *a5;
          rhs = *a3;
          v209 = CFArrayGetCount(Mutable);
          if (v209 >= 1)
          {
            v158 = 0;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v158);
              allocatorb = v158;
              v160 = CFArrayGetValueAtIndex(theArray, v158);
              time1[0] = lhs;
              time2.start = rhs;
              v161 = videoMentorThreadResendCachedSampleBuffer(a1, v160, ValueAtIndex, 0, v192, 1, a12, &time1[0].value, &time2.start.value, MEMORY[0x1E6960C70], cf);
              if (v161)
              {
                goto LABEL_501;
              }

              v192 = 0;
              ++v158;
            }

            while (v209 != (allocatorb + 1));
            v192 = 0;
          }
        }

        CFRelease(Mutable);
      }

LABEL_363:
      if (theArray)
      {
        CFRelease(theArray);
      }

      if (!v236)
      {
        v163 = FigSampleCursorCopy(v27, &v235);
        if (!v163)
        {
          goto LABEL_369;
        }

        CursorForPresentationTimeStamp = v163;
        videoMentorThreadReversePlayback_cold_10();
        goto LABEL_499;
      }

      v162 = FigSampleCursorCopy(v236, &v235);
      if (v162)
      {
        CursorForPresentationTimeStamp = v162;
        videoMentorThreadReversePlayback_cold_7();
        goto LABEL_499;
      }

LABEL_369:
      v164 = FigSampleCursorStepInDecodeOrderAndReportStepsTaken(v235, -1, &v233);
      if (v164)
      {
        CursorForPresentationTimeStamp = v164;
        videoMentorThreadReversePlayback_cold_8();
        goto LABEL_499;
      }

      if (v233 != -1 && v235)
      {
        CFRelease(v235);
        v235 = 0;
      }

      if (!v28 || v189 < counta)
      {
        free(v28);
        v28 = malloc_type_calloc(counta, 0x20uLL, 0x10E004092DD265EuLL);
        if (v28)
        {
          goto LABEL_377;
        }

        videoMentorThreadReversePlayback_cold_9(time1);
        Mutable = 0;
        v58 = 0;
        CursorForPresentationTimeStamp = time1[0].value;
LABEL_500:
        v31 = MEMORY[0x1E695FF58];
        v30 = value;
        goto LABEL_83;
      }

      counta = v189;
LABEL_377:
      if (videoMentorSyncFrameIsOpenGOP(v27))
      {
        PresentationTimeStamp = FigSampleCursorGetPresentationTimeStamp(v27, &v228);
        if (PresentationTimeStamp)
        {
          CursorForPresentationTimeStamp = PresentationTimeStamp;
          Mutable = 0;
          v58 = 0;
          v29 = 0;
          goto LABEL_500;
        }
      }

      *v193 = v220;
      *(a1 + 576) = v218;
      time1[0].value = v254;
      *&time1[0].timescale = __PAIR64__(v191, v255);
      time1[0].epoch = v190;
      *&time2.start.value = *&a5->value;
      time2.start.epoch = a5->epoch;
      videoMentorThrottlingStateHandleDiscontinuity();
      LOBYTE(v227.value) = 0;
      memset(&time2, 0, 24);
      *theArraya = *MEMORY[0x1E6960CC0];
      *&lhs.value = *MEMORY[0x1E6960CC0];
      allocatorc = *(MEMORY[0x1E6960CC0] + 16);
      lhs.epoch = allocatorc;
      v166 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (!v166)
      {
        v29 = 0;
LABEL_497:
        CursorForPresentationTimeStamp = -12782;
LABEL_498:
        FigSignalErrorAtGM();
        goto LABEL_499;
      }

      v29 = 0;
      while (2)
      {
        v167 = v166(v27, &time2);
        if (v167)
        {
          CursorForPresentationTimeStamp = v167;
          goto LABEL_498;
        }

        v169 = v199;
        v168 = v200;
        v170 = v198;
        if ((time2.start.flags & 0x1D) != 1)
        {
          videoMentorThreadReversePlayback_cold_6(time1);
          goto LABEL_507;
        }

        if (v228.flags)
        {
          time1[0] = time2.start;
          rhs = v228;
          v172 = CMTimeCompare(time1, &rhs);
          if (v172 < 1)
          {
            v171 = v172 >= 0;
          }

          else
          {
            *&v228.value = v220;
            v228.epoch = v218;
            v171 = 1;
          }

          v169 = v199;
          v168 = v200;
          v170 = v198;
        }

        else
        {
          v171 = 1;
        }

        if (v236)
        {
          if (FigSampleCursorCompareInDecodeOrder_0(v27, v236))
          {
            goto LABEL_391;
          }

          v169 = v199;
          v168 = v200;
          v170 = v198;
          if (v236)
          {
            CFRelease(v236);
            v170 = v198;
            v169 = v199;
            v168 = v200;
            v236 = 0;
          }
        }

        *&time1[0].value = v168;
        *&time1[0].epoch = v169;
        *&time1[1].timescale = v170;
        CursorPTSRange = videoMentorGetCursorPTSRange(v27, time1);
        if (CursorPTSRange)
        {
          goto LABEL_490;
        }

        if ((a5->flags & 0x1D) == 1)
        {
          rhs = time1[1];
          *&v256.value = *theArraya;
          v256.epoch = allocatorc;
          if (CMTimeCompare(&rhs, &v256))
          {
            v256 = time2.start;
            v243 = time1[1];
            CMTimeAdd(&rhs, &v256, &v243);
            v256 = *a5;
            if (CMTimeCompare(&rhs, &v256) < 1)
            {
LABEL_391:
              v173 = 1;
              goto LABEL_401;
            }
          }

          else
          {
            rhs = time2.start;
            v256 = *a5;
            if (CMTimeCompare(&rhs, &v256) < 0)
            {
              goto LABEL_391;
            }
          }
        }

        rhs = start;
        v256 = time2.start;
        v173 = CMTimeCompare(&rhs, &v256) < 1;
LABEL_401:
        if (!v171)
        {
          LOBYTE(v227.value) = 1;
          goto LABEL_409;
        }

        if (!*(*(CMBaseObjectGetVTable() + 16) + 72))
        {
          DependencyInfo = FigSampleCursorGetDependencyInfo(v27, 0, 0, 0, &v227);
          if (DependencyInfo)
          {
            CursorForPresentationTimeStamp = DependencyInfo;
            videoMentorThreadReversePlayback_cold_5();
            goto LABEL_499;
          }

          goto LABEL_409;
        }

        LOBYTE(rhs.value) = 0;
        MPEG2FrameType = FigSampleCursorGetMPEG2FrameType(v27, &rhs, 0, 0);
        if (MPEG2FrameType)
        {
          CursorForPresentationTimeStamp = MPEG2FrameType;
          videoMentorThreadReversePlayback_cold_2();
LABEL_499:
          Mutable = 0;
          v58 = 0;
          goto LABEL_500;
        }

        v176 = LOBYTE(rhs.value) - 66;
        if (v176 > 0xE || ((1 << v176) & 0x4081) == 0)
        {
          videoMentorThreadReversePlayback_cold_3(time1);
LABEL_507:
          CursorForPresentationTimeStamp = time1[0].value;
          goto LABEL_499;
        }

        LOBYTE(v227.value) = LOBYTE(rhs.value) == 66;
LABEL_409:
        if (v173)
        {
          v178 = 0;
          goto LABEL_411;
        }

        if ((v191 & 0x1D) != 1 || (time1[0].value = v254, *&time1[0].timescale = __PAIR64__(v191, v255), time1[0].epoch = v190, *&rhs.value = *theArraya, rhs.epoch = allocatorc, CMTimeCompare(time1, &rhs) < 1))
        {
          v178 = 1;
          goto LABEL_419;
        }

        *&time1[0].value = v220;
        time1[0].epoch = v218;
        rhs.value = v254;
        rhs.timescale = v255;
        rhs.flags = v191;
        rhs.epoch = v190;
        v256 = v229;
        videoMentorThrottleDroppableFrames(a1 + 584, v27, &rhs, &v256);
        if (videoMentorPopCursorFromSelectedCursors(a1 + 584, v27, time1))
        {
          rhs = time1[0];
          v256 = time2.start;
          CMTimeSubtract(&lhs, &rhs, &v256);
          v178 = 1;
        }

        else
        {
          v178 = 0;
          ++*(a1 + 952);
        }

LABEL_411:
        if (v178 || !LOBYTE(v227.value))
        {
LABEL_419:
          time1[0] = *a5;
          v179 = v28 + 32 * v29;
          rhs = *a3;
          v256 = lhs;
          CursorPTSRange = videoMentorThreadCreateSampleBuffer(a1, v27, v178 ^ 1u, a12, &time1[0].value, &rhs.value, &v256.value, 1, cf, v179);
          if (CursorPTSRange)
          {
            goto LABEL_490;
          }

          *(v179 + 28) = v227.value;
          *(v179 + 29) = v178;
          *(v179 + 30) = 0;
          *(v179 + 24) = 0;
          ++v29;
          if (v178)
          {
            *v193 = *&time2.start.value;
            *(a1 + 576) = time2.start.epoch;
          }
        }

        v180 = FigSampleCursorStepInDecodeOrderAndReportStepsTaken(v27, 1, &v233);
        if (v180)
        {
          CursorForPresentationTimeStamp = v180;
          videoMentorThreadReversePlayback_cold_4();
          goto LABEL_499;
        }

        if (v233 != 1 || FigSampleCursorCompareInDecodeOrder_0(v27, v242) == 1)
        {
          goto LABEL_430;
        }

        if (v29 != counta)
        {
          LOBYTE(v227.value) = 0;
          memset(&time2, 0, 24);
          *&lhs.value = *theArraya;
          lhs.epoch = allocatorc;
          v166 = *(*(CMBaseObjectGetVTable() + 16) + 40);
          if (!v166)
          {
            goto LABEL_497;
          }

          continue;
        }

        break;
      }

      FigSignalErrorAtGM();
      v29 = counta;
LABEL_430:
      if ((a7 & 0x80000000) == 0)
      {
        videoMentorThreadReduceReversedGroupToSatisfyPassLimit(v28, v29, a6, a7 + 1, v192);
      }

      CursorPTSRange = videoMentorThreadSendReversedGroup(a1, v28, v29, a6, v192, a12, cf, a13, &v230);
      if (CursorPTSRange)
      {
LABEL_490:
        CursorForPresentationTimeStamp = CursorPTSRange;
        goto LABEL_499;
      }

      if (v27)
      {
        CFRelease(v27);
      }

      if (v236)
      {
        CFRelease(v236);
        v236 = 0;
      }

      videoMentorThreadReleaseSampleBuffersInReversalArray(v28, v29);
      if (v242)
      {
        CFRelease(v242);
      }

      v97 = v235;
      v242 = v235;
      v235 = 0;
      if (!v242)
      {
        v96 = 0;
        goto LABEL_231;
      }

      if (v241)
      {
        v187 = FigSampleCursorCompareInDecodeOrder_0(v241, v97);
      }

      allocator = 0;
      theArray = 0;
      Mutable = 0;
      v192 = 0;
      v96 = 0;
      v97 = 0;
      v189 = counta;
      v98 = a1 + 320;
      v99 = (a1 + 344);
      if (v187 == 1)
      {
        goto LABEL_231;
      }
    }
  }

  LOBYTE(v243.value) = 0;
  if (v79 == 1)
  {
LABEL_175:
    CursorForPresentationTimeStamp = 0;
    v31 = MEMORY[0x1E695FF58];
LABEL_176:
    v30 = value;
    v58 = theArray;
    goto LABEL_177;
  }

LABEL_180:
  v215 = *(MEMORY[0x1E6960CC0] + 12);
  v221 = *(MEMORY[0x1E6960CC0] + 16);
  v219 = *MEMORY[0x1E6960C70];
  v217 = *(MEMORY[0x1E6960C70] + 8);
  while (2)
  {
    LOBYTE(v230) = 0;
    memset(time1, 0, 24);
    memset(&time2, 0, 24);
    v256.value = v219;
    v256.timescale = v217;
    v82 = v242;
    v83 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (!v83)
    {
      CursorForPresentationTimeStamp = -12782;
      goto LABEL_462;
    }

    v84 = v83(v82, &v234);
    if (v84)
    {
      CursorForPresentationTimeStamp = v84;
      goto LABEL_462;
    }

    if ((v234.flags & 0x1D) != 1)
    {
      goto LABEL_458;
    }

    v85 = v242;
    v86 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v86)
    {
      v87 = v86(v85, time1);
      if (v87)
      {
        CursorForPresentationTimeStamp = v87;
        if (v87 != -12782)
        {
          goto LABEL_462;
        }

        goto LABEL_187;
      }

      if ((time1[0].flags & 0x1D) != 1)
      {
LABEL_458:
        v91 = FigSignalErrorAtGM();
LABEL_459:
        CursorForPresentationTimeStamp = v91;
        goto LABEL_463;
      }
    }

    else
    {
LABEL_187:
      *&time1[0].value = *MEMORY[0x1E6960CC0];
      time1[0].epoch = v221;
    }

    lhs = v234;
    rhs = time1[0];
    CMTimeAdd(&time2.start, &lhs, &rhs);
    if (v241 && (lhs = *a5, rhs = time2.start, CMTimeCompare(&lhs, &rhs) > 0))
    {
      LOBYTE(v88) = 0;
    }

    else
    {
      lhs = v234;
      rhs = start;
      v88 = CMTimeCompare(&lhs, &rhs) >> 31;
    }

    LOBYTE(v230) = v88;
    FigSimpleMutexLock();
    v256.value = *(a1 + 272);
    v256.timescale = *(a1 + 280);
    v89 = *(a1 + 284);
    v90 = *(a1 + 288);
    FigSimpleMutexUnlock();
    if ((v89 & 0x1D) != 1)
    {
      v256.value = *MEMORY[0x1E6960CC0];
      v256.timescale = *(MEMORY[0x1E6960CC0] + 8);
      v89 = v215;
      v90 = v221;
    }

    lhs = v234;
    rhs.value = v256.value;
    rhs.timescale = v256.timescale;
    rhs.flags = v89;
    rhs.epoch = v90;
    v91 = videoMentorSimulateIFramesOnly(v242, &lhs, &rhs, (a1 + 560), -1, &v230, &v243);
    if (v91)
    {
      goto LABEL_459;
    }

    if (v230)
    {
      lhs = *a5;
      rhs = *a3;
      v91 = videoMentorThreadGenerateAndEnqueueFrame(a1, v242, 0, 0, v81, LOBYTE(v243.value), 1, 1, a12, &lhs, &rhs, MEMORY[0x1E6960C70], cf);
      v81 = 0;
      if (v91)
      {
        goto LABEL_459;
      }
    }

    v92 = FigSampleCursorStepInDecodeOrderAndReportStepsTaken(v242, -1, &v233);
    if (v92)
    {
      CursorForPresentationTimeStamp = v92;
LABEL_462:
      FigSignalErrorAtGM();
LABEL_463:
      v31 = MEMORY[0x1E695FF58];
      v30 = value;
      v58 = theArray;
      goto LABEL_475;
    }

    if (v233 == -1)
    {
      if (v241)
      {
        v80 = FigSampleCursorCompareInDecodeOrder_0(v241, v242);
      }

      if (v80 == 1)
      {
        goto LABEL_175;
      }

      continue;
    }

    break;
  }

  CursorForPresentationTimeStamp = 0;
  v31 = MEMORY[0x1E695FF58];
  if (!v80)
  {
    goto LABEL_176;
  }

  v30 = value;
  v58 = theArray;
  if (v241)
  {
    CursorForPresentationTimeStamp = FigSignalErrorAtGM();
  }

LABEL_177:
  v28 = 0;
  v29 = 0;
LABEL_232:
  if (a15 && !CursorForPresentationTimeStamp)
  {
    CursorForPresentationTimeStamp = audioMentorEnqueueBufferConsumedMarker(a1, a15);
    v224 = 0;
  }

  videoMentorEnqueueDrainAfterDecodingMarker(a1);
  v27 = 0;
  ++*(a1 + 936);
LABEL_83:
  if (*(a1 + 492))
  {
    videoMentorPostCollectorCoherenceConduitNotification(a1);
    *(a1 + 492) = 0;
  }

  if (a13 && (CursorForPresentationTimeStamp + 1) <= 1)
  {
    videoMentorPostMinAndMaxUpcomingOutputPTS(a1, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70]);
  }

  videoMentorThreadFinishPreroll(a1, 0, cf);
  if (*v31 == 1)
  {
    kdebug_trace();
  }

  if (!*a1)
  {
    v59 = &kMentorNotification_StoppingDueToCompletion;
    if (CursorForPresentationTimeStamp)
    {
      v59 = &kMentorNotification_StoppingDueToError;
    }

    if (CursorForPresentationTimeStamp == -1)
    {
      v60 = 0;
    }

    else
    {
      v60 = CursorForPresentationTimeStamp;
    }

    if (CursorForPresentationTimeStamp == -1)
    {
      v59 = &kMentorNotification_ResettingDueToModeSwitch;
    }

    v61 = FigMentorNotificationPayloadCreate(*v59, cf, v60, *(a1 + 520), v224, 0);
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if (v61)
    {
      CFRelease(v61);
    }
  }

  if (v242)
  {
    CFRelease(v242);
    v242 = 0;
  }

  if (v30 && v241)
  {
    CFRelease(v241);
    v241 = 0;
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (v240)
  {
    CFRelease(v240);
    v240 = 0;
  }

  if (v239)
  {
    CFRelease(v239);
    v239 = 0;
  }

  if (v237)
  {
    CFRelease(v237);
    v237 = 0;
  }

  if (v236)
  {
    CFRelease(v236);
    v236 = 0;
  }

  if (v235)
  {
    CFRelease(v235);
    v235 = 0;
  }

  videoMentorThreadReleaseSampleBuffersInReversalArray(v28, v29);
  videoMentorThrottlingStateFree(a1 + 584);
  free(v28);
  v62 = *(a1 + 512);
  if (v62)
  {
    CFRelease(v62);
    *(a1 + 512) = 0;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v58)
  {
    CFRelease(v58);
  }
}

uint64_t FigSampleCursorStepInPresentationOrderAndReportStepsTaken(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 176);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t videoMentorGetCursorPTSRange(const void *a1, _OWORD *a2)
{
  v14 = 0;
  v2 = MEMORY[0x1E6960C98];
  v3 = *(MEMORY[0x1E6960C98] + 16);
  *a2 = *MEMORY[0x1E6960C98];
  a2[1] = v3;
  a2[2] = *(v2 + 32);
  if (a1)
  {
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 232);
    if (v6 && !v6(a1, a2))
    {
      PresentationTimeRange = 0;
    }

    else
    {
      FigBaseObject = FigSampleCursorGetFigBaseObject(a1);
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v8 || (!v8(FigBaseObject, @"PresentationTimeRange", *MEMORY[0x1E695E480], &v14) ? (v9 = v14 == 0) : (v9 = 1), v9))
      {
        PresentationTimeRange = FigSampleCursorUtilityGetPresentationTimeRange(a1, a2);
      }

      else
      {
        CMTimeRangeMakeFromDictionary(&v13, v14);
        PresentationTimeRange = 0;
        v12 = *&v13.start.epoch;
        *a2 = *&v13.start.value;
        a2[1] = v12;
        a2[2] = *&v13.duration.timescale;
      }
    }
  }

  else
  {
    videoMentorGetCursorPTSRange_cold_1(&v13);
    PresentationTimeRange = LODWORD(v13.start.value);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return PresentationTimeRange;
}

uint64_t videoMentorEnqueueTimestampIntervalMarker(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetCMTime();
  FigCFDictionarySetCMTime();
  v3 = audioMentorEnqueueBufferConsumedMarker(a1, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v3;
}

void videoMentorResetSavedListAndEnqueueMarker(uint64_t a1)
{
  v1 = 0;
  if (*(a1 + 552))
  {
    videoMentorResetSavedListAndEnqueueMarker_cold_1(&v1, a1, (a1 + 552));
  }
}

void videoMentorUpdateDecoderState(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a1 + 544);
  v6 = v5;
  if (*(a1 + 548) && !*(a2 + 162))
  {
    *(a1 + 548) = 0;
    v6 = 0x7FFFFFFF;
    if (a3)
    {
LABEL_4:
      v7 = *(a2 + 16);
      if (v7)
      {
        v8 = CFRetain(v7);
      }

      else
      {
        v8 = 0;
      }

      if (*(a2 + 158))
      {
LABEL_13:
        v6 = 0x7FFFFFFF;
        goto LABEL_18;
      }

      if (*(a2 + 159))
      {
        v6 += v6 >> 31;
      }

      else
      {
        if (!*(a2 + 160))
        {
          if (!*(a2 + 156))
          {
            if (*(a2 + 157) && *(a1 + 544) < *(a2 + 152))
            {
              v6 = *(a2 + 152);
            }

            goto LABEL_18;
          }

          goto LABEL_13;
        }

        *(a1 + 548) = 1;
      }

LABEL_18:
      *(a1 + 544) = v6;
      if (v8)
      {
        v10 = *(a1 + 528);
        if (v10)
        {
          CFRelease(v10);
        }

        *(a1 + 528) = v8;
      }

      return;
    }
  }

  else if (a3)
  {
    goto LABEL_4;
  }

  if (!*(a2 + 161))
  {
    v9 = *(a2 + 152);
    if (v5 >= v9)
    {
      v6 = v9 - 1;
    }
  }

  *(a1 + 544) = v6;
}

void videoMentorEnqueueDrainAfterDecodingMarker(uint64_t a1)
{
  v5 = 0;
  if (!CMSampleBufferCreate(*MEMORY[0x1E695E480], 0, 1u, 0, 0, 0, 0, 0, 0, 0, 0, &v5))
  {
    CMSetAttachment(v5, *MEMORY[0x1E6960490], *MEMORY[0x1E695E4D0], 1u);
    v2 = *(a1 + 24);
    v3 = v5;
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v4)
    {
      v4(v2, v3);
    }

    CFRelease(v5);
  }
}

uint64_t videoMentorFrameNodeCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    videoMentorFrameNodeCreate_cold_2(&v27);
    return v27;
  }

  v10 = Instance;
  v11 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  *(v10 + 24) = Mutable;
  if (!Mutable)
  {
    v24 = 1641;
LABEL_21:
    videoMentorFrameNodeCreate_cold_1(v24, &v27);
    v22 = v27;
    goto LABEL_14;
  }

  v13 = CFArrayCreateMutable(v11, 0, MEMORY[0x1E695E9C0]);
  *(v10 + 32) = v13;
  if (!v13)
  {
    v24 = 1644;
    goto LABEL_21;
  }

  v14 = CFArrayCreateMutable(v11, 0, MEMORY[0x1E695E9C0]);
  *(v10 + 40) = v14;
  if (!v14)
  {
    v24 = 1647;
    goto LABEL_21;
  }

  v15 = CFArrayCreateMutable(v11, 0, MEMORY[0x1E695E9C0]);
  *(v10 + 48) = v15;
  if (!v15)
  {
    v24 = 1650;
    goto LABEL_21;
  }

  v16 = MEMORY[0x1E6960C70];
  v17 = *MEMORY[0x1E6960C70];
  *(v10 + 104) = *MEMORY[0x1E6960C70];
  v18 = *(v16 + 16);
  *(v10 + 120) = v18;
  *(v10 + 128) = v17;
  *(v10 + 144) = v18;
  if (a3 != -1)
  {
    v19 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v19)
    {
      v20 = v19(a3, v10 + 16);
      if (v20)
      {
LABEL_22:
        v22 = v20;
        goto LABEL_14;
      }

      v21 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v21)
      {
        v20 = v21(a3, v10 + 104);
        if (!v20)
        {
          v25 = *(v10 + 104);
          v26 = *(v10 + 120);
          videoMentorRemapTime(a1, a4, 0, &v25, &v27);
          *(v10 + 128) = v27;
          *(v10 + 144) = v28;
          goto LABEL_12;
        }

        goto LABEL_22;
      }
    }

    v22 = 4294954514;
LABEL_14:
    CFRelease(v10);
    return v22;
  }

LABEL_12:
  v22 = 0;
  *(v10 + 64) = 1;
  *a5 = v10;
  return v22;
}

uint64_t videoMentorRemapTime@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = *a4;
  *(a5 + 16) = *(a4 + 2);
  FigSimpleMutexLock();
  v10 = *(a1 + 64);
  if (v10)
  {
    v12 = *a4;
    v13 = *(a4 + 2);
    v10(*(a1 + 72), a2, a3, a5, &v12);
  }

  return FigSimpleMutexUnlock();
}

__CFString *videoMentorFrameNodeCopyDescription(void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"VideoMentorFrameNode: %p, sampleCursor: %@\n", a1, a1[2]);
  return Mutable;
}

BOOL videoMentorFrameNodeIsEqual(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v2 == v3)
  {
    return 1;
  }

  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 0;
  }

  VTable = CMBaseObjectGetVTable();
  v7 = *(VTable + 16) ? *(VTable + 16) : 0;
  v8 = *(CMBaseObjectGetVTable() + 16);
  v9 = v8 ? v8 : 0;
  return v7 != v9 || !*(v7 + 32) || (*(v9 + 32))(v2, v3) == 0;
}

CMTimeValue videoMentorFrameNodeHash(uint64_t a1)
{
  v2 = *(a1 + 104);
  CMTimeConvertScale(&v3, &v2, 1000000000, kCMTimeRoundingMethod_RoundTowardPositiveInfinity);
  return v3.value;
}

uint64_t videoMentorCopySyncCursorForCursor(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v32 = 0;
  v31 = 0;
  if (a4)
  {
    *a4 = 1;
  }

  v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v8)
  {
LABEL_41:
    value_low = 4294954514;
    goto LABEL_42;
  }

  v9 = v8(a2, &v32);
  if (v9)
  {
LABEL_46:
    value_low = v9;
  }

  else
  {
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 64) != 0;
    if (v10 != (*(*(CMBaseObjectGetVTable() + 16) + 72) != 0))
    {
      v11 = 0;
      value = -1;
      v13 = MEMORY[0x1E6960C70];
      while (1)
      {
        v30 = 0;
        if (*(a1 + 116))
        {
          value_low = 0xFFFFFFFFLL;
          goto LABEL_42;
        }

        if (*(*(CMBaseObjectGetVTable() + 16) + 64))
        {
          LODWORD(v29.value) = 0;
          v14 = v32;
          v15 = *(*(CMBaseObjectGetVTable() + 16) + 64);
          if (!v15)
          {
            goto LABEL_41;
          }

          v9 = v15(v14, &v31 + 1, &v31, &v29, 0);
          if (v9)
          {
            goto LABEL_46;
          }

          if (value < 0)
          {
            value = v29.value;
          }

          v16 = 1;
          if (!HIBYTE(v31))
          {
            goto LABEL_26;
          }
        }

        else
        {
          LOBYTE(v29.value) = 0;
          LOBYTE(v28.value) = 0;
          LOBYTE(time1.value) = 0;
          v17 = v32;
          v18 = *(*(CMBaseObjectGetVTable() + 16) + 72);
          if (!v18)
          {
            goto LABEL_41;
          }

          v9 = v18(v17, &v29, &v28, &time1);
          if (v9)
          {
            goto LABEL_46;
          }

          if (LOBYTE(v28.value))
          {
            v16 = LOBYTE(v29.value) != 73;
          }

          else
          {
            v16 = 1;
          }

          HIBYTE(v31) = LOBYTE(v29.value) == 73;
          if (LOBYTE(v29.value) != 73)
          {
            goto LABEL_26;
          }
        }

        if (!videoMentorSyncFrameIsOpenGOP(v32))
        {
          if (a4)
          {
            *a4 = 1;
          }

LABEL_26:
          if (v16)
          {
            goto LABEL_33;
          }

          goto LABEL_27;
        }

        if (a4)
        {
          *a4 = 0;
        }

LABEL_27:
        v29 = *v13;
        v28 = v29;
        v19 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (!v19)
        {
          goto LABEL_41;
        }

        v9 = v19(a2, &v29);
        if (v9)
        {
          goto LABEL_46;
        }

        v20 = v32;
        v21 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (!v21)
        {
          goto LABEL_41;
        }

        v9 = v21(v20, &v28);
        if (v9)
        {
          goto LABEL_46;
        }

        time1 = v29;
        v26 = v28;
        if (CMTimeCompare(&time1, &v26) < 0)
        {
          v31 = 1;
        }

LABEL_33:
        if (!v31 || value < 1 || (++v11, v11 < value))
        {
          if (!HIBYTE(v31))
          {
            v22 = v32;
            v23 = *(*(CMBaseObjectGetVTable() + 16) + 168);
            if (!v23)
            {
              goto LABEL_41;
            }

            v9 = v23(v22, -1, &v30);
            if (v9)
            {
              goto LABEL_46;
            }

            if (v30 == -1)
            {
              continue;
            }
          }
        }

        value_low = 0;
        *a3 = v32;
        return value_low;
      }
    }

    videoMentorCopySyncCursorForCursor_cold_1(&v29);
    value_low = LODWORD(v29.value);
  }

LABEL_42:
  if (v32)
  {
    CFRelease(v32);
  }

  return value_low;
}

uint64_t videoMentorDependencyStateFillRefreshGroupsUntil(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, CMTime *a6, CMTime *a7, CMTime *a8, int a9, void *a10)
{
  v97 = *MEMORY[0x1E69E9840];
  v86 = **&MEMORY[0x1E6960C70];
  v84 = v86;
  cf = 0;
  timescale = *(MEMORY[0x1E6960C70] + 8);
  value = *MEMORY[0x1E6960C70];
  v18 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v18)
  {
    goto LABEL_16;
  }

  v19 = v18(a3, &v86);
  if (!v19)
  {
    v20 = a10;
    *a10 = 0;
    if (*(a2 + 32))
    {
      return 0;
    }

    if (a5 && (a8->flags & 0x1D) == 1)
    {
      if ((a6->flags & 0x1D) == 1)
      {
        time1 = *a6;
        time2 = *a8;
        CMTimeMaximum(&lhs, &time1, &time2);
        *a6 = lhs;
      }

      else
      {
        v22 = *&a8->value;
        a6->epoch = a8->epoch;
        *&a6->value = v22;
      }
    }

    v23 = *(a2 + 24);
    v24 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v24)
    {
      v19 = v24(v23, &v84);
      if (!v19)
      {
        lhs = v86;
        time1 = v84;
        if ((CMTimeCompare(&lhs, &time1) & 0x80000000) == 0)
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
LABEL_14:
          if (v26 <= a9)
          {
            v77 = v27;
            v78 = *MEMORY[0x1E695E480];
            v74 = *MEMORY[0x1E695E4D0];
            v75 = a7;
            v76 = v20;
            while (!*(a2 + 33) && !*(a2 + 32))
            {
              if (*(a1 + 116))
              {
                v21 = 0xFFFFFFFFLL;
                goto LABEL_18;
              }

              v79 = v26;
              v32 = *(a2 + 24);
              v33 = *(*(CMBaseObjectGetVTable() + 16) + 40);
              if (!v33)
              {
                goto LABEL_17;
              }

              v34 = v33(v32, &v84);
              if (v34)
              {
                goto LABEL_143;
              }

              time1 = v84;
              videoMentorRemapTime(a1, a4, 0, &time1.value, &lhs);
              value = lhs.value;
              timescale = lhs.timescale;
              if ((lhs.flags & 0x1D) != 1)
              {
                break;
              }

              flags = lhs.flags;
              epoch = lhs.epoch;
              lhs = v84;
              time1 = *(a2 + 104);
              if ((CMTimeCompare(&lhs, &time1) & 0x80000000) == 0)
              {
                *(a2 + 32) = 1;
                break;
              }

              if ((a6->flags & 0x1D) != 1 || (lhs = *a6, time1 = **&MEMORY[0x1E6960CC0], !CMTimeCompare(&lhs, &time1)) || (v37 = *(a2 + 48), (v37 & 0x1D) != 1))
              {
                *(a2 + 36) = value;
                *(a2 + 44) = timescale;
                *(a2 + 48) = flags;
                LOBYTE(v37) = flags;
                *(a2 + 52) = epoch;
              }

              if ((v37 & 0x1D) != 1)
              {
                break;
              }

              if (cf)
              {
                CFRelease(cf);
                cf = 0;
              }

              lhs = *(a2 + 36);
              v34 = videoMentorRefreshGroupCreate(v78, &lhs.value, &cf);
              if (v34)
              {
LABEL_143:
                v21 = v34;
                goto LABEL_18;
              }

              FigBaseObject = FigSampleCursorGetFigBaseObject(*(a2 + 24));
              v39 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (v39)
              {
                v39(FigBaseObject, @"EagerlyFetchSampleDependencyAttributes", v74);
              }

              lhs.value = value;
              lhs.timescale = timescale;
              lhs.flags = flags;
              lhs.epoch = epoch;
              time1 = *(a2 + 36);
              if (CMTimeCompare(&lhs, &time1) <= 0)
              {
                v42 = v25;
                while (1)
                {
                  time2.value = 0;
                  type.value = 0;
                  if (*(a1 + 116))
                  {
                    v21 = 0xFFFFFFFFLL;
                    goto LABEL_120;
                  }

                  v72 = flags;
                  v73 = epoch;
                  NodeForCursor = videoMentorDependencyStateGetNodeForCursor(a1, a2, *(a2 + 24), a4, 1, &type);
                  if (NodeForCursor)
                  {
                    break;
                  }

                  v44 = type.value;
                  videoMentorRefreshGroupAddNode(cf, type.value);
                  v25 = *(v44 + 16);
                  if (v42)
                  {
                    v45 = *(CMBaseObjectGetVTable() + 16);
                    if (v45)
                    {
                      v46 = v45;
                    }

                    else
                    {
                      v46 = 0;
                    }

                    if (v25 && (v47 = *(CMBaseObjectGetVTable() + 16)) != 0)
                    {
                      v48 = v47;
                    }

                    else
                    {
                      v48 = 0;
                    }

                    if (v46 == v48 && *(v46 + 32) && (*(v48 + 32))(v42, v25) == -1)
                    {
                      v25 = *(type.value + 16);
                      if (v25)
                      {
                        CFRetain(*(type.value + 16));
                      }

                      CFRelease(v42);
                    }

                    else
                    {
                      v25 = v42;
                    }
                  }

                  else if (v25)
                  {
                    CFRetain(v25);
                  }

                  v49 = *(type.value + 16);
                  v50 = *(CMBaseObjectGetVTable() + 16);
                  if (v50)
                  {
                    v51 = v50;
                  }

                  else
                  {
                    v51 = 0;
                  }

                  if (a3 && (v52 = *(CMBaseObjectGetVTable() + 16)) != 0)
                  {
                    v53 = v52;
                  }

                  else
                  {
                    v53 = 0;
                  }

                  if (v51 != v53 || !*(v51 + 32) || !(*(v53 + 32))(v49, a3))
                  {
                    v77 = 1;
                  }

                  v54 = *(a2 + 24);
                  v55 = *(*(CMBaseObjectGetVTable() + 16) + 176);
                  if (!v55)
                  {
LABEL_124:
                    v21 = 4294954514;
LABEL_125:
                    v42 = v25;
                    goto LABEL_120;
                  }

                  v56 = v55(v54, 1, &time2);
                  if (v56)
                  {
                    goto LABEL_146;
                  }

                  if (time2.value != 1)
                  {
                    goto LABEL_117;
                  }

                  v57 = *(a2 + 24);
                  v58 = *(*(CMBaseObjectGetVTable() + 16) + 40);
                  if (!v58)
                  {
                    goto LABEL_124;
                  }

                  v56 = v58(v57, &v84);
                  if (v56)
                  {
LABEL_146:
                    v21 = v56;
                    goto LABEL_125;
                  }

                  time1 = v84;
                  videoMentorRemapTime(a1, a4, 0, &time1.value, &lhs);
                  value = lhs.value;
                  flags = lhs.flags;
                  timescale = lhs.timescale;
                  epoch = lhs.epoch;
                  lhs = v84;
                  time1 = *(a2 + 104);
                  if ((CMTimeCompare(&lhs, &time1) & 0x80000000) == 0)
                  {
                    v72 = flags;
                    v73 = epoch;
LABEL_117:
                    *(a2 + 32) = 1;
                    epoch = v73;
                    flags = v72;
                    goto LABEL_47;
                  }

                  lhs.value = value;
                  lhs.timescale = timescale;
                  lhs.flags = flags;
                  lhs.epoch = epoch;
                  time1 = *(a2 + 36);
                  v42 = v25;
                  if (CMTimeCompare(&lhs, &time1) >= 1)
                  {
                    goto LABEL_47;
                  }
                }

                v21 = NodeForCursor;
LABEL_120:
                v25 = v42;
                goto LABEL_18;
              }

LABEL_47:
              v40 = cf;
              Count = CFArrayGetCount(*(cf + 5));
              if (Count < 1)
              {
                v20 = v76;
                v26 = v79;
              }

              else
              {
                CFArrayAppendValue(*(a2 + 16), v40);
                v26 = v79;
                if (v77)
                {
                  v26 = v79 + 1;
                }

                v20 = v76;
              }

              v82 = *&a6->value;
              v83 = a6->epoch;
              v81 = *v75;
              time1 = *a6;
              if (!*(a2 + 33) && (*(a2 + 48) & 1) != 0 && (BYTE12(v82) & 1) != 0)
              {
                v80 = v26;
                if ((v81.flags & 0x1D) == 1)
                {
                  lhs = *a6;
                  time2 = *v75;
                  CMTimeAdd(&time1, &lhs, &time2);
                }

                else
                {
                  v81 = *a6;
                }

                v59 = &v82;
                if (Count < 1)
                {
                  v59 = &v81;
                }

                lhs = *v59;
                if ((flags & 0x1D) == 1 && (time2.value = value, time2.timescale = timescale, time2.flags = flags, time2.epoch = epoch, type = *(a2 + 128), CMTimeCompare(&time2, &type) < 0))
                {
                  type.value = value;
                  type.timescale = timescale;
                  type.flags = flags;
                  type.epoch = epoch;
                }

                else
                {
                  type = *(a2 + 128);
                }

                rhs = *(a2 + 36);
                CMTimeSubtract(&time2, &type, &rhs);
                v95 = time2.value;
                v60 = time2.flags;
                v96 = time2.timescale;
                v61 = time2.epoch;
                if ((time2.flags & 0x1D) != 1)
                {
                  goto LABEL_111;
                }

                time2.value = v95;
                time2.timescale = v96;
                type = time1;
                if (CMTimeCompare(&time2, &type) < 1)
                {
                  goto LABEL_111;
                }

                time2.value = v95;
                time2.timescale = v96;
                time2.flags = v60;
                time2.epoch = v61;
                Seconds = CMTimeGetSeconds(&time2);
                time2 = v81;
                v63 = Seconds / CMTimeGetSeconds(&time2);
                if (v63 > 2147483650.0)
                {
                  v63 = 2147483650.0;
                }

                if (v63 - floor(v63) < 0.01)
                {
                  v63 = v63 + -1.0;
                }

                if (v63 > 1.0)
                {
                  memset(&time2, 0, sizeof(time2));
                  rhs = v81;
                  CMTimeMultiply(&type, &rhs, v63);
                  rhs = *(a2 + 36);
                  CMTimeAdd(&time2, &rhs, &type);
                  rhs = time2;
                  v87 = v81;
                  CMTimeAdd(&type, &rhs, &v87);
                  *(a2 + 36) = *&type.value;
                  v64 = type.epoch;
                }

                else
                {
LABEL_111:
                  type = *(a2 + 36);
                  rhs = lhs;
                  CMTimeAdd(&time2, &type, &rhs);
                  *(a2 + 36) = *&time2.value;
                  v64 = time2.epoch;
                }

                *(a2 + 52) = v64;
                *&time2.value = *(a2 + 36);
                time2.epoch = v64;
                type = *(a2 + 128);
                v65 = CMTimeCompare(&time2, &type);
                v26 = v80;
                if ((v65 & 0x80000000) == 0)
                {
                  *(a2 + 33) = 1;
                }
              }

              if (v26 > a9)
              {
                break;
              }
            }
          }

          v21 = 0;
          *v20 = v25;
          goto LABEL_25;
        }

        type.value = 0;
        v19 = videoMentorDependencyStateGetNodeForCursor(a1, a2, a3, a4, 1, &type);
        if (!v19)
        {
          v66 = type.value;
          ValueAtIndex = *(type.value + 56);
          if (ValueAtIndex)
          {
            v25 = 0;
LABEL_142:
            v71 = CFArrayGetCount(*(a2 + 16));
            v98.location = 0;
            v98.length = v71;
            v26 = v71 + ~CFArrayGetFirstIndexOfValue(*(a2 + 16), v98, ValueAtIndex);
            v27 = 1;
            goto LABEL_14;
          }

          memset(&lhs, 0, sizeof(lhs));
          time1 = v86;
          videoMentorRemapTime(a1, a4, 0, &time1.value, &lhs);
          v68 = CFArrayGetCount(*(a2 + 16));
          if (v68 < 1)
          {
            v69 = 0;
            ValueAtIndex = 0;
          }

          else
          {
            v69 = 0;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 16), v69);
              time1 = lhs;
              time2 = *(ValueAtIndex + 16);
              if (CMTimeCompare(&time1, &time2) < 1)
              {
                break;
              }

              if (v68 == ++v69)
              {
                v69 = v68;
                goto LABEL_136;
              }
            }
          }

          if (v69 != v68 && !ValueAtIndex[56])
          {
LABEL_139:
            videoMentorRefreshGroupAddNode(ValueAtIndex, v66);
            v25 = *(type.value + 16);
            if (v25)
            {
              CFRetain(*(type.value + 16));
            }

            v20 = a10;
            goto LABEL_142;
          }

LABEL_136:
          v70 = *MEMORY[0x1E695E480];
          time1 = lhs;
          v19 = videoMentorRefreshGroupCreate(v70, &time1.value, &cf);
          if (!v19)
          {
            ValueAtIndex = cf;
            CFArrayInsertValueAtIndex(*(a2 + 16), v69, cf);
            if (ValueAtIndex)
            {
              CFRelease(ValueAtIndex);
              cf = 0;
            }

            goto LABEL_139;
          }
        }
      }

      goto LABEL_145;
    }

LABEL_16:
    v25 = 0;
LABEL_17:
    v21 = 4294954514;
    goto LABEL_18;
  }

LABEL_145:
  v21 = v19;
  v25 = 0;
LABEL_18:
  LODWORD(time2.value) = 0;
  LOBYTE(type.value) = 0;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v29 = time2.value;
  if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type.value))
  {
    v30 = v29;
  }

  else
  {
    v30 = v29 & 0xFFFFFFFE;
  }

  if (v30)
  {
    LODWORD(time1.value) = 136315394;
    *(&time1.value + 4) = "videoMentorDependencyStateFillRefreshGroupsUntil";
    LOWORD(time1.flags) = 1024;
    *(&time1.flags + 2) = v21;
    _os_log_send_and_compose_impl();
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (v25)
  {
    CFRelease(v25);
  }

LABEL_25:
  if (cf)
  {
    CFRelease(cf);
  }

  return v21;
}

uint64_t videoMentorDependencyStateAddSamplesToGraph(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, __CFArray **a6, __CFSet **a7)
{
  v14 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v121[0] = 0;
  if (a6)
  {
    *a6 = 0;
  }

  if (a7)
  {
    *a7 = 0;
  }

  if (*(a2 + 88))
  {
    v16 = 0;
LABEL_7:
    videoMentorDependencyStateCloseNodesWithUnknownDependents(a2, Mutable);
    goto LABEL_8;
  }

  allocator = v14;
  v108 = a3;
  v107 = a5;
  v99 = a6;
  v105 = 0;
  v16 = 0;
  v103 = *MEMORY[0x1E695E4D0];
  key = *MEMORY[0x1E6960450];
  v100 = *MEMORY[0x1E695E4C0];
  v97 = *MEMORY[0x1E6960400];
  v96 = *MEMORY[0x1E6960438];
  v18 = *MEMORY[0x1E695E738];
  v106 = a4;
  v109 = a1;
  while (1)
  {
    v119 = 0;
    v120 = 0;
    v19 = *(a2 + 80);
    v20 = *(CMBaseObjectGetVTable() + 16);
    if (v20)
    {
      v21 = v20;
      if (!a4)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v21 = 0;
      if (!a4)
      {
        goto LABEL_19;
      }
    }

    v22 = *(CMBaseObjectGetVTable() + 16);
    if (!v22)
    {
LABEL_19:
      v23 = 0;
      goto LABEL_20;
    }

    v23 = v22;
LABEL_20:
    if (v21 == v23 && *(v21 + 32) && (*(v23 + 32))(v19, a4) == 1)
    {
      goto LABEL_168;
    }

    if (*(a1 + 116))
    {
      v17 = 0xFFFFFFFFLL;
      goto LABEL_159;
    }

    NodeForCursor = videoMentorDependencyStateGetNodeForCursor(a1, a2, *(a2 + 80), v108, 1, &v120);
    if (NodeForCursor)
    {
LABEL_174:
      v17 = NodeForCursor;
      goto LABEL_159;
    }

    v118 = 0;
    v117 = 0;
    v116 = 0;
    v115 = 0;
    v114 = 0;
    v113 = 0;
    if (*(*(CMBaseObjectGetVTable() + 16) + 72))
    {
      LOBYTE(time1.value) = 0;
      LOBYTE(value.value) = 0;
      v25 = *(a2 + 80);
      v26 = *(*(CMBaseObjectGetVTable() + 16) + 72);
      if (!v26)
      {
        goto LABEL_166;
      }

      NodeForCursor = v26(v25, &time1, &v118 + 1, &value);
      if (NodeForCursor)
      {
        goto LABEL_174;
      }

      v27 = LOBYTE(time1.value) == 73;
      LOBYTE(v118) = LOBYTE(time1.value) == 73;
      v115 = LOBYTE(time1.value) == 66;
      v110 = v118;
    }

    else
    {
      v28 = *(a2 + 80);
      v29 = *(*(CMBaseObjectGetVTable() + 16) + 64);
      if (!v29)
      {
        goto LABEL_166;
      }

      NodeForCursor = v29(v28, &v118, &v117, &v116, &v115);
      if (NodeForCursor)
      {
        goto LABEL_174;
      }

      v110 = (v118 | v117) != 0;
      if (v121[0])
      {
        CFRelease(v121[0]);
        v121[0] = 0;
      }

      FigBaseObject = FigSampleCursorGetFigBaseObject(*(a2 + 80));
      v31 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v31)
      {
        v31(FigBaseObject, @"EagerlyFetchSampleDependencyAttributes", v103);
      }

      v32 = FigSampleCursorGetFigBaseObject(*(a2 + 80));
      v33 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v33)
      {
        if (!v33(v32, @"SampleDependencyAttributes", allocator, v121))
        {
          if (v121[0])
          {
            v34 = CFGetTypeID(v121[0]);
            if (v34 == CFDictionaryGetTypeID())
            {
              time1.value = 0;
              value.value = 0;
              if (CFDictionaryGetValueIfPresent(v121[0], key, &value) && value.value == v100)
              {
                v115 = 1;
              }

              ValueIfPresent = CFDictionaryGetValueIfPresent(v121[0], v97, &value);
              v36 = v110;
              v37 = value.value == v100 || v110;
              if (ValueIfPresent)
              {
                v36 = v37;
              }

              v110 = v36;
              if (CFDictionaryGetValueIfPresent(v121[0], v96, &time1))
              {
                FigCFDictionaryGetIntIfPresent();
              }

              FigCFDictionaryGetBooleanIfPresent();
              FigCFDictionaryGetBooleanIfPresent();
              FigCFDictionaryGetIntIfPresent();
            }
          }
        }
      }

      v27 = v118;
      if (v118 && (v114 == 21 || v114 == 16))
      {
        HIBYTE(v118) = 1;
      }
    }

    v38 = v120;
    *(v120 + 152) = HIDWORD(v114);
    *(v38 + 156) = HIBYTE(v113);
    *(v38 + 157) = v113;
    *(v38 + 158) = v27;
    *(v38 + 159) = v117;
    v39 = HIBYTE(v118);
    *(v38 + 160) = HIBYTE(v118);
    *(v38 + 161) = v115;
    if (v27 && !v39)
    {
      videoMentorDependencyStateCloseNodesWithUnknownDependents(a2, Mutable);
      v40 = *(a2 + 72);
      if (!v40)
      {
        goto LABEL_65;
      }

      if (v40[64])
      {
        v40[64] = 0;
        CFArrayAppendValue(Mutable, v40);
      }

LABEL_64:
      CFRelease(v40);
      *(a2 + 72) = 0;
      goto LABEL_65;
    }

    v41 = *(a2 + 72);
    if (v41)
    {
      if (v41 == *a2 || (time1 = *(v38 + 104), value = *(v41 + 104), v42 = CMTimeCompare(&time1, &value), *(v38 + 162) = v42 < 0, (v42 & 0x80000000) == 0))
      {
        videoMentorDependencyStateCloseNodesWithUnknownDependents(a2, Mutable);
        CFArrayAppendValue(*(a2 + 64), *(a2 + 72));
        v40 = *(a2 + 72);
        if (v40)
        {
          goto LABEL_64;
        }
      }
    }

LABEL_65:
    if (HIBYTE(v118))
    {
      *(a2 + 72) = CFRetain(v38);
    }

    if (v115)
    {
      *(v38 + 64) = 0;
      CFArrayAppendValue(Mutable, v38);
    }

    Count = CFArrayGetCount(*(a2 + 64));
    v44 = Count;
    v45 = SHIDWORD(v114);
    if (HIBYTE(v113) && Count > SHIDWORD(v114))
    {
      do
      {
        CountOfNodesWithUnknownDependentsAtLevel = videoMentorDependencyStateGetCountOfNodesWithUnknownDependentsAtLevel(a2, v45);
        if (CountOfNodesWithUnknownDependentsAtLevel >= 1)
        {
          v47 = CountOfNodesWithUnknownDependentsAtLevel;
          for (i = 0; i != v47; ++i)
          {
            NodeWithUnknownDependentsAtLevel = videoMentorDependencyStateGetNodeWithUnknownDependentsAtLevel(a2, v45, i);
            *(NodeWithUnknownDependentsAtLevel + 64) = 0;
            CFArrayAppendValue(Mutable, NodeWithUnknownDependentsAtLevel);
          }
        }

        CFArraySetValueAtIndex(*(a2 + 64), v45++, v18);
      }

      while (v45 != v44);
    }

    else if (v113)
    {
      if (Count > SHIDWORD(v114))
      {
        v50 = videoMentorDependencyStateGetCountOfNodesWithUnknownDependentsAtLevel(a2, SHIDWORD(v114));
        if (v50 >= 1)
        {
          v51 = v50;
          for (j = 0; j != v51; ++j)
          {
            v53 = videoMentorDependencyStateGetNodeWithUnknownDependentsAtLevel(a2, SHIDWORD(v114), j);
            *(v53 + 64) = 0;
            CFArrayAppendValue(Mutable, v53);
            CFArraySetValueAtIndex(*(a2 + 64), SHIDWORD(v114), v18);
          }
        }
      }
    }

    v54 = CFArrayGetCount(*(a2 + 64));
    if (v54 <= SHIDWORD(v114))
    {
      v55 = v54 - 1;
      do
      {
        CFArrayAppendValue(*(a2 + 64), v18);
        ++v55;
      }

      while (v55 < SHIDWORD(v114));
    }

    a1 = v109;
    if (!v110)
    {
      v101 = a7;
      v56 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
      CFArrayAppendValue(v56, v38);
      v57 = HIDWORD(v114);
      if ((v114 & 0x8000000000000000) == 0)
      {
        do
        {
          v58 = videoMentorDependencyStateGetCountOfNodesWithUnknownDependentsAtLevel(a2, v57);
          if (v58 >= 1)
          {
            v59 = v58;
            for (k = 0; k != v59; ++k)
            {
              v61 = videoMentorDependencyStateGetNodeWithUnknownDependentsAtLevel(a2, v57, k);
              v122.length = CFArrayGetCount(v56);
              v122.location = 0;
              if (CFArrayGetFirstIndexOfValue(v56, v122, v61) == -1)
              {
                videoMentorFrameNodeAddDependentNode(v61, v38);
              }

              CFArrayAppendValue(v56, v61);
              v62 = *(v61 + 4);
              v123.length = CFArrayGetCount(v62);
              v123.location = 0;
              CFArrayAppendArray(v56, v62, v123);
            }
          }
        }

        while (v57-- > 0);
      }

      a7 = v101;
      a1 = v109;
      if (v56)
      {
        CFRelease(v56);
      }
    }

    if (!CFArrayGetCount(*(v38 + 32)))
    {
      videoMentorFrameNodeAddDependentNode(*a2, v38);
    }

    if (!*(v38 + 64))
    {
      goto LABEL_109;
    }

    v64 = videoMentorDependencyStateGetCountOfNodesWithUnknownDependentsAtLevel(a2, SHIDWORD(v114));
    if (!v110)
    {
      v69 = v64;
      if (v64 >= 1)
      {
        v70 = 0;
        do
        {
          v71 = videoMentorDependencyStateGetNodeWithUnknownDependentsAtLevel(a2, SHIDWORD(v114), v70);
          *(v71 + 64) = 0;
          CFArrayAppendValue(Mutable, v71);
          ++v70;
        }

        while (v69 != v70);
      }

      v72 = *(a2 + 64);
      v73 = SHIDWORD(v114);
      goto LABEL_108;
    }

    v65 = SHIDWORD(v114);
    ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 64), SHIDWORD(v114));
    if (ValueAtIndex == v18)
    {
      v72 = *(a2 + 64);
      v73 = v65;
LABEL_108:
      CFArraySetValueAtIndex(v72, v73, v38);
LABEL_109:
      if (!a7)
      {
        goto LABEL_146;
      }

      goto LABEL_110;
    }

    v67 = ValueAtIndex;
    if (CFGetTypeID(ValueAtIndex) == sVideoMentorFrameNodeID)
    {
      v68 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
      CFArrayAppendValue(v68, v67);
      CFArrayAppendValue(v68, v38);
      CFArraySetValueAtIndex(*(a2 + 64), v65, v68);
      CFRelease(v68);
      if (!a7)
      {
        goto LABEL_146;
      }
    }

    else
    {
      CFArrayAppendValue(v67, v38);
      if (!a7)
      {
        goto LABEL_146;
      }
    }

LABEL_110:
    v74 = *(a1 + 528);
    if (v74 && !v105)
    {
      v75 = *(a2 + 80);
      v76 = *(CMBaseObjectGetVTable() + 16);
      if (v76)
      {
        v77 = v76;
      }

      else
      {
        v77 = 0;
      }

      v78 = *(CMBaseObjectGetVTable() + 16);
      if (v78)
      {
        v79 = v78;
      }

      else
      {
        v79 = 0;
      }

      if (v77 == v79 && *(v77 + 32) && (*(v79 + 32))(v75, v74))
      {
        v105 = 0;
        goto LABEL_123;
      }

      if (*(v38 + 160))
      {
        v105 = 1;
LABEL_123:
        a1 = v109;
        goto LABEL_146;
      }

      v102 = a7;
      v80 = *(v109 + 544);
      v16 = CFSetCreateMutable(allocator, 0, MEMORY[0x1E695E9F8]);
      v81 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
      v82 = CFArrayGetCount(*(a2 + 64));
      if (v82 >= v80 + 1)
      {
        v83 = v80 + 1;
      }

      else
      {
        v83 = v82;
      }

      if (v80 == 0x7FFFFFFF)
      {
        v84 = v82;
      }

      else
      {
        v84 = v83;
      }

      if (v84 >= 1)
      {
        for (m = 0; m != v84; ++m)
        {
          v86 = videoMentorDependencyStateGetCountOfNodesWithUnknownDependentsAtLevel(a2, m);
          if (v86 >= 1)
          {
            v87 = v86;
            for (n = 0; n != v87; ++n)
            {
              v89 = videoMentorDependencyStateGetNodeWithUnknownDependentsAtLevel(a2, m, n);
              CFArrayAppendValue(v81, v89);
            }
          }
        }
      }

      CFArrayAppendValue(v81, v38);
      a7 = v102;
      a1 = v109;
      if (CFArrayGetCount(v81) >= 1)
      {
        do
        {
          v90 = CFArrayGetValueAtIndex(v81, 0);
          CFArrayRemoveValueAtIndex(v81, 0);
          if (!CFSetContainsValue(v16, v90))
          {
            CFSetSetValue(v16, v90);
            v91 = v90[4];
            v124.length = CFArrayGetCount(v91);
            v124.location = 0;
            CFArrayAppendArray(v81, v91, v124);
          }
        }

        while (CFArrayGetCount(v81) > 0);
      }

      if (v81)
      {
        CFRelease(v81);
      }

      v105 = 1;
    }

LABEL_146:
    if (v107)
    {
      if (*(v38 + 158) || *(v38 + 159))
      {
        *(v38 + 68) = 0x200000002;
      }

      else if (!*(v38 + 76))
      {
        *(v38 + 76) = 1;
        v94 = *(v38 + 56);
        if (v94)
        {
          --*(v94 + 80);
        }
      }
    }

    v92 = *(a2 + 80);
    v93 = *(*(CMBaseObjectGetVTable() + 16) + 168);
    if (!v93)
    {
LABEL_166:
      v17 = 4294954514;
      goto LABEL_159;
    }

    NodeForCursor = v93(v92, 1, &v119);
    if (NodeForCursor)
    {
      goto LABEL_174;
    }

    a4 = v106;
    if (v119 != 1)
    {
      break;
    }

    if (*(a2 + 88))
    {
      goto LABEL_168;
    }
  }

  *(a2 + 88) = 1;
LABEL_168:
  if (v105)
  {
    a6 = v99;
  }

  else
  {
    a6 = v99;
    if (v16)
    {
      CFRelease(v16);
      v16 = 0;
    }
  }

  if (*(a2 + 88))
  {
    goto LABEL_7;
  }

LABEL_8:
  if (a6)
  {
    *a6 = Mutable;
    Mutable = 0;
  }

  v17 = 0;
  if (a7)
  {
    *a7 = v16;
    v16 = 0;
  }

LABEL_159:
  if (v121[0])
  {
    CFRelease(v121[0]);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v17;
}

uint64_t videoMentorReportIssueWithRefreshNode(uint64_t a1)
{
  cf[24] = *MEMORY[0x1E69E9840];
  v8 = 0;
  cf[0] = 0;
  if (a1)
  {
    v1 = *(a1 + 16);
    v2 = *(*(CMBaseObjectGetVTable() + 16) + 144);
    if (v2)
    {
      v2(v1, 0, 0, cf, &v8);
      if (!v8)
      {
        if (cf[0])
        {
          CMBaseObject = CMByteStreamGetCMBaseObject();
          v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v4)
          {
            v4(CMBaseObject, *MEMORY[0x1E695FFA0], *MEMORY[0x1E695E480], &v8);
          }
        }
      }
    }
  }

  if (FigCanTriggerTapToRadar())
  {
    RadarDescriptionString = FigTapToRadarCreateRadarDescriptionString();
    FigTriggerTapToRadar();
    if (RadarDescriptionString)
    {
      CFRelease(RadarDescriptionString);
    }
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return 0;
}

void videoMentorAddRefreshGroupToProcess(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 80))
  {
    videoMentorRefreshGroupMarkAsProcessed(a2);
  }

  if (!*(a2 + 56))
  {
    Count = CFArrayGetCount(*(a1 + 96));
    if (Count < 1)
    {
LABEL_18:
      v14 = *(a1 + 96);

      CFArrayAppendValue(v14, a2);
      return;
    }

    v5 = Count;
    v6 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 96), v6);
      v8 = ValueAtIndex[8];
      v9 = *(a2 + 64);
      v10 = *(CMBaseObjectGetVTable() + 16);
      if (v10)
      {
        v11 = v10;
        if (!v9)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v11 = 0;
        if (!v9)
        {
          goto LABEL_13;
        }
      }

      v12 = *(CMBaseObjectGetVTable() + 16);
      if (!v12)
      {
LABEL_13:
        v13 = 0;
        goto LABEL_14;
      }

      v13 = v12;
LABEL_14:
      if (v11 != v13 || !*(v11 + 32) || (*(v13 + 32))(v8, v9) != -1)
      {
        if (ValueAtIndex != a2)
        {
          v15 = *(a1 + 96);

          CFArrayInsertValueAtIndex(v15, v6, a2);
        }

        return;
      }

      if (v5 == ++v6)
      {
        goto LABEL_18;
      }
    }
  }
}

CFIndex videoMentorDependencyStateProcessRefreshGroups(uint64_t a1)
{
  result = CFArrayGetCount(*(a1 + 96));
  if (result >= 1)
  {
    v3 = *MEMORY[0x1E695E480];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 96), 0);
      CFRetain(ValueAtIndex);
      CFArrayRemoveValueAtIndex(*(a1 + 96), 0);
      if (!*(ValueAtIndex + 56) && !videoMentorDependencyStateSelectSoloUndeterminedNodeIfNoSelectedNodesInRefreshGroup(a1, ValueAtIndex))
      {
        Count = CFArrayGetCount(ValueAtIndex[6]);
        if (Count >= 1)
        {
          for (i = Count; i > 0; i = CFArrayGetCount(ValueAtIndex[6]))
          {
            v7 = ValueAtIndex[6];
            v8 = 0;
            ValueAtIndex[6] = CFArrayCreateMutable(v3, 0, &kVideoMentorActionCallbacks);
            do
            {
              v9 = CFArrayGetValueAtIndex(v7, v8);
              videoMentorDependencyStateExecuteAction(a1, v9);
              ++v8;
            }

            while (i != v8);
            if (v7)
            {
              CFRelease(v7);
            }
          }
        }

        if (*(ValueAtIndex + 58))
        {
          v10 = 2;
        }

        else
        {
          v10 = 1;
        }

        v11 = CFArrayGetCount(ValueAtIndex[5]);
        if (v11 >= 1)
        {
          v12 = v11;
          for (j = 0; j != v12; ++j)
          {
            v14 = CFArrayGetValueAtIndex(ValueAtIndex[5], j);
            if (!*(v14 + 19))
            {
              v15 = *(v14 + 18);
              v16 = v15 == 1 || v15 == v10;
              if (v16 && *(v14 + 17) == 2)
              {
                v51 = 0;
                v52 = v14;
                videoMentorDependencyStateExecuteAction(a1, &v51);
              }
            }
          }
        }

        if (!videoMentorDependencyStateSelectSoloUndeterminedNodeIfNoSelectedNodesInRefreshGroup(a1, ValueAtIndex) && !*(ValueAtIndex + 58))
        {
          if (*(ValueAtIndex + 21) >= 1)
          {
            v17 = CFArrayGetCount(ValueAtIndex[5]);
            if (v17 >= 1)
            {
              v18 = v17;
              for (k = 0; k != v18; ++k)
              {
                v20 = CFArrayGetValueAtIndex(ValueAtIndex[5], k);
                if (!*(v20 + 19) && *(v20 + 18) == 2 && *(v20 + 17) == 2)
                {
                  v51 = 0;
                  v52 = v20;
                  videoMentorDependencyStateExecuteAction(a1, &v51);
                }
              }
            }
          }

          if (!videoMentorDependencyStateSelectSoloUndeterminedNodeIfNoSelectedNodesInRefreshGroup(a1, ValueAtIndex))
          {
            v21 = CFArrayGetCount(ValueAtIndex[5]);
            if (v21 >= 1)
            {
              v22 = v21;
              v23 = 0;
              v24 = 0;
              v25 = 0;
              do
              {
                v26 = CFArrayGetValueAtIndex(ValueAtIndex[5], v22 - 1);
                v27 = v26;
                v28 = *(v26 + 19);
                if (v23)
                {
                  if (!v28 && *(v26 + 18) == 2)
                  {
                    v29 = *(v26 + 17);
                    if (v29 == 2)
                    {
                      v51 = 0;
                      v52 = v26;
                      videoMentorDependencyStateExecuteAction(a1, &v51);
                    }

                    else if (v29 == 1)
                    {
                      ++v25;
                    }
                  }
                }

                else if (v28 || *(v26 + 18) != 2)
                {
                  v23 = 0;
                }

                else
                {
                  v49 = v25 + 1;
                  if (!v24)
                  {
                    v24 = v26;
                  }

                  v30 = CFArrayGetCount(v26[4]);
                  if (v30 < 1)
                  {
                    v23 = v27;
                  }

                  else
                  {
                    v31 = v30;
                    v47 = v24;
                    v32 = 0;
                    while (*(CFArrayGetValueAtIndex(v27[4], v32) + 19))
                    {
                      if (v31 == ++v32)
                      {
                        v23 = v27;
                        goto LABEL_61;
                      }
                    }

                    v23 = 0;
LABEL_61:
                    v24 = v47;
                  }

                  v25 = v49;
                }

                v33 = v22-- <= 1;
              }

              while (!v33);
              v50 = v25;
              v48 = v24;
              if (v23)
              {
                v34 = CFArrayGetCount(ValueAtIndex[5]);
                if (v34 >= 1)
                {
                  v35 = v34;
                  do
                  {
                    v36 = CFArrayGetValueAtIndex(ValueAtIndex[5], v35 - 1);
                    if (v36 == v23)
                    {
                      break;
                    }

                    v37 = v36;
                    if (!*(v36 + 19) && *(v36 + 18) == 2 && *(v36 + 17) == 2)
                    {
                      v38 = CFArrayGetCount(v36[4]);
                      if (v38 >= 1)
                      {
                        v39 = v38;
                        v40 = 0;
                        while (1)
                        {
                          v41 = CFArrayGetValueAtIndex(v37[4], v40);
                          if (!*(v41 + 19) && CFArrayGetCount(*(v41 + 3)) == 1)
                          {
                            break;
                          }

                          if (v39 == ++v40)
                          {
                            goto LABEL_76;
                          }
                        }

                        v51 = 0;
                        v52 = v37;
                        videoMentorDependencyStateExecuteAction(a1, &v51);
                      }
                    }

LABEL_76:
                    v33 = v35-- <= 1;
                  }

                  while (!v33);
                }
              }

              if (v50 == 1 && !*(ValueAtIndex + 21))
              {
                v51 = 1;
                v52 = v48;
                videoMentorDependencyStateExecuteAction(a1, &v51);
              }
            }

            if (!videoMentorDependencyStateSelectSoloUndeterminedNodeIfNoSelectedNodesInRefreshGroup(a1, ValueAtIndex))
            {
              if (!*(ValueAtIndex + 57))
              {
                v42 = CFArrayGetCount(ValueAtIndex[5]);
                MutableCopy = 0;
                do
                {
                  if (v42 < 1)
                  {
                    break;
                  }

                  v44 = v42 + 1;
                  while (1)
                  {
                    v42 = v44 - 2;
                    v45 = CFArrayGetValueAtIndex(ValueAtIndex[5], v44 - 2);
                    if (!v45[19] && v45[18] != 1)
                    {
                      break;
                    }

                    if (--v44 <= 1)
                    {
                      goto LABEL_98;
                    }
                  }

                  v46 = videoMentorFrameNodeCopyUndeterminedParentNodes(v45);
                  if (MutableCopy)
                  {
                    videoMentorCFSetIntersectsWith(MutableCopy, v46);
                  }

                  else
                  {
                    MutableCopy = CFSetCreateMutableCopy(v3, 0, v46);
                  }

                  if (v46)
                  {
                    CFRelease(v46);
                  }
                }

                while (CFSetGetCount(MutableCopy));
LABEL_98:
                if (MutableCopy)
                {
                  if (CFSetGetCount(MutableCopy) >= 1)
                  {
                    CFSetApplyFunction(MutableCopy, videoMentorDependencyStateSelectNodeApplier, a1);
                  }

                  CFRelease(MutableCopy);
                }

                *(ValueAtIndex + 57) = 1;
              }

              videoMentorDependencyStateSelectSoloUndeterminedNodeIfNoSelectedNodesInRefreshGroup(a1, ValueAtIndex);
            }
          }
        }
      }

      CFRelease(ValueAtIndex);
      result = CFArrayGetCount(*(a1 + 96));
    }

    while (result > 0);
  }

  return result;
}

uint64_t FigSampleBufferConsumerGetPendingSampleBufferCount(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v2)
  {
    return 0;
  }

  return v2(a1);
}

uint64_t FigSampleBufferConsumerSetAttachmentOnPendingSampleBuffersInPTSRange(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  VTable = CMBaseObjectGetVTable();
  v12 = *(VTable + 16);
  result = VTable + 16;
  v13 = *(v12 + 56);
  if (v13)
  {
    v16 = *a4;
    v17 = *(a4 + 2);
    v14 = *a5;
    v15 = *(a5 + 2);
    return v13(a1, a2, a3, &v16, &v14);
  }

  return result;
}

uint64_t FigSampleCursorGetMPEG2FrameType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

uint64_t videoMentorSyncFrameIsOpenGOP(uint64_t a1)
{
  cf = 0;
  FigBaseObject = FigSampleCursorGetFigBaseObject(a1);
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v2)
  {
    v2(FigBaseObject, @"SampleDependencyAttributes", *MEMORY[0x1E695E480], &cf);
  }

  FigCFDictionaryGetIntIfPresent();
  if (cf)
  {
    CFRelease(cf);
  }

  return 0;
}

uint64_t videoMentorRefreshGroupCreate(const __CFAllocator *a1, __int128 *a2, uint64_t *a3)
{
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    videoMentorRefreshGroupCreate_cold_2(&v14);
    return v14;
  }

  v7 = Instance;
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(v7 + 40) = Mutable;
  if (!Mutable)
  {
    v12 = 1690;
LABEL_9:
    videoMentorRefreshGroupCreate_cold_1(v12, v7, &v13);
    return v13;
  }

  v9 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, &kVideoMentorActionCallbacks);
  *(v7 + 48) = v9;
  if (!v9)
  {
    v12 = 1693;
    goto LABEL_9;
  }

  result = 0;
  v11 = *a2;
  *(v7 + 32) = *(a2 + 2);
  *(v7 + 16) = v11;
  *a3 = v7;
  return result;
}

void videoMentorRefreshGroupAddNode(uint64_t a1, uint64_t a2)
{
  *(a2 + 56) = CFRetain(a1);
  CFArrayAppendValue(*(a1 + 40), a2);
  v4 = *(a2 + 76);
  if (v4 == 2)
  {
    ++*(a1 + 84);
  }

  else if (!v4)
  {
    ++*(a1 + 80);
  }

  Count = CFArrayGetCount(*(a1 + 40));
  v6 = *(a2 + 16);
  if (Count == 1)
  {
    v7 = *(a2 + 16);
    if (!v6)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  v8 = *(a1 + 64);
  v9 = *(CMBaseObjectGetVTable() + 16);
  if (v9)
  {
    v10 = v9;
    if (!v8)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v10 = 0;
    if (!v8)
    {
LABEL_14:
      v12 = 0;
      goto LABEL_15;
    }
  }

  v11 = *(CMBaseObjectGetVTable() + 16);
  if (!v11)
  {
    goto LABEL_14;
  }

  v12 = v11;
LABEL_15:
  if (v10 == v12 && *(v10 + 32) && (*(v12 + 32))(v6, v8) == -1)
  {
    v7 = *(a2 + 16);
  }

  else
  {
    v7 = 0;
  }

  v13 = *(a2 + 16);
  v14 = *(a1 + 72);
  v15 = *(CMBaseObjectGetVTable() + 16);
  if (v15)
  {
    v16 = v15;
    if (!v14)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v16 = 0;
    if (!v14)
    {
LABEL_26:
      v18 = 0;
      goto LABEL_27;
    }
  }

  v17 = *(CMBaseObjectGetVTable() + 16);
  if (!v17)
  {
    goto LABEL_26;
  }

  v18 = v17;
LABEL_27:
  if (v16 == v18 && *(v16 + 32) && (*(v18 + 32))(v13, v14) == 1)
  {
    v6 = *(a2 + 16);
    if (!v7)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v6 = 0;
    if (!v7)
    {
      goto LABEL_31;
    }
  }

LABEL_29:
  v19 = *(a1 + 64);
  *(a1 + 64) = v7;
  CFRetain(v7);
  if (v19)
  {
    CFRelease(v19);
  }

LABEL_31:
  if (v6)
  {
    v20 = *(a1 + 72);
    *(a1 + 72) = v6;
    CFRetain(v6);
    if (v20)
    {

      CFRelease(v20);
    }
  }
}

uint64_t videoMentorActionArrayRetain(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x19A8CC720](a1, 16, 0x1020040D5A9D86FLL, 0);
  v4 = v3;
  if (v3)
  {
    *v3 = *a2;
    *(v3 + 8) = CFRetain(*(a2 + 8));
  }

  return v4;
}

void videoMentorActionArrayRelease(const __CFAllocator *a1, CFTypeRef *a2)
{
  CFRelease(a2[1]);

  CFAllocatorDeallocate(a1, a2);
}

__CFString *videoMentorActionArrayCopyDescription(int *a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = Mutable;
  v4 = "drop";
  v5 = "select";
  v6 = *a1;
  v7 = "??";
  if (*a1 == 2)
  {
    v7 = "reclassify";
  }

  if (v6 != 1)
  {
    v5 = v7;
  }

  if (v6)
  {
    v4 = v5;
  }

  CFStringAppendFormat(Mutable, 0, @"VideoMentorAction: %p %s node %@\n", a1, v4, *(a1 + 1));
  return v3;
}

void videoMentorDependencyStateCloseNodesWithUnknownDependents(uint64_t a1, __CFArray *a2)
{
  Count = CFArrayGetCount(*(a1 + 64));
  if (Count >= 1)
  {
    v5 = Count;
    for (i = 0; i != v5; ++i)
    {
      CountOfNodesWithUnknownDependentsAtLevel = videoMentorDependencyStateGetCountOfNodesWithUnknownDependentsAtLevel(a1, i);
      if (CountOfNodesWithUnknownDependentsAtLevel >= 1)
      {
        v8 = CountOfNodesWithUnknownDependentsAtLevel;
        for (j = 0; j != v8; ++j)
        {
          NodeWithUnknownDependentsAtLevel = videoMentorDependencyStateGetNodeWithUnknownDependentsAtLevel(a1, i, j);
          *(NodeWithUnknownDependentsAtLevel + 64) = 0;
          CFArrayAppendValue(a2, NodeWithUnknownDependentsAtLevel);
        }
      }
    }
  }

  v11 = *(a1 + 64);

  CFArrayRemoveAllValues(v11);
}

CFIndex videoMentorDependencyStateGetCountOfNodesWithUnknownDependentsAtLevel(uint64_t a1, CFIndex a2)
{
  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 64), a2);
  if (ValueAtIndex == *MEMORY[0x1E695E738])
  {
    return 0;
  }

  v3 = ValueAtIndex;
  v4 = CFGetTypeID(ValueAtIndex);
  if (v4 != CFArrayGetTypeID())
  {
    return 1;
  }

  return CFArrayGetCount(v3);
}

const __CFArray *videoMentorDependencyStateGetNodeWithUnknownDependentsAtLevel(uint64_t a1, CFIndex a2, CFIndex a3)
{
  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 64), a2);
  v5 = ValueAtIndex;
  if (!a3)
  {
    v6 = CFGetTypeID(ValueAtIndex);
    if (v6 != CFArrayGetTypeID())
    {
      return v5;
    }

    a3 = 0;
  }

  return CFArrayGetValueAtIndex(v5, a3);
}

void videoMentorFrameNodeAddDependentNode(CFMutableArrayRef *a1, CFMutableArrayRef *a2)
{
  if (a1 != a2)
  {
    CFArrayAppendValue(a1[3], a2);
    v5 = a2[4];

    CFArrayAppendValue(v5, a1);
  }
}

void videoMentorFrameNodeRemoveDependentNode(CFMutableArrayRef *a1, const __CFArray **a2, int a3)
{
  v6 = a1[3];
  v12.length = CFArrayGetCount(v6);
  v12.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v6, v12, a2);
  CFArrayRemoveValueAtIndex(a1[3], FirstIndexOfValue);
  v8 = a2[4];
  v13.length = CFArrayGetCount(v8);
  v13.location = 0;
  v9 = CFArrayGetFirstIndexOfValue(v8, v13, a1);
  CFArrayRemoveValueAtIndex(a2[4], v9);
  if (a3)
  {
    CFArrayAppendValue(a1[5], a2);
    v10 = a2[6];

    CFArrayAppendValue(v10, a1);
  }
}

uint64_t videoMentorFrameNodeDetermineIfIsLeaf(const void *a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v6 = CFArrayCreateMutable(v4, 0, 0);
  v7 = v6;
  if (Mutable)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
LABEL_30:
    refreshed = 0;
    if (Mutable)
    {
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  CFArrayAppendValue(Mutable, a1);
  CFArrayAppendValue(v7, 0);
  Count = CFArrayGetCount(Mutable);
  if (Count < 1)
  {
    refreshed = 0;
    goto LABEL_34;
  }

  v10 = Count;
  v11 = 0;
  while (1)
  {
    v12 = v10 - 1;
    ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v10 - 1);
    v14 = CFArrayGetValueAtIndex(v7, v10 - 1);
    v15 = CFArrayGetCount(ValueAtIndex[3]);
    v16 = v15;
    if (v10 > 0x2710 || v11 >> 4 > 0x270 || v15 >= 10001)
    {
      break;
    }

    if (!v14)
    {
      if (*(ValueAtIndex + 17))
      {
        goto LABEL_28;
      }

      if (*(ValueAtIndex + 64))
      {
        v21 = 1;
LABEL_26:
        *(ValueAtIndex + 17) = v21;
LABEL_28:
        CFArrayRemoveValueAtIndex(Mutable, v12);
        CFArrayRemoveValueAtIndex(v7, v12);
        goto LABEL_29;
      }
    }

    if (v15 > v14)
    {
      while (1)
      {
        v17 = CFArrayGetValueAtIndex(ValueAtIndex[3], v14);
        v18 = *(v17 + 7);
        if (!v18 || v18 != a2)
        {
          v20 = 1;
LABEL_22:
          *(ValueAtIndex + 17) = v20;
          goto LABEL_24;
        }

        v19 = v17;
        v20 = *(v17 + 17);
        if (!v20)
        {
          break;
        }

        if (v20 == 1)
        {
          goto LABEL_22;
        }

        if (v16 == ++v14)
        {
          goto LABEL_25;
        }
      }

      CFArraySetValueAtIndex(v7, v12, v14);
      CFArrayAppendValue(Mutable, v19);
      CFArrayAppendValue(v7, 0);
    }

LABEL_24:
    if (v14 == v16)
    {
LABEL_25:
      v21 = 2;
      goto LABEL_26;
    }

    if (*(ValueAtIndex + 17))
    {
      goto LABEL_28;
    }

LABEL_29:
    ++v11;
    v10 = CFArrayGetCount(Mutable);
    if (v10 <= 0)
    {
      goto LABEL_30;
    }
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  refreshed = videoMentorReportIssueWithRefreshNode(ValueAtIndex);
  if (Mutable)
  {
LABEL_34:
    CFRelease(Mutable);
  }

LABEL_35:
  if (v7)
  {
    CFRelease(v7);
  }

  return refreshed;
}

__n128 videoMentorRefreshGroupMarkAsProcessed(uint64_t a1)
{
  v11 = **&MEMORY[0x1E6960C70];
  CFArrayRemoveAllValues(*(a1 + 48));
  *(a1 + 56) = 1;
  Count = CFArrayGetCount(*(a1 + 40));
  if (Count >= 1)
  {
    v4 = Count;
    v5 = 0;
    v6 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 40), v5);
      if (*(ValueAtIndex + 19) == 2)
      {
        v8 = ValueAtIndex;
        if (!v6 || (time1 = v11, v9 = *(ValueAtIndex + 128), CMTimeCompare(&time1, &v9) < 0))
        {
          result = v8[8];
          *&v11.value = result;
          v11.epoch = v8[9].n128_i64[0];
          v6 = v8;
        }
      }

      ++v5;
    }

    while (v4 != v5);
    if (v6)
    {
      result = *(a1 + 16);
      v6[6].n128_u64[0] = *(a1 + 32);
      v6[5] = result;
    }
  }

  return result;
}

uint64_t videoMentorDependencyStateSelectSoloUndeterminedNodeIfNoSelectedNodesInRefreshGroup(const void **a1, uint64_t a2)
{
  if (!*(a2 + 58) && *(a2 + 80) == 1 && !*(a2 + 84))
  {
    Count = CFArrayGetCount(*(a2 + 40));
    if (Count >= 1)
    {
      v5 = Count;
      v6 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 40), v6);
        if (!ValueAtIndex[19])
        {
          break;
        }

        if (v5 == ++v6)
        {
          goto LABEL_8;
        }
      }

      v9[1] = ValueAtIndex;
      v9[0] = 1;
      videoMentorDependencyStateExecuteAction(a1, v9);
    }
  }

LABEL_8:
  if (!*(a2 + 80))
  {
    videoMentorRefreshGroupMarkAsProcessed(a2);
  }

  return *(a2 + 56);
}

__CFSet *videoMentorFrameNodeCopyUndeterminedParentNodes(const void *a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v4 = CFSetCreateMutable(v2, 0, MEMORY[0x1E695E9F8]);
  v5 = v4;
  if (Mutable)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
LABEL_9:
    if (!Mutable)
    {
      return v5;
    }

    goto LABEL_6;
  }

  CFArrayAppendValue(Mutable, a1);
  if (CFArrayGetCount(Mutable) >= 1)
  {
    videoMentorFrameNodeCopyUndeterminedParentNodes_cold_1(Mutable, v5);
    goto LABEL_9;
  }

LABEL_6:
  CFRelease(Mutable);
  return v5;
}

void videoMentorCFSetIntersectsWith(CFSetRef theSet, uint64_t a2)
{
  Copy = CFSetCreateCopy(*MEMORY[0x1E695E480], theSet);
  v5[0] = theSet;
  v5[1] = a2;
  CFSetApplyFunction(Copy, videoMentorRemoveFromSetIfNotInIntersection, v5);
  CFRelease(Copy);
}

void videoMentorDependencyStateSelectNodeApplier(uint64_t a1, const void **a2)
{
  if (*(a1 + 76) != 2)
  {
    v4[2] = v2;
    v4[3] = v3;
    v4[0] = 1;
    v4[1] = a1;
    videoMentorDependencyStateExecuteAction(a2, v4);
  }
}

void videoMentorRemoveFromSetIfNotInIntersection(void *value, __CFSet **a2)
{
  if (!CFSetContainsValue(a2[1], value))
  {
    v4 = *a2;

    CFSetRemoveValue(v4, value);
  }
}

void videoMentorSavedFrameDestroy(void *a1)
{
  if (a1)
  {
    v2 = a1[1];
    if (v2)
    {
      CFRelease(v2);
    }

    free(a1);
  }
}

void videoMentorEnqueueEditBoundaryMarker(void *a1, uint64_t a2, CMTime *a3)
{
  v10 = 0;
  *&sampleTimingArray.duration.value = *MEMORY[0x1E6960CC0];
  sampleTimingArray.duration.epoch = *(MEMORY[0x1E6960CC0] + 16);
  sampleTimingArray.presentationTimeStamp = *a3;
  sampleTimingArray.decodeTimeStamp = **&MEMORY[0x1E6960C70];
  if (!CMSampleBufferCreate(*MEMORY[0x1E695E480], 0, 1u, 0, 0, 0, 0, 1, &sampleTimingArray, 0, 0, &v10))
  {
    v5 = a1[7];
    if (v5)
    {
      v5(a1[9], a2, v10);
    }

    CMSetAttachment(v10, *MEMORY[0x1E69604A8], *MEMORY[0x1E695E4D0], 1u);
    v6 = a1[3];
    v7 = v10;
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v8)
    {
      v8(v6, v7);
    }

    CFRelease(v10);
  }
}

uint64_t videoMentorSimulateIFramesOnly(uint64_t a1, CMTime *a2, CMTime *a3, CMTime *a4, int a5, _BYTE *a6, _BYTE *a7)
{
  v25 = 0;
  if (*(*(CMBaseObjectGetVTable() + 16) + 72))
  {
    LOBYTE(v24.value) = 0;
    LOBYTE(lhs.value) = 0;
    v14 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (v14)
    {
      v15 = v14(a1, &v24, &lhs, 0);
      if (!v15)
      {
        v16 = LOBYTE(v24.value) - 66;
        if (v16 > 0xE || ((1 << v16) & 0x4081) == 0)
        {
          return FigSignalErrorAtGM();
        }

        v17 = LOBYTE(v24.value) == 73;
        if (LOBYTE(lhs.value))
        {
          v17 = 0;
        }

        HIBYTE(v25) = v17;
        if (LOBYTE(v24.value) != 73)
        {
          goto LABEL_9;
        }

        goto LABEL_13;
      }
    }

    else
    {
      v15 = 4294954514;
    }

    goto LABEL_19;
  }

  v18 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v18)
  {
    v15 = 4294954514;
    goto LABEL_19;
  }

  v15 = v18(a1, &v25 + 1, &v25, 0, 0);
  if (v15)
  {
LABEL_19:
    FigSignalErrorAtGM();
    return v15;
  }

  if (!(HIBYTE(v25) | v25))
  {
LABEL_9:
    v15 = 0;
    *a6 = 0;
    return v15;
  }

LABEL_13:
  if ((a4->flags & 0x1D) == 1)
  {
    memset(&v24, 0, sizeof(v24));
    if (a5 < 0)
    {
      lhs = *a4;
      *&v22.value = *&a2->value;
      epoch = a2->epoch;
    }

    else
    {
      lhs = *a2;
      *&v22.value = *&a4->value;
      epoch = a4->epoch;
    }

    v22.epoch = epoch;
    CMTimeSubtract(&v24, &lhs, &v22);
    lhs = v24;
    v22 = *a3;
    if (CMTimeCompare(&lhs, &v22) < 0)
    {
      *a6 = 0;
    }
  }

  if (!*a6)
  {
    return 0;
  }

  if (HIBYTE(v25))
  {
    *a7 = 1;
  }

  v15 = 0;
  v21 = *&a2->value;
  a4->epoch = a2->epoch;
  *&a4->value = v21;
  return v15;
}

void videoMentorDependencyStateForgetObsoleteRefreshGroups(uint64_t a1, uint64_t a2)
{
  cf = CFRetain(*(a2 + 16));
  Count = CFArrayGetCount(*(a1 + 16));
  if (Count >= 1)
  {
    v4 = Count;
    for (i = 0; i < v4; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), i);
      v7 = *(ValueAtIndex + 9);
      v8 = *(CMBaseObjectGetVTable() + 16);
      if (v8)
      {
        v9 = v8;
        if (!v7)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v9 = 0;
        if (!v7)
        {
          goto LABEL_9;
        }
      }

      v10 = *(CMBaseObjectGetVTable() + 16);
      if (v10)
      {
        v11 = v10;
        goto LABEL_10;
      }

LABEL_9:
      v11 = 0;
LABEL_10:
      if (v9 != v11 || !*(v9 + 32) || (*(v11 + 32))(cf, v7) != -1)
      {
        v12 = CFArrayGetCount(*(ValueAtIndex + 5));
        if (v12 >= 1)
        {
          v13 = v12;
          for (j = 0; j != v13; ++j)
          {
            v15 = CFArrayGetValueAtIndex(*(ValueAtIndex + 5), j);
            if (CFArrayGetCount(v15[3]) >= 1)
            {
              do
              {
                v16 = CFArrayGetValueAtIndex(v15[3], 0);
                if (v16[7] != ValueAtIndex || *(v15 + 17) == 1)
                {
                  v17 = CFArrayGetCount(v15[4]);
                  if (v17 >= 1)
                  {
                    v18 = v17;
                    for (k = 0; k != v18; ++k)
                    {
                      v20 = CFArrayGetValueAtIndex(v15[4], k);
                      videoMentorFrameNodeAddDependentNode(v20, v16);
                    }
                  }
                }

                videoMentorFrameNodeRemoveDependentNode(v15, v16, 0);
              }

              while (CFArrayGetCount(v15[3]) > 0);
            }

            if (CFArrayGetCount(v15[5]) >= 1)
            {
              do
              {
                v21 = CFArrayGetValueAtIndex(v15[5], 0);
                videoMentorFrameNodeRemoveDroppedDependentNode(v15, v21);
              }

              while (CFArrayGetCount(v15[5]) > 0);
            }

            if (CFArrayGetCount(v15[4]) >= 1)
            {
              do
              {
                v22 = CFArrayGetValueAtIndex(v15[4], 0);
                videoMentorFrameNodeRemoveDependentNode(v22, v15, 0);
              }

              while (CFArrayGetCount(v15[4]) > 0);
            }

            if (CFArrayGetCount(v15[6]) >= 1)
            {
              do
              {
                v23 = CFArrayGetValueAtIndex(v15[6], 0);
                videoMentorFrameNodeRemoveDroppedDependentNode(v23, v15);
              }

              while (CFArrayGetCount(v15[6]) > 0);
            }

            if (*(v15 + 64))
            {
              v24 = CFArrayGetCount(*(a1 + 64));
              v25.location = *(v15 + 38);
              if (v24 > v25.location)
              {
                v25.length = 1;
                CFArrayReplaceValues(*(a1 + 64), v25, a1, 1);
              }
            }

            v26 = *(a1 + 72);
            if (v26 == v15)
            {
              v27 = *a1;
              *(a1 + 72) = *a1;
              if (v27)
              {
                CFRetain(v27);
              }

              CFRelease(v26);
            }

            CFDictionaryRemoveValue(*(a1 + 8), v15);
          }
        }

        CFArrayRemoveAllValues(*(ValueAtIndex + 5));
        CFArrayRemoveAllValues(*(ValueAtIndex + 6));
        CFArrayRemoveValueAtIndex(*(a1 + 16), i--);
        --v4;
      }
    }
  }

  CFRelease(cf);
}

__n128 videoMentorThrottlingStateFree(uint64_t a1)
{
  videoMentorThrottlingStateClearSelectedCursors(a1);
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 80) = 0;
    free(v2);
  }

  *(a1 + 88) = 0;
  if (*a1)
  {
    CFRelease(*a1);
    *a1 = 0;
  }

  v3 = MEMORY[0x1E6960C70];
  result = *MEMORY[0x1E6960C70];
  *(a1 + 32) = *MEMORY[0x1E6960C70];
  v5 = *(v3 + 16);
  *(a1 + 48) = v5;
  *(a1 + 56) = result;
  *(a1 + 72) = v5;
  *(a1 + 152) = 0;
  return result;
}

void videoMentorPostMinAndMaxUpcomingOutputPTS(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v7 = MEMORY[0x1E695E4D0];
  if ((*(a2 + 12) & 0x1D) == 1)
  {
    v8 = *MEMORY[0x1E695E4D0];
    FigCFDictionarySetCMTime();
  }

  else
  {
    v8 = *MEMORY[0x1E695E4C0];
  }

  if ((*(a3 + 12) & 0x1D) == 1)
  {
    v8 = *v7;
    FigCFDictionarySetCMTime();
  }

  CFDictionarySetValue(Mutable, *MEMORY[0x1E6960590], v8);
  v9 = *(a1 + 24);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v10)
  {
    v10(v9, *MEMORY[0x1E69605A8], Mutable, 0);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

uint64_t FigSampleCursorGetMinimumUpcomingPresentationTime(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 208);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

void videoMentorFrameNodeRemoveDroppedDependentNode(CFMutableArrayRef *a1, void *a2)
{
  v4 = a1[5];
  v10.length = CFArrayGetCount(v4);
  v10.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v4, v10, a2);
  CFArrayRemoveValueAtIndex(a1[5], FirstIndexOfValue);
  v6 = a2[6];
  v11.length = CFArrayGetCount(v6);
  v11.location = 0;
  v7 = CFArrayGetFirstIndexOfValue(v6, v11, a1);
  v8 = a2[6];

  CFArrayRemoveValueAtIndex(v8, v7);
}

void videoMentorThrottlingStateClearSelectedCursors(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    v3 = *(a1 + 80);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v1; ++i)
      {
        v6 = *(v3 + v4);
        if (v6)
        {
          CFRelease(v6);
          v3 = *(a1 + 80);
          v1 = *(a1 + 88);
          *(v3 + v4) = 0;
        }

        v4 += 32;
      }
    }
  }
}

__n128 videoMentorThrottlingStateStartNewOrder(uint64_t a1, __int128 *a2, uint64_t a3, __n128 *a4, uint64_t a5)
{
  videoMentorThrottlingStateClearSelectedCursors(a1);
  free(*(a1 + 80));
  *(a1 + 88) = 1;
  v10 = malloc_type_calloc(1uLL, 0x20uLL, 0x1020040B07D1DCCuLL);
  *(a1 + 80) = v10;
  if (!v10)
  {
    *(a1 + 88) = 0;
  }

  if (*a1)
  {
    CFRelease(*a1);
    *a1 = 0;
  }

  if (a5)
  {
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v11)
    {
      v11(a5, a1);
    }
  }

  v12 = MEMORY[0x1E6960C70];
  v13 = *MEMORY[0x1E6960C70];
  *(a1 + 32) = *MEMORY[0x1E6960C70];
  v14 = *(v12 + 16);
  *(a1 + 48) = v14;
  *(a1 + 56) = v13;
  *(a1 + 72) = v14;
  *(a1 + 152) = 0;
  v15 = *a2;
  *(a1 + 24) = *(a2 + 2);
  *(a1 + 8) = v15;
  v16 = *(a3 + 16);
  *(a1 + 104) = *a3;
  *(a1 + 120) = v16;
  v17 = a4[1].n128_u64[0];
  result = *a4;
  *(a1 + 128) = *a4;
  *(a1 + 144) = v17;
  return result;
}

void videoMentorThrottleDroppableFrames(uint64_t a1, uint64_t a2, CMTime *a3, CMTime *a4)
{
  v62 = *MEMORY[0x1E69E9840];
  *&v53.value = *MEMORY[0x1E6960C70];
  v8 = *(MEMORY[0x1E6960C70] + 16);
  v53.epoch = v8;
  v51.epoch = v8;
  cf = 0;
  v46 = *&v53.value;
  *&v51.value = *&v53.value;
  v50 = 0;
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v9 || v9(a2, &v51))
  {
    goto LABEL_32;
  }

  if ((*(a1 + 44) & 0x1D) != 1 || (time1 = v51, time2 = *(a1 + 32), CMTimeCompare(&time1, &time2) >= 1))
  {
    if (!*(a1 + 152))
    {
      if (!*a1)
      {
        v12 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (!v12 || v12(a2, a1))
        {
LABEL_32:
          if (cf)
          {
            CFRelease(cf);
          }

          return;
        }
      }

      if ((*(a1 + 44) & 0x1D) != 1)
      {
        if ((*(a1 + 20) & 0x1D) == 1)
        {
          memset(&time1, 0, sizeof(time1));
          v10 = *(a1 + 96);
          time2 = *a3;
          CMTimeMultiplyByFloat64(&time1, &time2, v10);
          lhs = *(a1 + 8);
          rhs = time1;
          CMTimeAdd(&time2, &lhs, &rhs);
          *(a1 + 56) = *&time2.value;
          epoch = time2.epoch;
        }

        else
        {
          *(a1 + 56) = *&v51.value;
          epoch = v51.epoch;
        }

        *(a1 + 72) = epoch;
      }

      time1 = *(a1 + 56);
      time2 = *(a1 + 128);
      if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
      {
LABEL_16:
        time1 = *(a1 + 56);
        time2 = *(a1 + 128);
        if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
        {
          memset(&time1, 0, sizeof(time1));
          time2 = *(a1 + 56);
          lhs = *(a1 + 128);
          CMTimeSubtract(&time1, &time2, &lhs);
          time2 = time1;
          Seconds = CMTimeGetSeconds(&time2);
          time2 = *a3;
          *(a1 + 96) = Seconds / CMTimeGetSeconds(&time2);
          *(a1 + 32) = *(a1 + 56);
          *(a1 + 48) = *(a1 + 72);
          while (1)
          {
            v14 = *a1;
            v15 = *(*(CMBaseObjectGetVTable() + 16) + 40);
            if (!v15)
            {
              break;
            }

            if (v15(v14, &v53))
            {
              break;
            }

            time2 = v53;
            lhs = *(a1 + 128);
            if ((CMTimeCompare(&time2, &lhs) & 0x80000000) == 0)
            {
              break;
            }

            if (!videoMentorIsDroppableFrame(*a1))
            {
              v16 = *a1;
              v17 = *(*(CMBaseObjectGetVTable() + 16) + 8);
              if (!v17 || v17(v16, &cf))
              {
                goto LABEL_32;
              }

              if (videoMentorPushCursorIntoSelectedCursors(a1, cf) < 0)
              {
                videoMentorThrottleDroppableFrames_cold_3();
                goto LABEL_32;
              }

              if (cf)
              {
                CFRelease(cf);
                cf = 0;
              }
            }

            v18 = *a1;
            v19 = *(*(CMBaseObjectGetVTable() + 16) + 176);
            if (v19)
            {
              if (!v19(v18, 1, &v50) && v50 == 1)
              {
                continue;
              }
            }

            goto LABEL_32;
          }
        }

        goto LABEL_32;
      }

      v21 = 0;
      v22 = -1;
      IsDroppableFrame = 1;
      while (1)
      {
        v24 = *a1;
        v25 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (!v25 || v25(v24, &v53))
        {
          goto LABEL_32;
        }

        time1 = v53;
        time2 = *(a1 + 56);
        if (CMTimeCompare(&time1, &time2) > 0 || *(a1 + 152))
        {
          break;
        }

        v30 = cf;
        if (cf && !IsDroppableFrame)
        {
          v31 = videoMentorPushCursorIntoSelectedCursors(a1, cf);
          if (v31 < 0)
          {
            videoMentorThrottleDroppableFrames_cold_1();
            goto LABEL_32;
          }

          v22 = v31;
          v21 = 1;
          v30 = cf;
        }

        if (v30)
        {
          CFRelease(v30);
          cf = 0;
        }

        v32 = *a1;
        v33 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (!v33)
        {
          goto LABEL_32;
        }

        if (v33(v32, &cf))
        {
          goto LABEL_32;
        }

        IsDroppableFrame = videoMentorIsDroppableFrame(cf);
        v34 = *a1;
        v35 = *(*(CMBaseObjectGetVTable() + 16) + 176);
        if (!v35 || v35(v34, 1, &v50))
        {
          goto LABEL_32;
        }

        if (v50 != 1)
        {
          *(a1 + 152) = 1;
        }

LABEL_89:
        time1 = *(a1 + 56);
        time2 = *(a1 + 128);
        if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
        {
          goto LABEL_16;
        }
      }

      if (cf)
      {
        if (!IsDroppableFrame || !v21)
        {
          v26 = videoMentorPushCursorIntoSelectedCursors(a1, cf);
          if (v26 < 0)
          {
            videoMentorThrottleDroppableFrames_cold_2();
            goto LABEL_32;
          }

          v22 = v26;
          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }
        }
      }

      else if (!v21)
      {
        v27 = 1;
LABEL_65:
        v48 = *&a3->value;
        v49 = a3->epoch;
        v47 = *a4;
        *&time1.value = v46;
        time1.epoch = v8;
        timescale = 0;
        value = 0;
        lhs = *a3;
        if ((v47.flags & 0x1D) == 1)
        {
          time2 = *a3;
          rhs = *a4;
          CMTimeAdd(&lhs, &time2, &rhs);
        }

        else
        {
          v47 = *a3;
        }

        v36 = &v48;
        if (v27)
        {
          v36 = &v47;
        }

        time2 = *v36;
        v37 = *a1;
        v38 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (v38 && !v38(v37, &time1) && (time1.flags & 0x1D) == 1 && (rhs = time1, v55 = *(a1 + 128), CMTimeCompare(&rhs, &v55) < 0))
        {
          *&v55.value = *&time1.value;
          v39 = time1.epoch;
        }

        else
        {
          *&v55.value = *(a1 + 128);
          v39 = *(a1 + 144);
        }

        v55.epoch = v39;
        v54 = *(a1 + 56);
        CMTimeSubtract(&rhs, &v55, &v54);
        value = rhs.value;
        flags = rhs.flags;
        timescale = rhs.timescale;
        v41 = rhs.epoch;
        if ((rhs.flags & 0x1D) != 1)
        {
          goto LABEL_83;
        }

        rhs.value = value;
        rhs.timescale = timescale;
        v55 = lhs;
        if (CMTimeCompare(&rhs, &v55) < 1)
        {
          goto LABEL_83;
        }

        rhs.value = value;
        rhs.timescale = timescale;
        rhs.flags = flags;
        rhs.epoch = v41;
        v42 = CMTimeGetSeconds(&rhs);
        rhs = v47;
        v43 = v42 / CMTimeGetSeconds(&rhs);
        if (v43 > 2147483650.0)
        {
          v43 = 2147483650.0;
        }

        if (v43 - floor(v43) < 0.01)
        {
          v43 = v43 + -1.0;
        }

        if (v43 > 1.0)
        {
          rhs = v47;
          CMTimeMultiply(&v55, &rhs, v43);
          v54 = *(a1 + 56);
          CMTimeAdd(&rhs, &v54, &v55);
          *(a1 + 32) = *&rhs.value;
          v44 = rhs.epoch;
          *(a1 + 48) = rhs.epoch;
          *&v55.value = *(a1 + 32);
          v55.epoch = v44;
          *&v54.value = *&v47.value;
          v45 = v47.epoch;
        }

        else
        {
LABEL_83:
          *(a1 + 32) = *(a1 + 56);
          *(a1 + 48) = *(a1 + 72);
          v55 = *(a1 + 56);
          *&v54.value = *&time2.value;
          v45 = time2.epoch;
        }

        v54.epoch = v45;
        CMTimeAdd(&rhs, &v55, &v54);
        *(a1 + 56) = rhs;
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        time1 = v51;
        time2 = *(a1 + 32);
        if (CMTimeCompare(&time1, &time2) < 1 || *(a1 + 152))
        {
          goto LABEL_16;
        }

        v21 = 0;
        v22 = -1;
        IsDroppableFrame = 1;
        goto LABEL_89;
      }

      v27 = 0;
      if (!*(a1 + 152) && (v22 & 0x8000000000000000) == 0)
      {
        v27 = 0;
        if (*(a1 + 88) > v22)
        {
          v28 = *(a1 + 80) + 32 * v22;
          v29 = *(a1 + 56);
          *(v28 + 24) = *(a1 + 72);
          *(v28 + 8) = v29;
        }
      }

      goto LABEL_65;
    }
  }
}

uint64_t videoMentorPopCursorFromSelectedCursors(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 88);
  if (!v4)
  {
    return *(a1 + 80) == 0;
  }

  v7 = 0;
  v8 = 0;
  while (1)
  {
    v9 = *(a1 + 80);
    v10 = *(v9 + v7);
    if (v10)
    {
      break;
    }

LABEL_14:
    ++v8;
    v7 += 32;
    if (v8 >= v4)
    {
      return *(a1 + 80) == 0;
    }
  }

  v11 = *(CMBaseObjectGetVTable() + 16);
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(CMBaseObjectGetVTable() + 16);
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v12 == v14 && *(v12 + 32) && (*(v14 + 32))(a2, v10))
  {
    v4 = *(a1 + 88);
    goto LABEL_14;
  }

  if (a3)
  {
    v16 = *(v9 + v7 + 8);
    *(a3 + 16) = *(v9 + v7 + 24);
    *a3 = v16;
  }

  v17 = *(v9 + v7);
  if (v17)
  {
    CFRelease(v17);
    *(v9 + v7) = 0;
  }

  v18 = MEMORY[0x1E6960C70];
  v19 = v9 + v7;
  *(v19 + 8) = *MEMORY[0x1E6960C70];
  *(v19 + 24) = *(v18 + 16);
  return 1;
}

CMTime *videoMentorThreadReduceReversedGroupToSatisfyPassLimit(CMTime *result, uint64_t a2, int a3, unsigned int a4, int a5)
{
  v5 = a2;
  v6 = result;
  v35 = *MEMORY[0x1E69E9840];
  v7 = a3 + 1;
  if (a3 < 0)
  {
    v7 = a2;
  }

  v8 = v7 * a4;
  if (a2 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    v10 = &result[1].value + 5;
    v11 = a2;
    do
    {
      v12 = *v10;
      v10 += 32;
      if (v12)
      {
        ++v9;
      }

      --v11;
    }

    while (v11);
  }

  value = *MEMORY[0x1E6960C80];
  flags = *(MEMORY[0x1E6960C80] + 12);
  timescale = *(MEMORY[0x1E6960C80] + 8);
  v14 = v9 - v8;
  if (v9 <= v8 || a2 < 1)
  {
    v16 = 0;
  }

  else
  {
    v17 = 0;
    epoch = *(MEMORY[0x1E6960C80] + 16);
    v19 = &result[1].value + 4;
    v20 = a2;
    do
    {
      v21 = *v19;
      v19 += 32;
      if (v21)
      {
        ++v17;
      }

      --v20;
    }

    while (v20);
    v16 = 0;
    v29 = a5;
    if (a5 && a2 >= 1)
    {
      v22 = 0;
      v16 = 0;
      v23 = result;
      do
      {
        memset(&v32, 0, sizeof(v32));
        result = CMSampleBufferGetOutputPresentationTimeStamp(&v32, v23->value);
        if (BYTE5(v23[1].value))
        {
          time1 = v32;
          time2.value = value;
          time2.timescale = timescale;
          time2.flags = flags;
          time2.epoch = epoch;
          result = CMTimeCompare(&time1, &time2);
          if (result >= 1)
          {
            value = v32.value;
            flags = v32.flags;
            timescale = v32.timescale;
            epoch = v32.epoch;
            v16 = v22;
          }
        }

        v23 = (v23 + 32);
        ++v22;
      }

      while (v5 != v22);
    }

    if (v14 >= v17)
    {
      a5 = v29;
      if (v5 >= 1)
      {
        v26 = 0;
        v27 = v9 - v17;
        v28 = &v6[1].value + 5;
        do
        {
          if (*(v28 - 1))
          {
            *v28 = 0;
          }

          else if (*v28)
          {
            v26 += v14 - v17;
            if (v26 >= v27)
            {
              *v28 = 0;
              v26 -= v27;
            }
          }

          v28 += 32;
          --v5;
        }

        while (v5);
      }
    }

    else
    {
      a5 = v29;
      if (v5 >= 1)
      {
        v24 = 0;
        v25 = &v6[1].value + 5;
        do
        {
          if (*(v25 - 1))
          {
            v24 += v14;
            if (v24 >= v17)
            {
              *v25 = 0;
              v24 -= v17;
            }
          }

          v25 += 32;
          --v5;
        }

        while (v5);
      }
    }
  }

  if (a5)
  {
    if ((flags & 0x1D) == 1)
    {
      *(&v6[1].value + 32 * v16 + 5) = 1;
    }
  }

  return result;
}

uint64_t videoMentorThreadSendReversedGroup(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unsigned __int8 a5, int a6, const void *a7, int a8, uint64_t a9)
{
  v82 = *MEMORY[0x1E69E9840];
  if (a4 >= 0)
  {
    v11 = a4 + 1;
  }

  else
  {
    v11 = a3;
  }

  if (*(a1 + 940) < a4)
  {
    *(a1 + 940) = a4;
  }

  v74 = *(MEMORY[0x1E6960C70] + 12);
  v12 = *(MEMORY[0x1E6960C70] + 16);
  v73 = *(MEMORY[0x1E6960C80] + 16);
  v72 = *(MEMORY[0x1E6960C80] + 12);
  v63 = *MEMORY[0x1E6960450];
  v67 = *MEMORY[0x1E6960520];
  v13 = a3 - 1;
  v60 = (a2 + 30);
  v66 = *MEMORY[0x1E695E4D0];
  v65 = *MEMORY[0x1E6960560];
  v64 = *MEMORY[0x1E6960558];
  key = *MEMORY[0x1E6960540];
  v61 = *MEMORY[0x1E6960460];
  v62 = *MEMORY[0x1E6960458];
  do
  {
LABEL_7:
    if (a8)
    {
      sampleSizeArray.value = *MEMORY[0x1E6960C80];
      sampleSizeArray.timescale = *(MEMORY[0x1E6960C80] + 8);
      if (a3 < 1)
      {
        sampleSizeArray.value = *MEMORY[0x1E6960C70];
        sampleSizeArray.timescale = *(MEMORY[0x1E6960C70] + 8);
      }

      else
      {
        v14 = 0;
        v15 = a2;
        v16 = a3;
        epoch = v73;
        flags = v72;
        do
        {
          if (*(v15 + 29))
          {
            memset(&sampleTimingArray, 0, 24);
            CMSampleBufferGetOutputPresentationTimeStamp(&sampleTimingArray.duration, *v15);
            time1 = sampleTimingArray.duration;
            time2.value = sampleSizeArray.value;
            time2.timescale = sampleSizeArray.timescale;
            time2.flags = flags;
            time2.epoch = epoch;
            if (CMTimeCompare(&time1, &time2) >= 1)
            {
              sampleSizeArray.value = sampleTimingArray.duration.value;
              flags = sampleTimingArray.duration.flags;
              sampleSizeArray.timescale = sampleTimingArray.duration.timescale;
              epoch = sampleTimingArray.duration.epoch;
            }

            ++v14;
          }

          v15 += 32;
          --v16;
        }

        while (v16);
        if ((flags & 0x1D) == 1 && v14 > 1 || (sampleSizeArray.value = *MEMORY[0x1E6960C70], sampleSizeArray.timescale = *(MEMORY[0x1E6960C70] + 8), epoch = v12, flags = v74, v14 > 1))
        {
LABEL_21:
          sampleTimingArray.duration.value = sampleSizeArray.value;
          sampleTimingArray.duration.timescale = sampleSizeArray.timescale;
          sampleTimingArray.duration.flags = flags;
          sampleTimingArray.duration.epoch = epoch;
          videoMentorPostMinAndMaxUpcomingOutputPTS(a1, MEMORY[0x1E6960C70], &sampleTimingArray);
          *a9 = sampleSizeArray.value;
          *(a9 + 8) = sampleSizeArray.timescale;
          *(a9 + 12) = flags;
          *(a9 + 16) = epoch;
          goto LABEL_22;
        }
      }

      epoch = v12;
      flags = v74;
      if (*(a9 + 12))
      {
        goto LABEL_21;
      }
    }

LABEL_22:
    v19 = videoMentorThreadWaitForOutputQueueToDropBelowHighWater(a1, a7);
    if (v19 || v11 < 1)
    {
      if (v19)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return 0;
      }
    }

    v20 = 0;
    v21 = -1;
LABEL_25:
    *&sampleTimingArray.duration.value = *MEMORY[0x1E6960C70];
    sampleTimingArray.duration.epoch = v12;
    if (a3 < 1)
    {
      return 0;
    }

    v22 = 0;
    v23 = 1;
    v24 = -1;
LABEL_27:
    v25 = a2 + 32 * v22;
    v26 = v22;
    do
    {
      if (*(v25 + 29))
      {
        memset(&time1, 0, sizeof(time1));
        CMSampleBufferGetPresentationTimeStamp(&time1, *v25);
        if ((v23 & 1) != 0 || (time2 = sampleTimingArray.duration, sampleSizeArray = time1, CMTimeCompare(&time2, &sampleSizeArray) < 0))
        {
          sampleTimingArray.duration = time1;
          v24 = v26;
        }

        v23 = 0;
        v22 = v26 + 1;
        if (v13 != v26)
        {
          goto LABEL_27;
        }

LABEL_37:
        *(a2 + 32 * v24 + 29) = 256;
        if (v21 <= v24)
        {
          v21 = v24;
        }

        if (++v20 == v11)
        {
          goto LABEL_42;
        }

        goto LABEL_25;
      }

      ++v26;
      v25 += 32;
    }

    while (a3 != v26);
    if ((v23 & 1) == 0)
    {
      goto LABEL_37;
    }

    if (!v20)
    {
      return 0;
    }

LABEL_42:
    ;
  }

  while (v21 < 0);
  v27 = v21 + 1;
  v28 = 1;
  v29 = v60;
  while (1)
  {
    v30 = *v29;
    if (*v29)
    {
      *(v29 - 1) = 0;
    }

    else if (*(v29 - 2))
    {
      goto LABEL_89;
    }

    v31 = *(v29 - 30);
    v58 = *(v29 - 6);
    v59 = v28;
    sbuf = v31;
    if (v58 >= 1)
    {
      break;
    }

    CFRetain(v31);
    v49 = *(v29 - 6);
    v50 = a1;
    v40 = v59;
LABEL_66:
    *(v29 - 6) = v49 + 1;
    if (a6)
    {
      memset(&sampleTimingArray, 0, 24);
      if (v30)
      {
        if (v58 >= 1)
        {
          v51 = *(v29 - 22);
          if (v51)
          {
            CMSetAttachment(sbuf, v65, v51, 1u);
          }

          v52 = *(v29 - 14);
          if (v52)
          {
            CMSetAttachment(sbuf, v64, v52, 1u);
          }
        }
      }

      else
      {
        if (v58 <= 0)
        {
          v53 = CMGetAttachment(sbuf, v65, 0);
          *(v29 - 22) = v53;
          if (v53)
          {
            CFRetain(v53);
          }

          v54 = CMGetAttachment(sbuf, v64, 0);
          *(v29 - 14) = v54;
          if (v54)
          {
            CFRetain(v54);
          }
        }

        CMSampleBufferGetDuration(&sampleTimingArray.duration, sbuf);
        time1 = sampleTimingArray.duration;
        audioMentorSetAttachmentAsFigTimeDictionary(sbuf, v65, &time1);
        CMSetAttachment(sbuf, v64, 0, 1u);
        v40 = v59;
      }
    }

    v55 = videoMentorThreadSendSampleBuffer(v50, sbuf, 0, v30 == 0, 0, a5, 0, v40);
    if (!v55)
    {
      if (!v30)
      {
        ++*(a1 + 948);
      }

      if (*(a1 + 116))
      {
        v55 = 0xFFFFFFFFLL;
      }

      else
      {
        v55 = 0;
      }
    }

    if (sbuf)
    {
      CFRelease(sbuf);
    }

    if (v55)
    {
      return v55;
    }

    a5 = 0;
    v28 = 0;
LABEL_89:
    v29 += 32;
    if (!--v27)
    {
      goto LABEL_7;
    }
  }

  time2.value = 0;
  memset(&sampleTimingArray, 0, sizeof(sampleTimingArray));
  sampleSizeArray.value = CMSampleBufferGetSampleSize(v31, 0);
  SampleTimingInfo = CMSampleBufferGetSampleTimingInfo(v31, 0, &sampleTimingArray);
  if (SampleTimingInfo)
  {
    return SampleTimingInfo;
  }

  v57 = v30;
  v33 = CFGetAllocator(v31);
  DataBuffer = CMSampleBufferGetDataBuffer(v31);
  FormatDescription = CMSampleBufferGetFormatDescription(v31);
  v36 = CMSampleBufferCreate(v33, DataBuffer, 0, 0, 0, FormatDescription, 1, 1, &sampleTimingArray, 1, &sampleSizeArray, &time2);
  value = time2.value;
  if (!v36)
  {
    v36 = CMSampleBufferTrackDataReadiness(time2.value, v31);
    value = time2.value;
    if (!v36)
    {
      CMSampleBufferGetOutputPresentationTimeStamp(&time1, v31);
      CMSampleBufferSetOutputPresentationTimeStamp(value, &time1);
      v38 = CMGetAttachment(v31, key, 0);
      if (v38)
      {
        CMSetAttachment(time2.value, key, v38, 1u);
      }

      SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(v31, 0);
      v40 = v59;
      if (SampleAttachmentsArray)
      {
        v41 = SampleAttachmentsArray;
        v42 = CMSampleBufferGetSampleAttachmentsArray(time2.value, 1u);
        if (v42)
        {
          v43 = v42;
          ValueAtIndex = CFArrayGetValueAtIndex(v41, 0);
          v45 = CFArrayGetValueAtIndex(v43, 0);
          v46 = CFDictionaryGetValue(ValueAtIndex, v62);
          if (v46)
          {
            CFDictionarySetValue(v45, v62, v46);
          }

          v47 = CFDictionaryGetValue(ValueAtIndex, v61);
          if (v47)
          {
            CFDictionarySetValue(v45, v61, v47);
          }

          v48 = CFDictionaryGetValue(ValueAtIndex, v63);
          v40 = v59;
          if (v48)
          {
            CFDictionarySetValue(v45, v63, v48);
          }
        }
      }

      FigSampleBufferGetDecryptor();
      FigSampleBufferSetDecryptor();
      sbuf = time2.value;
      CMSetAttachment(time2.value, v67, v66, 1u);
      v49 = *(v29 - 6);
      v50 = a1;
      if (v49 > *(a1 + 944))
      {
        *(a1 + 944) = v49;
      }

      v30 = v57;
      goto LABEL_66;
    }
  }

  v55 = v36;
  if (value)
  {
    CFRelease(value);
  }

  return v55;
}

void videoMentorThreadReleaseSampleBuffersInReversalArray(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2;
    if (a2 >= 1)
    {
      v3 = (a1 + 16);
      do
      {
        v4 = *(v3 - 2);
        if (v4)
        {
          CFRelease(v4);
          *(v3 - 2) = 0;
        }

        v5 = *(v3 - 1);
        if (v5)
        {
          CFRelease(v5);
          *(v3 - 1) = 0;
        }

        if (*v3)
        {
          CFRelease(*v3);
          *v3 = 0;
        }

        v3 += 4;
        --v2;
      }

      while (v2);
    }
  }
}

uint64_t videoMentorPushCursorIntoSelectedCursors(uint64_t a1, CFTypeRef cf)
{
  v4 = *(a1 + 88);
  if (v4)
  {
    v5 = 0;
    v6 = *(a1 + 80);
    while (*v6)
    {
      ++v5;
      v6 += 32;
      if (v4 == v5)
      {
        v5 = *(a1 + 88);
        goto LABEL_8;
      }
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (v5 == v4)
  {
LABEL_8:
    if (v4 - 0x400000000000000 < 0xFC00000000000001 || (v7 = malloc_type_realloc(*(a1 + 80), v4 << 6, 0x5BB01B74uLL)) == 0)
    {
      videoMentorThrottlingStateClearSelectedCursors(a1);
      v11 = *(a1 + 80);
      if (v11)
      {
        *(a1 + 80) = 0;
        free(v11);
      }

      *(a1 + 88) = 0;
      return -1;
    }

    v8 = v7;
    bzero(&v7[32 * *(a1 + 88)], (v4 << 6) - 32 * *(a1 + 88));
    v9 = 2 * *(a1 + 88);
    *(a1 + 80) = v8;
    *(a1 + 88) = v9;
    if (v4 >= v9)
    {
      return -1;
    }

    v6 = &v8[32 * v4];
  }

  if (!v6 || *v6)
  {
    return -1;
  }

  if (cf)
  {
    v10 = CFRetain(cf);
  }

  else
  {
    v10 = 0;
  }

  *v6 = v10;
  v13 = MEMORY[0x1E6960C70];
  *(v6 + 8) = *MEMORY[0x1E6960C70];
  *(v6 + 3) = *(v13 + 16);
  return v5;
}

uint64_t videoMentorIsDroppableFrame(uint64_t a1)
{
  v8 = 0;
  v7 = 0;
  v6 = 0;
  if (*(*(CMBaseObjectGetVTable() + 16) + 72))
  {
    v2 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (v2)
    {
      if (!v2(a1, &v8 + 1, &v8, 0))
      {
        v3 = HIBYTE(v8) - 66;
        if (v3 <= 0xE && ((1 << v3) & 0x4081) != 0)
        {
          return HIBYTE(v8) == 66;
        }
      }
    }
  }

  else
  {
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v5 && !v5(a1, &v7 + 1, &v7, 0, &v6))
    {
      return v6;
    }
  }

  FigSignalErrorAtGM();
  return 0;
}

__n128 OUTLINED_FUNCTION_3_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, __n128 *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  *(v47 + 32) = *a47;
  *(v47 + 48) = *(a47 + 16);
  result = *a39;
  *v47 = *a39;
  *(v47 + 16) = a39[1].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_14_11()
{
  *(v1 + 32) = *(v2 + 112);
  *(v1 + 48) = *(v2 + 128);
  result = *v0;
  *v1 = *v0;
  *(v1 + 16) = v0[1].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_19_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, __n128 a43)
{
  result = a43;
  v44[2] = a43;
  v44[3].n128_u64[0] = v43;
  return result;
}

uint64_t OUTLINED_FUNCTION_22_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  v52 = *(v50 + 296);

  return videoMentorDependencyStateGetNodeForCursor(v49, v49 + 744, v52, a30, 0, &a49);
}

uint64_t OUTLINED_FUNCTION_23_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, CMTime *time2, uint64_t a50, CMTime *time1, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, __int128 time2a, uint64_t time2_16, uint64_t a59, uint64_t time1a)
{
  time2a = *v60;
  time2_16 = *(v60 + 2);

  return CMTimeCompare(&time1a, &time2a);
}

__n128 OUTLINED_FUNCTION_24_6()
{
  result = v0[17];
  v1[10] = result;
  v1[11].n128_u64[0] = v0[18].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_27_5@<Q0>(unint64_t a1@<X8>)
{
  v2[9].n128_u64[0] = a1;
  result = v1[20];
  v2[6] = result;
  v2[7].n128_u64[0] = v1[21].n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_28_7@<X0>(uint64_t a1@<X8>, CMTime *time2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, CMTime *time1, uint64_t time2_8, uint64_t time2_16, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t time1a)
{
  time2_16 = a1;

  return CMTimeCompare(&time1a, &time1);
}

uint64_t OUTLINED_FUNCTION_29_6()
{

  return CMBaseObjectGetVTable();
}

CFMutableArrayRef OUTLINED_FUNCTION_30_5()
{

  return CFArrayCreateMutable(v0, 0, v1);
}

__n128 OUTLINED_FUNCTION_40_3@<Q0>(__n128 *a1@<X8>)
{
  result = *a1;
  *(v1 - 240) = *a1;
  *(v1 - 224) = a1[1].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_43_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __n128 *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, __n128 a43)
{
  result = a43;
  *a25 = a43;
  a25[1].n128_u64[0] = v43;
  return result;
}

void OUTLINED_FUNCTION_53_3(CFIndex otherRange)
{
  v4.length = otherRange;
  v4.location = 0;

  CFArrayAppendArray(v1, v2, v4);
}

uint64_t OUTLINED_FUNCTION_54_5()
{

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_55_5()
{

  return CMBaseObjectGetVTable();
}

uint64_t FigCEA608DataInspectorCreate(const void *a1, void *a2)
{
  if (a2)
  {
    v4 = MEMORY[0x19A8CC720](a1, 24, 0x10600408A10481FLL, 0);
    if (v4)
    {
      v5 = v4;
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      if (a1)
      {
        v6 = CFRetain(a1);
      }

      else
      {
        v6 = 0;
      }

      v7 = 0;
      *v5 = v6;
      *a2 = v5;
    }

    else
    {
      FigCEA608DataInspectorCreate_cold_1(&v9);
      v7 = v9;
    }
  }

  else
  {
    FigCEA608DataInspectorCreate_cold_2(&v10);
    v7 = v10;
  }

  FigCEA608DataInspectorRelease(0);
  return v7;
}

void FigCEA608DataInspectorRelease(CFAllocatorRef *ptr)
{
  if (ptr)
  {
    v1 = *ptr;
    CFAllocatorDeallocate(*ptr, ptr);
    if (v1)
    {

      CFRelease(v1);
    }
  }
}

uint64_t FigCEA608DataInspectorInspectBytePair(uint64_t a1, _BYTE *a2, unint64_t a3, uint64_t a4, __CFString **a5)
{
  v13 = 0;
  if (!a1)
  {
    FigCEA608DataInspectorInspectBytePair_cold_5(&v14);
    return v14;
  }

  if (!a2)
  {
    FigCEA608DataInspectorInspectBytePair_cold_4(&v14);
    return v14;
  }

  if (!a3)
  {
    FigCEA608DataInspectorInspectBytePair_cold_3(&v14);
    return v14;
  }

  if (!a4)
  {
    FigCEA608DataInspectorInspectBytePair_cold_2(&v14);
    return v14;
  }

  LOBYTE(v13) = *a2 & 0x7F;
  if (a3 != 1)
  {
    HIBYTE(v13) = a2[1] & 0x7F;
  }

  if (!a5)
  {
    return inspectorInspectBytePair(a1, &v13, a3, a4, 0);
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (!Mutable)
  {
    FigCEA608DataInspectorInspectBytePair_cold_1(&v14);
    return v14;
  }

  v11 = Mutable;
  v9 = inspectorInspectBytePair(a1, &v13, a3, a4, Mutable);
  if (v9)
  {
    CFRelease(v11);
  }

  else
  {
    *a5 = v11;
  }

  return v9;
}

CFStringRef OUTLINED_FUNCTION_3_30(const __CFAllocator *a1, const UInt8 *a2)
{

  return CFStringCreateWithBytes(a1, a2, 2, 0x10000100u, 0);
}

void OUTLINED_FUNCTION_4_34(CFStringRef appendedString)
{

  CFStringAppend(v1, appendedString);
}

uint64_t faqts_waitAudioQueueStartSynchronous(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (!v1)
  {
    return 4294954348;
  }

  v5 = a1;
  v6 = 0;
  if (v1 == dispatch_get_current_queue())
  {
    v3 = (a1 + 24);
  }

  else
  {
    v3 = &v6;
    dispatch_sync_f(v1, &v5, faqts_getAudioQueueStartErrorInternal);
  }

  return *v3;
}

uint64_t faqts_convertTimingShimTimeStampToAQTimeStamp@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  if (*(a2 + 56))
  {
    v7 = result;
    *(a3 + 2) = 0u;
    *(a3 + 3) = 0u;
    *a3 = 0u;
    *(a3 + 1) = 0u;
    v18 = 0.0;
    CMTimeMake(&v17, *a2, *(result + 52));
    lhs = v17;
    rhs = *(v7 + 28);
    CMTimeSubtract(&v16, &lhs, &rhs);
    v8 = *(v7 + 52);
    lhs = v16;
    CMTimeConvertScale(&v13, &lhs, v8, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    value = v13.value;
    result = AudioQueueConvertToUnscaledSampleTime();
    v10 = v18;
    if (result)
    {
      v10 = value;
    }

    v11 = *(a2 + 16);
    *a3 = *a2;
    *(a3 + 1) = v11;
    v12 = *(a2 + 48);
    *(a3 + 2) = *(a2 + 32);
    *(a3 + 3) = v12;
    *a3 = v10;
  }

  else
  {
    v5 = *(a2 + 16);
    *a3 = *a2;
    *(a3 + 1) = v5;
    v6 = *(a2 + 48);
    *(a3 + 2) = *(a2 + 32);
    *(a3 + 3) = v6;
  }

  return result;
}

CMTime *faqts_convertAQTimeStampToTimingShimTimeStamp@<X0>(CMTime *result@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  if (*(a2 + 56))
  {
    v7 = result;
    v17 = 0.0;
    memset(&v16, 0, sizeof(v16));
    memset(&v15, 0, sizeof(v15));
    v8 = *a2;
    if (AudioQueueConvertToScaledSampleTime())
    {
      v17 = v8;
    }

    else
    {
      v8 = v17;
    }

    CMTimeMake(&v16, v8, HIDWORD(v7[2].value));
    lhs = v16;
    rhs = *(v7 + 28);
    CMTimeAdd(&v15, &lhs, &rhs);
    v9 = *(a2 + 16);
    *a3 = *a2;
    *(a3 + 1) = v9;
    v10 = *(a2 + 48);
    *(a3 + 2) = *(a2 + 32);
    *(a3 + 3) = v10;
    value_high = HIDWORD(v7[2].value);
    lhs = v15;
    result = CMTimeConvertScale(&v12, &lhs, value_high, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    *a3 = v12.value;
  }

  else
  {
    v5 = *(a2 + 16);
    *a3 = *a2;
    *(a3 + 1) = v5;
    v6 = *(a2 + 48);
    *(a3 + 2) = *(a2 + 32);
    *(a3 + 3) = v6;
  }

  return result;
}

void faqts_audioQueueStartAsync(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = malloc_type_malloc(0x38uLL, 0x10A0040BEAD7E86uLL);
  *v12 = a1;
  v12[1] = a2;
  v12[2] = a3;
  *(v12 + 24) = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = FigGetUpTimeNanoseconds();
  if (a1)
  {
    CFRetain(a1);
  }

  v13 = a1[8];

  dispatch_async_f(v13, v12, faqts_audioQueueStartInternal);
}

uint64_t registerFigAudioQueueTimingShimType()
{
  result = _CFRuntimeRegisterClass();
  sFigAudioQueueTimingShimID = result;
  return result;
}

void faqts_audioQueueStartInternal(CFTypeRef *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(*a1 + 17);
  if (*(a1 + 24))
  {
    if (v3)
    {
      if (!dword_1EAF16E18)
      {
LABEL_12:
        v6 = AudioQueueStartWithFlags();
        goto LABEL_14;
      }
    }

    else if (!dword_1EAF16E18)
    {
      goto LABEL_12;
    }

    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_12;
  }

  if (!v3)
  {
    if (!dword_1EAF16E18)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  if (dword_1EAF16E18)
  {
LABEL_7:
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_13:
  v6 = AudioQueueStart(*(v2 + 2), *(v2 + 17));
LABEL_14:
  *(v2 + 6) = v6;
  v7 = a1[1];
  if (v7)
  {
    v7(a1[2], v6);
  }

  v8 = a1[4];
  if (v8)
  {
    v8(a1[5], 0);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

uint64_t faqts_getAudioDeviceScreenLatencyFromDevice(uint64_t a1, void *a2)
{
  inQualifierData = a1;
  *&inAddress.mSelector = 0x676C6F6272756964;
  inAddress.mElement = 0;
  inObjectID = 0;
  ioDataSize = 4;
  PropertyData = AudioObjectGetPropertyData(1u, &inAddress, 8u, &inQualifierData, &ioDataSize, &inObjectID);
  if (!PropertyData && inObjectID)
  {
    *&inAddress.mSelector = 0x6F7574706170736CLL;
    inAddress.mElement = 0;
    ioDataSize = 4;
    return AudioObjectGetPropertyData(inObjectID, &inAddress, 0, 0, &ioDataSize, a2);
  }

  return PropertyData;
}

double faqts_init(_OWORD *a1)
{
  result = 0.0;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

void faqts_finalize(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    dispatch_release(v2);
    *(a1 + 64) = 0;
  }

  v3 = *(a1 + 56);
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t OUTLINED_FUNCTION_5_30()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

CMTime *OUTLINED_FUNCTION_7_16(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, CMTime *a17)
{
  *(v17 - 24) = 0;
  *(v17 - 40) = 0u;
  *(v17 - 56) = 0u;
  *(v17 - 72) = 0u;
  *(v17 - 24) = 1;
  v19 = *(a1 + 52);
  a9 = *a2;
  a10 = *(a2 + 16);

  return CMTimeConvertScale(&a17, &a9, v19, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
}

Float64 OUTLINED_FUNCTION_14_12@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, CMTime *time, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t timea, uint64_t time_8, uint64_t time_16)
{
  time_16 = a1;

  return CMTimeGetSeconds(&timea);
}

uint64_t OUTLINED_FUNCTION_15_10(AudioObjectID a1, const AudioObjectPropertyAddress *a2, uint64_t a3, uint64_t a4, UInt32 *a5, void *a6)
{

  return AudioObjectGetPropertyData(a1, a2, 0, 0, a5, a6);
}

__n128 OUTLINED_FUNCTION_16_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __n128 a11, __int128 a12)
{
  *v12 = a9;
  v12[1] = a10;
  result = a11;
  v12[2] = a11;
  v12[3] = a12;
  return result;
}

__n128 OUTLINED_FUNCTION_17_7@<Q0>(__n128 *a1@<X8>)
{
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = a1[1].n128_u64[0];
  return result;
}

CMTime *OUTLINED_FUNCTION_19_8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  v12 = *(v10 + 52);

  return CMTimeMake(v9, *&a9, v12);
}

void *EditMentorSetDebugName(void *result, CFTypeRef cf)
{
  if (result)
  {
    v3 = result;
    v4 = result[37];
    if (v4)
    {
      CFRelease(v4);
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    v3[37] = result;
  }

  return result;
}

uint64_t EditMentorSetModeToDoNothing_fun(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (dword_1EAF16E38)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  editMentorStartNewParentOrder(v2, 0, 0);
  *(v2 + 320) = 0;
  v6 = *(v2 + 672);
  if (v6)
  {
    CFRelease(v6);
    *(v2 + 672) = 0;
  }

  result = editMentorSetChildMentorModeToDoNothing(v2, v3, v4);
  *(a1 + 24) = result;
  return result;
}

void EditMentorSetModeToScrub_fun(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v34.value = *(a1 + 8);
  v6 = *(a1 + 32);
  v34.epoch = *(a1 + 24);
  timescale = 0;
  value = 0;
  if (dword_1EAF16E38)
  {
    LODWORD(v37.value) = 0;
    LOBYTE(type.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  editMentorStartNewParentOrder(v2, v6, v5);
  *(v2 + 320) = 1;
  v8 = *(v2 + 672);
  if (v8)
  {
    CFRelease(v8);
    *(v2 + 672) = 0;
  }

  FigSimpleMutexLock();
  v9 = *(v2 + 336);
  if (v9)
  {
    CFRelease(v9);
    *(v2 + 336) = 0;
  }

  FigSimpleMutexUnlock();
  v40 = 0u;
  memset(&v41, 0, sizeof(v41));
  memset(time, 0, sizeof(time));
  memset(&v37, 0, sizeof(v37));
  cf = 0;
  v10 = *(v2 + 128);
  if (v10)
  {
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v11 || (*&time1.start.value = *&v34.value, time1.start.epoch = v34.epoch, v11(v10, &time1, &cf)))
    {
      EditMentorSetModeToScrub_fun_cold_2();
      goto LABEL_20;
    }

    v12 = cf;
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (!v13 || v13(v12, time))
    {
      EditMentorSetModeToScrub_fun_cold_1();
      goto LABEL_20;
    }
  }

  else
  {
    v14 = *(v2 + 184);
    v40 = *(v2 + 168);
    *&v41.start.value = v14;
    v15 = *(v2 + 216);
    *&v41.start.epoch = *(v2 + 200);
    *&v41.duration.timescale = v15;
    v16 = *(v2 + 152);
    *time = *(v2 + 136);
    *&time[16] = v16;
  }

  *&time1.start.value = *&v34.value;
  time1.start.epoch = v34.epoch;
  type = v41.start;
  if ((CMTimeCompare(&time1.start, &type) & 0x80000000) == 0)
  {
    time1 = v41;
    CMTimeRangeGetEnd(&v37, &time1);
    time1.start = v37;
    type = v34;
    if ((CMTimeCompare(&time1.start, &type) & 0x80000000) == 0 && (time[12] & 0x1D) == 1)
    {
      v17 = 0;
      v18 = *&v41.start.value;
      *(v2 + 400) = v40;
      *(v2 + 416) = v18;
      v19 = *&v41.duration.timescale;
      *(v2 + 432) = *&v41.start.epoch;
      *(v2 + 448) = v19;
      v20 = *&time[16];
      *(v2 + 368) = *time;
      *(v2 + 384) = v20;
      goto LABEL_21;
    }
  }

LABEL_20:
  v17 = 1;
LABEL_21:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v17)
  {
    v37 = **&MEMORY[0x1E6960C70];
  }

  else
  {
    *&time1.start.value = *&v34.value;
    time1.start.epoch = v34.epoch;
    v21 = *(v2 + 416);
    v40 = *(v2 + 400);
    *&v41.start.value = v21;
    v22 = *(v2 + 448);
    *&v41.start.epoch = *(v2 + 432);
    *&v41.duration.timescale = v22;
    v23 = *(v2 + 384);
    *time = *(v2 + 368);
    *&time[16] = v23;
    editMentorMapTrackTimeToMediaTimeUsingEditSegment(&time1.start, time, &v37);
  }

  value = v37.value;
  flags = v37.flags;
  timescale = v37.timescale;
  if ((v37.flags & 0x1D) != 1)
  {
    *time = *&v34.value;
    *&time[16] = v34.epoch;
    v29 = editMentorSetChildMentorModeToEmptyEdit(v2, 0, time, 0, v5, v3);
    goto LABEL_37;
  }

  epoch = v37.epoch;
  time1.start.value = 0;
  v26 = editMentorRetainCurrentChildOrderAndOptionsDictionary(v2, &time1);
  v27 = *v2;
  if (*v2)
  {
    *time = value;
    *&time[8] = __PAIR64__(flags, timescale);
    *&time[16] = epoch;
    v28 = VideoMentorSetModeToScrub(v27, 0, time, time1.start.value, v4, v3, v26);
  }

  else
  {
    v30 = *(v2 + 8);
    if (v30)
    {
      v28 = AudioMentorSetModeToDoNothing(v30, 0, v3);
    }

    else
    {
      v31 = *(v2 + 16);
      if (v31)
      {
        *&time[16] = __PAIR64__(flags, timescale);
        *time = v31;
        *&time[8] = value;
        *&time[24] = epoch;
        *&v40 = time1.start.value;
        *(&v40 + 1) = v4;
        v41.start.value = v3;
        *&v41.start.timescale = v26;
        v41.start.epoch = 0;
        dispatch_sync_f(*(v31 + 304), time, EditMentorSetModeToScrub_fun);
        v29 = v41.start.epoch;
        goto LABEL_33;
      }

      if (!*(v2 + 24))
      {
        v29 = 0;
        goto LABEL_33;
      }

      v32 = *(v2 + 72);
      v33 = *(v2 + 40);
      *time = value;
      *&time[8] = __PAIR64__(flags, timescale);
      *&time[16] = epoch;
      v28 = v32(v33, time, time1.start.value, v4, v3, v26);
    }
  }

  v29 = v28;
LABEL_33:
  if (v26)
  {
    CFRelease(v26);
  }

  if (time1.start.value)
  {
    CFRelease(time1.start.value);
  }

LABEL_37:
  *(a1 + 64) = v29;
}

uint64_t EditMentorSetModeToForwardPlayback_fun(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(a1 + 72);
  v14 = *(a1 + 64);
  v4 = *(a1 + 80);
  v17 = *(a1 + 8);
  v18 = *(a1 + 24);
  v15 = *(a1 + 32);
  v5 = *(a1 + 56);
  v16 = *(a1 + 48);
  v19 = 1;
  if (dword_1EAF16E38)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  editMentorStartNewParentOrder(v2, v5, v4);
  *(v2 + 320) = 2;
  *(v2 + 620) = v17;
  *(v2 + 636) = v18;
  *(v2 + 644) = v15;
  *(v2 + 660) = v16;
  v7 = *(v2 + 672);
  if (v7)
  {
    CFRelease(v7);
    *(v2 + 672) = 0;
  }

  v24 = 0u;
  memset(time, 0, sizeof(time));
  v8 = *(v2 + 636);
  v20 = *(v2 + 620);
  v21 = v8;
  v22 = *(v2 + 652);
  if (editMentorSelectFirstEditSegmentForParentRange(v2, &v20, &v19, time))
  {
    *(v2 + 672) = v3;
    if (v3)
    {
      CFRetain(v3);
    }

    if (!v19)
    {
      v20 = time[0];
      v21 = time[1];
      v22 = v24;
      result = editMentorSetChildMentorModeToForwardPlayback(v2, &v20, v14);
      goto LABEL_13;
    }

    v20 = v17;
    *&v21 = v18;
    v9 = v2;
    v10 = 0;
    v11 = v4;
    v12 = 0;
  }

  else
  {
    v20 = v17;
    *&v21 = v18;
    v9 = v2;
    v10 = 1;
    v11 = v4;
    v12 = v3;
  }

  result = editMentorSetChildMentorModeToEmptyEdit(v9, 0, &v20, v10, v11, v12);
LABEL_13:
  *(a1 + 88) = result;
  return result;
}

uint64_t EditMentorSetModeToReversePlayback(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a1;
  v9 = *a2;
  v10 = *(a2 + 2);
  v11 = *a3;
  v12 = *(a3 + 2);
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = 0;
  dispatch_sync_f(*(a1 + 304), &v8, EditMentorSetModeToReversePlayback_fun);
  return v17;
}

uint64_t EditMentorSetModeToReversePlayback_fun(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(a1 + 72);
  v16 = *(a1 + 64);
  v4 = *(a1 + 80);
  v17 = *(a1 + 8);
  v18 = *(a1 + 24);
  v20 = *(a1 + 32);
  v5 = *(a1 + 44);
  v21 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v19 = 1;
  if (dword_1EAF16E38)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ((v5 & 1) == 0)
  {
    v20 = *MEMORY[0x1E6960C80];
    v5 = *(MEMORY[0x1E6960C80] + 12);
    v21 = *(MEMORY[0x1E6960C80] + 8);
    v6 = *(MEMORY[0x1E6960C80] + 16);
  }

  editMentorStartNewParentOrder(v2, v7, v4);
  *(v2 + 320) = 3;
  *(v2 + 620) = v20;
  *(v2 + 628) = v21;
  *(v2 + 632) = v5;
  *(v2 + 636) = v6;
  *(v2 + 644) = v17;
  *(v2 + 660) = v18;
  v9 = *(v2 + 672);
  if (v9)
  {
    CFRelease(v9);
    *(v2 + 672) = 0;
  }

  v26 = 0u;
  memset(time, 0, sizeof(time));
  v10 = *(v2 + 636);
  v22 = *(v2 + 620);
  v23 = v10;
  v24 = *(v2 + 652);
  if (editMentorSelectFirstEditSegmentForParentRange(v2, &v22, &v19, time))
  {
    *(v2 + 672) = v3;
    if (v3)
    {
      CFRetain(v3);
    }

    if (!v19)
    {
      v22 = time[0];
      v23 = time[1];
      v24 = v26;
      result = editMentorSetChildMentorModeToReversePlayback(v2, &v22, v16);
      goto LABEL_15;
    }

    v22 = v17;
    *&v23 = v18;
    v11 = v2;
    v12 = 0;
    v13 = v4;
    v14 = 0;
  }

  else
  {
    v22 = v17;
    *&v23 = v18;
    v11 = v2;
    v12 = 1;
    v13 = v4;
    v14 = v3;
  }

  result = editMentorSetChildMentorModeToEmptyEdit(v11, 0, &v22, v12, v13, v14);
LABEL_15:
  *(a1 + 88) = result;
  return result;
}

uint64_t EditMentorSetModeToEmptyEdit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = a3;
  v6[3] = a4;
  v6[4] = a5;
  v7 = 0;
  dispatch_sync_f(*(a1 + 304), v6, EditMentorSetModeToEmptyEdit_fun);
  return v7;
}

uint64_t EditMentorSetModeToEmptyEdit_fun(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  if (dword_1EAF16E38)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  editMentorStartNewParentOrder(v2, v5, v6);
  *(v2 + 320) = 0;
  v8 = *(v2 + 672);
  if (v8)
  {
    CFRelease(v8);
    *(v2 + 672) = 0;
  }

  result = editMentorSetChildMentorModeToEmptyEdit(v2, v3, MEMORY[0x1E6960C70], 0, v6, v4);
  *(a1 + 40) = result;
  return result;
}

uint64_t EditMentorSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  v4[2] = a3;
  v5 = 0;
  dispatch_sync_f(*(a1 + 304), v4, EditMentorSetProperty_fun);
  return v5;
}

uint64_t EditMentorSetProperty_fun(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  if (editMentorPropertyNeedsToBeRescaled())
  {
    FigSimpleMutexLock();
    v5 = *(v2 + 280);
    if (v4)
    {
      CFDictionarySetValue(v5, v3, v4);
    }

    else
    {
      CFDictionaryRemoveValue(v5, v3);
    }

    FigSimpleMutexUnlock();
  }

  result = editMentorSetChildMentorProperty(v2, v3, v4);
  *(a1 + 6) = result;
  return result;
}

void editMentorEditsChanged_orderQueue(uint64_t a1, uint64_t a2)
{
  dispatch_assert_queue_V2(*(a2 + 304));
  if (*(a2 + 566))
  {
    *(a2 + 566) = 0;
    v3 = *(a2 + 568);
    if (v3)
    {
      v4 = CFRetain(v3);
      editMentorAdvanceToNextEdit(a2, v4, *(a2 + 320), 0, 0);
      if (v4)
      {

        CFRelease(v4);
      }
    }

    else
    {
      v5 = *(a2 + 320);

      editMentorAdvanceToNextEdit(a2, 0, v5, 0, 0);
    }
  }
}

void editMentorAdvanceToNextEdit(uint64_t a1, const void *a2, int a3, int a4, int a5)
{
  v92 = *MEMORY[0x1E69E9840];
  memset(&v83, 0, sizeof(v83));
  editMentorStartNewChildOrder(a1, a2);
  if ((a3 & 0xFFFFFFFE) != 2)
  {

    editMentorPostOrderCompletionNotification(a1, a2, 0);
    return;
  }

  if (a4 && *(a1 + 289))
  {
    if (dword_1EAF16E38)
    {
      LODWORD(v84.start.value) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v14 = a1;
    v15 = a2;
    v16 = 1;
    goto LABEL_21;
  }

  *&type.start.value = *(a1 + 620);
  *&type.start.epoch = *(a1 + 636);
  *&type.duration.timescale = *(a1 + 652);
  if (!*(a1 + 562))
  {
    if (*(a1 + 560))
    {
      *(a1 + 560) = 0;
      v17 = (a1 + 565);
      *(a1 + 565) = editMentorCurrentEditIsLastOpenEndedEdit(a1);
LABEL_59:
      v49 = *(a1 + 416);
      *&range.duration.timescale = *(a1 + 400);
      *&v90.start.value = v49;
      v50 = *(a1 + 448);
      *&v90.start.epoch = *(a1 + 432);
      *&v90.duration.timescale = v50;
      v51 = *(a1 + 384);
      *&range.start.value = *(a1 + 368);
      *&range.start.epoch = v51;
      v91 = type;
      if (editMentorDoesEditSegmentIntersectTrackRange(&range, &v91))
      {
        if ((*(a1 + 380) & 1) == 0)
        {
          v52 = *(a1 + 561);
LABEL_110:
          *&v91.start.value = *(a1 + 416);
          v91.start.epoch = *(a1 + 432);
          if (v52 != (a3 == 3))
          {
            v74 = *(a1 + 432);
            *&range.start.value = *(a1 + 416);
            *&range.start.epoch = v74;
            *&range.duration.timescale = *(a1 + 448);
            CMTimeRangeGetEnd(&v91.start, &range);
            v52 = *(a1 + 561);
          }

          *&range.start.value = *&v91.start.value;
          range.start.epoch = v91.start.epoch;
          v73 = editMentorSetChildMentorModeToEmptyEdit(a1, 0, &range, v52, a2, 0);
          goto LABEL_113;
        }

        v91 = type;
        v55 = *(a1 + 416);
        *&range.duration.timescale = *(a1 + 400);
        *&v90.start.value = v55;
        v56 = *(a1 + 448);
        *&v90.start.epoch = *(a1 + 432);
        *&v90.duration.timescale = v56;
        v57 = *(a1 + 384);
        *&range.start.value = *(a1 + 368);
        *&range.start.epoch = v57;
        editMentorIntersectTrackRangeWithEditSegmentAndMapToMediaRange(a1, &v91.start, &range.start.value, &v83);
        editMentorUpdateChildMentorProperties(a1);
        v58 = *(a1 + 563);
        dispatch_assert_queue_V2(*(a1 + 304));
        Mutable = *(a1 + 608);
        v60 = MEMORY[0x1E695E4D0];
        if (v58 && !Mutable)
        {
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          *(a1 + 608) = Mutable;
          if (Mutable)
          {
            goto LABEL_70;
          }

          FigSignalErrorAtGM();
          Mutable = *(a1 + 608);
        }

        if (!Mutable)
        {
          goto LABEL_87;
        }

        if (!v58)
        {
          CFDictionaryRemoveValue(Mutable, @"ContinueFromPreviousOrder");
LABEL_87:
          v67 = *(a1 + 564);
          dispatch_assert_queue_V2(*(a1 + 304));
          v68 = *(a1 + 608);
          if (v67 && !v68)
          {
            v68 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            *(a1 + 608) = v68;
            if (v68)
            {
LABEL_93:
              CFDictionarySetValue(v68, @"OrderIsContinuousWithPreviousOrder", *v60);
              goto LABEL_95;
            }

            FigSignalErrorAtGM();
            v68 = *(a1 + 608);
          }

          if (v68)
          {
            if (!v67)
            {
              CFDictionaryRemoveValue(v68, @"OrderIsContinuousWithPreviousOrder");
              goto LABEL_95;
            }

            goto LABEL_93;
          }

LABEL_95:
          if (*(a1 + 566))
          {
            if (dword_1EAF16E38)
            {
              LODWORD(v84.start.value) = 0;
              v69 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              value = v84.start.value;
              if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
              {
                v71 = value;
              }

              else
              {
                v71 = value & 0xFFFFFFFE;
              }

              if (v71)
              {
                v72 = *(a1 + 296);
                LODWORD(v91.start.value) = 136315650;
                *(&v91.start.value + 4) = "editMentorAdvanceToNextEdit";
                LOWORD(v91.start.flags) = 2048;
                *(&v91.start.flags + 2) = a1;
                HIWORD(v91.start.epoch) = 2114;
                v91.duration.value = v72;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            if (*(a1 + 680))
            {
              editMentorPostSyntheticPrerollCompleteNotification(a1, a2);
            }

            return;
          }

          range = v83;
          if (a3 == 2)
          {
            v73 = editMentorSetChildMentorModeToForwardPlayback(a1, &range, 0);
          }

          else
          {
            v73 = editMentorSetChildMentorModeToReversePlayback(a1, &range, 0);
          }

LABEL_113:
          if (v73)
          {
            v75 = FigMentorNotificationPayloadCreate(@"MentorStoppingDueToError", a2, v73, *(a1 + 288), *(a1 + 672), a5);
            v76 = *(a1 + 672);
            if (v76)
            {
              CFRelease(v76);
              *(a1 + 672) = 0;
            }

            LODWORD(v84.start.value) = 0;
            v77 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v78 = v84.start.value;
            if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
            {
              v79 = v78;
            }

            else
            {
              v79 = v78 & 0xFFFFFFFE;
            }

            if (v79)
            {
              v80 = *(a1 + 296);
              if (*(a1 + 288))
              {
                v81 = "YES";
              }

              else
              {
                v81 = "NO";
              }

              LODWORD(v91.start.value) = 136315906;
              *(&v91.start.value + 4) = "editMentorAdvanceToNextEdit";
              LOWORD(v91.start.flags) = 2048;
              *(&v91.start.flags + 2) = a1;
              HIWORD(v91.start.epoch) = 2114;
              v91.duration.value = v80;
              LOWORD(v91.duration.timescale) = 2082;
              *(&v91.duration.timescale + 2) = v81;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            CMNotificationCenterGetDefaultLocalCenter();
            CMNotificationCenterPostNotification();
            if (v75)
            {
              CFRelease(v75);
            }
          }

          return;
        }

LABEL_70:
        CFDictionarySetValue(Mutable, @"ContinueFromPreviousOrder", *v60);
        goto LABEL_87;
      }

LABEL_62:
      if (*(a1 + 320) == 2)
      {
        memset(&v91, 0, 24);
        v53 = *(a1 + 432);
        *&range.start.value = *(a1 + 416);
        *&range.start.epoch = v53;
        *&range.duration.timescale = *(a1 + 448);
        CMTimeRangeGetEnd(&v91.start, &range);
        *&range.start.value = *&v91.start.value;
        range.start.epoch = v91.start.epoch;
        *&v84.start.value = *&type.duration.value;
        v84.start.epoch = type.duration.epoch;
        v54 = &v84;
      }

      else
      {
        *&range.start.value = *&type.start.value;
        range.start.epoch = type.start.epoch;
        *&v91.start.value = *(a1 + 416);
        v91.start.epoch = *(a1 + 432);
        v54 = &v91;
      }

      v61 = CMTimeCompare(&range.start, &v54->start);
      if (!*v17)
      {
        if (*(a1 + 561) || (v61 & 0x80000000) == 0)
        {
          goto LABEL_10;
        }

        if (dword_1EAF16E38)
        {
          LODWORD(v84.start.value) = 0;
          LOBYTE(start.value) = 0;
          v62 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v63 = v84.start.value;
          if (os_log_type_enabled(v62, start.value))
          {
            v64 = v63;
          }

          else
          {
            v64 = v63 & 0xFFFFFFFE;
          }

          if (v64)
          {
            v65 = *(a1 + 296);
            if (*(a1 + 320) == 2)
            {
              v66 = "forward";
            }

            else
            {
              v66 = "reverse";
            }

            LODWORD(v91.start.value) = 136315906;
            *(&v91.start.value + 4) = "editMentorSelectNextEditSegmentForParentRange";
            LOWORD(v91.start.flags) = 2048;
            *(&v91.start.flags + 2) = a1;
            HIWORD(v91.start.epoch) = 2114;
            v91.duration.value = v65;
            LOWORD(v91.duration.timescale) = 2082;
            *(&v91.duration.timescale + 2) = v66;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v52 = 1;
        *(a1 + 561) = 1;
        goto LABEL_110;
      }

      if ((v61 & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      *(a1 + 566) = 1;
      goto LABEL_95;
    }

    v20 = *(a1 + 636);
    *&v84.start.value = *(a1 + 620);
    *&v84.start.epoch = v20;
    *&v84.duration.timescale = *(a1 + 652);
    FigSimpleMutexLock();
    v21 = *(a1 + 336);
    if (!v21)
    {
      v24 = 1;
      goto LABEL_58;
    }

    start = *(a1 + 416);
    if (*(a1 + 320) == 2)
    {
      v22 = *(a1 + 432);
      *&range.start.value = *(a1 + 416);
      *&range.start.epoch = v22;
      *&range.duration.timescale = *(a1 + 448);
      CMTimeRangeGetEnd(&start, &range);
      v21 = *(a1 + 336);
      if (*(a1 + 320) == 2)
      {
        v23 = 1;
      }

      else
      {
        v23 = 0xFFFFFFFFLL;
      }
    }

    else
    {
      v23 = 0xFFFFFFFFLL;
    }

    v25 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v25)
    {
      v26 = v25(v21, v23);
      if (v26 == -12520)
      {
        editMentorSetCurrentConsolidatedEdit(a1, 0);
        v27 = *(a1 + 565);
        if (!*(a1 + 565))
        {
LABEL_57:
          v24 = v27 == 0;
LABEL_58:
          FigSimpleMutexUnlock();
          v17 = (a1 + 565);
          *(a1 + 565) = editMentorCurrentEditIsLastOpenEndedEdit(a1);
          if (v24)
          {
            goto LABEL_62;
          }

          goto LABEL_59;
        }

        memset(&v90, 0, sizeof(v90));
        memset(&range, 0, sizeof(range));
        v28 = *(a1 + 336);
        v29 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v29)
        {
          if (!v29(v28, &range))
          {
            v91 = range;
            CMTimeRangeGetEnd(&time1, &v91);
            v30 = *(a1 + 384);
            *&v91.start.value = *(a1 + 368);
            *&v91.start.epoch = v30;
            *&v91.duration.timescale = *(a1 + 400);
            CMTimeRangeGetEnd(&time2, &v91);
            if (CMTimeCompare(&time1, &time2) >= 1)
            {
              v31 = *&range.duration.timescale;
              v32 = *&v90.start.value;
              *(a1 + 496) = *&range.duration.timescale;
              *(a1 + 512) = v32;
              v33 = *&v90.duration.timescale;
              *(a1 + 528) = *&v90.start.epoch;
              *(a1 + 544) = v33;
              v34 = *&range.start.value;
              v35 = *&range.start.epoch;
              *(a1 + 464) = *&range.start.value;
              *(a1 + 480) = v35;
              *&v91.start.value = v34;
              *&v91.start.epoch = v35;
              *&v91.duration.timescale = v31;
              CMTimeRangeGetEnd(&time1, &v91);
              range.duration = time1;
              v36 = *(a1 + 384);
              *&v91.start.value = *(a1 + 368);
              *&v91.start.epoch = v36;
              *&v91.duration.timescale = *(a1 + 400);
              CMTimeRangeGetEnd(&time1, &v91);
              range.start = time1;
              time1 = range.duration;
              time2 = range.start;
              CMTimeSubtract(&v91.start, &time1, &time2);
              range.duration = v91.start;
              v91 = v90;
              CMTimeRangeGetEnd(&time1, &v91);
              v90.duration = time1;
              v37 = *(a1 + 432);
              *&v91.start.value = *(a1 + 416);
              *&v91.start.epoch = v37;
              *&v91.duration.timescale = *(a1 + 448);
              CMTimeRangeGetEnd(&time1, &v91);
              v90.start = time1;
              time1 = v90.duration;
              time2 = v90.start;
              CMTimeSubtract(&v91.start, &time1, &time2);
              v90.duration = v91.start;
              v38 = *&v90.start.value;
              *(a1 + 400) = *&range.duration.timescale;
              *(a1 + 416) = v38;
              v39 = *&v90.duration.timescale;
              *(a1 + 432) = *&v90.start.epoch;
              *(a1 + 448) = v39;
              v40 = *&range.start.epoch;
              *(a1 + 368) = *&range.start.value;
              *(a1 + 384) = v40;
              v27 = 1;
              *(a1 + 563) = 1;
              goto LABEL_57;
            }
          }
        }

LABEL_128:
        v27 = 0;
        goto LABEL_57;
      }
    }

    else
    {
      v26 = -12782;
    }

    v41 = *(a1 + 384);
    *&v91.start.value = *(a1 + 368);
    v91.start.epoch = *(a1 + 384);
    memset(&time1, 0, sizeof(time1));
    v42 = *(a1 + 400);
    *&range.start.value = *(a1 + 368);
    *&range.start.epoch = v41;
    *&range.duration.timescale = v42;
    CMTimeRangeGetEnd(&time1, &range);
    if (v26)
    {
      editMentorAdvanceToNextEdit_cold_1();
      goto LABEL_128;
    }

    *(a1 + 563) = 0;
    v43 = *(a1 + 336);
    v44 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (!v44 || v44(v43, a1 + 368))
    {
      editMentorAdvanceToNextEdit_cold_2();
    }

    else
    {
      range = v84;
      if (!editMentorConsolidateCurrentEdit(a1, &range))
      {
        v45 = *(a1 + 320);
        if (v45 == 3)
        {
          v48 = *(a1 + 384);
          *&range.start.value = *(a1 + 368);
          *&range.start.epoch = v48;
          *&range.duration.timescale = *(a1 + 400);
          CMTimeRangeGetEnd(&time2, &range);
          *&range.start.value = *&v91.start.value;
          range.start.epoch = v91.start.epoch;
          p_time2 = &time2;
          p_range = &range;
        }

        else
        {
          if (v45 != 2)
          {
LABEL_54:
            *&range.start.value = *(a1 + 416);
            range.start.epoch = *(a1 + 432);
            time2 = start;
            if (CMTimeCompare(&range.start, &time2))
            {
              FigSignalErrorAtGM();
            }

            goto LABEL_56;
          }

          *&range.start.value = *(a1 + 368);
          range.start.epoch = *(a1 + 384);
          time2 = time1;
          p_time2 = &range;
          p_range = &time2;
        }

        if (!CMTimeCompare(&p_time2->start, &p_range->start))
        {
          *(a1 + 564) = 1;
        }

        if (*(a1 + 320) == 3)
        {
          time2 = start;
          rhs = *(a1 + 440);
          CMTimeSubtract(&range.start, &time2, &rhs);
          start = range.start;
          if ((~*(a1 + 452) & 5) == 0)
          {
            start = *(a1 + 416);
          }
        }

        goto LABEL_54;
      }
    }

LABEL_56:
    v27 = 1;
    goto LABEL_57;
  }

LABEL_10:
  if (a5 || !*(a1 + 616))
  {
    goto LABEL_17;
  }

  v11 = a1 + 644;
  if (a3 != 2)
  {
    v11 = a1 + 620;
  }

  v12 = 632;
  if (a3 == 2)
  {
    v12 = 656;
  }

  v91.start.value = *v11;
  v91.start.timescale = *(v11 + 8);
  v13 = *(a1 + v12);
  if ((v13 & 1) == 0)
  {
LABEL_17:
    v14 = a1;
    v15 = a2;
    v16 = a5;
LABEL_21:
    editMentorPostOrderCompletionNotification(v14, v15, v16);
    return;
  }

  v18 = 636;
  if (a3 == 2)
  {
    v18 = 660;
  }

  v19 = *(a1 + v18);
  range.start.value = v91.start.value;
  range.start.timescale = v91.start.timescale;
  range.start.flags = v13;
  range.start.epoch = v19;
  editMentorSetChildMentorModeToEmptyEdit(a1, 0, &range, 1, a2, 0);
}

uint64_t editMentorSetChildMentorModeToEmptyEdit(uint64_t a1, CMSampleBufferRef a2, uint64_t a3, int a4, uint64_t a5, const void *a6)
{
  cf = 0;
  v12 = editMentorRetainCurrentChildOrderAndOptionsDictionary(a1, &cf);
  v13 = 0;
  if (!a2)
  {
    if (a4 && *(a1 + 616))
    {
      v14 = 0;
      *(a1 + 616) = 0;
    }

    else
    {
      v14 = 1;
    }

    v15 = *(a3 + 12);
    v16 = *(a3 + 16);
    v28 = 0;
    if ((v15 & 0x1D) == 1)
    {
      *&context.duration.value = *MEMORY[0x1E6960CC0];
      v17 = *a3;
      context.duration.epoch = *(MEMORY[0x1E6960CC0] + 16);
      context.presentationTimeStamp.value = v17;
      context.presentationTimeStamp.timescale = *(a3 + 8);
      context.presentationTimeStamp.flags = v15;
      context.presentationTimeStamp.epoch = v16;
      context.decodeTimeStamp = **&MEMORY[0x1E6960C70];
      v18 = CMSampleBufferCreate(*MEMORY[0x1E695E480], 0, 1u, 0, 0, 0, 0, 1, &context, 0, 0, &v28);
      if (v18)
      {
        epoch_low = v18;
        v13 = 0;
        goto LABEL_23;
      }

      v20 = *MEMORY[0x1E695E4D0];
      CMSetAttachment(v28, *MEMORY[0x1E69604B0], *MEMORY[0x1E695E4D0], 1u);
      if (*(a1 + 320) == 1)
      {
        CMSetAttachment(v28, *MEMORY[0x1E6960480], v20, 1u);
      }

      if ((v14 & 1) == 0)
      {
        CMSetAttachment(v28, *MEMORY[0x1E69604F8], v20, 1u);
        if (*(a1 + 320) == 3)
        {
          CMSetAttachment(v28, *MEMORY[0x1E69604B8], v20, 1u);
        }
      }

      FigSimpleMutexLock();
      v21 = *(a1 + 240);
      if (v21)
      {
        v21(*(a1 + 256), a5, v28);
      }

      FigSimpleMutexUnlock();
      a2 = v28;
      v13 = v28;
    }

    else
    {
      a2 = 0;
      v13 = 0;
    }
  }

  if (*a1)
  {
    v22 = VideoMentorSetModeToEmptyEdit(*a1, a2, cf, a6, v12);
LABEL_22:
    epoch_low = v22;
    goto LABEL_23;
  }

  v23 = *(a1 + 8);
  if (v23)
  {
    v22 = AudioMentorSetModeToEmptyEdit(v23, a2, cf, a6, v12);
    goto LABEL_22;
  }

  v25 = *(a1 + 16);
  if (v25)
  {
    context.duration.value = *(a1 + 16);
    *&context.duration.timescale = a2;
    context.duration.epoch = cf;
    context.presentationTimeStamp.value = a6;
    *&context.presentationTimeStamp.timescale = v12;
    context.presentationTimeStamp.epoch = 0;
    dispatch_sync_f(*(v25 + 304), &context, EditMentorSetModeToEmptyEdit_fun);
    epoch_low = LODWORD(context.presentationTimeStamp.epoch);
  }

  else
  {
    if (*(a1 + 24))
    {
      v22 = (*(a1 + 96))(*(a1 + 40), a2, cf, a6, v12);
      goto LABEL_22;
    }

    epoch_low = 0;
  }

LABEL_23:
  if (v12)
  {
    CFRelease(v12);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return epoch_low;
}

void editMentorPostSyntheticPrerollCompleteNotification(uint64_t a1, const void *a2)
{
  v4 = FigMentorPrerollCompletePayloadCreate(a2);
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (v4)
  {
    CFRelease(v4);
  }

  dispatch_assert_queue_V2(*(a1 + 304));
  if (*(a1 + 568) == a2)
  {
    *(a1 + 680) = 0;
  }

  if (dword_1EAF16E38)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

uint64_t editMentorSetChildMentorModeToReversePlayback(uint64_t a1, uint64_t a2, const void *a3)
{
  cf = 0;
  v6 = editMentorRetainCurrentChildOrderAndOptionsDictionary(a1, &cf);
  v7 = *a1;
  if (*a1)
  {
    *context = *(a2 + 24);
    *&context[16] = *(a2 + 40);
    v16 = *a2;
    v17 = *(a2 + 16);
    v8 = VideoMentorSetModeToReversePlayback(v7, 0, context, 0, &v16, cf, a3, 0, v6);
LABEL_5:
    v10 = v8;
    goto LABEL_6;
  }

  v9 = *(a1 + 8);
  if (v9)
  {
    *context = *(a2 + 24);
    *&context[16] = *(a2 + 40);
    v16 = *a2;
    v17 = *(a2 + 16);
    v8 = AudioMentorSetModeToReversePlayback(v9, 0, context, 0, &v16, cf, 0, v6);
    goto LABEL_5;
  }

  v12 = *(a1 + 16);
  if (v12)
  {
    *&context[8] = *(a2 + 24);
    v20 = *(a2 + 40);
    v21 = *a2;
    v13 = *(a2 + 16);
    *context = v12;
    v22 = v13;
    v23 = cf;
    v24 = a3;
    v25 = 0;
    v26 = v6;
    v27 = 0;
    dispatch_sync_f(*(v12 + 304), context, EditMentorSetModeToReversePlayback_fun);
    v10 = v27;
  }

  else
  {
    if (*(a1 + 24))
    {
      v14 = *(a1 + 88);
      v15 = *(a1 + 40);
      *context = *(a2 + 24);
      *&context[16] = *(a2 + 40);
      v16 = *a2;
      v17 = *(a2 + 16);
      v8 = v14(v15, context, &v16, cf, a3, 0, v6);
      goto LABEL_5;
    }

    v10 = 0;
  }

LABEL_6:
  if (v6)
  {
    CFRelease(v6);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

unint64_t editMentorCurrentEditIsLastOpenEndedEdit(uint64_t a1)
{
  v12 = 0;
  cf = 0;
  FigSimpleMutexLock();
  v2 = *(a1 + 336);
  if (!v2)
  {
    FigSimpleMutexUnlock();
    v9 = 0;
    v3 = 0;
LABEL_14:
    v5 = 0;
    v10 = 1;
    goto LABEL_15;
  }

  v3 = CFRetain(v2);
  FigSimpleMutexUnlock();
  if (!v3)
  {
    v9 = 0;
    goto LABEL_14;
  }

  if (*(a1 + 320) != 2 || !*(a1 + 617))
  {
    goto LABEL_12;
  }

  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v4)
  {
    v5 = 0;
    goto LABEL_20;
  }

  v4(v3, &cf);
  v5 = cf;
  if (!cf)
  {
LABEL_20:
    CFRelease(v3);
    return v5;
  }

  v6 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v6 || v6(v5, 1) != -12520)
  {
LABEL_12:
    v9 = 0;
    v10 = 0;
    v5 = 0;
    goto LABEL_15;
  }

  FigBaseObject = FigEditCursorGetFigBaseObject(v3);
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v8)
  {
    v8(FigBaseObject, @"TimeRangesMayIncrease", *MEMORY[0x1E695E480], &v12);
    v9 = v12;
  }

  else
  {
    v9 = 0;
  }

  v10 = 0;
  v5 = v9 == *MEMORY[0x1E695E4D0];
LABEL_15:
  if (cf)
  {
    CFRelease(cf);
    v9 = v12;
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if ((v10 & 1) == 0)
  {
    goto LABEL_20;
  }

  return v5;
}

BOOL editMentorDoesEditSegmentIntersectTrackRange(uint64_t a1, uint64_t a2)
{
  memset(&v8, 0, sizeof(v8));
  result = 0;
  if ((*(a2 + 36) & 0x1D) != 1 || (*&v6.start.value = *(a2 + 24), v6.start.epoch = *(a2 + 40), time2 = *(a1 + 48), CMTimeCompare(&v6.start, &time2) >= 1))
  {
    v4 = *(a1 + 64);
    *&v6.start.value = *(a1 + 48);
    *&v6.start.epoch = v4;
    *&v6.duration.timescale = *(a1 + 80);
    CMTimeRangeGetEnd(&v8, &v6);
    if ((*(a2 + 12) & 0x1D) != 1)
    {
      return 1;
    }

    v6.start = v8;
    time2 = *a2;
    if (CMTimeCompare(&v6.start, &time2) >= 1)
    {
      return 1;
    }
  }

  return result;
}

uint64_t editMentorUpdateChildMentorProperties(CFDictionaryRef *a1)
{
  FigSimpleMutexLock();
  CFDictionaryApplyFunction(a1[35], editMentorUpdateChildMentorProperties_applier, a1);

  return FigSimpleMutexUnlock();
}

uint64_t editMentorSetCurrentConsolidatedEdit(uint64_t a1, const void *a2)
{
  FigSimpleMutexLock();
  v4 = *(a1 + 352);
  *(a1 + 352) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return FigSimpleMutexUnlock();
}

uint64_t editMentorConsolidateCurrentEdit(uint64_t a1, _OWORD *a2)
{
  v50 = 0;
  v51[0] = 0;
  if (*(a1 + 681))
  {
    v4 = *(a1 + 416);
    *&value.duration.timescale = *(a1 + 400);
    *&v49.start.value = v4;
    v5 = *(a1 + 448);
    *&v49.start.epoch = *(a1 + 432);
    *&v49.duration.timescale = v5;
    v6 = *(a1 + 384);
    *&value.start.value = *(a1 + 368);
    *&value.start.epoch = v6;
    if (*(a1 + 320) == 3)
    {
      v7 = 0xFFFFFFFFLL;
    }

    else
    {
      v7 = 1;
    }

    v8 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, &editMentorCMTimeMappingArrayCallbacks);
    if (Mutable)
    {
      v10 = 0;
      v11 = *MEMORY[0x1E695E4D0];
      v40 = *(MEMORY[0x1E6960C78] + 48);
      v41 = *(MEMORY[0x1E6960C78] + 32);
      v38 = *(MEMORY[0x1E6960C78] + 80);
      v39 = *(MEMORY[0x1E6960C78] + 64);
      v36 = *(MEMORY[0x1E6960C78] + 16);
      v37 = *MEMORY[0x1E6960C78];
      while (1)
      {
        *&v46.duration.timescale = v41;
        *&v47.start.value = v40;
        *&v47.start.epoch = v39;
        *&v47.duration.timescale = v38;
        *&v46.start.value = v37;
        *&v46.start.epoch = v36;
        if (v10)
        {
          CFRelease(v10);
          v51[0] = 0;
        }

        v12 = *(a1 + 336);
        v13 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (!v13)
        {
          value_low = 4294954514;
          goto LABEL_49;
        }

        v14 = v13(v12, v51);
        if (v14)
        {
          value_low = v14;
          goto LABEL_49;
        }

        if (v50)
        {
          CFRelease(v50);
          v50 = 0;
        }

        FigBaseObject = FigEditCursorGetFigBaseObject(v51[0]);
        v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v16)
        {
          v16(FigBaseObject, @"TimeRangesMayIncrease", v8, &v50);
        }

        v17 = v50;
        v18 = v51[0];
        v19 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v19)
        {
          v20 = v19(v18, v7);
          v21 = v20 == -12520;
          if (v17 == v11 && v20 == -12520)
          {
            break;
          }
        }

        else
        {
          v21 = 0;
        }

        if (*(a1 + 320) == 3)
        {
          CFArrayInsertValueAtIndex(Mutable, 0, &value);
          if (v21)
          {
            break;
          }
        }

        else
        {
          CFArrayAppendValue(Mutable, &value);
          if (v21)
          {
            break;
          }
        }

        v22 = v51[0];
        v23 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (!v23)
        {
          value_low = 4294954514;
LABEL_44:
          FigSignalErrorAtGM();
          goto LABEL_49;
        }

        v24 = v23(v22, &v46);
        if (v24)
        {
          value_low = v24;
          goto LABEL_44;
        }

        if (*(a1 + 320) == 3)
        {
          range = v46;
          CMTimeRangeGetEnd(time1, &range);
          *&range.start.value = *&value.start.value;
          epoch = value.start.epoch;
        }

        else
        {
          range = value;
          CMTimeRangeGetEnd(time1, &range);
          *&range.start.value = *&v46.start.value;
          epoch = v46.start.epoch;
        }

        range.start.epoch = epoch;
        if (CMTimeCompare(time1, &range.start))
        {
          break;
        }

        range = v46;
        v45 = v47;
        v26 = a2[1];
        *time1 = *a2;
        *&time1[16] = v26;
        v43 = a2[2];
        if (!editMentorDoesEditSegmentIntersectTrackRange(&range, time1))
        {
          break;
        }

        v27 = *(a1 + 336);
        v28 = v51[0];
        *(a1 + 336) = v51[0];
        if (v28)
        {
          CFRetain(v28);
        }

        if (v27)
        {
          CFRelease(v27);
        }

        value = v46;
        v49 = v47;
        v10 = v51[0];
      }

      if (CFArrayGetCount(Mutable) < 1)
      {
        editMentorSetCurrentConsolidatedEdit(a1, 0);
        value_low = 0;
      }

      else
      {
        editMentorSetCurrentConsolidatedEdit(a1, Mutable);
        if (*(a1 + 320) == 3)
        {
          if (value.start.flags)
          {
            v30 = *(a1 + 384);
            *&v46.start.value = *(a1 + 368);
            *&v46.start.epoch = v30;
            *&v46.duration.timescale = *(a1 + 400);
            CMTimeRangeGetEnd(&range.start, &v46);
            *time1 = *&value.start.value;
            *&time1[16] = value.start.epoch;
            CMTimeSubtract(&v46.start, &range.start, time1);
            value.duration = v46.start;
          }

          v31 = *(a1 + 432);
          *&v46.start.value = *(a1 + 416);
          *&v46.start.epoch = v31;
          *&v46.duration.timescale = *(a1 + 448);
          CMTimeRangeGetEnd(&range.start, &v46);
          *time1 = *&v49.start.value;
          *&time1[16] = v49.start.epoch;
          CMTimeSubtract(&v46.start, &range.start, time1);
          value_low = 0;
          v49.duration = v46.start;
          v32 = *&v49.start.value;
          *(a1 + 400) = *&value.duration.timescale;
          *(a1 + 416) = v32;
          v33 = *&v49.duration.timescale;
          *(a1 + 432) = *&v49.start.epoch;
          *(a1 + 448) = v33;
          v34 = *&value.start.epoch;
          *(a1 + 368) = *&value.start.value;
          *(a1 + 384) = v34;
        }

        else
        {
          if (value.start.flags)
          {
            v46 = value;
            CMTimeRangeGetEnd(&range.start, &v46);
            *time1 = *(a1 + 368);
            *&time1[16] = *(a1 + 384);
            CMTimeSubtract(&v46.start, &range.start, time1);
            *(a1 + 392) = *&v46.start.value;
            *(a1 + 408) = v46.start.epoch;
          }

          v46 = v49;
          CMTimeRangeGetEnd(&range.start, &v46);
          *time1 = *(a1 + 416);
          *&time1[16] = *(a1 + 432);
          CMTimeSubtract(&v46.start, &range.start, time1);
          value_low = 0;
          *(a1 + 440) = *&v46.start.value;
          *(a1 + 456) = v46.start.epoch;
        }
      }
    }

    else
    {
      editMentorConsolidateCurrentEdit_cold_1(&v46);
      value_low = LODWORD(v46.start.value);
    }

LABEL_49:
    if (v50)
    {
      CFRelease(v50);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
    value_low = 0;
  }

  if (v51[0])
  {
    CFRelease(v51[0]);
  }

  return value_low;
}

__n128 editMentorCMTimeMappingArrayRetainCallback(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x19A8CC720](a1, 96, 0x1000040565EDBD2, 0);
  if (v3)
  {
    v5 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v5;
    result = *(a2 + 32);
    v6 = *(a2 + 48);
    v7 = *(a2 + 80);
    *(v3 + 64) = *(a2 + 64);
    *(v3 + 80) = v7;
    *(v3 + 32) = result;
    *(v3 + 48) = v6;
  }

  return result;
}

CFStringRef editMentorCMTimeMappingArrayCopyDescriptionCallback(_OWORD *a1)
{
  v1 = *MEMORY[0x1E695E480];
  v2 = a1[3];
  *&v6.source.duration.timescale = a1[2];
  *&v6.target.start.value = v2;
  v3 = a1[5];
  *&v6.target.start.epoch = a1[4];
  *&v6.target.duration.timescale = v3;
  v4 = a1[1];
  *&v6.source.start.value = *a1;
  *&v6.source.start.epoch = v4;
  return CMTimeMappingCopyDescription(v1, &v6);
}

uint64_t editMentorCMTimeMappingArrayEqualCallback(_OWORD *a1, _OWORD *a2)
{
  v4 = a1[1];
  *&range1.start.value = *a1;
  *&range1.start.epoch = v4;
  *&range1.duration.timescale = a1[2];
  v5 = a2[1];
  *&v9.start.value = *a2;
  *&v9.start.epoch = v5;
  *&v9.duration.timescale = a2[2];
  result = CMTimeRangeEqual(&range1, &v9);
  if (result)
  {
    v7 = a1[4];
    *&range1.start.value = a1[3];
    *&range1.start.epoch = v7;
    *&range1.duration.timescale = a1[5];
    v8 = a2[4];
    *&v9.start.value = a2[3];
    *&v9.start.epoch = v8;
    *&v9.duration.timescale = a2[5];
    return CMTimeRangeEqual(&range1, &v9) != 0;
  }

  return result;
}

void editMentorSelectEditForTimeInConsolidatedEdit(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, _OWORD *a4@<X8>)
{
  if (!*(a1 + 681))
  {
    goto LABEL_16;
  }

  FigSimpleMutexLock();
  v8 = *(a1 + 352);
  if (!v8)
  {
    FigSimpleMutexUnlock();
    goto LABEL_16;
  }

  v9 = CFRetain(v8);
  FigSimpleMutexUnlock();
  if (!v9)
  {
LABEL_16:
    if (*(a1 + 563))
    {
      v17 = *(a1 + 512);
      a4[2] = *(a1 + 496);
      a4[3] = v17;
      v18 = *(a1 + 544);
      a4[4] = *(a1 + 528);
      a4[5] = v18;
      v19 = *(a1 + 464);
      v20 = *(a1 + 480);
    }

    else
    {
      v21 = *(a1 + 416);
      a4[2] = *(a1 + 400);
      a4[3] = v21;
      v22 = *(a1 + 448);
      a4[4] = *(a1 + 432);
      a4[5] = v22;
      v19 = *(a1 + 368);
      v20 = *(a1 + 384);
    }

    *a4 = v19;
    a4[1] = v20;
    return;
  }

  if (CFArrayGetCount(v9) < 2)
  {
    if (*(a1 + 563))
    {
      v23 = *(a1 + 512);
      a4[2] = *(a1 + 496);
      a4[3] = v23;
      v24 = *(a1 + 544);
      a4[4] = *(a1 + 528);
      a4[5] = v24;
      v25 = *(a1 + 464);
      v26 = *(a1 + 480);
    }

    else
    {
      v30 = *(a1 + 416);
      a4[2] = *(a1 + 400);
      a4[3] = v30;
      v31 = *(a1 + 448);
      a4[4] = *(a1 + 432);
      a4[5] = v31;
      v25 = *(a1 + 368);
      v26 = *(a1 + 384);
    }
  }

  else
  {
    Count = CFArrayGetCount(v9);
    if (Count >= 2)
    {
      v11 = 0;
      v12 = Count - 1;
      if (a3)
      {
        v13 = 0;
      }

      else
      {
        v13 = 3;
      }

      while (1)
      {
        v14 = (v11 + v12) / 2;
        ValueAtIndex = CFArrayGetValueAtIndex(v9, v14);
        v16 = ValueAtIndex[v13 + 1];
        *&v36.start.value = ValueAtIndex[v13];
        *&v36.start.epoch = v16;
        *&v36.duration.timescale = ValueAtIndex[v13 + 2];
        *&v34.start.value = *a2;
        v34.start.epoch = *(a2 + 16);
        *&time2.value = *&v36.start.value;
        time2.epoch = v16;
        if (CMTimeCompare(&v34.start, &time2) < 0)
        {
          v12 = v14 - 1;
        }

        else
        {
          v34 = v36;
          CMTimeRangeGetEnd(&time2, &v34);
          *&v34.start.value = *a2;
          v34.start.epoch = *(a2 + 16);
          if (CMTimeCompare(&v34.start, &time2) < 0)
          {
            v32 = ValueAtIndex[3];
            a4[2] = ValueAtIndex[2];
            a4[3] = v32;
            v33 = ValueAtIndex[5];
            a4[4] = ValueAtIndex[4];
            a4[5] = v33;
            v25 = *ValueAtIndex;
            v26 = ValueAtIndex[1];
            goto LABEL_26;
          }

          v11 = v14 + 1;
        }

        if (v12 <= v11)
        {
          goto LABEL_23;
        }
      }
    }

    v11 = 0;
LABEL_23:
    v27 = CFArrayGetValueAtIndex(v9, v11);
    v28 = v27[3];
    a4[2] = v27[2];
    a4[3] = v28;
    v29 = v27[5];
    a4[4] = v27[4];
    a4[5] = v29;
    v25 = *v27;
    v26 = v27[1];
  }

LABEL_26:
  *a4 = v25;
  a4[1] = v26;
  CFRelease(v9);
}

uint64_t editMentorSetChildMentorProperty(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  v3 = a3;
  if (a3 && editMentorPropertyNeedsToBeRescaled())
  {
    CMTimeMakeFromDictionary(&context, v3);
    time1 = *(a1 + 440);
    time2 = **&MEMORY[0x1E6960CC0];
    if (CMTimeCompare(&time1, &time2))
    {
      time2 = context;
      CMTimeMultiplyTimeByTimeRatio();
      context = time1;
    }

    v6 = *MEMORY[0x1E695E480];
    time1 = context;
    v3 = CMTimeCopyAsDictionary(&time1, v6);
    v7 = v3;
  }

  else
  {
    v7 = 0;
  }

  if (*a1)
  {
    v8 = VideoMentorSetProperty(*a1, a2, v3);
    goto LABEL_9;
  }

  if (!*(a1 + 8))
  {
    v11 = *(a1 + 16);
    if (v11)
    {
      context.value = *(a1 + 16);
      *&context.timescale = a2;
      context.epoch = v3;
      v15 = 0;
      dispatch_sync_f(*(v11 + 304), &context, EditMentorSetProperty_fun);
      v9 = v15;
      if (!v7)
      {
        return v9;
      }

      goto LABEL_13;
    }

    if (*(a1 + 24))
    {
      v8 = (*(a1 + 104))(*(a1 + 40), a2, v3);
LABEL_9:
      v9 = v8;
      if (!v7)
      {
        return v9;
      }

      goto LABEL_13;
    }
  }

  v9 = 0;
  if (v7)
  {
LABEL_13:
    CFRelease(v7);
  }

  return v9;
}