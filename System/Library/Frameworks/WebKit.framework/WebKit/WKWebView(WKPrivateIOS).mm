@interface WKWebView(WKPrivateIOS)
- (uint64_t)_addLayerForFindOverlay;
- (uint64_t)_detectDataWithTypes:()WKPrivateIOS completionHandler:;
- (uint64_t)_doAfterNextStablePresentationUpdate:()WKPrivateIOS;
- (uint64_t)_isForcedIntoAppBoundMode:()WKPrivateIOS;
- (uint64_t)_isNavigatingToAppBoundDomain:()WKPrivateIOS;
- (uint64_t)_removeLayerForFindOverlay;
- (uint64_t)_snapshotRectAfterScreenUpdates:()WKPrivateIOS rectInViewCoordinates:intoImageOfWidth:completionHandler:;
- (void)_addLayerForFindOverlay;
- (void)_removeLayerForFindOverlay;
@end

@implementation WKWebView(WKPrivateIOS)

- (uint64_t)_doAfterNextStablePresentationUpdate:()WKPrivateIOS
{
  *self = &unk_1F10FD508;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (uint64_t)_detectDataWithTypes:()WKPrivateIOS completionHandler:
{
  v3 = *(self + 16);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      v5 = *a2;
      *a2 = 0;
      v6 = *(v4 + 568);
      *(v4 + 568) = v5;
      if (v6)
      {
      }
    }
  }

  result = *(self + 8);
  if (result)
  {
    v8 = *(result + 16);

    return v8();
  }

  return result;
}

- (uint64_t)_snapshotRectAfterScreenUpdates:()WKPrivateIOS rectInViewCoordinates:intoImageOfWidth:completionHandler:
{
  *self = &unk_1F10FD580;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (uint64_t)_isNavigatingToAppBoundDomain:()WKPrivateIOS
{
  *self = &unk_1F10FD5A8;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (uint64_t)_isForcedIntoAppBoundMode:()WKPrivateIOS
{
  *self = &unk_1F10FD5D0;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (uint64_t)_addLayerForFindOverlay
{
  *self = &unk_1F10FD5F8;
  objc_destroyWeak(self + 1);

  return WTF::fastFree(self, v2);
}

- (void)_addLayerForFindOverlay
{
  v4 = *a2;
  v2 = *(a2 + 16);
  WeakRetained = objc_loadWeakRetained((self + 8));
  if (WeakRetained)
  {
    if (v2)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0uLL;
    }

    WeakRetained[68] = v5;
  }
}

- (uint64_t)_removeLayerForFindOverlay
{
  *self = &unk_1F10FD620;
  objc_destroyWeak(self + 1);

  return WTF::fastFree(self, v2);
}

- (void)_removeLayerForFindOverlay
{
  WeakRetained = objc_loadWeakRetained((self + 8));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _didRemoveLayerForFindOverlay];
  }
}

@end