uint64_t getkMRMediaRemoteNowPlayingInfoUniqueIdentifier()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkMRMediaRemoteNowPlayingInfoUniqueIdentifierSymbolLoc_ptr;
  v6 = getkMRMediaRemoteNowPlayingInfoUniqueIdentifierSymbolLoc_ptr;
  if (!getkMRMediaRemoteNowPlayingInfoUniqueIdentifierSymbolLoc_ptr)
  {
    v1 = MediaRemoteLibrary();
    v4[3] = dlsym(v1, "kMRMediaRemoteNowPlayingInfoUniqueIdentifier");
    getkMRMediaRemoteNowPlayingInfoUniqueIdentifierSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    getkMRMediaRemoteNowPlayingInfoUniqueIdentifier_cold_1();
  }

  return *v0;
}

void sub_221FFBB64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkMRMediaRemoteNowPlayingInfoTrackNumber()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkMRMediaRemoteNowPlayingInfoTrackNumberSymbolLoc_ptr;
  v6 = getkMRMediaRemoteNowPlayingInfoTrackNumberSymbolLoc_ptr;
  if (!getkMRMediaRemoteNowPlayingInfoTrackNumberSymbolLoc_ptr)
  {
    v1 = MediaRemoteLibrary();
    v4[3] = dlsym(v1, "kMRMediaRemoteNowPlayingInfoTrackNumber");
    getkMRMediaRemoteNowPlayingInfoTrackNumberSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    getkMRMediaRemoteNowPlayingInfoTrackNumber_cold_1();
  }

  return *v0;
}

void sub_221FFBC58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkMRMediaRemoteNowPlayingInfoTotalTrackCount()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkMRMediaRemoteNowPlayingInfoTotalTrackCountSymbolLoc_ptr;
  v6 = getkMRMediaRemoteNowPlayingInfoTotalTrackCountSymbolLoc_ptr;
  if (!getkMRMediaRemoteNowPlayingInfoTotalTrackCountSymbolLoc_ptr)
  {
    v1 = MediaRemoteLibrary();
    v4[3] = dlsym(v1, "kMRMediaRemoteNowPlayingInfoTotalTrackCount");
    getkMRMediaRemoteNowPlayingInfoTotalTrackCountSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    getkMRMediaRemoteNowPlayingInfoTotalTrackCount_cold_1();
  }

  return *v0;
}

void sub_221FFBD4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkMRMediaRemoteNowPlayingInfoTitle()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkMRMediaRemoteNowPlayingInfoTitleSymbolLoc_ptr;
  v6 = getkMRMediaRemoteNowPlayingInfoTitleSymbolLoc_ptr;
  if (!getkMRMediaRemoteNowPlayingInfoTitleSymbolLoc_ptr)
  {
    v1 = MediaRemoteLibrary();
    v4[3] = dlsym(v1, "kMRMediaRemoteNowPlayingInfoTitle");
    getkMRMediaRemoteNowPlayingInfoTitleSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    getkMRMediaRemoteNowPlayingInfoTitle_cold_1();
  }

  return *v0;
}

void sub_221FFBE40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkMRMediaRemoteNowPlayingInfoTimestamp()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkMRMediaRemoteNowPlayingInfoTimestampSymbolLoc_ptr;
  v6 = getkMRMediaRemoteNowPlayingInfoTimestampSymbolLoc_ptr;
  if (!getkMRMediaRemoteNowPlayingInfoTimestampSymbolLoc_ptr)
  {
    v1 = MediaRemoteLibrary();
    v4[3] = dlsym(v1, "kMRMediaRemoteNowPlayingInfoTimestamp");
    getkMRMediaRemoteNowPlayingInfoTimestampSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    getkMRMediaRemoteNowPlayingInfoTimestamp_cold_1();
  }

  return *v0;
}

void sub_221FFBF34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkMRMediaRemoteNowPlayingInfoMediaType()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkMRMediaRemoteNowPlayingInfoMediaTypeSymbolLoc_ptr_0;
  v6 = getkMRMediaRemoteNowPlayingInfoMediaTypeSymbolLoc_ptr_0;
  if (!getkMRMediaRemoteNowPlayingInfoMediaTypeSymbolLoc_ptr_0)
  {
    v1 = MediaRemoteLibrary_0();
    v4[3] = dlsym(v1, "kMRMediaRemoteNowPlayingInfoMediaType");
    getkMRMediaRemoteNowPlayingInfoMediaTypeSymbolLoc_ptr_0 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    metadataSource_handleNowPlayingInfoChangedInternal_cold_4();
  }

  return *v0;
}

void sub_221FFC028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkMRMediaRemoteNowPlayingInfoElapsedTime()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkMRMediaRemoteNowPlayingInfoElapsedTimeSymbolLoc_ptr;
  v6 = getkMRMediaRemoteNowPlayingInfoElapsedTimeSymbolLoc_ptr;
  if (!getkMRMediaRemoteNowPlayingInfoElapsedTimeSymbolLoc_ptr)
  {
    v1 = MediaRemoteLibrary();
    v4[3] = dlsym(v1, "kMRMediaRemoteNowPlayingInfoElapsedTime");
    getkMRMediaRemoteNowPlayingInfoElapsedTimeSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    getkMRMediaRemoteNowPlayingInfoElapsedTime_cold_1();
  }

  return *v0;
}

void sub_221FFC11C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkMRMediaRemoteNowPlayingInfoDuration()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkMRMediaRemoteNowPlayingInfoDurationSymbolLoc_ptr;
  v6 = getkMRMediaRemoteNowPlayingInfoDurationSymbolLoc_ptr;
  if (!getkMRMediaRemoteNowPlayingInfoDurationSymbolLoc_ptr)
  {
    v1 = MediaRemoteLibrary();
    v4[3] = dlsym(v1, "kMRMediaRemoteNowPlayingInfoDuration");
    getkMRMediaRemoteNowPlayingInfoDurationSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    getkMRMediaRemoteNowPlayingInfoDuration_cold_1();
  }

  return *v0;
}

void sub_221FFC210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkMRMediaRemoteNowPlayingInfoArtworkMIMEType()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkMRMediaRemoteNowPlayingInfoArtworkMIMETypeSymbolLoc_ptr;
  v6 = getkMRMediaRemoteNowPlayingInfoArtworkMIMETypeSymbolLoc_ptr;
  if (!getkMRMediaRemoteNowPlayingInfoArtworkMIMETypeSymbolLoc_ptr)
  {
    v1 = MediaRemoteLibrary();
    v4[3] = dlsym(v1, "kMRMediaRemoteNowPlayingInfoArtworkMIMEType");
    getkMRMediaRemoteNowPlayingInfoArtworkMIMETypeSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    getkMRMediaRemoteNowPlayingInfoArtworkMIMEType_cold_1();
  }

  return *v0;
}

void sub_221FFC304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkMRMediaRemoteNowPlayingInfoArtworkData()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkMRMediaRemoteNowPlayingInfoArtworkDataSymbolLoc_ptr;
  v6 = getkMRMediaRemoteNowPlayingInfoArtworkDataSymbolLoc_ptr;
  if (!getkMRMediaRemoteNowPlayingInfoArtworkDataSymbolLoc_ptr)
  {
    v1 = MediaRemoteLibrary();
    v4[3] = dlsym(v1, "kMRMediaRemoteNowPlayingInfoArtworkData");
    getkMRMediaRemoteNowPlayingInfoArtworkDataSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    getkMRMediaRemoteNowPlayingInfoArtworkData_cold_1();
  }

  return *v0;
}

void sub_221FFC3F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkMRMediaRemoteNowPlayingInfoArtist()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkMRMediaRemoteNowPlayingInfoArtistSymbolLoc_ptr;
  v6 = getkMRMediaRemoteNowPlayingInfoArtistSymbolLoc_ptr;
  if (!getkMRMediaRemoteNowPlayingInfoArtistSymbolLoc_ptr)
  {
    v1 = MediaRemoteLibrary();
    v4[3] = dlsym(v1, "kMRMediaRemoteNowPlayingInfoArtist");
    getkMRMediaRemoteNowPlayingInfoArtistSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    getkMRMediaRemoteNowPlayingInfoArtist_cold_1();
  }

  return *v0;
}

void sub_221FFC4EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkMRMediaRemoteNowPlayingInfoAlbum()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkMRMediaRemoteNowPlayingInfoAlbumSymbolLoc_ptr;
  v6 = getkMRMediaRemoteNowPlayingInfoAlbumSymbolLoc_ptr;
  if (!getkMRMediaRemoteNowPlayingInfoAlbumSymbolLoc_ptr)
  {
    v1 = MediaRemoteLibrary();
    v4[3] = dlsym(v1, "kMRMediaRemoteNowPlayingInfoAlbum");
    getkMRMediaRemoteNowPlayingInfoAlbumSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    getkMRMediaRemoteNowPlayingInfoAlbum_cold_1();
  }

  return *v0;
}

void sub_221FFC5E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t emp_SetDiscoveryMode(uint64_t a1, const void *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v7 = *(DerivedStorage + 96);
  if (v7)
  {
    v8 = CFRetain(v7);
    v9 = *(DerivedStorage + 96);
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *(DerivedStorage + 96) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (dword_280FB1478 <= 40 && (dword_280FB1478 != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_6();
  }

  if (FigCFEqual() || FigCFEqual())
  {
    if (!FigCFEqual() && !FigCFEqual())
    {
      v10 = CMBaseObjectGetDerivedStorage();
      v11 = *(v10 + 104);
      if (v11)
      {
        v12 = v10;
        if (dword_280FB1478 > 40)
        {
          goto LABEL_22;
        }

        if (dword_280FB1478 != -1 || _LogCategory_Initialize())
        {
          OUTLINED_FUNCTION_6();
        }

        v11 = *(v12 + 104);
        if (v11)
        {
LABEL_22:
          dispatch_source_cancel(v11);
          dispatch_release(v11);
          *(v12 + 104) = 0;
        }
      }
    }
  }

  else
  {
    emp_restartCachePromotionDeadlineIfNecessary(a1);
  }

  FigSimpleMutexUnlock();
  if (v8)
  {
    CFRelease(v8);
  }

  v13 = *(DerivedStorage + 8);
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v14)
  {
    return 4294954514;
  }

  return v14(v13, a2, a3);
}

uint64_t manager_SetDiscoveryMode()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    ++*(DerivedStorage + 72);
    if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v1 = APBrowserControllerSetRequestedDiscoveryMode();
    if (v1)
    {
      manager_SetDiscoveryMode_cold_1();
    }
  }

  else
  {
    manager_SetDiscoveryMode_cold_2(&v3);
    v1 = v3;
  }

  FigSimpleMutexUnlock();
  return v1;
}

uint64_t browserController_setRequestedDiscoveryModeInternal(uint64_t a1)
{
  if (gLogCategory_APBrowserController <= 30 && (gLogCategory_APBrowserController != -1 || _LogCategory_Initialize()))
  {
    browserController_setRequestedDiscoveryModeInternal_cold_1();
  }

  v2 = *(a1 + 8);
  if (!v2)
  {
    v2 = *MEMORY[0x277CC0C08];
    *(a1 + 8) = *MEMORY[0x277CC0C08];
  }

  v3 = *MEMORY[0x277CC0C00];
  if (CFEqual(v2, *MEMORY[0x277CC0C00]) && CFEqual(*(*a1 + 64), v3))
  {
    CFRetain(*a1);
    dispatch_async_f(*(*a1 + 32), *a1, browserController_tickleDetailedMode);
  }

  v4 = *(a1 + 8);
  v5 = *a1;
  v6 = *(*a1 + 56);
  v5[6] = *(a1 + 16);
  v5[7] = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(*a1 + 72);
  v8 = *(a1 + 24);
  *(*a1 + 72) = v8;
  if (v8)
  {
    CFRetain(v8);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  browserController_updateDiscoveryMode(*a1);
  return 0;
}

uint64_t browserController_updateDiscoveryMode(uint64_t a1)
{
  DiscoveryModeRequiredByEndpoints = browserController_getDiscoveryModeRequiredByEndpoints(a1);
  v3 = APSIsVirtualMachine();
  v4 = MEMORY[0x277CC0C00];
  if (v3 && !IsAppleInternalBuild())
  {
    v6 = *MEMORY[0x277CC0C08];
    if (gLogCategory_APBrowserController <= 50 && (gLogCategory_APBrowserController != -1 || _LogCategory_Initialize()))
    {
      browserController_updateDiscoveryMode_cold_1();
    }
  }

  else
  {
    Count = CFSetGetCount(*(a1 + 128));
    v6 = *v4;
    if (Count < 1)
    {
      if (CFEqual(DiscoveryModeRequiredByEndpoints, *v4))
      {
        if (gLogCategory_APBrowserController <= 30 && (gLogCategory_APBrowserController != -1 || _LogCategory_Initialize()))
        {
          browserController_updateDiscoveryMode_cold_2();
        }
      }

      else
      {
        v7 = *MEMORY[0x277CC0C10];
        v8 = CFEqual(DiscoveryModeRequiredByEndpoints, *MEMORY[0x277CC0C10]);
        v9 = *(a1 + 56);
        if (v8)
        {
          if (CFEqual(*(a1 + 56), v6) || CFEqual(*(a1 + 56), *MEMORY[0x277CC0BF8]))
          {
            v6 = *(a1 + 56);
            if (gLogCategory_APBrowserController <= 30 && (gLogCategory_APBrowserController != -1 || _LogCategory_Initialize()))
            {
              browserController_updateDiscoveryMode_cold_3();
            }
          }

          else
          {
            if (gLogCategory_APBrowserController <= 30 && (gLogCategory_APBrowserController != -1 || _LogCategory_Initialize()))
            {
              browserController_updateDiscoveryMode_cold_4();
            }

            v6 = v7;
          }
        }

        else
        {
          if (gLogCategory_APBrowserController <= 30 && (gLogCategory_APBrowserController != -1 || _LogCategory_Initialize()))
          {
            browserController_updateDiscoveryMode_cold_5();
          }

          v6 = v9;
        }
      }
    }

    else if (gLogCategory_APBrowserController <= 50 && (gLogCategory_APBrowserController != -1 || _LogCategory_Initialize()))
    {
      browserController_updateDiscoveryMode_cold_6((a1 + 128));
    }
  }

  if (CFEqual(v6, *v4) && (APSIsAPMSpeaker() && (!APSSettingsIsFeatureEnabled() || !APSIsMemberOfStereoPair()) || IsAppleTV() && !APSIsMemberOfHTGroup()))
  {
    v6 = *MEMORY[0x277CC0BF8];
  }

  CFRetain(a1);
  if (v6)
  {
    CFRetain(v6);
  }

  v10 = *(a1 + 72);
  if (v10)
  {
    CFRetain(v10);
  }

  if (!CFEqual(v6, *(a1 + 64)))
  {
    v11 = *(a1 + 64);
    *(a1 + 64) = v6;
    if (v6)
    {
      CFRetain(v6);
    }

    if (v11)
    {
      CFRelease(v11);
    }
  }

  return APSDispatchAsyncFHelper();
}

uint64_t browserController_getDiscoveryModeRequiredByEndpoints(uint64_t a1)
{
  if (CFDictionaryGetCountOfValue(*(a1 + 120), @"Detailed") <= 0)
  {
    CountOfValue = CFDictionaryGetCountOfValue(*(a1 + 120), @"Presence");
    v2 = MEMORY[0x277CC0C08];
    if (CountOfValue > 0)
    {
      v2 = MEMORY[0x277CC0C10];
    }
  }

  else
  {
    v2 = MEMORY[0x277CC0C00];
  }

  return *v2;
}

void browserController_setBrowserMode(CFTypeRef *a1)
{
  v2 = a1 + 1;
  if (CFEqual(a1[1], *MEMORY[0x277CC0C08]))
  {
    v3 = *(*a1 + 5);
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v4 || v4(v3, 0))
    {
      browserController_setBrowserMode_cold_1();
      goto LABEL_25;
    }
  }

  else if (CFEqual(*v2, *MEMORY[0x277CC0C10]))
  {
    v5 = *(*a1 + 5);
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v6 || v6(v5, 1))
    {
      browserController_setBrowserMode_cold_2();
      goto LABEL_25;
    }
  }

  else if (CFEqual(*v2, *MEMORY[0x277CC0BF8]))
  {
    v7 = *(*a1 + 5);
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v8 || v8(v7, 2))
    {
      browserController_setBrowserMode_cold_3();
      goto LABEL_25;
    }
  }

  else if (CFEqual(*v2, *MEMORY[0x277CC0C00]))
  {
    v9 = *(*a1 + 5);
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v10 || v10(v9, 3))
    {
      browserController_setBrowserMode_cold_4();
      goto LABEL_25;
    }
  }

  else if (gLogCategory_APBrowserController <= 90 && (gLogCategory_APBrowserController != -1 || _LogCategory_Initialize()))
  {
    browserController_setBrowserMode_cold_5();
  }

  v11 = *a1;
  if (!*(*a1 + 16))
  {
    v12 = v11[13];
    if (v12)
    {
      v12(a1[1], a1[2], v11[14]);
    }
  }

LABEL_25:
  CFRelease(*a1);
  v13 = a1[1];
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = a1[3];
  if (v14)
  {

    CFRelease(v14);
  }
}

uint64_t manager_handleDiscoveryModeChanged(const void *a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!*(DerivedStorage + 1))
  {
    if (gLogCategory_APEndpointManager <= 40 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      OUTLINED_FUNCTION_6();
    }

    if (FigCFEqual())
    {
      manager_setAVDevicePresence(a3, 0);
      manager_removeAllEndpointsIfNeeded();
    }

    v7 = *(DerivedStorage + 88);
    *(DerivedStorage + 80) = a2;
    *(DerivedStorage + 88) = a1;
    if (a1)
    {
      CFRetain(a1);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    CFRetain(a3);
    dispatch_async_f(*(DerivedStorage + 8), a3, manager_notifyAvailableEndpointsChanged);
  }

  OUTLINED_FUNCTION_25_0();

  return FigSimpleMutexUnlock();
}

void manager_notifyAvailableEndpointsChanged(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = **&MEMORY[0x277CC0898];
  if (gLogCategory_APEndpointManager <= 40 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    manager_notifyAvailableEndpointsChanged_cold_1();
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  v3 = *(DerivedStorage + 56);
  if (v3)
  {
    dispatch_source_cancel(v3);
    v4 = *(DerivedStorage + 56);
    if (v4)
    {
      dispatch_release(v4);
      *(DerivedStorage + 56) = 0;
    }
  }

  APSSettingsIsFeatureEnabled();
  FigSimpleMutexLock();
  if (CFDictionaryGetCount(*(DerivedStorage + 168)) >= 10)
  {
    FigCFEqual();
  }

  LODWORD(v9.value) = 0;
  Int64 = APSSettingsGetInt64();
  FigSimpleMutexUnlock();
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v10, HostTimeClock);
  CMTimeMake(&rhs, Int64, 1000);
  v7 = v10;
  CMTimeAdd(&v9, &v7, &rhs);
  *(DerivedStorage + 32) = v9;
  if (a1)
  {
    CFRelease(a1);
  }
}

uint64_t OUTLINED_FUNCTION_2()
{

  return LogPrintF();
}

uint64_t OUTLINED_FUNCTION_4()
{

  return _LogCategory_Initialize();
}

uint64_t OUTLINED_FUNCTION_4_0()
{

  return LogPrintF();
}

uint64_t OUTLINED_FUNCTION_4_1()
{

  return LogPrintF();
}

uint64_t OUTLINED_FUNCTION_4_2()
{

  return CFDictionaryGetInt64Ranged();
}

uint64_t OUTLINED_FUNCTION_4_3()
{

  return _LogCategory_Initialize();
}

uint64_t OUTLINED_FUNCTION_4_5()
{

  return APSSignalErrorAt();
}

uint64_t OUTLINED_FUNCTION_10()
{

  return _LogCategory_Initialize();
}

uint64_t OUTLINED_FUNCTION_4_9()
{

  return DataBuffer_Commit();
}

uint64_t OUTLINED_FUNCTION_4_10()
{

  return CFGetHardwareAddress();
}

CFTypeRef OUTLINED_FUNCTION_4_21()
{
  v2 = *v0;

  return CFRetain(v2);
}

uint64_t OUTLINED_FUNCTION_4_26()
{

  return FigNotificationCenterAddWeakListener();
}

void emp_handleNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (FigCFEqual())
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __emp_handleNotification_block_invoke;
    v9[3] = &__block_descriptor_40_e5_v8__0l;
    v9[4] = a2;
    mach_absolute_time();
    __emp_handleNotification_block_invoke(v9);
    mach_absolute_time();
    UpTicksToMilliseconds();
    if (dword_280FB1478 <= 40 && (dword_280FB1478 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (!a5)
    {
      a5 = &unk_283584408;
    }
  }

  emp_postNotification(a1, a3, a2, a5);
}

void __emp_handleNotification_block_invoke(uint64_t a1)
{
  v163 = *MEMORY[0x277D85DE8];
  v135 = *(a1 + 32);
  CMBaseObjectGetDerivedStorage();
  v141 = 0;
  FigSimpleMutexLock();
  CMBaseObject = FigEndpointManagerGetCMBaseObject();
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v2)
  {
    v136 = *MEMORY[0x277CBECE8];
    if (!v2(CMBaseObject, *MEMORY[0x277CC0C30]))
    {
      v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [v3 setObject:objc_msgSend(MEMORY[0x277CBEB58] forKeyedSubscript:{"set"), &unk_283584430}];
      [v3 setObject:objc_msgSend(MEMORY[0x277CBEB58] forKeyedSubscript:{"set"), &unk_283584460}];
      obj = v3;
      [v3 setObject:objc_msgSend(MEMORY[0x277CBEB58] forKeyedSubscript:{"set"), &unk_283584448}];
      v4 = v141;
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v151 = 0u;
      v152 = 0u;
      v153 = 0u;
      v154 = 0u;
      v5 = [v141 countByEnumeratingWithState:&v151 objects:v161 count:16];
      v6 = MEMORY[0x277CC1368];
      if (!v5)
      {
        goto LABEL_136;
      }

      v7 = v5;
      v130 = *v152;
      v124 = *MEMORY[0x277CC1368];
      v115 = *MEMORY[0x277CC1450];
      v117 = *MEMORY[0x277CC14E8];
      v122 = v141;
      while (1)
      {
        v8 = 0;
        do
        {
          if (*v152 != v130)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v151 + 1) + 8 * v8);
          EndpointType = APEndpointPlusUtils_GetEndpointType();
          cf = 0;
          if (APSGetFBOPropertyInt64())
          {
            __emp_handleNotification_block_invoke_cold_1();
            goto LABEL_65;
          }

          v132 = v9;
          v11 = FigEndpointGetCMBaseObject();
          v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (!v12 || v12(v11, v124, v136, &cf))
          {
            __emp_handleNotification_block_invoke_cold_11();
            goto LABEL_65;
          }

          v13 = [obj objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInt:", EndpointType)}];
          if (!v13)
          {
            __emp_handleNotification_block_invoke_cold_10();
            goto LABEL_65;
          }

          [v13 addObject:cf];
          if (APSGetFBOPropertyInt64())
          {
            v14 = 40;
            if (EndpointType == 2)
            {
              v14 = 48;
            }

            v15 = *(DerivedStorage + v14);
            v16 = cf;
            *(DerivedStorage + v14) = cf;
            if (v16)
            {
              CFRetain(v16);
            }

            if (v15)
            {
              CFRelease(v15);
            }
          }

          v126 = v7;
          v128 = v8;
          v17 = cf;
          v18 = CMBaseObjectGetDerivedStorage();
          v19 = CMBaseObjectGetDerivedStorage();
          v20 = 56;
          if (EndpointType == 3)
          {
            v20 = 64;
          }

          if (EndpointType == 2)
          {
            v20 = 72;
          }

          v21 = *(v19 + v20);
          TypeString = APEndpointPlusUtils_GetTypeString(EndpointType);
          v143 = 0;
          v144 = 0;
          Value = CFDictionaryGetValue(v21, v17);
          if (!Value)
          {
            v149 = 0;
LABEL_27:
            v25 = APEndpointPlusCreateWithInnerEndpoint(v132, *(v18 + 8), &v149);
            v8 = v128;
            if (v25)
            {
              v29 = v25;
              __emp_handleNotification_block_invoke_cold_3();
              goto LABEL_56;
            }

            emp_addEndpoint(v135, v17, v149, EndpointType);
            goto LABEL_29;
          }

          v24 = CFRetain(Value);
          v149 = v24;
          if (!v24)
          {
            goto LABEL_27;
          }

          v30 = APEndpointPlusCopyInner(v24, &v144);
          if (v30)
          {
            v29 = v30;
            __emp_handleNotification_block_invoke_cold_2();
            goto LABEL_55;
          }

          if (v144 != v132)
          {
            v31 = FigEndpointGetCMBaseObject();
            v32 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v32)
            {
              v32(v31, v115, v136, &v143);
            }

            if (dword_280FB1478 <= 50 && (dword_280FB1478 != -1 || _LogCategory_Initialize()))
            {
              if (v144)
              {
                v33 = "UPDATE";
              }

              else
              {
                v33 = "PROMOTE";
              }

              v109 = v17;
              v110 = v143;
              v104 = TypeString;
              v108 = v149;
              v96 = v135;
              v100 = v33;
              LogPrintF();
            }

            APEndpointPlusSetInner(v149, v132);
          }

LABEL_29:
          v8 = v128;
          if (EndpointType != 2)
          {
            v29 = 0;
            goto LABEL_56;
          }

          v26 = v149;
          v155 = 0;
          v150 = 0;
          v27 = FigEndpointGetCMBaseObject();
          v28 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (!v28)
          {
            v29 = -12782;
LABEL_48:
            APSLogErrorAt();
            Table = 0;
            v38 = 0;
            goto LABEL_49;
          }

          v34 = v28(v27, v117, v136, &v155);
          if (v34)
          {
            v29 = v34;
            goto LABEL_48;
          }

          v35 = FigEndpointGetCMBaseObject();
          v36 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (!v36)
          {
            v29 = -12782;
            goto LABEL_48;
          }

          v39 = v36(v35, v117, v136, &v150);
          if (v39)
          {
            v29 = v39;
            goto LABEL_48;
          }

          Table = emp_syncSubEndpoints_createTable(v155);
          v38 = emp_syncSubEndpoints_createTable(v150);
          v40 = CMBaseObjectGetDerivedStorage();
          v145[0] = 0;
          v41 = FigEndpointGetCMBaseObject();
          v42 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v42)
          {
            v42(v41, v124, v136, v145);
          }

          v159 = 0u;
          v160 = 0u;
          v157 = 0u;
          v158 = 0u;
          v43 = [v38 countByEnumeratingWithState:&v157 objects:v162 count:{16, v96, v100, v104, v108, v109, v110}];
          if (v43)
          {
            v44 = v43;
            v45 = *v158;
            do
            {
              v46 = 0;
              do
              {
                if (*v158 != v45)
                {
                  objc_enumerationMutation(v38);
                }

                v47 = *(*(&v157 + 1) + 8 * v46);
                v137[0] = [Table objectForKeyedSubscript:{v47, v97, v101, v105}];
                v48 = [v38 objectForKeyedSubscript:v47];
                v156 = 0;
                if (v137[0])
                {
                  CFRetain(v137[0]);
                  if (!APEndpointPlusCopyInner(v137[0], &v156))
                  {
                    v49 = v156;
                    if (v156 == v48)
                    {
                      goto LABEL_91;
                    }

                    if (v156)
                    {
                      v50 = "UPDATE";
                    }

                    else
                    {
                      v50 = "PROMOTE";
                    }

                    APEndpointPlusSetInner(v137[0], v48);
LABEL_86:
                    if (dword_280FB1478 <= 50 && (dword_280FB1478 != -1 || _LogCategory_Initialize()))
                    {
                      v109 = v26;
                      v110 = v145[0];
                      v105 = v137[0];
                      v108 = v47;
                      v97 = v135;
                      v101 = v50;
                      LogPrintF();
                    }

                    goto LABEL_90;
                  }

                  __emp_handleNotification_block_invoke_cold_4();
                }

                else if (APEndpointPlusCreateWithInnerEndpoint(v48, *(v40 + 8), v137))
                {
                  __emp_handleNotification_block_invoke_cold_5();
                }

                else
                {
                  v50 = "ADD";
                  if (!APEndpointPlusAddSubEndpoint(v26, v137[0]))
                  {
                    goto LABEL_86;
                  }

                  __emp_handleNotification_block_invoke_cold_6();
                }

LABEL_90:
                v49 = v156;
LABEL_91:
                if (v49)
                {
                  CFRelease(v49);
                  v156 = 0;
                }

                if (v137[0])
                {
                  CFRelease(v137[0]);
                }

                ++v46;
              }

              while (v44 != v46);
              v51 = [v38 countByEnumeratingWithState:&v157 objects:v162 count:16];
              v44 = v51;
            }

            while (v51);
          }

          if (v145[0])
          {
            CFRelease(v145[0]);
          }

          v145[0] = 0;
          v52 = FigEndpointGetCMBaseObject();
          v53 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v53)
          {
            v53(v52, v124, v136, v145);
          }

          v159 = 0u;
          v160 = 0u;
          v157 = 0u;
          v158 = 0u;
          v54 = [Table countByEnumeratingWithState:&v157 objects:v162 count:{16, v97, v101, v105}];
          if (!v54)
          {
            v29 = 0;
            goto LABEL_125;
          }

          v55 = v54;
          v29 = 0;
          v56 = *v158;
          do
          {
            v57 = 0;
            do
            {
              if (*v158 != v56)
              {
                objc_enumerationMutation(Table);
              }

              v58 = *(*(&v157 + 1) + 8 * v57);
              v59 = [Table objectForKeyedSubscript:{v58, v96, v100, v104}];
              if (![v38 objectForKeyedSubscript:v58])
              {
                v60 = APEndpointPlusUtils_GetEndpointType();
                if (emp_isEndpointCacheable(v135, v58, v60))
                {
                  if (APSGetFBOPropertyInt64())
                  {
                    goto LABEL_121;
                  }

                  APEndpointPlusSetInner(v59, 0);
                  v61 = "DEMOTE";
                }

                else
                {
                  v29 = APEndpointPlusRemoveSubEndpoint(v26, v58);
                  if (v29)
                  {
                    __emp_handleNotification_block_invoke_cold_7();
                    goto LABEL_121;
                  }

                  v61 = "REMOVE";
                }

                if (dword_280FB1478 <= 50 && (dword_280FB1478 != -1 || _LogCategory_Initialize()))
                {
                  v109 = v26;
                  v110 = v145[0];
                  v104 = v59;
                  v108 = v58;
                  v96 = v135;
                  v100 = v61;
                  LogPrintF();
                }
              }

LABEL_121:
              ++v57;
            }

            while (v55 != v57);
            v62 = [Table countByEnumeratingWithState:&v157 objects:v162 count:16];
            v55 = v62;
          }

          while (v62);
LABEL_125:
          if (v145[0])
          {
            CFRelease(v145[0]);
          }

          v6 = MEMORY[0x277CC1368];
LABEL_49:
          if (v155)
          {
            CFRelease(v155);
          }

          if (v150)
          {
            CFRelease(v150);
          }

          if (v29)
          {
            __emp_handleNotification_block_invoke_cold_8();
          }

LABEL_55:
          v8 = v128;
LABEL_56:
          if (v149)
          {
            CFRelease(v149);
          }

          if (v144)
          {
            CFRelease(v144);
          }

          if (v143)
          {
            CFRelease(v143);
          }

          if (v29)
          {
            __emp_handleNotification_block_invoke_cold_9();
          }

          else
          {
            emp_reportEndpointToCache(v135);
          }

          v4 = v122;
          v7 = v126;
LABEL_65:
          if (cf)
          {
            CFRelease(cf);
          }

          ++v8;
        }

        while (v8 != v7);
        v63 = [v4 countByEnumeratingWithState:&v151 objects:v161 count:16];
        v7 = v63;
        if (!v63)
        {
LABEL_136:
          *v137 = 0u;
          v138 = 0u;
          v139 = 0u;
          v140 = 0u;
          v112 = [obj countByEnumeratingWithState:v137 objects:&v157 count:{16, v96, v100, v104}];
          if (!v112)
          {
            goto LABEL_210;
          }

          v111 = *v138;
          v118 = *MEMORY[0x277CC1450];
          v116 = *MEMORY[0x277CC14E8];
          v64 = *v6;
          while (1)
          {
            v65 = 0;
            do
            {
              if (*v138 != v111)
              {
                objc_enumerationMutation(obj);
              }

              v114 = v65;
              v66 = *(v137[1] + v65);
              v67 = [v66 unsignedIntValue];
              v68 = [obj objectForKeyedSubscript:v66];
              if (dword_280FB1478 <= 30 && (dword_280FB1478 != -1 || _LogCategory_Initialize()))
              {
                v103 = APEndpointPlusUtils_GetTypeString(v67);
                v107 = v68;
                v99 = v135;
                LogPrintF();
              }

              v69 = CMBaseObjectGetDerivedStorage();
              v70 = CMBaseObjectGetDerivedStorage();
              v71 = 56;
              if (v67 == 3)
              {
                v71 = 64;
              }

              if (v67 == 2)
              {
                v71 = 72;
              }

              v131 = v71;
              v72 = *(v70 + v71);
              *v145 = 0u;
              v146 = 0u;
              v147 = 0u;
              v148 = 0u;
              v123 = [v72 allKeys];
              v133 = [v123 countByEnumeratingWithState:v145 objects:v161 count:16];
              if (v133)
              {
                v127 = (v69 + 40);
                v129 = *v146;
                v125 = (v69 + 48);
                v121 = v67;
                v120 = v68;
                do
                {
                  v73 = 0;
                  do
                  {
                    if (*v146 != v129)
                    {
                      objc_enumerationMutation(v123);
                    }

                    v74 = *(v145[1] + v73);
                    if (!CFSetContainsValue(v68, v74))
                    {
                      v134 = v73;
                      if (v67 == 2)
                      {
                        if (FigCFEqual())
                        {
                          v75 = v125;
LABEL_160:
                          if (*v75)
                          {
                            CFRelease(*v75);
                            *v75 = 0;
                          }
                        }
                      }

                      else if (FigCFEqual())
                      {
                        v75 = v127;
                        goto LABEL_160;
                      }

                      CMBaseObjectGetDerivedStorage();
                      v76 = *(CMBaseObjectGetDerivedStorage() + v131);
                      v77 = APEndpointPlusUtils_GetTypeString(v67);
                      v149 = 0;
                      v78 = CFDictionaryGetValue(v76, v74);
                      if (v78)
                      {
                        v79 = CFRetain(v78);
                        if (v79)
                        {
                          v80 = v79;
                          if (emp_isEndpointCacheable(v135, v74, v67))
                          {
                            if (!APSGetFBOPropertyInt64())
                            {
                              v81 = FigEndpointGetCMBaseObject();
                              v82 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                              if (v82)
                              {
                                v82(v81, v118, v136, &v149);
                              }

                              if (dword_280FB1478 <= 50 && (dword_280FB1478 != -1 || _LogCategory_Initialize()))
                              {
                                v109 = v74;
                                v110 = v149;
                                v106 = v77;
                                v108 = v80;
                                v98 = v135;
                                v102 = "DEMOTE";
                                LogPrintF();
                              }

                              APEndpointPlusSetInner(v80, 0);
                              if (v67 == 2)
                              {
                                v155 = 0;
                                v156 = 0;
                                v83 = FigEndpointGetCMBaseObject();
                                v84 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                                if (!v84 || v84(v83, v116, v136, &v156))
                                {
                                  __emp_handleNotification_block_invoke_cold_12();
                                }

                                else
                                {
                                  v85 = FigEndpointGetCMBaseObject();
                                  v86 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                                  if (v86)
                                  {
                                    v86(v85, v64, v136, &v155);
                                  }

                                  v153 = 0u;
                                  v154 = 0u;
                                  v151 = 0u;
                                  v152 = 0u;
                                  v87 = v156;
                                  v88 = [v156 countByEnumeratingWithState:&v151 objects:v162 count:{16, v98, v102, v106}];
                                  if (v88)
                                  {
                                    v89 = v88;
                                    v90 = *v152;
                                    do
                                    {
                                      for (i = 0; i != v89; ++i)
                                      {
                                        if (*v152 != v90)
                                        {
                                          objc_enumerationMutation(v87);
                                        }

                                        v92 = *(*(&v151 + 1) + 8 * i);
                                        v150 = 0;
                                        if (!APSGetFBOPropertyInt64())
                                        {
                                          v93 = FigEndpointGetCMBaseObject();
                                          v94 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                                          if (v94)
                                          {
                                            v94(v93, v64, v136, &v150);
                                          }

                                          if (dword_280FB1478 <= 50 && (dword_280FB1478 != -1 || _LogCategory_Initialize()))
                                          {
                                            v109 = v80;
                                            v110 = v155;
                                            v106 = v92;
                                            v108 = v150;
                                            v98 = v135;
                                            v102 = "DEMOTE";
                                            LogPrintF();
                                          }

                                          APEndpointPlusSetInner(v92, 0);
                                        }

                                        if (v150)
                                        {
                                          CFRelease(v150);
                                        }
                                      }

                                      v89 = [v87 countByEnumeratingWithState:&v151 objects:v162 count:16];
                                    }

                                    while (v89);
                                  }
                                }

                                if (v156)
                                {
                                  CFRelease(v156);
                                }

                                v67 = v121;
                                v68 = v120;
                                if (v155)
                                {
                                  CFRelease(v155);
                                }
                              }

                              emp_restartCachePromotionDeadlineIfNecessary(v135);
                            }
                          }

                          else
                          {
                            __emp_handleNotification_block_invoke_cold_13(v135, v74, v67);
                          }

                          CFRelease(v80);
                          if (v149)
                          {
                            CFRelease(v149);
                          }
                        }
                      }

                      v73 = v134;
                    }

                    ++v73;
                  }

                  while (v73 != v133);
                  v95 = [v123 countByEnumeratingWithState:v145 objects:v161 count:16];
                  v133 = v95;
                }

                while (v95);
              }

              v65 = v114 + 1;
            }

            while (v114 + 1 != v112);
            v112 = [obj countByEnumeratingWithState:v137 objects:&v157 count:16];
            if (!v112)
            {
              goto LABEL_210;
            }
          }
        }
      }
    }
  }

  __emp_handleNotification_block_invoke_cold_14();
  obj = 0;
LABEL_210:
  FigSimpleMutexUnlock();
  if (v141)
  {
    CFRelease(v141);
  }
}

uint64_t manager_CopyProperty(const void *a1, const void *a2, const __CFAllocator *a3, uint64_t *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointManager <= 10 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (*(DerivedStorage + 1))
  {
    manager_CopyProperty_cold_1();
    return 4294950584;
  }

  if (CFEqual(a2, *MEMORY[0x277CC0C50]))
  {
    v9 = CFRetain(*MEMORY[0x277CC0C68]);
    result = 0;
    *a4 = v9;
    return result;
  }

  if (CFEqual(a2, *MEMORY[0x277CC0C60]))
  {
    valuePtr = 31;
    if (APSIsLowLatencyAudioSendingEnabled())
    {
      valuePtr = 63;
    }

    v11 = CFNumberCreate(a3, kCFNumberSInt64Type, &valuePtr);
    *a4 = v11;
    if (!v11)
    {
      manager_CopyProperty_cold_2();
      return 4294950585;
    }

    return 0;
  }

  if (CFEqual(a2, *MEMORY[0x277CC0C58]))
  {
    valuePtr = 7;
    v12 = CFNumberCreate(a3, kCFNumberSInt64Type, &valuePtr);
    *a4 = v12;
    if (!v12)
    {
      manager_CopyProperty_cold_3();
      return 4294950585;
    }

    return 0;
  }

  v13 = *MEMORY[0x277CEA2E8];
  if (CFEqual(a2, *MEMORY[0x277CEA2E8]))
  {
    if (*(DerivedStorage + 320))
    {
      CMBaseObject = APSPSGDataSourceGetCMBaseObject();
      v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v15)
      {

        return v15(CMBaseObject, v13, a3, a4);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {
      manager_CopyProperty_cold_4();
      return 4294960591;
    }
  }

  else
  {
    FigSimpleMutexLock();
    v16 = manager_copyPropertyInternal(a1, a2, a3, a4);
    FigSimpleMutexUnlock();
    return v16;
  }
}

uint64_t manager_copyPropertyInternal(const void *a1, const void *a2, const __CFAllocator *a3, uint64_t *a4)
{
  CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, *MEMORY[0x277CC0C30]))
  {
    if (FigCFEqual() || FigCFEqual())
    {
      v7 = 0;
      *a4 = manager_copyEndpoints(a1, 0);
      return v7;
    }

    LODWORD(v93) = 0;
    CMBaseObjectGetDerivedStorage();
    v17 = manager_copyEndpoints(a1, 0);
    if (!v17)
    {
      manager_copyPropertyInternal_cold_3();
      return 4294950585;
    }

    v18 = v17;
    v19 = CFGetAllocator(a1);
    Mutable = CFArrayCreateMutable(v19, 0, MEMORY[0x277CBF128]);
    if (Mutable)
    {
      Count = CFArrayGetCount(v18);
      if (Count >= 1)
      {
        v21 = Count;
        for (i = 0; i != v21; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v18, i);
          v24 = APSGetFBOPropertyInt64();
          v25 = APSGetFBOPropertyInt64();
          if (v24 | APSGetFBOPropertyInt64())
          {
            CFArrayAppendValue(Mutable, ValueAtIndex);
          }

          else if (v25)
          {
            CFArrayAppendValue(Mutable, ValueAtIndex);
            if (gLogCategory_APEndpointManager <= 50 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
            {
              manager_copyPropertyInternal_cold_1();
            }
          }
        }
      }

      *a4 = Mutable;
    }

    else
    {
      manager_copyPropertyInternal_cold_2(&v93);
    }

    CFRelease(v18);
    return v93;
  }

  if (CFEqual(a2, *MEMORY[0x277CC0C40]))
  {
    manager_copyPropertyInternal_cold_6(a1, a4);
    return 0;
  }

  if (CFEqual(a2, *MEMORY[0x277CC0C48]))
  {
    manager_copyPropertyInternal_cold_5(a1, a4, &v93);
    return v93;
  }

  if (CFEqual(a2, @"ShowInfo"))
  {
    v105 = 0;
    v106 = &v105;
    v107 = 0x2020000000;
    v108 = 0;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v103 = 0;
    v104 = 0;
    v101 = 0;
    v102 = 0;
    v93 = 0;
    v94 = &v93;
    v95 = 0x5810000000;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v96 = "";
    v100 = 0;
    cf = 0;
    v92 = 0;
    DataBuffer_Init();
    v9 = CMBaseObjectGetDerivedStorage();
    theDict[0] = 0;
    theString = CFStringCreateMutable(a3, 0);
    if (theString)
    {
      v10 = APBrowserControllerCopyProperty(*(v9 + 312), @"showInfo", a3, theDict);
      if (v10)
      {
        APSLogErrorAt();
        CFRelease(theString);
        theString = 0;
      }

      else
      {
        Value = CFDictionaryGetValue(theDict[0], @"detailedDescription");
        CFStringAppendFormat(theString, 0, @"\n%@", Value);
        CFStringAppend(theString, @"\n");
        CFStringAppend(theString, @"+-+ APEndpointManager state +-+\n");
        CFStringAppend(theString, @"\n");
        CFStringAppendFormat(theString, 0, @"DiscoveryMode: %@ (seed %llu/%llu) ", *(v9 + 88), *(v9 + 72), *(v9 + 80));
        CFStringAppend(theString, @"\n");
        v12 = CMBaseObjectGetDerivedStorage();
        v13 = CFSetGetCount(*(v12 + 224));
        CFStringAppendFormat(theString, 0, @"NonBuddyConnectionActive: %d\n", v13 > 0);
        if (*(v9 + 402))
        {
          v14 = "true";
        }

        else
        {
          v14 = "false";
        }

        CFStringAppendFormat(theString, 0, @"disableRCEndpoint: %s\n", v14);
      }

      if (theDict[0])
      {
        CFRelease(theDict[0]);
      }

      *(v106 + 6) = v10;
      if (!v10)
      {
        v79 = CFDictionaryCreateMutable(a3, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (!v79)
        {
          APSLogErrorAt();
          v78 = 0;
          v79 = 0;
          v68 = 0;
          v83 = 0;
          v86 = 0;
          theArray = 0;
          *(v106 + 6) = -16711;
          goto LABEL_125;
        }

        v78 = CFStringCreateMutable(a3, 0);
        CFStringAppend(v78, theString);
        v15 = manager_copyEndpoints(a1, 0);
        theArray = v15;
        if (v15)
        {
          CFArrayGetCount(v15);
          manager_copyEndpointInfoForShowInfo(theArray, &v102, &v103);
          manager_copyEndpointInfoForShowInfo(*(DerivedStorage + 192), 0, &v101);
          if (v102)
          {
            v16 = CFArrayGetCount(v102);
          }

          else
          {
            v16 = 0;
          }

          if (v103)
          {
            v26 = CFArrayGetCount(v103);
          }

          else
          {
            v26 = 0;
          }

          DataBuffer_AppendF();
          if (v16)
          {
            if (v16 >= 1)
            {
              for (j = 0; j != v16; ++j)
              {
                v104 = CFArrayGetValueAtIndex(v102, j);
                manager_AppendEndpointShowInfo(v104, 1, (v94 + 4));
              }
            }

            CFDictionarySetValue(v79, @"ActivatedEndpointShowInfos", v102);
            if (v102)
            {
              CFRelease(v102);
              v102 = 0;
            }
          }

          if (v101)
          {
            v28 = CFArrayGetCount(v101);
          }

          else
          {
            v28 = 0;
          }

          DataBuffer_AppendF();
          if (v28)
          {
            v75 = v26;
            v89 = v28;
            if (v28 >= 1)
            {
              v29 = 0;
              alloc = *MEMORY[0x277CBECE8];
              do
              {
                v30 = CFArrayGetValueAtIndex(v101, v29);
                v31 = v30;
                v104 = v30;
                if (v30)
                {
                  v32 = CFDictionaryGetValue(v30, @"RoutingContextID");
                  v33 = CFDictionaryGetValue(v31, @"EndpointHash");
                  v34 = CFDictionaryGetValue(v31, @"EndpointID");
                  v35 = &stru_283570B70;
                  if (v32)
                  {
                    v35 = v32;
                  }

                  v36 = CFStringCreateWithFormat(alloc, 0, @"%@[%@][%@]", v33, v34, v35);
                  if (v36)
                  {
                    DataBuffer_AppendF();
                    v37 = CFDictionaryGetValue(v31, @"SubEndpointShowInfoDicts");
                    v38 = v37;
                    if (v37)
                    {
                      v39 = CFArrayGetCount(v37);
                      if (v39 >= 1)
                      {
                        for (k = 0; k != v39; ++k)
                        {
                          DataBuffer_AppendF();
                          v41 = CFArrayGetValueAtIndex(v38, k);
                          CFDictionaryGetValue(v41, @"EndpointHash");
                          DataBuffer_AppendF();
                          CFDictionaryGetValue(v41, @"Name");
                          DataBuffer_AppendF();
                        }
                      }
                    }

                    CFRelease(v36);
                  }
                }

                ++v29;
              }

              while (v29 != v89);
            }

            CFDictionarySetValue(v79, @"AggregateShowInfos", v101);
            v26 = v75;
            if (v101)
            {
              CFRelease(v101);
              v101 = 0;
            }
          }

          DataBuffer_AppendF();
          v42 = v103;
          if (v103)
          {
            if (v26 >= 1)
            {
              for (m = 0; m != v26; ++m)
              {
                v104 = CFArrayGetValueAtIndex(v103, m);
                manager_AppendEndpointShowInfo(v104, 0, (v94 + 4));
              }

              v42 = v103;
            }

            CFDictionarySetValue(v79, @"EndpointShowInfos", v42);
            if (v103)
            {
              CFRelease(v103);
              v103 = 0;
            }
          }

          CMBaseObjectGetDerivedStorage();
          v86 = CFDictionaryCreateMutable(a3, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (v86)
          {
            v44 = FigCFDictionaryCopyArrayOfValues();
            v45 = v44;
            if (v44)
            {
              if (CFArrayGetCount(v44) >= 1)
              {
                v46 = 0;
                v47 = *MEMORY[0x277CC1340];
                v48 = MEMORY[0x277CBF128];
                do
                {
                  v49 = CFArrayGetValueAtIndex(v45, v46);
                  theDict[0] = 0;
                  CMBaseObject = FigEndpointGetCMBaseObject();
                  v51 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                  if (v51)
                  {
                    v51(CMBaseObject, v47, a3, theDict);
                  }

                  if (theDict[0])
                  {
                    if (CFDictionaryContainsKey(v86, theDict[0]))
                    {
                      v52 = CFDictionaryGetValue(v86, theDict[0]);
                      v53 = CFRetain(v52);
                    }

                    else
                    {
                      v53 = CFArrayCreateMutable(a3, 0, v48);
                      CFDictionarySetValue(v86, theDict[0], v53);
                    }

                    CFArrayAppendValue(v53, v49);
                    if (v53)
                    {
                      CFRelease(v53);
                    }

                    if (theDict[0])
                    {
                      CFRelease(theDict[0]);
                    }
                  }

                  ++v46;
                }

                while (v46 < CFArrayGetCount(v45));
              }

              CFRelease(v45);
            }
          }

          v82 = FigCFDictionaryGetCount();
          v54 = "s";
          if (v82 == 1)
          {
            v54 = "";
          }

          v74 = v54;
          DataBuffer_AppendF();
          v83 = FigCFDictionaryCopyArrayOfKeys();
          if (v83)
          {
            if (v82 >= 1)
            {
              v55 = 0;
              key = *MEMORY[0x277CBECE8];
              do
              {
                alloca = v55;
                v56 = CFArrayGetValueAtIndex(v83, v55);
                v57 = CFDictionaryGetValue(v86, v56);
                v58 = v57;
                if (v57)
                {
                  v59 = CFArrayGetCount(v57);
                }

                else
                {
                  v59 = 0;
                }

                DataBuffer_AppendF();
                if (v59 >= 1)
                {
                  for (n = 0; n != v59; ++n)
                  {
                    CFArrayGetValueAtIndex(v58, n);
                    v104 = 0;
                    v61 = FigEndpointGetCMBaseObject();
                    v62 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                    if (v62)
                    {
                      v62(v61, @"EndpointShowInfo", key, &v104);
                    }

                    v63 = v104;
                    if (v104)
                    {
                      CFDictionaryGetValue(v104, @"Name");
                      DataBuffer_AppendF();
                      if (CFDictionaryGetValue(v63, @"DiscoveryID"))
                      {
                        DataBuffer_AppendF();
                      }

                      CFDictionaryGetValue(v63, @"DeviceID");
                      DataBuffer_AppendF();
                      v74 = CFDictionaryGetValue(v63, @"Model");
                      DataBuffer_AppendF();
                      DataBuffer_AppendF();
                      if (v104)
                      {
                        CFRelease(v104);
                        v104 = 0;
                      }
                    }
                  }
                }

                v55 = alloca + 1;
              }

              while ((alloca + 1) != v82);
            }

            if (!*(DerivedStorage + 320))
            {
              v68 = 0;
LABEL_122:
              v71 = DataBuffer_Append();
              *(v106 + 6) = v71;
              if (!v71)
              {
                v72 = DataBuffer_Commit();
                *(v106 + 6) = v72;
                if (!v72)
                {
                  CFStringAppendFormat(v78, 0, @"%s", v92, v74);
                  CFDictionarySetValue(v79, @"DetailedDescription", v78);
                  goto LABEL_125;
                }
              }

              APSLogErrorAt();
LABEL_120:
              CFRelease(v79);
              v79 = 0;
LABEL_125:
              DataBuffer_Free();
              if (theArray)
              {
                CFRelease(theArray);
              }

              if (v78)
              {
                CFRelease(v78);
              }

              if (theString)
              {
                CFRelease(theString);
              }

              if (v102)
              {
                CFRelease(v102);
              }

              if (v101)
              {
                CFRelease(v101);
              }

              if (v103)
              {
                CFRelease(v103);
              }

              if (v86)
              {
                CFRelease(v86);
              }

              if (v83)
              {
                CFRelease(v83);
              }

              if (cf)
              {
                CFRelease(cf);
              }

              if (v68)
              {
                CFRelease(v68);
              }

              v7 = *(v106 + 6);
              _Block_object_dispose(&v93, 8);
              _Block_object_dispose(&v105, 8);
              if (!v7)
              {
                *a4 = v79;
              }

              return v7;
            }

            v64 = APSPSGDataSourceGetCMBaseObject();
            v65 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v65)
            {
              v66 = *MEMORY[0x277CBECE8];
              v67 = v65(v64, *MEMORY[0x277CEA2E8], *MEMORY[0x277CBECE8], &cf);
              *(v106 + 6) = v67;
              if (!v67)
              {
                v68 = CFDictionaryCreateMutable(v66, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                if (v68)
                {
                  theDict[0] = MEMORY[0x277D85DD0];
                  theDict[1] = 3221225472;
                  theDict[2] = __manager_copyShowInfo_block_invoke;
                  theDict[3] = &unk_27849BC40;
                  theDict[4] = &v105;
                  theDict[5] = v68;
                  CFDictionaryApplyBlock();
                  v69 = CFDictionaryGetCount(v68);
                  v70 = "s";
                  if (v69 == 1)
                  {
                    v70 = "";
                  }

                  v74 = v70;
                  DataBuffer_AppendF();
                  CFDictionaryApplyBlock();
                  goto LABEL_122;
                }

                APSLogErrorAt();
                v73 = -6728;
LABEL_161:
                v68 = 0;
                *(v106 + 6) = v73;
                goto LABEL_120;
              }
            }

            else
            {
              *(v106 + 6) = -12782;
            }

            APSLogErrorAt();
            v68 = 0;
            goto LABEL_120;
          }

          APSLogErrorAt();
          v83 = 0;
        }

        else
        {
          APSLogErrorAt();
          v83 = 0;
          v86 = 0;
        }

        v73 = -16711;
        goto LABEL_161;
      }
    }

    else
    {
      APSLogErrorAt();
      theString = 0;
      *(v106 + 6) = -6728;
    }

    APSLogErrorAt();
    v78 = 0;
    v79 = 0;
    v68 = 0;
    v83 = 0;
    v86 = 0;
    theArray = 0;
    goto LABEL_125;
  }

  if (!CFEqual(a2, @"HierarchyDump"))
  {
    if (gLogCategory_APEndpointManager <= 30 && (gLogCategory_APEndpointManager != -1 || _LogCategory_Initialize()))
    {
      manager_copyPropertyInternal_cold_4();
    }

    return 4294954512;
  }

  return manager_copyHierarchy(a1, a3, a4);
}

void sub_222000088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose((v41 - 136), 8);
  _Unwind_Resume(a1);
}

__CFArray *manager_copyEndpoints(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    manager_copyEndpoints_cold_4();
    return Mutable;
  }

  v6 = FigCFDictionaryCopyArrayOfValues();
  if (!v6)
  {
    manager_copyEndpoints_cold_3();
    return Mutable;
  }

  v7 = v6;
  MutableCopy = CFArrayCreateMutableCopy(v4, 0, v6);
  if (!MutableCopy)
  {
    manager_copyEndpoints_cold_2(v7);
    return Mutable;
  }

  v9 = MutableCopy;
  v10 = *(DerivedStorage + 296);
  if (v10)
  {
    CFArrayAppendValue(MutableCopy, v10);
  }

  if (a2)
  {
    v20.length = CFArrayGetCount(v9);
    v20.location = 0;
    CFArrayAppendArray(Mutable, v9, v20);
    v11 = 0;
  }

  else
  {
    v11 = FigCFDictionaryCopyArrayOfValues();
    if (!v11)
    {
      manager_copyEndpoints_cold_1();
      v18 = 0;
      v17 = 0;
      goto LABEL_22;
    }

    v12 = *(DerivedStorage + 232);
    if (CFArrayGetCount(v9) >= 1)
    {
      v13 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v9, v13);
        if ((!v12 || !CFDictionaryContainsKey(v12, ValueAtIndex)) && !manager_isEndpointLocalAndSuppressed())
        {
          CFArrayAppendValue(Mutable, ValueAtIndex);
        }

        ++v13;
      }

      while (v13 < CFArrayGetCount(v9));
    }

    if (CFArrayGetCount(v11) >= 1)
    {
      v15 = 0;
      do
      {
        v16 = CFArrayGetValueAtIndex(v11, v15);
        if (!manager_isEndpointLocalAndSuppressed())
        {
          CFArrayAppendValue(Mutable, v16);
        }

        ++v15;
      }

      while (v15 < CFArrayGetCount(v11));
    }
  }

  v17 = FigCFDictionaryCopyArrayOfValues();
  v21.length = CFArrayGetCount(v17);
  v21.location = 0;
  CFArrayAppendArray(Mutable, v17, v21);
  v18 = FigCFDictionaryCopyArrayOfValues();
  v22.length = CFArrayGetCount(v18);
  v22.location = 0;
  CFArrayAppendArray(Mutable, v18, v22);
LABEL_22:
  CFRelease(v7);
  CFRelease(v9);
  if (v17)
  {
    CFRelease(v17);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return Mutable;
}

void emp_postNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(CMBaseObjectGetDerivedStorage() + 112);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __emp_postNotification_block_invoke;
  v9[3] = &unk_27849DE78;
  v9[4] = a3;
  v9[5] = a2;
  v9[6] = a4;
  v9[7] = a1;
  dispatch_async(v8, v9);
}

uint64_t __emp_postNotification_block_invoke(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 32);
  FigSimpleMutexUnlock();
  if (v3)
  {
    return __emp_postNotification_block_invoke_cold_1();
  }

  if (dword_280FB1478 <= 50 && (dword_280FB1478 != -1 || _LogCategory_Initialize()))
  {
    __emp_postNotification_block_invoke_cold_2();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 48) objectForKeyedSubscript:@"Private"];
  }

  return CMNotificationCenterPostNotification();
}

uint64_t __emp_postNotification_block_invoke_cold_2()
{
  if (IsAppleInternalBuild() && dword_280FB1478 == -1)
  {
    _LogCategory_Initialize();
  }

  return OUTLINED_FUNCTION_2();
}

const void *OUTLINED_FUNCTION_2_3(void *key)
{

  return CFDictionaryGetValue(v1, key);
}

uint64_t OUTLINED_FUNCTION_2_7()
{

  return FigNotificationCenterAddWeakListener();
}

CMTime *OUTLINED_FUNCTION_2_14(uint64_t a1, CMTime *time, CMTime *a3, __n128 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t timea, uint64_t time_8, uint64_t time_16, uint64_t a14)
{
  *(v14 + 8) = a4;

  return CMTimeConvertScale(&a14, &timea, time, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
}

uint64_t OUTLINED_FUNCTION_1()
{

  return APSLogErrorAt();
}

uint64_t emp_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_280FB1478 <= 50 && (dword_280FB1478 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!a2)
  {
    emp_CopyProperty_cold_2();
    return 4294950586;
  }

  if (!a4)
  {
    emp_CopyProperty_cold_1();
    return 4294950586;
  }

  if (CFEqual(a2, *MEMORY[0x277CC0C30]))
  {
    v9 = a1;
    v10 = a3;
    v11 = 1;
LABEL_11:
    v12 = emp_copyAvailableEndpoints(v9, v10, v11);
LABEL_12:
    v13 = v12;
    result = 0;
    *a4 = v13;
    return result;
  }

  if (CFEqual(a2, *MEMORY[0x277CC0C38]))
  {
    v9 = a1;
    v10 = a3;
    v11 = 0;
    goto LABEL_11;
  }

  if (CFEqual(a2, @"ShowInfo"))
  {
    CMBaseObjectGetDerivedStorage();
    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    FigSimpleMutexLock();
    v16 = emp_introspector_copyDescription(a1);
    FigSimpleMutexUnlock();
    [v15 setObject:v16 forKeyedSubscript:@"DetailedDescription"];

    result = 0;
    *a4 = v15;
  }

  else
  {
    if (CFEqual(a2, @"HierarchyDump"))
    {
      v12 = CFRetain(&stru_283570B70);
      goto LABEL_12;
    }

    v17 = *(DerivedStorage + 8);

    return FigEndpointManagerCopyProperty(v17, a2, a3, a4);
  }

  return result;
}

CFMutableArrayRef emp_copyAvailableEndpoints(uint64_t a1, const __CFAllocator *a2, char a3)
{
  CMBaseObjectGetDerivedStorage();
  Mutable = CFArrayCreateMutable(a2, 0, MEMORY[0x277CBF128]);
  FigSimpleMutexLock();
  if (emp_getAllowCachedEndpointsAlways_onceToken != -1)
  {
    emp_copyAvailableEndpoints_cold_1();
  }

  v7 = !emp_getAllowCachedEndpointsAlways_enabled && !FigCFEqual() && FigCFEqual() == 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __emp_copyAvailableEndpoints_block_invoke;
  v9[3] = &__block_descriptor_41_e47_v28__0i8____CFString__12__OpaqueFigEndpoint__20l;
  v10 = v7 | a3;
  v9[4] = Mutable;
  emp_forEachEndpoint(a1, v9);
  FigSimpleMutexUnlock();
  return Mutable;
}

uint64_t vdsink_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APVirtualDisplayTestSink <= 30 && (gLogCategory_APVirtualDisplayTestSink != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (CFEqual(a2, *MEMORY[0x277CD6750]))
  {
    v6 = 0;
    *a4 = CFRetain(@"AirPlay");
    return v6;
  }

  if (CFEqual(a2, *MEMORY[0x277CD6708]))
  {
    v25 = 0;
    CMBaseObject = FigEndpointStreamGetCMBaseObject();
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v9)
    {
      v10 = *MEMORY[0x277CBECE8];
      v11 = v9(CMBaseObject, *MEMORY[0x277CD6700], *MEMORY[0x277CBECE8], &v25);
      if (!v11)
      {
        v12 = v25;
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        v29 = 0;
        value = 0;
        v27 = 0;
        cf = 0;
        v26 = 0;
        if (vdsink_getVirtualDisplaySizeOverrideFromPrefs_sCheckPrefsOnce != -1)
        {
          vdsink_CopyProperty_cold_1();
        }

        v14 = *&vdsink_getVirtualDisplaySizeOverrideFromPrefs_prefScreenSize_0;
        v15 = *&vdsink_getVirtualDisplaySizeOverrideFromPrefs_prefScreenSize_1;
        v17 = *MEMORY[0x277CBF3A8];
        v16 = *(MEMORY[0x277CBF3A8] + 8);
        if ((*&vdsink_getVirtualDisplaySizeOverrideFromPrefs_prefScreenSize_0 != *MEMORY[0x277CBF3A8] || *&vdsink_getVirtualDisplaySizeOverrideFromPrefs_prefScreenSize_1 != v16) && gLogCategory_APVirtualDisplayTestSink <= 50)
        {
          if (gLogCategory_APVirtualDisplayTestSink != -1 || (v22 = _LogCategory_Initialize(), v14 = *&vdsink_getVirtualDisplaySizeOverrideFromPrefs_prefScreenSize_0, v15 = *&vdsink_getVirtualDisplaySizeOverrideFromPrefs_prefScreenSize_1, v22))
          {
            LogPrintF();
            v14 = *&vdsink_getVirtualDisplaySizeOverrideFromPrefs_prefScreenSize_0;
            v15 = *&vdsink_getVirtualDisplaySizeOverrideFromPrefs_prefScreenSize_1;
          }
        }

        FigCFDictionaryGetBooleanIfPresent();
        FigCFDictionaryGetCGSizeIfPresent();
        if (v14 == v17 && v15 == v16)
        {
          *(DerivedStorage + 72) = *(DerivedStorage + 56);
        }

        else
        {
          *(DerivedStorage + 72) = v14;
          *(DerivedStorage + 80) = v15;
        }

        FigDisplayModes_BuildColorAndTimingModes();
        v23 = cf;
        if (cf)
        {
          if (v27)
          {
            FigDisplayModes_CreateColorAndTimingModesArraysWithPreferredMode();
            MutableCopy = 0;
            if (value && v29)
            {
              MutableCopy = CFDictionaryCreateMutableCopy(v10, 0, v12);
              CFDictionarySetValue(MutableCopy, *MEMORY[0x277CD6630], value);
              CFDictionarySetValue(MutableCopy, *MEMORY[0x277CD6680], v29);
            }

            v23 = cf;
            if (!cf)
            {
              goto LABEL_39;
            }
          }

          else
          {
            MutableCopy = 0;
          }

          CFRelease(v23);
        }

        else
        {
          MutableCopy = 0;
        }

LABEL_39:
        if (v27)
        {
          CFRelease(v27);
        }

        if (value)
        {
          CFRelease(value);
        }

        if (v29)
        {
          CFRelease(v29);
        }

        *a4 = MutableCopy;
        if (v25)
        {
          CFRelease(v25);
        }

        return 0;
      }

      v6 = v11;
    }

    else
    {
      v6 = 4294954514;
    }

    APSLogErrorAt();
    return v6;
  }

  v19 = FigEndpointStreamGetCMBaseObject();
  v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v20)
  {
    return 4294954514;
  }

  v21 = *MEMORY[0x277CBECE8];

  return v20(v19, a2, v21, a4);
}

uint64_t vdsink_CopyProperty_0(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APVirtualDisplaySink <= 30 && (gLogCategory_APVirtualDisplaySink != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (CFEqual(a2, *MEMORY[0x277CD6750]))
  {
    v6 = 0;
    *a4 = CFRetain(@"AirPlay");
    return v6;
  }

  v8 = CFEqual(a2, *MEMORY[0x277CD6708]);
  v9 = MEMORY[0x277CBECE8];
  if (v8)
  {
    v27 = 0;
    CMBaseObject = FigEndpointStreamGetCMBaseObject();
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v11)
    {
      v12 = *v9;
      v13 = v11(CMBaseObject, *MEMORY[0x277CD6700], *v9, &v27);
      if (!v13)
      {
        v14 = v27;
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        v34 = 0;
        value = 0;
        v32 = 0;
        v33 = 0;
        cf = 0;
        v29 = 60;
        v30 = 0;
        v28 = 0;
        if (vdsink_getVirtualDisplaySizeOverrideFromPrefs_sCheckPrefsOnce_0 != -1)
        {
          vdsink_CopyProperty_cold_1_0();
        }

        v16 = *&vdsink_getVirtualDisplaySizeOverrideFromPrefs_prefScreenSize_0_0;
        v17 = *&vdsink_getVirtualDisplaySizeOverrideFromPrefs_prefScreenSize_1_0;
        v19 = *MEMORY[0x277CBF3A8];
        v18 = *(MEMORY[0x277CBF3A8] + 8);
        if ((*&vdsink_getVirtualDisplaySizeOverrideFromPrefs_prefScreenSize_0_0 != *MEMORY[0x277CBF3A8] || *&vdsink_getVirtualDisplaySizeOverrideFromPrefs_prefScreenSize_1_0 != v18) && gLogCategory_APVirtualDisplaySink <= 50)
        {
          if (gLogCategory_APVirtualDisplaySink != -1 || (v23 = _LogCategory_Initialize(), v16 = *&vdsink_getVirtualDisplaySizeOverrideFromPrefs_prefScreenSize_0_0, v17 = *&vdsink_getVirtualDisplaySizeOverrideFromPrefs_prefScreenSize_1_0, v23))
          {
            LogPrintF();
            v16 = *&vdsink_getVirtualDisplaySizeOverrideFromPrefs_prefScreenSize_0_0;
            v17 = *&vdsink_getVirtualDisplaySizeOverrideFromPrefs_prefScreenSize_1_0;
          }
        }

        FigCFDictionaryGetBooleanIfPresent();
        FigCFDictionaryGetCGSizeIfPresent();
        v24 = CFDictionaryGetValue(v14, *MEMORY[0x277CD6660]);
        FigCFDictionaryGetInt32IfPresent();
        FigCFDictionaryGetInt32IfPresent();
        if (v16 == v19 && v17 == v18)
        {
          *(DerivedStorage + 72) = *(DerivedStorage + 56);
          if (!v24)
          {
LABEL_29:
            FigDisplayModes_BuildColorAndTimingModes();
            goto LABEL_32;
          }
        }

        else
        {
          *(DerivedStorage + 72) = v16;
          *(DerivedStorage + 80) = v17;
          if (!v24)
          {
            goto LABEL_29;
          }
        }

        CFDictionaryGetValue(v24, *MEMORY[0x277CD6540]);
        FigDisplayModes_BuildColorAndTimingModes();
        FigDisplayModes_BuildColorModesFromHDRMode();
LABEL_32:
        if (v33)
        {
          if (v32)
          {
            if (v30 >= 1)
            {
              FigDisplayModes_CopyTimingModeAppendingPreferredUIScale();
              if (!cf)
              {
                vdsink_CopyProperty_cold_4();
                goto LABEL_59;
              }

              v25 = v32;
              v32 = cf;
              CFRetain(cf);
              if (v25)
              {
                CFRelease(v25);
              }
            }

            FigDisplayModes_CreateColorAndTimingModesArraysWithPreferredMode();
            if (value)
            {
              if (v34)
              {
                MutableCopy = CFDictionaryCreateMutableCopy(v12, 0, v14);
                CFDictionarySetValue(MutableCopy, *MEMORY[0x277CD6630], value);
                CFDictionarySetValue(MutableCopy, *MEMORY[0x277CD6680], v34);
LABEL_41:
                if (v33)
                {
                  CFRelease(v33);
                }

                if (v32)
                {
                  CFRelease(v32);
                }

                if (cf)
                {
                  CFRelease(cf);
                }

                if (value)
                {
                  CFRelease(value);
                }

                if (v34)
                {
                  CFRelease(v34);
                }

                *a4 = MutableCopy;
                if (v27)
                {
                  CFRelease(v27);
                }

                return 0;
              }

              vdsink_CopyProperty_cold_2();
            }

            else
            {
              vdsink_CopyProperty_cold_3();
            }
          }

          else
          {
            vdsink_CopyProperty_cold_5();
          }
        }

        else
        {
          vdsink_CopyProperty_cold_6();
        }

LABEL_59:
        MutableCopy = 0;
        goto LABEL_41;
      }

      v6 = v13;
    }

    else
    {
      v6 = 4294954514;
    }

    APSLogErrorAt();
    return v6;
  }

  v20 = FigEndpointStreamGetCMBaseObject();
  v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v21)
  {
    return 4294954514;
  }

  v22 = *v9;

  return v21(v20, a2, v22, a4);
}

CFMutableDictionaryRef screenstream_copyNetworkInfo(uint64_t a1)
{
  cf = 0;
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!*(a1 + 136))
  {
    screenstream_copyNetworkInfo_cold_1();
    return Mutable;
  }

  CMBaseObject = FigTransportStreamGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v5(CMBaseObject, *MEMORY[0x277CE5068], v2, &cf);
  }

  v6 = *(a1 + 456);
  if (v6 <= 0.0)
  {
    if (*(a1 + 394) && *(a1 + 396))
    {
      if (*(a1 + 360) > 27648000.0)
      {
        v7 = 25.0;
      }

      else
      {
        v7 = 17.5;
      }

      if (gLogCategory_APEndpointStreamScreen <= 20 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v6 = v7 * 1000000.0;
    }

    else if (*(a1 + 410) && *(a1 + 385))
    {
      v6 = 80000000.0;
    }

    else
    {
      if (FigCFDictionaryGetDoubleIfPresent())
      {
        *(a1 + 448) = 0;
        v8 = 0.0 * *(a1 + 424);
      }

      else
      {
        v8 = 0.0;
      }

      if (v8 <= *(a1 + 432))
      {
        v8 = *(a1 + 432);
      }

      if (v8 >= *(a1 + 440))
      {
        v6 = *(a1 + 440);
      }

      else
      {
        v6 = v8;
      }
    }
  }

  FigCFDictionarySetInt32();
  *(a1 + 464) = v6;
  v9 = *(a1 + 476);
  if (v9 >= 1)
  {
    goto LABEL_27;
  }

  if (!*(a1 + 394) || !*(a1 + 396))
  {
    v12 = *(a1 + 480);
    v13 = *(a1 + 472);
    if (v12 > v13)
    {
      *(a1 + 480) = v13;
      v12 = v13;
    }

    if (v6 >= 500000.0)
    {
      if (v6 >= 1000000.0)
      {
        if (v6 >= 4000000.0)
        {
          v14 = 60;
        }

        else
        {
          v14 = 30;
        }
      }

      else
      {
        v14 = 20;
      }
    }

    else
    {
      v14 = 10;
    }

    if (v14 >= v13)
    {
      v14 = v13;
    }

    v15 = v14 <= v12;
    if (v14 >= v12)
    {
      v19 = *(a1 + 484);
      if (v15)
      {
        if (v19 != v12)
        {
          if (gLogCategory_APEndpointStreamScreen <= 20)
          {
            if (gLogCategory_APEndpointStreamScreen != -1 || (v22 = _LogCategory_Initialize(), v12 = *(a1 + 480), v22))
            {
              LogPrintF();
              v12 = *(a1 + 480);
            }
          }

          *(a1 + 484) = v12;
        }

        goto LABEL_83;
      }

      if (v19 <= v12)
      {
        if (v12 >= 20)
        {
          v20 = 30;
        }

        else
        {
          v20 = 20;
        }

        if (v12 <= 29)
        {
          v21 = v20;
        }

        else
        {
          v21 = 60;
        }

        if (v21 >= v13)
        {
          v18 = v13;
        }

        else
        {
          v18 = v21;
        }

        if (gLogCategory_APEndpointStreamScreen > 20 || gLogCategory_APEndpointStreamScreen == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_80;
        }

LABEL_72:
        LogPrintF();
LABEL_80:
        *(a1 + 484) = v18;
        *(a1 + 488) = mach_absolute_time();
      }
    }

    else if (*(a1 + 484) >= v12)
    {
      if (v12 <= 30)
      {
        v16 = 20;
      }

      else
      {
        v16 = 30;
      }

      if (v12 >= 21)
      {
        v17 = v16;
      }

      else
      {
        v17 = 10;
      }

      if (v17 >= v13)
      {
        v18 = v13;
      }

      else
      {
        v18 = v17;
      }

      if (gLogCategory_APEndpointStreamScreen > 20 || gLogCategory_APEndpointStreamScreen == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_80;
      }

      goto LABEL_72;
    }

LABEL_83:
    if (*(a1 + 484) != *(a1 + 480) && mach_absolute_time() - *(a1 + 488) >= *(a1 + 496))
    {
      if (gLogCategory_APEndpointStreamScreen <= 40 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      *(a1 + 480) = *(a1 + 484);
    }

    goto LABEL_28;
  }

  v9 = *(a1 + 472);
LABEL_27:
  *(a1 + 480) = v9;
  *(a1 + 484) = v9;
LABEL_28:
  v10 = *(a1 + 504);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __screenstream_updateFPS_block_invoke;
  block[3] = &__block_descriptor_tmp_95_3;
  block[4] = a1;
  dispatch_sync(v10, block);
  FigCFDictionarySetInt32();
  FigCFDictionaryGetInt32IfPresent();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetDouble();
  if (cf)
  {
    CFRelease(cf);
  }

  return Mutable;
}

CMBlockBufferRef screenstream_dequeueAndProcessSampleBuffer(const void *a1, int a2, _DWORD *a3)
{
  v198 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 1148))
  {
    return v198;
  }

  v7 = DerivedStorage;
  if (!a2)
  {
    v8 = CMBufferQueueDequeueAndRetain(*(DerivedStorage + 104));
    if (!v8)
    {
      return v198;
    }

    v9 = v8;
    v197 = (v7 + 528);
    OUTLINED_FUNCTION_9_12();
    DataBuffer = CMSampleBufferGetDataBuffer(v10);
    v12 = MEMORY[0x277CBECF0];
    v13 = MEMORY[0x277CBED28];
    if (DataBuffer)
    {
      blockBufferOut = 0;
      v203 = 0;
      theBuffer = 0;
      v14 = CMSampleBufferGetDataBuffer(v9);
      DataLength = CMBlockBufferGetDataLength(v14);
      v16 = *(v7 + 944);
      v192 = *(MEMORY[0x277CBF3A0] + 16);
      v194 = *MEMORY[0x277CBF3A0];
      block.origin = *MEMORY[0x277CBF3A0];
      block.size = v192;
      valuePtr = 0;
      AttachmentCGRect = sbufGetAttachmentCGRect(v9, *MEMORY[0x277CC1AB8], &block);
      if (AttachmentCGRect)
      {
        BlockBufferWithCFDataNoCopy = AttachmentCGRect;
        goto LABEL_266;
      }

      v191 = v16;
      if (CGRectEqualToRect(block, *(v7 + 560)))
      {
        v18 = 0;
      }

      else
      {
        if (gLogCategory_APEndpointStreamScreen <= 40 && (gLogCategory_APEndpointStreamScreen != -1 || OUTLINED_FUNCTION_13_0()))
        {
          OUTLINED_FUNCTION_19_7();
          OUTLINED_FUNCTION_6();
        }

        size = block.size;
        *(v7 + 560) = block.origin;
        *(v7 + 576) = size;
        v18 = 1;
      }

      block.origin = v194;
      block.size = v192;
      v34 = sbufGetAttachmentCGRect(v9, *MEMORY[0x277CC1A98], &block);
      if (v34)
      {
        BlockBufferWithCFDataNoCopy = v34;
        APSLogErrorAt();
LABEL_269:
        OUTLINED_FUNCTION_9_12();
LABEL_226:
        if (theBuffer)
        {
          CFRelease(theBuffer);
        }

        if (blockBufferOut)
        {
          CFRelease(blockBufferOut);
        }

        v82 = v203;
        if (!v203)
        {
          goto LABEL_232;
        }

        goto LABEL_231;
      }

      if (!CGRectEqualToRect(block, *(v7 + 592)))
      {
        if (gLogCategory_APEndpointStreamScreen <= 40 && (gLogCategory_APEndpointStreamScreen != -1 || OUTLINED_FUNCTION_13_0()))
        {
          OUTLINED_FUNCTION_19_7();
          OUTLINED_FUNCTION_6();
        }

        v35 = block.size;
        *(v7 + 592) = block.origin;
        *(v7 + 608) = v35;
        v18 = 1;
      }

      v195 = DataLength;
      v36 = OUTLINED_FUNCTION_137();
      v39 = CMGetAttachment(v36, v37, v38);
      if (v39 && (v40 = v39, v41 = CFGetTypeID(v39), v41 == CFNumberGetTypeID()))
      {
        CFNumberGetValue(v40, kCFNumberSInt32Type, &valuePtr);
      }

      else
      {
        APSLogErrorAt();
      }

      v42 = valuePtr;
      if (valuePtr != *(v7 + 624))
      {
        if (gLogCategory_APEndpointStreamScreen <= 40)
        {
          if (gLogCategory_APEndpointStreamScreen != -1 || (v43 = OUTLINED_FUNCTION_13_0(), v42 = valuePtr, v43))
          {
            OUTLINED_FUNCTION_6();
            v42 = valuePtr;
          }
        }

        *(v7 + 624) = v42;
        v18 = 1;
      }

      v193 = v14;
      v196 = a3;
      FormatDescription = CMSampleBufferGetFormatDescription(v9);
      MediaSubType = CMFormatDescriptionGetMediaSubType(FormatDescription);
      if (!FormatDescription)
      {
        goto LABEL_112;
      }

      if (MediaSubType != 1635148593 || *(v7 + 976))
      {
        if (*(v7 + 975))
        {
          if (!CMFormatDescriptionEqual(FormatDescription, *(v7 + 536)))
          {
            Dimensions = CMVideoFormatDescriptionGetDimensions(FormatDescription);
            if (gLogCategory_APEndpointStreamScreen <= 40 && (gLogCategory_APEndpointStreamScreen != -1 || OUTLINED_FUNCTION_13_0()))
            {
              OUTLINED_FUNCTION_6();
            }

            v58 = *(v7 + 536);
            *(v7 + 536) = FormatDescription;
            CFRetain(FormatDescription);
            v59 = MEMORY[0x277CBED28];
            if (v58)
            {
              CFRelease(v58);
            }

            *(v7 + 544) = Dimensions.width;
            *(v7 + 552) = Dimensions.height;
            v18 = 1;
LABEL_113:
            SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(v9, 0);
            if (SampleAttachmentsArray)
            {
              v86 = SampleAttachmentsArray;
              Count = CFArrayGetCount(SampleAttachmentsArray);
              LOBYTE(hostTime.value) = 0;
              v88 = Count - 1;
              if (Count >= 1)
              {
                v89 = 0;
                do
                {
                  CFArrayGetValueAtIndex(v86, v89);
                  if (FigCFDictionaryGetBooleanIfPresent())
                  {
                    break;
                  }
                }

                while (v88 != v89++);
                v91 = LOBYTE(hostTime.value) == 0;
LABEL_122:
                *(v7 + 1125) = v91;
                if (gLogCategory_APEndpointStreamScreen <= 20)
                {
                  if (gLogCategory_APEndpointStreamScreen != -1 || (OUTLINED_FUNCTION_6_17(), _LogCategory_Initialize()))
                  {
                    LogPrintF();
                  }
                }

                v92 = OUTLINED_FUNCTION_137();
                v95 = CMGetAttachment(v92, v93, v94);
                v96 = *v59;
                v97 = v95 == *v59;
                if (*(v7 + 628) != v97)
                {
                  *(v7 + 628) = v97;
                  v18 = 1;
                }

                v98 = OUTLINED_FUNCTION_137();
                *(v7 + 1124) = CMGetAttachment(v98, v99, v100) == v96;
                v101 = OUTLINED_FUNCTION_137();
                v104 = CMGetAttachment(v101, v102, v103);
                v105 = OUTLINED_FUNCTION_137();
                v108 = CMGetAttachment(v105, v106, v107);
                *(v7 + 1120) = 0;
                *(v7 + 1000) = 0;
                if (v104)
                {
                  v109 = CFGetTypeID(v104);
                  if (v109 == CFNumberGetTypeID())
                  {
                    CFNumberGetValue(v104, kCFNumberSInt64Type, (v7 + 1000));
                  }
                }

                if (!v108 || (v110 = CFGetTypeID(v108), v110 != CFArrayGetTypeID()))
                {
LABEL_153:
                  CMSampleBufferGetOutputPresentationTimeStamp(&hostTime, v9);
                  *(v7 + 992) = CMClockConvertHostTimeToSystemUnits(&hostTime);
                  if (*(v7 + 978))
                  {
                    v124 = OUTLINED_FUNCTION_137();
                    v127 = CMGetAttachment(v124, v125, v126);
                  }

                  else
                  {
                    v127 = 0;
                  }

                  v128 = v191 + v195;
                  v3 = MEMORY[0x277CC0638];
                  if (*(v7 + 979))
                  {
                    goto LABEL_160;
                  }

                  if (qword_280FB1C18 != -1)
                  {
                    dispatch_once(&qword_280FB1C18, &__block_literal_global_33);
                  }

                  if (_MergedGlobals_25)
                  {
LABEL_160:
                    v129 = CMSampleBufferGetSampleAttachmentsArray(v9, 0);
                    Value = v129;
                    if (v129)
                    {
                      if (CFArrayGetCount(v129) < 1)
                      {
                        Value = 0;
                      }

                      else
                      {
                        CFArrayGetValueAtIndex(Value, 0);
                        Value = FigCFDictionaryGetValue();
                      }
                    }

                    if (qword_280FB1C18 != -1)
                    {
                      dispatch_once(&qword_280FB1C18, &__block_literal_global_33);
                    }

                    if (_MergedGlobals_25 && gLogCategory_APEndpointStreamScreen <= 40 && (gLogCategory_APEndpointStreamScreen != -1 || OUTLINED_FUNCTION_13_0()))
                    {
                      OUTLINED_FUNCTION_6();
                    }

                    if (*(v7 + 979))
                    {
                      v131 = Value;
                    }

                    else
                    {
                      v131 = 0;
                    }
                  }

                  else
                  {
                    v131 = 0;
                  }

                  if (v127 | v131)
                  {
                    v132 = *MEMORY[0x277CBECE8];
                    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                    FigCFDictionarySetValue();
                    FigCFDictionarySetValue();
                    Data = CFPropertyListCreateData(v132, Mutable, kCFPropertyListBinaryFormat_v1_0, 0, 0);
                    if (Data)
                    {
                      OUTLINED_FUNCTION_19_1();
                      BlockBufferWithCFDataNoCopy = FigCreateBlockBufferWithCFDataNoCopy();
                      if (BlockBufferWithCFDataNoCopy)
                      {
                        APSLogErrorAt();
                      }
                    }

                    else
                    {
                      APSLogErrorAt();
                      BlockBufferWithCFDataNoCopy = 0;
                      theBuffer = 0;
                    }

                    if (Mutable)
                    {
                      CFRelease(Mutable);
                    }

                    if (Data)
                    {
                      CFRelease(Data);
                    }

                    if (BlockBufferWithCFDataNoCopy)
                    {
                      goto LABEL_268;
                    }

                    if (theBuffer)
                    {
                      v135 = *(v7 + 944) + CMBlockBufferGetDataLength(theBuffer);
                      v128 += v135;
                      if (!v18)
                      {
                        goto LABEL_189;
                      }
                    }

                    else
                    {
                      LODWORD(v135) = 0;
                      if (!v18)
                      {
LABEL_189:
                        v137 = malloc_type_calloc(1uLL, 0x80uLL, 0x73CF7482uLL);
                        *v137 = v128;
                        v137[4] = 0;
                        v138 = *(v7 + 992);
                        v139 = *(v7 + 960);
                        memset(&hostTime, 0, sizeof(hostTime));
                        v140 = *(v7 + 984);
                        v146 = *(*(CMBaseObjectGetVTable() + 16) + 16);
                        if (!v146 || v146(v140, v139 + v138, &hostTime))
                        {
                          if (gLogCategory_APEndpointStreamScreen <= 90)
                          {
                            if (gLogCategory_APEndpointStreamScreen != -1 || (OUTLINED_FUNCTION_6_17(), _LogCategory_Initialize()))
                            {
                              OUTLINED_FUNCTION_6_17();
                              LogPrintF();
                            }
                          }

                          hostTime = *(v7 + 632);
                        }

                        else
                        {
                          *(v7 + 632) = hostTime;
                        }

                        v147 = hostTime.value;
                        *(&v148 + 1) = LODWORD(hostTime.epoch);
                        *&v148 = *&hostTime.timescale;
                        *(v137 + 1) = v148 >> 32;
                        *(v137 + 5) = v147;
                        *(v137 + 2) = *(v7 + 1000);
                        *(v137 + 6) = 0;
                        *(v137 + 7) = v135;
                        v149 = *(v7 + 1008);
                        memset(&hostTime, 0, sizeof(hostTime));
                        if (v149)
                        {
                          v150 = *(v7 + 984);
                          epoch_low = *(*(CMBaseObjectGetVTable() + 16) + 16);
                          if (epoch_low)
                          {
                            epoch_low(v150, v149, &hostTime);
                            v152 = *&hostTime.timescale;
                            epoch_low = LODWORD(hostTime.epoch);
LABEL_202:
                            *(&v154 + 1) = epoch_low;
                            *&v154 = v152;
                            v153 = v154 >> 32;
                            *(v137 + 4) = v153;
                            if (*(v7 + 1124))
                            {
                              v155 = 0x80;
                            }

                            else
                            {
                              v155 = 0;
                            }

                            v137[5] = (*(v7 + 1124) != 0) << 7;
                            if (*(v7 + 1125))
                            {
                              v137[5] = v155 | 0x10;
                            }

                            *(v137 + 11) = v153;
                            if (*(v7 + 1120))
                            {
                              v156 = 0;
                              v3 = (v137 + 96);
                              v157 = v7 + 1016;
                              do
                              {
                                if (v156 + 1 >= *(v7 + 1120))
                                {
                                  break;
                                }

                                v158 = UpTicksToMilliseconds();
                                if (v158 >= 0x10000)
                                {
                                  if (gLogCategory_APEndpointStreamScreen <= 60)
                                  {
                                    if (gLogCategory_APEndpointStreamScreen != -1 || (OUTLINED_FUNCTION_6_17(), _LogCategory_Initialize()))
                                    {
                                      LogPrintF();
                                    }
                                  }

                                  LOWORD(v158) = -1;
                                }

                                *(v3 + v156++) = v158;
                                v157 += 8;
                              }

                              while (v156 != 16);
                            }

                            v159 = OUTLINED_FUNCTION_20_6(*MEMORY[0x277CBECE8], v137, v141, *MEMORY[0x277CBECF0], v142, v143, v144, v145, &blockBufferOut);
                            if (!v159)
                            {
                              sbpd_encryptBBuf(v197, blockBufferOut, v193);
                              OUTLINED_FUNCTION_9_12();
                              if (v160)
                              {
                                BlockBufferWithCFDataNoCopy = v160;
                                APSLogErrorAt();
                                a3 = v196;
                                goto LABEL_226;
                              }

                              a3 = v196;
                              if (theBuffer)
                              {
                                sbpd_encryptBBuf(v197, blockBufferOut, theBuffer);
                                if (v182)
                                {
                                  BlockBufferWithCFDataNoCopy = v182;
                                  goto LABEL_266;
                                }

                                OUTLINED_FUNCTION_19_1();
                                appended = CMBlockBufferAppendBufferReference(v183, v184, v185, v186, 0);
                                if (appended)
                                {
                                  BlockBufferWithCFDataNoCopy = appended;
                                  goto LABEL_266;
                                }
                              }

                              v161 = blockBufferOut;
                              v162 = v203;
                              if (v203)
                              {
                                OUTLINED_FUNCTION_19_1();
                                v167 = CMBlockBufferAppendBufferReference(v163, v164, v165, v166, 0);
                                v161 = v162;
                                if (v167)
                                {
                                  BlockBufferWithCFDataNoCopy = v167;
LABEL_266:
                                  APSLogErrorAt();
                                  goto LABEL_226;
                                }
                              }

                              else
                              {
                                blockBufferOut = 0;
                                v203 = v161;
                              }

                              OUTLINED_FUNCTION_19_1();
                              BlockBufferWithCFDataNoCopy = CMBlockBufferAppendBufferReference(v168, v169, v170, v171, 0);
                              if (!BlockBufferWithCFDataNoCopy)
                              {
                                ++*(v7 + 1144);
                                CMBlockBufferGetDataLength(v161);
                                OUTLINED_FUNCTION_19_1();
                                kdebug_trace();
                                v198 = v161;
                                v203 = 0;
                                goto LABEL_226;
                              }

                              goto LABEL_266;
                            }

                            BlockBufferWithCFDataNoCopy = v159;
                            APSLogErrorAt();
                            free(v137);
                            goto LABEL_268;
                          }
                        }

                        else
                        {
                          epoch_low = 0;
                        }

                        v152 = 0;
                        goto LABEL_202;
                      }
                    }
                  }

                  else
                  {
                    LODWORD(v135) = 0;
                    theBuffer = 0;
                    if (!v18)
                    {
                      goto LABEL_189;
                    }
                  }

                  v136 = sbpd_createConfigBBuf(v197, &v203);
                  if (!v136)
                  {
                    goto LABEL_189;
                  }

                  BlockBufferWithCFDataNoCopy = v136;
LABEL_268:
                  APSLogErrorAt();
                  a3 = v196;
                  goto LABEL_269;
                }

                v111 = CFArrayGetCount(v108);
                v112 = v111;
                v113 = v7 + 1008;
                if (v111 < 1)
                {
                  v123 = mach_absolute_time();
                  v116 = 0;
                }

                else
                {
                  v114 = 0;
                  if (v111 >= 0xE)
                  {
                    v115 = 14;
                  }

                  else
                  {
                    v115 = v111;
                  }

                  v116 = v115;
                  do
                  {
                    CFArrayGetValueAtIndex(v108, v114);
                    *(v113 + 8 * v114++) = CFGetInt64();
                  }

                  while (v115 != v114);
                  v117 = v115 - 1;
                  v118 = (v7 + 1008);
                  do
                  {
                    v120 = *v118++;
                    v119 = v120;
                    if (v120)
                    {
                      break;
                    }
                  }

                  while (v117--);
                  v122 = (v7 + 1008);
                  do
                  {
                    if (*v122)
                    {
                      v119 = *v122;
                    }

                    *v122++ = v119;
                    --v115;
                  }

                  while (v115);
                  v123 = mach_absolute_time();
                  if (v112 > 13)
                  {
                    goto LABEL_150;
                  }
                }

                *(v113 + 8 * v116++) = v123;
LABEL_150:
                if (v116 <= 13)
                {
                  *(v113 + 8 * v116++) = v123;
                }

                *(v7 + 1120) = v116;
                goto LABEL_153;
              }
            }

            else
            {
              LOBYTE(hostTime.value) = 0;
            }

            v91 = 1;
            goto LABEL_122;
          }
        }

        else if (gLogCategory_APEndpointStreamScreen <= 90)
        {
          if (gLogCategory_APEndpointStreamScreen != -1 || (OUTLINED_FUNCTION_6_17(), _LogCategory_Initialize()))
          {
            OUTLINED_FUNCTION_6_17();
            LogPrintF();
          }
        }

        goto LABEL_112;
      }

      Extension = CMFormatDescriptionGetExtension(FormatDescription, *MEMORY[0x277CC03B0]);
      if (!Extension)
      {
        goto LABEL_103;
      }

      v48 = Extension;
      v49 = CFGetTypeID(Extension);
      if (v49 == CFDictionaryGetTypeID())
      {
        ValueAtIndex = CFDictionaryGetValue(v48, @"avcC");
      }

      else
      {
        v51 = CFGetTypeID(v48);
        if (v51 != CFArrayGetTypeID())
        {
          goto LABEL_103;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(v48, 0);
      }

      v52 = ValueAtIndex;
      if (ValueAtIndex)
      {
        v53 = CFGetTypeID(ValueAtIndex);
        if (v53 == CFDataGetTypeID())
        {
          if (!FigCFEqual())
          {
            if (gLogCategory_APEndpointStreamScreen <= 40 && (gLogCategory_APEndpointStreamScreen != -1 || OUTLINED_FUNCTION_13_0()))
            {
              CFDataGetLength(v52);
              OUTLINED_FUNCTION_6();
            }

            v188 = *v197;
            *v197 = v52;
            CFRetain(v52);
            if (v188)
            {
              CFRelease(v188);
            }

            v83 = 0;
            goto LABEL_104;
          }
        }

        else if (gLogCategory_APEndpointStreamScreen <= 90)
        {
          if (gLogCategory_APEndpointStreamScreen != -1 || (OUTLINED_FUNCTION_6_17(), _LogCategory_Initialize()))
          {
            OUTLINED_FUNCTION_6_17();
            LogPrintF();
          }
        }
      }

LABEL_103:
      v83 = 1;
LABEL_104:
      v84 = CMVideoFormatDescriptionGetDimensions(FormatDescription);
      if (*(v7 + 544) == v84.width && *(v7 + 552) == v84.height)
      {
        if (v83)
        {
          goto LABEL_112;
        }
      }

      else
      {
        if (gLogCategory_APEndpointStreamScreen <= 40 && (gLogCategory_APEndpointStreamScreen != -1 || OUTLINED_FUNCTION_13_0()))
        {
          OUTLINED_FUNCTION_6();
        }

        *(v7 + 544) = v84.width;
        *(v7 + 552) = v84.height;
      }

      v18 = 1;
LABEL_112:
      v59 = MEMORY[0x277CBED28];
      goto LABEL_113;
    }

    v19 = OUTLINED_FUNCTION_137();
    v22 = CMGetAttachment(v19, v20, v21);
    if (!v22)
    {
      v27 = OUTLINED_FUNCTION_137();
      *(v7 + 628) = CMGetAttachment(v27, v28, v29) == *v13;
      *(v7 + 992) = mach_absolute_time();
      BlockBufferWithCFDataNoCopy = sbpd_createConfigBBuf(v197, &v198);
      OUTLINED_FUNCTION_9_12();
LABEL_232:
      if (!BlockBufferWithCFDataNoCopy)
      {
        v172 = CMBlockBufferGetDataLength(v198);
        mach_absolute_time();
        v173 = UpTicksToNanoseconds();
        v174 = 0;
        v175 = *(v7 + 928);
        *(v7 + 1136) += v172;
        v176 = (v7 + 672 + 16 * (v175 & 0xF));
        *v176 = v173;
        v176[1] = v172;
        v177 = -16;
        v178 = v175;
        do
        {
          v179 = (v7 + 672 + 16 * (v178 & 0xF));
          if (v173 - *v179 > v3)
          {
            break;
          }

          v174 += v179[1];
          --v178;
        }

        while (!__CFADD__(v177++, 1));
        if (v174 >> 3 >= 0xC35)
        {
          *(v7 + 664) = v173;
        }

        *(v7 + 928) = v175 + 1;
        *a3 = 0;
LABEL_240:
        CFRelease(v9);
        return v198;
      }

      APSLogErrorAt();
      goto LABEL_255;
    }

    v23 = v22;
    hostTime.value = 0;
    blockBufferOut = 0;
    v203 = 0;
    mach_absolute_time();
    v24 = UpTicksToNanoseconds();
    v25 = CFGetTypeID(v23);
    if (v25 == CFDictionaryGetTypeID())
    {
      if (!*(v7 + 973))
      {
        v26 = v24;
        v31 = 0;
        v32 = 0;
        goto LABEL_65;
      }

      v3 = v12;
      v26 = v24;
      FigCFDictionarySetDouble();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      if (gLogCategory_APEndpointStreamScreen <= 30 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v54 = CFPropertyListCreateData(*MEMORY[0x277CBECE8], v23, kCFPropertyListBinaryFormat_v1_0, 0, 0);
      if (v54)
      {
        v31 = v54;
        OUTLINED_FUNCTION_19_1();
        v55 = FigCreateBlockBufferWithCFDataNoCopy();
        if (v55)
        {
          BlockBufferWithCFDataNoCopy = v55;
          APSLogErrorAt();
          OUTLINED_FUNCTION_9_12();
LABEL_95:
          CFRelease(v31);
          goto LABEL_96;
        }

        v32 = CMBlockBufferGetDataLength(v203);
        CFDictionaryGetInt64();
        sbpd_addHistogramValue(v197, @"Source Frames");
        sbpd_addHistogramValue(v197, @"Sent Frames");
        CFDictionaryGetInt64();
        sbpd_addHistogramValue(v197, @"Dropped Overflow Frames");
        sbpd_addHistogramValue(v197, @"Used Bandwidth");
        CFDictionaryGetDouble();
        sbpd_addHistogramValue(v197, @"Available Bandwidth");
LABEL_65:
        OUTLINED_FUNCTION_9_12();
        if (v57 < v3 + v56 + 1 && *(v7 + 974))
        {
          if (gLogCategory_APEndpointStreamScreen <= 30 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          v60 = *MEMORY[0x277CBECE8];
          *&block.origin.x = MEMORY[0x277D85DD0];
          *&block.origin.y = 0x40000000;
          *&block.size.width = __getRandomDataBlob_block_invoke;
          *&block.size.height = &__block_descriptor_tmp_199_0;
          v205 = 25000;
          if (qword_280FB1C20 != -1)
          {
            dispatch_once(&qword_280FB1C20, &block);
          }

          v61 = CMBlockBufferCreateWithMemoryBlock(v60, qword_280FB1C28, 0x61A8uLL, *MEMORY[0x277CBED00], 0, 0, 0x61A8uLL, 0, &blockBufferOut);
          if (v61)
          {
            BlockBufferWithCFDataNoCopy = v61;
            goto LABEL_281;
          }

          v32 += CMBlockBufferGetDataLength(blockBufferOut);
        }

        v62 = malloc_type_calloc(1uLL, 0x80uLL, 0x79074DEEuLL);
        v68 = v62;
        *v62 = v32;
        if (*(v7 + 973))
        {
          v69 = 5;
        }

        else
        {
          v69 = 2;
        }

        *(v62 + 4) = v69;
        *(v62 + 5) = *(v7 + 968);
        if (v203)
        {
          v70 = CMBlockBufferGetDataLength(v203);
        }

        else
        {
          v70 = 0.0;
        }

        v68[31] = v70;
        v71 = OUTLINED_FUNCTION_20_6(*MEMORY[0x277CBECE8], v68, v63, *v12, v64, v65, v66, v67, &hostTime);
        if (v71)
        {
          BlockBufferWithCFDataNoCopy = v71;
          APSLogErrorAt();
          free(v68);
          goto LABEL_94;
        }

        if (v203 && (OUTLINED_FUNCTION_19_1(), (v76 = CMBlockBufferAppendBufferReference(v72, v73, v74, v75, 0)) != 0))
        {
          BlockBufferWithCFDataNoCopy = v76;
        }

        else
        {
          if (!blockBufferOut || (OUTLINED_FUNCTION_19_1(), (v81 = CMBlockBufferAppendBufferReference(v77, v78, v79, v80, 0)) == 0))
          {
            BlockBufferWithCFDataNoCopy = 0;
            *(v7 + 656) = v26;
            *(v7 + 1136) = 0;
            *(v7 + 1144) = 0;
            v198 = hostTime.value;
            hostTime.value = 0;
            goto LABEL_94;
          }

          BlockBufferWithCFDataNoCopy = v81;
        }

LABEL_281:
        APSLogErrorAt();
LABEL_94:
        if (!v31)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      }
    }

    APSLogErrorAt();
    BlockBufferWithCFDataNoCopy = -16760;
    OUTLINED_FUNCTION_9_12();
LABEL_96:
    if (v203)
    {
      CFRelease(v203);
    }

    if (blockBufferOut)
    {
      CFRelease(blockBufferOut);
    }

    v82 = hostTime.value;
    if (!hostTime.value)
    {
      goto LABEL_232;
    }

LABEL_231:
    CFRelease(v82);
    goto LABEL_232;
  }

  v189 = APSSignalErrorAt();
  if (!v189)
  {
    return v198;
  }

  BlockBufferWithCFDataNoCopy = v189;
  v9 = 0;
LABEL_255:
  *(v7 + 1148) = 1;
  if (gLogCategory_APEndpointStreamScreen <= 90 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  screenstream_handleFatalError(a1, BlockBufferWithCFDataNoCopy, @"sbuf processing failed");
  if (v9)
  {
    goto LABEL_240;
  }

  return v198;
}

uint64_t screenstream_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, __CFDictionary **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamScreen <= 30 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (CFEqual(a2, *MEMORY[0x277CC1900]))
  {
    v8 = MEMORY[0x277CC1980];
LABEL_10:
    v9 = *v8;
LABEL_11:
    Int64 = CFRetain(v9);
LABEL_12:
    v11 = Int64;
LABEL_13:
    result = 0;
    *a4 = v11;
    return result;
  }

  if (CFEqual(a2, *MEMORY[0x277CC18B0]))
  {
    v8 = MEMORY[0x277CC1950];
    if (*(DerivedStorage + 88) != 110)
    {
      v8 = MEMORY[0x277CC1948];
    }

    goto LABEL_10;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1878]))
  {
    v9 = *(DerivedStorage + 80);
    goto LABEL_11;
  }

  if (CFEqual(a2, *MEMORY[0x277CD6700]))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v14 = MEMORY[0x277CBF3A8];
    if (*(DerivedStorage + 368) == 1)
    {
      v25 = *MEMORY[0x277CBF3A8];
      v24 = 0;
      APSScreenGetMediaPresentationParams();
      if (gLogCategory_APEndpointStreamScreen <= 50 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
      {
        screenstream_CopyProperty_cold_2();
      }

      FigCFDictionarySetCGSize();
      if (*(DerivedStorage + 385))
      {
        CFDictionarySetValue(Mutable, *MEMORY[0x277CD6660], *(DerivedStorage + 320));
      }

LABEL_44:
      FigCFDictionarySetInt32();
      if (*(DerivedStorage + 264) != *v14 || *(DerivedStorage + 272) != v14[1])
      {
        FigCFDictionarySetCGSize();
      }

      if (*(DerivedStorage + 394))
      {
        FigCFDictionarySetDouble();
        if (*(DerivedStorage + 288) >= 1)
        {
          FigCFDictionarySetInt32();
        }
      }

      v15 = *(DerivedStorage + 304);
      if (v15)
      {
        CFDictionarySetValue(Mutable, *MEMORY[0x277CD6640], v15);
      }

      v16 = *(DerivedStorage + 208);
      if (v16)
      {
        CFDictionarySetValue(Mutable, *MEMORY[0x277CD6638], v16);
      }

      v17 = *(DerivedStorage + 312);
      if (v17)
      {
        CFDictionarySetValue(Mutable, *MEMORY[0x277CD6658], v17);
      }

      v18 = *MEMORY[0x277CBED28];
      v19 = *MEMORY[0x277CBED10];
      if (*(DerivedStorage + 377))
      {
        v20 = *MEMORY[0x277CBED28];
      }

      else
      {
        v20 = *MEMORY[0x277CBED10];
      }

      CFDictionarySetValue(Mutable, *MEMORY[0x277CD6668], v20);
      if (*(DerivedStorage + 378))
      {
        v21 = v18;
      }

      else
      {
        v21 = v19;
      }

      CFDictionarySetValue(Mutable, *MEMORY[0x277CD6678], v21);
      result = 0;
      *a4 = Mutable;
      return result;
    }

    if (*(DerivedStorage + 386) && *(DerivedStorage + 1196) <= 0)
    {
      FigCFDictionarySetCGSize();
      if (gLogCategory_APEndpointStreamScreen <= 40 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
      {
        goto LABEL_40;
      }
    }

    else
    {
      FigCFDictionarySetCGSize();
      if (gLogCategory_APEndpointStreamScreen <= 40 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
      {
LABEL_40:
        screenstream_CopyProperty_cold_1();
      }
    }

    if (*(DerivedStorage + 410) && *(DerivedStorage + 385))
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x277CD6660], *(DerivedStorage + 320));
    }

    goto LABEL_44;
  }

  if (CFEqual(a2, *MEMORY[0x277CD6730]))
  {
    Int64 = screenstream_copyNetworkInfo(DerivedStorage);
    goto LABEL_12;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1880]) || CFEqual(a2, @"IsPlaying"))
  {
    v8 = MEMORY[0x277CBED28];
    if (!*(DerivedStorage + 26))
    {
      v8 = MEMORY[0x277CBED10];
    }

    goto LABEL_10;
  }

  if (CFEqual(a2, @"EndpointStreamShowInfo"))
  {
    Int64 = screenstreamudp_copyShowInfo(DerivedStorage);
    goto LABEL_12;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1898]))
  {
    Int64 = screenstream_copyOutputLatency(DerivedStorage);
    goto LABEL_12;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1908]))
  {
    v9 = *(DerivedStorage + 352);
    if (v9)
    {
      goto LABEL_11;
    }

LABEL_70:
    v11 = 0;
    goto LABEL_13;
  }

  if (CFEqual(a2, @"screenStreamType"))
  {
    v9 = @"screenStreamTCP";
    goto LABEL_11;
  }

  if (CFEqual(a2, @"transportGlitchCount"))
  {
    atomic_load((DerivedStorage + 1200));
    Int64 = CFNumberCreateInt64();
    goto LABEL_12;
  }

  if (CFEqual(a2, @"usageMode"))
  {
    v9 = *(DerivedStorage + 184);
    if (v9)
    {
      goto LABEL_11;
    }

    goto LABEL_70;
  }

  if (CFEqual(a2, @"RTCStats"))
  {
    v22 = *(DerivedStorage + 1160);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __screenstream_CopyProperty_block_invoke;
    block[3] = &__block_descriptor_tmp_85_0;
    block[4] = a4;
    block[5] = a3;
    block[6] = DerivedStorage;
    dispatch_sync(v22, block);
    if (*a4)
    {
      return 0;
    }

    else
    {
      screenstream_CopyProperty_cold_3();
      return 4294950535;
    }
  }

  else
  {
    if (gLogCategory_APEndpointStreamScreen <= 30 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    return 4294954512;
  }
}

uint64_t APHIDClientHandleHIDReport(uint64_t a1)
{
  v17 = 0;
  v2 = gLogCategory_APHIDClient;
  if (gLogCategory_APHIDClient <= 20)
  {
    if (gLogCategory_APHIDClient == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_13;
      }

      v2 = gLogCategory_APHIDClient;
    }

    if (v2 <= 10)
    {
      if (v2 != -1 || (_LogCategory_Initialize(), v2 = gLogCategory_APHIDClient, gLogCategory_APHIDClient <= 10))
      {
        if (v2 == -1)
        {
          _LogCategory_Initialize();
        }
      }
    }

    LogPrintF();
  }

LABEL_13:
  CFDataGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  CFStringGetTypeID();
  v4 = CFDictionaryGetTypedValue();
  v5 = mach_absolute_time();
  v6 = v5;
  if (APHIDClientHandleHIDReport_lastLogTime && (v7 = (v5 - APHIDClientHandleHIDReport_lastLogTime), (v7 / UpTicksPerSecond()) < 1.0))
  {
    v8 = 0;
  }

  else
  {
    APHIDClientHandleHIDReport_lastLogTime = v6;
    v8 = 1;
  }

  CFDictionaryGetInt64();
  v9 = NTPtoUpTicks();
  v10 = v9;
  if (v9 <= v6)
  {
    v11 = v6 - v9;
  }

  else
  {
    v11 = v9 - v6;
  }

  if (v11 <= UpTicksPerSecond())
  {
    v6 = v10;
  }

  else if (gLogCategory_APHIDClient <= 50 && (gLogCategory_APHIDClient != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  Value = CFDictionaryGetValue(*(a1 + 24), v4);
  if (Value)
  {
    v13 = Value;
    BytePtr = CFDataGetBytePtr(TypedValue);
    Length = CFDataGetLength(TypedValue);
    v17 = IOHIDUserDeviceHandleReportWithTimeStamp(v13, v6, BytePtr, Length);
    if (!v17)
    {
      if (v8 && gLogCategory_APHIDClient <= 50 && (gLogCategory_APHIDClient != -1 || _LogCategory_Initialize()))
      {
        APHIDClientHandleHIDReport_cold_4();
      }

      return v17;
    }

    APHIDClientHandleHIDReport_cold_3();
  }

  else
  {
    APHIDClientHandleHIDReport_cold_5();
  }

  if (gLogCategory_APHIDClient <= 50 && (gLogCategory_APHIDClient != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v17;
}

uint64_t carEndpoint_handleEventCreatingReply(uint64_t a1, int a2, uint64_t a3, const void *a4, void *a5)
{
  v81 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (carEndpoint_isDissociated(DerivedStorage))
  {
    return 4294950573;
  }

  if (a2 != 1668116068)
  {
    if (gLogCategory_APEndpointCarPlay <= 60 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v12 = 0;
    v17 = 0;
    goto LABEL_68;
  }

  CFDataWithBlockBufferNoCopy = FigCreateCFDataWithBlockBufferNoCopy();
  if (CFDataWithBlockBufferNoCopy)
  {
    restarted = CFDataWithBlockBufferNoCopy;
    carEndpoint_handleEventCreatingReply_cold_1();
    v17 = 0;
    v12 = 0;
LABEL_102:
    Data = 0;
    goto LABEL_70;
  }

  v11 = CFPropertyListCreateWithData(0, 0, 0, 0, 0);
  v12 = v11;
  if (!v11 || (v13 = CFGetTypeID(v11), v13 != CFDictionaryGetTypeID()))
  {
    carEndpoint_handleEventCreatingReply_cold_19();
    v17 = 0;
    Data = 0;
    restarted = 4294950576;
    goto LABEL_70;
  }

  v14 = CMBaseObjectGetDerivedStorage();
  v54 = 0;
  v55 = &v54;
  v56 = 0x2000000000;
  v57 = 0;
  v15 = CFDictionaryGetValue(v12, @"type");
  CFDictionaryGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  if (!v15)
  {
    carEndpoint_handleEventCreatingReply_cold_15();
    v17 = 0;
    restarted = 4294950576;
    goto LABEL_52;
  }

  v17 = TypedValue;
  if (gLogCategory_APEndpointCarPlay <= 30 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (CFEqual(v15, @"forceKeyFrame"))
  {
    v18 = CMBaseObjectGetDerivedStorage();
    *&v60 = 0;
    *(&v60 + 1) = &v60;
    v61 = 0x2000000000uLL;
    if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    CFStringGetTypeID();
    v28 = CFDictionaryGetTypedValue();
    v29 = *(v18 + 168);
    *&block = MEMORY[0x277D85DD0];
    *(&block + 1) = 0x40000000;
    *&v66 = __carEndpoint_forceKeyFrame_block_invoke;
    *(&v66 + 1) = &unk_27849E938;
    *&v67 = &v60;
    *(&v67 + 1) = v28;
    *&v68 = a4;
    *(&v68 + 1) = v18;
    dispatch_sync(v29, &block);
    v30 = *(*(&v60 + 1) + 24);
    if (v30)
    {
      restarted = APEndpointStreamScreenRestartBitstream(v30);
      if (restarted)
      {
        carEndpoint_handleEventCreatingReply_cold_2();
      }

      goto LABEL_47;
    }

LABEL_106:
    restarted = 0;
LABEL_47:
    v31 = *(*(&v60 + 1) + 24);
    if (v31)
    {
      CFRelease(v31);
    }

    _Block_object_dispose(&v60, 8);
    goto LABEL_50;
  }

  if (CFEqual(v15, @"hidSendReport"))
  {
    v19 = CMBaseObjectGetDerivedStorage();
    *&v60 = 0;
    *(&v60 + 1) = &v60;
    v61 = 0x2000000000uLL;
    v20 = *(v19 + 168);
    *&block = MEMORY[0x277D85DD0];
    *(&block + 1) = 0x40000000;
    *&v66 = __carEndpoint_sendHIDReport_block_invoke;
    *(&v66 + 1) = &unk_27849E960;
    *&v67 = &v60;
    *(&v67 + 1) = v19;
    dispatch_sync(v20, &block);
    v21 = *(*(&v60 + 1) + 24);
    if (v21)
    {
      restarted = APHIDClientHandleHIDReport(v21);
      if (restarted)
      {
        carEndpoint_handleEventCreatingReply_cold_3();
      }

      goto LABEL_47;
    }

    goto LABEL_106;
  }

  if (CFEqual(v15, @"changeModes"))
  {
    v22 = CMBaseObjectGetDerivedStorage();
    v64 = 0;
    v63 = 0u;
    v61 = 0u;
    v62 = 0u;
    v60 = 0u;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    block = 0u;
    v66 = 0u;
    memset(v59, 0, sizeof(v59));
    value = 0;
    if (v17)
    {
      if (*(v22 + 520))
      {
        v23 = APStarkModeChangeRequestMakeFromDictionary(v17, 1, &v60);
        if (v23)
        {
          restarted = v23;
          carEndpoint_handleEventCreatingReply_cold_4();
          v17 = 0;
          v24 = 0;
        }

        else
        {
          v24 = CFDictionaryCopyCString();
          if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
          {
            carEndpoint_handleEventCreatingReply_cold_5(v24, &v60, &block);
          }

          v25 = FigStarkModeControllerRequestModeChange();
          Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (!Mutable)
          {
            carEndpoint_handleEventCreatingReply_cold_7();
            v17 = 0;
            restarted = 4294950575;
            goto LABEL_39;
          }

          CFDictionarySetInt64();
          if (!v25)
          {
            DictionaryRepresentation = APStarkModeCreateDictionaryRepresentation(v59, &value);
            if (DictionaryRepresentation)
            {
              restarted = DictionaryRepresentation;
              carEndpoint_handleEventCreatingReply_cold_6();
              v17 = 0;
              goto LABEL_39;
            }

            if (value)
            {
              CFDictionarySetValue(Mutable, @"params", value);
            }
          }

          restarted = 0;
          v17 = Mutable;
        }

        Mutable = 0;
      }

      else
      {
        carEndpoint_handleEventCreatingReply_cold_8();
        v17 = 0;
        v24 = 0;
        Mutable = 0;
        restarted = 4294949690;
      }
    }

    else
    {
      carEndpoint_handleEventCreatingReply_cold_9();
      v24 = 0;
      Mutable = 0;
      restarted = 4294950576;
    }

LABEL_39:
    free(v24);
    if (value)
    {
      CFRelease(value);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

LABEL_51:
    if (restarted)
    {
      APSLogErrorAt();
      if (v17)
      {
        CFRelease(v17);
LABEL_105:
        v17 = 0;
        goto LABEL_52;
      }
    }

    goto LABEL_52;
  }

  if (CFEqual(v15, @"iAPSendMessage"))
  {
    v47 = CMBaseObjectGetDerivedStorage();
    *&v60 = 0;
    *(&v60 + 1) = &v60;
    v61 = 0x2000000000uLL;
    if (v17)
    {
      v48 = *(v47 + 168);
      *&block = MEMORY[0x277D85DD0];
      *(&block + 1) = 0x40000000;
      *&v66 = __carEndpoint_sendiAPMessage_block_invoke;
      *(&v66 + 1) = &unk_27849E988;
      *&v67 = &v60;
      *(&v67 + 1) = v47;
      dispatch_sync(v48, &block);
      if (*(*(&v60 + 1) + 24))
      {
        CFDataGetTypeID();
        v49 = CFDictionaryGetTypedValue();
        if (v49)
        {
          v50 = v49;
          if (gLogCategory_APEndpointCarPlay <= 30 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
          {
            carEndpoint_handleEventCreatingReply_cold_10();
          }

          restarted = APAccTransportClientEndpointForwardData(*(*(&v60 + 1) + 24), v50);
          if (restarted)
          {
            carEndpoint_handleEventCreatingReply_cold_11();
          }
        }

        else
        {
          carEndpoint_handleEventCreatingReply_cold_12();
          restarted = 4294954516;
        }
      }

      else
      {
        restarted = 4294954514;
      }
    }

    else
    {
      carEndpoint_handleEventCreatingReply_cold_13();
      restarted = 4294950576;
    }

    goto LABEL_47;
  }

  if (CFEqual(v15, @"requestSiri"))
  {
    updated = carEndpoint_requestSiri(a4, v17);
    goto LABEL_110;
  }

  if (CFEqual(v15, @"requestUI"))
  {
    updated = carEndpoint_requestUI(a4, v17);
LABEL_110:
    restarted = updated;
LABEL_50:
    v17 = 0;
    goto LABEL_51;
  }

  if (CFEqual(v15, @"updateViewArea"))
  {
    updated = carEndpoint_updateViewArea(a4, v17);
    goto LABEL_110;
  }

  if (CFEqual(v15, @"setLimitedUI"))
  {
    updated = carEndpoint_setLimitedUI(a4, v17);
    goto LABEL_110;
  }

  if (CFEqual(v15, @"setNightMode"))
  {
    updated = carEndpoint_setNightMode(a4, v17);
    goto LABEL_110;
  }

  if (CFEqual(v15, @"setVideoPlaybackAllowed"))
  {
    updated = carEndpoint_updateVideoPlaybackAllowed(a4, v17, 1);
    goto LABEL_110;
  }

  if (CFEqual(v15, @"updateVehicleInformation"))
  {
    updated = carEndpoint_updateVehicleInformation(a4, v17);
    goto LABEL_110;
  }

  v52 = carEndpoint_validateRuntimeFeaturesWithAccessory(a4, v15, 0);
  if (v52)
  {
    restarted = v52;
    carEndpoint_handleEventCreatingReply_cold_14();
    goto LABEL_105;
  }

  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v53 = *(v14 + 168);
  *&block = MEMORY[0x277D85DD0];
  *(&block + 1) = 0x40000000;
  *&v66 = __carEndpoint_processEventCreatingResponse_block_invoke;
  *(&v66 + 1) = &unk_27849E910;
  *&v67 = &v54;
  *(&v67 + 1) = v14;
  dispatch_sync(v53, &block);
  carEndpoint_postNotification(a4, *MEMORY[0x277CC0D98], *(v55 + 6), v12);
  v17 = 0;
  restarted = 0;
LABEL_52:
  _Block_object_dispose(&v54, 8);
  CFDictionaryGetValue(v12, @"type");
  CFDataGetLength(0);
  v32 = CMBaseObjectGetDerivedStorage();
  LODWORD(v60) = 0;
  LODWORD(v59[0]) = 0;
  LODWORD(v54) = 0;
  if (*(v32 + 576))
  {
    v33 = v32;
    v34 = *MEMORY[0x277CBECE8];
    v35 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v35)
    {
      v36 = v35;
      Current = CFAbsoluteTimeGetCurrent();
      v38 = CFCalendarCreateWithIdentifier(v34, *MEMORY[0x277CBEE80]);
      v39 = v38;
      if (v38)
      {
        CFCalendarDecomposeAbsoluteTime(v38, Current, "Hms", &v60, v59, &v54);
        v40 = v60;
        v41 = v59[0];
        v42 = v54;
      }

      else
      {
        v42 = 0;
        v41 = 0;
        v40 = 0;
      }

      snprintf(&block, 0x14uLL, "%02d:%02d:%02d.%d", v40, v41, v42, ((Current - floor(Current)) * 1000000.0));
      v43 = CFStringCreateWithCString(v34, &block, 0x8000100u);
      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      if (CFArrayGetCount(*(v33 + 576)) >= *(v33 + 584))
      {
        CFArrayRemoveValueAtIndex(*(v33 + 576), 0);
      }

      CFArrayAppendValue(*(v33 + 576), v36);
      if (v43)
      {
        CFRelease(v43);
      }

      CFRelease(v36);
      if (v39)
      {
        CFRelease(v39);
      }
    }
  }

  if (restarted)
  {
    carEndpoint_handleEventCreatingReply_cold_16();
    goto LABEL_102;
  }

  if (!v17)
  {
LABEL_68:
    Data = 0;
LABEL_69:
    restarted = 0;
    *a5 = 0;
    goto LABEL_70;
  }

  Data = CFPropertyListCreateData(0, v17, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  if (!Data)
  {
    carEndpoint_handleEventCreatingReply_cold_18();
    restarted = 4294950575;
    goto LABEL_70;
  }

  BlockBufferWithCFDataNoCopy = FigCreateBlockBufferWithCFDataNoCopy();
  if (!BlockBufferWithCFDataNoCopy)
  {
    goto LABEL_69;
  }

  restarted = BlockBufferWithCFDataNoCopy;
  carEndpoint_handleEventCreatingReply_cold_17();
LABEL_70:
  if (v12)
  {
    CFRelease(v12);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (Data)
  {
    CFRelease(Data);
  }

  return restarted;
}

uint64_t apsession_eventStreamCreateReplyCallback()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 344))
  {
    v1 = MEMORY[0x223DB15F0](DerivedStorage + 344);
  }

  else
  {
    v1 = 0;
  }

  v2 = *(DerivedStorage + 368);
  FigSimpleMutexUnlock();
  if (v1)
  {
    if (v2)
    {
      v3 = APSDispatchSyncTask();
    }

    else
    {
      v3 = 0;
    }

    CFRelease(v1);
  }

  else
  {
    apsession_eventStreamCreateReplyCallback_cold_1();
    return 4294895467;
  }

  return v3;
}

uint64_t carEndpoint_isDissociated(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v1 = *(a1 + 168);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = __carEndpoint_isDissociated_block_invoke;
  v4[3] = &unk_27849E610;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

CFTypeRef __carEndpoint_sendHIDReport_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 40) + 296);
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t vdsink_PushFrame(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, uint64_t a9, void *a10, int a11)
{
  valuePtr = a11;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v22 = *(DerivedStorage + 72);
  v21 = *(DerivedStorage + 80);
  v24 = *(DerivedStorage + 56);
  v23 = *(DerivedStorage + 64);
  if (v22 != v24 || v21 != v23)
  {
    v26 = v24 / v22;
    if (v24 / v22 >= v23 / v21)
    {
      v26 = v23 / v21;
    }

    a7 = a7 * v26;
    a8 = a8 * v26;
    a5 = (v24 - v22 * v26) * 0.5 + a5 * v26;
    a6 = (v23 - v21 * v26) * 0.5 + a6 * v26;
  }

  v56.origin.x = a1;
  v56.origin.y = a2;
  v56.size.width = a3;
  v56.size.height = a4;
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v56);
  v57.origin.x = a5;
  v57.origin.y = a6;
  v57.size.width = a7;
  v57.size.height = a8;
  v28 = CGRectCreateDictionaryRepresentation(v57);
  v29 = *MEMORY[0x277CBECE8];
  v30 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
  CMSetAttachment(a10, *MEMORY[0x277CC1AB8], DictionaryRepresentation, 0);
  CMSetAttachment(a10, *MEMORY[0x277CC1A98], v28, 0);
  CMSetAttachment(a10, *MEMORY[0x277CC1AC0], v30, 0);
  v31 = *(DerivedStorage + 96);
  if (v31)
  {
    CMSetAttachment(a10, @"APTimestamps", v31, 0);
    v32 = *(DerivedStorage + 96);
    if (v32)
    {
      CFRelease(v32);
      *(DerivedStorage + 96) = 0;
    }
  }

  v33 = *(DerivedStorage + 104);
  if (v33)
  {
    CMSetAttachment(a10, @"APSubmitSurfaceTimestamp", v33, 0);
    v34 = *(DerivedStorage + 104);
    if (v34)
    {
      CFRelease(v34);
      *(DerivedStorage + 104) = 0;
    }
  }

  v35 = *(DerivedStorage + 112);
  if (v35)
  {
    CMSetAttachment(a10, @"APInterestingFrame", v35, 0);
    v36 = *(DerivedStorage + 112);
    if (v36)
    {
      CFRelease(v36);
      *(DerivedStorage + 112) = 0;
    }
  }

  if (*DerivedStorage == 1)
  {
    CMBufferQueueEnqueue(*(DerivedStorage + 16), a10);
  }

  if (gLogCategory_APVirtualDisplayTestSink <= 10 && (gLogCategory_APVirtualDisplayTestSink != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v37 = CMBaseObjectGetDerivedStorage();
  if (*(v37 + 88))
  {
    v38 = v37;
    SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a10, 0);
    if (SampleAttachmentsArray)
    {
      v40 = SampleAttachmentsArray;
      Count = CFArrayGetCount(SampleAttachmentsArray);
      if (Count >= 1)
      {
        v42 = Count;
        v52 = v30;
        v53 = DictionaryRepresentation;
        Mutable = 0;
        v44 = 0;
        v45 = *MEMORY[0x277CE2A60];
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v40, v44);
          if (ValueAtIndex)
          {
            Value = CFDictionaryGetValue(ValueAtIndex, v45);
            if (Value)
            {
              v48 = Value;
              if (!Mutable)
              {
                Mutable = CFArrayCreateMutable(v29, 0, MEMORY[0x277CBF128]);
              }

              if (gLogCategory_APVirtualDisplayTestSink <= 10 && (gLogCategory_APVirtualDisplayTestSink != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }

              CFArrayAppendValue(Mutable, v48);
            }
          }

          ++v44;
        }

        while (v42 != v44);
        DictionaryRepresentation = v53;
        v30 = v52;
        if (Mutable)
        {
          v49 = CFDictionaryCreateMutable(v29, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          CFDictionarySetValue(v49, *MEMORY[0x277CD66A0], Mutable);
          v50 = *(v38 + 24);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 0x40000000;
          block[2] = __vdsink_handleFrameAcknowledgements_block_invoke;
          block[3] = &__block_descriptor_tmp_33;
          block[4] = v38;
          block[5] = v49;
          dispatch_async(v50, block);
          CFRelease(Mutable);
        }
      }
    }
  }

  if (DictionaryRepresentation)
  {
    CFRelease(DictionaryRepresentation);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  return 0;
}

uint64_t vdsink_PushFrame_0(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, uint64_t a9, void *a10, int a11)
{
  valuePtr = a11;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v22 = *(DerivedStorage + 72);
  v21 = *(DerivedStorage + 80);
  v24 = *(DerivedStorage + 56);
  v23 = *(DerivedStorage + 64);
  if (v22 != v24 || v21 != v23)
  {
    v26 = v24 / v22;
    if (v24 / v22 >= v23 / v21)
    {
      v26 = v23 / v21;
    }

    a7 = a7 * v26;
    a8 = a8 * v26;
    a5 = (v24 - v22 * v26) * 0.5 + a5 * v26;
    a6 = (v23 - v21 * v26) * 0.5 + a6 * v26;
  }

  v56.origin.x = a1;
  v56.origin.y = a2;
  v56.size.width = a3;
  v56.size.height = a4;
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v56);
  v57.origin.x = a5;
  v57.origin.y = a6;
  v57.size.width = a7;
  v57.size.height = a8;
  v28 = CGRectCreateDictionaryRepresentation(v57);
  v29 = *MEMORY[0x277CBECE8];
  v30 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
  CMSetAttachment(a10, *MEMORY[0x277CC1AB8], DictionaryRepresentation, 0);
  CMSetAttachment(a10, *MEMORY[0x277CC1A98], v28, 0);
  CMSetAttachment(a10, *MEMORY[0x277CC1AC0], v30, 0);
  v31 = *(DerivedStorage + 96);
  if (v31)
  {
    CMSetAttachment(a10, @"APTimestamps", v31, 0);
    v32 = *(DerivedStorage + 96);
    if (v32)
    {
      CFRelease(v32);
      *(DerivedStorage + 96) = 0;
    }
  }

  v33 = *(DerivedStorage + 104);
  if (v33)
  {
    CMSetAttachment(a10, @"APSubmitSurfaceTimestamp", v33, 0);
    v34 = *(DerivedStorage + 104);
    if (v34)
    {
      CFRelease(v34);
      *(DerivedStorage + 104) = 0;
    }
  }

  v35 = *(DerivedStorage + 112);
  if (v35)
  {
    CMSetAttachment(a10, @"APInterestingFrame", v35, 0);
    v36 = *(DerivedStorage + 112);
    if (v36)
    {
      CFRelease(v36);
      *(DerivedStorage + 112) = 0;
    }
  }

  CMBufferQueueEnqueue(*(DerivedStorage + 16), a10);
  if (gLogCategory_APVirtualDisplaySink <= 10 && (gLogCategory_APVirtualDisplaySink != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v37 = CMBaseObjectGetDerivedStorage();
  if (*(v37 + 88))
  {
    v38 = v37;
    SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a10, 0);
    if (SampleAttachmentsArray)
    {
      v40 = SampleAttachmentsArray;
      Count = CFArrayGetCount(SampleAttachmentsArray);
      if (Count >= 1)
      {
        v42 = Count;
        v52 = v30;
        v53 = DictionaryRepresentation;
        Mutable = 0;
        v44 = 0;
        v45 = *MEMORY[0x277CE2A60];
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v40, v44);
          if (ValueAtIndex)
          {
            Value = CFDictionaryGetValue(ValueAtIndex, v45);
            if (Value)
            {
              v48 = Value;
              if (!Mutable)
              {
                Mutable = CFArrayCreateMutable(v29, 0, MEMORY[0x277CBF128]);
              }

              if (gLogCategory_APVirtualDisplaySink <= 10 && (gLogCategory_APVirtualDisplaySink != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }

              CFArrayAppendValue(Mutable, v48);
            }
          }

          ++v44;
        }

        while (v42 != v44);
        DictionaryRepresentation = v53;
        v30 = v52;
        if (Mutable)
        {
          v49 = CFDictionaryCreateMutable(v29, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          CFDictionarySetValue(v49, *MEMORY[0x277CD66A0], Mutable);
          v50 = *(v38 + 24);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 0x40000000;
          block[2] = __vdsink_handleFrameAcknowledgements_block_invoke_0;
          block[3] = &__block_descriptor_tmp_48;
          block[4] = v38;
          block[5] = v49;
          dispatch_async(v50, block);
          CFRelease(Mutable);
        }
      }
    }
  }

  if (DictionaryRepresentation)
  {
    CFRelease(DictionaryRepresentation);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  return 0;
}

void __APEndpointStreamScreenCreate_block_invoke()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v30 = 0;
  memset(&sampleTimingArray, 0, sizeof(sampleTimingArray));
  v27 = 0;
  cf = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2000000000;
  v26 = 0;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2000000000;
  v22 = 0;
  if (gLogCategory_APEndpointStreamScreen <= 30 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
  {
    __APEndpointStreamScreenCreate_block_invoke_cold_1();
  }

  if (*(DerivedStorage + 136))
  {
    v1 = *MEMORY[0x277CBECE8];
    CMBaseObject = FigTransportStreamGetCMBaseObject();
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v3)
    {
      v3(CMBaseObject, *MEMORY[0x277CE5068], v1, &cf);
    }

    if (*(DerivedStorage + 972) || *(DerivedStorage + 968))
    {
      Shared = APSenderStatsCollectorGetShared();
      APSenderStatsCollectorCopySystemStats(Shared, &v27);
    }

    v5 = *(DerivedStorage + 504);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __screenstream_statsTimerFired_block_invoke;
    block[3] = &unk_2784A11E8;
    block[4] = v21;
    block[5] = &v23;
    block[6] = DerivedStorage;
    dispatch_sync(v5, block);
    v6 = cf;
    v7 = v24[3];
    if (v27)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(v1, 0, v27);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(v1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    v9 = MutableCopy;
    if (v6)
    {
      Value = CFDictionaryGetValue(v6, *MEMORY[0x277CE4FD8]);
      if (Value)
      {
        CFDictionarySetValue(v9, @"txCapacityAvg", Value);
      }

      v11 = CFDictionaryGetValue(v6, *MEMORY[0x277CE4FC8]);
      if (v11)
      {
        CFDictionarySetValue(v9, @"lossAvg", v11);
      }

      v12 = CFDictionaryGetValue(v6, *MEMORY[0x277CE4FD0]);
      if (v12)
      {
        CFDictionarySetValue(v9, @"rttAvg", v12);
      }
    }

    if (v7)
    {
      Count = CFArrayGetCount(v7);
      v14 = Count >= 7 ? 7 : Count;
      if (Count >= 1)
      {
        v15 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v7, v15);
          CFDictionarySetValue(v9, screenstream_createCombinedStats_fpsKeys[v15++], ValueAtIndex);
        }

        while (v14 != v15);
      }
    }

    FigCFDictionarySetInt32();
    if (CFDictionaryGetInt64() >= 1)
    {
      atomic_fetch_add((DerivedStorage + 1200), 1u);
    }

    *&sampleTimingArray.duration.value = *MEMORY[0x277CC08F0];
    v17 = *(MEMORY[0x277CC08F0] + 16);
    *&sampleTimingArray.presentationTimeStamp.value = *MEMORY[0x277CC0898];
    v18 = *(MEMORY[0x277CC0898] + 16);
    sampleTimingArray.duration.epoch = v17;
    sampleTimingArray.presentationTimeStamp.epoch = v18;
    *&sampleTimingArray.decodeTimeStamp.value = *&sampleTimingArray.presentationTimeStamp.value;
    sampleTimingArray.decodeTimeStamp.epoch = v18;
    if (CMSampleBufferCreate(v1, 0, 1u, 0, 0, 0, 0, 1, &sampleTimingArray, 0, 0, &v30))
    {
      __APEndpointStreamScreenCreate_block_invoke_cold_2();
    }

    else
    {
      CMSetAttachment(v30, @"APStats", v9, 0);
      CMBufferQueueEnqueue(*(DerivedStorage + 104), v30);
    }
  }

  else
  {
    __APEndpointStreamScreenCreate_block_invoke_cold_3();
    v9 = 0;
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  v19 = v24[3];
  if (v19)
  {
    CFRelease(v19);
  }

  _Block_object_dispose(v21, 8);
  _Block_object_dispose(&v23, 8);
}

uint64_t screenstream_signalDataAvailable(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (!v1)
  {
    return screenstream_signalDataAvailable_cold_2();
  }

  v2 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v2)
  {
    return screenstream_signalDataAvailable_cold_1();
  }

  result = v2(v1);
  if (result)
  {
    return screenstream_signalDataAvailable_cold_1();
  }

  return result;
}

CFTypeRef __screenstream_statsTimerFired_block_invoke(void *a1)
{
  v1 = a1[6];
  *(*(a1[4] + 8) + 24) = *(v1 + 520);
  *(*(a1[5] + 8) + 24) = *(v1 + 512);
  result = *(*(a1[5] + 8) + 24);
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

uint64_t vdsink_ShouldDropFrame()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v8, 0, sizeof(v8));
  CMBufferQueueGetDuration(&v8, *(DerivedStorage + 16));
  time1 = v8;
  v6 = *(DerivedStorage + 32);
  if (CMTimeCompare(&time1, &v6) < 0)
  {
    v2 = 0;
    v1 = *(DerivedStorage + 136);
  }

  else
  {
    if (gLogCategory_APVirtualDisplayTestSink <= 40 && (gLogCategory_APVirtualDisplayTestSink != -1 || _LogCategory_Initialize()))
    {
      vdsink_ShouldDropFrame_cold_1(&v8);
    }

    v1 = *(DerivedStorage + 136) + 1;
    *(DerivedStorage + 136) = v1;
    v2 = 1;
  }

  if (v1 >= 1)
  {
    v3 = mach_absolute_time();
    if (v3 - *(DerivedStorage + 128) >= *(DerivedStorage + 120))
    {
      v4 = v3;
      if (gLogCategory_APVirtualDisplayTestSink <= 60 && (gLogCategory_APVirtualDisplayTestSink != -1 || _LogCategory_Initialize()))
      {
        vdsink_ShouldDropFrame_cold_2();
      }

      *(DerivedStorage + 136) = 0;
      *(DerivedStorage + 128) = v4;
    }
  }

  return v2;
}

uint64_t vdsink_ShouldDropFrame_0()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v7, 0, sizeof(v7));
  CMBufferQueueGetDuration(&v7, *(DerivedStorage + 16));
  if ((v7.flags & 0x1D) != 1 || (time1 = v7, v5 = *(DerivedStorage + 32), CMTimeCompare(&time1, &v5) < 0))
  {
    v1 = 0;
  }

  else
  {
    if (gLogCategory_APVirtualDisplaySink <= 40 && (gLogCategory_APVirtualDisplaySink != -1 || _LogCategory_Initialize()))
    {
      vdsink_ShouldDropFrame_cold_1_0(DerivedStorage, &v7);
    }

    ++*(DerivedStorage + 136);
    v1 = 1;
  }

  if (*(DerivedStorage + 136) >= 1)
  {
    v2 = mach_absolute_time();
    if (v2 - *(DerivedStorage + 128) >= *(DerivedStorage + 120))
    {
      v3 = v2;
      if (gLogCategory_APVirtualDisplaySink <= 60 && (gLogCategory_APVirtualDisplaySink != -1 || _LogCategory_Initialize()))
      {
        vdsink_ShouldDropFrame_cold_2_0();
      }

      *(DerivedStorage + 136) = 0;
      *(DerivedStorage + 128) = v3;
    }
  }

  return v1;
}

void __vdsink_handleFrameAcknowledgements_block_invoke(uint64_t a1)
{
  (*(*(*(a1 + 32) + 88) + 16))();
  v2 = *(a1 + 40);

  CFRelease(v2);
}

void __vdsink_handleFrameAcknowledgements_block_invoke_0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 88);
  if (v2)
  {
    (*(v2 + 16))(v2, *MEMORY[0x277CD6698], *(a1 + 40));
  }

  v3 = *(a1 + 40);

  CFRelease(v3);
}

uint64_t vdsink_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = gLogCategory_APVirtualDisplayTestSink;
  if (gLogCategory_APVirtualDisplayTestSink <= 30)
  {
    if (gLogCategory_APVirtualDisplayTestSink == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_13;
      }

      v6 = gLogCategory_APVirtualDisplayTestSink;
    }

    if (v6 <= 20)
    {
      if (v6 != -1 || (_LogCategory_Initialize(), v6 = gLogCategory_APVirtualDisplayTestSink, gLogCategory_APVirtualDisplayTestSink <= 20))
      {
        if (v6 == -1)
        {
          _LogCategory_Initialize();
        }
      }
    }

    LogPrintF();
  }

LABEL_13:
  if (CFEqual(a2, *MEMORY[0x277CD6720]))
  {
    v7 = DerivedStorage[14];
    DerivedStorage[14] = a3;
    if (!a3)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (CFEqual(a2, *MEMORY[0x277CD6748]))
  {
    v7 = DerivedStorage[12];
    DerivedStorage[12] = a3;
    if (!a3)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (CFEqual(a2, *MEMORY[0x277CD6738]))
  {
    v7 = DerivedStorage[13];
    DerivedStorage[13] = a3;
    if (!a3)
    {
LABEL_16:
      if (v7)
      {
        CFRelease(v7);
      }

      return 0;
    }

LABEL_15:
    CFRetain(a3);
    goto LABEL_16;
  }

  if (CFEqual(a2, *MEMORY[0x277CD66F0]) || CFEqual(a2, *MEMORY[0x277CD6740]))
  {
    return 0;
  }

  v9 = DerivedStorage[1];

  return FigEndpointStreamSetProperty(v9, a2, a3);
}

uint64_t vdsink_SetProperty_0(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = gLogCategory_APVirtualDisplaySink;
  if (gLogCategory_APVirtualDisplaySink <= 30)
  {
    if (gLogCategory_APVirtualDisplaySink == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_13;
      }

      v6 = gLogCategory_APVirtualDisplaySink;
    }

    if (v6 <= 20)
    {
      if (v6 != -1 || (_LogCategory_Initialize(), v6 = gLogCategory_APVirtualDisplaySink, gLogCategory_APVirtualDisplaySink <= 20))
      {
        if (v6 == -1)
        {
          _LogCategory_Initialize();
        }
      }
    }

    LogPrintF();
  }

LABEL_13:
  if (CFEqual(a2, *MEMORY[0x277CD6720]))
  {
    v7 = DerivedStorage[14];
    DerivedStorage[14] = a3;
    if (!a3)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (CFEqual(a2, *MEMORY[0x277CD6748]))
  {
    v7 = DerivedStorage[12];
    DerivedStorage[12] = a3;
    if (!a3)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (CFEqual(a2, *MEMORY[0x277CD6738]))
  {
    v7 = DerivedStorage[13];
    DerivedStorage[13] = a3;
    if (!a3)
    {
LABEL_16:
      if (v7)
      {
        CFRelease(v7);
      }

      return 0;
    }

LABEL_15:
    CFRetain(a3);
    goto LABEL_16;
  }

  if (CFEqual(a2, *MEMORY[0x277CD6728]))
  {
    if (a3)
    {
      v9 = CFGetTypeID(a3);
      if (v9 == CFStringGetTypeID() && !DerivedStorage[1])
      {
        DerivedStorage[1] = CFStringCreateF();
      }
    }

    return 0;
  }

  if (CFEqual(a2, *MEMORY[0x277CD66F0]) || CFEqual(a2, *MEMORY[0x277CD6740]))
  {
    return 0;
  }

  v10 = *DerivedStorage;

  return FigEndpointStreamSetProperty(v10, a2, a3);
}

uint64_t FigEndpointStreamSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(CMBaseObject, a2, a3);
}

uint64_t screenstream_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamScreen <= 30 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (CFEqual(a2, *MEMORY[0x277CD6718]))
  {
    if (a3)
    {
      v6 = CFGetTypeID(a3);
      if (v6 == CFArrayGetTypeID())
      {
        v7 = DerivedStorage[63];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = __screenstream_SetProperty_block_invoke;
        block[3] = &__block_descriptor_tmp_97_0;
        block[4] = DerivedStorage;
        block[5] = a3;
        dispatch_sync(v7, block);
        return 0;
      }
    }

    screenstream_SetProperty_cold_1();
    return 4294950536;
  }

  if (CFEqual(a2, *MEMORY[0x277CD6710]))
  {
    return 0;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1908]))
  {
    v8 = DerivedStorage[44];
    DerivedStorage[44] = a3;
    if (!a3)
    {
LABEL_18:
      if (v8)
      {
        CFRelease(v8);
      }

      return 0;
    }

LABEL_17:
    CFRetain(a3);
    goto LABEL_18;
  }

  if (CFEqual(a2, @"ExtraStreamOptions"))
  {
    if (!a3 || (v9 = CFGetTypeID(a3), v9 != CFDictionaryGetTypeID()))
    {
      screenstream_SetProperty_cold_2();
      return 4294950536;
    }

    v8 = DerivedStorage[15];
    DerivedStorage[15] = a3;
    goto LABEL_17;
  }

  if (gLogCategory_APEndpointStreamScreen <= 30 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return 4294954512;
}

uint64_t OUTLINED_FUNCTION_6()
{

  return LogPrintF();
}

uint64_t OUTLINED_FUNCTION_20_6(const __CFAllocator *a1, void *a2, uint64_t a3, const __CFAllocator *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{

  return CMBlockBufferCreateWithMemoryBlock(a1, a2, 0x80uLL, a4, 0, 0, 0x80uLL, 0, a9);
}

uint64_t OUTLINED_FUNCTION_9_0()
{

  return FigDispatchAsyncPostNotification();
}

uint64_t OUTLINED_FUNCTION_9_6()
{

  return apPlayback_sendPlistMessageCreatingReply(v0, 1886151033, v1, 0);
}

uint64_t OUTLINED_FUNCTION_9_8()
{

  return CMBaseObjectGetDerivedStorage();
}

uint64_t OUTLINED_FUNCTION_9_9()
{

  return FigCreateBlockBufferCopyingMemoryBlock();
}

uint64_t OUTLINED_FUNCTION_9_11()
{

  return APSWrapperCreate();
}

const __CFDictionary *sbpd_addHistogramValue(uint64_t a1, const void *a2)
{
  result = *(a1 + 600);
  if (result)
  {
    CFDictionaryGetValue(result, a2);

    return APSStatsHistogramAddValue();
  }

  return result;
}

uint64_t sbufGetAttachmentCGRect(const void *a1, const __CFString *a2, CGRect *a3)
{
  v4 = CMGetAttachment(a1, a2, 0);
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 == CFDictionaryGetTypeID() && CGRectMakeWithDictionaryRepresentation(v5, a3))
    {
      return 0;
    }
  }

  sbufGetAttachmentCGRect_cold_1();
  return 4294950536;
}

void sbpd_encryptBBuf(uint64_t a1, CMBlockBufferRef theBuffer, OpaqueCMBlockBuffer *a3)
{
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  v20 = 0;
  v21 = 0;
  blockBufferOut = 0;
  totalLengthOut = 0;
  if (!*(a1 + 408))
  {
    goto LABEL_18;
  }

  if (CMBlockBufferGetDataPointer(theBuffer, 0, &lengthAtOffsetOut, 0, &dataPointerOut) || CMBlockBufferGetDataPointer(a3, 0, &v20, &totalLengthOut, &v21))
  {
LABEL_20:
    APSLogErrorAt();
    goto LABEL_16;
  }

  v5 = v20;
  if (v20 == totalLengthOut)
  {
    v6 = *(a1 + 416);
    if (v6)
    {
      v7 = malloc_type_calloc(1uLL, v6, 0x7B0DFF91uLL);
      v5 = v20;
      v8 = *(a1 + 416);
    }

    else
    {
      v8 = 0;
      v7 = 0;
    }

    v9 = *(a1 + 408);
    v11 = lengthAtOffsetOut;
    v10 = dataPointerOut;
    v12 = v21;
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v13 || v13(v9, v10, v11, v12, v5, v12, v5, v7, v8))
    {
      APSLogErrorAt();
      if (!v7)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (!v7)
      {
        goto LABEL_16;
      }

      if (!CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x277CBECE8], v7, *(a1 + 416), *MEMORY[0x277CBECF0], 0, 0, *(a1 + 416), 0, &blockBufferOut))
      {
        OUTLINED_FUNCTION_19_1();
        if (!CMBlockBufferAppendBufferReference(v14, v15, v16, v17, 0))
        {
          goto LABEL_16;
        }

        goto LABEL_20;
      }

      APSLogErrorAt();
    }

    free(v7);
    goto LABEL_16;
  }

  APSLogErrorAt();
LABEL_16:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

LABEL_18:
  OUTLINED_FUNCTION_30_3();
}

BOOL OUTLINED_FUNCTION_26(NSObject *a1)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_signpost_enabled(v3);
}

uint64_t OUTLINED_FUNCTION_26_0()
{

  return APSAudioFormatDescriptionCopyDebugString();
}

void OUTLINED_FUNCTION_26_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  carEndpoint_sendCommandInfoAppend(v11, v12, va);
}

Float64 OUTLINED_FUNCTION_26_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CMTime *time, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 timea, uint64_t time_16)
{
  timea = *v14;
  time_16 = *(v14 + 2);

  return CMTimeGetSeconds(&timea);
}

void apsession_postFeedbackReceivedNotificationCallback(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  CFRelease(*a1);
  v2 = *(a1 + 8);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t OUTLINED_FUNCTION_1_8()
{

  return LogPrintF();
}

CFUUIDRef OUTLINED_FUNCTION_1_10(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, UInt8 byte7, int a10, __int16 byte15, char a12, UInt8 a13)
{

  return CFUUIDGetConstantUUIDWithBytes(0, 0x26u, 0x5Au, 0xC5u, 0x1Bu, 0x30u, 0xC0u, 0x40u, 0xADu, 0x90u, 0xC8u, 0xF6u, 0x9Cu, 0x26u, 0xD1u, 0x88u, 0x26u);
}

uint64_t OUTLINED_FUNCTION_1_22()
{

  return kdebug_trace();
}

uint64_t OUTLINED_FUNCTION_1_30()
{

  return APSDispatchAsyncFHelper();
}

uint64_t OUTLINED_FUNCTION_1_42()
{

  return LogPrintF();
}

void apsession_handleTransportSessionKeepAliveResponseReceived(int a1, const void *a2, int a3, int a4, CFTypeRef cf)
{
  v5 = cf;
  if (cf)
  {
    v7 = CFGetTypeID(cf);
    if (v7 == CFDictionaryGetTypeID() && (CMBlockBufferGetTypeID(), CFDictionaryGetTypedValue()))
    {
      v8 = *MEMORY[0x277CBECE8];
      if (FigCreateCFDataWithBlockBufferNoCopy())
      {
        apsession_handleTransportSessionKeepAliveResponseReceived_cold_1();
        v5 = 0;
        goto LABEL_15;
      }

      v5 = CFPropertyListCreateWithData(v8, 0, 0, 0, 0);
      if (!v5)
      {
        apsession_handleTransportSessionKeepAliveResponseReceived_cold_2();
        goto LABEL_15;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  if (gLogCategory_APSenderSessionAirPlay <= 30 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CMBaseObjectGetDerivedStorage();
  CFRetain(a2);
  if (v5)
  {
    CFRetain(v5);
  }

  APSDispatchAsyncFHelper();
LABEL_15:
  if (v5)
  {
    CFRelease(v5);
  }
}

void carEndpoint_getMetrics(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  if (a5)
  {
    v8 = DerivedStorage;
    v9 = CFGetTypeID(a5);
    if (v9 == CFDictionaryGetTypeID())
    {
      CFArrayGetTypeID();
      v16[3] = CFDictionaryGetTypedValue();
      Value = CFDictionaryGetValue(a5, @"statsDictionary");
      v20[3] = Value;
      v11 = v16[3];
      if (v11 | Value)
      {
        if (a2)
        {
          CFRetain(a2);
          v11 = v16[3];
        }

        if (v11)
        {
          CFRetain(v11);
        }

        v12 = v20[3];
        if (v12)
        {
          CFRetain(v12);
        }

        OUTLINED_FUNCTION_4_7();
        v14[1] = 0x40000000;
        v14[2] = __carEndpoint_getMetrics_block_invoke;
        v14[3] = &unk_27849ED48;
        v14[4] = &v15;
        v14[5] = &v19;
        v14[6] = a2;
        v14[7] = v8;
        dispatch_async(v13, v14);
      }
    }
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
}

void __carEndpoint_getMetrics_block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 24);
  if (v2 && CFArrayGetCount(v2) >= 1 && gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_2_16();
    OUTLINED_FUNCTION_2();
  }

  OUTLINED_FUNCTION_23_4();
  if (*(v3 + 24))
  {
    v4 = *(a1 + 48);
    CMBaseObjectGetDerivedStorage();
    cf[0] = 0;
    v32 = 0;
    StreamInfoForSubtype = carEndpoint_getStreamInfoForSubtype();
    if (StreamInfoForSubtype)
    {
      v6 = CFGetAllocator(v4);
      CMBaseObject = FigEndpointStreamGetCMBaseObject();
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v8 && !v8(CMBaseObject, @"AudioInputStatistics", v6, cf) && (v9 = CFGetAllocator(v4), v10 = FigEndpointStreamGetCMBaseObject(), (v11 = *(*(CMBaseObjectGetVTable() + 8) + 48)) != 0))
      {
        v12 = v11(v10, @"ConnectionID", v9, &v32);
        StreamInfoForSubtype = 0;
        v13 = cf[0];
        MutableCopy = 0;
        if (v12 || !cf[0])
        {
          goto LABEL_20;
        }

        v15 = *MEMORY[0x277CBECE8];
        MutableCopy = FigCFDictionaryCreateMutableCopy();
        if (!MutableCopy)
        {
          StreamInfoForSubtype = 0;
          goto LABEL_19;
        }

        StreamInfoForSubtype = CFStringCreateWithFormat(v15, 0, @"%llu-AudioInput", v32);
        if (StreamInfoForSubtype)
        {
          FigCFDictionarySetValue();
LABEL_19:
          v13 = cf[0];
LABEL_20:
          if (v13)
          {
            CFRelease(v13);
          }

          if (StreamInfoForSubtype)
          {
            CFRelease(StreamInfoForSubtype);
          }

          if (MutableCopy)
          {
            OUTLINED_FUNCTION_23_4();
            v17 = *(v16 + 24);
            *(v16 + 24) = MutableCopy;
            CFRetain(MutableCopy);
            if (v17)
            {
              CFRelease(v17);
            }
          }

          CFDictionaryApplyFunction(*(*(*(a1 + 40) + 8) + 24), carEndpoint_collectStreamAnalyticsFromStats, *(a1 + 48));
          v18 = *(a1 + 48);
          v19 = *(*(*(a1 + 40) + 8) + 24);
          CMBaseObjectGetDerivedStorage();
          v32 = 0;
          v33 = &v32;
          v34 = 0x2000000000;
          v35 = 0;
          if (CFDictionaryGetValue(v19, @"showTime"))
          {
            OUTLINED_FUNCTION_2_22();
            cf[1] = 0x40000000;
            cf[2] = __carEndpoint_logStats_block_invoke;
            cf[3] = &unk_27849ED98;
            cf[4] = &v32;
            cf[5] = v18;
            cf[6] = v20;
            FigCFDictionaryApplyBlock();
            if (*(v33 + 6))
            {
              if (gLogCategory_APEndpointCarPlay <= 60 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }
            }
          }

          _Block_object_dispose(&v32, 8);
          v21 = *(a1 + 56);
          v22 = v21[44];
          if (v22)
          {
            v23 = v21[45] % v21[46];
            v24 = *(v22 + 8 * v23);
            v25 = *(*(*(a1 + 40) + 8) + 24);
            *(v22 + 8 * v23) = v25;
            if (v25)
            {
              CFRetain(v25);
            }

            if (v24)
            {
              CFRelease(v24);
            }

            ++*(*(a1 + 56) + 360);
          }

          if (MutableCopy)
          {
            CFRelease(MutableCopy);
          }

          goto LABEL_41;
        }

        CFRelease(MutableCopy);
      }

      else
      {
        StreamInfoForSubtype = 0;
      }
    }

    MutableCopy = 0;
    goto LABEL_19;
  }

LABEL_41:
  OUTLINED_FUNCTION_23_4();
  v27 = *(v26 + 24);
  if (v27)
  {
    CFRelease(v27);
  }

  v28 = *(a1 + 48);
  if (v28)
  {
    CFRelease(v28);
  }

  OUTLINED_FUNCTION_2_16();
  v30 = *(v29 + 24);
  if (v30)
  {
    CFRelease(v30);
  }
}

uint64_t carAudioStream_copyProperty(uint64_t a1, void *a2, uint64_t a3, CFTypeRef *a4)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamCarPlayAudio <= 30 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v34 = 0;
  v35 = &v34;
  v36 = 0x2000000000;
  v37 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"AudioInputStatistics"))
  {
    v9 = *(DerivedStorage + 168);
    block = MEMORY[0x277D85DD0];
    v25 = 0x40000000;
    v26 = __carAudioStream_copyNonStateProperty_block_invoke;
    v27 = &unk_27849B358;
    v28 = &v34;
    v29 = DerivedStorage;
    v30 = a4;
    dispatch_sync(v9, &block);
    goto LABEL_16;
  }

  if (CFEqual(a2, @"ConnectionID"))
  {
    v10 = *(DerivedStorage + 184);
LABEL_9:
    *a4 = v10;
    goto LABEL_16;
  }

  if (CFEqual(a2, @"AudioZeroTimeStampProvider"))
  {
    v11 = *(DerivedStorage + 56);
LABEL_12:
    *a4 = CFRetain(v11);
    goto LABEL_16;
  }

  if (CFEqual(a2, @"CarPlayAudioFormats"))
  {
    CMBaseObject = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 8));
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v13)
    {
      v14 = v13(CMBaseObject, @"CarPlayAudioFormats", a3, a4);
      *(v35 + 6) = v14;
      if (!v14)
      {
        goto LABEL_16;
      }
    }

    else
    {
      *(v35 + 6) = -12782;
    }

    carAudioStream_copyProperty_cold_1();
    goto LABEL_16;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1878]))
  {
    v11 = *(DerivedStorage + 48);
    goto LABEL_12;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1880]))
  {
    v19 = MEMORY[0x277CBED28];
    if (!*(DerivedStorage + 176))
    {
      v19 = MEMORY[0x277CBED10];
    }

    goto LABEL_29;
  }

  if (CFEqual(a2, *MEMORY[0x277CC18B0]))
  {
    v11 = *(DerivedStorage + 40);
    goto LABEL_12;
  }

  if (CFEqual(a2, *MEMORY[0x277CC18D0]))
  {
    if (APSGetFBOPropertyInt64() || APSGetFBOPropertyInt64() <= 2803308)
    {
      v19 = MEMORY[0x277CBED10];
    }

    else
    {
      v19 = MEMORY[0x277CBED28];
    }

LABEL_29:
    v11 = *v19;
    goto LABEL_12;
  }

  if (CFEqual(a2, *MEMORY[0x277CC18E8]))
  {
    if (!FigCFEqual())
    {
      v10 = *MEMORY[0x277CBED10];
      goto LABEL_9;
    }

    v20 = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 8));
    v21 = CMBaseObjectCopyProperty(v20, @"SupportsVocoderInfo", a3, a4);
    *(v35 + 6) = v21;
    if (v21)
    {
      carAudioStream_copyProperty_cold_2();
    }
  }

  else
  {
    if (CFEqual(a2, *MEMORY[0x277CC1900]))
    {
      v11 = *(DerivedStorage + 32);
      goto LABEL_12;
    }

    if (CFEqual(a2, @"ReceiverModifiesMainHighLatency"))
    {
      v22 = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 8));
      v23 = CMBaseObjectCopyProperty(v22, @"ReceiverModifiesMainHighLatency", a3, a4);
      *(v35 + 6) = v23;
      if (v23)
      {
        carAudioStream_copyProperty_cold_3();
      }
    }

    else
    {
      *(v35 + 6) = -12784;
    }
  }

LABEL_16:
  v15 = *(v35 + 6);
  _Block_object_dispose(&v34, 8);
  if (v15 == -12784)
  {
    v34 = 0;
    v35 = &v34;
    v36 = 0x2000000000;
    v37 = 0;
    v16 = CMBaseObjectGetDerivedStorage();
    v17 = *(v16 + 120);
    block = MEMORY[0x277D85DD0];
    v25 = 0x40000000;
    v26 = __carAudioStream_copyStateProperty_block_invoke;
    v27 = &unk_27849B380;
    v28 = &v34;
    v29 = v16;
    v30 = a2;
    v31 = a4;
    v32 = a1;
    v33 = a3;
    dispatch_sync(v17, &block);
    v15 = *(v35 + 6);
    _Block_object_dispose(&v34, 8);
    if (v15 == -12784)
    {
      if (gLogCategory_APEndpointStreamCarPlayAudio <= 30 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      return 4294954512;
    }
  }

  return v15;
}

CFTypeRef *__carAudioStream_copyStateProperty_block_invoke(CFTypeRef *result)
{
  v1 = result;
  if (*(result[5] + 128))
  {
    v2 = *(result[4] + 1);
    v3 = -16762;
  }

  else
  {
    if (CFEqual(result[6], @"AudioFormatInfo"))
    {
      result = *(v1[5] + 17);
      if (!result)
      {
LABEL_7:
        *v1[7] = result;
        return result;
      }

LABEL_4:
      result = CFRetain(result);
      goto LABEL_7;
    }

    if (CFEqual(v1[6], @"EndpointStreamShowInfo"))
    {
      result = carAudioStream_copyShowInfo(v1[8], v1[9]);
      goto LABEL_7;
    }

    result = CFEqual(v1[6], *MEMORY[0x277CC1910]);
    if (result)
    {
      result = *(v1[5] + 18);
      if (!result)
      {
        goto LABEL_7;
      }

      goto LABEL_4;
    }

    v2 = *(v1[4] + 1);
    v3 = -12784;
  }

  *(v2 + 24) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_7()
{

  return FigCFDictionarySetValueFromKeyInDict();
}

uint64_t OUTLINED_FUNCTION_7_0(uint64_t a1, void *a2)
{
  result = *(a1 + 8);
  *a2 = MEMORY[0x277D85DD0];
  return result;
}

__n128 OUTLINED_FUNCTION_7_6()
{
  result = *(v0 - 144);
  *(v0 - 112) = result;
  *(v0 - 96) = *(v0 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_7(const __CFString *a1, char *a2)
{

  return CFStringGetCString(a1, a2, 128, 0x8000100u);
}

uint64_t OUTLINED_FUNCTION_7_9(uint64_t a1)
{

  return CMBaseObjectCopyProperty(a1, v3, v2, v1);
}

uint64_t OUTLINED_FUNCTION_7_10()
{
  v7 = *(v1 + 112);

  return MEMORY[0x28213CC28](v2, v4, v3, v0, v5, v7);
}

uint64_t carEndpoint_getStreamInfoForSubtype()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2000000000;
  v7[3] = 0;
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  if (*(DerivedStorage + 264))
  {
    CFArrayGetCount(*(DerivedStorage + 264));
    CFArrayApplyBlock();
    v1 = v4[3];
  }

  else
  {
    v1 = 0;
  }

  _Block_object_dispose(&v3, 8);
  _Block_object_dispose(v7, 8);
  return v1;
}

uint64_t __carEndpoint_getStreamInfoForSubtype_block_invoke(uint64_t result, uint64_t a2)
{
  if (!*(*(*(result + 32) + 8) + 24))
  {
    v13[5] = v2;
    v13[6] = v3;
    v5 = result;
    v13[0] = 0;
    v6 = CFGetAllocator(*(result + 48));
    CMBaseObject = FigEndpointStreamGetCMBaseObject();
    VTable = CMBaseObjectGetVTable();
    v9 = *(VTable + 8);
    result = VTable + 8;
    v10 = *(v9 + 48);
    if (v10)
    {
      result = v10(CMBaseObject, *MEMORY[0x277CC18B0], v6, v13);
      if (!result)
      {
        result = FigCFEqual();
        if (result)
        {
          v11 = *(v5[5] + 8);
          v12 = *(v11 + 24);
          *(v11 + 24) = v12 + 1;
          if (v12 == v5[8])
          {
            *(*(v5[4] + 8) + 24) = a2;
          }
        }
      }
    }
  }

  return result;
}

uint64_t __carAudioStream_copyNonStateProperty_block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = *(v2 + 368);
  if (v3)
  {
    v4 = CFGetAllocator(*(v2 + 368));
    v5 = a1[6];
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      result = v6(v3, @"Statistics", v4, v5);
    }

    else
    {
      result = 4294954514;
    }
  }

  else
  {
    result = 4294954512;
  }

  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void carEndpoint_collectStreamAnalyticsFromStats(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = DerivedStorage;
    v5 = CFGetTypeID(a2);
    if (v5 == CFDictionaryGetTypeID())
    {
      if (FigCFDictionaryGetInt32IfPresent())
      {
        if (FigCFDictionaryGetInt32IfPresent())
        {
          *(v4 + 376) = 1;
          FigCFDictionaryGetInt32IfPresent();
        }
      }
    }
  }
}

void __carEndpoint_logStats_block_invoke(uint64_t a1, const void *a2, const void *a3)
{
  v6 = OUTLINED_FUNCTION_8_4();
  if (CFStringCompare(v6, v7, v8))
  {
    CMBaseObjectGetDerivedStorage();
    __endptr = 0;
    v17 = 0;
    if (a3 && (v9 = CFGetTypeID(a3), v9 == CFDictionaryGetTypeID()) && CFDictionaryContainsKey(a3, @"stty") && (CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree()) != 0 && (v11 = CStringPtrAndBufferToFree, *__error() = 0, v12 = strtoull(v11, &__endptr, 0), !*__error()) && __endptr == &v11[strlen(v11)] && v12)
    {
      v13 = FigCFArrayContainsInt64();
      free(v17);
      if (!v13)
      {
        OUTLINED_FUNCTION_1_33();
        return;
      }
    }

    else
    {
      free(v17);
    }

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v15 = Mutable;
      CFDictionaryAddValue(Mutable, @"showTime", *(a1 + 48));
      CFDictionaryAddValue(v15, a2, a3);
      if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || OUTLINED_FUNCTION_4()))
      {
        OUTLINED_FUNCTION_2();
      }

      CFRelease(v15);
    }
  }
}

__n128 OUTLINED_FUNCTION_25_1()
{
  result = *(v0 - 192);
  *&STACK[0x310] = result;
  STACK[0x320] = *(v0 - 176);
  return result;
}

uint64_t OUTLINED_FUNCTION_25_3()
{

  return APSGetFBOPropertyInt64();
}

Float64 OUTLINED_FUNCTION_25_4@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t timea, uint64_t time_8, uint64_t time_16)
{
  time_16 = a1;

  return CMTimeGetSeconds(&timea);
}

uint64_t airPlayDescription_CopyProperty(const void *a1, const void *a2, const __CFAllocator *a3, uint64_t *a4)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointDescriptionAirPlay <= 30 && (gLogCategory_APEndpointDescriptionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (a2)
  {
    if (a4)
    {
      FigSimpleMutexLock();
      v8 = airPlayDescription_copyPropertyInternal(a1, a2, a3, a4);
      FigSimpleMutexUnlock();
    }

    else
    {
      v8 = 4294895545;
      airPlayDescription_CopyProperty_cold_1();
    }
  }

  else
  {
    v8 = 4294895545;
    airPlayDescription_CopyProperty_cold_2();
  }

  return v8;
}

uint64_t airPlayDescription_copyPropertyInternal(const void *a1, const void *a2, const __CFAllocator *a3, uint64_t *a4)
{
  v70 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"DeviceID"))
  {
    return airPlayDescription_copyDeviceID(a1, a4);
  }

  if (CFEqual(a2, @"TransportDevice"))
  {
    v10 = *(DerivedStorage + 8);
    if (v10)
    {
LABEL_6:
      v10 = CFRetain(v10);
LABEL_13:
      *a4 = v10;
      return v70;
    }

    return -71754;
  }

  if (CFEqual(a2, @"Name"))
  {
    return airPlayDescription_copyName(a1, a4);
  }

  if (CFEqual(a2, @"NameIsFactoryDefault"))
  {
    goto LABEL_12;
  }

  if (CFEqual(a2, @"OSBuildVersion"))
  {
    return airPlayDescription_copyOSBuildVersion();
  }

  if (CFEqual(a2, @"SourceVersion"))
  {
    return airPlayDescription_copySourceVersion(a1, a4);
  }

  if (CFEqual(a2, @"OSVersion"))
  {
    goto LABEL_12;
  }

  if (CFEqual(a2, @"Model"))
  {
    airPlayDescription_copyModel(a1, a4);
    return 0;
  }

  if (CFEqual(a2, @"Manufacturer"))
  {
    return airPlayDescription_copyManufacturer();
  }

  if (CFEqual(a2, @"Company"))
  {
    return airPlayDescription_copyCompany();
  }

  if (CFEqual(a2, @"VolumeControlType"))
  {
    v13 = @"volumeControlType";
LABEL_26:
    airPlayDescription_copyEndpointInfoValue(a1, v13, a4);
    return 0;
  }

  if (CFEqual(a2, @"VolumeControlTypeEx"))
  {
    return airPlayDescription_copyVolumeControlTypeEx(a1, a3, a4);
  }

  if (CFEqual(a2, @"MuteControlType"))
  {
    return airPlayDescription_copyMuteControlType(a1, a3, a4);
  }

  if (CFEqual(a2, @"FirmwareVersion") || CFEqual(a2, @"SerialNumber") || CFEqual(a2, @"BluetoothIdentifier"))
  {
    goto LABEL_12;
  }

  if (CFEqual(a2, @"MACAddress"))
  {
    return airPlayDescription_copyMACAddress(a1, a3, a4);
  }

  if (CFEqual(a2, @"AudioLatencyForAV"))
  {
    return airPlayDescription_copyAudioLatencyForAV(a3, a4);
  }

  if (CFEqual(a2, @"AudioLatencyOffsetForAV"))
  {
    return airPlayDescription_copyAudioLatencyOffsetForAV(a3, a4);
  }

  if (CFEqual(a2, @"AuthenticationType"))
  {
    return airPlayDescription_copyAuthenticationType(a1, a4);
  }

  if (CFEqual(a2, @"PasswordRequired"))
  {
    airPlayDescription_copyPasswordRequired(a1, a4);
    return 0;
  }

  if (CFEqual(a2, @"PINRequired"))
  {
    v14 = a1;
    v15 = 8;
LABEL_49:
    airplayDescription_copyStatusFlagsContainsFlag(v14, v15, a4);
    return 0;
  }

  if (CFEqual(a2, @"PairingPeerCUAirPlayIdentifier"))
  {
    airPlayDescription_copyPairingPeerCUAirPlayIdentifier(a1, a4);
    return 0;
  }

  if (CFEqual(a2, @"PairingPeerCUSystemIdentifier"))
  {
    airPlayDescription_copyPairingPeerCUSystemIdentifier(a1, a4);
    return 0;
  }

  if (CFEqual(a2, @"PairingPeerPublicKey"))
  {
    return airPlayDescription_copyPairingPeerPublicKey(a1, a3, a4);
  }

  if (CFEqual(a2, @"OneTimePairingRequired"))
  {
    airPlayDescription_copyOneTimePairingRequired(a1, a4);
    return 0;
  }

  if (CFEqual(a2, @"AirPlaySecurity"))
  {
    airPlayDescription_copyAirPlaySecurity(a1, a4);
    return 0;
  }

  if (!CFEqual(a2, @"StatusFlags"))
  {
    if (CFEqual(a2, @"SubType"))
    {
      airPlayDescription_copyDeviceSubType(a1, a4);
      return 0;
    }

    if (CFEqual(a2, @"HIDs"))
    {
      v70 = airPlayDescription_copyEndpointInfoValueCFArray(a1, @"hidDevices", a4);
      if (v70)
      {
        airPlayDescription_copyPropertyInternal_cold_2();
      }

      return v70;
    }

    if (CFEqual(a2, @"IgnoresVolumeChangesBeforeAudioSetup"))
    {
      isSourceVersionAtLeast = airPlayDescription_isSourceVersionAtLeast(a1, 0x24D2F4u);
      goto LABEL_71;
    }

    if (CFEqual(a2, @"IsAppleTV") || CFEqual(a2, @"IsAppleAudioAccessory"))
    {
      isDeviceOfSubType = airPlayDescription_isDeviceOfSubType();
      goto LABEL_98;
    }

    if (CFEqual(a2, @"IsAppleReceiver"))
    {
      isDeviceOfSubType = airPlayDescription_isAppleReceiver(a1);
      goto LABEL_98;
    }

    if (CFEqual(a2, @"IsAirPortExpress"))
    {
      CMBaseObjectGetDerivedStorage();
      isDeviceOfSubType = airPlayDescription_modelHasPrefix(a1, @"AirPort");
LABEL_98:
      v18 = MEMORY[0x277CBED28];
      v22 = MEMORY[0x277CBED10];
LABEL_99:
      v23 = isDeviceOfSubType == 0;
      goto LABEL_100;
    }

    if (CFEqual(a2, @"IsLegacyAirPlaySpeaker"))
    {
      isDeviceOfSubType = airPlayDescription_isLegacyAirPlaySpeaker(a1);
      goto LABEL_98;
    }

    if (CFEqual(a2, @"IsThirdPartyReceiver"))
    {
      isSourceVersionAtLeast = airPlayDescription_isAppleReceiver(a1);
LABEL_71:
      v18 = MEMORY[0x277CBED28];
      if (isSourceVersionAtLeast)
      {
        v18 = MEMORY[0x277CBED10];
      }

      goto LABEL_102;
    }

    if (CFEqual(a2, @"IsThirdPartyTVFamily"))
    {
      isDeviceOfSubType = airPlayDescription_isThirdPartyTVFamily(a1);
      goto LABEL_98;
    }

    if (CFEqual(a2, @"HasUnifiedAdvertiserInfo"))
    {
      v20 = a1;
LABEL_85:
      isDeviceOfSubType = airPlayDescription_hasFeatureInternal(v20);
      goto LABEL_98;
    }

    if (CFEqual(a2, @"RequiredSenderFeatures"))
    {
      v10 = APAdvertiserInfoCopyProperty();
      if (v10)
      {
        goto LABEL_13;
      }

      Int64 = CFNumberCreateInt64();
      *a4 = Int64;
      if (Int64)
      {
        return v70;
      }

      goto LABEL_91;
    }

    if (CFEqual(a2, @"CanBeRemoteControlled"))
    {
      isDeviceOfSubType = airplayDescription_canBeRemoteControlled(a1);
      goto LABEL_98;
    }

    if (CFEqual(a2, @"SupportsAnyMedia"))
    {
      isDeviceOfSubType = airplayDescription_supportsAnyMedia(a1);
      goto LABEL_98;
    }

    if (CFEqual(a2, @"SupportsSharePlayHandoff"))
    {
      if (!airPlayDescription_hasFeatureInternal(a1))
      {
        goto LABEL_500;
      }

      v24 = a1;
      v25 = 5950101;
      goto LABEL_106;
    }

    if (CFEqual(a2, @"SupportsOverlayUI"))
    {
      CMBaseObjectGetDerivedStorage();
      if (airPlayDescription_hasFeatureInternal(a1))
      {
        isDeviceOfSubType = airPlayDescription_hasCarPlayVideoFeatureInternal(a1);
        goto LABEL_98;
      }

      v20 = a1;
      goto LABEL_85;
    }

    if (CFEqual(a2, @"SilentPrimary"))
    {
      v14 = a1;
      v15 = 4096;
      goto LABEL_49;
    }

    if (CFEqual(a2, @"SupportsBufferedAudio"))
    {
      CMBaseObjectGetDerivedStorage();
      if (airPlayDescription_hasFeatureInternal(a1))
      {
        v26 = *(CMBaseObjectGetDerivedStorage() + 65);
      }

      else
      {
        v26 = airPlayDescription_isSourceVersionAtLeast(a1, 0x36193Eu) && airPlayDescription_hasFeatureInternal(a1) != 0;
      }

      if (v26)
      {
        v18 = MEMORY[0x277CBED28];
      }

      else
      {
        v18 = MEMORY[0x277CBED10];
      }

      goto LABEL_102;
    }

    if (CFEqual(a2, @"SupportsReceiverChoosesAnchor"))
    {
      CMBaseObjectGetDerivedStorage();
      if (airPlayDescription_hasFeatureInternal(a1))
      {
        if (!*(CMBaseObjectGetDerivedStorage() + 65))
        {
          goto LABEL_500;
        }
      }

      else if (!airPlayDescription_hasFeatureInternal(a1))
      {
        goto LABEL_500;
      }

      if (APSSettingsGetIntWithDefault())
      {
        goto LABEL_107;
      }

LABEL_500:
      v18 = MEMORY[0x277CBED10];
      goto LABEL_102;
    }

    if (CFEqual(a2, @"SupportsReceiverSideSoundCheck"))
    {
      hasFeatureInternal = airPlayDescription_hasFeatureInternal(a1);
      CMBaseObjectGetDerivedStorage();
      if (airPlayDescription_hasFeatureInternal(a1))
      {
        hasFeatureInternal = airPlayDescription_isCarPlaySpatialAudioSupported();
      }

      v18 = MEMORY[0x277CBED28];
      v22 = MEMORY[0x277CBED10];
      v23 = hasFeatureInternal == 0;
      goto LABEL_100;
    }

    if (CFEqual(a2, @"SupportsSetMRInfoCommand"))
    {
      v20 = a1;
      goto LABEL_85;
    }

    if (CFEqual(a2, @"ReceiverSupportsSeekToTimeAsyncResponse"))
    {
      v28 = a1;
      v29 = 6354200;
LABEL_432:
      isDeviceOfSubType = airPlayDescription_isSourceVersionAtLeast(v28, v29);
      goto LABEL_98;
    }

    if (CFEqual(a2, @"SupportsLowLatencyAudio"))
    {
      Mutable = APSFeaturesCreateMutable();
      if (!Mutable)
      {
        airPlayDescription_copyPropertyInternal_cold_3();
        return v70;
      }

      v31 = Mutable;
      APSFeaturesSetFeature();
      APSFeaturesSetFeature();
      APSFeaturesSetFeature();
      if (!airPlayDescription_hasFeaturesInternal(a1) || APSSettingsGetIntWithDefault())
      {
        goto LABEL_149;
      }

LABEL_147:
      if (!APSSettingsGetIntWithDefault() && !APSSettingsGetIntWithDefault())
      {
        v33 = MEMORY[0x277CBED28];
        goto LABEL_155;
      }

LABEL_149:
      v33 = MEMORY[0x277CBED10];
LABEL_155:
      *a4 = CFRetain(*v33);
      v34 = v31;
      goto LABEL_472;
    }

    if (CFEqual(a2, @"SupportsAudioMediaDataControl"))
    {
      v32 = APSFeaturesCreateMutable();
      if (!v32)
      {
        airPlayDescription_copyPropertyInternal_cold_4();
        return v70;
      }

      v31 = v32;
      APSFeaturesSetFeature();
      APSFeaturesSetFeature();
      if (!airPlayDescription_hasFeaturesInternal(a1) || !airPlayDescription_isSourceVersionAtLeast(a1, 0x44AA84u))
      {
        goto LABEL_149;
      }

      goto LABEL_147;
    }

    if (CFEqual(a2, @"IsLowFidelitySpeaker"))
    {
      v20 = a1;
      goto LABEL_85;
    }

    if (CFEqual(a2, @"SupportsAudioStreamConnectionSetup"))
    {
      if (airPlayDescription_hasFeatureInternal(a1) && !APSSettingsGetIntWithDefault())
      {
        goto LABEL_107;
      }

      goto LABEL_500;
    }

    if (CFEqual(a2, @"SupportsExtendedWHA"))
    {
      if (airPlayDescription_hasFeatureInternal(a1))
      {
        v35 = 0;
      }

      else
      {
        v35 = CFPreferencesGetAppBooleanValue(@"forceAirPlay2NTP", @"com.apple.airplay", 0) == 0;
      }

      if (airPlayDescription_isSourceVersionAtLeast(a1, 0x37D8E0u) && airPlayDescription_hasFeatureInternal(a1) != 0 && !v35)
      {
        goto LABEL_107;
      }

      goto LABEL_500;
    }

    if (CFEqual(a2, @"PostsAdvertiserUpdatesOverEventChannel"))
    {
      if (!airPlayDescription_isAppleReceiver(a1))
      {
        goto LABEL_500;
      }

      v24 = a1;
      v25 = 3660000;
      goto LABEL_106;
    }

    if (CFEqual(a2, @"SupportsHangdogRemoteControl"))
    {
      if (airPlayDescription_isAppleReceiver(a1))
      {
        Value = airPlayDescription_hasFeatureInternal(a1);
      }

      else
      {
        if (!airPlayDescription_isThirdPartyTVFamily(a1))
        {
          goto LABEL_500;
        }

        BOOLean = 0;
        airplayDescription_copyStatusFlagsContainsFlag(a1, 1024, &BOOLean);
        v37 = BOOLean;
        if (BOOLean)
        {
          Value = CFBooleanGetValue(BOOLean);
          CFRelease(v37);
        }

        else
        {
          Value = 0;
        }
      }

      if (Value)
      {
        goto LABEL_107;
      }

      goto LABEL_500;
    }

    if (CFEqual(a2, @"SupportsDedicatedRemoteControlSocket"))
    {
      if (airPlayDescription_isSourceVersionAtLeast(a1, 0x44B63Eu) && airPlayDescription_isAppleReceiver(a1))
      {
        goto LABEL_107;
      }

      goto LABEL_500;
    }

    if (CFEqual(a2, @"SupportsRapportRemoteControlTransport"))
    {
      v20 = a1;
      goto LABEL_85;
    }

    if (CFEqual(a2, @"SupportsRFC2198Redundancy"))
    {
      v20 = a1;
      goto LABEL_85;
    }

    if (CFEqual(a2, @"SupportsBufferedAPAP"))
    {
      CMBaseObjectGetDerivedStorage();
      if (airPlayDescription_hasFeatureInternal(a1))
      {
        isDeviceOfSubType = airPlayDescription_isCarPlaySpatialAudioSupported();
        goto LABEL_98;
      }

      v20 = a1;
      goto LABEL_85;
    }

    if (CFEqual(a2, @"SupportsBufferedAPAT"))
    {
      v20 = a1;
      goto LABEL_85;
    }

    if (CFEqual(a2, @"IsMediaRemoteControllable"))
    {
      if (!airPlayDescription_isDeviceOfSubType() && !airPlayDescription_isDeviceOfSubType() && (!*(DerivedStorage + 121) || !airPlayDescription_isDeviceOfSubType()))
      {
        goto LABEL_500;
      }

      v24 = a1;
      v25 = 3561800;
LABEL_106:
      if (airPlayDescription_isSourceVersionAtLeast(v24, v25))
      {
LABEL_107:
        v18 = MEMORY[0x277CBED28];
LABEL_102:
        v10 = *v18;
        goto LABEL_6;
      }

      goto LABEL_500;
    }

    if (CFEqual(a2, @"SupportedAudioFormats"))
    {
      CMBaseObjectGetDerivedStorage();
      if (airPlayDescription_hasFeatureInternal(a1))
      {
        airPlayDescription_copyCarPlayAudioFormats(a1, a3, a4);
        return v70;
      }

      return airPlayDescription_copyAirPlayAudioFormats(a1, a3, a4);
    }

    if (CFEqual(a2, @"SupportedAudioFormatsExtended"))
    {
      CMBaseObjectGetDerivedStorage();
      if (airPlayDescription_hasFeatureInternal(a1))
      {
        return airPlayDescription_copyCarPlayAudioFormatsExtended();
      }

      else
      {
        return airPlayDescription_copyAirPlayAudioFormatsExtended(a1, a4);
      }
    }

    if (CFEqual(a2, @"SupportsMuteCommand"))
    {
      v28 = a1;
      v29 = 3703500;
      goto LABEL_432;
    }

    if (CFEqual(a2, @"SupoortsRFC2617DigestAuth"))
    {
      airPlayDescription_copySupportsRFC2617DigestAuth(a1, a4);
      return 0;
    }

    if (CFEqual(a2, @"SupportsCoreUtilsPairingAndEncryption"))
    {
      isDeviceOfSubType = airPlayDescription_supportsCUPairingAndEncryption(a1);
      goto LABEL_98;
    }

    if (CFEqual(a2, @"SupportsAccountOwnerPairVerification"))
    {
      v20 = a1;
      goto LABEL_85;
    }

    if (CFEqual(a2, @"SupportsHKPairingAndAccessControl"))
    {
      v20 = a1;
      goto LABEL_85;
    }

    if (CFEqual(a2, @"SupportsLegacyPairing"))
    {
      v20 = a1;
      goto LABEL_85;
    }

    if (CFEqual(a2, @"SupportsSystemPairing"))
    {
      v20 = a1;
      goto LABEL_85;
    }

    if (CFEqual(a2, @"SupportsTransientPairing"))
    {
      if (airPlayDescription_hasFeatureInternal(a1))
      {
        goto LABEL_107;
      }

      v38 = a1;
LABEL_374:
      v54 = airPlayDescription_hasFeatureInternal(v38);
      v18 = MEMORY[0x277CBED28];
      v22 = MEMORY[0x277CBED10];
      v23 = v54 == 0;
LABEL_100:
      if (v23)
      {
        v18 = v22;
      }

      goto LABEL_102;
    }

    if (CFEqual(a2, @"SupportsKeepAlive"))
    {
      v28 = a1;
      v29 = 1900900;
      goto LABEL_432;
    }

    if (CFEqual(a2, @"SupportsCBCSEncryption"))
    {
      if (airPlayDescription_isSourceVersionAtLeast(a1, 0x2DFF1Eu))
      {
        goto LABEL_107;
      }

      v39 = APAdvertiserInfoCopyProperty();
      v40 = v39;
      if (v39)
      {
        Length = CFStringGetLength(v39);
        CFRelease(v40);
        if (Length > 0)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_500;
    }

    if (CFEqual(a2, @"SupportsScreenIdle"))
    {
      v28 = a1;
      v29 = 1503500;
      goto LABEL_432;
    }

    if (CFEqual(a2, @"SupportsScreenMultiCodec"))
    {
      v20 = a1;
      goto LABEL_85;
    }

    if (CFEqual(a2, @"SupportsUnifiedPairingAndMFi"))
    {
      v20 = a1;
      goto LABEL_85;
    }

    if (CFEqual(a2, @"SupportsWoL"))
    {
      if (airPlayDescription_hasFeatureInternal(a1))
      {
        goto LABEL_107;
      }

      v38 = a1;
      goto LABEL_374;
    }

    if (CFEqual(a2, @"AdvertisesHAPSupport"))
    {
      v20 = a1;
      goto LABEL_85;
    }

    if (CFEqual(a2, @"DisplayDescriptionArray"))
    {
      return airPlayDescription_copyDisplayDescriptionArray(a1, a3, a4);
    }

    if (CFEqual(a2, @"CanRecordScreenStream"))
    {
      v13 = @"canRecordScreenStream";
      goto LABEL_26;
    }

    if (CFEqual(a2, @"IsScreenDemoMode"))
    {
      v14 = a1;
      v15 = 0x40000;
      goto LABEL_49;
    }

    if (CFEqual(a2, @"ForwardFrameUserData"))
    {
      v13 = @"forwardFrameUserData";
      goto LABEL_26;
    }

    if (CFEqual(a2, @"ForwardCryptorSubsampleAuxData"))
    {
      v13 = @"forwardCryptorSubsampleAuxData";
      goto LABEL_26;
    }

    if (CFEqual(a2, @"HasUDPMirroringSupport"))
    {
      v13 = @"hasUDPMirroringSupport";
      goto LABEL_26;
    }

    if (CFEqual(a2, @"receiverHDRCapability"))
    {
      v13 = @"receiverHDRCapability";
      goto LABEL_26;
    }

    if (CFEqual(a2, @"SupportHDRSubframe"))
    {
      BOOLean = 0;
      airPlayDescription_copyEndpointInfoValue(a1, @"hasUDPMirroringSupport", &BOOLean);
      v70 = 0;
      v42 = airPlayDescription_isSourceVersionAtLeast(a1, 0x7A1264u);
      v43 = BOOLean;
      if (BOOLean != *MEMORY[0x277CBED28] || !v42)
      {
        v45 = *MEMORY[0x277CBED10];
      }

      else
      {
        v45 = *MEMORY[0x277CBED28];
      }

LABEL_412:
      *a4 = CFRetain(v45);
      if (!v43)
      {
        return v70;
      }

      v34 = v43;
LABEL_472:
      CFRelease(v34);
      return v70;
    }

    if (CFEqual(a2, @"VodkaVersion"))
    {
      v10 = APAdvertiserInfoCopyProperty();
      if (v10)
      {
        goto LABEL_13;
      }

      v46 = CFNumberCreateInt64();
      *a4 = v46;
      if (v46)
      {
        return v70;
      }

LABEL_91:
      APSLogErrorAt();
      return -71750;
    }

    if (CFEqual(a2, @"SupportsAirPlayFromCloud"))
    {
      airplayDescription_copySupportsAirPlayFromCloud(a1, a4);
      return 0;
    }

    if (CFEqual(a2, @"DoesNotRequireVodkaForHLS"))
    {
      v28 = a1;
      v29 = 4500100;
      goto LABEL_432;
    }

    if (CFEqual(a2, @"SupportsAirPlayVideoPlayQueue"))
    {
      v20 = a1;
      goto LABEL_85;
    }

    if (CFEqual(a2, @"SupportsAirPlayVideoV2"))
    {
      v20 = a1;
      goto LABEL_85;
    }

    if (CFEqual(a2, @"SupportsAirPlayVideoPausedStart"))
    {
      v28 = a1;
      v29 = 2206800;
      goto LABEL_432;
    }

    if (CFEqual(a2, @"AccessControlType"))
    {
      airPlayDescription_getAccessControlType();
      v47 = CFNumberCreateInt64();
      *a4 = v47;
      if (!v47)
      {
        airPlayDescription_copyPropertyInternal_cold_5();
      }

      return v70;
    }

    if (CFEqual(a2, @"GroupPublicName"))
    {
      BOOLean = 0;
      airPlayDescription_copyClusterInfoInternal(a1, 0, 0, 0, 0, 0, 0, &BOOLean, 0, 0);
      v10 = BOOLean;
      if (BOOLean)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    if (CFEqual(a2, @"GroupID"))
    {
LABEL_12:
      v10 = APAdvertiserInfoCopyProperty();
      goto LABEL_13;
    }

    if (CFEqual(a2, @"GroupContainsDiscoverableLeader"))
    {
LABEL_312:
      PropertyInt64Sync = CFObjectGetPropertyInt64Sync();
      v53 = PropertyInt64Sync != 0;
      if (*(DerivedStorage + 121))
      {
        v53 = (PropertyInt64Sync | *(DerivedStorage + 88)) != 0;
      }

      if (v53)
      {
        v18 = MEMORY[0x277CBED28];
      }

      else
      {
        v18 = MEMORY[0x277CBED10];
      }

      goto LABEL_102;
    }

    if (CFEqual(a2, @"IsGroupLeader"))
    {
      v10 = APAdvertiserInfoCopyProperty();
      if (v10)
      {
        goto LABEL_13;
      }

      goto LABEL_500;
    }

    if (CFEqual(a2, @"ClusterSize"))
    {
      v67 = 0;
      v68 = 0;
      v48 = a1;
      v49 = 0;
      v50 = a4;
    }

    else
    {
      if (CFEqual(a2, @"ClusterType"))
      {
        v67 = 0;
        v68 = 0;
        v48 = a1;
        v49 = 0;
        v50 = 0;
        v51 = a4;
LABEL_310:
        airPlayDescription_copyClusterInfoInternal(v48, v49, v50, v51, 0, 0, 0, 0, v67, v68);
        return v70;
      }

      if (CFEqual(a2, @"ClusterUUID"))
      {
        v67 = 0;
        v68 = 0;
        v48 = a1;
        v49 = a4;
      }

      else
      {
        if (CFEqual(a2, @"IsClusterLeader"))
        {
          BOOLean = 0;
          airPlayDescription_copyClusterInfoInternal(a1, 0, 0, 0, 0, &BOOLean, 0, 0, 0, 0);
          v10 = BOOLean;
          if (BOOLean)
          {
            goto LABEL_13;
          }

          goto LABEL_500;
        }

        if (CFEqual(a2, @"ClusterModel"))
        {
          airPlayDescription_copyClusterInfoInternal(a1, 0, 0, 0, 0, 0, a4, 0, 0, 0);
          return v70;
        }

        if (CFEqual(a2, @"RoomUUID"))
        {
          v67 = a4;
          v68 = 0;
        }

        else
        {
          if (!CFEqual(a2, @"RoomName"))
          {
            if (CFEqual(a2, @"ParentGroupID"))
            {
              goto LABEL_12;
            }

            if (CFEqual(a2, @"ParentGroupContainsDiscoverableLeader"))
            {
              goto LABEL_312;
            }

            if (CFEqual(a2, @"ReceiverSessionIsActive"))
            {
              v14 = a1;
              v15 = 0x20000;
              goto LABEL_49;
            }

            if (CFEqual(a2, @"TightSyncUUID"))
            {
              if (*(DerivedStorage + 8) && !APTransportDeviceIsModernPresentOnInfra())
              {
                v10 = 0;
                goto LABEL_13;
              }

              goto LABEL_12;
            }

            if (CFEqual(a2, @"TightSyncIsGroupLeader"))
            {
              v14 = a1;
              v15 = 0x2000;
              goto LABEL_49;
            }

            if (CFEqual(a2, @"TightSyncClusterInfo"))
            {
              return airPlayDescription_copyTightSyncClusterInfo(a1, a4);
            }

            if (CFEqual(a2, @"IsAppleMusicSubscriber"))
            {
              v14 = a1;
              v15 = 0x8000;
              goto LABEL_49;
            }

            if (CFEqual(a2, @"CloudLibraryIsOn"))
            {
              v14 = a1;
              v15 = 0x10000;
              goto LABEL_49;
            }

            if (CFEqual(a2, @"HKAccessControlLevel"))
            {
              return airPlayDescription_copyHKAccessControlLevel(a1, a4);
            }

            if (CFEqual(a2, @"DeviceWasSetupForHKAccessControl"))
            {
              v14 = a1;
              v15 = 1024;
              goto LABEL_49;
            }

            if (CFEqual(a2, @"IsHKAccessControlEnabled"))
            {
              airPlayDescription_copyIsHKAccessControlEnabled(a1, a4);
              return 0;
            }

            if (CFEqual(a2, @"DeviceSupportsRelay"))
            {
              airPlayDescription_copyDeviceSupportsRelay(a1, a4);
              return 0;
            }

            if (CFEqual(a2, @"SupportsAWDL"))
            {
              airplayDescription_copySupportsAWDL(a1, a4);
              return 0;
            }

            if (CFEqual(a2, @"SupportsNAN"))
            {
              airplayDescription_copySupportsNAN(a1, a4);
              return 0;
            }

            if (CFEqual(a2, @"SupportsSetPeersExtendedMessage"))
            {
              v20 = a1;
              goto LABEL_85;
            }

            if (CFEqual(a2, @"SupportsPTP"))
            {
              airplayDescription_copySupportsPTP(a1, a4);
              return 0;
            }

            if (CFEqual(a2, @"SupportsSharedReceiverClock"))
            {
              airplayDescription_copySupportsSharedReceiverClock(a1, a4);
              return 0;
            }

            if (CFEqual(a2, @"SupportsUnifiedMediaControl"))
            {
              airPlayDescription_copySupportsUnifiedMediaControl(a1, a4);
              return 0;
            }

            if (CFEqual(a2, @"SupportsStatsAsBody"))
            {
              BOOLean = 0;
              if (airPlayDescription_hasFeatureInternal(a1))
              {
                airPlayDescription_copyEndpointInfoValue(a1, @"keepAliveSendStatsAsBody", &BOOLean);
                v10 = BOOLean;
                if (BOOLean)
                {
                  goto LABEL_13;
                }
              }

              v28 = a1;
              v29 = 2109800;
              goto LABEL_432;
            }

            if (CFEqual(a2, @"IsCarPlay"))
            {
              v20 = a1;
              goto LABEL_85;
            }

            if (CFEqual(a2, @"AssistedModeType"))
            {
              airplayDescription_getAssistedModeType();
              v10 = CFNumberCreateInt64();
              if (!v10)
              {
                airPlayDescription_copyPropertyInternal_cold_6();
                return v70;
              }

              goto LABEL_13;
            }

            if (CFEqual(a2, @"IsConnectedOverUSB"))
            {
              airPlayDescription_copyIsConnectedOverUSB(a1, a4);
              return 0;
            }

            if (CFEqual(a2, @"MetadataFeatures"))
            {
              airPlayDescription_copyMetadataFeatures(a1, a3, a4);
              return 0;
            }

            if (CFEqual(a2, @"SupportsAirPlaySlideshow"))
            {
              v20 = a1;
              goto LABEL_85;
            }

            if (CFEqual(a2, @"SupportsAirPlayScreen"))
            {
              v20 = a1;
              goto LABEL_85;
            }

            if (CFEqual(a2, @"SupportsAirPlayPhoto"))
            {
              v20 = a1;
              goto LABEL_85;
            }

            if (CFEqual(a2, @"SupportsAirPlayVideo"))
            {
              if (airPlayDescription_hasFeatureInternal(a1))
              {
                goto LABEL_107;
              }

              v38 = a1;
              goto LABEL_374;
            }

            if (CFEqual(a2, @"SupportsInitialVolume"))
            {
              if (airPlayDescription_hasFeatureInternal(a1))
              {
                goto LABEL_500;
              }

              v24 = a1;
              v25 = 1200200;
              goto LABEL_106;
            }

            if (CFEqual(a2, @"SupportsVolume"))
            {
              isDeviceOfSubType = airPlayDescription_hasFeatureInternal(a1);
LABEL_425:
              v18 = MEMORY[0x277CBED10];
              v22 = MEMORY[0x277CBED28];
              goto LABEL_99;
            }

            if (CFEqual(a2, @"SupportsMultiplayer"))
            {
              v14 = a1;
              v15 = 0x80000;
              goto LABEL_49;
            }

            if (CFEqual(a2, @"BluetoothDeviceIDs"))
            {
              v70 = airPlayDescription_copyEndpointInfoValueCFArray(a1, @"bluetoothIDs", a4);
              if (v70)
              {
                airPlayDescription_copyPropertyInternal_cold_7();
              }

              else if (!*a4)
              {
                airPlayDescription_copyPropertyInternal_cold_8(&v70);
              }

              return v70;
            }

            if (CFEqual(a2, @"CarPlayAudioFormats"))
            {
              v10 = *(DerivedStorage + 56);
              if (!v10)
              {
                airPlayDescription_copyPropertyInternal_cold_9(&v70);
                return v70;
              }

              goto LABEL_6;
            }

            if (CFEqual(a2, @"HasCarPlayAudioFormats"))
            {
              v18 = MEMORY[0x277CBED28];
              v55 = MEMORY[0x277CBED10];
              v56 = *(DerivedStorage + 56) == 0;
              goto LABEL_449;
            }

            if (CFEqual(a2, @"InitialMode"))
            {
              v57 = @"modes";
              return airPlayDescription_copyEndpointInfoValueCFDictionary(a1, v57, a4);
            }

            if (CFEqual(a2, @"VehicleInformation"))
            {
              BOOLean = 0;
              v70 = airPlayDescription_copyEndpointInfoValueCFDictionary(a1, @"vehicleInformation", &BOOLean);
              if (v70)
              {
                airPlayDescription_copyPropertyInternal_cold_10();
                return v70;
              }

              if (BOOLean)
              {
                *a4 = BOOLean;
                return v70;
              }

              return -12784;
            }

            if (CFEqual(a2, @"IsLimitedUI"))
            {
              v58 = @"limitedUI";
            }

            else
            {
              if (CFEqual(a2, @"LimitedUIElements"))
              {
                BOOLean = 0;
                airPlayDescription_copyEndpointInfoValueCFArray(a1, @"limitedUIElements", &BOOLean);
                v10 = BOOLean;
                if (!BOOLean)
                {
                  v10 = CFArrayCreate(a3, 0, 0, MEMORY[0x277CBF128]);
                  if (!v10)
                  {
                    airPlayDescription_copyPropertyInternal_cold_11(&v70);
                    return v70;
                  }
                }

                goto LABEL_13;
              }

              if (!CFEqual(a2, @"IsNightMode"))
              {
                if (CFEqual(a2, @"IsNightModeSupported"))
                {
                  BOOLean = 0;
                  airPlayDescription_copyEndpointInfoValueCFBoolean(a1, @"nightMode", &BOOLean);
                  v59 = MEMORY[0x277CBED28];
                  v43 = BOOLean;
                  if (!BOOLean)
                  {
                    v59 = MEMORY[0x277CBED10];
                  }

                  v45 = *v59;
                  goto LABEL_412;
                }

                if (CFEqual(a2, @"IsOEMIconVisible"))
                {
                  BOOLean = 0;
                  airPlayDescription_copyEndpointInfoValueCFBoolean(a1, @"oemIconVisible", &BOOLean);
                  v10 = BOOLean;
                  if (BOOLean)
                  {
                    goto LABEL_13;
                  }

                  goto LABEL_107;
                }

                if (CFEqual(a2, @"IsRightHandDrive"))
                {
                  v13 = @"rightHandDrive";
                  goto LABEL_26;
                }

                if (CFEqual(a2, @"OEMIconLabel"))
                {
                  return airPlayDescription_copyEndpointInfoValueCFString(a1, @"oemIconLabel", a4);
                }

                if (CFEqual(a2, @"OEMIcons"))
                {
                  return airPlayDescription_copyOEMIcons(a1, a3, a4);
                }

                if (CFEqual(a2, @"UseLegacyStarkModeActions"))
                {
                  isDeviceOfSubType = airPlayDescription_isSourceVersionAtLeast(a1, 0x24D2F4u);
                  goto LABEL_425;
                }

                if (CFEqual(a2, @"UseIndirectStarkSpeechModeTransitions"))
                {
                  if (!APSSettingsGetInt64())
                  {
                    BOOLean = 0;
                    v61 = *MEMORY[0x277CBED10];
                    v70 = airPlayDescription_copyManufacturer();
                    v62 = 0;
                    if (!v70)
                    {
                      if (FigCFEqual())
                      {
                        airPlayDescription_copyModel(a1, &BOOLean);
                        v70 = 0;
                        v62 = BOOLean;
                        if (FigCFEqual())
                        {
                          v61 = *MEMORY[0x277CBED28];
                        }
                      }
                    }

                    if (v62)
                    {
                      CFRelease(v62);
                    }

                    v10 = v61;
                    goto LABEL_6;
                  }

                  v60 = *(DerivedStorage + 72);
                  if (!v60)
                  {
                    airPlayDescription_copyPropertyInternal_cold_12(a4);
                    return v70;
                  }

                  isDeviceOfSubType = CFDictionaryContainsKey(v60, @"kAPCarPlay_UseIndirectStarkSpeechModeTransitions");
                  goto LABEL_98;
                }

                if (CFEqual(a2, @"AllowCarPlaySpeechStateForMediaAudioType"))
                {
                  v28 = a1;
                  v29 = 3500000;
                  goto LABEL_432;
                }

                if (CFEqual(a2, @"ExtendedFeatures"))
                {
                  BOOLean = 0;
                  airPlayDescription_copyEndpointInfoValueCFArray(a1, @"extendedFeatures", &BOOLean);
                  v10 = BOOLean;
                  if (!BOOLean)
                  {
                    v10 = CFArrayCreate(a3, 0, 0, MEMORY[0x277CBF128]);
                    if (!v10)
                    {
                      airPlayDescription_copyPropertyInternal_cold_13(&v70);
                      return v70;
                    }
                  }

                  goto LABEL_13;
                }

                if (CFEqual(a2, @"SupportsVocoderInfo"))
                {
                  isDeviceOfSubType = airPlayDescription_extendedFeaturesHasKey(a1, @"vocoderInfo");
                  goto LABEL_98;
                }

                if (CFEqual(a2, @"SupportsJarvis"))
                {
                  v63 = CMBaseObjectGetDerivedStorage();
                  v18 = MEMORY[0x277CBED28];
                  v55 = MEMORY[0x277CBED10];
                  v56 = *(v63 + 64) == 0;
LABEL_449:
                  if (v56)
                  {
                    v18 = v55;
                  }

                  goto LABEL_102;
                }

                if (CFEqual(a2, @"SupportsJarvisVoice"))
                {
                  isDeviceOfSubType = airPlayDescription_isJarvisFeatureSupported();
                  goto LABEL_98;
                }

                if (CFEqual(a2, @"SupportsMixableSiriAudio"))
                {
                  if (*(CMBaseObjectGetDerivedStorage() + 64) && !airPlayDescription_isJarvisFeatureSupported())
                  {
                    goto LABEL_107;
                  }

                  goto LABEL_500;
                }

                if (CFEqual(a2, @"ExternalPlaybackCapabilities"))
                {
                  v57 = @"playbackCapabilities";
                  return airPlayDescription_copyEndpointInfoValueCFDictionary(a1, v57, a4);
                }

                if (CFEqual(a2, @"HeadUnitRestrictions"))
                {
                  v10 = *(DerivedStorage + 72);
                  if (!v10)
                  {
                    goto LABEL_13;
                  }

                  goto LABEL_6;
                }

                if (CFEqual(a2, @"TXTRecordAirPlay"))
                {
                  return APAdvertiserInfoCopyAirPlayData();
                }

                if (CFEqual(a2, @"TXTRecordAirPlayClusterCompatible"))
                {
                  BOOLean = 0;
                  airPlayDescription_copyClusterInfoInternal(a1, 0, 0, &BOOLean, 0, 0, 0, 0, 0, 0);
                  if (!BOOLean)
                  {
                    return v70;
                  }

                  CFGetInt64();
                  v70 = APAdvertiserInfoCopyClusterCompatibleAirPlayData();
                  v34 = BOOLean;
                  goto LABEL_472;
                }

                if (CFEqual(a2, @"EndpointInfo"))
                {
                  v10 = *(DerivedStorage + 24);
                  if (!v10)
                  {
                    goto LABEL_13;
                  }

                  goto LABEL_6;
                }

                if (CFEqual(a2, @"VoiceModelLanguages"))
                {
                  v64 = @"voiceModelSupportedLanguages";
                }

                else
                {
                  if (!CFEqual(a2, @"CurrentVoiceModelLanguage"))
                  {
                    if (CFEqual(a2, @"AltScreenSuggestUIURLs"))
                    {
                      BOOLean = 0;
                      airPlayDescription_copyEndpointInfoValueCFArray(a1, @"altScreenSuggestUIURLs", &BOOLean);
                      v10 = BOOLean;
                      if (!BOOLean)
                      {
                        v10 = CFArrayCreate(a3, 0, 0, MEMORY[0x277CBF128]);
                        if (!v10)
                        {
                          airPlayDescription_copyPropertyInternal_cold_14(&v70);
                          return v70;
                        }
                      }

                      goto LABEL_13;
                    }

                    if (CFEqual(a2, @"AirPlayEndpointProperties"))
                    {
                      v65 = a1;
                      v66 = 0;
                    }

                    else
                    {
                      if (!CFEqual(a2, @"AirPlayClusterCompatibleEndpointProperties"))
                      {
                        if (CFEqual(a2, @"SupportsBufferedPKDDecryption"))
                        {
                          v20 = a1;
                          goto LABEL_85;
                        }

                        if (CFEqual(a2, @"Descriptor"))
                        {
                          return airPlayDescription_copyMXDescriptor(a1, a4);
                        }

                        if (CFEqual(a2, @"SupportsMixedSampleRates"))
                        {
                          v20 = a1;
                          goto LABEL_85;
                        }

                        if (CFEqual(a2, @"WASCalibrationSupportsMATAtmos"))
                        {
                          v20 = a1;
                          goto LABEL_85;
                        }

                        if (CFEqual(a2, @"SupportsSenderUIEventsChannel"))
                        {
                          v13 = @"supportsSenderUIEvents";
                          goto LABEL_26;
                        }

                        if (CFEqual(a2, @"SupportsDCXForSpatialAudio"))
                        {
                          CMBaseObjectGetDerivedStorage();
                          if (airPlayDescription_hasFeatureInternal(a1) && airPlayDescription_isDCXSupportedForSpatialAudio(a1))
                          {
                            goto LABEL_107;
                          }

                          goto LABEL_500;
                        }

                        if (CFEqual(a2, @"SupportsUGLAssistedDiscovery"))
                        {
                          v20 = a1;
                          goto LABEL_85;
                        }

                        if (CFEqual(a2, @"uglServerInfo"))
                        {
                          v10 = *(DerivedStorage + 88);
                          if (!v10)
                          {
                            goto LABEL_13;
                          }

                          goto LABEL_6;
                        }

                        if (CFEqual(a2, @"IsUGLReceiverSessionActive"))
                        {
                          v14 = a1;
                          v15 = 0x400000;
                          goto LABEL_49;
                        }

                        if (CFEqual(a2, @"ReceiverModifiesMainHighLatency"))
                        {
                          return airplayDescription_copyReceiverModifiesMainHighLatency(a1, a4);
                        }

                        if (gLogCategory_APEndpointDescriptionAirPlay <= 30 && (gLogCategory_APEndpointDescriptionAirPlay != -1 || _LogCategory_Initialize()))
                        {
                          airPlayDescription_copyPropertyInternal_cold_15();
                        }

                        return -12784;
                      }

                      v65 = a1;
                      v66 = 1;
                    }

                    airPlayDescription_copyAirPlayEndpointProperties(v65, v66, a4);
                    return 0;
                  }

                  v64 = @"voiceModelCurrentLanguage";
                }

                return airPlayDescription_copyEndpointInfoNestedCFData(a1, @"enhancedSiriInfo", v64, a4);
              }

              v58 = @"nightMode";
            }

            airPlayDescription_copyEndpointInfoValueCFBoolean(a1, v58, a4);
            return 0;
          }

          v67 = 0;
          v68 = a4;
        }

        v48 = a1;
        v49 = 0;
      }

      v50 = 0;
    }

    v51 = 0;
    goto LABEL_310;
  }

  v10 = APAdvertiserInfoCopyProperty();
  if (v10)
  {
    goto LABEL_13;
  }

  v16 = CFNumberCreateInt64();
  *a4 = v16;
  if (!v16)
  {
    airPlayDescription_copyPropertyInternal_cold_1();
  }

  return v70;
}

BOOL airPlayDescription_isSourceVersionAtLeast(uint64_t a1, unsigned int a2)
{
  v7 = 0;
  CMBaseObjectGetDerivedStorage();
  if (airPlayDescription_copySourceVersion(a1, &v7))
  {
    APSLogErrorAt();
    v5 = 0;
    v4 = v7;
    if (!v7)
    {
      return v5;
    }

    goto LABEL_3;
  }

  v4 = v7;
  v5 = CFGetInt64Ranged() >= a2;
  if (v4)
  {
LABEL_3:
    CFRelease(v4);
  }

  return v5;
}

uint64_t CMBaseObjectCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

uint64_t CMBaseObjectCopyProperty_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  VTable = CMBaseObjectGetVTable();
  v10 = *(VTable + 8);
  result = VTable + 8;
  v11 = *(v10 + 48);
  if (v11)
  {

    return v11(a1, a2, a3, a4);
  }

  return result;
}

uint64_t __carEndpoint_getStreamInfoForDisplayUUID_block_invoke(uint64_t result, uint64_t a2)
{
  if (!*(*(*(result + 32) + 8) + 24))
  {
    v3 = result;
    result = FigCFEqual();
    if (result)
    {
      *(*(*(v3 + 32) + 8) + 24) = a2;
    }
  }

  return result;
}

uint64_t carEndpoint_CopyCurrentViewArea(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 62))
  {
    v7 = *(DerivedStorage + 168);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 0x40000000;
    v13[2] = __carEndpoint_CopyCurrentViewArea_block_invoke;
    v13[3] = &unk_27849F6A8;
    v13[6] = a1;
    v13[7] = a2;
    v13[4] = &v18;
    v13[5] = &v14;
    dispatch_sync(v7, v13);
  }

  v8 = v15;
  v9 = v15[3];
  if (v9)
  {
    v9 = CFRetain(v9);
    v8 = v15;
  }

  *a3 = v9;
  v10 = v8[3];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(v19 + 6);
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
  return v11;
}

uint64_t carEndpoint_getScreenStreamForDisplayUUID()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 264))
  {
    CFArrayGetCount(*(DerivedStorage + 264));
    CFArrayApplyBlock();
  }

  v1 = v4[3];
  _Block_object_dispose(&v3, 8);
  return v1;
}

uint64_t APStarkModeCreateStructRepresentation(CFDictionaryRef theDict, _OWORD *a2)
{
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2000000000;
  v21[3] = 0;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2000000000;
  v20 = 0;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2000000000;
  v18 = 0;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2000000000;
  v16 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3800000000;
  v13 = 0u;
  v14 = 0u;
  if (theDict)
  {
    if (a2)
    {
      for (i = 24; i != 56; ++i)
      {
        *(&v10 + i) = 0;
      }

      Value = CFDictionaryGetValue(theDict, @"appStates");
      v6 = CFDictionaryGetValue(theDict, @"resources");
      if (Value)
      {
        CFArrayGetCount(Value);
        CFArrayApplyBlock();
      }

      if (v6)
      {
        CFArrayGetCount(v6);
        CFArrayApplyBlock();
      }

      v7 = 0;
      v8 = *(v11 + 5);
      *a2 = *(v11 + 3);
      a2[1] = v8;
    }

    else
    {
      v7 = 4294895245;
      APStarkModeCreateStructRepresentation_cold_1();
    }
  }

  else
  {
    v7 = 4294895245;
    APStarkModeCreateStructRepresentation_cold_2();
  }

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(v15, 8);
  _Block_object_dispose(v17, 8);
  _Block_object_dispose(v19, 8);
  _Block_object_dispose(v21, 8);
  return v7;
}

uint64_t carEndpoint_packetizeCommandAndSend(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v27 = 0;
  v28 = &v27;
  v29 = 0x2000000000;
  v30 = 0;
  v26 = 0;
  v25.tv_sec = 0;
  *&v25.tv_usec = 0;
  cf = 0;
  if (carEndpoint_isDissociated(DerivedStorage))
  {
    Data = 0;
    v8 = 0;
    goto LABEL_32;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v8 = Mutable;
  if (!Mutable)
  {
    carEndpoint_packetizeCommandAndSend_cold_5();
    Data = 0;
LABEL_46:
    v12 = 4294950575;
    goto LABEL_22;
  }

  CFDictionarySetValue(Mutable, @"type", a2);
  if (a3)
  {
    CFDictionarySetValue(v8, @"params", a3);
  }

  Data = CFPropertyListCreateData(0, v8, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  if (!Data)
  {
    carEndpoint_packetizeCommandAndSend_cold_4();
    goto LABEL_46;
  }

  BlockBufferWithCFDataNoCopy = FigCreateBlockBufferWithCFDataNoCopy();
  if (!BlockBufferWithCFDataNoCopy)
  {
    if (gLogCategory_APEndpointCarPlay <= 20 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v11 = *(DerivedStorage + 168);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __carEndpoint_packetizeCommandAndSend_block_invoke;
    block[3] = &unk_27849F478;
    block[4] = &v27;
    block[5] = DerivedStorage;
    dispatch_sync(v11, block);
    v12 = v28[3];
    if (!v12)
    {
      goto LABEL_33;
    }

    v13 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v13 && v13(v12))
    {
      CMBaseObject = APSenderSessionGetCMBaseObject(v28[3]);
      v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v15)
      {
        v16 = v15(CMBaseObject, @"TransportControlStream", 0, &v26);
        if (!v16)
        {
          if (gLogCategory_APEndpointCarPlay <= 30)
          {
            carEndpoint_packetizeCommandAndSend_cold_2(gLogCategory_APEndpointCarPlay);
          }

          gettimeofday(&v25, 0);
          v17 = v26;
          v18 = cf;
          v19 = *(*(CMBaseObjectGetVTable() + 16) + 48);
          if (v19)
          {
            v12 = v19(v17, 1668246893, v18);
          }

          else
          {
            v12 = 4294954514;
          }

          CFDataGetLength(Data);
          carEndpoint_sendCommandInfoAppend(a1, a2, &v25);
          if (v12)
          {
            carEndpoint_packetizeCommandAndSend_cold_3();
            goto LABEL_22;
          }

LABEL_33:
          v20 = v26;
          if (!v26)
          {
            goto LABEL_35;
          }

          goto LABEL_34;
        }

        v12 = v16;
      }

      else
      {
        v12 = 4294954514;
      }

      APSLogErrorAt();
      goto LABEL_22;
    }

LABEL_32:
    v12 = 0;
    goto LABEL_33;
  }

  v12 = BlockBufferWithCFDataNoCopy;
  carEndpoint_packetizeCommandAndSend_cold_1();
LABEL_22:
  v20 = v26;
  if (!v26)
  {
    goto LABEL_35;
  }

  if (gLogCategory_APEndpointCarPlay <= 90)
  {
    if (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize())
    {
      LogPrintF();
    }

    goto LABEL_33;
  }

LABEL_34:
  CFRelease(v20);
LABEL_35:
  v21 = v28[3];
  if (v21)
  {
    CFRelease(v21);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (Data)
  {
    CFRelease(Data);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  _Block_object_dispose(&v27, 8);
  return v12;
}

void carEndpoint_sendCommandInfoAppend(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 560))
  {
    v5 = DerivedStorage;
    v6 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v8 = Mutable;
      v11.tv_sec = 0;
      *&v11.tv_usec = 0;
      gettimeofday(&v11, 0);
      v9 = localtime(a3);
      snprintf(__str, 0x14uLL, "%02d:%02d:%02d.%d", v9->tm_hour, v9->tm_min, v9->tm_sec, *(a3 + 8));
      v10 = CFStringCreateWithCString(v6, __str, 0x8000100u);
      FigCFDictionarySetValue();
      FigCFDictionarySetDouble();
      FigCFDictionarySetValue();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigSimpleMutexLock();
      if (CFArrayGetCount(*(v5 + 560)) >= *(v5 + 568))
      {
        CFArrayRemoveValueAtIndex(*(v5 + 560), 0);
      }

      CFArrayAppendValue(*(v5 + 560), v8);
      FigSimpleMutexUnlock();
      if (v10)
      {
        CFRelease(v10);
      }

      CFRelease(v8);
    }
  }
}

uint64_t carEndpoint_CopyProperty(const void *a1, const void *a2, const __CFAllocator *a3, CFDictionaryRef *a4)
{
  if (gLogCategory_APEndpointCarPlay <= 10 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, *MEMORY[0x277CC1568]))
  {
    v9 = MEMORY[0x277CC1A30];
LABEL_7:
    Value = *v9;
LABEL_8:
    Value = CFRetain(Value);
LABEL_9:
    v11 = 0;
    *a4 = Value;
    return v11;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1288]))
  {
    CMBaseObject = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 8));
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v14)
    {
      v11 = v14(CMBaseObject, @"BluetoothDeviceIDs", a3, a4);
      if (!v11)
      {
        return v11;
      }
    }

    else
    {
      v11 = 4294954514;
    }

    goto LABEL_16;
  }

  if (CFEqual(a2, @"CarPlayControlSupported"))
  {
    v21 = *(DerivedStorage + 8);
    v22 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v22 && v22(v21, 37))
    {
LABEL_26:
      v9 = MEMORY[0x277CBED28];
      goto LABEL_7;
    }

LABEL_118:
    v9 = MEMORY[0x277CBED10];
    goto LABEL_7;
  }

  if (CFEqual(a2, @"EndpointDescription"))
  {
    Value = *(DerivedStorage + 8);
    if (!Value)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1368]))
  {
    Value = *(DerivedStorage + 32);
    if (!Value)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1398]))
  {
    isEndpointConnected = carEndpoint_isEndpointConnected();
    v9 = MEMORY[0x277CBED28];
    if (!isEndpointConnected)
    {
      v9 = MEMORY[0x277CBED10];
    }

    goto LABEL_7;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1418]))
  {
    v24 = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 8));
    v11 = CMBaseObjectCopyProperty(v24, @"LimitedUIElements", 0, a4);
    if (!v11)
    {
      return v11;
    }

    goto LABEL_16;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1440]))
  {
    v25 = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 8));
    v11 = OUTLINED_FUNCTION_7_9(v25);
    if (!v11)
    {
      return v11;
    }

    goto LABEL_16;
  }

  if (!CFEqual(a2, *MEMORY[0x277CC1430]))
  {
    if (CFEqual(a2, *MEMORY[0x277CC1328]))
    {
      v28 = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 8));
      v11 = OUTLINED_FUNCTION_7_9(v28);
      if (!v11)
      {
        return v11;
      }

      goto LABEL_16;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1558]))
    {
      v29 = MEMORY[0x277CC1A10];
      if (!*(DerivedStorage + 40))
      {
        v29 = MEMORY[0x277CC1A08];
      }

      Value = *v29;
      if (!*v29)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1450]))
    {
      Value = *(DerivedStorage + 24);
      if (!Value)
      {
        Value = *(DerivedStorage + 16);
        if (!Value)
        {
          goto LABEL_9;
        }
      }

      goto LABEL_8;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1508]))
    {
      v30 = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 8));
      v11 = OUTLINED_FUNCTION_7_9(v30);
      if (!v11)
      {
        return v11;
      }

      goto LABEL_16;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1460]))
    {
      v31 = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 8));
      v11 = OUTLINED_FUNCTION_7_9(v31);
      if (!v11)
      {
        return v11;
      }

      goto LABEL_16;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1470]))
    {
      v32 = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 8));
      v11 = OUTLINED_FUNCTION_7_9(v32);
      if (!v11)
      {
        return v11;
      }

      goto LABEL_16;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1580]))
    {
      v33 = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 8));
      v11 = OUTLINED_FUNCTION_7_9(v33);
      if (!v11)
      {
        return v11;
      }

      goto LABEL_16;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1578]))
    {
      v34 = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 8));
      v11 = OUTLINED_FUNCTION_7_9(v34);
      if (!v11)
      {
        return v11;
      }

      goto LABEL_16;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1240]))
    {
      v35 = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 8));
      v11 = OUTLINED_FUNCTION_7_9(v35);
      if (!v11)
      {
        return v11;
      }

      goto LABEL_16;
    }

    if (CFEqual(a2, @"ScreenIsOverscanned"))
    {
      v11 = carEndpoint_copyPropertyForDisplay(a1, @"IsOverscanned", a3, a4);
      if (!v11)
      {
        return v11;
      }

      goto LABEL_16;
    }

    if (CFEqual(a2, @"ScreenSize"))
    {
      v11 = carEndpoint_copyPropertyForDisplay(a1, @"PixelSize", a3, a4);
      if (!v11)
      {
        return v11;
      }

      goto LABEL_16;
    }

    if (CFEqual(a2, @"SourceVersion"))
    {
      v36 = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 8));
      v11 = OUTLINED_FUNCTION_7_9(v36);
      if (!v11)
      {
        return v11;
      }

      goto LABEL_16;
    }

    if (CFEqual(a2, @"StatusFlags") || CFEqual(a2, *MEMORY[0x277CC1540]))
    {
      v37 = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 8));
      v11 = OUTLINED_FUNCTION_7_9(v37);
      if (!v11)
      {
        return v11;
      }

      goto LABEL_16;
    }

    if (CFEqual(a2, *MEMORY[0x277CC12E8]))
    {
      v38 = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 8));
      v11 = OUTLINED_FUNCTION_7_9(v38);
      if (!v11)
      {
        return v11;
      }

      goto LABEL_16;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1530]))
    {
      v39 = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 8));
      v11 = OUTLINED_FUNCTION_7_9(v39);
      if (!v11)
      {
        return v11;
      }

      goto LABEL_16;
    }

    if (CFEqual(a2, @"EndpointInfo"))
    {
      v40 = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 8));
      v41 = OUTLINED_FUNCTION_7_9(v40);
      if (!v41)
      {
        v42 = *a4;
        if (*a4 && (CFDictionaryContainsKey(*a4, @"videoPlaybackInfo") || CFDictionaryContainsKey(v42, @"video2Info")))
        {
          MutableCopy = FigCFDictionaryCreateMutableCopy();
          FigCFDictionaryGetDictionaryValue();
          FigCFDictionarySetValue();
          if (MutableCopy)
          {
            v44 = *a4;
            *a4 = MutableCopy;
            CFRetain(MutableCopy);
            if (v44)
            {
              CFRelease(v44);
            }

            CFRelease(MutableCopy);
          }
        }

        return 0;
      }

      v11 = v41;
LABEL_16:
      APSLogErrorAt();
      goto LABEL_17;
    }

    if (CFEqual(a2, @"CornerMasksSupported"))
    {
      v9 = MEMORY[0x277CBED28];
      if (!*(DerivedStorage + 65))
      {
        v9 = MEMORY[0x277CBED10];
      }

      goto LABEL_7;
    }

    if (CFEqual(a2, @"VoiceTriggerSupported"))
    {
      v45 = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 8));
      v11 = OUTLINED_FUNCTION_7_9(v45);
      if (!v11)
      {
        return v11;
      }

      goto LABEL_16;
    }

    if (CFEqual(a2, *MEMORY[0x277CC15B0]))
    {
      goto LABEL_118;
    }

    if (CFEqual(a2, *MEMORY[0x277CC14D8]))
    {
      v46 = *(DerivedStorage + 48);
      if (v46)
      {
        Value = CFDictionaryGetValue(v46, @"requestIdentifier");
        if (!Value)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }

      goto LABEL_164;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1238]))
    {
      if (*(DerivedStorage + 162))
      {
        v47 = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 8));
        v11 = OUTLINED_FUNCTION_7_9(v47);
      }

      else
      {
        v11 = 0;
        *a4 = CFNumberCreateInt64();
      }

      OUTLINED_FUNCTION_25_2();
      if (v19 ^ v20 | v18 && (v51 != -1 || OUTLINED_FUNCTION_10()))
      {
        OUTLINED_FUNCTION_4_1();
      }

      goto LABEL_17;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1230]))
    {
      v48 = MEMORY[0x277CBED28];
      v49 = *(DerivedStorage + 60);
    }

    else
    {
      if (CFEqual(a2, *MEMORY[0x277CC1220]))
      {
        v48 = MEMORY[0x277CBED10];
        v49 = *(DerivedStorage + 161);
        v50 = MEMORY[0x277CBED28];
LABEL_136:
        if (!v49)
        {
          v48 = v50;
        }

        *a4 = CFRetain(*v48);
        OUTLINED_FUNCTION_25_2();
        if (!(v19 ^ v20 | v18) || v52 == -1 && !OUTLINED_FUNCTION_10())
        {
          return 0;
        }

        goto LABEL_141;
      }

      if (!CFEqual(a2, *MEMORY[0x277CC13F8]) && !CFEqual(a2, *MEMORY[0x277CC1588]))
      {
        if (!CFEqual(a2, *MEMORY[0x277CC12F8]))
        {
          if (CFEqual(a2, *MEMORY[0x277CC12F0]))
          {
            if (*(DerivedStorage + 162))
            {
              HasFeature = APEndpointDescriptionHasFeature(*(DerivedStorage + 8), 35);
              v9 = MEMORY[0x277CBED28];
              if (HasFeature)
              {
                v9 = MEMORY[0x277CBED10];
              }

              goto LABEL_7;
            }

            goto LABEL_26;
          }

          if (CFEqual(a2, *MEMORY[0x277CC1300]))
          {
LABEL_164:
            v11 = 0;
            *a4 = 0;
            return v11;
          }

          if (!CFEqual(a2, *MEMORY[0x277CC14F8]))
          {
            goto LABEL_18;
          }

          block[0] = 0;
          SupportedFeatures = carEndpoint_getSupportedFeatures(a1, block);
          if (SupportedFeatures)
          {
            v11 = SupportedFeatures;
            goto LABEL_16;
          }

          v58 = CFNumberCreate(a3, kCFNumberSInt64Type, block);
          *a4 = v58;
          if (v58)
          {
            OUTLINED_FUNCTION_25_2();
            if (v19 ^ v20 | v18 && (v59 != -1 || OUTLINED_FUNCTION_10()))
            {
              OUTLINED_FUNCTION_4_1();
            }

            v11 = 0;
          }

          else
          {
            APSLogErrorAt();
            v11 = 4294950575;
          }

LABEL_17:
          if (v11 != -12784)
          {
            return v11;
          }

          goto LABEL_18;
        }

        v53 = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 8));
        v54 = OUTLINED_FUNCTION_7_9(v53);
        if (v54)
        {
          v11 = v54;
          goto LABEL_16;
        }

        if (!a4)
        {
          return 0;
        }

        OUTLINED_FUNCTION_25_2();
        if (!(v19 ^ v20 | v18) || v55 == -1 && !OUTLINED_FUNCTION_10())
        {
          return 0;
        }

LABEL_141:
        OUTLINED_FUNCTION_4_1();
        return 0;
      }

      v48 = MEMORY[0x277CBED28];
      v49 = *(DerivedStorage + 162);
    }

    v50 = MEMORY[0x277CBED10];
    goto LABEL_136;
  }

  v26 = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 8));
  v27 = OUTLINED_FUNCTION_7_9(v26);
  v11 = v27;
  if (!*(DerivedStorage + 48) || v27 != -12784)
  {
    if (!v27)
    {
      return v11;
    }

    goto LABEL_16;
  }

LABEL_18:
  v61 = 0;
  v62 = &v61;
  v63 = 0x2000000000;
  v64 = 0;
  v15 = CMBaseObjectGetDerivedStorage();
  v16 = *(v15 + 168);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __carEndpoint_copyStateProperty_block_invoke;
  block[3] = &unk_27849E420;
  block[4] = &v61;
  block[5] = v15;
  block[6] = a2;
  block[7] = a4;
  block[8] = a3;
  block[9] = a1;
  dispatch_sync(v16, block);
  v11 = *(v62 + 6);
  _Block_object_dispose(&v61, 8);
  if (v11 == -12784)
  {
    OUTLINED_FUNCTION_25_2();
    if (v19 ^ v20 | v18 && (v17 != -1 || OUTLINED_FUNCTION_10()))
    {
      OUTLINED_FUNCTION_4_1();
    }

    return 4294954512;
  }

  return v11;
}