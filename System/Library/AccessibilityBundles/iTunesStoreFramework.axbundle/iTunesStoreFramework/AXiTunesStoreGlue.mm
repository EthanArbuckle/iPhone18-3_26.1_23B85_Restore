@interface AXiTunesStoreGlue
+ (void)accessibilityInitializeBundle;
- (void)_libraryWeakLoaded:(id)loaded;
@end

@implementation AXiTunesStoreGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    v2 = [objc_allocWithZone(AXiTunesStoreGlue) init];
    v3 = _Failover;
    _Failover = v2;
  }

  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter addObserver:_Failover selector:sel__libraryWeakLoaded_ name:@"ISWeakLibraryLoaded" object:0];
}

- (void)_libraryWeakLoaded:(id)loaded
{
  userInfo = [loaded userInfo];
  v4 = [userInfo objectForKey:@"Library"];
  intValue = [v4 intValue];

  if (intValue > 7)
  {
    switch(intValue)
    {
      case 8:
        v6 = @"com.apple.PhotoLibrary";
        goto LABEL_14;
      case 19:
        v6 = @"com.apple.StoreKit";
        goto LABEL_14;
      case 20:
        v6 = @"com.apple.ios.StoreKitUI";
        goto LABEL_14;
    }
  }

  else
  {
    switch(intValue)
    {
      case 2:
        v6 = @"com.apple.ContactsUI";
        goto LABEL_14;
      case 3:
        v6 = @"com.apple.MediaPlayer";
        goto LABEL_14;
      case 4:
        v6 = @"com.apple.messageui";
LABEL_14:
        v7 = v6;
        AXPerformBlockOnMainThreadAfterDelay();

        break;
    }
  }
}

void __40__AXiTunesStoreGlue__libraryWeakLoaded___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x29EDB9F48] bundleWithIdentifier:*(a1 + 32)];
  v5 = v2;
  if (!v2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);
    _AXAssert();
    v2 = 0;
  }

  [MEMORY[0x29EDC7358] loadAccessibilityBundleForBundle:v2 didLoadCallback:{0, v3, v4}];
}

@end