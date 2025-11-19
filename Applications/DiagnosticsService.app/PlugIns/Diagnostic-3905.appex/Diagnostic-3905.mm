void sub_1000014E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000150C(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v11 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_opt_new();
    v7 = [v11 dk_numberFromRequiredKey:@"xPos" lowerBound:&off_1000087E8 upperBound:&off_1000087F8 failed:*(*(a1 + 40) + 8) + 24];
    [v7 doubleValue];
    [v6 setX:?];

    v8 = [v11 dk_numberFromRequiredKey:@"yPos" lowerBound:&off_1000087E8 upperBound:&off_1000087F8 failed:*(*(a1 + 40) + 8) + 24];
    [v8 doubleValue];
    [v6 setY:?];

    v9 = [v11 dk_numberFromRequiredKey:@"width" lowerBound:&off_100008808 upperBound:&off_1000087F8 failed:*(*(a1 + 40) + 8) + 24];
    [v9 doubleValue];
    [v6 setWidth:?];

    v10 = [v11 dk_numberFromRequiredKey:@"height" lowerBound:&off_100008808 upperBound:&off_1000087F8 failed:*(*(a1 + 40) + 8) + 24];
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

void sub_10000373C(uint64_t a1)
{
  [*(a1 + 32) setSecondsTicked:{objc_msgSend(*(a1 + 32), "secondsTicked") + 1}];
  v5 = [*(a1 + 32) progressBar];
  v2 = [*(a1 + 32) secondsTicked];
  v3 = [*(a1 + 32) inputs];
  *&v4 = v2 / (60 * [v3 minutesToRun]);
  [v5 setProgress:1 animated:v4];
}

void sub_1000037E8(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) progressBar];
    [v3 progress];
    v5 = v4;

    if (v5 >= 1.0)
    {
      v11 = +[NSBundle mainBundle];
      v12 = [v11 localizedStringForKey:@"TEST_COMPLETED" value:&stru_1000086A0 table:0];
      v13 = [*(a1 + 32) progressLabel];
      [v13 setText:v12];

      v14 = dispatch_time(0, 500000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000039AC;
      block[3] = &unk_100008290;
      block[4] = *(a1 + 32);
      dispatch_after(v14, &_dispatch_main_q, block);
    }

    else
    {
      v6 = *(a1 + 32);
      v15 = [v6 inputs];
      v7 = [v15 minutesToRun];
      v8 = [*(a1 + 32) secondsTicked];
      v9 = [v6 localizedTimeRemaining:((((2004318071 * v8) >> 32) - v8) >> 5) + ((((2004318071 * v8) >> 32) - v8) >> 31) + v7];
      v10 = [*(a1 + 32) progressLabel];
      [v10 setText:v9];
    }
  }
}

void sub_100004440(uint64_t a1)
{
  v3 = [*(a1 + 40) inputs];
  v2 = [v3 fadeColor];
  [*(a1 + 32) setBackgroundColor:v2];
}