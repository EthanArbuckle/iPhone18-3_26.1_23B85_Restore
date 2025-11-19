@interface IOHIDManagerDeviceApplier
@end

@implementation IOHIDManagerDeviceApplier

uint64_t ____IOHIDManagerDeviceApplier_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  --*(v1 + 112);
  LOBYTE(v1) = atomic_load((v1 + 116));
  if ((v1 & 2) != 0)
  {
    v2 = result;
    v3 = *(result + 32);
    if (!*(v3 + 112))
    {
      result = *(v3 + 104);
      if (result)
      {
        (*(result + 16))();
        _Block_release(*(*(v2 + 32) + 104));
        v4 = *(v2 + 32);
        v4[13] = 0;

        return _IOHIDObjectInternalRelease(v4);
      }
    }
  }

  return result;
}

@end