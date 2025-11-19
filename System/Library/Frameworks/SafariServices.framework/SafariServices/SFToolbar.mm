@interface SFToolbar
@end

@implementation SFToolbar

uint64_t __37___SFToolbar__deviceSupportsMinibars__block_invoke()
{
  if (MGGetBoolAnswer() && MGGetBoolAnswer())
  {
    v0 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v0 _referenceBounds];
    v1 = CGRectGetWidth(v3) <= 375.0;
  }

  else
  {
    v1 = 1;
  }

  result = _SFDeviceIsPad();
  _deviceSupportsMinibars_deviceSupportsMinibars = (result ^ 1) & v1;
  return result;
}

@end