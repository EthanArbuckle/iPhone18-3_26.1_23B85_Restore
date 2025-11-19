@interface CFGetDYLDImageSuffix
@end

@implementation CFGetDYLDImageSuffix

char *____CFGetDYLDImageSuffix_block_invoke()
{
  if (issetugid())
  {
    result = 0;
  }

  else
  {
    result = __CFgetenv("DYLD_IMAGE_SUFFIX");
  }

  __CFGetDYLDImageSuffix_suffix = result;
  return result;
}

@end