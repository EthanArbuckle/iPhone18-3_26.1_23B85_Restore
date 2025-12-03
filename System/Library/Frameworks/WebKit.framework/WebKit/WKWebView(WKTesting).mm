@interface WKWebView(WKTesting)
- (uint64_t)_appPrivacyReportTestingData:()WKTesting;
- (uint64_t)_clearAppPrivacyReportTestingData:()WKTesting;
- (uint64_t)_computePagesForPrinting:()WKTesting completionHandler:;
- (uint64_t)_doAfterProcessingAllPendingMouseEvents:()WKTesting;
- (uint64_t)_dumpPrivateClickMeasurement:()WKTesting;
- (uint64_t)_getNotifyStateForTesting:()WKTesting completionHandler:;
- (uint64_t)_gpuToWebProcessConnectionCountForTesting:()WKTesting;
- (uint64_t)_isLayerTreeFrozenForTesting:()WKTesting;
- (uint64_t)_lastNavigationWasAppInitiated:()WKTesting;
- (uint64_t)_processWillSuspendForTesting:()WKTesting;
- (uint64_t)_requestActiveNowPlayingSessionInfo:()WKTesting;
- (uint64_t)_setNowPlayingMetadataObserver:()WKTesting;
- (uint64_t)_setPrivateClickMeasurementAppBundleIDForTesting:()WKTesting completionHandler:;
- (uint64_t)_setPrivateClickMeasurementAttributionReportURLsForTesting:()WKTesting destinationURL:completionHandler:;
- (uint64_t)_setPrivateClickMeasurementAttributionTokenPublicKeyURLForTesting:()WKTesting completionHandler:;
- (uint64_t)_setPrivateClickMeasurementAttributionTokenSignatureURLForTesting:()WKTesting completionHandler:;
- (uint64_t)_setPrivateClickMeasurementOverrideTimerForTesting:()WKTesting completionHandler:;
- (uint64_t)_textFragmentRangesWithCompletionHandlerForTesting:()WKTesting;
- (void)_dumpPrivateClickMeasurement:()WKTesting;
- (void)_requestActiveNowPlayingSessionInfo:()WKTesting;
- (void)_setNowPlayingMetadataObserver:()WKTesting;
- (void)_textFragmentRangesWithCompletionHandlerForTesting:()WKTesting;
@end

@implementation WKWebView(WKTesting)

- (uint64_t)_setNowPlayingMetadataObserver:()WKTesting
{
  *self = &unk_1F10F8E68;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (void)_setNowPlayingMetadataObserver:()WKTesting
{
  v4 = objc_alloc_init(_WKNowPlayingMetadata);
  v5 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v21, v5);
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v6);
    }
  }

  else
  {
    v21 = &stru_1F1147748;
    v7 = &stru_1F1147748;
  }

  [(_WKNowPlayingMetadata *)v4 setTitle:v21];
  v8 = v21;
  v21 = 0;
  if (v8)
  {
  }

  v9 = a2[1];
  if (v9)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v21, v9);
    if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v10);
    }
  }

  else
  {
    v21 = &stru_1F1147748;
    v11 = &stru_1F1147748;
  }

  [(_WKNowPlayingMetadata *)v4 setArtist:v21];
  v12 = v21;
  v21 = 0;
  if (v12)
  {
  }

  v13 = a2[2];
  if (v13)
  {
    atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v21, v13);
    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v14);
    }
  }

  else
  {
    v21 = &stru_1F1147748;
    v15 = &stru_1F1147748;
  }

  [(_WKNowPlayingMetadata *)v4 setAlbum:v21];
  v16 = v21;
  v21 = 0;
  if (v16)
  {
  }

  v17 = a2[3];
  if (v17)
  {
    atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v21, v17);
    if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v18);
    }
  }

  else
  {
    v21 = &stru_1F1147748;
    v19 = &stru_1F1147748;
  }

  [(_WKNowPlayingMetadata *)v4 setSourceApplicationIdentifier:v21];
  v20 = v21;
  v21 = 0;
  if (v20)
  {
  }

  (*(*(self + 8) + 16))();
  if (v4)
  {
  }
}

- (uint64_t)_requestActiveNowPlayingSessionInfo:()WKTesting
{
  *self = &unk_1F10F9E08;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (void)_requestActiveNowPlayingSessionInfo:()WKTesting
{
  v5 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v9, v5);
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v6);
    }
  }

  else
  {
    v9 = &stru_1F1147748;
    v7 = &stru_1F1147748;
  }

  (*(*(self + 8) + 16))(*(a3 + 64), *(a3 + 72));
  v8 = v9;
  v9 = 0;
  if (v8)
  {
  }
}

- (uint64_t)_processWillSuspendForTesting:()WKTesting
{
  *self = &unk_1F10F9E30;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (uint64_t)_doAfterProcessingAllPendingMouseEvents:()WKTesting
{
  *self = &unk_1F10F9E80;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (uint64_t)_setPrivateClickMeasurementOverrideTimerForTesting:()WKTesting completionHandler:
{
  *self = &unk_1F10F9EA8;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (uint64_t)_setPrivateClickMeasurementAttributionReportURLsForTesting:()WKTesting destinationURL:completionHandler:
{
  *self = &unk_1F10F9ED0;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (uint64_t)_setPrivateClickMeasurementAttributionTokenPublicKeyURLForTesting:()WKTesting completionHandler:
{
  *self = &unk_1F10F9EF8;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (uint64_t)_setPrivateClickMeasurementAttributionTokenSignatureURLForTesting:()WKTesting completionHandler:
{
  *self = &unk_1F10F9F20;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (uint64_t)_setPrivateClickMeasurementAppBundleIDForTesting:()WKTesting completionHandler:
{
  *self = &unk_1F10F9F48;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (uint64_t)_dumpPrivateClickMeasurement:()WKTesting
{
  *self = &unk_1F10F9F70;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (void)_dumpPrivateClickMeasurement:()WKTesting
{
  v3 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v7, v3);
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v4);
    }
  }

  else
  {
    v7 = &stru_1F1147748;
    v5 = &stru_1F1147748;
  }

  (*(*(self + 8) + 16))();
  v6 = v7;
  v7 = 0;
  if (v6)
  {
  }
}

- (uint64_t)_lastNavigationWasAppInitiated:()WKTesting
{
  *self = &unk_1F10F9F98;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (uint64_t)_appPrivacyReportTestingData:()WKTesting
{
  *self = &unk_1F10F9FC0;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (uint64_t)_clearAppPrivacyReportTestingData:()WKTesting
{
  *self = &unk_1F10F9FE8;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (uint64_t)_isLayerTreeFrozenForTesting:()WKTesting
{
  *self = &unk_1F10FA010;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (uint64_t)_computePagesForPrinting:()WKTesting completionHandler:
{
  *self = &unk_1F10FA038;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (uint64_t)_gpuToWebProcessConnectionCountForTesting:()WKTesting
{
  *self = &unk_1F10FA060;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (uint64_t)_getNotifyStateForTesting:()WKTesting completionHandler:
{
  if (a3)
  {
    v4 = *(self + 8);
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a2];
    v6 = *(v4 + 16);

    return v6(v4, v5);
  }

  else
  {
    v8 = *(*(self + 8) + 16);

    return v8();
  }
}

- (uint64_t)_textFragmentRangesWithCompletionHandlerForTesting:()WKTesting
{
  *self = &unk_1F10FA100;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (void)_textFragmentRangesWithCompletionHandlerForTesting:()WKTesting
{
  v3 = *(a2 + 3);
  if (v3)
  {
    if (v3 >> 28)
    {
      __break(0xC471u);
      return;
    }

    v5 = WTF::fastMalloc((16 * v3));
    v6 = v5;
    v7 = *(a2 + 3);
    if (v7)
    {
      v8 = 0;
      v9 = *a2;
      v10 = 16 * v7;
      do
      {
        *(v5 + v8) = *(v9 + v8);
        v8 += 16;
      }

      while (v10 != v8);
    }
  }

  else
  {
    v6 = 0;
  }

  array = [MEMORY[0x1E695DF70] array];
  v12 = array;
  if (array)
  {
    v13 = array;
  }

  if (v3)
  {
    v14 = 16 * v3;
    v15 = v6 + 8;
    do
    {
      if ((*(v15 - 1) | 0x8000000000000000) != 0xFFFFFFFFFFFFFFFFLL)
      {
        [v12 addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithRange:")}];
      }

      v15 += 16;
      v14 -= 16;
    }

    while (v14);
  }

  (*(*(self + 8) + 16))();
  if (v12)
  {
  }

  if (v6)
  {

    WTF::fastFree(v6, v16);
  }
}

@end