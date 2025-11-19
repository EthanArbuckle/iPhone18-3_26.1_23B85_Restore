uint64_t NativeAuthStatusFromNSString(void *a1)
{
  v1 = [a1 lowercaseString];
  if ([v1 isEqualToString:@"authenticated"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"failed"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *NSStringFromNativeAuthStatus(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 2)
  {
    v1 = @"failed";
  }

  if (a1 == 1)
  {
    return @"authenticated";
  }

  else
  {
    return v1;
  }
}

uint64_t ServerSideAuthStatusFromNSString(void *a1)
{
  v1 = [a1 lowercaseString];
  if ([v1 isEqualToString:@"success"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"failure"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"cancel"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *NSStringFromServerSideAuthStatus(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_278A0E698[a1];
  }
}

void sub_236EA6EB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, id a19)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a19);
  _Unwind_Resume(a1);
}

id LogCategory_Daemon()
{
  if (_MergedGlobals_5 != -1)
  {
    dispatch_once(&_MergedGlobals_5, &__block_literal_global_0);
  }

  v1 = qword_27DE8BA88;

  return v1;
}