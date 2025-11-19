@interface GCAppleTVRemoteControllerProfile
@end

@implementation GCAppleTVRemoteControllerProfile

void __46___GCAppleTVRemoteControllerProfile_setOwner___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _motion];
  v3 = [v2 valueChangedHandler];

  if (v3)
  {
    v6 = [*(a1 + 32) _motion];
    v4 = [v6 valueChangedHandler];
    v5 = [*(a1 + 32) _motion];
    (v4)[2](v4, v5);
  }
}

void __46___GCAppleTVRemoteControllerProfile_setOwner___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _motion];
  v3 = [v2 internalValueChangedHandler];

  if (v3)
  {
    v6 = [*(a1 + 32) _motion];
    v4 = [v6 internalValueChangedHandler];
    v5 = [*(a1 + 32) _motion];
    (v4)[2](v4, v5);
  }
}

void __55___GCAppleTVRemoteControllerProfile_setAllowsRotation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained processOrientationData:v3];
}

@end