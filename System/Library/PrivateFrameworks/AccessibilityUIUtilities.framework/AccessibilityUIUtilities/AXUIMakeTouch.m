@interface AXUIMakeTouch
@end

@implementation AXUIMakeTouch

uint64_t ___AXUIMakeTouch_block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E69DD190]);
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = mach_absolute_time();
  v6 = dword_1EBE76070;
  if (!dword_1EBE76070)
  {
    mach_timebase_info(&MachAbsoluteTimeToTimeIntervalSinceBoot_sTimebaseInfo);
    v6 = dword_1EBE76070;
  }

  v7 = (v5 * MachAbsoluteTimeToTimeIntervalSinceBoot_sTimebaseInfo / v6) / 1000000000.0;
  [*(*(*(a1 + 48) + 8) + 40) setPhase:*(a1 + 56)];
  [*(*(*(a1 + 48) + 8) + 40) setTimestamp:v7];
  [*(*(*(a1 + 48) + 8) + 40) setTapCount:1];
  [*(*(*(a1 + 48) + 8) + 40) setWindow:*(a1 + 32)];
  [*(*(*(a1 + 48) + 8) + 40) setView:*(a1 + 40)];
  [*(*(*(a1 + 48) + 8) + 40) _setLocationInWindow:1 resetPrevious:{*(a1 + 64), *(a1 + 72)}];
  v8 = *(*(*(a1 + 48) + 8) + 40);

  return [v8 _setIsFirstTouchForView:1];
}

@end