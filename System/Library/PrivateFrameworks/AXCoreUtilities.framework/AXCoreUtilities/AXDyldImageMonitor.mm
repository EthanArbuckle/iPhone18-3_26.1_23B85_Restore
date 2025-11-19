@interface AXDyldImageMonitor
@end

@implementation AXDyldImageMonitor

uint64_t __37___AXDyldImageMonitor_sharedInstance__block_invoke()
{
  _Shared = objc_alloc_init(_AXDyldImageMonitor);

  return MEMORY[0x1EEE66BB8]();
}

void __47___AXDyldImageMonitor_addImageMonitorObserver___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (v2)
  {
    [v2 addObject:*(a1 + 40)];
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);

    [v3 iterateInitialImageListForImageMonitor:v4];
  }

  else
  {
    v5 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v6 = *(a1 + 32);
    v7 = *(v6 + 8);
    *(v6 + 8) = v5;

    [*(*(a1 + 32) + 8) addObject:*(a1 + 40)];

    _dyld_register_func_for_add_image(AXImageMonitor_dyld_image_callback);
  }
}

@end