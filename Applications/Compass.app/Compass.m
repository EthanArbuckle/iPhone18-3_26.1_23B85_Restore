uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = UIApplicationMain(a1, a2, 0, v6);

  objc_autoreleasePoolPop(v4);
  return v7;
}

id sub_1000022DC()
{
  UIFontForLanguage = CTFontCreateUIFontForLanguage(kCTFontMenuItemFontType|0x80, 70.0, 0);
  CopyOfSystemUIFontWithGrade = CTFontCreateCopyOfSystemUIFontWithGrade();
  v2 = [CopyOfSystemUIFontWithGrade fontDescriptor];
  CFRelease(UIFontForLanguage);
  CFRelease(CopyOfSystemUIFontWithGrade);
  v15 = UIFontDescriptorFeatureSettingsAttribute;
  v12[0] = UIFontFeatureTypeIdentifierKey;
  v12[1] = UIFontFeatureSelectorIdentifierKey;
  v13[0] = &off_100014B40;
  v13[1] = &off_100014B58;
  v3 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
  v14[0] = v3;
  v10[0] = UIFontFeatureTypeIdentifierKey;
  v10[1] = UIFontFeatureSelectorIdentifierKey;
  v11[0] = &off_100014B70;
  v11[1] = &off_100014B58;
  v4 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
  v14[1] = v4;
  v5 = [NSArray arrayWithObjects:v14 count:2];
  v16 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v7 = [v2 fontDescriptorByAddingAttributes:v6];

  v8 = [UIFont fontWithDescriptor:v7 size:70.0];

  return v8;
}

id sub_1000024B4()
{
  v0 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle3];
  [v0 pointSize];
  v1 = [UIFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];

  v2 = [v1 _fontScaledLikeTextStyle:UIFontTextStyleTitle3 maximumPointSize:0 compatibleWithTraitCollection:0 forIB:26.0];

  return v2;
}

void sub_100003578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id CreateCoordinateComponentString(uint64_t a1, double a2, double a3)
{
  if (a1)
  {
    a2 = a3;
  }

  v3 = fabs((a2 - a2) * 60.0);
  v4 = v3;
  v5 = (v3 - v3) * 60.0;
  if (a2 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = -a2;
  }

  v18 = 0;
  sub_100004C20(&v18, a1, a2);
  v7 = v18;
  v8 = [NSNumber numberWithInteger:v6];
  v9 = [NSNumberFormatter localizedStringFromNumber:v8 numberStyle:0];

  v10 = [NSNumber numberWithInteger:v4];
  v11 = [NSNumberFormatter localizedStringFromNumber:v10 numberStyle:0];

  v12 = [NSNumber numberWithDouble:v5];
  v13 = [NSNumberFormatter localizedStringFromNumber:v12 numberStyle:0];

  v14 = [NSString alloc];
  v15 = WebLocalizedString();
  v16 = [v14 initWithFormat:v15, v9, v11, v13, v7, 0];

  return v16;
}

void sub_100004C20(void *a1, uint64_t a2, double a3)
{
  if (!a1)
  {
    return;
  }

  if (a2 >= 2)
  {
    sub_100008CAC(a2, &v10, a3);
    v4 = v10;
LABEL_4:
    v5 = +[NSBundle mainBundle];
    if (v4 < 0)
    {
      v6 = @"cW";
      v7 = @"W";
    }

    else
    {
      v6 = @"cE";
      v7 = @"E";
    }

    goto LABEL_11;
  }

  v4 = (a3 * 3600.0);
  if (a2)
  {
    goto LABEL_4;
  }

  v5 = +[NSBundle mainBundle];
  if (v4 < 0)
  {
    v6 = @"cS";
    v7 = @"S";
  }

  else
  {
    v6 = @"cN";
    v7 = @"N";
  }

LABEL_11:
  v9 = [v5 localizedStringForKey:v6 value:v7 table:0];

  v8 = v9;
  *a1 = v8;
}

double sub_100005BD0(double a1, double a2)
{
  if (a2 <= 3.14159265)
  {
    if (a2 < -3.14159265)
    {
      a2 = a2 + 6.28318531;
    }
  }

  else
  {
    a2 = -(6.28318531 - a2);
  }

  v2 = a2 - a1;
  if (a2 - a1 > 3.14159265)
  {
    return a1 - (6.28318531 - v2);
  }

  if (v2 < -3.14159265)
  {
    return v2 + 6.28318531 + a1;
  }

  return a2;
}

void sub_100005CA8()
{
  if (qword_10001B420 != -1)
  {
    sub_100008C98();
  }
}

void sub_100005D1C(id a1)
{
  v2 = +[UIScreen mainScreen];
  [v2 scale];
  qword_10001B238 = v1;
}

double sub_100005D78(uint64_t *a1, void *a2, double *a3, double a4)
{
  if (a1)
  {
    v4 = a4;
    if (a4 < 0)
    {
      v4 = -v4;
    }

    *a1 = v4;
  }

  result = fabs((a4 - a4) * 60.0);
  if (a2)
  {
    *a2 = result;
  }

  if (a3)
  {
    result = (result - result) * 60.0;
    *a3 = result;
  }

  return result;
}

id StringWithLocationDirection(double a1)
{
  v2 = qword_10001B428;
  if (!qword_10001B428)
  {
    v3 = [NSArray alloc];
    v4 = WebLocalizedString();
    v5 = WebLocalizedString();
    v6 = WebLocalizedString();
    v7 = WebLocalizedString();
    v8 = WebLocalizedString();
    v9 = WebLocalizedString();
    v10 = WebLocalizedString();
    v11 = WebLocalizedString();
    v12 = [v3 initWithObjects:{v4, v5, v6, v7, v8, v9, v10, v11, 0}];
    v13 = qword_10001B428;
    qword_10001B428 = v12;

    v2 = qword_10001B428;
  }

  v14 = fmax(a1, 0.0);
  if (v14 <= 360.0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 360.0;
  }

  v16 = [v2 count];
  v17 = llround(v15 / 360.0 * v16);
  if (((v16 | (v17 % v16)) & 0x8000000000000000) != 0)
  {
    sub_100008D5C(v17 % v16, v15);
  }

  v18 = qword_10001B428;

  return [v18 objectAtIndex:?];
}

id sub_100005FB0()
{
  v0 = +[NSThread currentThread];
  v1 = [v0 threadDictionary];
  v2 = [v1 objectForKey:@"CompassHeadingFormatterKey"];

  if (!v2)
  {
    v2 = objc_alloc_init(NSNumberFormatter);
    [v2 setNumberStyle:0];
    v3 = +[NSLocale autoupdatingCurrentLocale];
    [v2 setLocale:v3];

    [v2 setNegativePrefix:@"−"];
    v4 = +[NSThread currentThread];
    v5 = [v4 threadDictionary];
    [v5 setObject:v2 forKey:@"CompassHeadingFormatterKey"];
  }

  return v2;
}

id sub_10000657C(uint64_t a1)
{
  [*(*(a1 + 32) + 16) setUserLocation:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 16);

  return [v2 updateConsole];
}

BOOL sub_100006C70(double a1, double a2, float a3)
{
  if (a1 >= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = a1;
  }

  if (a1 < a2)
  {
    a1 = a2;
  }

  if (a1 - v3 > a3)
  {
    return 1;
  }

  v5 = a3;
  do
  {
    result = a1 > v5 && v3 < v5;
    v5 = v5 + a3;
  }

  while (v5 < 360.0 && !result);
  return result;
}

id sub_100007434(uint64_t a1)
{
  v1 = *(a1 + 40) - 3;
  v2 = *(a1 + 32);
  if (v1 > 1)
  {
    return [v2 setUserLocation:0];
  }

  else
  {
    return [v2 _updatePlaceLabels];
  }
}

void sub_100007A80(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = [v19 firstObject];
    v7 = v6;
    if (a3 || !v6)
    {
      goto LABEL_18;
    }

    v8 = [CLPlacemark placemarkWithGEOMapItem:v6];
    v9 = [v8 locality];
    v10 = [v8 administrativeArea];
    v11 = v10;
    if ((!v10 || [v10 isEqualToString:v9]) && (objc_msgSend(v8, "country"), v12 = objc_claimAutoreleasedReturnValue(), v11, (v11 = v12) == 0) || objc_msgSend(v11, "isEqualToString:", v9))
    {
      v13 = [v8 ISOcountryCode];

      v11 = v13;
    }

    if (v9 && v11)
    {
      v14 = +[NSBundle mainBundle];
      v15 = [v14 localizedStringForKey:@"%1$@ value:%2$@" table:{&stru_1000148D0, 0}];
      v16 = [NSString stringWithFormat:v15, v9, v11];
      [WeakRetained[9] setText:v16];

LABEL_17:
      [WeakRetained _updatePlaceLabelLayout];

LABEL_18:
      [WeakRetained _updateCoordinateLabel];

      goto LABEL_19;
    }

    if (v9)
    {
      v17 = WeakRetained[9];
      v18 = v9;
    }

    else
    {
      if (!v11)
      {
        goto LABEL_17;
      }

      v17 = WeakRetained[9];
      v18 = v11;
    }

    [v17 setText:v18];
    goto LABEL_17;
  }

LABEL_19:
}

void sub_100007E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100007FA4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[2] setBearing];
    WeakRetained = v2;
  }
}

Class sub_10000823C(uint64_t a1)
{
  sub_100008294();
  result = objc_getClass("_MKURLBuilder");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100008E00();
  }

  qword_10001B438 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100008294()
{
  v0[0] = 0;
  if (!qword_10001B440)
  {
    v0[1] = _NSConcreteStackBlock;
    v0[2] = 3221225472;
    v0[3] = sub_100008388;
    v0[4] = &unk_100014560;
    v0[5] = v0;
    v1 = off_100014548;
    v2 = 0;
    qword_10001B440 = _sl_dlopen();
  }

  if (!qword_10001B440)
  {
    sub_100008E7C(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t sub_100008388(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10001B440 = result;
  return result;
}

Class sub_1000083FC(uint64_t a1)
{
  sub_100008294();
  result = objc_getClass("MKMapItem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100008EFC();
  }

  qword_10001B448 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1000087FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100008820(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = 0.0;
    if (*(a1 + 40))
    {
      v4 = 1.0;
    }

    [*(WeakRetained + 3) setAlpha:v4];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [v3 degreeLabels];
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = [v10 text];
          v12 = [v11 intValue];

          v13 = 1.0;
          if (*(a1 + 40) == 1)
          {
            sub_100005C54(v3[7], v12);
            v15 = v14;
            v13 = 0.0;
            if (v15 >= 12.0)
            {
              if (*(a1 + 40))
              {
                v13 = 0.699999988;
              }

              else
              {
                v13 = 1.0;
              }
            }
          }

          [v10 setAlpha:v13];
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }
  }
}

double sub_100008CAC(uint64_t a1, void *a2, double a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  v7 = [NSString stringWithUTF8String:"void ConvertDegreeSignToString(CLLocationDegrees, NSString *__autoreleasing *, CoordinateComponent)"];
  [v6 handleFailureInFunction:v7 file:@"Extras.m" lineNumber:101 description:{@"Unrecognized component %d", a1}];

  result = a3 * 3600.0;
  *a2 = (a3 * 3600.0);
  return result;
}

void sub_100008D5C(uint64_t a1, double a2)
{
  v5 = +[NSAssertionHandler currentHandler];
  v4 = [NSString stringWithUTF8String:"NSString *StringWithLocationDirection(CLLocationDirection)"];
  [v5 handleFailureInFunction:v4 file:@"Extras.m" lineNumber:158 description:{@"Octant index is out of range (degrees:%f octantIndex:%ld)", *&a2, a1}];
}

void sub_100008E00()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class get_MKURLBuilderClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CompassPageViewController.m" lineNumber:46 description:{@"Unable to find class %s", "_MKURLBuilder"}];

  __break(1u);
}

void sub_100008E7C(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *MapKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CompassPageViewController.m" lineNumber:44 description:{@"%s", *a1}];

  __break(1u);
}

void sub_100008EFC()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getMKMapItemClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CompassPageViewController.m" lineNumber:45 description:{@"Unable to find class %s", "MKMapItem"}];

  __break(1u);
  CFRelease(v2);
}

__double2 __sincos_stret(double a1)
{
  v3 = ___sincos_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}