void sub_100001658(uint64_t a1)
{
  v3 = [*(a1 + 32) inputs];
  [v3 noInputTimeout];
  v2 = [NSTimer scheduledTimerWithTimeInterval:*(a1 + 32) target:"noInputTimedOut" selector:0 userInfo:0 repeats:?];
  [*(a1 + 32) setTimeoutTimer:v2];
}

void sub_100001FD4(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) view];
  v3 = [v2 subviews];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v8 + 1) + 8 * v7) tag] == 1)
        {

          return;
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  [*(a1 + 32) endTestWithStatusCode:&off_1000086C0];
}

void sub_100002C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100002C9C(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v11 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_opt_new();
    v7 = [v11 dk_numberFromRequiredKey:@"xPos" lowerBound:&off_100008720 upperBound:&off_100008730 failed:*(*(a1 + 40) + 8) + 24];
    [v7 doubleValue];
    [v6 setX:?];

    v8 = [v11 dk_numberFromRequiredKey:@"yPos" lowerBound:&off_100008720 upperBound:&off_100008730 failed:*(*(a1 + 40) + 8) + 24];
    [v8 doubleValue];
    [v6 setY:?];

    v9 = [v11 dk_numberFromRequiredKey:@"width" lowerBound:&off_100008740 upperBound:&off_100008730 failed:*(*(a1 + 40) + 8) + 24];
    [v9 doubleValue];
    [v6 setWidth:?];

    v10 = [v11 dk_numberFromRequiredKey:@"height" lowerBound:&off_100008740 upperBound:&off_100008730 failed:*(*(a1 + 40) + 8) + 24];
    [v10 doubleValue];
    [v6 setHeight:?];

    if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
    {
      [*(a1 + 32) addObject:v6];
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  if (a4 && (*(*(*(a1 + 40) + 8) + 24) & 1) != 0)
  {
    *a4 = 1;
  }
}