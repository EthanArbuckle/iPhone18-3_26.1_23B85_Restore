void sub_29BD6C320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id accessibilityLocalizedString(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 localizedStringForKey:v1 value:&stru_2A21851B8 table:@"Accessibility"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

CGPoint CGPointFromString(NSString *string)
{
  MEMORY[0x2A1C6A7A8](string);
  result.y = v2;
  result.x = v1;
  return result;
}