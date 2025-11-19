void sub_1000010A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a38, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000010F4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_10000110C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) isCancelled];
  if ((v4 & 1) == 0)
  {
    v5 = [v3 type];
    v6 = [v5 isEqualToString:@"101"];

    if (v6)
    {
      v7 = +[DSDateFormatter sharedFormatter];
      v8 = [v7 formatterWithType:0];
      v9 = [v3 date];
      v10 = [v8 stringFromDate:v9];

      v32[0] = v10;
      v31[0] = @"timestamp";
      v31[1] = @"thermalLevel";
      v11 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v3 integerFromFieldAtIndex:3]);
      v32[1] = v11;
      v31[2] = @"thermalPressureLevel";
      v12 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v3 integerFromFieldAtIndex:4]);
      v32[2] = v12;
      v31[3] = @"coldPressureLevel";
      v13 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v3 integerFromFieldAtIndex:5]);
      v32[3] = v13;
      v31[4] = @"lowTempCPUPerformanceCap";
      v14 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v3 integerFromFieldAtIndex:6]);
      v32[4] = v14;
      v15 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:5];

      [*(a1 + 40) addObject:v15];
    }

    else
    {
      v10 = [[DSThermalLogLine alloc] initWithLogLine:v3];
      v16 = *(*(*(a1 + 56) + 8) + 24);
      [v10 maxTemp];
      if (v16 >= v17)
      {
        v17 = v16;
      }

      *(*(*(a1 + 56) + 8) + 24) = v17;
      if ([v10 isTrapEvent])
      {
        if ([v10 isTrapEntry])
        {
          v18 = *(a1 + 32);
          v19 = [v10 reason];
          [v18 addTemperatureWarningWithReason:v19 toDictionary:*(a1 + 48)];

          ++*(*(*(a1 + 64) + 8) + 24);
          v20 = *(*(a1 + 72) + 8);
          if (*(v20 + 40))
          {
            *(*(*(a1 + 80) + 8) + 24) = 2;
            v21 = [*(a1 + 32) result];
            [v21 setStatusCode:&off_100004368];

            v20 = *(*(a1 + 72) + 8);
          }

          v22 = v10;
          v23 = *(v20 + 40);
          *(v20 + 40) = v22;
        }

        else if (*(*(*(a1 + 72) + 8) + 40))
        {
          v24 = [v10 date];
          v25 = [*(*(*(a1 + 72) + 8) + 40) date];
          [v24 timeIntervalSinceDate:v25];
          *(*(*(a1 + 88) + 8) + 24) = (v26 + *(*(*(a1 + 88) + 8) + 24));

          v27 = *(*(a1 + 72) + 8);
          v23 = *(v27 + 40);
          *(v27 + 40) = 0;
        }

        else
        {
          v28 = *(a1 + 32);
          v29 = [v10 reason];
          [v28 addTemperatureWarningWithReason:v29 toDictionary:*(a1 + 48)];

          ++*(*(*(a1 + 64) + 8) + 24);
          *(*(*(a1 + 80) + 8) + 24) = 2;
          v23 = [*(a1 + 32) result];
          [v23 setStatusCode:&off_100004368];
        }
      }
    }
  }

  return v4;
}