@interface NSPlaceholderDate
@end

@implementation NSPlaceholderDate

uint64_t __33____NSPlaceholderDate_initialize__block_invoke()
{
  if (CFDateGetTypeID_initOnce != -1)
  {
    __33____NSPlaceholderDate_initialize__block_invoke_cold_1();
  }

  result = _CFExecutableLinkedOnOrAfter(7uLL);
  if (result && *MEMORY[0x1E69E5908])
  {
    objc_opt_class();

    return _objc_registerTaggedPointerClass();
  }

  else
  {
    _NSDateTaggedPointersDisabled = 1;
  }

  return result;
}

@end