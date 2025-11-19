uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  UIApplicationMain(a1, a2, @"BluetoothUIService", @"BluetoothUIService");
  objc_autoreleasePoolPop(v4);
  return 0;
}

void sub_1000019E4(uint64_t a1)
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [*(*(a1 + 32) + 8) copy];
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      v6 = 0;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * v6);
        v8 = [v7 xpcCon];
        v9 = *(a1 + 40);
        v10 = v8;
        v11 = v9;
        v12 = v11;
        if (v10 == v11)
        {

LABEL_11:
          if (dword_10001E9A0 <= 50 && (dword_10001E9A0 != -1 || _LogCategory_Initialize()))
          {
            sub_10000BD5C();
          }

          [v7 invalidate];
          [*(*(a1 + 32) + 8) removeObject:v7];
          goto LABEL_16;
        }

        if ((v10 != 0) == (v11 == 0))
        {

          goto LABEL_16;
        }

        v13 = [v10 isEqual:v11];

        if (v13)
        {
          goto LABEL_11;
        }

LABEL_16:
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v14 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      v4 = v14;
    }

    while (v14);
  }
}

void sub_100001CFC(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  if (a2 != 1)
  {
    if (a2 == 6)
    {
      a2 = 3;
    }

    else if (a2 != 2)
    {
      goto LABEL_7;
    }
  }

  [*(a1 + 32) xpcSendMessage:a2];
LABEL_7:
  if (dword_10001E9A0 <= 30 && (dword_10001E9A0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000BDAC();
  }

  [*(a1 + 40) invalidate];
  [*(*(a1 + 48) + 8) removeObject:*(a1 + 40)];
  v5 = *(a1 + 48);
  v6 = *(v5 + 32);
  *(v5 + 32) = 0;
}

uint64_t sub_100001EF4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001F0C(uint64_t a1)
{
  if (!*(*(a1 + 32) + 8))
  {
    v2 = objc_alloc_init(NSMutableSet);
    v3 = *(a1 + 32);
    v4 = *(v3 + 8);
    *(v3 + 8) = v2;
  }

  if (SBUIIsSystemApertureEnabled())
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v5 = [*(*(a1 + 32) + 8) copy];
    v6 = [v5 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v30;
      do
      {
        v9 = 0;
        do
        {
          if (*v30 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v29 + 1) + 8 * v9);
          if (dword_10001E9A0 <= 50 && (dword_10001E9A0 != -1 || _LogCategory_Initialize()))
          {
            sub_10000BDE4();
          }

          [v10 invalidate];
          [*(*(a1 + 32) + 8) removeObject:v10];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v11 = [v5 countByEnumeratingWithState:&v29 objects:v33 count:16];
        v7 = v11;
      }

      while (v11);
    }

    if (dword_10001E9A0 <= 30 && (dword_10001E9A0 != -1 || _LogCategory_Initialize()))
    {
      sub_10000BE18();
    }

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:*(a1 + 32) selector:"receiveVideoReadyToPlay:" name:@"VideoReadyToPlay" object:0];

    v13 = [BluetoothUIServiceBanner alloc];
    v14 = *(a1 + 40);
    v15 = *(*(a1 + 56) + 8);
    obj = *(v15 + 40);
    v16 = [(BluetoothUIServiceBanner *)v13 initWithXPCObject:v14 error:&obj];
    objc_storeStrong((v15 + 40), obj);
    [*(*(a1 + 32) + 8) addObject:v16];
    -[BluetoothUIServiceBanner setPid:](v16, "setPid:", [*(a1 + 48) pid]);
    v17 = *(a1 + 32);
    v18 = *(v17 + 32);
    *(v17 + 32) = v16;
    v19 = v16;

    [*(*(a1 + 32) + 32) setXpcCon:*(a1 + 48)];
  }

  else
  {
    if (dword_10001E9A0 <= 30 && (dword_10001E9A0 != -1 || _LogCategory_Initialize()))
    {
      sub_10000BDC8();
    }

    v20 = [BluetoothUIServiceBanner alloc];
    v21 = *(a1 + 40);
    v22 = *(*(a1 + 56) + 8);
    v27 = *(v22 + 40);
    v19 = [(BluetoothUIServiceBanner *)v20 initWithXPCObject:v21 error:&v27];
    objc_storeStrong((v22 + 40), v27);
    [*(*(a1 + 32) + 8) addObject:v19];
    -[BluetoothUIServiceBanner setPid:](v19, "setPid:", [*(a1 + 48) pid]);
    [(BluetoothUIServiceBanner *)v19 setXpcCon:*(a1 + 48)];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10000229C;
    v23[3] = &unk_100018510;
    v24 = *(a1 + 48);
    v25 = v19;
    v26 = *(a1 + 32);
    [(BluetoothUIServiceBanner *)v19 activateWithActionHandler:v23];
  }
}

void sub_10000229C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2 != 1)
  {
    if (a2 == 6)
    {
      a2 = 3;
    }

    else if (a2 != 2)
    {
      goto LABEL_7;
    }
  }

  [*(a1 + 32) xpcSendMessage:a2];
LABEL_7:
  if (dword_10001E9A0 <= 50 && (dword_10001E9A0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000BE4C();
  }

  [*(a1 + 40) invalidate];
  [*(*(a1 + 48) + 8) removeObject:*(a1 + 40)];
}

void sub_100002720(id a1, OS_xpc_object *a2)
{
  v4 = a2;
  v2 = CUXPCDecodeNSErrorIfNeeded();
  if (v2)
  {
    sub_10000BF50();
  }

  else
  {
    v3 = _CFXPCCreateCFObjectFromXPCObject();
    if (v3)
    {
      if (dword_10001E9A0 <= 90 && (dword_10001E9A0 != -1 || _LogCategory_Initialize()))
      {
        sub_10000BF88();
      }
    }

    else
    {
      sub_10000BFC8();
    }
  }
}

uint64_t sub_100002954()
{

  return LogPrintF();
}

void sub_100002CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100002CF4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100002D0C(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  v10 = *(v3 + 40);
  v4 = [v2 statusOfValueForKey:@"duration" error:&v10];
  objc_storeStrong((v3 + 40), v10);
  if (v4 == 2)
  {
    memset(&v9, 0, sizeof(v9));
    v5 = a1[4];
    if (v5)
    {
      [v5 duration];
    }

    else
    {
      memset(&v7, 0, 24);
    }

    start = kCMTimeZero;
    CMTimeRangeMake(&v9, &start, &v7.start);
    v6 = *(a1[5] + 16);
    if (v6)
    {
      v7 = v9;
      [v6 setLoopTimeRange:&v7];
    }
  }
}

void sub_100003B8C(uint64_t a1)
{
  v2 = [*(a1 + 32) systemApertureElementContext];
  v1 = [v2 requestAlertingAssertion];
  [v1 invalidateWithReason:@"6 seconds timer reached"];
}

void sub_100003F94(uint64_t a1)
{
  if (([*(a1 + 32) checkifVideoAssetExists] & 1) == 0)
  {
    v2 = +[NSNotificationCenter defaultCenter];
    [v2 postNotificationName:@"VideoReadyToPlay" object:*(a1 + 32)];
  }
}

void sub_100004540(uint64_t a1)
{
  if (([*(a1 + 32) checkifVideoAssetExists] & 1) == 0)
  {
    v2 = +[NSNotificationCenter defaultCenter];
    [v2 postNotificationName:@"VideoReadyToPlay" object:*(a1 + 32)];
  }
}

void sub_100004DEC(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"VideoReadyToPlay" object:*(a1 + 32)];
}

void sub_1000051E8(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"VideoReadyToPlay" object:*(a1 + 32)];
}

id sub_100007D84(uint64_t a1)
{
  v2 = [*(a1 + 32) activeLayoutMode];
  v3 = *(a1 + 32);
  if (v2 == 4)
  {
    v4 = [v3 minimalView];
    [v4 setHidden:1];

    v5 = *(a1 + 32);
    v6 = v5[195];
    v7 = [v5 batteryLevelIndicator];
    v8 = v7;
    if (v6 == 1)
    {
      v9 = [v7 micaRootLayer];
      v10 = v9;
      v11 = @"low_zoom";
    }

    else
    {
      [v7 setShowsPercentageLabel:1];

      v20 = [*(a1 + 32) batteryLevelIndicator];
      [v20 percentageLevel];
      v22 = v21;

      v8 = [*(a1 + 32) batteryLevelIndicator];
      v9 = [v8 micaRootLayer];
      v10 = v9;
      if (v22 <= 0.2)
      {
        v11 = @"low_zoom";
      }

      else
      {
        v11 = @"zoom";
      }
    }

    [v9 setState:v11];

    v26 = *(a1 + 32);
    if (*(v26 + 336) && [*(v26 + 344) containsString:@"mute"])
    {
      [*(*(a1 + 32) + 336) addTarget:*(a1 + 32) action:"handleTap:" forControlEvents:64];
    }
  }

  else if ([v3 activeLayoutMode] == 3)
  {
    v12 = *(a1 + 32);
    v13 = v12[195];
    v14 = [v12 batteryLevelIndicator];
    [v14 sizeToFit];

    v15 = [*(a1 + 32) batteryLevelIndicator];
    v16 = v15;
    if (v13 == 1)
    {
      v17 = [v15 micaRootLayer];
      v18 = v17;
      v19 = @"low_with_number";
    }

    else
    {
      [v15 setShowsPercentageLabel:0];

      v23 = [*(a1 + 32) batteryLevelIndicator];
      [v23 percentageLevel];
      v25 = v24;

      v16 = [*(a1 + 32) batteryLevelIndicator];
      v17 = [v16 micaRootLayer];
      v18 = v17;
      v19 = v25 <= 0.2 ? @"low_compact" : @"compact";
    }

    [v17 setState:v19];

    v27 = *(a1 + 32);
    if (*(v27 + 336))
    {
      if ([*(v27 + 344) containsString:@"mute"])
      {
        [*(*(a1 + 32) + 336) removeTarget:*(a1 + 32) action:"handleTap:" forControlEvents:64];
      }
    }
  }

  result = [*(a1 + 32) activeLayoutMode];
  if (result != -1)
  {
    result = [*(a1 + 32) activeLayoutMode];
    if (result != 1)
    {
      v29 = *(a1 + 32);
      v30 = v29[18];
      v31 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v29 activeLayoutMode]);
      obj = [v30 objectForKeyedSubscript:v31];

      v32 = *(a1 + 32);
      v33 = *(v32 + 24);
      if (obj != v33)
      {
        if (v33)
        {
          [NSLayoutConstraint deactivateConstraints:?];
          v32 = *(a1 + 32);
        }

        objc_storeStrong((v32 + 24), obj);
        if (obj)
        {
          [NSLayoutConstraint activateConstraints:obj];
          v34 = *(a1 + 32);
          if (v34[195] == 1 && [v34 activeLayoutMode] == 3)
          {
            [*(*(a1 + 32) + 296) setConstant:27.0];
            [*(*(a1 + 32) + 288) setConstant:27.0];
          }
        }
      }

      return _objc_release_x1();
    }
  }

  return result;
}

uint64_t sub_100009354(void *a1)
{
  v1 = [a1 componentsSeparatedByString:@"-"];
  if ([v1 count])
  {
    v2 = 0;
    v3 = 1;
    do
    {
      v4 = [v1 objectAtIndexedSubscript:v2];
      v2 = v3;
      if ([v4 isEqualToString:@"PID"] && objc_msgSend(v1, "count") > v3)
      {
        v5 = [v1 count];

        if (v5 > v3 + 1)
        {
          v14 = [v1 objectAtIndexedSubscript:v3];
          v15 = [v1 objectAtIndexedSubscript:v3 + 1];
          v16 = [v15 intValue];

          v17 = v16;
          goto LABEL_10;
        }
      }

      else
      {
      }

      ++v3;
    }

    while ([v1 count] > v2);
  }

  v14 = 0;
  v17 = 0;
LABEL_10:
  v6 = [NSString stringWithFormat:@"%u", 8215];
  v7 = [v6 isEqualToString:v14];

  if (v7)
  {
    if ((v17 & 0xFE) != 0xC)
    {
LABEL_19:
      v12 = 0;
      goto LABEL_20;
    }
  }

  else
  {
    v8 = [NSString stringWithFormat:@"%u", 8230];
    v9 = [v8 isEqualToString:v14];

    if (v9)
    {
      if (v17 != 6)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v10 = [NSString stringWithFormat:@"%u", 8229];
      v11 = [v10 isEqualToString:v14];

      if (!v11 || (v17 - 5) >= 2)
      {
        goto LABEL_19;
      }
    }
  }

  v12 = 1;
LABEL_20:

  return v12;
}

void sub_10000B3C0(uint64_t a1)
{
  v3 = [NSBundle bundleForClass:*(a1 + 32)];
  v1 = [v3 bundleIdentifier];
  v2 = qword_10001EDE0;
  qword_10001EDE0 = v1;
}

id sub_10000BA14@<X0>(void *a1@<X0>, double x8_0@<X8>)
{

  return [a1 initWithFrame:{0.0, 0.0, x8_0, x8_0}];
}

uint64_t sub_10000BA6C()
{
  v3 = *(v0 + v2);
  v4 = *(v0 + v1);
  return v0;
}

void sub_10000BEF0()
{
  if (dword_10001E9A0 <= 90 && (dword_10001E9A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100002954();
  }
}

void sub_10000C000()
{
  if (dword_10001E9A0 <= 90 && (dword_10001E9A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100002954();
  }
}

void sub_10000C060()
{
  if (dword_10001E9A0 <= 90 && (dword_10001E9A0 != -1 || _LogCategory_Initialize()))
  {
    sub_100002954();
  }
}