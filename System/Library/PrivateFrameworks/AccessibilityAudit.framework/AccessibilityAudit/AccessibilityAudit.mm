void sub_23D7038B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23D7042F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_23D70493C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_23D713C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id AXAuditLocStringWithValue(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if (AXAuditLocStringWithValue_onceToken != -1)
  {
    AXAuditLocStringWithValue_cold_1();
  }

  v7 = @"LocalizableIOS";
  if (a2 != 1)
  {
    v7 = 0;
  }

  if (a2)
  {
    v8 = v7;
  }

  else
  {
    v8 = @"Localizable";
  }

  if ([(__CFString *)v8 length])
  {
    v9 = [AXAuditLocStringWithValue_myBundle localizedStringForKey:v5 value:v6 table:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t AXAuditAttributeWithPrefixLocStringExists(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", a2, v5];
  v7 = AXAuditLocStringWithValue(v6, 1, @"KEY NOT FOUND");
  if (![v7 isEqualToString:@"KEY NOT FOUND"])
  {
    if (!a3)
    {
      v10 = 1;
      v8 = v6;
      v9 = v7;
      goto LABEL_11;
    }

    v8 = v6;
    v9 = v7;
    goto LABEL_8;
  }

  v8 = v5;

  v9 = AXAuditLocStringWithValue(v8, 1, @"KEY NOT FOUND");

  if (([v9 isEqualToString:@"KEY NOT FOUND"] & 1) == 0)
  {
    if (!a3)
    {
LABEL_9:
      v10 = 1;
      goto LABEL_11;
    }

    v7 = v9;
LABEL_8:
    v11 = v7;
    *a3 = v7;
    goto LABEL_9;
  }

  v10 = 0;
LABEL_11:

  return v10;
}

void *AXAuditAttributeWithPrefixLocString(void *a1, uint64_t a2)
{
  v3 = a1;
  v9 = 0;
  LODWORD(a2) = AXAuditAttributeWithPrefixLocStringExists(v3, a2, &v9);
  v4 = v9;
  v5 = v4;
  if (a2)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  v7 = v6;

  return v6;
}

BOOL isAppleInternalBuild()
{
  v0 = MGCopyAnswer();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  v3 = v2 == CFBooleanGetTypeID() && CFBooleanGetValue(v1) == 1;
  CFRelease(v1);
  return v3;
}

id iOSFrontmostApp()
{
  v0 = [MEMORY[0x277CE6BA0] primaryApp];
  if (!v0)
  {
    SystemWide = AXUIElementCreateSystemWide();
    if (SystemWide)
    {
      v2 = SystemWide;
      AXUIElementCopyApplicationAtPosition();
      v0 = 0;
      CFRelease(v2);
    }

    else
    {
      v0 = 0;
    }
  }

  return v0;
}

id AXAuditCurrentApplications()
{
  v0 = [MEMORY[0x277CE6BA0] systemWideElement];
  v1 = [v0 systemApplication];
  v2 = [v1 currentApplications];

  return v2;
}

uint64_t __AXAuditLocStringWithValue_block_invoke()
{
  AXAuditLocStringWithValue_myBundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

void sub_23D71E234(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void updateTimestampOfResults(void *a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v3;
  v21 = [v3 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v21)
  {
    v20 = *v31;
    do
    {
      v5 = 0;
      do
      {
        if (*v31 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v30 + 1) + 8 * v5);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v7 = [v6 caseResults];
        v8 = [v7 countByEnumeratingWithState:&v26 objects:v35 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v27;
          do
          {
            v11 = 0;
            do
            {
              if (*v27 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v26 + 1) + 8 * v11);
              v22 = 0u;
              v23 = 0u;
              v24 = 0u;
              v25 = 0u;
              v13 = [v12 auditIssues];
              v14 = [v13 countByEnumeratingWithState:&v22 objects:v34 count:16];
              if (v14)
              {
                v15 = v14;
                v16 = *v23;
                do
                {
                  v17 = 0;
                  do
                  {
                    if (*v23 != v16)
                    {
                      objc_enumerationMutation(v13);
                    }

                    [*(*(&v22 + 1) + 8 * v17++) setTimeStamp:v4];
                  }

                  while (v15 != v17);
                  v15 = [v13 countByEnumeratingWithState:&v22 objects:v34 count:16];
                }

                while (v15);
              }

              ++v11;
            }

            while (v11 != v9);
            v9 = [v7 countByEnumeratingWithState:&v26 objects:v35 count:16];
          }

          while (v9);
        }

        ++v5;
      }

      while (v5 != v21);
      v21 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v21);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void _axNotificationHandler(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void *a5)
{
  v6 = a5;
  if (a3 == 1000)
  {
    [v6 _screenChangedNotification];
  }
}