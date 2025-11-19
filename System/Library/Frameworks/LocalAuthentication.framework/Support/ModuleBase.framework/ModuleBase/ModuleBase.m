void sub_238BC3200(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

id LA_LOG()
{
  if (LA_LOG_once != -1)
  {
    LA_LOG_cold_1();
  }

  v1 = LA_LOG_log;

  return v1;
}

uint64_t AuthenticationPriorityForPolicy(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((a1 - 1010) <= 0x12 && ((1 << (a1 + 14)) & 0x40029) != 0)
  {
    v4 = 4;
  }

  else if ([MEMORY[0x277D240C0] isApplePayPolicy:a1])
  {
    v4 = 3;
  }

  else if (LACLightweightUIModeFromOptions())
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

void sub_238BC4A0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id LA_LOG_AuthenticationManager()
{
  if (LA_LOG_AuthenticationManager_once != -1)
  {
    LA_LOG_AuthenticationManager_cold_1();
  }

  v1 = LA_LOG_AuthenticationManager_log;

  return v1;
}

void sub_238BC598C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

id LA_LOG_MechanismManager()
{
  if (LA_LOG_MechanismManager_once != -1)
  {
    LA_LOG_MechanismManager_cold_1();
  }

  v1 = LA_LOG_MechanismManager_log;

  return v1;
}