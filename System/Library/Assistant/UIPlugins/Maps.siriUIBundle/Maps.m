uint64_t MapsCachedConformsToProtocol(uint64_t a1, Protocol *a2)
{
  v3 = objc_opt_class();
  if (!v3)
  {
    goto LABEL_16;
  }

  v4 = v3;
  if (qword_51300 != -1)
  {
    sub_11BFC();
    if (a2)
    {
      goto LABEL_4;
    }

LABEL_16:
    LOBYTE(v7) = 0;
    return v7 & 1;
  }

  if (!a2)
  {
    goto LABEL_16;
  }

LABEL_4:
  v5 = atomic_load(dword_50A30);
  os_unfair_lock_lock(&unk_51308);
  v6 = [qword_512F8 objectForKey:v4];
  if (!v6)
  {
    v6 = [NSMapTable mapTableWithKeyOptions:256 valueOptions:0];
    [qword_512F8 setObject:v6 forKey:v4];
  }

  v7 = [objc_msgSend(v6 objectForKey:{a2), "unsignedIntegerValue"}];
  os_unfair_lock_unlock(&unk_51308);
  if (v5 != v7 >> 1)
  {
    v7 = [v4 conformsToProtocol:a2];
    if (qword_51318 != -1)
    {
      sub_11C10();
    }

    v8 = qword_51310;
    if (os_log_type_enabled(qword_51310, OS_LOG_TYPE_INFO))
    {
      v9 = v8;
      v10 = NSStringFromClass(v4);
      if (v7)
      {
        v11 = "conforms to";
      }

      else
      {
        v11 = "does not conform to";
      }

      v12 = NSStringFromProtocol(a2);
      v15 = 138544130;
      v16 = v10;
      v17 = 2080;
      v18 = v11;
      v19 = 2114;
      v20 = v12;
      v21 = 1024;
      v22 = v5;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "%{public}@ %s %{public}@ (gen: %u)", &v15, 0x26u);
    }

    os_unfair_lock_lock(&unk_51308);
    v13 = [NSNumber numberWithUnsignedInt:v7 | (2 * v5)];
    [v6 setObject:v13 forKey:a2];

    os_unfair_lock_unlock(&unk_51308);
  }

  return v7 & 1;
}

void sub_1714(id a1)
{
  objc_addLoadImageFunc(sub_1770);
  qword_512F8 = [NSMapTable mapTableWithKeyOptions:256 valueOptions:0];

  _objc_release_x1();
}

void sub_1784(id a1)
{
  qword_51310 = os_log_create("com.apple.Maps", "MapsProtocolConformance");

  _objc_release_x1();
}

void sub_1A8C(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  if (v15)
  {
    v6 = [*(a1 + 32) location];
    v7 = [v6 clRepresentation];
    [v15 distanceFromLocation:v7];
    v9 = v8;

    *(*(a1 + 40) + 32) = v9;
    v10 = [*(a1 + 32) location];
    LODWORD(v7) = [v10 isRegionCity];

    if (v7)
    {
      v11 = [*(a1 + 32) location];
      v12 = [v11 city];
      [*(a1 + 40) setTitle:v12];

      v13 = [SADistance localizedStringForDistanceInMeters:1 forCity:v9];
      [*(a1 + 40) setSubtitle:v13];
    }
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    (*(v14 + 16))();
  }
}

void sub_2484()
{
  if (qword_51320 != -1)
  {
    sub_11C24();
  }
}

id sub_2558(id a1)
{
  v1 = +[GEOPlatform sharedPlatform];
  v2 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v1 isInternalInstall]);

  return v2;
}

id sub_3430(id a1)
{
  v1 = +[GEOPlatform sharedPlatform];
  v2 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v1 isInternalInstall]);

  return v2;
}

id sub_47E0(id a1)
{
  v1 = +[GEOCountryConfiguration sharedConfiguration];
  v2 = [v1 countryCode];
  v3 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v2 isEqualToString:@"CN"] ^ 1);

  return v3;
}

uint64_t sub_53E0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 searchRegionCenter];
  [v5 coordinate];
  v8 = v7;
  v10 = v9;

  v11 = [*(a1 + 40) items];
  v12 = [v11 firstObject];
  v15 = [v3 _headerLocationForSearchCenter:v6 location:v12 forMapItem:{v8, v10}];

  if (v15)
  {
    [*(a1 + 32) setSubtitle:v15];
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    (*(v13 + 16))();
  }

  return _objc_release_x1();
}

void sub_71A8(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = a2;
  if (a3 == 1)
  {
    [*(a1 + 32) setLocalizedDateFormatFromTemplate:@"Jmm"];
  }

  v5 = [v13 timeSlot];
  v6 = [v5 timeZoneId];
  v7 = [NSTimeZone timeZoneWithName:v6];

  v8 = *(a1 + 32);
  if (v7)
  {
    [*(a1 + 32) setTimeZone:v7];
  }

  else
  {
    v9 = +[NSTimeZone defaultTimeZone];
    [v8 setTimeZone:v9];
  }

  v10 = *(a1 + 32);
  v11 = [v5 date];
  v12 = [v10 stringFromDate:v11];

  [*(a1 + 40) addObject:v12];
}

void sub_779C(id a1)
{
  qword_51328 = [NSBundle bundleWithIdentifier:@"com.apple.maps.assistant.uiplugin"];

  _objc_release_x1();
}

void sub_7894(id a1)
{
  qword_51338 = objc_alloc_init(NSDateComponentsFormatter);

  _objc_release_x1();
}

void sub_7954(id a1)
{
  qword_51348 = objc_alloc_init(NSDateFormatter);

  _objc_release_x1();
}

void sub_79D4(id a1)
{
  v3 = +[NSBundle afui_assistantUIFrameworkBundle];
  v1 = [v3 assistantUILocale];
  v2 = qword_51358;
  qword_51358 = v1;
}

void sub_7B00(id a1)
{
  qword_51368 = objc_alloc_init(NSMeasurementFormatter);

  _objc_release_x1();
}

void sub_7C9C(id a1)
{
  v1 = objc_alloc_init(NSNumberFormatter);
  v2 = qword_51378;
  qword_51378 = v1;

  v3 = qword_51378;

  [v3 setMinimumIntegerDigits:1];
}

void sub_7FAC(uint64_t a1)
{
  v2 = objc_getAssociatedObject(*(a1 + 32), off_50BD0);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v2 copy];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(a1 + 32);
        v9 = NSSelectorFromString(*(*(&v10 + 1) + 8 * v7));
        MapsPerformSelector(v8, v9);
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  objc_setAssociatedObject(*(a1 + 32), off_50BD0, 0, &dword_0 + 1);
  objc_setAssociatedObject(*(a1 + 32), off_50BC8, 0, &dword_0 + 3);
}

void sub_8650(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v10[0] = a2;
  v7 = a2;
  v8 = [NSValue valueWithRange:a3, a4];
  v10[1] = v8;
  v9 = [NSArray arrayWithObjects:v10 count:2];
  [v6 addObject:v9];
}

id MapsMap(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v16;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = v4[2](v4, *(*(&v15 + 1) + 8 * i), v9);
          if (v12)
          {
            [v5 addObject:{v12, v15}];
          }

          ++v9;
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    v13 = [v5 copy];
  }

  else
  {
    v13 = &__NSArray0__struct;
  }

  return v13;
}

id MapsFlatMap(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v22 = v3;
    obj = v3;
    v6 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v30;
      v10 = @"CardPresentationControllerOptimizeBackgroundCardHeightCalculation";
      do
      {
        v11 = 0;
        v23 = v7;
        do
        {
          if (*v30 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v12 = v4[2](v4, *(*(&v29 + 1) + 8 * v11), v8);
          v13 = v12;
          if (v12)
          {
            if ([v12 conformsToProtocol:v10[87].data])
            {
              v14 = v9;
              v15 = v13;
              v25 = 0u;
              v26 = 0u;
              v27 = 0u;
              v28 = 0u;
              v16 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
              if (v16)
              {
                v17 = v16;
                v18 = *v26;
                do
                {
                  for (i = 0; i != v17; i = i + 1)
                  {
                    if (*v26 != v18)
                    {
                      objc_enumerationMutation(v15);
                    }

                    [v5 addObject:{*(*(&v25 + 1) + 8 * i), v22}];
                  }

                  v17 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
                }

                while (v17);
              }

              v9 = v14;
              v7 = v23;
              v10 = @"CardPresentationControllerOptimizeBackgroundCardHeightCalculation";
            }

            else
            {
              [v5 addObject:v13];
            }
          }

          ++v8;

          v11 = v11 + 1;
        }

        while (v11 != v7);
        v7 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v7);
    }

    v20 = [v5 copy];
    v3 = v22;
  }

  else
  {
    v20 = &__NSArray0__struct;
  }

  return v20;
}

id MapsFilter(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v17;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        v15 = 0;
        if (v4[2](v4, v12, v9, &v15))
        {
          [v5 addObject:v12];
        }

        if (v15)
        {
          break;
        }

        ++v9;
        if (v8 == ++v11)
        {
          v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v13 = [v5 copy];
  }

  else
  {
    v13 = &__NSArray0__struct;
  }

  return v13;
}

id MapsFindFirst(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v16;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          v14 = 0;
          if (v4[2](v4, v11, v8, &v14))
          {
            v12 = v11;
            goto LABEL_15;
          }

          if (v14)
          {
            goto LABEL_12;
          }

          ++v8;
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        v12 = 0;
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    else
    {
LABEL_12:
      v12 = 0;
    }

LABEL_15:
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t MapsAllSatisfies(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v14;
      while (2)
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v5);
          }

          if (!v4[2](v4, *(*(&v13 + 1) + 8 * v10), v8))
          {
            v11 = 0;
            goto LABEL_12;
          }

          ++v8;
          v10 = v10 + 1;
        }

        while (v7 != v10);
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v11 = 1;
LABEL_12:
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id MapsEquals(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return &dword_0 + 1;
  }

  else
  {
    return [a1 isEqual:a2];
  }
}

__CFString *MapsStringFromBOOL(int a1)
{
  if (a1)
  {
    return @"YES";
  }

  else
  {
    return @"NO";
  }
}

void sub_B998(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2[5] mapItem];
  v4 = [v2 _placeItemFromMapItem:v3 isIntermediate:0];
  v5 = *(a1 + 32);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [*(a1 + 32) placeViewController];
  [v7 setPlaceItem:*(*(a1 + 32) + 40) updateOriginalContact:0];

  v8 = [*(a1 + 32) delegate];
  [v8 siriViewControllerHeightDidChange:*(a1 + 32) pinTopOfSnippet:1];
}

void sub_C370(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_C45C;
  v14 = &unk_42400;
  v7 = v5;
  v15 = v7;
  v8 = v6;
  v16 = v8;
  v9 = objc_retainBlock(&v11);
  v10 = *(a1 + 32);
  if (v8)
  {
    [v10 openURL:v7 bundleIdentifier:v8 completionHandler:{v9, v11, v12, v13, v14, v15}];
  }

  else
  {
    [v10 openURL:v7 completionHandler:{v9, v11, v12, v13, v14, v15}];
  }
}

void sub_C45C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    NSLog(@"Failed to open URL %@ to app: %@", *(a1 + 32), *(a1 + 40));
  }
}

void sub_E6D0(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = [[UIImage alloc] initWithData:v3];
  }

  else
  {
    v4 = 0;
  }

  v5 = +[NSOperationQueue mainQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_E7B8;
  v8[3] = &unk_42498;
  v6 = *(a1 + 32);
  v9 = v4;
  v10 = v6;
  v7 = v4;
  [v5 addOperationWithBlock:v8];
}

id sub_E7B8(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(*(a1 + 40) + 56) setImage:?];
  }

  v2 = *(a1 + 40);

  return [v2 _updateImageViewVisibility];
}

void sub_EBE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_EC08(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained _updateSubviews];
    v2 = +[NSNotificationCenter defaultCenter];
    [v2 removeObserver:v4[1]];

    v3 = v4[1];
    v4[1] = 0;

    WeakRetained = v4;
  }
}

void sub_F598(uint64_t a1)
{
  [*(a1 + 32) setLoading:0];
  v2 = [*(a1 + 32) delegate];
  [v2 siriSnippetViewControllerViewDidLoad:*(a1 + 32)];
}

id sub_FC40(uint64_t a1)
{
  v4 = *(a1 + 32);
  v1 = [NSArray arrayWithObjects:&v4 count:1];
  v2 = [MKMapItem urlForMapItems:v1 options:0];

  return v2;
}

id sub_FD84(uint64_t a1)
{
  v2 = [*(a1 + 32) mapItemSnippet];
  v7 = MKLaunchOptionsSelectedIndexKey;
  v3 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 32) selectedMapItemIndex]);
  v8 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v5 = [v2 urlForMapItemsWithLaunchOptions:v4];

  return v5;
}

id sub_FFDC(void *a1)
{
  v2 = a1[5];
  v10[0] = a1[4];
  v10[1] = v2;
  v3 = [NSArray arrayWithObjects:v10 count:2];
  v4 = a1[6];
  v8 = MKLaunchOptionsDirectionsModeKey;
  v9 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v6 = [MKMapItem urlForMapItems:v3 options:v5];

  return v6;
}

void sub_10BBC(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [*(a1 + 32) delegate];
    [v5 listView:*(a1 + 32) didChooseMapItem:v6 accessoryButtonTapped:1];
  }
}

void sub_11050(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_51388;
  qword_51388 = v1;

  [qword_51388 setTimeStyle:1];
  v3 = +[NSLocale autoupdatingCurrentLocale];
  [qword_51388 setLocale:v3];
}

void sub_11160(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_51398;
  qword_51398 = v1;

  [qword_51398 setTimeStyle:1];
  v3 = +[NSLocale autoupdatingCurrentLocale];
  [qword_51398 setLocale:v3];
}

void sub_1125C(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_513A8;
  qword_513A8 = v1;

  v3 = +[NSLocale autoupdatingCurrentLocale];
  [qword_513A8 setLocale:v3];
}

void sub_1134C(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_513B8;
  qword_513B8 = v1;

  v3 = +[NSLocale autoupdatingCurrentLocale];
  [qword_513B8 setLocale:v3];
}

void sub_1143C(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_513C8;
  qword_513C8 = v1;

  v3 = +[NSLocale autoupdatingCurrentLocale];
  [qword_513C8 setLocale:v3];
}

void sub_1152C(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_513D8;
  qword_513D8 = v1;

  v3 = +[NSLocale autoupdatingCurrentLocale];
  [qword_513D8 setLocale:v3];
}

void sub_1161C(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_513E8;
  qword_513E8 = v1;

  v3 = +[NSLocale autoupdatingCurrentLocale];
  [qword_513E8 setLocale:v3];
}

void sub_116E4(id a1)
{
  v1 = objc_alloc_init(NSDateComponentsFormatter);
  v2 = qword_513F8;
  qword_513F8 = v1;

  [qword_513F8 setUnitsStyle:2];
  [qword_513F8 setAllowedUnits:112];
  [qword_513F8 setMaximumUnitCount:2];
  v3 = qword_513F8;

  [v3 setCollapsesLargestUnit:1];
}

void sub_117AC(id a1)
{
  v1 = objc_alloc_init(NSDateComponentsFormatter);
  v2 = qword_51408;
  qword_51408 = v1;

  [qword_51408 setUnitsStyle:3];
  [qword_51408 setAllowedUnits:112];
  [qword_51408 setMaximumUnitCount:2];
  v3 = qword_51408;

  [v3 setCollapsesLargestUnit:1];
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  v4 = _CLLocationCoordinate2DMake(latitude, longitude);
  v3 = v4.longitude;
  v2 = v4.latitude;
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

MKMapPoint MKMapPointForCoordinate(CLLocationCoordinate2D coordinate)
{
  v3 = _MKMapPointForCoordinate(coordinate);
  y = v3.y;
  x = v3.x;
  result.y = y;
  result.x = x;
  return result;
}