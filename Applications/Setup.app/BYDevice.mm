@interface BYDevice
+ (id)currentDevice;
- (BOOL)isD33;
- (BOOL)posedDeviceSelection_largeSizeDevice;
- (BYDevice)init;
@end

@implementation BYDevice

- (BOOL)posedDeviceSelection_largeSizeDevice
{
  v2 = [(BYDevice *)self size];
  v7 = 0;
  v3 = 1;
  if (v2 != 5)
  {
    v4 = [(BYDevice *)self size];
    v3 = 1;
    if (v4 != 1)
    {
      v5 = [(BYDevice *)self isD33];
      v3 = 1;
      if ((v5 & 1) == 0)
      {
        v8 = +[UIDevice currentDevice];
        v7 = 1;
        v3 = [(UIDevice *)v8 userInterfaceIdiom]== 1;
      }
    }
  }

  v10 = v3;
  if (v7)
  {
  }

  return v10;
}

- (BOOL)isD33
{
  memcpy(__dst, &unk_100299518, sizeof(__dst));
  memcpy(v3, &unk_10029952C, sizeof(v3));
  return MGIsDeviceOneOfType() & 1;
}

+ (id)currentDevice
{
  v5 = &unk_1003A74E8;
  location = 0;
  objc_storeStrong(&location, &stru_10032F6C0);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_1003A74E0;

  return v2;
}

- (BYDevice)init
{
  v18 = a2;
  location = 0;
  v17.receiver = self;
  v17.super_class = BYDevice;
  location = [(BYDevice *)&v17 init];
  objc_storeStrong(&location, location);
  if (!location)
  {
    goto LABEL_34;
  }

  theString1 = MGGetStringAnswer();
  if (theString1)
  {
    if (CFStringCompare(theString1, @"iPad", 0))
    {
      *(location + 3) = 0;
    }

    else
    {
      *(location + 3) = 1;
    }

    objc_storeStrong(location + 5, theString1);
    CFRelease(theString1);
  }

  v15 = MGGetSInt32Answer();
  v14 = 0;
  if ([location type])
  {
    if (v15 == 11 || v15 == 14)
    {
      v14 = 4;
    }

    goto LABEL_27;
  }

  if (v15 == 5)
  {
    v14 = 2;
  }

  else if (v15 == 9)
  {
    v14 = 1;
  }

  else
  {
    if (v15 != 15)
    {
      if (v15 == 18)
      {
LABEL_21:
        v14 = 6;
        goto LABEL_27;
      }

      if (v15 == 19)
      {
        v14 = 5;
        goto LABEL_27;
      }

      if (v15 == 22 || (v15 - 24) < 2)
      {
        v14 = 0;
        goto LABEL_27;
      }

      if (v15 != 30)
      {
        if (v15 != 31)
        {
          goto LABEL_27;
        }

        goto LABEL_21;
      }
    }

    v14 = 3;
  }

LABEL_27:
  *(location + 4) = v14;
  *(location + 4) = v15;
  v2 = MGGetSInt32Answer() != 2;
  *(location + 8) = v2;
  v3 = sub_1002414F4();
  v4 = 0;
  if (v3)
  {
    v4 = sub_100241234();
  }

  *(location + 12) = v4 & 1;
  v5 = MGCopyAnswer();
  v6 = *(location + 6);
  *(location + 6) = v5;

  *(location + 7) = MGGetProductType();
  v7 = *(location + 3);
  if (v7)
  {
    if (v7 == 1)
    {
      *(location + 9) = 0;
    }
  }

  else
  {
    *(location + 9) = MGGetBoolAnswer() & 1;
  }

  v13 = MGGetBoolAnswer() & 1;
  *(location + 10) = v13;
  v12 = MGGetBoolAnswer() & 1;
  *(location + 11) = v12;
  v8 = MGCopyAnswer();
  v9 = *(location + 8);
  *(location + 8) = v8;

LABEL_34:
  v10 = location;
  objc_storeStrong(&location, 0);
  return v10;
}

@end