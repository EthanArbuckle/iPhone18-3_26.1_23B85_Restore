__CFString *AMStringForAmbientTriggerState(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 1)
  {
    v1 = @"asserted";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"idle";
  }
}

__CFString *AMStringForCMMagicMountStateStatus(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_278C735F0[a1 - 1];
  }
}

__CFString *AMStringForAmbientMountState(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_278C735D0[a1];
  }
}

void sub_23EE4A4FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23EE4AB58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *AMStringForAmbientPresentationState(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_278C73610[a1];
  }
}

void sub_23EE4B54C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23EE4BFCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id AMLogGeneral()
{
  if (AMLogGeneral_onceToken != -1)
  {
    AMLogGeneral_cold_1();
  }

  v1 = AMLogGeneral___logObj;

  return v1;
}

uint64_t __AMLogGeneral_block_invoke()
{
  v0 = os_log_create("com.apple.ambient.Ambient", "General");
  v1 = AMLogGeneral___logObj;
  AMLogGeneral___logObj = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id AMLogMotion()
{
  if (AMLogMotion_onceToken != -1)
  {
    AMLogMotion_cold_1();
  }

  v1 = AMLogMotion___logObj;

  return v1;
}

uint64_t __AMLogMotion_block_invoke()
{
  v0 = os_log_create("com.apple.ambient.Ambient", "Motion");
  v1 = AMLogMotion___logObj;
  AMLogMotion___logObj = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id AMLogPresentation()
{
  if (AMLogPresentation_onceToken != -1)
  {
    AMLogPresentation_cold_1();
  }

  v1 = AMLogPresentation___logObj;

  return v1;
}

uint64_t __AMLogPresentation_block_invoke()
{
  v0 = os_log_create("com.apple.ambient.Ambient", "Presentation");
  v1 = AMLogPresentation___logObj;
  AMLogPresentation___logObj = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id AMLogRedMode()
{
  if (AMLogRedMode_onceToken != -1)
  {
    AMLogRedMode_cold_1();
  }

  v1 = AMLogRedMode___logObj;

  return v1;
}

uint64_t __AMLogRedMode_block_invoke()
{
  v0 = os_log_create("com.apple.ambient.Ambient", "RedMode");
  v1 = AMLogRedMode___logObj;
  AMLogRedMode___logObj = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_23EE4E440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}