void sub_10000187C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000018A4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

intptr_t sub_1000018BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained device];
  v4 = objc_loadWeakRetained((a1 + 48));
  if ([v4 isMagSafe])
  {
    v5 = 135;
  }

  else
  {
    v5 = 13;
  }

  v6 = [v3 stringFromHIDReport:v5];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(a1 + 32);

  return dispatch_semaphore_signal(v9);
}

void sub_100001D40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100001D68(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

intptr_t sub_100001D80(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained hidDevice];
  v4 = objc_loadWeakRetained((a1 + 48));
  if ([v4 isMagSafe])
  {
    v5 = 135;
  }

  else
  {
    v5 = 13;
  }

  v6 = [v3 stringFromHIDReport:v5];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(a1 + 32);

  return dispatch_semaphore_signal(v9);
}

id stringOrNull(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = +[NSNull null];
  }

  v4 = v3;

  return v4;
}

id numberOrNull(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = +[NSNull null];
  }

  v4 = v3;

  return v4;
}

void removeNullFromDictionary(void *a1)
{
  v1 = a1;
  v2 = [v1 allKeys];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [v1 objectForKeyedSubscript:v7];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 || ([v1 objectForKeyedSubscript:v7], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
        {
        }

        else
        {
          v10 = v9;
          v11 = [v1 objectForKeyedSubscript:v7];

          if (v11)
          {
            continue;
          }
        }

        [v1 removeObjectForKey:v7];
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }
}

void sub_100003300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100003320(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100003338(uint64_t a1)
{
  v5 = +[UIDevice currentDevice];
  v2 = [v5 systemVersion];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10000474C(id a1)
{
  v1 = MGCopyAnswer();
  if ([v1 isEqualToString:@"Beta"])
  {
    byte_100010E88 = 1;
  }
}

uint64_t sub_10000519C(uint64_t a1, uint64_t a2, xpc_object_t xuint)
{
  value = xpc_uint64_get_value(xuint);
  v6 = *(a1 + 32);
  v7 = [NSNumber numberWithUnsignedLong:value];
  v8 = [NSString stringWithCString:a2 encoding:4];
  [v6 setValue:v7 forKey:v8];

  return 1;
}