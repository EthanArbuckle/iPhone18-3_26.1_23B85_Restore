@interface MTLShouldRemapPresent
@end

@implementation MTLShouldRemapPresent

uint64_t ___MTLShouldRemapPresent_block_invoke()
{
  result = _MTLIsInternalBuild();
  if (result)
  {
    result = MTLGetEnvDefault("MTL_PRESENT_FIFO", 1);
    v1 = result != 0;
  }

  else
  {
    v1 = 1;
  }

  _MTLShouldRemapPresent_shouldRemapPresent = v1;
  return result;
}

@end