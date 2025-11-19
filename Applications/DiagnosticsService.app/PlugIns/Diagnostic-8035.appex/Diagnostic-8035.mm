void sub_100000DD0(uint64_t a1)
{
  v25 = 0;
  v20 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [*(a1 + 32) cameras];
  v2 = [obj countByEnumeratingWithState:&v21 objects:v28 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v22;
LABEL_3:
    v5 = 0;
    while (1)
    {
      if (*v22 != v4)
      {
        objc_enumerationMutation(obj);
      }

      v6 = *(*(&v21 + 1) + 8 * v5);
      if ([*(a1 + 32) isCancelled])
      {
        break;
      }

      v7 = *(a1 + 32);
      v8 = [v6 objectForKeyedSubscript:@"type"];
      v9 = [v6 objectForKeyedSubscript:@"position"];
      v10 = [v7 calibrateCameraType:v8 position:objc_msgSend(v9 statusCode:{"integerValue"), &v25}];

      if (v10)
      {
        [v20 addObject:v10];
      }

      v11 = v25;

      if (v11)
      {
        break;
      }

      if (v3 == ++v5)
      {
        v3 = [obj countByEnumeratingWithState:&v21 objects:v28 count:16];
        if (v3)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v12 = [*(a1 + 32) result];
  v13 = [v12 statusCode];
  v14 = [v13 integerValue];

  if (v14 != -900)
  {
    v15 = [NSNumber numberWithInteger:v25];
    v16 = [*(a1 + 32) result];
    [v16 setStatusCode:v15];

    v26 = @"results";
    v27 = v20;
    v17 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v18 = [*(a1 + 32) result];
    [v18 setData:v17];
  }

  [*(a1 + 32) setFinished:1];
}

void sub_10000149C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

BOOL sub_100001588(id a1, id a2)
{
  v2 = a2;
  v3 = [v2 objectForKeyedSubscript:@"type"];
  v4 = [v2 objectForKeyedSubscript:@"position"];

  if (!v3)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = 0;
  if ([v3 length] <= 0x50 && v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 integerValue] <= 2)
    {
      v5 = [v4 integerValue] >= 0;
      goto LABEL_9;
    }

LABEL_8:
    v5 = 0;
  }

LABEL_9:

  return v5;
}

void sub_1000017DC()
{
  sub_1000014B8();
  v3 = 2048;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "%@ calibration failed with %ld.", v2, 0x16u);
}